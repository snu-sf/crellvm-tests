; ModuleID = './MultiSource.Applications.lemon/1.lemon.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.config = type { %struct.rule*, i32, i8*, %struct.plink*, %struct.plink*, %struct.state*, i32, %struct.config*, %struct.config* }
%struct.rule = type { %struct.symbol*, i8*, i32, i32, i32, %struct.symbol**, i8**, i32, i8*, %struct.symbol*, i32, i32, %struct.rule*, %struct.rule* }
%struct.symbol = type { i8*, i32, i32, %struct.rule*, %struct.symbol*, i32, i32, i8*, i32, i32, i8*, i32, i8*, i32, i32, %struct.symbol** }
%struct.plink = type { %struct.config*, %struct.plink* }
%struct.state = type { %struct.config*, %struct.config*, i32, %struct.action*, i32, i32, i32, i32, i32 }
%struct.action = type { %struct.symbol*, i32, %union.anon, %struct.action*, %struct.action* }
%union.anon = type { %struct.state* }
%struct.s_options = type { i32, i8*, i8*, i8* }
%struct.s_x1 = type { i32, i32, %struct.s_x1node*, %struct.s_x1node** }
%struct.s_x1node = type { i8*, %struct.s_x1node*, %struct.s_x1node** }
%struct.s_x2 = type { i32, i32, %struct.s_x2node*, %struct.s_x2node** }
%struct.s_x2node = type { %struct.symbol*, i8*, %struct.s_x2node*, %struct.s_x2node** }
%struct.s_x3 = type { i32, i32, %struct.s_x3node*, %struct.s_x3node** }
%struct.s_x3node = type { %struct.state*, %struct.config*, %struct.s_x3node*, %struct.s_x3node** }
%struct.s_x4 = type { i32, i32, %struct.s_x4node*, %struct.s_x4node** }
%struct.s_x4node = type { %struct.config*, %struct.s_x4node*, %struct.s_x4node** }
%struct.acttab = type { i32, i32, %struct.anon*, %struct.anon*, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.lemon = type { %struct.state**, %struct.rule*, i32, i32, i32, i32, %struct.symbol**, i32, %struct.symbol*, %struct.symbol*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i32, i32, i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.pstate = type { i8*, i32, i32, i8*, %struct.lemon*, i32, %struct.symbol*, %struct.symbol*, i8*, i32, [1000 x %struct.symbol*], [1000 x i8*], %struct.rule*, i8*, i8**, i32*, i32, i32, %struct.rule*, %struct.rule* }
%struct.axset = type { %struct.state*, i32, i32 }
%union.__WAIT_STATUS = type { %union.wait* }
%union.wait = type { i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unable to allocate memory for a new acttab.\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [120 x i8] c"The specified start symbol \22%s\22 is not in a nonterminal of the grammar.  \22%s\22 will be used as the start symbol instead.\00", align 1
@.str.3 = private unnamed_addr constant [122 x i8] c"The start symbol \22%s\22 occurs on the right-hand side of a rule. This will result in a parser which does not work properly.\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"This rule can not be reduced.\0A\00", align 1
@freelist = internal global %struct.config* null, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for a new configuration.\00", align 1
@current = internal global %struct.config* null, align 8
@currentend = internal global %struct.config** null, align 8
@basis = internal global %struct.config* null, align 8
@basisend = internal global %struct.config** null, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"Nonterminal \22%s\22 has no rules.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%.*s:%d: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%.*s: \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"%s%.*s\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Out of memory.  Aborting...\0A\00", align 1
@lemon_main.version = internal global i32 0, align 4
@lemon_main.rpflag = internal global i32 0, align 4
@lemon_main.basisflag = internal global i32 0, align 4
@lemon_main.compress = internal global i32 0, align 4
@lemon_main.quiet = internal global i32 0, align 4
@lemon_main.statistics = internal global i32 0, align 4
@lemon_main.mhflag = internal global i32 0, align 4
@lemon_main.options = internal global [9 x %struct.s_options] [%struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8* bitcast (i32* @lemon_main.basisflag to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (i32* @lemon_main.compress to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0) }, %struct.s_options { i32 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* bitcast (void (i8*)* @handle_D_option to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* bitcast (i32* @lemon_main.rpflag to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* bitcast (i32* @lemon_main.mhflag to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* bitcast (i32* @lemon_main.quiet to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* bitcast (i32* @lemon_main.statistics to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i32 0, i32 0) }, %struct.s_options { i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* bitcast (i32* @lemon_main.version to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0) }, %struct.s_options { i32 1, i8* null, i8* null, i8* null }], align 16
@.str.11 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"Print only the basis in report.\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"Don't compress the action table.\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Define an %ifdef macro.\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Print grammar without actions.\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"Output a makeheaders compatible file\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"(Quiet) Don't print the report file.\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Print parser stats to standard output.\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Print the version number.\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"Lemon version 1.0\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"Exactly one filename argument is required.\0A\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"$\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"Empty grammar.\0A\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"{default}\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"Parser statistics: %d terminals, %d nonterminals, %d rules\0A\00", align 1
@.str.34 = private unnamed_addr constant [69 x i8] c"                   %d states, %d parser table entries, %d conflicts\0A\00", align 1
@argv = internal global i8** null, align 8
@op = internal global %struct.s_options* null, align 8
@errstream = internal global %struct._IO_FILE* null, align 8
@.str.35 = private unnamed_addr constant [42 x i8] c"Valid command line options for \22%s\22 are:\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"  -%-*s  %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"  %s=<integer>%*s  %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"  %s=<real>%*s  %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"  %s=<string>%*s  %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"Can't open this file for reading.\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"Can't allocate %d of memory to hold this file.\00", align 1
@.str.45 = private unnamed_addr constant [41 x i8] c"Can't read in all %d bytes of this file.\00", align 1
@.str.46 = private unnamed_addr constant [75 x i8] c"String starting on this line is not terminated before the end of the file.\00", align 1
@.str.47 = private unnamed_addr constant [75 x i8] c"C code starting on this line is not terminated before the end of the file.\00", align 1
@plink_freelist = internal global %struct.plink* null, align 8
@.str.48 = private unnamed_addr constant [66 x i8] c"Unable to allocate memory for a new follow-set propagation link.\0A\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Can't allocate space for a filename.\0A\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"Can't open file \22%s\22.\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"// Reprint of input file \22%s\22.\0A// Symbols:\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" %3d %-*.*s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c" ::=\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"|%s\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c" [%s]\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"%s ::=\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"%*s shift  %d\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"%*s reduce %d\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"%*s accept\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"%*s error\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"%*s reduce %-3d ** Parsing conflict **\00", align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"%*s shift  %d ** Parsing conflict **\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"State %d:\0A\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"(%d)\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"    %5s \00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.75 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"Symbols:\0A\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"  %3d: %s\00", align 1
@.str.78 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c" <lambda>\00", align 1
@.str.80 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.82 = private unnamed_addr constant [16 x i8] c".:/bin:/usr/bin\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Parse\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@tplt_open.templatename = internal global [9 x i8] c"lempar.c\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"%.*s.lt\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"%s.lt\00", align 1
@.str.87 = private unnamed_addr constant [50 x i8] c"Can't find the parser driver template file \22%s\22.\0A\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"Can't open the template file \22%s\22.\0A\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"#line %d \22\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"(yypminor->yy%d)\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@append_str.z = internal global i8* null, align 8
@append_str.alloced = internal global i32 0, align 4
@append_str.used = internal global i32 0, align 4
@.str.94 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.95 = private unnamed_addr constant [17 x i8] c"yygotominor.yy%d\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"yymsp[%d].major\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"yymsp[%d].minor.yy%d\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"Label \22%s\22 for \22%s(%s)\22 is never used.\00", align 1
@.str.99 = private unnamed_addr constant [37 x i8] c"Label %s for \22%s(%s)\22 is never used.\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"  yy_destructor(%d,&yymsp[%d].minor);\0A\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c"{%s\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"#if INTERFACE\0A\00", align 1
@.str.104 = private unnamed_addr constant [24 x i8] c"#define %sTOKENTYPE %s\0A\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"void*\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.107 = private unnamed_addr constant [17 x i8] c"typedef union {\0A\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"  %sTOKENTYPE yy0;\0A\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"  %s yy%d;\0A\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"  int yy%d;\0A\00", align 1
@.str.111 = private unnamed_addr constant [16 x i8] c"} YYMINORTYPE;\0A\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c".c\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.114 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"#define %s%-30s %2d\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"#define YYCODETYPE %s\0A\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"#define YYNOCODE %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"#define YYACTIONTYPE %s\0A\00", align 1
@.str.119 = private unnamed_addr constant [23 x i8] c"#define YYWILDCARD %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [22 x i8] c"#ifndef YYSTACKDEPTH\0A\00", align 1
@.str.121 = private unnamed_addr constant [25 x i8] c"#define YYSTACKDEPTH %s\0A\00", align 1
@.str.122 = private unnamed_addr constant [26 x i8] c"#define YYSTACKDEPTH 100\0A\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"#define %sARG_SDECL %s;\0A\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"#define %sARG_PDECL ,%s\0A\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c"#define %sARG_FETCH %s = yypParser->%s\0A\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"#define %sARG_STORE yypParser->%s = %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"#define %sARG_SDECL\0A\00", align 1
@.str.128 = private unnamed_addr constant [21 x i8] c"#define %sARG_PDECL\0A\00", align 1
@.str.129 = private unnamed_addr constant [21 x i8] c"#define %sARG_FETCH\0A\00", align 1
@.str.130 = private unnamed_addr constant [21 x i8] c"#define %sARG_STORE\0A\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"#define YYNSTATE %d\0A\00", align 1
@.str.132 = private unnamed_addr constant [20 x i8] c"#define YYNRULE %d\0A\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"#define YYERRORSYMBOL %d\0A\00", align 1
@.str.134 = private unnamed_addr constant [25 x i8] c"#define YYERRSYMDT yy%d\0A\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"#define YYFALLBACK 1\0A\00", align 1
@.str.136 = private unnamed_addr constant [43 x i8] c"static const YYACTIONTYPE yy_action[] = {\0A\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c" /* %5d */ \00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c" %4d,\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.140 = private unnamed_addr constant [44 x i8] c"static const YYCODETYPE yy_lookahead[] = {\0A\00", align 1
@.str.141 = private unnamed_addr constant [32 x i8] c"#define YY_SHIFT_USE_DFLT (%d)\0A\00", align 1
@.str.142 = private unnamed_addr constant [25 x i8] c"#define YY_SHIFT_MAX %d\0A\00", align 1
@.str.143 = private unnamed_addr constant [37 x i8] c"static const %s yy_shift_ofst[] = {\0A\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"#define YY_REDUCE_USE_DFLT (%d)\0A\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"#define YY_REDUCE_MAX %d\0A\00", align 1
@.str.146 = private unnamed_addr constant [38 x i8] c"static const %s yy_reduce_ofst[] = {\0A\00", align 1
@.str.147 = private unnamed_addr constant [44 x i8] c"static const YYACTIONTYPE yy_default[] = {\0A\00", align 1
@.str.148 = private unnamed_addr constant [31 x i8] c"    0,  /* %10s => nothing */\0A\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"  %3d,  /* %10s => %s */\0A\00", align 1
@.str.150 = private unnamed_addr constant [6 x i8] c"\22%s\22,\00", align 1
@.str.151 = private unnamed_addr constant [8 x i8] c"  %-15s\00", align 1
@.str.152 = private unnamed_addr constant [13 x i8] c" /* %3d */ \22\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"\22,\0A\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"    case %d: /* %s */\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"      break;\0A\00", align 1
@.str.156 = private unnamed_addr constant [15 x i8] c"  { %d, %d },\0A\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"      case %d: /* \00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"        break;\0A\00", align 1
@size = internal global i32 0, align 4
@x1a = internal global %struct.s_x1* null, align 8
@x2a = internal global %struct.s_x2* null, align 8
@x3a = internal global %struct.s_x3* null, align 8
@x4a = internal global %struct.s_x4* null, align 8
@.str.160 = private unnamed_addr constant [12 x i8] c"lemon-child\00", align 1
@.str.161 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"Processing %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"Error while running on: %s\0A\00", align 1
@Action_new.freelist = internal global %struct.action* null, align 8
@.str.164 = private unnamed_addr constant [51 x i8] c"Unable to allocate memory for a new parser action.\00", align 1
@nDefine = internal global i32 0, align 4
@azDefine = internal global i8** null, align 8
@.str.165 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.166 = private unnamed_addr constant [21 x i8] c"%sundefined option.\0A\00", align 1
@emsg = internal global [28 x i8] c"Command line syntax error: \00", align 16
@.str.167 = private unnamed_addr constant [31 x i8] c"%smissing argument on switch.\0A\00", align 1
@.str.168 = private unnamed_addr constant [32 x i8] c"%soption requires an argument.\0A\00", align 1
@.str.169 = private unnamed_addr constant [49 x i8] c"%sillegal character in floating-point argument.\0A\00", align 1
@.str.170 = private unnamed_addr constant [42 x i8] c"%sillegal character in integer argument.\0A\00", align 1
@.str.171 = private unnamed_addr constant [14 x i8] c"\0A%*s^-- here\0A\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"\0A%*shere --^\0A\00", align 1
@.str.173 = private unnamed_addr constant [7 x i8] c"%endif\00", align 1
@.str.174 = private unnamed_addr constant [7 x i8] c"%ifdef\00", align 1
@.str.175 = private unnamed_addr constant [8 x i8] c"%ifndef\00", align 1
@.str.176 = private unnamed_addr constant [42 x i8] c"unterminated %%ifdef starting on line %d\0A\00", align 1
@.str.177 = private unnamed_addr constant [90 x i8] c"There is not prior rule opon which to attach the code fragment which begins on this line.\00", align 1
@.str.178 = private unnamed_addr constant [83 x i8] c"Code fragment beginning on this line is not the first to follow the previous rule.\00", align 1
@.str.179 = private unnamed_addr constant [56 x i8] c"Token \22%s\22 should be either \22%%\22 or a nonterminal name.\00", align 1
@.str.180 = private unnamed_addr constant [42 x i8] c"The precedence symbol must be a terminal.\00", align 1
@.str.181 = private unnamed_addr constant [52 x i8] c"There is no prior rule to assign precedence \22[%s]\22.\00", align 1
@.str.182 = private unnamed_addr constant [75 x i8] c"Precedence mark on this line is not the first to follow the previous rule.\00", align 1
@.str.183 = private unnamed_addr constant [32 x i8] c"Missing \22]\22 on precedence mark.\00", align 1
@.str.184 = private unnamed_addr constant [53 x i8] c"Expected to see a \22:\22 following the LHS symbol \22%s\22.\00", align 1
@.str.185 = private unnamed_addr constant [44 x i8] c"\22%s\22 is not a valid alias for the LHS \22%s\22\0A\00", align 1
@.str.186 = private unnamed_addr constant [43 x i8] c"Missing \22)\22 following LHS alias name \22%s\22.\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"Missing \22->\22 following: \22%s(%s)\22.\00", align 1
@.str.188 = private unnamed_addr constant [44 x i8] c"Can't allocate enough memory for this rule.\00", align 1
@.str.189 = private unnamed_addr constant [51 x i8] c"Too many symbols on RHS of rule beginning at \22%s\22.\00", align 1
@.str.190 = private unnamed_addr constant [49 x i8] c"Cannot form a compound containing a non-terminal\00", align 1
@.str.191 = private unnamed_addr constant [40 x i8] c"Illegal character on RHS of rule: \22%s\22.\00", align 1
@.str.192 = private unnamed_addr constant [51 x i8] c"\22%s\22 is not a valid alias for the RHS symbol \22%s\22\0A\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.194 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.196 = private unnamed_addr constant [17 x i8] c"token_destructor\00", align 1
@.str.197 = private unnamed_addr constant [19 x i8] c"default_destructor\00", align 1
@.str.198 = private unnamed_addr constant [13 x i8] c"token_prefix\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"syntax_error\00", align 1
@.str.200 = private unnamed_addr constant [13 x i8] c"parse_accept\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"parse_failure\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"stack_overflow\00", align 1
@.str.203 = private unnamed_addr constant [15 x i8] c"extra_argument\00", align 1
@.str.204 = private unnamed_addr constant [11 x i8] c"token_type\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"default_type\00", align 1
@.str.206 = private unnamed_addr constant [11 x i8] c"stack_size\00", align 1
@.str.207 = private unnamed_addr constant [13 x i8] c"start_symbol\00", align 1
@.str.208 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.210 = private unnamed_addr constant [9 x i8] c"nonassoc\00", align 1
@.str.211 = private unnamed_addr constant [11 x i8] c"destructor\00", align 1
@.str.212 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.213 = private unnamed_addr constant [9 x i8] c"fallback\00", align 1
@.str.214 = private unnamed_addr constant [9 x i8] c"wildcard\00", align 1
@.str.215 = private unnamed_addr constant [37 x i8] c"Unknown declaration keyword: \22%%%s\22.\00", align 1
@.str.216 = private unnamed_addr constant [35 x i8] c"Illegal declaration keyword: \22%s\22.\00", align 1
@.str.217 = private unnamed_addr constant [46 x i8] c"Symbol name missing after %destructor keyword\00", align 1
@.str.218 = private unnamed_addr constant [47 x i8] c"Symbol \22%s\22 has already be given a precedence.\00", align 1
@.str.219 = private unnamed_addr constant [35 x i8] c"Can't assign a precedence to \22%s\22.\00", align 1
@.str.220 = private unnamed_addr constant [58 x i8] c"The argument \22%s\22 to declaration \22%%%s\22 is not the first.\00", align 1
@.str.221 = private unnamed_addr constant [29 x i8] c"Illegal argument to %%%s: %s\00", align 1
@.str.222 = private unnamed_addr constant [43 x i8] c"%%fallback argument \22%s\22 should be a token\00", align 1
@.str.223 = private unnamed_addr constant [44 x i8] c"More than one fallback assigned to token %s\00", align 1
@.str.224 = private unnamed_addr constant [43 x i8] c"%%wildcard argument \22%s\22 should be a token\00", align 1
@.str.225 = private unnamed_addr constant [28 x i8] c"Extra wildcard to token: %s\00", align 1
@.str.226 = private unnamed_addr constant [14 x i8] c"unsigned char\00", align 1
@.str.227 = private unnamed_addr constant [19 x i8] c"unsigned short int\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"unsigned int\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"signed char\00", align 1
@.str.230 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"int\00", align 1

; Function Attrs: nounwind uwtable
define void @Action_add(%struct.action** %app, i32 %type, %struct.symbol* %sp, i8* %arg) #0 {
entry:
  %app.addr = alloca %struct.action**, align 8
  %type.addr = alloca i32, align 4
  %sp.addr = alloca %struct.symbol*, align 8
  %arg.addr = alloca i8*, align 8
  %new = alloca %struct.action*, align 8
  store %struct.action** %app, %struct.action*** %app.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store %struct.symbol* %sp, %struct.symbol** %sp.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %call = call %struct.action* @Action_new()
  store %struct.action* %call, %struct.action** %new, align 8
  %0 = load %struct.action**, %struct.action*** %app.addr, align 8
  %1 = load %struct.action*, %struct.action** %0, align 8
  %2 = load %struct.action*, %struct.action** %new, align 8
  %next = getelementptr inbounds %struct.action, %struct.action* %2, i32 0, i32 3
  store %struct.action* %1, %struct.action** %next, align 8
  %3 = load %struct.action*, %struct.action** %new, align 8
  %4 = load %struct.action**, %struct.action*** %app.addr, align 8
  store %struct.action* %3, %struct.action** %4, align 8
  %5 = load i32, i32* %type.addr, align 4
  %6 = load %struct.action*, %struct.action** %new, align 8
  %type1 = getelementptr inbounds %struct.action, %struct.action* %6, i32 0, i32 1
  store i32 %5, i32* %type1, align 4
  %7 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %8 = load %struct.action*, %struct.action** %new, align 8
  %sp2 = getelementptr inbounds %struct.action, %struct.action* %8, i32 0, i32 0
  store %struct.symbol* %7, %struct.symbol** %sp2, align 8
  %9 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i8*, i8** %arg.addr, align 8
  %11 = bitcast i8* %10 to %struct.state*
  %12 = load %struct.action*, %struct.action** %new, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %12, i32 0, i32 2
  %stp = bitcast %union.anon* %x to %struct.state**
  store %struct.state* %11, %struct.state** %stp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load i8*, i8** %arg.addr, align 8
  %14 = bitcast i8* %13 to %struct.rule*
  %15 = load %struct.action*, %struct.action** %new, align 8
  %x3 = getelementptr inbounds %struct.action, %struct.action* %15, i32 0, i32 2
  %rp = bitcast %union.anon* %x3 to %struct.rule**
  store %struct.rule* %14, %struct.rule** %rp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.action* @Action_new() #0 {
entry:
  %new = alloca %struct.action*, align 8
  %i = alloca i32, align 4
  %amt = alloca i32, align 4
  %0 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %cmp = icmp eq %struct.action* %0, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store i32 100, i32* %amt, align 4
  %1 = load i32, i32* %amt, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 40) #4
  %2 = bitcast i8* %call to %struct.action*
  store %struct.action* %2, %struct.action** @Action_new.freelist, align 8
  %3 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %cmp1 = icmp eq %struct.action* %3, null
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.164, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %amt, align 4
  %sub = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %sub
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %arrayidx = getelementptr inbounds %struct.action, %struct.action* %8, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %arrayidx8 = getelementptr inbounds %struct.action, %struct.action* %10, i64 %idxprom7
  %next = getelementptr inbounds %struct.action, %struct.action* %arrayidx8, i32 0, i32 3
  store %struct.action* %arrayidx, %struct.action** %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %amt, align 4
  %sub9 = sub nsw i32 %12, 1
  %idxprom10 = sext i32 %sub9 to i64
  %13 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %arrayidx11 = getelementptr inbounds %struct.action, %struct.action* %13, i64 %idxprom10
  %next12 = getelementptr inbounds %struct.action, %struct.action* %arrayidx11, i32 0, i32 3
  store %struct.action* null, %struct.action** %next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %14 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  store %struct.action* %14, %struct.action** %new, align 8
  %15 = load %struct.action*, %struct.action** @Action_new.freelist, align 8
  %next14 = getelementptr inbounds %struct.action, %struct.action* %15, i32 0, i32 3
  %16 = load %struct.action*, %struct.action** %next14, align 8
  store %struct.action* %16, %struct.action** @Action_new.freelist, align 8
  %17 = load %struct.action*, %struct.action** %new, align 8
  ret %struct.action* %17
}

; Function Attrs: nounwind uwtable
define void @acttab_free(%struct.acttab* %p) #0 {
entry:
  %p.addr = alloca %struct.acttab*, align 8
  store %struct.acttab* %p, %struct.acttab** %p.addr, align 8
  %0 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction = getelementptr inbounds %struct.acttab, %struct.acttab* %0, i32 0, i32 2
  %1 = load %struct.anon*, %struct.anon** %aAction, align 8
  %2 = bitcast %struct.anon* %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %3, i32 0, i32 3
  %4 = load %struct.anon*, %struct.anon** %aLookahead, align 8
  %5 = bitcast %struct.anon* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %7 = bitcast %struct.acttab* %6 to i8*
  call void @free(i8* %7) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.acttab* @acttab_alloc() #0 {
entry:
  %p = alloca %struct.acttab*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 48) #4
  %0 = bitcast i8* %call to %struct.acttab*
  store %struct.acttab* %0, %struct.acttab** %p, align 8
  %1 = load %struct.acttab*, %struct.acttab** %p, align 8
  %cmp = icmp eq %struct.acttab* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.acttab*, %struct.acttab** %p, align 8
  %4 = bitcast %struct.acttab* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 48, i32 8, i1 false)
  %5 = load %struct.acttab*, %struct.acttab** %p, align 8
  ret %struct.acttab* %5
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @acttab_action(%struct.acttab* %p, i32 %lookahead, i32 %action) #0 {
entry:
  %p.addr = alloca %struct.acttab*, align 8
  %lookahead.addr = alloca i32, align 4
  %action.addr = alloca i32, align 4
  store %struct.acttab* %p, %struct.acttab** %p.addr, align 8
  store i32 %lookahead, i32* %lookahead.addr, align 4
  store i32 %action, i32* %action.addr, align 4
  %0 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %0, i32 0, i32 7
  %1 = load i32, i32* %nLookahead, align 4
  %2 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookaheadAlloc = getelementptr inbounds %struct.acttab, %struct.acttab* %2, i32 0, i32 8
  %3 = load i32, i32* %nLookaheadAlloc, align 4
  %cmp = icmp sge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %4 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookaheadAlloc1 = getelementptr inbounds %struct.acttab, %struct.acttab* %4, i32 0, i32 8
  %5 = load i32, i32* %nLookaheadAlloc1, align 4
  %add = add nsw i32 %5, 25
  store i32 %add, i32* %nLookaheadAlloc1, align 4
  %6 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %6, i32 0, i32 3
  %7 = load %struct.anon*, %struct.anon** %aLookahead, align 8
  %8 = bitcast %struct.anon* %7 to i8*
  %9 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookaheadAlloc2 = getelementptr inbounds %struct.acttab, %struct.acttab* %9, i32 0, i32 8
  %10 = load i32, i32* %nLookaheadAlloc2, align 4
  %conv = sext i32 %10 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @realloc(i8* %8, i64 %mul) #4
  %11 = bitcast i8* %call to %struct.anon*
  %12 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead3 = getelementptr inbounds %struct.acttab, %struct.acttab* %12, i32 0, i32 3
  store %struct.anon* %11, %struct.anon** %aLookahead3, align 8
  %13 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead4 = getelementptr inbounds %struct.acttab, %struct.acttab* %13, i32 0, i32 3
  %14 = load %struct.anon*, %struct.anon** %aLookahead4, align 8
  %cmp5 = icmp eq %struct.anon* %14, null
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %16 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead10 = getelementptr inbounds %struct.acttab, %struct.acttab* %16, i32 0, i32 7
  %17 = load i32, i32* %nLookahead10, align 4
  %cmp11 = icmp eq i32 %17, 0
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  %18 = load i32, i32* %lookahead.addr, align 4
  %19 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mxLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %19, i32 0, i32 6
  store i32 %18, i32* %mxLookahead, align 4
  %20 = load i32, i32* %lookahead.addr, align 4
  %21 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %21, i32 0, i32 4
  store i32 %20, i32* %mnLookahead, align 4
  %22 = load i32, i32* %action.addr, align 4
  %23 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnAction = getelementptr inbounds %struct.acttab, %struct.acttab* %23, i32 0, i32 5
  store i32 %22, i32* %mnAction, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.end.9
  %24 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mxLookahead14 = getelementptr inbounds %struct.acttab, %struct.acttab* %24, i32 0, i32 6
  %25 = load i32, i32* %mxLookahead14, align 4
  %26 = load i32, i32* %lookahead.addr, align 4
  %cmp15 = icmp slt i32 %25, %26
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.else
  %27 = load i32, i32* %lookahead.addr, align 4
  %28 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mxLookahead18 = getelementptr inbounds %struct.acttab, %struct.acttab* %28, i32 0, i32 6
  store i32 %27, i32* %mxLookahead18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.else
  %29 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead20 = getelementptr inbounds %struct.acttab, %struct.acttab* %29, i32 0, i32 4
  %30 = load i32, i32* %mnLookahead20, align 4
  %31 = load i32, i32* %lookahead.addr, align 4
  %cmp21 = icmp sgt i32 %30, %31
  br i1 %cmp21, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.end.19
  %32 = load i32, i32* %lookahead.addr, align 4
  %33 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead24 = getelementptr inbounds %struct.acttab, %struct.acttab* %33, i32 0, i32 4
  store i32 %32, i32* %mnLookahead24, align 4
  %34 = load i32, i32* %action.addr, align 4
  %35 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnAction25 = getelementptr inbounds %struct.acttab, %struct.acttab* %35, i32 0, i32 5
  store i32 %34, i32* %mnAction25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.13
  %36 = load i32, i32* %lookahead.addr, align 4
  %37 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead28 = getelementptr inbounds %struct.acttab, %struct.acttab* %37, i32 0, i32 7
  %38 = load i32, i32* %nLookahead28, align 4
  %idxprom = sext i32 %38 to i64
  %39 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead29 = getelementptr inbounds %struct.acttab, %struct.acttab* %39, i32 0, i32 3
  %40 = load %struct.anon*, %struct.anon** %aLookahead29, align 8
  %arrayidx = getelementptr inbounds %struct.anon, %struct.anon* %40, i64 %idxprom
  %lookahead30 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store i32 %36, i32* %lookahead30, align 4
  %41 = load i32, i32* %action.addr, align 4
  %42 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead31 = getelementptr inbounds %struct.acttab, %struct.acttab* %42, i32 0, i32 7
  %43 = load i32, i32* %nLookahead31, align 4
  %idxprom32 = sext i32 %43 to i64
  %44 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead33 = getelementptr inbounds %struct.acttab, %struct.acttab* %44, i32 0, i32 3
  %45 = load %struct.anon*, %struct.anon** %aLookahead33, align 8
  %arrayidx34 = getelementptr inbounds %struct.anon, %struct.anon* %45, i64 %idxprom32
  %action35 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx34, i32 0, i32 1
  store i32 %41, i32* %action35, align 4
  %46 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead36 = getelementptr inbounds %struct.acttab, %struct.acttab* %46, i32 0, i32 7
  %47 = load i32, i32* %nLookahead36, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %nLookahead36, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @acttab_insert(%struct.acttab* %p) #0 {
entry:
  %p.addr = alloca %struct.acttab*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %oldAlloc = alloca i32, align 4
  store %struct.acttab* %p, %struct.acttab** %p.addr, align 8
  %0 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mxLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %0, i32 0, i32 6
  %1 = load i32, i32* %mxLookahead, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, i32* %n, align 4
  %2 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction = getelementptr inbounds %struct.acttab, %struct.acttab* %2, i32 0, i32 0
  %3 = load i32, i32* %nAction, align 4
  %4 = load i32, i32* %n, align 4
  %add1 = add nsw i32 %3, %4
  %5 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc = getelementptr inbounds %struct.acttab, %struct.acttab* %5, i32 0, i32 1
  %6 = load i32, i32* %nActionAlloc, align 4
  %cmp = icmp sge i32 %add1, %6
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  %7 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc2 = getelementptr inbounds %struct.acttab, %struct.acttab* %7, i32 0, i32 1
  %8 = load i32, i32* %nActionAlloc2, align 4
  store i32 %8, i32* %oldAlloc, align 4
  %9 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction3 = getelementptr inbounds %struct.acttab, %struct.acttab* %9, i32 0, i32 0
  %10 = load i32, i32* %nAction3, align 4
  %11 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %10, %11
  %12 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc5 = getelementptr inbounds %struct.acttab, %struct.acttab* %12, i32 0, i32 1
  %13 = load i32, i32* %nActionAlloc5, align 4
  %add6 = add nsw i32 %add4, %13
  %add7 = add nsw i32 %add6, 20
  %14 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc8 = getelementptr inbounds %struct.acttab, %struct.acttab* %14, i32 0, i32 1
  store i32 %add7, i32* %nActionAlloc8, align 4
  %15 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction = getelementptr inbounds %struct.acttab, %struct.acttab* %15, i32 0, i32 2
  %16 = load %struct.anon*, %struct.anon** %aAction, align 8
  %17 = bitcast %struct.anon* %16 to i8*
  %18 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc9 = getelementptr inbounds %struct.acttab, %struct.acttab* %18, i32 0, i32 1
  %19 = load i32, i32* %nActionAlloc9, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @realloc(i8* %17, i64 %mul) #4
  %20 = bitcast i8* %call to %struct.anon*
  %21 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction10 = getelementptr inbounds %struct.acttab, %struct.acttab* %21, i32 0, i32 2
  store %struct.anon* %20, %struct.anon** %aAction10, align 8
  %22 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction11 = getelementptr inbounds %struct.acttab, %struct.acttab* %22, i32 0, i32 2
  %23 = load %struct.anon*, %struct.anon** %aAction11, align 8
  %cmp12 = icmp eq %struct.anon* %23, null
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  %25 = load i32, i32* %oldAlloc, align 4
  store i32 %25, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nActionAlloc16 = getelementptr inbounds %struct.acttab, %struct.acttab* %27, i32 0, i32 1
  %28 = load i32, i32* %nActionAlloc16, align 4
  %cmp17 = icmp slt i32 %26, %28
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction19 = getelementptr inbounds %struct.acttab, %struct.acttab* %30, i32 0, i32 2
  %31 = load %struct.anon*, %struct.anon** %aAction19, align 8
  %arrayidx = getelementptr inbounds %struct.anon, %struct.anon* %31, i64 %idxprom
  %lookahead = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store i32 -1, i32* %lookahead, align 4
  %32 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction21 = getelementptr inbounds %struct.acttab, %struct.acttab* %33, i32 0, i32 2
  %34 = load %struct.anon*, %struct.anon** %aAction21, align 8
  %arrayidx22 = getelementptr inbounds %struct.anon, %struct.anon* %34, i64 %idxprom20
  %action = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx22, i32 0, i32 1
  store i32 -1, i32* %action, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.192, %if.end.23
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction25 = getelementptr inbounds %struct.acttab, %struct.acttab* %37, i32 0, i32 0
  %38 = load i32, i32* %nAction25, align 4
  %39 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %39, i32 0, i32 4
  %40 = load i32, i32* %mnLookahead, align 4
  %add26 = add nsw i32 %38, %40
  %cmp27 = icmp slt i32 %36, %add26
  br i1 %cmp27, label %for.body.29, label %for.end.194

for.body.29:                                      ; preds = %for.cond.24
  %41 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %41 to i64
  %42 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction31 = getelementptr inbounds %struct.acttab, %struct.acttab* %42, i32 0, i32 2
  %43 = load %struct.anon*, %struct.anon** %aAction31, align 8
  %arrayidx32 = getelementptr inbounds %struct.anon, %struct.anon* %43, i64 %idxprom30
  %lookahead33 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx32, i32 0, i32 0
  %44 = load i32, i32* %lookahead33, align 4
  %cmp34 = icmp slt i32 %44, 0
  br i1 %cmp34, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %for.body.29
  store i32 0, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.58, %if.then.36
  %45 = load i32, i32* %j, align 4
  %46 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %46, i32 0, i32 7
  %47 = load i32, i32* %nLookahead, align 4
  %cmp38 = icmp slt i32 %45, %47
  br i1 %cmp38, label %for.body.40, label %for.end.60

for.body.40:                                      ; preds = %for.cond.37
  %48 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead = getelementptr inbounds %struct.acttab, %struct.acttab* %49, i32 0, i32 3
  %50 = load %struct.anon*, %struct.anon** %aLookahead, align 8
  %arrayidx42 = getelementptr inbounds %struct.anon, %struct.anon* %50, i64 %idxprom41
  %lookahead43 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx42, i32 0, i32 0
  %51 = load i32, i32* %lookahead43, align 4
  %52 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead44 = getelementptr inbounds %struct.acttab, %struct.acttab* %52, i32 0, i32 4
  %53 = load i32, i32* %mnLookahead44, align 4
  %sub = sub nsw i32 %51, %53
  %54 = load i32, i32* %i, align 4
  %add45 = add nsw i32 %sub, %54
  store i32 %add45, i32* %k, align 4
  %55 = load i32, i32* %k, align 4
  %cmp46 = icmp slt i32 %55, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.body.40
  br label %for.end.60

if.end.49:                                        ; preds = %for.body.40
  %56 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %56 to i64
  %57 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction51 = getelementptr inbounds %struct.acttab, %struct.acttab* %57, i32 0, i32 2
  %58 = load %struct.anon*, %struct.anon** %aAction51, align 8
  %arrayidx52 = getelementptr inbounds %struct.anon, %struct.anon* %58, i64 %idxprom50
  %lookahead53 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx52, i32 0, i32 0
  %59 = load i32, i32* %lookahead53, align 4
  %cmp54 = icmp sge i32 %59, 0
  br i1 %cmp54, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.49
  br label %for.end.60

if.end.57:                                        ; preds = %if.end.49
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %60 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %60, 1
  store i32 %inc59, i32* %j, align 4
  br label %for.cond.37

for.end.60:                                       ; preds = %if.then.56, %if.then.48, %for.cond.37
  %61 = load i32, i32* %j, align 4
  %62 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead61 = getelementptr inbounds %struct.acttab, %struct.acttab* %62, i32 0, i32 7
  %63 = load i32, i32* %nLookahead61, align 4
  %cmp62 = icmp slt i32 %61, %63
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.end.60
  br label %for.inc.192

if.end.65:                                        ; preds = %for.end.60
  store i32 0, i32* %j, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.82, %if.end.65
  %64 = load i32, i32* %j, align 4
  %65 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction67 = getelementptr inbounds %struct.acttab, %struct.acttab* %65, i32 0, i32 0
  %66 = load i32, i32* %nAction67, align 4
  %cmp68 = icmp slt i32 %64, %66
  br i1 %cmp68, label %for.body.70, label %for.end.84

for.body.70:                                      ; preds = %for.cond.66
  %67 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %67 to i64
  %68 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction72 = getelementptr inbounds %struct.acttab, %struct.acttab* %68, i32 0, i32 2
  %69 = load %struct.anon*, %struct.anon** %aAction72, align 8
  %arrayidx73 = getelementptr inbounds %struct.anon, %struct.anon* %69, i64 %idxprom71
  %lookahead74 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx73, i32 0, i32 0
  %70 = load i32, i32* %lookahead74, align 4
  %71 = load i32, i32* %j, align 4
  %72 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead75 = getelementptr inbounds %struct.acttab, %struct.acttab* %72, i32 0, i32 4
  %73 = load i32, i32* %mnLookahead75, align 4
  %add76 = add nsw i32 %71, %73
  %74 = load i32, i32* %i, align 4
  %sub77 = sub nsw i32 %add76, %74
  %cmp78 = icmp eq i32 %70, %sub77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body.70
  br label %for.end.84

if.end.81:                                        ; preds = %for.body.70
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %75 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %75, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.66

for.end.84:                                       ; preds = %if.then.80, %for.cond.66
  %76 = load i32, i32* %j, align 4
  %77 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction85 = getelementptr inbounds %struct.acttab, %struct.acttab* %77, i32 0, i32 0
  %78 = load i32, i32* %nAction85, align 4
  %cmp86 = icmp eq i32 %76, %78
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %for.end.84
  br label %for.end.194

if.end.89:                                        ; preds = %for.end.84
  br label %if.end.191

if.else:                                          ; preds = %for.body.29
  %79 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %79 to i64
  %80 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction91 = getelementptr inbounds %struct.acttab, %struct.acttab* %80, i32 0, i32 2
  %81 = load %struct.anon*, %struct.anon** %aAction91, align 8
  %arrayidx92 = getelementptr inbounds %struct.anon, %struct.anon* %81, i64 %idxprom90
  %lookahead93 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx92, i32 0, i32 0
  %82 = load i32, i32* %lookahead93, align 4
  %83 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead94 = getelementptr inbounds %struct.acttab, %struct.acttab* %83, i32 0, i32 4
  %84 = load i32, i32* %mnLookahead94, align 4
  %cmp95 = icmp eq i32 %82, %84
  br i1 %cmp95, label %if.then.97, label %if.end.190

if.then.97:                                       ; preds = %if.else
  %85 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %85 to i64
  %86 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction99 = getelementptr inbounds %struct.acttab, %struct.acttab* %86, i32 0, i32 2
  %87 = load %struct.anon*, %struct.anon** %aAction99, align 8
  %arrayidx100 = getelementptr inbounds %struct.anon, %struct.anon* %87, i64 %idxprom98
  %action101 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx100, i32 0, i32 1
  %88 = load i32, i32* %action101, align 4
  %89 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnAction = getelementptr inbounds %struct.acttab, %struct.acttab* %89, i32 0, i32 5
  %90 = load i32, i32* %mnAction, align 4
  %cmp102 = icmp ne i32 %88, %90
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.then.97
  br label %for.inc.192

if.end.105:                                       ; preds = %if.then.97
  store i32 0, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.149, %if.end.105
  %91 = load i32, i32* %j, align 4
  %92 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead107 = getelementptr inbounds %struct.acttab, %struct.acttab* %92, i32 0, i32 7
  %93 = load i32, i32* %nLookahead107, align 4
  %cmp108 = icmp slt i32 %91, %93
  br i1 %cmp108, label %for.body.110, label %for.end.151

for.body.110:                                     ; preds = %for.cond.106
  %94 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %94 to i64
  %95 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead112 = getelementptr inbounds %struct.acttab, %struct.acttab* %95, i32 0, i32 3
  %96 = load %struct.anon*, %struct.anon** %aLookahead112, align 8
  %arrayidx113 = getelementptr inbounds %struct.anon, %struct.anon* %96, i64 %idxprom111
  %lookahead114 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx113, i32 0, i32 0
  %97 = load i32, i32* %lookahead114, align 4
  %98 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead115 = getelementptr inbounds %struct.acttab, %struct.acttab* %98, i32 0, i32 4
  %99 = load i32, i32* %mnLookahead115, align 4
  %sub116 = sub nsw i32 %97, %99
  %100 = load i32, i32* %i, align 4
  %add117 = add nsw i32 %sub116, %100
  store i32 %add117, i32* %k, align 4
  %101 = load i32, i32* %k, align 4
  %cmp118 = icmp slt i32 %101, 0
  br i1 %cmp118, label %if.then.123, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.110
  %102 = load i32, i32* %k, align 4
  %103 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction120 = getelementptr inbounds %struct.acttab, %struct.acttab* %103, i32 0, i32 0
  %104 = load i32, i32* %nAction120, align 4
  %cmp121 = icmp sge i32 %102, %104
  br i1 %cmp121, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %lor.lhs.false, %for.body.110
  br label %for.end.151

if.end.124:                                       ; preds = %lor.lhs.false
  %105 = load i32, i32* %j, align 4
  %idxprom125 = sext i32 %105 to i64
  %106 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead126 = getelementptr inbounds %struct.acttab, %struct.acttab* %106, i32 0, i32 3
  %107 = load %struct.anon*, %struct.anon** %aLookahead126, align 8
  %arrayidx127 = getelementptr inbounds %struct.anon, %struct.anon* %107, i64 %idxprom125
  %lookahead128 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx127, i32 0, i32 0
  %108 = load i32, i32* %lookahead128, align 4
  %109 = load i32, i32* %k, align 4
  %idxprom129 = sext i32 %109 to i64
  %110 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction130 = getelementptr inbounds %struct.acttab, %struct.acttab* %110, i32 0, i32 2
  %111 = load %struct.anon*, %struct.anon** %aAction130, align 8
  %arrayidx131 = getelementptr inbounds %struct.anon, %struct.anon* %111, i64 %idxprom129
  %lookahead132 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx131, i32 0, i32 0
  %112 = load i32, i32* %lookahead132, align 4
  %cmp133 = icmp ne i32 %108, %112
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.124
  br label %for.end.151

if.end.136:                                       ; preds = %if.end.124
  %113 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %113 to i64
  %114 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead138 = getelementptr inbounds %struct.acttab, %struct.acttab* %114, i32 0, i32 3
  %115 = load %struct.anon*, %struct.anon** %aLookahead138, align 8
  %arrayidx139 = getelementptr inbounds %struct.anon, %struct.anon* %115, i64 %idxprom137
  %action140 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx139, i32 0, i32 1
  %116 = load i32, i32* %action140, align 4
  %117 = load i32, i32* %k, align 4
  %idxprom141 = sext i32 %117 to i64
  %118 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction142 = getelementptr inbounds %struct.acttab, %struct.acttab* %118, i32 0, i32 2
  %119 = load %struct.anon*, %struct.anon** %aAction142, align 8
  %arrayidx143 = getelementptr inbounds %struct.anon, %struct.anon* %119, i64 %idxprom141
  %action144 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx143, i32 0, i32 1
  %120 = load i32, i32* %action144, align 4
  %cmp145 = icmp ne i32 %116, %120
  br i1 %cmp145, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.end.136
  br label %for.end.151

if.end.148:                                       ; preds = %if.end.136
  br label %for.inc.149

for.inc.149:                                      ; preds = %if.end.148
  %121 = load i32, i32* %j, align 4
  %inc150 = add nsw i32 %121, 1
  store i32 %inc150, i32* %j, align 4
  br label %for.cond.106

for.end.151:                                      ; preds = %if.then.147, %if.then.135, %if.then.123, %for.cond.106
  %122 = load i32, i32* %j, align 4
  %123 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead152 = getelementptr inbounds %struct.acttab, %struct.acttab* %123, i32 0, i32 7
  %124 = load i32, i32* %nLookahead152, align 4
  %cmp153 = icmp slt i32 %122, %124
  br i1 %cmp153, label %if.then.155, label %if.end.156

if.then.155:                                      ; preds = %for.end.151
  br label %for.inc.192

if.end.156:                                       ; preds = %for.end.151
  store i32 0, i32* %n, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.182, %if.end.156
  %125 = load i32, i32* %j, align 4
  %126 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction158 = getelementptr inbounds %struct.acttab, %struct.acttab* %126, i32 0, i32 0
  %127 = load i32, i32* %nAction158, align 4
  %cmp159 = icmp slt i32 %125, %127
  br i1 %cmp159, label %for.body.161, label %for.end.184

for.body.161:                                     ; preds = %for.cond.157
  %128 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %128 to i64
  %129 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction163 = getelementptr inbounds %struct.acttab, %struct.acttab* %129, i32 0, i32 2
  %130 = load %struct.anon*, %struct.anon** %aAction163, align 8
  %arrayidx164 = getelementptr inbounds %struct.anon, %struct.anon* %130, i64 %idxprom162
  %lookahead165 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx164, i32 0, i32 0
  %131 = load i32, i32* %lookahead165, align 4
  %cmp166 = icmp slt i32 %131, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %for.body.161
  br label %for.inc.182

if.end.169:                                       ; preds = %for.body.161
  %132 = load i32, i32* %j, align 4
  %idxprom170 = sext i32 %132 to i64
  %133 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction171 = getelementptr inbounds %struct.acttab, %struct.acttab* %133, i32 0, i32 2
  %134 = load %struct.anon*, %struct.anon** %aAction171, align 8
  %arrayidx172 = getelementptr inbounds %struct.anon, %struct.anon* %134, i64 %idxprom170
  %lookahead173 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx172, i32 0, i32 0
  %135 = load i32, i32* %lookahead173, align 4
  %136 = load i32, i32* %j, align 4
  %137 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead174 = getelementptr inbounds %struct.acttab, %struct.acttab* %137, i32 0, i32 4
  %138 = load i32, i32* %mnLookahead174, align 4
  %add175 = add nsw i32 %136, %138
  %139 = load i32, i32* %i, align 4
  %sub176 = sub nsw i32 %add175, %139
  %cmp177 = icmp eq i32 %135, %sub176
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.end.169
  %140 = load i32, i32* %n, align 4
  %inc180 = add nsw i32 %140, 1
  store i32 %inc180, i32* %n, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.end.169
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181, %if.then.168
  %141 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %141, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond.157

for.end.184:                                      ; preds = %for.cond.157
  %142 = load i32, i32* %n, align 4
  %143 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead185 = getelementptr inbounds %struct.acttab, %struct.acttab* %143, i32 0, i32 7
  %144 = load i32, i32* %nLookahead185, align 4
  %cmp186 = icmp eq i32 %142, %144
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %for.end.184
  br label %for.end.194

if.end.189:                                       ; preds = %for.end.184
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.else
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.end.89
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.191, %if.then.155, %if.then.104, %if.then.64
  %145 = load i32, i32* %i, align 4
  %inc193 = add nsw i32 %145, 1
  store i32 %inc193, i32* %i, align 4
  br label %for.cond.24

for.end.194:                                      ; preds = %if.then.188, %if.then.88, %for.cond.24
  store i32 0, i32* %j, align 4
  br label %for.cond.195

for.cond.195:                                     ; preds = %for.inc.220, %for.end.194
  %146 = load i32, i32* %j, align 4
  %147 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead196 = getelementptr inbounds %struct.acttab, %struct.acttab* %147, i32 0, i32 7
  %148 = load i32, i32* %nLookahead196, align 4
  %cmp197 = icmp slt i32 %146, %148
  br i1 %cmp197, label %for.body.199, label %for.end.222

for.body.199:                                     ; preds = %for.cond.195
  %149 = load i32, i32* %j, align 4
  %idxprom200 = sext i32 %149 to i64
  %150 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead201 = getelementptr inbounds %struct.acttab, %struct.acttab* %150, i32 0, i32 3
  %151 = load %struct.anon*, %struct.anon** %aLookahead201, align 8
  %arrayidx202 = getelementptr inbounds %struct.anon, %struct.anon* %151, i64 %idxprom200
  %lookahead203 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx202, i32 0, i32 0
  %152 = load i32, i32* %lookahead203, align 4
  %153 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead204 = getelementptr inbounds %struct.acttab, %struct.acttab* %153, i32 0, i32 4
  %154 = load i32, i32* %mnLookahead204, align 4
  %sub205 = sub nsw i32 %152, %154
  %155 = load i32, i32* %i, align 4
  %add206 = add nsw i32 %sub205, %155
  store i32 %add206, i32* %k, align 4
  %156 = load i32, i32* %k, align 4
  %idxprom207 = sext i32 %156 to i64
  %157 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aAction208 = getelementptr inbounds %struct.acttab, %struct.acttab* %157, i32 0, i32 2
  %158 = load %struct.anon*, %struct.anon** %aAction208, align 8
  %arrayidx209 = getelementptr inbounds %struct.anon, %struct.anon* %158, i64 %idxprom207
  %159 = load i32, i32* %j, align 4
  %idxprom210 = sext i32 %159 to i64
  %160 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %aLookahead211 = getelementptr inbounds %struct.acttab, %struct.acttab* %160, i32 0, i32 3
  %161 = load %struct.anon*, %struct.anon** %aLookahead211, align 8
  %arrayidx212 = getelementptr inbounds %struct.anon, %struct.anon* %161, i64 %idxprom210
  %162 = bitcast %struct.anon* %arrayidx209 to i8*
  %163 = bitcast %struct.anon* %arrayidx212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %162, i8* %163, i64 8, i32 4, i1 false)
  %164 = load i32, i32* %k, align 4
  %165 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction213 = getelementptr inbounds %struct.acttab, %struct.acttab* %165, i32 0, i32 0
  %166 = load i32, i32* %nAction213, align 4
  %cmp214 = icmp sge i32 %164, %166
  br i1 %cmp214, label %if.then.216, label %if.end.219

if.then.216:                                      ; preds = %for.body.199
  %167 = load i32, i32* %k, align 4
  %add217 = add nsw i32 %167, 1
  %168 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nAction218 = getelementptr inbounds %struct.acttab, %struct.acttab* %168, i32 0, i32 0
  store i32 %add217, i32* %nAction218, align 4
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.216, %for.body.199
  br label %for.inc.220

for.inc.220:                                      ; preds = %if.end.219
  %169 = load i32, i32* %j, align 4
  %inc221 = add nsw i32 %169, 1
  store i32 %inc221, i32* %j, align 4
  br label %for.cond.195

for.end.222:                                      ; preds = %for.cond.195
  %170 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %nLookahead223 = getelementptr inbounds %struct.acttab, %struct.acttab* %170, i32 0, i32 7
  store i32 0, i32* %nLookahead223, align 4
  %171 = load i32, i32* %i, align 4
  %172 = load %struct.acttab*, %struct.acttab** %p.addr, align 8
  %mnLookahead224 = getelementptr inbounds %struct.acttab, %struct.acttab* %172, i32 0, i32 4
  %173 = load i32, i32* %mnLookahead224, align 4
  %sub225 = sub nsw i32 %171, %173
  ret i32 %sub225
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @FindRulePrecedences(%struct.lemon* %xp) #0 {
entry:
  %xp.addr = alloca %struct.lemon*, align 8
  %rp = alloca %struct.rule*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sp = alloca %struct.symbol*, align 8
  store %struct.lemon* %xp, %struct.lemon** %xp.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %xp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 1
  %1 = load %struct.rule*, %struct.rule** %rule, align 8
  store %struct.rule* %1, %struct.rule** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %2 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool = icmp ne %struct.rule* %2, null
  br i1 %tobool, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 9
  %4 = load %struct.symbol*, %struct.symbol** %precsym, align 8
  %cmp = icmp eq %struct.symbol* %4, null
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %for.body
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.28, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %6, i32 0, i32 4
  %7 = load i32, i32* %nrhs, align 4
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %8 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym3 = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 9
  %9 = load %struct.symbol*, %struct.symbol** %precsym3, align 8
  %cmp4 = icmp eq %struct.symbol* %9, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %10 = phi i1 [ false, %for.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %10, label %for.body.5, label %for.end.30

for.body.5:                                       ; preds = %land.end
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 5
  %13 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %13, i64 %idxprom
  %14 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %14, %struct.symbol** %sp, align 8
  %15 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 2
  %16 = load i32, i32* %type, align 4
  %cmp6 = icmp eq i32 %16, 2
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %for.body.5
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then.7
  %17 = load i32, i32* %j, align 4
  %18 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 14
  %19 = load i32, i32* %nsubsym, align 4
  %cmp9 = icmp slt i32 %17, %19
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 15
  %22 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx12 = getelementptr inbounds %struct.symbol*, %struct.symbol** %22, i64 %idxprom11
  %23 = load %struct.symbol*, %struct.symbol** %arrayidx12, align 8
  %prec = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 5
  %24 = load i32, i32* %prec, align 4
  %cmp13 = icmp sge i32 %24, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %for.body.10
  %25 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %25 to i64
  %26 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym16 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 15
  %27 = load %struct.symbol**, %struct.symbol*** %subsym16, align 8
  %arrayidx17 = getelementptr inbounds %struct.symbol*, %struct.symbol** %27, i64 %idxprom15
  %28 = load %struct.symbol*, %struct.symbol** %arrayidx17, align 8
  %29 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym18 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 9
  store %struct.symbol* %28, %struct.symbol** %precsym18, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.8

for.end:                                          ; preds = %if.then.14, %for.cond.8
  br label %if.end.27

if.else:                                          ; preds = %for.body.5
  %31 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %prec19 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 5
  %32 = load i32, i32* %prec19, align 4
  %cmp20 = icmp sge i32 %32, 0
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.else
  %33 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %33 to i64
  %34 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs23 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 5
  %35 = load %struct.symbol**, %struct.symbol*** %rhs23, align 8
  %arrayidx24 = getelementptr inbounds %struct.symbol*, %struct.symbol** %35, i64 %idxprom22
  %36 = load %struct.symbol*, %struct.symbol** %arrayidx24, align 8
  %37 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym25 = getelementptr inbounds %struct.rule, %struct.rule* %37, i32 0, i32 9
  store %struct.symbol* %36, %struct.symbol** %precsym25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.end
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %38 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %38, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.1

for.end.30:                                       ; preds = %land.end
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %for.body
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %39 = load %struct.rule*, %struct.rule** %rp, align 8
  %next = getelementptr inbounds %struct.rule, %struct.rule* %39, i32 0, i32 13
  %40 = load %struct.rule*, %struct.rule** %next, align 8
  store %struct.rule* %40, %struct.rule** %rp, align 8
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindFirstSets(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %rp = alloca %struct.rule*, align 8
  %progress = alloca i32, align 4
  %sp = alloca %struct.symbol*, align 8
  %s1 = alloca %struct.symbol*, align 8
  %s2 = alloca %struct.symbol*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 4
  %2 = load i32, i32* %nsymbol, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 6
  %5 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %5, i64 %idxprom
  %6 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  %lambda = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 8
  store i32 0, i32* %lambda, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %8, i32 0, i32 5
  %9 = load i32, i32* %nterminal, align 4
  store i32 %9, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.8, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol2 = getelementptr inbounds %struct.lemon, %struct.lemon* %11, i32 0, i32 4
  %12 = load i32, i32* %nsymbol2, align 4
  %cmp3 = icmp slt i32 %10, %12
  br i1 %cmp3, label %for.body.4, label %for.end.10

for.body.4:                                       ; preds = %for.cond.1
  %call = call i8* @SetNew()
  %13 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols6 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 6
  %15 = load %struct.symbol**, %struct.symbol*** %symbols6, align 8
  %arrayidx7 = getelementptr inbounds %struct.symbol*, %struct.symbol** %15, i64 %idxprom5
  %16 = load %struct.symbol*, %struct.symbol** %arrayidx7, align 8
  %firstset = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 7
  store i8* %call, i8** %firstset, align 8
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.body.4
  %17 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %17, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond.1

for.end.10:                                       ; preds = %for.cond.1
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.10
  store i32 0, i32* %progress, align 4
  %18 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %18, i32 0, i32 1
  %19 = load %struct.rule*, %struct.rule** %rule, align 8
  store %struct.rule* %19, %struct.rule** %rp, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.34, %do.body
  %20 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool = icmp ne %struct.rule* %20, null
  br i1 %tobool, label %for.body.12, label %for.end.35

for.body.12:                                      ; preds = %for.cond.11
  %21 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %21, i32 0, i32 0
  %22 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %lambda13 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 8
  %23 = load i32, i32* %lambda13, align 4
  %tobool14 = icmp ne i32 %23, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  br label %for.inc.34

if.end:                                           ; preds = %for.body.12
  store i32 0, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.25, %if.end
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 4
  %26 = load i32, i32* %nrhs, align 4
  %cmp16 = icmp slt i32 %24, %26
  br i1 %cmp16, label %for.body.17, label %for.end.27

for.body.17:                                      ; preds = %for.cond.15
  %27 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %27 to i64
  %28 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 5
  %29 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx19 = getelementptr inbounds %struct.symbol*, %struct.symbol** %29, i64 %idxprom18
  %30 = load %struct.symbol*, %struct.symbol** %arrayidx19, align 8
  store %struct.symbol* %30, %struct.symbol** %sp, align 8
  %31 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 2
  %32 = load i32, i32* %type, align 4
  %cmp20 = icmp ne i32 %32, 0
  br i1 %cmp20, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.17
  %33 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %lambda21 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 8
  %34 = load i32, i32* %lambda21, align 4
  %cmp22 = icmp eq i32 %34, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %for.body.17
  br label %for.end.27

if.end.24:                                        ; preds = %lor.lhs.false
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %35 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %35, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond.15

for.end.27:                                       ; preds = %if.then.23, %for.cond.15
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs28 = getelementptr inbounds %struct.rule, %struct.rule* %37, i32 0, i32 4
  %38 = load i32, i32* %nrhs28, align 4
  %cmp29 = icmp eq i32 %36, %38
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %for.end.27
  %39 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs31 = getelementptr inbounds %struct.rule, %struct.rule* %39, i32 0, i32 0
  %40 = load %struct.symbol*, %struct.symbol** %lhs31, align 8
  %lambda32 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 8
  store i32 1, i32* %lambda32, align 4
  store i32 1, i32* %progress, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %for.end.27
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33, %if.then
  %41 = load %struct.rule*, %struct.rule** %rp, align 8
  %next = getelementptr inbounds %struct.rule, %struct.rule* %41, i32 0, i32 13
  %42 = load %struct.rule*, %struct.rule** %next, align 8
  store %struct.rule* %42, %struct.rule** %rp, align 8
  br label %for.cond.11

for.end.35:                                       ; preds = %for.cond.11
  br label %do.cond

do.cond:                                          ; preds = %for.end.35
  %43 = load i32, i32* %progress, align 4
  %tobool36 = icmp ne i32 %43, 0
  br i1 %tobool36, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.37

do.body.37:                                       ; preds = %do.cond.95, %do.end
  store i32 0, i32* %progress, align 4
  %44 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule38 = getelementptr inbounds %struct.lemon, %struct.lemon* %44, i32 0, i32 1
  %45 = load %struct.rule*, %struct.rule** %rule38, align 8
  store %struct.rule* %45, %struct.rule** %rp, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.92, %do.body.37
  %46 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool40 = icmp ne %struct.rule* %46, null
  br i1 %tobool40, label %for.body.41, label %for.end.94

for.body.41:                                      ; preds = %for.cond.39
  %47 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs42 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 0
  %48 = load %struct.symbol*, %struct.symbol** %lhs42, align 8
  store %struct.symbol* %48, %struct.symbol** %s1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.89, %for.body.41
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs44 = getelementptr inbounds %struct.rule, %struct.rule* %50, i32 0, i32 4
  %51 = load i32, i32* %nrhs44, align 4
  %cmp45 = icmp slt i32 %49, %51
  br i1 %cmp45, label %for.body.46, label %for.end.91

for.body.46:                                      ; preds = %for.cond.43
  %52 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %52 to i64
  %53 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs48 = getelementptr inbounds %struct.rule, %struct.rule* %53, i32 0, i32 5
  %54 = load %struct.symbol**, %struct.symbol*** %rhs48, align 8
  %arrayidx49 = getelementptr inbounds %struct.symbol*, %struct.symbol** %54, i64 %idxprom47
  %55 = load %struct.symbol*, %struct.symbol** %arrayidx49, align 8
  store %struct.symbol* %55, %struct.symbol** %s2, align 8
  %56 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %type50 = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 2
  %57 = load i32, i32* %type50, align 4
  %cmp51 = icmp eq i32 %57, 0
  br i1 %cmp51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %for.body.46
  %58 = load %struct.symbol*, %struct.symbol** %s1, align 8
  %firstset53 = getelementptr inbounds %struct.symbol, %struct.symbol* %58, i32 0, i32 7
  %59 = load i8*, i8** %firstset53, align 8
  %60 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 1
  %61 = load i32, i32* %index, align 4
  %call54 = call i32 @SetAdd(i8* %59, i32 %61)
  %62 = load i32, i32* %progress, align 4
  %add = add nsw i32 %62, %call54
  store i32 %add, i32* %progress, align 4
  br label %for.end.91

if.else:                                          ; preds = %for.body.46
  %63 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %type55 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 2
  %64 = load i32, i32* %type55, align 4
  %cmp56 = icmp eq i32 %64, 2
  br i1 %cmp56, label %if.then.57, label %if.else.70

if.then.57:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %if.then.57
  %65 = load i32, i32* %j, align 4
  %66 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 14
  %67 = load i32, i32* %nsubsym, align 4
  %cmp59 = icmp slt i32 %65, %67
  br i1 %cmp59, label %for.body.60, label %for.end.69

for.body.60:                                      ; preds = %for.cond.58
  %68 = load %struct.symbol*, %struct.symbol** %s1, align 8
  %firstset61 = getelementptr inbounds %struct.symbol, %struct.symbol* %68, i32 0, i32 7
  %69 = load i8*, i8** %firstset61, align 8
  %70 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %70 to i64
  %71 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 15
  %72 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx63 = getelementptr inbounds %struct.symbol*, %struct.symbol** %72, i64 %idxprom62
  %73 = load %struct.symbol*, %struct.symbol** %arrayidx63, align 8
  %index64 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 1
  %74 = load i32, i32* %index64, align 4
  %call65 = call i32 @SetAdd(i8* %69, i32 %74)
  %75 = load i32, i32* %progress, align 4
  %add66 = add nsw i32 %75, %call65
  store i32 %add66, i32* %progress, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.60
  %76 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %76, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.58

for.end.69:                                       ; preds = %for.cond.58
  br label %for.end.91

if.else.70:                                       ; preds = %if.else
  %77 = load %struct.symbol*, %struct.symbol** %s1, align 8
  %78 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %cmp71 = icmp eq %struct.symbol* %77, %78
  br i1 %cmp71, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.else.70
  %79 = load %struct.symbol*, %struct.symbol** %s1, align 8
  %lambda73 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 8
  %80 = load i32, i32* %lambda73, align 4
  %cmp74 = icmp eq i32 %80, 0
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.72
  br label %for.end.91

if.end.76:                                        ; preds = %if.then.72
  br label %if.end.86

if.else.77:                                       ; preds = %if.else.70
  %81 = load %struct.symbol*, %struct.symbol** %s1, align 8
  %firstset78 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 7
  %82 = load i8*, i8** %firstset78, align 8
  %83 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %firstset79 = getelementptr inbounds %struct.symbol, %struct.symbol* %83, i32 0, i32 7
  %84 = load i8*, i8** %firstset79, align 8
  %call80 = call i32 @SetUnion(i8* %82, i8* %84)
  %85 = load i32, i32* %progress, align 4
  %add81 = add nsw i32 %85, %call80
  store i32 %add81, i32* %progress, align 4
  %86 = load %struct.symbol*, %struct.symbol** %s2, align 8
  %lambda82 = getelementptr inbounds %struct.symbol, %struct.symbol* %86, i32 0, i32 8
  %87 = load i32, i32* %lambda82, align 4
  %cmp83 = icmp eq i32 %87, 0
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.else.77
  br label %for.end.91

if.end.85:                                        ; preds = %if.else.77
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.76
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %88 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %88, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.43

for.end.91:                                       ; preds = %if.then.84, %if.then.75, %for.end.69, %if.then.52, %for.cond.43
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91
  %89 = load %struct.rule*, %struct.rule** %rp, align 8
  %next93 = getelementptr inbounds %struct.rule, %struct.rule* %89, i32 0, i32 13
  %90 = load %struct.rule*, %struct.rule** %next93, align 8
  store %struct.rule* %90, %struct.rule** %rp, align 8
  br label %for.cond.39

for.end.94:                                       ; preds = %for.cond.39
  br label %do.cond.95

do.cond.95:                                       ; preds = %for.end.94
  %91 = load i32, i32* %progress, align 4
  %tobool96 = icmp ne i32 %91, 0
  br i1 %tobool96, label %do.body.37, label %do.end.97

do.end.97:                                        ; preds = %do.cond.95
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindStates(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %sp = alloca %struct.symbol*, align 8
  %rp = alloca %struct.rule*, align 8
  %i = alloca i32, align 4
  %newcfp = alloca %struct.config*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  call void @Configlist_init()
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %start = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 14
  %1 = load i8*, i8** %start, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %start1 = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 14
  %3 = load i8*, i8** %start1, align 8
  %call = call %struct.symbol* @Symbol_find(i8* %3)
  store %struct.symbol* %call, %struct.symbol** %sp, align 8
  %4 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %cmp = icmp eq %struct.symbol* %4, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %5, i32 0, i32 32
  %6 = load i8*, i8** %filename, align 8
  %7 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %start3 = getelementptr inbounds %struct.lemon, %struct.lemon* %7, i32 0, i32 14
  %8 = load i8*, i8** %start3, align 8
  %9 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %9, i32 0, i32 1
  %10 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 0
  %11 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %12 = load i8*, i8** %name, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %6, i32 0, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.2, i32 0, i32 0), i8* %8, i8* %12)
  %13 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %13, i32 0, i32 7
  %14 = load i32, i32* %errorcnt, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %errorcnt, align 4
  %15 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule4 = getelementptr inbounds %struct.lemon, %struct.lemon* %15, i32 0, i32 1
  %16 = load %struct.rule*, %struct.rule** %rule4, align 8
  %lhs5 = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 0
  %17 = load %struct.symbol*, %struct.symbol** %lhs5, align 8
  store %struct.symbol* %17, %struct.symbol** %sp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.8

if.else:                                          ; preds = %entry
  %18 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule6 = getelementptr inbounds %struct.lemon, %struct.lemon* %18, i32 0, i32 1
  %19 = load %struct.rule*, %struct.rule** %rule6, align 8
  %lhs7 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 0
  %20 = load %struct.symbol*, %struct.symbol** %lhs7, align 8
  store %struct.symbol* %20, %struct.symbol** %sp, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.end
  %21 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule9 = getelementptr inbounds %struct.lemon, %struct.lemon* %21, i32 0, i32 1
  %22 = load %struct.rule*, %struct.rule** %rule9, align 8
  store %struct.rule* %22, %struct.rule** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end.8
  %23 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool10 = icmp ne %struct.rule* %23, null
  br i1 %tobool10, label %for.body, label %for.end.23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 4
  %26 = load i32, i32* %nrhs, align 4
  %cmp12 = icmp slt i32 %24, %26
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 5
  %29 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %29, i64 %idxprom
  %30 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  %31 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %cmp14 = icmp eq %struct.symbol* %30, %31
  br i1 %cmp14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.body.13
  %32 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename16 = getelementptr inbounds %struct.lemon, %struct.lemon* %32, i32 0, i32 32
  %33 = load i8*, i8** %filename16, align 8
  %34 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name17 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 0
  %35 = load i8*, i8** %name17, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %33, i32 0, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.3, i32 0, i32 0), i8* %35)
  %36 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt18 = getelementptr inbounds %struct.lemon, %struct.lemon* %36, i32 0, i32 7
  %37 = load i32, i32* %errorcnt18, align 4
  %inc19 = add nsw i32 %37, 1
  store i32 %inc19, i32* %errorcnt18, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %38 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %38, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %39 = load %struct.rule*, %struct.rule** %rp, align 8
  %next = getelementptr inbounds %struct.rule, %struct.rule* %39, i32 0, i32 13
  %40 = load %struct.rule*, %struct.rule** %next, align 8
  store %struct.rule* %40, %struct.rule** %rp, align 8
  br label %for.cond

for.end.23:                                       ; preds = %for.cond
  %41 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %rule24 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 3
  %42 = load %struct.rule*, %struct.rule** %rule24, align 8
  store %struct.rule* %42, %struct.rule** %rp, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.30, %for.end.23
  %43 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool26 = icmp ne %struct.rule* %43, null
  br i1 %tobool26, label %for.body.27, label %for.end.31

for.body.27:                                      ; preds = %for.cond.25
  %44 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhsStart = getelementptr inbounds %struct.rule, %struct.rule* %44, i32 0, i32 2
  store i32 1, i32* %lhsStart, align 4
  %45 = load %struct.rule*, %struct.rule** %rp, align 8
  %call28 = call %struct.config* @Configlist_addbasis(%struct.rule* %45, i32 0)
  store %struct.config* %call28, %struct.config** %newcfp, align 8
  %46 = load %struct.config*, %struct.config** %newcfp, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %46, i32 0, i32 2
  %47 = load i8*, i8** %fws, align 8
  %call29 = call i32 @SetAdd(i8* %47, i32 0)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.27
  %48 = load %struct.rule*, %struct.rule** %rp, align 8
  %nextlhs = getelementptr inbounds %struct.rule, %struct.rule* %48, i32 0, i32 12
  %49 = load %struct.rule*, %struct.rule** %nextlhs, align 8
  store %struct.rule* %49, %struct.rule** %rp, align 8
  br label %for.cond.25

for.end.31:                                       ; preds = %for.cond.25
  %50 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call32 = call %struct.state* @getstate(%struct.lemon* %50)
  ret void
}

; Function Attrs: nounwind uwtable
define void @ErrorMsg(i8* %filename, i32 %lineno, i8* %format, ...) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %format.addr = alloca i8*, align 8
  %errmsg = alloca [10000 x i8], align 16
  %prefix = alloca [40 x i8], align 16
  %errmsgsize = alloca i32, align 4
  %prefixsize = alloca i32, align 4
  %availablewidth = alloca i32, align 4
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %end = alloca i32, align 4
  %restart = alloca i32, align 4
  %base = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %lineno.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [40 x i8], [40 x i8]* %prefix, i32 0, i32 0
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i32, i32* %lineno.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 20, i8* %1, i32 %2) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [40 x i8], [40 x i8]* %prefix, i32 0, i32 0
  %3 = load i8*, i8** %filename.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 20, i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay5 = getelementptr inbounds [40 x i8], [40 x i8]* %prefix, i32 0, i32 0
  %call6 = call i64 @strlen(i8* %arraydecay5) #8
  %conv = trunc i64 %call6 to i32
  store i32 %conv, i32* %prefixsize, align 4
  %4 = load i32, i32* %prefixsize, align 4
  %sub = sub nsw i32 79, %4
  store i32 %sub, i32* %availablewidth, align 4
  %arraydecay7 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i32 0
  %5 = load i8*, i8** %format.addr, align 8
  %arraydecay8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call9 = call i32 @vsprintf(i8* %arraydecay7, i8* %5, %struct.__va_list_tag* %arraydecay8) #4
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  %arraydecay12 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i32 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #8
  %conv14 = trunc i64 %call13 to i32
  store i32 %conv14, i32* %errmsgsize, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %6 = load i32, i32* %errmsgsize, align 4
  %cmp15 = icmp sgt i32 %6, 0
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %errmsgsize, align 4
  %sub17 = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub17 to i64
  %arrayidx = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv18 = sext i8 %8 to i32
  %cmp19 = icmp eq i32 %conv18, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %errmsgsize, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %errmsgsize, align 4
  %idxprom21 = sext i32 %dec to i64
  %arrayidx22 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom21
  store i8 0, i8* %arrayidx22, align 1
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %base, align 4
  br label %while.cond.23

while.cond.23:                                    ; preds = %while.end.40, %while.end
  %11 = load i32, i32* %base, align 4
  %idxprom24 = sext i32 %11 to i64
  %arrayidx25 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom24
  %12 = load i8, i8* %arrayidx25, align 1
  %conv26 = sext i8 %12 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %while.body.29, label %while.end.45

while.body.29:                                    ; preds = %while.cond.23
  %13 = load i32, i32* %base, align 4
  %idxprom30 = sext i32 %13 to i64
  %arrayidx31 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom30
  %14 = load i32, i32* %availablewidth, align 4
  %call32 = call i32 @findbreak(i8* %arrayidx31, i32 0, i32 %14)
  store i32 %call32, i32* %restart, align 4
  store i32 %call32, i32* %end, align 4
  %15 = load i32, i32* %base, align 4
  %16 = load i32, i32* %restart, align 4
  %add = add nsw i32 %16, %15
  store i32 %add, i32* %restart, align 4
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.39, %while.body.29
  %17 = load i32, i32* %restart, align 4
  %idxprom34 = sext i32 %17 to i64
  %arrayidx35 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom34
  %18 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %18 to i32
  %cmp37 = icmp eq i32 %conv36, 32
  br i1 %cmp37, label %while.body.39, label %while.end.40

while.body.39:                                    ; preds = %while.cond.33
  %19 = load i32, i32* %restart, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %restart, align 4
  br label %while.cond.33

while.end.40:                                     ; preds = %while.cond.33
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %arraydecay41 = getelementptr inbounds [40 x i8], [40 x i8]* %prefix, i32 0, i32 0
  %21 = load i32, i32* %end, align 4
  %22 = load i32, i32* %base, align 4
  %idxprom42 = sext i32 %22 to i64
  %arrayidx43 = getelementptr inbounds [10000 x i8], [10000 x i8]* %errmsg, i32 0, i64 %idxprom42
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %arraydecay41, i32 %21, i8* %arrayidx43)
  %23 = load i32, i32* %restart, align 4
  store i32 %23, i32* %base, align 4
  br label %while.cond.23

while.end.45:                                     ; preds = %while.cond.23
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.state* @getstate(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %cfp = alloca %struct.config*, align 8
  %bp = alloca %struct.config*, align 8
  %stp = alloca %struct.state*, align 8
  %x = alloca %struct.config*, align 8
  %y = alloca %struct.config*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  call void @Configlist_sortbasis()
  %call = call %struct.config* @Configlist_basis()
  store %struct.config* %call, %struct.config** %bp, align 8
  %0 = load %struct.config*, %struct.config** %bp, align 8
  %call1 = call %struct.state* @State_find(%struct.config* %0)
  store %struct.state* %call1, %struct.state** %stp, align 8
  %1 = load %struct.state*, %struct.state** %stp, align 8
  %tobool = icmp ne %struct.state* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.config*, %struct.config** %bp, align 8
  store %struct.config* %2, %struct.config** %x, align 8
  %3 = load %struct.state*, %struct.state** %stp, align 8
  %bp2 = getelementptr inbounds %struct.state, %struct.state* %3, i32 0, i32 0
  %4 = load %struct.config*, %struct.config** %bp2, align 8
  store %struct.config* %4, %struct.config** %y, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.config*, %struct.config** %x, align 8
  %tobool3 = icmp ne %struct.config* %5, null
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load %struct.config*, %struct.config** %y, align 8
  %tobool4 = icmp ne %struct.config* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %tobool4, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.config*, %struct.config** %y, align 8
  %bplp = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 4
  %9 = load %struct.config*, %struct.config** %x, align 8
  %bplp5 = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 4
  %10 = load %struct.plink*, %struct.plink** %bplp5, align 8
  call void @Plink_copy(%struct.plink** %bplp, %struct.plink* %10)
  %11 = load %struct.config*, %struct.config** %x, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 3
  %12 = load %struct.plink*, %struct.plink** %fplp, align 8
  call void @Plink_delete(%struct.plink* %12)
  %13 = load %struct.config*, %struct.config** %x, align 8
  %bplp6 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 4
  store %struct.plink* null, %struct.plink** %bplp6, align 8
  %14 = load %struct.config*, %struct.config** %x, align 8
  %fplp7 = getelementptr inbounds %struct.config, %struct.config* %14, i32 0, i32 3
  store %struct.plink* null, %struct.plink** %fplp7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.config*, %struct.config** %x, align 8
  %bp8 = getelementptr inbounds %struct.config, %struct.config* %15, i32 0, i32 8
  %16 = load %struct.config*, %struct.config** %bp8, align 8
  store %struct.config* %16, %struct.config** %x, align 8
  %17 = load %struct.config*, %struct.config** %y, align 8
  %bp9 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 8
  %18 = load %struct.config*, %struct.config** %bp9, align 8
  store %struct.config* %18, %struct.config** %y, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %call10 = call %struct.config* @Configlist_return()
  store %struct.config* %call10, %struct.config** %cfp, align 8
  %19 = load %struct.config*, %struct.config** %cfp, align 8
  call void @Configlist_eat(%struct.config* %19)
  br label %if.end.18

if.else:                                          ; preds = %entry
  %20 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  call void @Configlist_closure(%struct.lemon* %20)
  call void @Configlist_sort()
  %call11 = call %struct.config* @Configlist_return()
  store %struct.config* %call11, %struct.config** %cfp, align 8
  %call12 = call %struct.state* @State_new()
  store %struct.state* %call12, %struct.state** %stp, align 8
  %21 = load %struct.state*, %struct.state** %stp, align 8
  %cmp = icmp eq %struct.state* %21, null
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  call void @memory_error()
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  %22 = load %struct.config*, %struct.config** %bp, align 8
  %23 = load %struct.state*, %struct.state** %stp, align 8
  %bp14 = getelementptr inbounds %struct.state, %struct.state* %23, i32 0, i32 0
  store %struct.config* %22, %struct.config** %bp14, align 8
  %24 = load %struct.config*, %struct.config** %cfp, align 8
  %25 = load %struct.state*, %struct.state** %stp, align 8
  %cfp15 = getelementptr inbounds %struct.state, %struct.state* %25, i32 0, i32 1
  store %struct.config* %24, %struct.config** %cfp15, align 8
  %26 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %26, i32 0, i32 2
  %27 = load i32, i32* %nstate, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %nstate, align 4
  %28 = load %struct.state*, %struct.state** %stp, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 2
  store i32 %27, i32* %statenum, align 4
  %29 = load %struct.state*, %struct.state** %stp, align 8
  %ap = getelementptr inbounds %struct.state, %struct.state* %29, i32 0, i32 3
  store %struct.action* null, %struct.action** %ap, align 8
  %30 = load %struct.state*, %struct.state** %stp, align 8
  %31 = load %struct.state*, %struct.state** %stp, align 8
  %bp16 = getelementptr inbounds %struct.state, %struct.state* %31, i32 0, i32 0
  %32 = load %struct.config*, %struct.config** %bp16, align 8
  %call17 = call i32 @State_insert(%struct.state* %30, %struct.config* %32)
  %33 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %34 = load %struct.state*, %struct.state** %stp, align 8
  call void @buildshifts(%struct.lemon* %33, %struct.state* %34)
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %for.end
  %35 = load %struct.state*, %struct.state** %stp, align 8
  ret %struct.state* %35
}

; Function Attrs: nounwind uwtable
define i32 @same_symbol(%struct.symbol* %a, %struct.symbol* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.symbol*, align 8
  %b.addr = alloca %struct.symbol*, align 8
  %i = alloca i32, align 4
  store %struct.symbol* %a, %struct.symbol** %a.addr, align 8
  store %struct.symbol* %b, %struct.symbol** %b.addr, align 8
  %0 = load %struct.symbol*, %struct.symbol** %a.addr, align 8
  %1 = load %struct.symbol*, %struct.symbol** %b.addr, align 8
  %cmp = icmp eq %struct.symbol* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.symbol*, %struct.symbol** %a.addr, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %2, i32 0, i32 2
  %3 = load i32, i32* %type, align 4
  %cmp1 = icmp ne i32 %3, 2
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.symbol*, %struct.symbol** %b.addr, align 8
  %type4 = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 2
  %5 = load i32, i32* %type4, align 4
  %cmp5 = icmp ne i32 %5, 2
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct.symbol*, %struct.symbol** %a.addr, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 14
  %7 = load i32, i32* %nsubsym, align 4
  %8 = load %struct.symbol*, %struct.symbol** %b.addr, align 8
  %nsubsym8 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 14
  %9 = load i32, i32* %nsubsym8, align 4
  %cmp9 = icmp ne i32 %7, %9
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.symbol*, %struct.symbol** %a.addr, align 8
  %nsubsym12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 14
  %12 = load i32, i32* %nsubsym12, align 4
  %cmp13 = icmp slt i32 %10, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.symbol*, %struct.symbol** %a.addr, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 15
  %15 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %15, i64 %idxprom
  %16 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.symbol*, %struct.symbol** %b.addr, align 8
  %subsym15 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 15
  %19 = load %struct.symbol**, %struct.symbol*** %subsym15, align 8
  %arrayidx16 = getelementptr inbounds %struct.symbol*, %struct.symbol** %19, i64 %idxprom14
  %20 = load %struct.symbol*, %struct.symbol** %arrayidx16, align 8
  %cmp17 = icmp ne %struct.symbol* %16, %20
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.18, %if.then.10, %if.then.6, %if.then.2, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @buildshifts(%struct.lemon* %lemp, %struct.state* %stp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %stp.addr = alloca %struct.state*, align 8
  %cfp = alloca %struct.config*, align 8
  %bcfp = alloca %struct.config*, align 8
  %new = alloca %struct.config*, align 8
  %sp = alloca %struct.symbol*, align 8
  %bsp = alloca %struct.symbol*, align 8
  %newstp = alloca %struct.state*, align 8
  %i = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store %struct.state* %stp, %struct.state** %stp.addr, align 8
  %0 = load %struct.state*, %struct.state** %stp.addr, align 8
  %cfp1 = getelementptr inbounds %struct.state, %struct.state* %0, i32 0, i32 1
  %1 = load %struct.config*, %struct.config** %cfp1, align 8
  store %struct.config* %1, %struct.config** %cfp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool = icmp ne %struct.config* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.config*, %struct.config** %cfp, align 8
  %status = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 6
  store i32 1, i32* %status, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 7
  %5 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %5, %struct.config** %cfp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.state*, %struct.state** %stp.addr, align 8
  %cfp2 = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 1
  %7 = load %struct.config*, %struct.config** %cfp2, align 8
  store %struct.config* %7, %struct.config** %cfp, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.52, %for.end
  %8 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool4 = icmp ne %struct.config* %8, null
  br i1 %tobool4, label %for.body.5, label %for.end.54

for.body.5:                                       ; preds = %for.cond.3
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %status6 = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 6
  %10 = load i32, i32* %status6, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %for.inc.52

if.end:                                           ; preds = %for.body.5
  %11 = load %struct.config*, %struct.config** %cfp, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 1
  %12 = load i32, i32* %dot, align 4
  %13 = load %struct.config*, %struct.config** %cfp, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 0
  %14 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 4
  %15 = load i32, i32* %nrhs, align 4
  %cmp7 = icmp sge i32 %12, %15
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %for.inc.52

if.end.9:                                         ; preds = %if.end
  call void @Configlist_reset()
  %16 = load %struct.config*, %struct.config** %cfp, align 8
  %dot10 = getelementptr inbounds %struct.config, %struct.config* %16, i32 0, i32 1
  %17 = load i32, i32* %dot10, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.config*, %struct.config** %cfp, align 8
  %rp11 = getelementptr inbounds %struct.config, %struct.config* %18, i32 0, i32 0
  %19 = load %struct.rule*, %struct.rule** %rp11, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 5
  %20 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %20, i64 %idxprom
  %21 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %21, %struct.symbol** %sp, align 8
  %22 = load %struct.config*, %struct.config** %cfp, align 8
  store %struct.config* %22, %struct.config** %bcfp, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.37, %if.end.9
  %23 = load %struct.config*, %struct.config** %bcfp, align 8
  %tobool13 = icmp ne %struct.config* %23, null
  br i1 %tobool13, label %for.body.14, label %for.end.39

for.body.14:                                      ; preds = %for.cond.12
  %24 = load %struct.config*, %struct.config** %bcfp, align 8
  %status15 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 6
  %25 = load i32, i32* %status15, align 4
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body.14
  br label %for.inc.37

if.end.18:                                        ; preds = %for.body.14
  %26 = load %struct.config*, %struct.config** %bcfp, align 8
  %dot19 = getelementptr inbounds %struct.config, %struct.config* %26, i32 0, i32 1
  %27 = load i32, i32* %dot19, align 4
  %28 = load %struct.config*, %struct.config** %bcfp, align 8
  %rp20 = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 0
  %29 = load %struct.rule*, %struct.rule** %rp20, align 8
  %nrhs21 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 4
  %30 = load i32, i32* %nrhs21, align 4
  %cmp22 = icmp sge i32 %27, %30
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  br label %for.inc.37

if.end.24:                                        ; preds = %if.end.18
  %31 = load %struct.config*, %struct.config** %bcfp, align 8
  %dot25 = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 1
  %32 = load i32, i32* %dot25, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.config*, %struct.config** %bcfp, align 8
  %rp27 = getelementptr inbounds %struct.config, %struct.config* %33, i32 0, i32 0
  %34 = load %struct.rule*, %struct.rule** %rp27, align 8
  %rhs28 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 5
  %35 = load %struct.symbol**, %struct.symbol*** %rhs28, align 8
  %arrayidx29 = getelementptr inbounds %struct.symbol*, %struct.symbol** %35, i64 %idxprom26
  %36 = load %struct.symbol*, %struct.symbol** %arrayidx29, align 8
  store %struct.symbol* %36, %struct.symbol** %bsp, align 8
  %37 = load %struct.symbol*, %struct.symbol** %bsp, align 8
  %38 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %call = call i32 @same_symbol(%struct.symbol* %37, %struct.symbol* %38)
  %tobool30 = icmp ne i32 %call, 0
  br i1 %tobool30, label %if.end.32, label %if.then.31

if.then.31:                                       ; preds = %if.end.24
  br label %for.inc.37

if.end.32:                                        ; preds = %if.end.24
  %39 = load %struct.config*, %struct.config** %bcfp, align 8
  %status33 = getelementptr inbounds %struct.config, %struct.config* %39, i32 0, i32 6
  store i32 0, i32* %status33, align 4
  %40 = load %struct.config*, %struct.config** %bcfp, align 8
  %rp34 = getelementptr inbounds %struct.config, %struct.config* %40, i32 0, i32 0
  %41 = load %struct.rule*, %struct.rule** %rp34, align 8
  %42 = load %struct.config*, %struct.config** %bcfp, align 8
  %dot35 = getelementptr inbounds %struct.config, %struct.config* %42, i32 0, i32 1
  %43 = load i32, i32* %dot35, align 4
  %add = add nsw i32 %43, 1
  %call36 = call %struct.config* @Configlist_addbasis(%struct.rule* %41, i32 %add)
  store %struct.config* %call36, %struct.config** %new, align 8
  %44 = load %struct.config*, %struct.config** %new, align 8
  %bplp = getelementptr inbounds %struct.config, %struct.config* %44, i32 0, i32 4
  %45 = load %struct.config*, %struct.config** %bcfp, align 8
  call void @Plink_add(%struct.plink** %bplp, %struct.config* %45)
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.32, %if.then.31, %if.then.23, %if.then.17
  %46 = load %struct.config*, %struct.config** %bcfp, align 8
  %next38 = getelementptr inbounds %struct.config, %struct.config* %46, i32 0, i32 7
  %47 = load %struct.config*, %struct.config** %next38, align 8
  store %struct.config* %47, %struct.config** %bcfp, align 8
  br label %for.cond.12

for.end.39:                                       ; preds = %for.cond.12
  %48 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call40 = call %struct.state* @getstate(%struct.lemon* %48)
  store %struct.state* %call40, %struct.state** %newstp, align 8
  %49 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 2
  %50 = load i32, i32* %type, align 4
  %cmp41 = icmp eq i32 %50, 2
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %for.end.39
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.48, %if.then.42
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 14
  %53 = load i32, i32* %nsubsym, align 4
  %cmp44 = icmp slt i32 %51, %53
  br i1 %cmp44, label %for.body.45, label %for.end.49

for.body.45:                                      ; preds = %for.cond.43
  %54 = load %struct.state*, %struct.state** %stp.addr, align 8
  %ap = getelementptr inbounds %struct.state, %struct.state* %54, i32 0, i32 3
  %55 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %55 to i64
  %56 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 15
  %57 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx47 = getelementptr inbounds %struct.symbol*, %struct.symbol** %57, i64 %idxprom46
  %58 = load %struct.symbol*, %struct.symbol** %arrayidx47, align 8
  %59 = load %struct.state*, %struct.state** %newstp, align 8
  %60 = bitcast %struct.state* %59 to i8*
  call void @Action_add(%struct.action** %ap, i32 0, %struct.symbol* %58, i8* %60)
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.45
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.43

for.end.49:                                       ; preds = %for.cond.43
  br label %if.end.51

if.else:                                          ; preds = %for.end.39
  %62 = load %struct.state*, %struct.state** %stp.addr, align 8
  %ap50 = getelementptr inbounds %struct.state, %struct.state* %62, i32 0, i32 3
  %63 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %64 = load %struct.state*, %struct.state** %newstp, align 8
  %65 = bitcast %struct.state* %64 to i8*
  call void @Action_add(%struct.action** %ap50, i32 0, %struct.symbol* %63, i8* %65)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else, %for.end.49
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51, %if.then.8, %if.then
  %66 = load %struct.config*, %struct.config** %cfp, align 8
  %next53 = getelementptr inbounds %struct.config, %struct.config* %66, i32 0, i32 7
  %67 = load %struct.config*, %struct.config** %next53, align 8
  store %struct.config* %67, %struct.config** %cfp, align 8
  br label %for.cond.3

for.end.54:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindLinks(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %cfp = alloca %struct.config*, align 8
  %other = alloca %struct.config*, align 8
  %stp = alloca %struct.state*, align 8
  %plp = alloca %struct.plink*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 2
  %2 = load i32, i32* %nstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 0
  %5 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %5, i64 %idxprom
  %6 = load %struct.state*, %struct.state** %arrayidx, align 8
  store %struct.state* %6, %struct.state** %stp, align 8
  %7 = load %struct.state*, %struct.state** %stp, align 8
  %cfp1 = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 1
  %8 = load %struct.config*, %struct.config** %cfp1, align 8
  store %struct.config* %8, %struct.config** %cfp, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool = icmp ne %struct.config* %9, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %10 = load %struct.state*, %struct.state** %stp, align 8
  %11 = load %struct.config*, %struct.config** %cfp, align 8
  %stp4 = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 5
  store %struct.state* %10, %struct.state** %stp4, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %12 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %12, i32 0, i32 7
  %13 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %13, %struct.config** %cfp, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.28, %for.end.6
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate8 = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 2
  %17 = load i32, i32* %nstate8, align 4
  %cmp9 = icmp slt i32 %15, %17
  br i1 %cmp9, label %for.body.10, label %for.end.30

for.body.10:                                      ; preds = %for.cond.7
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted12 = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 0
  %20 = load %struct.state**, %struct.state*** %sorted12, align 8
  %arrayidx13 = getelementptr inbounds %struct.state*, %struct.state** %20, i64 %idxprom11
  %21 = load %struct.state*, %struct.state** %arrayidx13, align 8
  store %struct.state* %21, %struct.state** %stp, align 8
  %22 = load %struct.state*, %struct.state** %stp, align 8
  %cfp14 = getelementptr inbounds %struct.state, %struct.state* %22, i32 0, i32 1
  %23 = load %struct.config*, %struct.config** %cfp14, align 8
  store %struct.config* %23, %struct.config** %cfp, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.25, %for.body.10
  %24 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool16 = icmp ne %struct.config* %24, null
  br i1 %tobool16, label %for.body.17, label %for.end.27

for.body.17:                                      ; preds = %for.cond.15
  %25 = load %struct.config*, %struct.config** %cfp, align 8
  %bplp = getelementptr inbounds %struct.config, %struct.config* %25, i32 0, i32 4
  %26 = load %struct.plink*, %struct.plink** %bplp, align 8
  store %struct.plink* %26, %struct.plink** %plp, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.22, %for.body.17
  %27 = load %struct.plink*, %struct.plink** %plp, align 8
  %tobool19 = icmp ne %struct.plink* %27, null
  br i1 %tobool19, label %for.body.20, label %for.end.24

for.body.20:                                      ; preds = %for.cond.18
  %28 = load %struct.plink*, %struct.plink** %plp, align 8
  %cfp21 = getelementptr inbounds %struct.plink, %struct.plink* %28, i32 0, i32 0
  %29 = load %struct.config*, %struct.config** %cfp21, align 8
  store %struct.config* %29, %struct.config** %other, align 8
  %30 = load %struct.config*, %struct.config** %other, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 3
  %31 = load %struct.config*, %struct.config** %cfp, align 8
  call void @Plink_add(%struct.plink** %fplp, %struct.config* %31)
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.body.20
  %32 = load %struct.plink*, %struct.plink** %plp, align 8
  %next23 = getelementptr inbounds %struct.plink, %struct.plink* %32, i32 0, i32 1
  %33 = load %struct.plink*, %struct.plink** %next23, align 8
  store %struct.plink* %33, %struct.plink** %plp, align 8
  br label %for.cond.18

for.end.24:                                       ; preds = %for.cond.18
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %34 = load %struct.config*, %struct.config** %cfp, align 8
  %next26 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 7
  %35 = load %struct.config*, %struct.config** %next26, align 8
  store %struct.config* %35, %struct.config** %cfp, align 8
  br label %for.cond.15

for.end.27:                                       ; preds = %for.cond.15
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end.27
  %36 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %36, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.7

for.end.30:                                       ; preds = %for.cond.7
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindFollowSets(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %cfp = alloca %struct.config*, align 8
  %plp = alloca %struct.plink*, align 8
  %progress = alloca i32, align 4
  %change = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 2
  %2 = load i32, i32* %nstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.5

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 0
  %5 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %5, i64 %idxprom
  %6 = load %struct.state*, %struct.state** %arrayidx, align 8
  %cfp1 = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 1
  %7 = load %struct.config*, %struct.config** %cfp1, align 8
  store %struct.config* %7, %struct.config** %cfp, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool = icmp ne %struct.config* %8, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %status = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 6
  store i32 1, i32* %status, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 7
  %11 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %11, %struct.config** %cfp, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.5:                                        ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end.5
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.36, %do.body
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate7 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 2
  %15 = load i32, i32* %nstate7, align 4
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %for.body.9, label %for.end.38

for.body.9:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted11 = getelementptr inbounds %struct.lemon, %struct.lemon* %17, i32 0, i32 0
  %18 = load %struct.state**, %struct.state*** %sorted11, align 8
  %arrayidx12 = getelementptr inbounds %struct.state*, %struct.state** %18, i64 %idxprom10
  %19 = load %struct.state*, %struct.state** %arrayidx12, align 8
  %cfp13 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 1
  %20 = load %struct.config*, %struct.config** %cfp13, align 8
  store %struct.config* %20, %struct.config** %cfp, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.33, %for.body.9
  %21 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool15 = icmp ne %struct.config* %21, null
  br i1 %tobool15, label %for.body.16, label %for.end.35

for.body.16:                                      ; preds = %for.cond.14
  %22 = load %struct.config*, %struct.config** %cfp, align 8
  %status17 = getelementptr inbounds %struct.config, %struct.config* %22, i32 0, i32 6
  %23 = load i32, i32* %status17, align 4
  %cmp18 = icmp eq i32 %23, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.16
  br label %for.inc.33

if.end:                                           ; preds = %for.body.16
  %24 = load %struct.config*, %struct.config** %cfp, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 3
  %25 = load %struct.plink*, %struct.plink** %fplp, align 8
  store %struct.plink* %25, %struct.plink** %plp, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.29, %if.end
  %26 = load %struct.plink*, %struct.plink** %plp, align 8
  %tobool20 = icmp ne %struct.plink* %26, null
  br i1 %tobool20, label %for.body.21, label %for.end.31

for.body.21:                                      ; preds = %for.cond.19
  %27 = load %struct.plink*, %struct.plink** %plp, align 8
  %cfp22 = getelementptr inbounds %struct.plink, %struct.plink* %27, i32 0, i32 0
  %28 = load %struct.config*, %struct.config** %cfp22, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %28, i32 0, i32 2
  %29 = load i8*, i8** %fws, align 8
  %30 = load %struct.config*, %struct.config** %cfp, align 8
  %fws23 = getelementptr inbounds %struct.config, %struct.config* %30, i32 0, i32 2
  %31 = load i8*, i8** %fws23, align 8
  %call = call i32 @SetUnion(i8* %29, i8* %31)
  store i32 %call, i32* %change, align 4
  %32 = load i32, i32* %change, align 4
  %tobool24 = icmp ne i32 %32, 0
  br i1 %tobool24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %for.body.21
  %33 = load %struct.plink*, %struct.plink** %plp, align 8
  %cfp26 = getelementptr inbounds %struct.plink, %struct.plink* %33, i32 0, i32 0
  %34 = load %struct.config*, %struct.config** %cfp26, align 8
  %status27 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 6
  store i32 1, i32* %status27, align 4
  store i32 1, i32* %progress, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %for.body.21
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %35 = load %struct.plink*, %struct.plink** %plp, align 8
  %next30 = getelementptr inbounds %struct.plink, %struct.plink* %35, i32 0, i32 1
  %36 = load %struct.plink*, %struct.plink** %next30, align 8
  store %struct.plink* %36, %struct.plink** %plp, align 8
  br label %for.cond.19

for.end.31:                                       ; preds = %for.cond.19
  %37 = load %struct.config*, %struct.config** %cfp, align 8
  %status32 = getelementptr inbounds %struct.config, %struct.config* %37, i32 0, i32 6
  store i32 0, i32* %status32, align 4
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end.31, %if.then
  %38 = load %struct.config*, %struct.config** %cfp, align 8
  %next34 = getelementptr inbounds %struct.config, %struct.config* %38, i32 0, i32 7
  %39 = load %struct.config*, %struct.config** %next34, align 8
  store %struct.config* %39, %struct.config** %cfp, align 8
  br label %for.cond.14

for.end.35:                                       ; preds = %for.cond.14
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.end.35
  %40 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %40, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.6

for.end.38:                                       ; preds = %for.cond.6
  br label %do.cond

do.cond:                                          ; preds = %for.end.38
  %41 = load i32, i32* %progress, align 4
  %tobool39 = icmp ne i32 %41, 0
  br i1 %tobool39, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @FindActions(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cfp = alloca %struct.config*, align 8
  %stp = alloca %struct.state*, align 8
  %sp = alloca %struct.symbol*, align 8
  %rp = alloca %struct.rule*, align 8
  %ap38 = alloca %struct.action*, align 8
  %nap = alloca %struct.action*, align 8
  %stp39 = alloca %struct.state*, align 8
  %ap82 = alloca %struct.action*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 2
  %2 = load i32, i32* %nstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 0
  %5 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %5, i64 %idxprom
  %6 = load %struct.state*, %struct.state** %arrayidx, align 8
  store %struct.state* %6, %struct.state** %stp, align 8
  %7 = load %struct.state*, %struct.state** %stp, align 8
  %cfp1 = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 1
  %8 = load %struct.config*, %struct.config** %cfp1, align 8
  store %struct.config* %8, %struct.config** %cfp, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.17, %for.body
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool = icmp ne %struct.config* %9, null
  br i1 %tobool, label %for.body.3, label %for.end.18

for.body.3:                                       ; preds = %for.cond.2
  %10 = load %struct.config*, %struct.config** %cfp, align 8
  %rp4 = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 0
  %11 = load %struct.rule*, %struct.rule** %rp4, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 4
  %12 = load i32, i32* %nrhs, align 4
  %13 = load %struct.config*, %struct.config** %cfp, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 1
  %14 = load i32, i32* %dot, align 4
  %cmp5 = icmp eq i32 %12, %14
  br i1 %cmp5, label %if.then, label %if.end.16

if.then:                                          ; preds = %for.body.3
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %15 = load i32, i32* %j, align 4
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 5
  %17 = load i32, i32* %nterminal, align 4
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %18 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %18 to i64
  %19 = load %struct.config*, %struct.config** %cfp, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %19, i32 0, i32 2
  %20 = load i8*, i8** %fws, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %20, i64 %idxprom9
  %21 = load i8, i8* %arrayidx10, align 1
  %tobool11 = icmp ne i8 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body.8
  %22 = load %struct.state*, %struct.state** %stp, align 8
  %ap = getelementptr inbounds %struct.state, %struct.state* %22, i32 0, i32 3
  %23 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %24, i32 0, i32 6
  %25 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx14 = getelementptr inbounds %struct.symbol*, %struct.symbol** %25, i64 %idxprom13
  %26 = load %struct.symbol*, %struct.symbol** %arrayidx14, align 8
  %27 = load %struct.config*, %struct.config** %cfp, align 8
  %rp15 = getelementptr inbounds %struct.config, %struct.config* %27, i32 0, i32 0
  %28 = load %struct.rule*, %struct.rule** %rp15, align 8
  %29 = bitcast %struct.rule* %28 to i8*
  call void @Action_add(%struct.action** %ap, i32 2, %struct.symbol* %26, i8* %29)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %j, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %for.body.3
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %31 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %31, i32 0, i32 7
  %32 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %32, %struct.config** %cfp, align 8
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %33 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %33, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  %34 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %start = getelementptr inbounds %struct.lemon, %struct.lemon* %34, i32 0, i32 14
  %35 = load i8*, i8** %start, align 8
  %tobool22 = icmp ne i8* %35, null
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %for.end.21
  %36 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %start24 = getelementptr inbounds %struct.lemon, %struct.lemon* %36, i32 0, i32 14
  %37 = load i8*, i8** %start24, align 8
  %call = call %struct.symbol* @Symbol_find(i8* %37)
  store %struct.symbol* %call, %struct.symbol** %sp, align 8
  %38 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %cmp25 = icmp eq %struct.symbol* %38, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  %39 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %39, i32 0, i32 1
  %40 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %40, i32 0, i32 0
  %41 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  store %struct.symbol* %41, %struct.symbol** %sp, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.30

if.else:                                          ; preds = %for.end.21
  %42 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule28 = getelementptr inbounds %struct.lemon, %struct.lemon* %42, i32 0, i32 1
  %43 = load %struct.rule*, %struct.rule** %rule28, align 8
  %lhs29 = getelementptr inbounds %struct.rule, %struct.rule* %43, i32 0, i32 0
  %44 = load %struct.symbol*, %struct.symbol** %lhs29, align 8
  store %struct.symbol* %44, %struct.symbol** %sp, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.27
  %45 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted31 = getelementptr inbounds %struct.lemon, %struct.lemon* %45, i32 0, i32 0
  %46 = load %struct.state**, %struct.state*** %sorted31, align 8
  %arrayidx32 = getelementptr inbounds %struct.state*, %struct.state** %46, i64 0
  %47 = load %struct.state*, %struct.state** %arrayidx32, align 8
  %ap33 = getelementptr inbounds %struct.state, %struct.state* %47, i32 0, i32 3
  %48 = load %struct.symbol*, %struct.symbol** %sp, align 8
  call void @Action_add(%struct.action** %ap33, i32 1, %struct.symbol* %48, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.68, %if.end.30
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate35 = getelementptr inbounds %struct.lemon, %struct.lemon* %50, i32 0, i32 2
  %51 = load i32, i32* %nstate35, align 4
  %cmp36 = icmp slt i32 %49, %51
  br i1 %cmp36, label %for.body.37, label %for.end.70

for.body.37:                                      ; preds = %for.cond.34
  %52 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %52 to i64
  %53 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted41 = getelementptr inbounds %struct.lemon, %struct.lemon* %53, i32 0, i32 0
  %54 = load %struct.state**, %struct.state*** %sorted41, align 8
  %arrayidx42 = getelementptr inbounds %struct.state*, %struct.state** %54, i64 %idxprom40
  %55 = load %struct.state*, %struct.state** %arrayidx42, align 8
  store %struct.state* %55, %struct.state** %stp39, align 8
  %56 = load %struct.state*, %struct.state** %stp39, align 8
  %ap43 = getelementptr inbounds %struct.state, %struct.state* %56, i32 0, i32 3
  %57 = load %struct.action*, %struct.action** %ap43, align 8
  %call44 = call %struct.action* @Action_sort(%struct.action* %57)
  %58 = load %struct.state*, %struct.state** %stp39, align 8
  %ap45 = getelementptr inbounds %struct.state, %struct.state* %58, i32 0, i32 3
  store %struct.action* %call44, %struct.action** %ap45, align 8
  %59 = load %struct.state*, %struct.state** %stp39, align 8
  %ap46 = getelementptr inbounds %struct.state, %struct.state* %59, i32 0, i32 3
  %60 = load %struct.action*, %struct.action** %ap46, align 8
  store %struct.action* %60, %struct.action** %ap38, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.65, %for.body.37
  %61 = load %struct.action*, %struct.action** %ap38, align 8
  %tobool48 = icmp ne %struct.action* %61, null
  br i1 %tobool48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.47
  %62 = load %struct.action*, %struct.action** %ap38, align 8
  %next49 = getelementptr inbounds %struct.action, %struct.action* %62, i32 0, i32 3
  %63 = load %struct.action*, %struct.action** %next49, align 8
  %tobool50 = icmp ne %struct.action* %63, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.47
  %64 = phi i1 [ false, %for.cond.47 ], [ %tobool50, %land.rhs ]
  br i1 %64, label %for.body.51, label %for.end.67

for.body.51:                                      ; preds = %land.end
  %65 = load %struct.action*, %struct.action** %ap38, align 8
  %next52 = getelementptr inbounds %struct.action, %struct.action* %65, i32 0, i32 3
  %66 = load %struct.action*, %struct.action** %next52, align 8
  store %struct.action* %66, %struct.action** %nap, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.62, %for.body.51
  %67 = load %struct.action*, %struct.action** %nap, align 8
  %tobool54 = icmp ne %struct.action* %67, null
  br i1 %tobool54, label %land.rhs.55, label %land.end.59

land.rhs.55:                                      ; preds = %for.cond.53
  %68 = load %struct.action*, %struct.action** %nap, align 8
  %sp56 = getelementptr inbounds %struct.action, %struct.action* %68, i32 0, i32 0
  %69 = load %struct.symbol*, %struct.symbol** %sp56, align 8
  %70 = load %struct.action*, %struct.action** %ap38, align 8
  %sp57 = getelementptr inbounds %struct.action, %struct.action* %70, i32 0, i32 0
  %71 = load %struct.symbol*, %struct.symbol** %sp57, align 8
  %cmp58 = icmp eq %struct.symbol* %69, %71
  br label %land.end.59

land.end.59:                                      ; preds = %land.rhs.55, %for.cond.53
  %72 = phi i1 [ false, %for.cond.53 ], [ %cmp58, %land.rhs.55 ]
  br i1 %72, label %for.body.60, label %for.end.64

for.body.60:                                      ; preds = %land.end.59
  %73 = load %struct.action*, %struct.action** %ap38, align 8
  %74 = load %struct.action*, %struct.action** %nap, align 8
  %75 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym = getelementptr inbounds %struct.lemon, %struct.lemon* %75, i32 0, i32 8
  %76 = load %struct.symbol*, %struct.symbol** %errsym, align 8
  %call61 = call i32 @resolve_conflict(%struct.action* %73, %struct.action* %74, %struct.symbol* %76)
  %77 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nconflict = getelementptr inbounds %struct.lemon, %struct.lemon* %77, i32 0, i32 35
  %78 = load i32, i32* %nconflict, align 4
  %add = add nsw i32 %78, %call61
  store i32 %add, i32* %nconflict, align 4
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.60
  %79 = load %struct.action*, %struct.action** %nap, align 8
  %next63 = getelementptr inbounds %struct.action, %struct.action* %79, i32 0, i32 3
  %80 = load %struct.action*, %struct.action** %next63, align 8
  store %struct.action* %80, %struct.action** %nap, align 8
  br label %for.cond.53

for.end.64:                                       ; preds = %land.end.59
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end.64
  %81 = load %struct.action*, %struct.action** %ap38, align 8
  %next66 = getelementptr inbounds %struct.action, %struct.action* %81, i32 0, i32 3
  %82 = load %struct.action*, %struct.action** %next66, align 8
  store %struct.action* %82, %struct.action** %ap38, align 8
  br label %for.cond.47

for.end.67:                                       ; preds = %land.end
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.end.67
  %83 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %83, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.34

for.end.70:                                       ; preds = %for.cond.34
  %84 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule71 = getelementptr inbounds %struct.lemon, %struct.lemon* %84, i32 0, i32 1
  %85 = load %struct.rule*, %struct.rule** %rule71, align 8
  store %struct.rule* %85, %struct.rule** %rp, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.75, %for.end.70
  %86 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool73 = icmp ne %struct.rule* %86, null
  br i1 %tobool73, label %for.body.74, label %for.end.77

for.body.74:                                      ; preds = %for.cond.72
  %87 = load %struct.rule*, %struct.rule** %rp, align 8
  %canReduce = getelementptr inbounds %struct.rule, %struct.rule* %87, i32 0, i32 11
  store i32 0, i32* %canReduce, align 4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.74
  %88 = load %struct.rule*, %struct.rule** %rp, align 8
  %next76 = getelementptr inbounds %struct.rule, %struct.rule* %88, i32 0, i32 13
  %89 = load %struct.rule*, %struct.rule** %next76, align 8
  store %struct.rule* %89, %struct.rule** %rp, align 8
  br label %for.cond.72

for.end.77:                                       ; preds = %for.cond.72
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.98, %for.end.77
  %90 = load i32, i32* %i, align 4
  %91 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate79 = getelementptr inbounds %struct.lemon, %struct.lemon* %91, i32 0, i32 2
  %92 = load i32, i32* %nstate79, align 4
  %cmp80 = icmp slt i32 %90, %92
  br i1 %cmp80, label %for.body.81, label %for.end.100

for.body.81:                                      ; preds = %for.cond.78
  %93 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %93 to i64
  %94 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted84 = getelementptr inbounds %struct.lemon, %struct.lemon* %94, i32 0, i32 0
  %95 = load %struct.state**, %struct.state*** %sorted84, align 8
  %arrayidx85 = getelementptr inbounds %struct.state*, %struct.state** %95, i64 %idxprom83
  %96 = load %struct.state*, %struct.state** %arrayidx85, align 8
  %ap86 = getelementptr inbounds %struct.state, %struct.state* %96, i32 0, i32 3
  %97 = load %struct.action*, %struct.action** %ap86, align 8
  store %struct.action* %97, %struct.action** %ap82, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.95, %for.body.81
  %98 = load %struct.action*, %struct.action** %ap82, align 8
  %tobool88 = icmp ne %struct.action* %98, null
  br i1 %tobool88, label %for.body.89, label %for.end.97

for.body.89:                                      ; preds = %for.cond.87
  %99 = load %struct.action*, %struct.action** %ap82, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %99, i32 0, i32 1
  %100 = load i32, i32* %type, align 4
  %cmp90 = icmp eq i32 %100, 2
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %for.body.89
  %101 = load %struct.action*, %struct.action** %ap82, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %101, i32 0, i32 2
  %rp92 = bitcast %union.anon* %x to %struct.rule**
  %102 = load %struct.rule*, %struct.rule** %rp92, align 8
  %canReduce93 = getelementptr inbounds %struct.rule, %struct.rule* %102, i32 0, i32 11
  store i32 1, i32* %canReduce93, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %for.body.89
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %103 = load %struct.action*, %struct.action** %ap82, align 8
  %next96 = getelementptr inbounds %struct.action, %struct.action* %103, i32 0, i32 3
  %104 = load %struct.action*, %struct.action** %next96, align 8
  store %struct.action* %104, %struct.action** %ap82, align 8
  br label %for.cond.87

for.end.97:                                       ; preds = %for.cond.87
  br label %for.inc.98

for.inc.98:                                       ; preds = %for.end.97
  %105 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %105, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.78

for.end.100:                                      ; preds = %for.cond.78
  %106 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule101 = getelementptr inbounds %struct.lemon, %struct.lemon* %106, i32 0, i32 1
  %107 = load %struct.rule*, %struct.rule** %rule101, align 8
  store %struct.rule* %107, %struct.rule** %rp, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.110, %for.end.100
  %108 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool103 = icmp ne %struct.rule* %108, null
  br i1 %tobool103, label %for.body.104, label %for.end.112

for.body.104:                                     ; preds = %for.cond.102
  %109 = load %struct.rule*, %struct.rule** %rp, align 8
  %canReduce105 = getelementptr inbounds %struct.rule, %struct.rule* %109, i32 0, i32 11
  %110 = load i32, i32* %canReduce105, align 4
  %tobool106 = icmp ne i32 %110, 0
  br i1 %tobool106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body.104
  br label %for.inc.110

if.end.108:                                       ; preds = %for.body.104
  %111 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %111, i32 0, i32 32
  %112 = load i8*, i8** %filename, align 8
  %113 = load %struct.rule*, %struct.rule** %rp, align 8
  %ruleline = getelementptr inbounds %struct.rule, %struct.rule* %113, i32 0, i32 3
  %114 = load i32, i32* %ruleline, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %112, i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i32 0, i32 0))
  %115 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %115, i32 0, i32 7
  %116 = load i32, i32* %errorcnt, align 4
  %inc109 = add nsw i32 %116, 1
  store i32 %inc109, i32* %errorcnt, align 4
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.108, %if.then.107
  %117 = load %struct.rule*, %struct.rule** %rp, align 8
  %next111 = getelementptr inbounds %struct.rule, %struct.rule* %117, i32 0, i32 13
  %118 = load %struct.rule*, %struct.rule** %next111, align 8
  store %struct.rule* %118, %struct.rule** %rp, align 8
  br label %for.cond.102

for.end.112:                                      ; preds = %for.cond.102
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.action* @Action_sort(%struct.action* %ap) #0 {
entry:
  %ap.addr = alloca %struct.action*, align 8
  store %struct.action* %ap, %struct.action** %ap.addr, align 8
  %0 = load %struct.action*, %struct.action** %ap.addr, align 8
  %1 = bitcast %struct.action* %0 to i8*
  %2 = load %struct.action*, %struct.action** %ap.addr, align 8
  %next = getelementptr inbounds %struct.action, %struct.action* %2, i32 0, i32 3
  %3 = bitcast %struct.action** %next to i8**
  %call = call i8* @msort(i8* %1, i8** %3, i32 (i8*, i8*)* bitcast (i32 (%struct.action*, %struct.action*)* @actioncmp to i32 (i8*, i8*)*))
  %4 = bitcast i8* %call to %struct.action*
  store %struct.action* %4, %struct.action** %ap.addr, align 8
  %5 = load %struct.action*, %struct.action** %ap.addr, align 8
  ret %struct.action* %5
}

; Function Attrs: nounwind uwtable
define %struct.config* @newconfig() #0 {
entry:
  %new = alloca %struct.config*, align 8
  %i = alloca i32, align 4
  %amt = alloca i32, align 4
  %0 = load %struct.config*, %struct.config** @freelist, align 8
  %cmp = icmp eq %struct.config* %0, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store i32 3, i32* %amt, align 4
  %1 = load i32, i32* %amt, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 72) #4
  %2 = bitcast i8* %call to %struct.config*
  store %struct.config* %2, %struct.config** @freelist, align 8
  %3 = load %struct.config*, %struct.config** @freelist, align 8
  %cmp1 = icmp eq %struct.config* %3, null
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %amt, align 4
  %sub = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %sub
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load %struct.config*, %struct.config** @freelist, align 8
  %arrayidx = getelementptr inbounds %struct.config, %struct.config* %8, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.config*, %struct.config** @freelist, align 8
  %arrayidx8 = getelementptr inbounds %struct.config, %struct.config* %10, i64 %idxprom7
  %next = getelementptr inbounds %struct.config, %struct.config* %arrayidx8, i32 0, i32 7
  store %struct.config* %arrayidx, %struct.config** %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %amt, align 4
  %sub9 = sub nsw i32 %12, 1
  %idxprom10 = sext i32 %sub9 to i64
  %13 = load %struct.config*, %struct.config** @freelist, align 8
  %arrayidx11 = getelementptr inbounds %struct.config, %struct.config* %13, i64 %idxprom10
  %next12 = getelementptr inbounds %struct.config, %struct.config* %arrayidx11, i32 0, i32 7
  store %struct.config* null, %struct.config** %next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %14 = load %struct.config*, %struct.config** @freelist, align 8
  store %struct.config* %14, %struct.config** %new, align 8
  %15 = load %struct.config*, %struct.config** @freelist, align 8
  %next14 = getelementptr inbounds %struct.config, %struct.config* %15, i32 0, i32 7
  %16 = load %struct.config*, %struct.config** %next14, align 8
  store %struct.config* %16, %struct.config** @freelist, align 8
  %17 = load %struct.config*, %struct.config** %new, align 8
  ret %struct.config* %17
}

; Function Attrs: nounwind uwtable
define void @deleteconfig(%struct.config* %old) #0 {
entry:
  %old.addr = alloca %struct.config*, align 8
  store %struct.config* %old, %struct.config** %old.addr, align 8
  %0 = load %struct.config*, %struct.config** @freelist, align 8
  %1 = load %struct.config*, %struct.config** %old.addr, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %1, i32 0, i32 7
  store %struct.config* %0, %struct.config** %next, align 8
  %2 = load %struct.config*, %struct.config** %old.addr, align 8
  store %struct.config* %2, %struct.config** @freelist, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Configlist_init() #0 {
entry:
  store %struct.config* null, %struct.config** @current, align 8
  store %struct.config** @current, %struct.config*** @currentend, align 8
  store %struct.config* null, %struct.config** @basis, align 8
  store %struct.config** @basis, %struct.config*** @basisend, align 8
  call void @Configtable_init()
  ret void
}

; Function Attrs: nounwind uwtable
define void @Configlist_reset() #0 {
entry:
  store %struct.config* null, %struct.config** @current, align 8
  store %struct.config** @current, %struct.config*** @currentend, align 8
  store %struct.config* null, %struct.config** @basis, align 8
  store %struct.config** @basis, %struct.config*** @basisend, align 8
  call void (i32, ...) bitcast (void (i32 (...)*)* @Configtable_clear to void (i32, ...)*)(i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.config* @Configlist_add(%struct.rule* %rp, i32 %dot) #0 {
entry:
  %rp.addr = alloca %struct.rule*, align 8
  %dot.addr = alloca i32, align 4
  %cfp = alloca %struct.config*, align 8
  %model = alloca %struct.config, align 8
  store %struct.rule* %rp, %struct.rule** %rp.addr, align 8
  store i32 %dot, i32* %dot.addr, align 4
  %0 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rp1 = getelementptr inbounds %struct.config, %struct.config* %model, i32 0, i32 0
  store %struct.rule* %0, %struct.rule** %rp1, align 8
  %1 = load i32, i32* %dot.addr, align 4
  %dot2 = getelementptr inbounds %struct.config, %struct.config* %model, i32 0, i32 1
  store i32 %1, i32* %dot2, align 4
  %call = call %struct.config* @Configtable_find(%struct.config* %model)
  store %struct.config* %call, %struct.config** %cfp, align 8
  %2 = load %struct.config*, %struct.config** %cfp, align 8
  %cmp = icmp eq %struct.config* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.config* @newconfig()
  store %struct.config* %call3, %struct.config** %cfp, align 8
  %3 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %4 = load %struct.config*, %struct.config** %cfp, align 8
  %rp4 = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 0
  store %struct.rule* %3, %struct.rule** %rp4, align 8
  %5 = load i32, i32* %dot.addr, align 4
  %6 = load %struct.config*, %struct.config** %cfp, align 8
  %dot5 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  store i32 %5, i32* %dot5, align 4
  %call6 = call i8* @SetNew()
  %7 = load %struct.config*, %struct.config** %cfp, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 2
  store i8* %call6, i8** %fws, align 8
  %8 = load %struct.config*, %struct.config** %cfp, align 8
  %stp = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 5
  store %struct.state* null, %struct.state** %stp, align 8
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %bplp = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 4
  store %struct.plink* null, %struct.plink** %bplp, align 8
  %10 = load %struct.config*, %struct.config** %cfp, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 3
  store %struct.plink* null, %struct.plink** %fplp, align 8
  %11 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 7
  store %struct.config* null, %struct.config** %next, align 8
  %12 = load %struct.config*, %struct.config** %cfp, align 8
  %bp = getelementptr inbounds %struct.config, %struct.config* %12, i32 0, i32 8
  store %struct.config* null, %struct.config** %bp, align 8
  %13 = load %struct.config*, %struct.config** %cfp, align 8
  %14 = load %struct.config**, %struct.config*** @currentend, align 8
  store %struct.config* %13, %struct.config** %14, align 8
  %15 = load %struct.config*, %struct.config** %cfp, align 8
  %next7 = getelementptr inbounds %struct.config, %struct.config* %15, i32 0, i32 7
  store %struct.config** %next7, %struct.config*** @currentend, align 8
  %16 = load %struct.config*, %struct.config** %cfp, align 8
  %call8 = call i32 @Configtable_insert(%struct.config* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load %struct.config*, %struct.config** %cfp, align 8
  ret %struct.config* %17
}

; Function Attrs: nounwind uwtable
define %struct.config* @Configlist_addbasis(%struct.rule* %rp, i32 %dot) #0 {
entry:
  %rp.addr = alloca %struct.rule*, align 8
  %dot.addr = alloca i32, align 4
  %cfp = alloca %struct.config*, align 8
  %model = alloca %struct.config, align 8
  store %struct.rule* %rp, %struct.rule** %rp.addr, align 8
  store i32 %dot, i32* %dot.addr, align 4
  %0 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rp1 = getelementptr inbounds %struct.config, %struct.config* %model, i32 0, i32 0
  store %struct.rule* %0, %struct.rule** %rp1, align 8
  %1 = load i32, i32* %dot.addr, align 4
  %dot2 = getelementptr inbounds %struct.config, %struct.config* %model, i32 0, i32 1
  store i32 %1, i32* %dot2, align 4
  %call = call %struct.config* @Configtable_find(%struct.config* %model)
  store %struct.config* %call, %struct.config** %cfp, align 8
  %2 = load %struct.config*, %struct.config** %cfp, align 8
  %cmp = icmp eq %struct.config* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct.config* @newconfig()
  store %struct.config* %call3, %struct.config** %cfp, align 8
  %3 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %4 = load %struct.config*, %struct.config** %cfp, align 8
  %rp4 = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 0
  store %struct.rule* %3, %struct.rule** %rp4, align 8
  %5 = load i32, i32* %dot.addr, align 4
  %6 = load %struct.config*, %struct.config** %cfp, align 8
  %dot5 = getelementptr inbounds %struct.config, %struct.config* %6, i32 0, i32 1
  store i32 %5, i32* %dot5, align 4
  %call6 = call i8* @SetNew()
  %7 = load %struct.config*, %struct.config** %cfp, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 2
  store i8* %call6, i8** %fws, align 8
  %8 = load %struct.config*, %struct.config** %cfp, align 8
  %stp = getelementptr inbounds %struct.config, %struct.config* %8, i32 0, i32 5
  store %struct.state* null, %struct.state** %stp, align 8
  %9 = load %struct.config*, %struct.config** %cfp, align 8
  %bplp = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 4
  store %struct.plink* null, %struct.plink** %bplp, align 8
  %10 = load %struct.config*, %struct.config** %cfp, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 3
  store %struct.plink* null, %struct.plink** %fplp, align 8
  %11 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 7
  store %struct.config* null, %struct.config** %next, align 8
  %12 = load %struct.config*, %struct.config** %cfp, align 8
  %bp = getelementptr inbounds %struct.config, %struct.config* %12, i32 0, i32 8
  store %struct.config* null, %struct.config** %bp, align 8
  %13 = load %struct.config*, %struct.config** %cfp, align 8
  %14 = load %struct.config**, %struct.config*** @currentend, align 8
  store %struct.config* %13, %struct.config** %14, align 8
  %15 = load %struct.config*, %struct.config** %cfp, align 8
  %next7 = getelementptr inbounds %struct.config, %struct.config* %15, i32 0, i32 7
  store %struct.config** %next7, %struct.config*** @currentend, align 8
  %16 = load %struct.config*, %struct.config** %cfp, align 8
  %17 = load %struct.config**, %struct.config*** @basisend, align 8
  store %struct.config* %16, %struct.config** %17, align 8
  %18 = load %struct.config*, %struct.config** %cfp, align 8
  %bp8 = getelementptr inbounds %struct.config, %struct.config* %18, i32 0, i32 8
  store %struct.config** %bp8, %struct.config*** @basisend, align 8
  %19 = load %struct.config*, %struct.config** %cfp, align 8
  %call9 = call i32 @Configtable_insert(%struct.config* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.config*, %struct.config** %cfp, align 8
  ret %struct.config* %20
}

; Function Attrs: nounwind uwtable
define void @Configlist_closure(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %cfp = alloca %struct.config*, align 8
  %newcfp = alloca %struct.config*, align 8
  %rp = alloca %struct.rule*, align 8
  %newrp = alloca %struct.rule*, align 8
  %sp = alloca %struct.symbol*, align 8
  %xsp = alloca %struct.symbol*, align 8
  %i = alloca i32, align 4
  %dot = alloca i32, align 4
  %k = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.config*, %struct.config** @current, align 8
  store %struct.config* %0, %struct.config** %cfp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %1 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool = icmp ne %struct.config* %1, null
  br i1 %tobool, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %2 = load %struct.config*, %struct.config** %cfp, align 8
  %rp1 = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %3 = load %struct.rule*, %struct.rule** %rp1, align 8
  store %struct.rule* %3, %struct.rule** %rp, align 8
  %4 = load %struct.config*, %struct.config** %cfp, align 8
  %dot2 = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 1
  %5 = load i32, i32* %dot2, align 4
  store i32 %5, i32* %dot, align 4
  %6 = load i32, i32* %dot, align 4
  %7 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 4
  %8 = load i32, i32* %nrhs, align 4
  %cmp = icmp sge i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.54

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %dot, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 5
  %11 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %11, i64 %idxprom
  %12 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %12, %struct.symbol** %sp, align 8
  %13 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 2
  %14 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %14, 1
  br i1 %cmp3, label %if.then.4, label %if.end.53

if.then.4:                                        ; preds = %if.end
  %15 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %rule = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 3
  %16 = load %struct.rule*, %struct.rule** %rule, align 8
  %cmp5 = icmp eq %struct.rule* %16, null
  br i1 %cmp5, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.then.4
  %17 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %18 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym = getelementptr inbounds %struct.lemon, %struct.lemon* %18, i32 0, i32 8
  %19 = load %struct.symbol*, %struct.symbol** %errsym, align 8
  %cmp6 = icmp ne %struct.symbol* %17, %19
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  %20 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %20, i32 0, i32 32
  %21 = load i8*, i8** %filename, align 8
  %22 = load %struct.rule*, %struct.rule** %rp, align 8
  %line = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 7
  %23 = load i32, i32* %line, align 4
  %24 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 0
  %25 = load i8*, i8** %name, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %21, i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0), i8* %25)
  %26 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %26, i32 0, i32 7
  %27 = load i32, i32* %errorcnt, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %errorcnt, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true, %if.then.4
  %28 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %rule9 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 3
  %29 = load %struct.rule*, %struct.rule** %rule9, align 8
  store %struct.rule* %29, %struct.rule** %newrp, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.51, %if.end.8
  %30 = load %struct.rule*, %struct.rule** %newrp, align 8
  %tobool11 = icmp ne %struct.rule* %30, null
  br i1 %tobool11, label %for.body.12, label %for.end.52

for.body.12:                                      ; preds = %for.cond.10
  %31 = load %struct.rule*, %struct.rule** %newrp, align 8
  %call = call %struct.config* @Configlist_add(%struct.rule* %31, i32 0)
  store %struct.config* %call, %struct.config** %newcfp, align 8
  %32 = load i32, i32* %dot, align 4
  %add = add nsw i32 %32, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.44, %for.body.12
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs14 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 4
  %35 = load i32, i32* %nrhs14, align 4
  %cmp15 = icmp slt i32 %33, %35
  br i1 %cmp15, label %for.body.16, label %for.end.46

for.body.16:                                      ; preds = %for.cond.13
  %36 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %36 to i64
  %37 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs18 = getelementptr inbounds %struct.rule, %struct.rule* %37, i32 0, i32 5
  %38 = load %struct.symbol**, %struct.symbol*** %rhs18, align 8
  %arrayidx19 = getelementptr inbounds %struct.symbol*, %struct.symbol** %38, i64 %idxprom17
  %39 = load %struct.symbol*, %struct.symbol** %arrayidx19, align 8
  store %struct.symbol* %39, %struct.symbol** %xsp, align 8
  %40 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %type20 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 2
  %41 = load i32, i32* %type20, align 4
  %cmp21 = icmp eq i32 %41, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.body.16
  %42 = load %struct.config*, %struct.config** %newcfp, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %42, i32 0, i32 2
  %43 = load i8*, i8** %fws, align 8
  %44 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %44, i32 0, i32 1
  %45 = load i32, i32* %index, align 4
  %call23 = call i32 @SetAdd(i8* %43, i32 %45)
  br label %for.end.46

if.else:                                          ; preds = %for.body.16
  %46 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %type24 = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 2
  %47 = load i32, i32* %type24, align 4
  %cmp25 = icmp eq i32 %47, 2
  br i1 %cmp25, label %if.then.26, label %if.else.36

if.then.26:                                       ; preds = %if.else
  store i32 0, i32* %k, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.26
  %48 = load i32, i32* %k, align 4
  %49 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %49, i32 0, i32 14
  %50 = load i32, i32* %nsubsym, align 4
  %cmp28 = icmp slt i32 %48, %50
  br i1 %cmp28, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.27
  %51 = load %struct.config*, %struct.config** %newcfp, align 8
  %fws30 = getelementptr inbounds %struct.config, %struct.config* %51, i32 0, i32 2
  %52 = load i8*, i8** %fws30, align 8
  %53 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %53 to i64
  %54 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 15
  %55 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx32 = getelementptr inbounds %struct.symbol*, %struct.symbol** %55, i64 %idxprom31
  %56 = load %struct.symbol*, %struct.symbol** %arrayidx32, align 8
  %index33 = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 1
  %57 = load i32, i32* %index33, align 4
  %call34 = call i32 @SetAdd(i8* %52, i32 %57)
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %58 = load i32, i32* %k, align 4
  %inc35 = add nsw i32 %58, 1
  store i32 %inc35, i32* %k, align 4
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %for.end.46

if.else.36:                                       ; preds = %if.else
  %59 = load %struct.config*, %struct.config** %newcfp, align 8
  %fws37 = getelementptr inbounds %struct.config, %struct.config* %59, i32 0, i32 2
  %60 = load i8*, i8** %fws37, align 8
  %61 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %firstset = getelementptr inbounds %struct.symbol, %struct.symbol* %61, i32 0, i32 7
  %62 = load i8*, i8** %firstset, align 8
  %call38 = call i32 @SetUnion(i8* %60, i8* %62)
  %63 = load %struct.symbol*, %struct.symbol** %xsp, align 8
  %lambda = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 8
  %64 = load i32, i32* %lambda, align 4
  %cmp39 = icmp eq i32 %64, 0
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.else.36
  br label %for.end.46

if.end.41:                                        ; preds = %if.else.36
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %65 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %65, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.13

for.end.46:                                       ; preds = %if.then.40, %for.end, %if.then.22, %for.cond.13
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs47 = getelementptr inbounds %struct.rule, %struct.rule* %67, i32 0, i32 4
  %68 = load i32, i32* %nrhs47, align 4
  %cmp48 = icmp eq i32 %66, %68
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %for.end.46
  %69 = load %struct.config*, %struct.config** %cfp, align 8
  %fplp = getelementptr inbounds %struct.config, %struct.config* %69, i32 0, i32 3
  %70 = load %struct.config*, %struct.config** %newcfp, align 8
  call void @Plink_add(%struct.plink** %fplp, %struct.config* %70)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %for.end.46
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %71 = load %struct.rule*, %struct.rule** %newrp, align 8
  %nextlhs = getelementptr inbounds %struct.rule, %struct.rule* %71, i32 0, i32 12
  %72 = load %struct.rule*, %struct.rule** %nextlhs, align 8
  store %struct.rule* %72, %struct.rule** %newrp, align 8
  br label %for.cond.10

for.end.52:                                       ; preds = %for.cond.10
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %if.end
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53, %if.then
  %73 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %73, i32 0, i32 7
  %74 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %74, %struct.config** %cfp, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Configlist_sort() #0 {
entry:
  %0 = load %struct.config*, %struct.config** @current, align 8
  %1 = bitcast %struct.config* %0 to i8*
  %2 = load %struct.config*, %struct.config** @current, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 7
  %3 = bitcast %struct.config** %next to i8**
  %call = call i8* @msort(i8* %1, i8** %3, i32 (i8*, i8*)* bitcast (i32 (%struct.config*, %struct.config*)* @Configcmp to i32 (i8*, i8*)*))
  %4 = bitcast i8* %call to %struct.config*
  store %struct.config* %4, %struct.config** @current, align 8
  store %struct.config** null, %struct.config*** @currentend, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @msort(i8* %list, i8** %next, i32 (i8*, i8*)* %cmp) #0 {
entry:
  %list.addr = alloca i8*, align 8
  %next.addr = alloca i8**, align 8
  %cmp.addr = alloca i32 (i8*, i8*)*, align 8
  %offset = alloca i64, align 8
  %ep = alloca i8*, align 8
  %set = alloca [30 x i8*], align 16
  %i = alloca i32, align 4
  store i8* %list, i8** %list.addr, align 8
  store i8** %next, i8*** %next.addr, align 8
  store i32 (i8*, i8*)* %cmp, i32 (i8*, i8*)** %cmp.addr, align 8
  %0 = load i8**, i8*** %next.addr, align 8
  %1 = ptrtoint i8** %0 to i64
  %2 = load i8*, i8** %list.addr, align 8
  %3 = ptrtoint i8* %2 to i64
  %sub = sub i64 %1, %3
  store i64 %sub, i64* %offset, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %cmp1 = icmp slt i32 %4, 30
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.15, %for.end
  %7 = load i8*, i8** %list.addr, align 8
  %tobool = icmp ne i8* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %list.addr, align 8
  store i8* %8, i8** %ep, align 8
  %9 = load i8*, i8** %list.addr, align 8
  %10 = ptrtoint i8* %9 to i64
  %11 = load i64, i64* %offset, align 8
  %add = add i64 %10, %11
  %12 = inttoptr i64 %add to i8**
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %list.addr, align 8
  %14 = load i8*, i8** %ep, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i64, i64* %offset, align 8
  %add2 = add i64 %15, %16
  %17 = inttoptr i64 %add2 to i8**
  store i8* null, i8** %17, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.13, %while.body
  %18 = load i32, i32* %i, align 4
  %cmp4 = icmp slt i32 %18, 29
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.3
  %19 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %19 to i64
  %arrayidx6 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom5
  %20 = load i8*, i8** %arrayidx6, align 8
  %cmp7 = icmp ne i8* %20, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.3
  %21 = phi i1 [ false, %for.cond.3 ], [ %cmp7, %land.rhs ]
  br i1 %21, label %for.body.8, label %for.end.15

for.body.8:                                       ; preds = %land.end
  %22 = load i8*, i8** %ep, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %23 to i64
  %arrayidx10 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom9
  %24 = load i8*, i8** %arrayidx10, align 8
  %25 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %26 = load i64, i64* %offset, align 8
  %conv = trunc i64 %26 to i32
  %call = call i8* @merge(i8* %22, i8* %24, i32 (i8*, i8*)* %25, i32 %conv)
  store i8* %call, i8** %ep, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %27 to i64
  %arrayidx12 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom11
  store i8* null, i8** %arrayidx12, align 8
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.8
  %28 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %28, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond.3

for.end.15:                                       ; preds = %land.end
  %29 = load i8*, i8** %ep, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %30 to i64
  %arrayidx17 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom16
  store i8* %29, i8** %arrayidx17, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8* null, i8** %ep, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %while.end
  %31 = load i32, i32* %i, align 4
  %cmp19 = icmp slt i32 %31, 30
  br i1 %cmp19, label %for.body.21, label %for.end.31

for.body.21:                                      ; preds = %for.cond.18
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %arrayidx23 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom22
  %33 = load i8*, i8** %arrayidx23, align 8
  %tobool24 = icmp ne i8* %33, null
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.21
  %34 = load i8*, i8** %ep, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %arrayidx26 = getelementptr inbounds [30 x i8*], [30 x i8*]* %set, i32 0, i64 %idxprom25
  %36 = load i8*, i8** %arrayidx26, align 8
  %37 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %38 = load i64, i64* %offset, align 8
  %conv27 = trunc i64 %38 to i32
  %call28 = call i8* @merge(i8* %34, i8* %36, i32 (i8*, i8*)* %37, i32 %conv27)
  store i8* %call28, i8** %ep, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.21
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end
  %39 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  %40 = load i8*, i8** %ep, align 8
  ret i8* %40
}

; Function Attrs: nounwind uwtable
define void @Configlist_sortbasis() #0 {
entry:
  %0 = load %struct.config*, %struct.config** @current, align 8
  %1 = bitcast %struct.config* %0 to i8*
  %2 = load %struct.config*, %struct.config** @current, align 8
  %bp = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 8
  %3 = bitcast %struct.config** %bp to i8**
  %call = call i8* @msort(i8* %1, i8** %3, i32 (i8*, i8*)* bitcast (i32 (%struct.config*, %struct.config*)* @Configcmp to i32 (i8*, i8*)*))
  %4 = bitcast i8* %call to %struct.config*
  store %struct.config* %4, %struct.config** @basis, align 8
  store %struct.config** null, %struct.config*** @basisend, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.config* @Configlist_return() #0 {
entry:
  %old = alloca %struct.config*, align 8
  %0 = load %struct.config*, %struct.config** @current, align 8
  store %struct.config* %0, %struct.config** %old, align 8
  store %struct.config* null, %struct.config** @current, align 8
  store %struct.config** null, %struct.config*** @currentend, align 8
  %1 = load %struct.config*, %struct.config** %old, align 8
  ret %struct.config* %1
}

; Function Attrs: nounwind uwtable
define %struct.config* @Configlist_basis() #0 {
entry:
  %old = alloca %struct.config*, align 8
  %0 = load %struct.config*, %struct.config** @basis, align 8
  store %struct.config* %0, %struct.config** %old, align 8
  store %struct.config* null, %struct.config** @basis, align 8
  store %struct.config** null, %struct.config*** @basisend, align 8
  %1 = load %struct.config*, %struct.config** %old, align 8
  ret %struct.config* %1
}

; Function Attrs: nounwind uwtable
define void @Configlist_eat(%struct.config* %cfp) #0 {
entry:
  %cfp.addr = alloca %struct.config*, align 8
  %nextcfp = alloca %struct.config*, align 8
  store %struct.config* %cfp, %struct.config** %cfp.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %tobool = icmp ne %struct.config* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %1, i32 0, i32 7
  %2 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %2, %struct.config** %nextcfp, align 8
  %3 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %fws = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 2
  %4 = load i8*, i8** %fws, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %fws2 = getelementptr inbounds %struct.config, %struct.config* %5, i32 0, i32 2
  %6 = load i8*, i8** %fws2, align 8
  call void @SetFree(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.config*, %struct.config** %cfp.addr, align 8
  call void @deleteconfig(%struct.config* %7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.config*, %struct.config** %nextcfp, align 8
  store %struct.config* %8, %struct.config** %cfp.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @findbreak(i8* %msg, i32 %min, i32 %max) #0 {
entry:
  %msg.addr = alloca i8*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %spot = alloca i32, align 4
  %c = alloca i8, align 1
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  %0 = load i32, i32* %min.addr, align 4
  store i32 %0, i32* %spot, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %max.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8*, i8** %msg.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  store i8 %5, i8* %c, align 1
  %6 = load i8, i8* %c, align 1
  %conv = sext i8 %6 to i32
  %cmp1 = icmp eq i32 %conv, 9
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8*, i8** %msg.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %8, i64 %idxprom3
  store i8 32, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load i8, i8* %c, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp eq i32 %conv5, 10
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i8*, i8** %msg.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %11, i64 %idxprom9
  store i8 32, i8* %arrayidx10, align 1
  %12 = load i32, i32* %i, align 4
  store i32 %12, i32* %spot, align 4
  br label %for.end

if.end.11:                                        ; preds = %if.end
  %13 = load i8, i8* %c, align 1
  %conv12 = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.11
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %spot, align 4
  br label %for.end

if.end.16:                                        ; preds = %if.end.11
  %15 = load i8, i8* %c, align 1
  %conv17 = sext i8 %15 to i32
  %cmp18 = icmp eq i32 %conv17, 45
  br i1 %cmp18, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.16
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %max.addr, align 4
  %sub = sub nsw i32 %17, 1
  %cmp20 = icmp slt i32 %16, %sub
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %spot, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %land.lhs.true, %if.end.16
  %19 = load i8, i8* %c, align 1
  %conv24 = sext i8 %19 to i32
  %cmp25 = icmp eq i32 %conv24, 32
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  %20 = load i32, i32* %i, align 4
  store i32 %20, i32* %spot, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %if.then.8, %for.cond
  %22 = load i32, i32* %spot, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define void @memory_error() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lemon_main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %lem = alloca %struct.lemon, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @OptInit(i8** %0, %struct.s_options* getelementptr inbounds ([9 x %struct.s_options], [9 x %struct.s_options]* @lemon_main.options, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load i32, i32* @lemon_main.version, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0))
  call void @exit(i32 0) #7
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @OptNArgs()
  %cmp = icmp ne i32 %call2, 1
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.28, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.5:                                         ; preds = %if.end
  %4 = bitcast %struct.lemon* %lem to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 288, i32 8, i1 false)
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 7
  store i32 0, i32* %errorcnt, align 4
  call void @Strsafe_init()
  call void @Symbol_init()
  call void @State_init()
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx, align 8
  %argv0 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 39
  store i8* %6, i8** %argv0, align 8
  %call6 = call i8* @OptArg(i32 0)
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 32
  store i8* %call6, i8** %filename, align 8
  %7 = load i32, i32* @lemon_main.basisflag, align 4
  %basisflag = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 37
  store i32 %7, i32* %basisflag, align 4
  %call7 = call %struct.symbol* @Symbol_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %call8 = call %struct.symbol* @Symbol_new(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0))
  %errsym = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 8
  store %struct.symbol* %call8, %struct.symbol** %errsym, align 8
  %errsym9 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 8
  %8 = load %struct.symbol*, %struct.symbol** %errsym9, align 8
  %useCnt = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 9
  store i32 0, i32* %useCnt, align 4
  call void @Parse(%struct.lemon* %lem)
  %errorcnt10 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 7
  %9 = load i32, i32* %errorcnt10, align 4
  %tobool11 = icmp ne i32 %9, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.5
  %errorcnt13 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 7
  %10 = load i32, i32* %errorcnt13, align 4
  call void @exit(i32 %10) #7
  unreachable

if.end.14:                                        ; preds = %if.end.5
  %nrule = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 3
  %11 = load i32, i32* %nrule, align 4
  %cmp15 = icmp eq i32 %11, 0
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.18:                                        ; preds = %if.end.14
  %call19 = call i32 @Symbol_count()
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 4
  store i32 %call19, i32* %nsymbol, align 4
  %call20 = call %struct.symbol* @Symbol_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  %call21 = call %struct.symbol** @Symbol_arrayof()
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 6
  store %struct.symbol** %call21, %struct.symbol*** %symbols, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %13 = load i32, i32* %i, align 4
  %nsymbol22 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 4
  %14 = load i32, i32* %nsymbol22, align 4
  %cmp23 = icmp sle i32 %13, %14
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %symbols24 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 6
  %17 = load %struct.symbol**, %struct.symbol*** %symbols24, align 8
  %arrayidx25 = getelementptr inbounds %struct.symbol*, %struct.symbol** %17, i64 %idxprom
  %18 = load %struct.symbol*, %struct.symbol** %arrayidx25, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 1
  store i32 %15, i32* %index, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %symbols26 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 6
  %20 = load %struct.symbol**, %struct.symbol*** %symbols26, align 8
  %21 = bitcast %struct.symbol** %20 to i8*
  %nsymbol27 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 4
  %22 = load i32, i32* %nsymbol27, align 4
  %add = add nsw i32 %22, 1
  %conv = sext i32 %add to i64
  call void @qsort(i8* %21, i64 %conv, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.symbol**, %struct.symbol**)* @Symbolcmpp to i32 (i8*, i8*)*))
  store i32 0, i32* %i, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %for.end
  %23 = load i32, i32* %i, align 4
  %nsymbol29 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 4
  %24 = load i32, i32* %nsymbol29, align 4
  %cmp30 = icmp sle i32 %23, %24
  br i1 %cmp30, label %for.body.32, label %for.end.39

for.body.32:                                      ; preds = %for.cond.28
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %symbols34 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 6
  %27 = load %struct.symbol**, %struct.symbol*** %symbols34, align 8
  %arrayidx35 = getelementptr inbounds %struct.symbol*, %struct.symbol** %27, i64 %idxprom33
  %28 = load %struct.symbol*, %struct.symbol** %arrayidx35, align 8
  %index36 = getelementptr inbounds %struct.symbol, %struct.symbol* %28, i32 0, i32 1
  store i32 %25, i32* %index36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.32
  %29 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %29, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  store i32 1, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.52, %for.end.39
  %30 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %30 to i64
  %symbols42 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 6
  %31 = load %struct.symbol**, %struct.symbol*** %symbols42, align 8
  %arrayidx43 = getelementptr inbounds %struct.symbol*, %struct.symbol** %31, i64 %idxprom41
  %32 = load %struct.symbol*, %struct.symbol** %arrayidx43, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 0
  %33 = load i8*, i8** %name, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %34 to i32
  %idxprom46 = sext i32 %conv45 to i64
  %call47 = call i16** @__ctype_b_loc() #9
  %35 = load i16*, i16** %call47, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %35, i64 %idxprom46
  %36 = load i16, i16* %arrayidx48, align 2
  %conv49 = zext i16 %36 to i32
  %and = and i32 %conv49, 256
  %tobool50 = icmp ne i32 %and, 0
  br i1 %tobool50, label %for.body.51, label %for.end.54

for.body.51:                                      ; preds = %for.cond.40
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.51
  %37 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %37, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.40

for.end.54:                                       ; preds = %for.cond.40
  %38 = load i32, i32* %i, align 4
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 5
  store i32 %38, i32* %nterminal, align 4
  %39 = load i32, i32* @lemon_main.rpflag, align 4
  %tobool55 = icmp ne i32 %39, 0
  br i1 %tobool55, label %if.then.56, label %if.else

if.then.56:                                       ; preds = %for.end.54
  call void @Reprint(%struct.lemon* %lem)
  br label %if.end.70

if.else:                                          ; preds = %for.end.54
  %nterminal57 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 5
  %40 = load i32, i32* %nterminal57, align 4
  %add58 = add nsw i32 %40, 1
  call void @SetSize(i32 %add58)
  call void @FindRulePrecedences(%struct.lemon* %lem)
  call void @FindFirstSets(%struct.lemon* %lem)
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 2
  store i32 0, i32* %nstate, align 4
  call void @FindStates(%struct.lemon* %lem)
  %call59 = call %struct.state** @State_arrayof()
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 0
  store %struct.state** %call59, %struct.state*** %sorted, align 8
  call void @FindLinks(%struct.lemon* %lem)
  call void @FindFollowSets(%struct.lemon* %lem)
  call void @FindActions(%struct.lemon* %lem)
  %41 = load i32, i32* @lemon_main.compress, align 4
  %cmp60 = icmp eq i32 %41, 0
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %if.else
  call void @CompressTables(%struct.lemon* %lem)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %if.else
  call void @ResortStates(%struct.lemon* %lem)
  %42 = load i32, i32* @lemon_main.quiet, align 4
  %tobool64 = icmp ne i32 %42, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.end.63
  call void @ReportOutput(%struct.lemon* %lem)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %if.end.63
  %43 = load i32, i32* @lemon_main.mhflag, align 4
  call void @ReportTable(%struct.lemon* %lem, i32 %43)
  %44 = load i32, i32* @lemon_main.mhflag, align 4
  %tobool67 = icmp ne i32 %44, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.66
  call void @ReportHeader(%struct.lemon* %lem)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.66
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.56
  %45 = load i32, i32* @lemon_main.statistics, align 4
  %tobool71 = icmp ne i32 %45, 0
  br i1 %tobool71, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.end.70
  %nterminal73 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 5
  %46 = load i32, i32* %nterminal73, align 4
  %nsymbol74 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 4
  %47 = load i32, i32* %nsymbol74, align 4
  %nterminal75 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 5
  %48 = load i32, i32* %nterminal75, align 4
  %sub = sub nsw i32 %47, %48
  %nrule76 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 3
  %49 = load i32, i32* %nrule76, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i32 0, i32 0), i32 %46, i32 %sub, i32 %49)
  %nstate78 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 2
  %50 = load i32, i32* %nstate78, align 4
  %tablesize = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 36
  %51 = load i32, i32* %tablesize, align 4
  %nconflict = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 35
  %52 = load i32, i32* %nconflict, align 4
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.34, i32 0, i32 0), i32 %50, i32 %51, i32 %52)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.72, %if.end.70
  %errorcnt81 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 7
  %53 = load i32, i32* %errorcnt81, align 4
  %nconflict82 = getelementptr inbounds %struct.lemon, %struct.lemon* %lem, i32 0, i32 35
  %54 = load i32, i32* %nconflict82, align 4
  %add83 = add nsw i32 %53, %54
  call void @exit(i32 %add83) #7
  unreachable

return:                                           ; No predecessors!
  %55 = load i32, i32* %retval
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @handle_D_option(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  %paz = alloca i8**, align 8
  store i8* %z, i8** %z.addr, align 8
  %0 = load i32, i32* @nDefine, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @nDefine, align 4
  %1 = load i8**, i8*** @azDefine, align 8
  %2 = bitcast i8** %1 to i8*
  %3 = load i32, i32* @nDefine, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call = call i8* @realloc(i8* %2, i64 %mul) #4
  %4 = bitcast i8* %call to i8**
  store i8** %4, i8*** @azDefine, align 8
  %5 = load i8**, i8*** @azDefine, align 8
  %cmp = icmp eq i8** %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @nDefine, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom = sext i32 %sub to i64
  %8 = load i8**, i8*** @azDefine, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  store i8** %arrayidx, i8*** %paz, align 8
  %9 = load i8*, i8** %z.addr, align 8
  %call3 = call i64 @strlen(i8* %9) #8
  %add = add i64 %call3, 1
  %call4 = call noalias i8* @malloc(i64 %add) #4
  %10 = load i8**, i8*** %paz, align 8
  store i8* %call4, i8** %10, align 8
  %11 = load i8**, i8*** %paz, align 8
  %12 = load i8*, i8** %11, align 8
  %cmp5 = icmp eq i8* %12, null
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.9:                                         ; preds = %if.end
  %14 = load i8**, i8*** %paz, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8*, i8** %z.addr, align 8
  %call10 = call i8* @strcpy(i8* %15, i8* %16) #4
  %17 = load i8**, i8*** %paz, align 8
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %z.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %19 = load i8*, i8** %z.addr, align 8
  %20 = load i8, i8* %19, align 1
  %conv11 = sext i8 %20 to i32
  %tobool = icmp ne i32 %conv11, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %21 = load i8*, i8** %z.addr, align 8
  %22 = load i8, i8* %21, align 1
  %conv12 = sext i8 %22 to i32
  %cmp13 = icmp ne i32 %conv12, 61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %23 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %23, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i8*, i8** %z.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %z.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %25 = load i8*, i8** %z.addr, align 8
  store i8 0, i8* %25, align 1
  ret void
}

declare i32 @printf(i8*, ...) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define i32 @OptInit(i8** %a, %struct.s_options* %o, %struct._IO_FILE* %err) #0 {
entry:
  %a.addr = alloca i8**, align 8
  %o.addr = alloca %struct.s_options*, align 8
  %err.addr = alloca %struct._IO_FILE*, align 8
  %errcnt = alloca i32, align 4
  %i = alloca i32, align 4
  store i8** %a, i8*** %a.addr, align 8
  store %struct.s_options* %o, %struct.s_options** %o.addr, align 8
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8
  store i32 0, i32* %errcnt, align 4
  %0 = load i8**, i8*** %a.addr, align 8
  store i8** %0, i8*** @argv, align 8
  %1 = load %struct.s_options*, %struct.s_options** %o.addr, align 8
  store %struct.s_options* %1, %struct.s_options** @op, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @errstream, align 8
  %3 = load i8**, i8*** @argv, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %4 = load i8**, i8*** @argv, align 8
  %5 = load i8*, i8** %4, align 8
  %tobool1 = icmp ne i8* %5, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.24

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.s_options*, %struct.s_options** @op, align 8
  %tobool3 = icmp ne %struct.s_options* %6, null
  br i1 %tobool3, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load i8**, i8*** @argv, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 %idxprom5
  %12 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %13 to i32
  %cmp = icmp eq i32 %conv, 43
  br i1 %cmp, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %15 = load i8**, i8*** @argv, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %15, i64 %idxprom9
  %16 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 45
  br i1 %cmp13, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false, %for.body
  %18 = load i32, i32* %i, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call = call i32 @handleflags(i32 %18, %struct._IO_FILE* %19)
  %20 = load i32, i32* %errcnt, align 4
  %add = add nsw i32 %20, %call
  store i32 %add, i32* %errcnt, align 4
  br label %if.end.23

if.else:                                          ; preds = %lor.lhs.false
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load i8**, i8*** @argv, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %22, i64 %idxprom16
  %23 = load i8*, i8** %arrayidx17, align 8
  %call18 = call i8* @strchr(i8* %23, i32 61) #8
  %tobool19 = icmp ne i8* %call18, null
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.else
  %24 = load i32, i32* %i, align 4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call21 = call i32 @handleswitch(i32 %24, %struct._IO_FILE* %25)
  %26 = load i32, i32* %errcnt, align 4
  %add22 = add nsw i32 %26, %call21
  store i32 %add22, i32* %errcnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %land.lhs.true.2, %land.lhs.true, %entry
  %28 = load i32, i32* %errcnt, align 4
  %cmp25 = icmp sgt i32 %28, 0
  br i1 %cmp25, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %30 = load i8**, i8*** %a.addr, align 8
  %31 = load i8*, i8** %30, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0), i8* %31)
  call void @OptPrint()
  call void @exit(i32 1) #7
  unreachable

if.end.29:                                        ; preds = %if.end.24
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @handleflags(i32 %i, %struct._IO_FILE* %err) #0 {
entry:
  %i.addr = alloca i32, align 4
  %err.addr = alloca %struct._IO_FILE*, align 8
  %v = alloca i32, align 4
  %errcnt = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8
  store i32 0, i32* %errcnt, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx = getelementptr inbounds %struct.s_options, %struct.s_options* %1, i64 %idxprom
  %label = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** @argv, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 1
  %6 = load i32, i32* %j, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx5 = getelementptr inbounds %struct.s_options, %struct.s_options* %7, i64 %idxprom4
  %label6 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx5, i32 0, i32 1
  %8 = load i8*, i8** %label6, align 8
  %9 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx8 = getelementptr inbounds %struct.s_options, %struct.s_options* %10, i64 %idxprom7
  %label9 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx8, i32 0, i32 1
  %11 = load i8*, i8** %label9, align 8
  %call = call i64 @strlen(i8* %11) #8
  %call10 = call i32 @strncmp(i8* %arrayidx3, i8* %8, i64 %call) #8
  %cmp = icmp eq i32 %call10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %13 = load i32, i32* %i.addr, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i8**, i8*** @argv, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %14, i64 %idxprom11
  %15 = load i8*, i8** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %15, i64 0
  %16 = load i8, i8* %arrayidx13, align 1
  %conv = sext i8 %16 to i32
  %cmp14 = icmp eq i32 %conv, 45
  %cond = select i1 %cmp14, i32 1, i32 0
  store i32 %cond, i32* %v, align 4
  %17 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx17 = getelementptr inbounds %struct.s_options, %struct.s_options* %18, i64 %idxprom16
  %label18 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx17, i32 0, i32 1
  %19 = load i8*, i8** %label18, align 8
  %cmp19 = icmp eq i8* %19, null
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool22 = icmp ne %struct._IO_FILE* %20, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.21
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %22 = load i32, i32* %i.addr, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %22, i32 1, %struct._IO_FILE* %23)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.21
  %24 = load i32, i32* %errcnt, align 4
  %inc26 = add nsw i32 %24, 1
  store i32 %inc26, i32* %errcnt, align 4
  br label %if.end.67

if.else:                                          ; preds = %for.end
  %25 = load i32, i32* %j, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx28 = getelementptr inbounds %struct.s_options, %struct.s_options* %26, i64 %idxprom27
  %type = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx28, i32 0, i32 0
  %27 = load i32, i32* %type, align 4
  %cmp29 = icmp eq i32 %27, 1
  br i1 %cmp29, label %if.then.31, label %if.else.34

if.then.31:                                       ; preds = %if.else
  %28 = load i32, i32* %v, align 4
  %29 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %29 to i64
  %30 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx33 = getelementptr inbounds %struct.s_options, %struct.s_options* %30, i64 %idxprom32
  %arg = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx33, i32 0, i32 2
  %31 = load i8*, i8** %arg, align 8
  %32 = bitcast i8* %31 to i32*
  store i32 %28, i32* %32, align 4
  br label %if.end.66

if.else.34:                                       ; preds = %if.else
  %33 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx36 = getelementptr inbounds %struct.s_options, %struct.s_options* %34, i64 %idxprom35
  %type37 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx36, i32 0, i32 0
  %35 = load i32, i32* %type37, align 4
  %cmp38 = icmp eq i32 %35, 5
  br i1 %cmp38, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.else.34
  %36 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx42 = getelementptr inbounds %struct.s_options, %struct.s_options* %37, i64 %idxprom41
  %arg43 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx42, i32 0, i32 2
  %38 = load i8*, i8** %arg43, align 8
  %39 = bitcast i8* %38 to void (...)*
  %40 = load i32, i32* %v, align 4
  %callee.knr.cast = bitcast void (...)* %39 to void (i32, ...)*
  call void (i32, ...) %callee.knr.cast(i32 %40)
  br label %if.end.65

if.else.44:                                       ; preds = %if.else.34
  %41 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %41 to i64
  %42 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx46 = getelementptr inbounds %struct.s_options, %struct.s_options* %42, i64 %idxprom45
  %type47 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx46, i32 0, i32 0
  %43 = load i32, i32* %type47, align 4
  %cmp48 = icmp eq i32 %43, 8
  br i1 %cmp48, label %if.then.50, label %if.else.58

if.then.50:                                       ; preds = %if.else.44
  %44 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %44 to i64
  %45 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx52 = getelementptr inbounds %struct.s_options, %struct.s_options* %45, i64 %idxprom51
  %arg53 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx52, i32 0, i32 2
  %46 = load i8*, i8** %arg53, align 8
  %47 = bitcast i8* %46 to void (...)*
  %48 = load i32, i32* %i.addr, align 4
  %idxprom54 = sext i32 %48 to i64
  %49 = load i8**, i8*** @argv, align 8
  %arrayidx55 = getelementptr inbounds i8*, i8** %49, i64 %idxprom54
  %50 = load i8*, i8** %arrayidx55, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %50, i64 2
  %callee.knr.cast57 = bitcast void (...)* %47 to void (i8*, ...)*
  call void (i8*, ...) %callee.knr.cast57(i8* %arrayidx56)
  br label %if.end.64

if.else.58:                                       ; preds = %if.else.44
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool59 = icmp ne %struct._IO_FILE* %51, null
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.else.58
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.167, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %53 = load i32, i32* %i.addr, align 4
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %53, i32 1, %struct._IO_FILE* %54)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.else.58
  %55 = load i32, i32* %errcnt, align 4
  %inc63 = add nsw i32 %55, 1
  store i32 %inc63, i32* %errcnt, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.62, %if.then.50
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.40
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.31
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.25
  %56 = load i32, i32* %errcnt, align 4
  ret i32 %56
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

; Function Attrs: nounwind uwtable
define internal i32 @handleswitch(i32 %i, %struct._IO_FILE* %err) #0 {
entry:
  %i.addr = alloca i32, align 4
  %err.addr = alloca %struct._IO_FILE*, align 8
  %lv = alloca i32, align 4
  %dv = alloca double, align 8
  %sv = alloca i8*, align 8
  %end = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %j = alloca i32, align 4
  %errcnt = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8
  store i32 0, i32* %lv, align 4
  store double 0.000000e+00, double* %dv, align 8
  store i8* null, i8** %sv, align 8
  store i32 0, i32* %errcnt, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i8* @strchr(i8* %2, i32 61) #8
  store i8* %call, i8** %cp, align 8
  %3 = load i8*, i8** %cp, align 8
  store i8 0, i8* %3, align 1
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx2 = getelementptr inbounds %struct.s_options, %struct.s_options* %5, i64 %idxprom1
  %label = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx2, i32 0, i32 1
  %6 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8**, i8*** @argv, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx4, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx6 = getelementptr inbounds %struct.s_options, %struct.s_options* %11, i64 %idxprom5
  %label7 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx6, i32 0, i32 1
  %12 = load i8*, i8** %label7, align 8
  %call8 = call i32 @strcmp(i8* %9, i8* %12) #8
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load i8*, i8** %cp, align 8
  store i8 61, i8* %14, align 1
  %15 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx10 = getelementptr inbounds %struct.s_options, %struct.s_options* %16, i64 %idxprom9
  %label11 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx10, i32 0, i32 1
  %17 = load i8*, i8** %label11, align 8
  %cmp12 = icmp eq i8* %17, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool14 = icmp ne %struct._IO_FILE* %18, null
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.13
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.166, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %20 = load i32, i32* %i.addr, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %20, i32 0, %struct._IO_FILE* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %if.then.13
  %22 = load i32, i32* %errcnt, align 4
  %inc18 = add nsw i32 %22, 1
  store i32 %inc18, i32* %errcnt, align 4
  br label %if.end.84

if.else:                                          ; preds = %for.end
  %23 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  %24 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx20 = getelementptr inbounds %struct.s_options, %struct.s_options* %25, i64 %idxprom19
  %type = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx20, i32 0, i32 0
  %26 = load i32, i32* %type, align 4
  switch i32 %26, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 3, label %sw.bb.26
    i32 7, label %sw.bb.26
    i32 2, label %sw.bb.38
    i32 6, label %sw.bb.38
    i32 4, label %sw.bb.53
    i32 8, label %sw.bb.53
  ]

sw.bb:                                            ; preds = %if.else, %if.else
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %sw.bb
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.168, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %29 = load i32, i32* %i.addr, align 4
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %29, i32 0, %struct._IO_FILE* %30)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %sw.bb
  %31 = load i32, i32* %errcnt, align 4
  %inc25 = add nsw i32 %31, 1
  store i32 %inc25, i32* %errcnt, align 4
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.else, %if.else
  %32 = load i8*, i8** %cp, align 8
  %call27 = call double @strtod(i8* %32, i8** %end) #4
  store double %call27, double* %dv, align 8
  %33 = load i8*, i8** %end, align 8
  %34 = load i8, i8* %33, align 1
  %tobool28 = icmp ne i8 %34, 0
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %sw.bb.26
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool30 = icmp ne %struct._IO_FILE* %35, null
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %if.then.29
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.169, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %37 = load i32, i32* %i.addr, align 4
  %38 = load i8*, i8** %end, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load i32, i32* %i.addr, align 4
  %idxprom33 = sext i32 %40 to i64
  %41 = load i8**, i8*** @argv, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %41, i64 %idxprom33
  %42 = load i8*, i8** %arrayidx34, align 8
  %43 = ptrtoint i8* %42 to i64
  %sub = sub i64 %39, %43
  %conv = trunc i64 %sub to i32
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %37, i32 %conv, %struct._IO_FILE* %44)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %if.then.29
  %45 = load i32, i32* %errcnt, align 4
  %inc36 = add nsw i32 %45, 1
  store i32 %inc36, i32* %errcnt, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.35, %sw.bb.26
  br label %sw.epilog

sw.bb.38:                                         ; preds = %if.else, %if.else
  %46 = load i8*, i8** %cp, align 8
  %call39 = call i64 @strtol(i8* %46, i8** %end, i32 0) #4
  %conv40 = trunc i64 %call39 to i32
  store i32 %conv40, i32* %lv, align 4
  %47 = load i8*, i8** %end, align 8
  %48 = load i8, i8* %47, align 1
  %tobool41 = icmp ne i8 %48, 0
  br i1 %tobool41, label %if.then.42, label %if.end.52

if.then.42:                                       ; preds = %sw.bb.38
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %tobool43 = icmp ne %struct._IO_FILE* %49, null
  br i1 %tobool43, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.then.42
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.170, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @emsg, i32 0, i32 0))
  %51 = load i32, i32* %i.addr, align 4
  %52 = load i8*, i8** %end, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = load i32, i32* %i.addr, align 4
  %idxprom46 = sext i32 %54 to i64
  %55 = load i8**, i8*** @argv, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %55, i64 %idxprom46
  %56 = load i8*, i8** %arrayidx47, align 8
  %57 = ptrtoint i8* %56 to i64
  %sub48 = sub i64 %53, %57
  %conv49 = trunc i64 %sub48 to i32
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  call void @errline(i32 %51, i32 %conv49, %struct._IO_FILE* %58)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %if.then.42
  %59 = load i32, i32* %errcnt, align 4
  %inc51 = add nsw i32 %59, 1
  store i32 %inc51, i32* %errcnt, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.50, %sw.bb.38
  br label %sw.epilog

sw.bb.53:                                         ; preds = %if.else, %if.else
  %60 = load i8*, i8** %cp, align 8
  store i8* %60, i8** %sv, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %sw.bb.53, %if.end.52, %if.end.37, %if.end.24
  %61 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %61 to i64
  %62 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx55 = getelementptr inbounds %struct.s_options, %struct.s_options* %62, i64 %idxprom54
  %type56 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx55, i32 0, i32 0
  %63 = load i32, i32* %type56, align 4
  switch i32 %63, label %sw.epilog.83 [
    i32 1, label %sw.bb.57
    i32 5, label %sw.bb.57
    i32 3, label %sw.bb.58
    i32 7, label %sw.bb.61
    i32 2, label %sw.bb.65
    i32 6, label %sw.bb.69
    i32 4, label %sw.bb.74
    i32 8, label %sw.bb.78
  ]

sw.bb.57:                                         ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.83

sw.bb.58:                                         ; preds = %sw.epilog
  %64 = load double, double* %dv, align 8
  %65 = load i32, i32* %j, align 4
  %idxprom59 = sext i32 %65 to i64
  %66 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx60 = getelementptr inbounds %struct.s_options, %struct.s_options* %66, i64 %idxprom59
  %arg = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx60, i32 0, i32 2
  %67 = load i8*, i8** %arg, align 8
  %68 = bitcast i8* %67 to double*
  store double %64, double* %68, align 8
  br label %sw.epilog.83

sw.bb.61:                                         ; preds = %sw.epilog
  %69 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %69 to i64
  %70 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx63 = getelementptr inbounds %struct.s_options, %struct.s_options* %70, i64 %idxprom62
  %arg64 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx63, i32 0, i32 2
  %71 = load i8*, i8** %arg64, align 8
  %72 = bitcast i8* %71 to void (...)*
  %73 = load double, double* %dv, align 8
  %callee.knr.cast = bitcast void (...)* %72 to void (double, ...)*
  call void (double, ...) %callee.knr.cast(double %73)
  br label %sw.epilog.83

sw.bb.65:                                         ; preds = %sw.epilog
  %74 = load i32, i32* %lv, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %75 to i64
  %76 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx67 = getelementptr inbounds %struct.s_options, %struct.s_options* %76, i64 %idxprom66
  %arg68 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx67, i32 0, i32 2
  %77 = load i8*, i8** %arg68, align 8
  %78 = bitcast i8* %77 to i32*
  store i32 %74, i32* %78, align 4
  br label %sw.epilog.83

sw.bb.69:                                         ; preds = %sw.epilog
  %79 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %79 to i64
  %80 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx71 = getelementptr inbounds %struct.s_options, %struct.s_options* %80, i64 %idxprom70
  %arg72 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx71, i32 0, i32 2
  %81 = load i8*, i8** %arg72, align 8
  %82 = bitcast i8* %81 to void (...)*
  %83 = load i32, i32* %lv, align 4
  %callee.knr.cast73 = bitcast void (...)* %82 to void (i32, ...)*
  call void (i32, ...) %callee.knr.cast73(i32 %83)
  br label %sw.epilog.83

sw.bb.74:                                         ; preds = %sw.epilog
  %84 = load i8*, i8** %sv, align 8
  %85 = load i32, i32* %j, align 4
  %idxprom75 = sext i32 %85 to i64
  %86 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx76 = getelementptr inbounds %struct.s_options, %struct.s_options* %86, i64 %idxprom75
  %arg77 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx76, i32 0, i32 2
  %87 = load i8*, i8** %arg77, align 8
  %88 = bitcast i8* %87 to i8**
  store i8* %84, i8** %88, align 8
  br label %sw.epilog.83

sw.bb.78:                                         ; preds = %sw.epilog
  %89 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %89 to i64
  %90 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx80 = getelementptr inbounds %struct.s_options, %struct.s_options* %90, i64 %idxprom79
  %arg81 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx80, i32 0, i32 2
  %91 = load i8*, i8** %arg81, align 8
  %92 = bitcast i8* %91 to void (...)*
  %93 = load i8*, i8** %sv, align 8
  %callee.knr.cast82 = bitcast void (...)* %92 to void (i8*, ...)*
  call void (i8*, ...) %callee.knr.cast82(i8* %93)
  br label %sw.epilog.83

sw.epilog.83:                                     ; preds = %sw.epilog, %sw.bb.78, %sw.bb.74, %sw.bb.69, %sw.bb.65, %sw.bb.61, %sw.bb.58, %sw.bb.57
  br label %if.end.84

if.end.84:                                        ; preds = %sw.epilog.83, %if.end.17
  %94 = load i32, i32* %errcnt, align 4
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define i32 @OptNArgs() #0 {
entry:
  %cnt = alloca i32, align 4
  %dashdash = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %cnt, align 4
  store i32 0, i32* %dashdash, align 4
  %0 = load i8**, i8*** @argv, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end.30

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** @argv, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx2, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %dashdash, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8**, i8*** @argv, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %8, i64 %idxprom4
  %9 = load i8*, i8** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %10 to i32
  %cmp7 = icmp eq i32 %conv, 45
  br i1 %cmp7, label %if.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load i8**, i8*** @argv, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %12, i64 %idxprom10
  %13 = load i8*, i8** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %14 to i32
  %cmp14 = icmp eq i32 %conv13, 43
  br i1 %cmp14, label %if.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.9
  %15 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %15 to i64
  %16 = load i8**, i8*** @argv, align 8
  %arrayidx18 = getelementptr inbounds i8*, i8** %16, i64 %idxprom17
  %17 = load i8*, i8** %arrayidx18, align 8
  %call = call i8* @strchr(i8* %17, i32 61) #8
  %cmp19 = icmp ne i8* %call, null
  br i1 %cmp19, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false.16, %for.body
  %18 = load i32, i32* %cnt, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %cnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %lor.lhs.false.16, %lor.lhs.false.9, %lor.lhs.false
  %19 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %19 to i64
  %20 = load i8**, i8*** @argv, align 8
  %arrayidx23 = getelementptr inbounds i8*, i8** %20, i64 %idxprom22
  %21 = load i8*, i8** %arrayidx23, align 8
  %call24 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0)) #8
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  store i32 1, i32* %dashdash, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %22 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %land.lhs.true, %entry
  %23 = load i32, i32* %cnt, align 4
  ret i32 %23
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i8* @OptArg(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @argindex(i32 %0)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %4, %cond.true ], [ null, %cond.false ]
  ret i8* %cond
}

; Function Attrs: nounwind uwtable
define internal i32 @argindex(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dashdash = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 0, i32* %dashdash, align 4
  %0 = load i8**, i8*** @argv, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %entry
  %1 = load i8**, i8*** @argv, align 8
  %2 = load i8*, i8** %1, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %if.then, label %if.end.32

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %dashdash, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load i8**, i8*** @argv, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %10 to i32
  %cmp6 = icmp eq i32 %conv, 45
  br i1 %cmp6, label %if.end.24, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i8**, i8*** @argv, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %13 = load i8*, i8** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 43
  br i1 %cmp13, label %if.end.24, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.8
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i8**, i8*** @argv, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %16, i64 %idxprom16
  %17 = load i8*, i8** %arrayidx17, align 8
  %call = call i8* @strchr(i8* %17, i32 61) #8
  %cmp18 = icmp ne i8* %call, null
  br i1 %cmp18, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false.15, %for.body
  %18 = load i32, i32* %n.addr, align 4
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then.20
  %19 = load i32, i32* %i, align 4
  store i32 %19, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  %20 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %20, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %lor.lhs.false.15, %lor.lhs.false.8, %lor.lhs.false
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %22 = load i8**, i8*** @argv, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %22, i64 %idxprom25
  %23 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0)) #8
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.24
  store i32 1, i32* %dashdash, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %land.lhs.true, %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.23
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define void @OptErr(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @argindex(i32 %0)
  store i32 %call, i32* %i, align 4
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @errstream, align 8
  call void @errline(i32 %2, i32 0, %struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @errline(i32 %n, i32 %k, %struct._IO_FILE* %err) #0 {
entry:
  %n.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %err.addr = alloca %struct._IO_FILE*, align 8
  %spcnt = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store %struct._IO_FILE* %err, %struct._IO_FILE** %err.addr, align 8
  %0 = load i8**, i8*** @argv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %3 = load i8**, i8*** @argv, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 0
  %4 = load i8*, i8** %arrayidx1, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8**, i8*** @argv, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx2, align 8
  %call3 = call i64 @strlen(i8* %6) #8
  %add = add i64 %call3, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %spcnt, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** @argv, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx5, align 8
  %tobool6 = icmp ne i8* %11, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %tobool6, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i8**, i8*** @argv, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 %idxprom7
  %16 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %16)
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load i8**, i8*** @argv, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %18, i64 %idxprom10
  %19 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i64 @strlen(i8* %19) #8
  %add13 = add i64 %call12, 1
  %20 = load i32, i32* %spcnt, align 4
  %conv14 = sext i32 %20 to i64
  %add15 = add i64 %conv14, %add13
  %conv16 = trunc i64 %add15 to i32
  store i32 %conv16, i32* %spcnt, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %22 = load i32, i32* %k.addr, align 4
  %23 = load i32, i32* %spcnt, align 4
  %add17 = add nsw i32 %23, %22
  store i32 %add17, i32* %spcnt, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end
  %24 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load i8**, i8*** @argv, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %25, i64 %idxprom19
  %26 = load i8*, i8** %arrayidx20, align 8
  %tobool21 = icmp ne i8* %26, null
  br i1 %tobool21, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load i8**, i8*** @argv, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %29, i64 %idxprom23
  %30 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %30)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %31 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  %32 = load i32, i32* %spcnt, align 4
  %cmp29 = icmp slt i32 %32, 20
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.end.28
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %34 = load i32, i32* %spcnt, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.171, i32 0, i32 0), i32 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.34

if.else:                                          ; preds = %for.end.28
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %err.addr, align 8
  %36 = load i32, i32* %spcnt, align 4
  %sub = sub nsw i32 %36, 7
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.172, i32 0, i32 0), i32 %sub, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.then.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @OptPrint() #0 {
entry:
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 0, i32* %max, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx = getelementptr inbounds %struct.s_options, %struct.s_options* %1, i64 %idxprom
  %label = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx, i32 0, i32 1
  %2 = load i8*, i8** %label, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx2 = getelementptr inbounds %struct.s_options, %struct.s_options* %4, i64 %idxprom1
  %label3 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx2, i32 0, i32 1
  %5 = load i8*, i8** %label3, align 8
  %call = call i64 @strlen(i8* %5) #8
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx5 = getelementptr inbounds %struct.s_options, %struct.s_options* %7, i64 %idxprom4
  %type = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx5, i32 0, i32 0
  %8 = load i32, i32* %type, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 5, label %sw.bb
    i32 2, label %sw.bb.6
    i32 6, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 7, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 8, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body, %for.body
  %9 = load i32, i32* %len, align 4
  %add7 = add nsw i32 %9, 9
  store i32 %add7, i32* %len, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body, %for.body
  %10 = load i32, i32* %len, align 4
  %add9 = add nsw i32 %10, 6
  store i32 %add9, i32* %len, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %for.body, %for.body
  %11 = load i32, i32* %len, align 4
  %add11 = add nsw i32 %11, 8
  store i32 %add11, i32* %len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb
  %12 = load i32, i32* %len, align 4
  %13 = load i32, i32* %max, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %14 = load i32, i32* %len, align 4
  store i32 %14, i32* %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.77, %for.end
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx15 = getelementptr inbounds %struct.s_options, %struct.s_options* %17, i64 %idxprom14
  %label16 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx15, i32 0, i32 1
  %18 = load i8*, i8** %label16, align 8
  %tobool17 = icmp ne i8* %18, null
  br i1 %tobool17, label %for.body.18, label %for.end.79

for.body.18:                                      ; preds = %for.cond.13
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx20 = getelementptr inbounds %struct.s_options, %struct.s_options* %20, i64 %idxprom19
  %type21 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx20, i32 0, i32 0
  %21 = load i32, i32* %type21, align 4
  switch i32 %21, label %sw.epilog.76 [
    i32 1, label %sw.bb.22
    i32 5, label %sw.bb.22
    i32 2, label %sw.bb.29
    i32 6, label %sw.bb.29
    i32 3, label %sw.bb.44
    i32 7, label %sw.bb.44
    i32 4, label %sw.bb.60
    i32 8, label %sw.bb.60
  ]

sw.bb.22:                                         ; preds = %for.body.18, %for.body.18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @errstream, align 8
  %23 = load i32, i32* %max, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx24 = getelementptr inbounds %struct.s_options, %struct.s_options* %25, i64 %idxprom23
  %label25 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx24, i32 0, i32 1
  %26 = load i8*, i8** %label25, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %27 to i64
  %28 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx27 = getelementptr inbounds %struct.s_options, %struct.s_options* %28, i64 %idxprom26
  %message = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx27, i32 0, i32 3
  %29 = load i8*, i8** %message, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0), i32 %23, i8* %26, i8* %29)
  br label %sw.epilog.76

sw.bb.29:                                         ; preds = %for.body.18, %for.body.18
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @errstream, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %31 to i64
  %32 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx31 = getelementptr inbounds %struct.s_options, %struct.s_options* %32, i64 %idxprom30
  %label32 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx31, i32 0, i32 1
  %33 = load i8*, i8** %label32, align 8
  %34 = load i32, i32* %max, align 4
  %conv33 = sext i32 %34 to i64
  %35 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %35 to i64
  %36 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx35 = getelementptr inbounds %struct.s_options, %struct.s_options* %36, i64 %idxprom34
  %label36 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx35, i32 0, i32 1
  %37 = load i8*, i8** %label36, align 8
  %call37 = call i64 @strlen(i8* %37) #8
  %sub = sub i64 %conv33, %call37
  %sub38 = sub i64 %sub, 9
  %conv39 = trunc i64 %sub38 to i32
  %38 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %38 to i64
  %39 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx41 = getelementptr inbounds %struct.s_options, %struct.s_options* %39, i64 %idxprom40
  %message42 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx41, i32 0, i32 3
  %40 = load i8*, i8** %message42, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i8* %33, i32 %conv39, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8* %40)
  br label %sw.epilog.76

sw.bb.44:                                         ; preds = %for.body.18, %for.body.18
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @errstream, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx46 = getelementptr inbounds %struct.s_options, %struct.s_options* %43, i64 %idxprom45
  %label47 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx46, i32 0, i32 1
  %44 = load i8*, i8** %label47, align 8
  %45 = load i32, i32* %max, align 4
  %conv48 = sext i32 %45 to i64
  %46 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx50 = getelementptr inbounds %struct.s_options, %struct.s_options* %47, i64 %idxprom49
  %label51 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx50, i32 0, i32 1
  %48 = load i8*, i8** %label51, align 8
  %call52 = call i64 @strlen(i8* %48) #8
  %sub53 = sub i64 %conv48, %call52
  %sub54 = sub i64 %sub53, 6
  %conv55 = trunc i64 %sub54 to i32
  %49 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %49 to i64
  %50 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx57 = getelementptr inbounds %struct.s_options, %struct.s_options* %50, i64 %idxprom56
  %message58 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx57, i32 0, i32 3
  %51 = load i8*, i8** %message58, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i32 0, i32 0), i8* %44, i32 %conv55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8* %51)
  br label %sw.epilog.76

sw.bb.60:                                         ; preds = %for.body.18, %for.body.18
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @errstream, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx62 = getelementptr inbounds %struct.s_options, %struct.s_options* %54, i64 %idxprom61
  %label63 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx62, i32 0, i32 1
  %55 = load i8*, i8** %label63, align 8
  %56 = load i32, i32* %max, align 4
  %conv64 = sext i32 %56 to i64
  %57 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %57 to i64
  %58 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx66 = getelementptr inbounds %struct.s_options, %struct.s_options* %58, i64 %idxprom65
  %label67 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx66, i32 0, i32 1
  %59 = load i8*, i8** %label67, align 8
  %call68 = call i64 @strlen(i8* %59) #8
  %sub69 = sub i64 %conv64, %call68
  %sub70 = sub i64 %sub69, 8
  %conv71 = trunc i64 %sub70 to i32
  %60 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %60 to i64
  %61 = load %struct.s_options*, %struct.s_options** @op, align 8
  %arrayidx73 = getelementptr inbounds %struct.s_options, %struct.s_options* %61, i64 %idxprom72
  %message74 = getelementptr inbounds %struct.s_options, %struct.s_options* %arrayidx73, i32 0, i32 3
  %62 = load i8*, i8** %message74, align 8
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i8* %55, i32 %conv71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8* %62)
  br label %sw.epilog.76

sw.epilog.76:                                     ; preds = %for.body.18, %sw.bb.60, %sw.bb.44, %sw.bb.29, %sw.bb.22
  br label %for.inc.77

for.inc.77:                                       ; preds = %sw.epilog.76
  %63 = load i32, i32* %i, align 4
  %inc78 = add nsw i32 %63, 1
  store i32 %inc78, i32* %i, align 4
  br label %for.cond.13

for.end.79:                                       ; preds = %for.cond.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @Parse(%struct.lemon* %gp) #0 {
entry:
  %gp.addr = alloca %struct.lemon*, align 8
  %ps = alloca %struct.pstate, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %filebuf = alloca i8*, align 8
  %filesize = alloca i32, align 4
  %lineno = alloca i32, align 4
  %c = alloca i32, align 4
  %cp = alloca i8*, align 8
  %nextcp = alloca i8*, align 8
  %startline = alloca i32, align 4
  %level = alloca i32, align 4
  %prevc = alloca i32, align 4
  %startchar = alloca i32, align 4
  %prevc211 = alloca i32, align 4
  store %struct.lemon* %gp, %struct.lemon** %gp.addr, align 8
  store i32 0, i32* %startline, align 4
  %0 = bitcast %struct.pstate* %ps to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16128, i32 8, i1 false)
  %1 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %gp1 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 4
  store %struct.lemon* %1, %struct.lemon** %gp1, align 8
  %2 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 32
  %3 = load i8*, i8** %filename, align 8
  %filename2 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  store i8* %3, i8** %filename2, align 8
  %errorcnt = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 2
  store i32 0, i32* %errorcnt, align 4
  %state = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 5
  store i32 0, i32* %state, align 4
  %filename3 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %4 = load i8*, i8** %filename3, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %filename4 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %6 = load i8*, i8** %filename4, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %6, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i32 0, i32 0))
  %7 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %errorcnt5 = getelementptr inbounds %struct.lemon, %struct.lemon* %7, i32 0, i32 7
  %8 = load i32, i32* %errorcnt5, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %errorcnt5, align 4
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call6 = call i32 @fseek(%struct._IO_FILE* %9, i64 0, i32 2)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call7 = call i64 @ftell(%struct._IO_FILE* %10)
  %conv = trunc i64 %call7 to i32
  store i32 %conv, i32* %filesize, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %11)
  %12 = load i32, i32* %filesize, align 4
  %add = add nsw i32 %12, 1
  %conv8 = sext i32 %add to i64
  %call9 = call noalias i8* @malloc(i64 %conv8) #4
  store i8* %call9, i8** %filebuf, align 8
  %13 = load i8*, i8** %filebuf, align 8
  %cmp10 = icmp eq i8* %13, null
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %if.end
  %filename13 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %14 = load i8*, i8** %filename13, align 8
  %15 = load i32, i32* %filesize, align 4
  %add14 = add nsw i32 %15, 1
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %14, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i32 0, i32 0), i32 %add14)
  %16 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %errorcnt15 = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 7
  %17 = load i32, i32* %errorcnt15, align 4
  %inc16 = add nsw i32 %17, 1
  store i32 %inc16, i32* %errorcnt15, align 4
  br label %return

if.end.17:                                        ; preds = %if.end
  %18 = load i8*, i8** %filebuf, align 8
  %19 = load i32, i32* %filesize, align 4
  %conv18 = sext i32 %19 to i64
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call19 = call i64 @fread(i8* %18, i64 1, i64 %conv18, %struct._IO_FILE* %20)
  %21 = load i32, i32* %filesize, align 4
  %conv20 = sext i32 %21 to i64
  %cmp21 = icmp ne i64 %call19, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.17
  %filename24 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %22 = load i8*, i8** %filename24, align 8
  %23 = load i32, i32* %filesize, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %22, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.45, i32 0, i32 0), i32 %23)
  %24 = load i8*, i8** %filebuf, align 8
  call void @free(i8* %24) #4
  %25 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %errorcnt25 = getelementptr inbounds %struct.lemon, %struct.lemon* %25, i32 0, i32 7
  %26 = load i32, i32* %errorcnt25, align 4
  %inc26 = add nsw i32 %26, 1
  store i32 %inc26, i32* %errorcnt25, align 4
  br label %return

if.end.27:                                        ; preds = %if.end.17
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %27)
  %28 = load i32, i32* %filesize, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i8*, i8** %filebuf, align 8
  %arrayidx = getelementptr inbounds i8, i8* %29, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %30 = load i8*, i8** %filebuf, align 8
  call void @preprocess_input(i8* %30)
  store i32 1, i32* %lineno, align 4
  %31 = load i8*, i8** %filebuf, align 8
  store i8* %31, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.340, %if.end.89, %while.end, %if.then.41, %if.end.27
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %conv29 = sext i8 %33 to i32
  store i32 %conv29, i32* %c, align 4
  %cmp30 = icmp ne i32 %conv29, 0
  br i1 %cmp30, label %for.body, label %for.end.343

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %c, align 4
  %cmp32 = icmp eq i32 %34, 10
  br i1 %cmp32, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.body
  %35 = load i32, i32* %lineno, align 4
  %inc35 = add nsw i32 %35, 1
  store i32 %inc35, i32* %lineno, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.body
  %36 = load i32, i32* %c, align 4
  %idxprom37 = sext i32 %36 to i64
  %call38 = call i16** @__ctype_b_loc() #9
  %37 = load i16*, i16** %call38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %37, i64 %idxprom37
  %38 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %38 to i32
  %and = and i32 %conv40, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.36
  %39 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

if.end.42:                                        ; preds = %if.end.36
  %40 = load i32, i32* %c, align 4
  %cmp43 = icmp eq i32 %40, 47
  br i1 %cmp43, label %land.lhs.true, label %if.end.56

land.lhs.true:                                    ; preds = %if.end.42
  %41 = load i8*, i8** %cp, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %42 to i32
  %cmp47 = icmp eq i32 %conv46, 47
  br i1 %cmp47, label %if.then.49, label %if.end.56

if.then.49:                                       ; preds = %land.lhs.true
  %43 = load i8*, i8** %cp, align 8
  %add.ptr = getelementptr inbounds i8, i8* %43, i64 2
  store i8* %add.ptr, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.49
  %44 = load i8*, i8** %cp, align 8
  %45 = load i8, i8* %44, align 1
  %conv50 = sext i8 %45 to i32
  store i32 %conv50, i32* %c, align 4
  %cmp51 = icmp ne i32 %conv50, 0
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %46 = load i32, i32* %c, align 4
  %cmp53 = icmp ne i32 %46, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %47 = phi i1 [ false, %while.cond ], [ %cmp53, %land.rhs ]
  br i1 %47, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %48 = load i8*, i8** %cp, align 8
  %incdec.ptr55 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr55, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.cond

if.end.56:                                        ; preds = %land.lhs.true, %if.end.42
  %49 = load i32, i32* %c, align 4
  %cmp57 = icmp eq i32 %49, 47
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.90

land.lhs.true.59:                                 ; preds = %if.end.56
  %50 = load i8*, i8** %cp, align 8
  %arrayidx60 = getelementptr inbounds i8, i8* %50, i64 1
  %51 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %51 to i32
  %cmp62 = icmp eq i32 %conv61, 42
  br i1 %cmp62, label %if.then.64, label %if.end.90

if.then.64:                                       ; preds = %land.lhs.true.59
  %52 = load i8*, i8** %cp, align 8
  %add.ptr65 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %add.ptr65, i8** %cp, align 8
  br label %while.cond.66

while.cond.66:                                    ; preds = %if.end.83, %if.then.64
  %53 = load i8*, i8** %cp, align 8
  %54 = load i8, i8* %53, align 1
  %conv67 = sext i8 %54 to i32
  store i32 %conv67, i32* %c, align 4
  %cmp68 = icmp ne i32 %conv67, 0
  br i1 %cmp68, label %land.rhs.70, label %land.end.77

land.rhs.70:                                      ; preds = %while.cond.66
  %55 = load i32, i32* %c, align 4
  %cmp71 = icmp ne i32 %55, 47
  br i1 %cmp71, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.70
  %56 = load i8*, i8** %cp, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %56, i64 -1
  %57 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %57 to i32
  %cmp75 = icmp ne i32 %conv74, 42
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.70
  %58 = phi i1 [ true, %land.rhs.70 ], [ %cmp75, %lor.rhs ]
  br label %land.end.77

land.end.77:                                      ; preds = %lor.end, %while.cond.66
  %59 = phi i1 [ false, %while.cond.66 ], [ %58, %lor.end ]
  br i1 %59, label %while.body.78, label %while.end.85

while.body.78:                                    ; preds = %land.end.77
  %60 = load i32, i32* %c, align 4
  %cmp79 = icmp eq i32 %60, 10
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %while.body.78
  %61 = load i32, i32* %lineno, align 4
  %inc82 = add nsw i32 %61, 1
  store i32 %inc82, i32* %lineno, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %while.body.78
  %62 = load i8*, i8** %cp, align 8
  %incdec.ptr84 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr84, i8** %cp, align 8
  br label %while.cond.66

while.end.85:                                     ; preds = %land.end.77
  %63 = load i32, i32* %c, align 4
  %tobool86 = icmp ne i32 %63, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %while.end.85
  %64 = load i8*, i8** %cp, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %incdec.ptr88, i8** %cp, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %while.end.85
  br label %for.cond

if.end.90:                                        ; preds = %land.lhs.true.59, %if.end.56
  %65 = load i8*, i8** %cp, align 8
  %tokenstart = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 3
  store i8* %65, i8** %tokenstart, align 8
  %66 = load i32, i32* %lineno, align 4
  %tokenlineno = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 1
  store i32 %66, i32* %tokenlineno, align 4
  %67 = load i32, i32* %c, align 4
  %cmp91 = icmp eq i32 %67, 34
  br i1 %cmp91, label %if.then.93, label %if.else.119

if.then.93:                                       ; preds = %if.end.90
  %68 = load i8*, i8** %cp, align 8
  %incdec.ptr94 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr94, i8** %cp, align 8
  br label %while.cond.95

while.cond.95:                                    ; preds = %if.end.108, %if.then.93
  %69 = load i8*, i8** %cp, align 8
  %70 = load i8, i8* %69, align 1
  %conv96 = sext i8 %70 to i32
  store i32 %conv96, i32* %c, align 4
  %cmp97 = icmp ne i32 %conv96, 0
  br i1 %cmp97, label %land.rhs.99, label %land.end.102

land.rhs.99:                                      ; preds = %while.cond.95
  %71 = load i32, i32* %c, align 4
  %cmp100 = icmp ne i32 %71, 34
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.99, %while.cond.95
  %72 = phi i1 [ false, %while.cond.95 ], [ %cmp100, %land.rhs.99 ]
  br i1 %72, label %while.body.103, label %while.end.110

while.body.103:                                   ; preds = %land.end.102
  %73 = load i32, i32* %c, align 4
  %cmp104 = icmp eq i32 %73, 10
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %while.body.103
  %74 = load i32, i32* %lineno, align 4
  %inc107 = add nsw i32 %74, 1
  store i32 %inc107, i32* %lineno, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %while.body.103
  %75 = load i8*, i8** %cp, align 8
  %incdec.ptr109 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr109, i8** %cp, align 8
  br label %while.cond.95

while.end.110:                                    ; preds = %land.end.102
  %76 = load i32, i32* %c, align 4
  %cmp111 = icmp eq i32 %76, 0
  br i1 %cmp111, label %if.then.113, label %if.else

if.then.113:                                      ; preds = %while.end.110
  %filename114 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %77 = load i8*, i8** %filename114, align 8
  %78 = load i32, i32* %startline, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %77, i32 %78, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.46, i32 0, i32 0))
  %errorcnt115 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 2
  %79 = load i32, i32* %errorcnt115, align 4
  %inc116 = add nsw i32 %79, 1
  store i32 %inc116, i32* %errorcnt115, align 4
  %80 = load i8*, i8** %cp, align 8
  store i8* %80, i8** %nextcp, align 8
  br label %if.end.118

if.else:                                          ; preds = %while.end.110
  %81 = load i8*, i8** %cp, align 8
  %add.ptr117 = getelementptr inbounds i8, i8* %81, i64 1
  store i8* %add.ptr117, i8** %nextcp, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else, %if.then.113
  br label %if.end.340

if.else.119:                                      ; preds = %if.end.90
  %82 = load i32, i32* %c, align 4
  %cmp120 = icmp eq i32 %82, 123
  br i1 %cmp120, label %if.then.122, label %if.else.256

if.then.122:                                      ; preds = %if.else.119
  %83 = load i8*, i8** %cp, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %incdec.ptr123, i8** %cp, align 8
  store i32 1, i32* %level, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.243, %if.then.122
  %84 = load i8*, i8** %cp, align 8
  %85 = load i8, i8* %84, align 1
  %conv125 = sext i8 %85 to i32
  store i32 %conv125, i32* %c, align 4
  %cmp126 = icmp ne i32 %conv125, 0
  br i1 %cmp126, label %land.rhs.128, label %land.end.135

land.rhs.128:                                     ; preds = %for.cond.124
  %86 = load i32, i32* %level, align 4
  %cmp129 = icmp sgt i32 %86, 1
  br i1 %cmp129, label %lor.end.134, label %lor.rhs.131

lor.rhs.131:                                      ; preds = %land.rhs.128
  %87 = load i32, i32* %c, align 4
  %cmp132 = icmp ne i32 %87, 125
  br label %lor.end.134

lor.end.134:                                      ; preds = %lor.rhs.131, %land.rhs.128
  %88 = phi i1 [ true, %land.rhs.128 ], [ %cmp132, %lor.rhs.131 ]
  br label %land.end.135

land.end.135:                                     ; preds = %lor.end.134, %for.cond.124
  %89 = phi i1 [ false, %for.cond.124 ], [ %88, %lor.end.134 ]
  br i1 %89, label %for.body.136, label %for.end.245

for.body.136:                                     ; preds = %land.end.135
  %90 = load i32, i32* %c, align 4
  %cmp137 = icmp eq i32 %90, 10
  br i1 %cmp137, label %if.then.139, label %if.else.141

if.then.139:                                      ; preds = %for.body.136
  %91 = load i32, i32* %lineno, align 4
  %inc140 = add nsw i32 %91, 1
  store i32 %inc140, i32* %lineno, align 4
  br label %if.end.242

if.else.141:                                      ; preds = %for.body.136
  %92 = load i32, i32* %c, align 4
  %cmp142 = icmp eq i32 %92, 123
  br i1 %cmp142, label %if.then.144, label %if.else.146

if.then.144:                                      ; preds = %if.else.141
  %93 = load i32, i32* %level, align 4
  %inc145 = add nsw i32 %93, 1
  store i32 %inc145, i32* %level, align 4
  br label %if.end.241

if.else.146:                                      ; preds = %if.else.141
  %94 = load i32, i32* %c, align 4
  %cmp147 = icmp eq i32 %94, 125
  br i1 %cmp147, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %if.else.146
  %95 = load i32, i32* %level, align 4
  %dec = add nsw i32 %95, -1
  store i32 %dec, i32* %level, align 4
  br label %if.end.240

if.else.150:                                      ; preds = %if.else.146
  %96 = load i32, i32* %c, align 4
  %cmp151 = icmp eq i32 %96, 47
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.180

land.lhs.true.153:                                ; preds = %if.else.150
  %97 = load i8*, i8** %cp, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %97, i64 1
  %98 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %98 to i32
  %cmp156 = icmp eq i32 %conv155, 42
  br i1 %cmp156, label %if.then.158, label %if.else.180

if.then.158:                                      ; preds = %land.lhs.true.153
  %99 = load i8*, i8** %cp, align 8
  %arrayidx159 = getelementptr inbounds i8, i8* %99, i64 2
  store i8* %arrayidx159, i8** %cp, align 8
  store i32 0, i32* %prevc, align 4
  br label %while.cond.160

while.cond.160:                                   ; preds = %if.end.177, %if.then.158
  %100 = load i8*, i8** %cp, align 8
  %101 = load i8, i8* %100, align 1
  %conv161 = sext i8 %101 to i32
  store i32 %conv161, i32* %c, align 4
  %cmp162 = icmp ne i32 %conv161, 0
  br i1 %cmp162, label %land.rhs.164, label %land.end.171

land.rhs.164:                                     ; preds = %while.cond.160
  %102 = load i32, i32* %c, align 4
  %cmp165 = icmp ne i32 %102, 47
  br i1 %cmp165, label %lor.end.170, label %lor.rhs.167

lor.rhs.167:                                      ; preds = %land.rhs.164
  %103 = load i32, i32* %prevc, align 4
  %cmp168 = icmp ne i32 %103, 42
  br label %lor.end.170

lor.end.170:                                      ; preds = %lor.rhs.167, %land.rhs.164
  %104 = phi i1 [ true, %land.rhs.164 ], [ %cmp168, %lor.rhs.167 ]
  br label %land.end.171

land.end.171:                                     ; preds = %lor.end.170, %while.cond.160
  %105 = phi i1 [ false, %while.cond.160 ], [ %104, %lor.end.170 ]
  br i1 %105, label %while.body.172, label %while.end.179

while.body.172:                                   ; preds = %land.end.171
  %106 = load i32, i32* %c, align 4
  %cmp173 = icmp eq i32 %106, 10
  br i1 %cmp173, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %while.body.172
  %107 = load i32, i32* %lineno, align 4
  %inc176 = add nsw i32 %107, 1
  store i32 %inc176, i32* %lineno, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %while.body.172
  %108 = load i32, i32* %c, align 4
  store i32 %108, i32* %prevc, align 4
  %109 = load i8*, i8** %cp, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr178, i8** %cp, align 8
  br label %while.cond.160

while.end.179:                                    ; preds = %land.end.171
  br label %if.end.239

if.else.180:                                      ; preds = %land.lhs.true.153, %if.else.150
  %110 = load i32, i32* %c, align 4
  %cmp181 = icmp eq i32 %110, 47
  br i1 %cmp181, label %land.lhs.true.183, label %if.else.205

land.lhs.true.183:                                ; preds = %if.else.180
  %111 = load i8*, i8** %cp, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %111, i64 1
  %112 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %112 to i32
  %cmp186 = icmp eq i32 %conv185, 47
  br i1 %cmp186, label %if.then.188, label %if.else.205

if.then.188:                                      ; preds = %land.lhs.true.183
  %113 = load i8*, i8** %cp, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %113, i64 2
  store i8* %arrayidx189, i8** %cp, align 8
  br label %while.cond.190

while.cond.190:                                   ; preds = %while.body.198, %if.then.188
  %114 = load i8*, i8** %cp, align 8
  %115 = load i8, i8* %114, align 1
  %conv191 = sext i8 %115 to i32
  store i32 %conv191, i32* %c, align 4
  %cmp192 = icmp ne i32 %conv191, 0
  br i1 %cmp192, label %land.rhs.194, label %land.end.197

land.rhs.194:                                     ; preds = %while.cond.190
  %116 = load i32, i32* %c, align 4
  %cmp195 = icmp ne i32 %116, 10
  br label %land.end.197

land.end.197:                                     ; preds = %land.rhs.194, %while.cond.190
  %117 = phi i1 [ false, %while.cond.190 ], [ %cmp195, %land.rhs.194 ]
  br i1 %117, label %while.body.198, label %while.end.200

while.body.198:                                   ; preds = %land.end.197
  %118 = load i8*, i8** %cp, align 8
  %incdec.ptr199 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr199, i8** %cp, align 8
  br label %while.cond.190

while.end.200:                                    ; preds = %land.end.197
  %119 = load i32, i32* %c, align 4
  %tobool201 = icmp ne i32 %119, 0
  br i1 %tobool201, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %while.end.200
  %120 = load i32, i32* %lineno, align 4
  %inc203 = add nsw i32 %120, 1
  store i32 %inc203, i32* %lineno, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %while.end.200
  br label %if.end.238

if.else.205:                                      ; preds = %land.lhs.true.183, %if.else.180
  %121 = load i32, i32* %c, align 4
  %cmp206 = icmp eq i32 %121, 39
  br i1 %cmp206, label %if.then.210, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.205
  %122 = load i32, i32* %c, align 4
  %cmp208 = icmp eq i32 %122, 34
  br i1 %cmp208, label %if.then.210, label %if.end.237

if.then.210:                                      ; preds = %lor.lhs.false, %if.else.205
  %123 = load i32, i32* %c, align 4
  store i32 %123, i32* %startchar, align 4
  store i32 0, i32* %prevc211, align 4
  %124 = load i8*, i8** %cp, align 8
  %incdec.ptr212 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %incdec.ptr212, i8** %cp, align 8
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc, %if.then.210
  %125 = load i8*, i8** %cp, align 8
  %126 = load i8, i8* %125, align 1
  %conv214 = sext i8 %126 to i32
  store i32 %conv214, i32* %c, align 4
  %cmp215 = icmp ne i32 %conv214, 0
  br i1 %cmp215, label %land.rhs.217, label %land.end.224

land.rhs.217:                                     ; preds = %for.cond.213
  %127 = load i32, i32* %c, align 4
  %128 = load i32, i32* %startchar, align 4
  %cmp218 = icmp ne i32 %127, %128
  br i1 %cmp218, label %lor.end.223, label %lor.rhs.220

lor.rhs.220:                                      ; preds = %land.rhs.217
  %129 = load i32, i32* %prevc211, align 4
  %cmp221 = icmp eq i32 %129, 92
  br label %lor.end.223

lor.end.223:                                      ; preds = %lor.rhs.220, %land.rhs.217
  %130 = phi i1 [ true, %land.rhs.217 ], [ %cmp221, %lor.rhs.220 ]
  br label %land.end.224

land.end.224:                                     ; preds = %lor.end.223, %for.cond.213
  %131 = phi i1 [ false, %for.cond.213 ], [ %130, %lor.end.223 ]
  br i1 %131, label %for.body.225, label %for.end

for.body.225:                                     ; preds = %land.end.224
  %132 = load i32, i32* %c, align 4
  %cmp226 = icmp eq i32 %132, 10
  br i1 %cmp226, label %if.then.228, label %if.end.230

if.then.228:                                      ; preds = %for.body.225
  %133 = load i32, i32* %lineno, align 4
  %inc229 = add nsw i32 %133, 1
  store i32 %inc229, i32* %lineno, align 4
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %for.body.225
  %134 = load i32, i32* %prevc211, align 4
  %cmp231 = icmp eq i32 %134, 92
  br i1 %cmp231, label %if.then.233, label %if.else.234

if.then.233:                                      ; preds = %if.end.230
  store i32 0, i32* %prevc211, align 4
  br label %if.end.235

if.else.234:                                      ; preds = %if.end.230
  %135 = load i32, i32* %c, align 4
  store i32 %135, i32* %prevc211, align 4
  br label %if.end.235

if.end.235:                                       ; preds = %if.else.234, %if.then.233
  br label %for.inc

for.inc:                                          ; preds = %if.end.235
  %136 = load i8*, i8** %cp, align 8
  %incdec.ptr236 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr236, i8** %cp, align 8
  br label %for.cond.213

for.end:                                          ; preds = %land.end.224
  br label %if.end.237

if.end.237:                                       ; preds = %for.end, %lor.lhs.false
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.204
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %while.end.179
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %if.then.149
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.240, %if.then.144
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.then.139
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242
  %137 = load i8*, i8** %cp, align 8
  %incdec.ptr244 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr244, i8** %cp, align 8
  br label %for.cond.124

for.end.245:                                      ; preds = %land.end.135
  %138 = load i32, i32* %c, align 4
  %cmp246 = icmp eq i32 %138, 0
  br i1 %cmp246, label %if.then.248, label %if.else.253

if.then.248:                                      ; preds = %for.end.245
  %filename249 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 0
  %139 = load i8*, i8** %filename249, align 8
  %tokenlineno250 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 1
  %140 = load i32, i32* %tokenlineno250, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %139, i32 %140, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.47, i32 0, i32 0))
  %errorcnt251 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 2
  %141 = load i32, i32* %errorcnt251, align 4
  %inc252 = add nsw i32 %141, 1
  store i32 %inc252, i32* %errorcnt251, align 4
  %142 = load i8*, i8** %cp, align 8
  store i8* %142, i8** %nextcp, align 8
  br label %if.end.255

if.else.253:                                      ; preds = %for.end.245
  %143 = load i8*, i8** %cp, align 8
  %add.ptr254 = getelementptr inbounds i8, i8* %143, i64 1
  store i8* %add.ptr254, i8** %nextcp, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.253, %if.then.248
  br label %if.end.339

if.else.256:                                      ; preds = %if.else.119
  %144 = load i32, i32* %c, align 4
  %idxprom257 = sext i32 %144 to i64
  %call258 = call i16** @__ctype_b_loc() #9
  %145 = load i16*, i16** %call258, align 8
  %arrayidx259 = getelementptr inbounds i16, i16* %145, i64 %idxprom257
  %146 = load i16, i16* %arrayidx259, align 2
  %conv260 = zext i16 %146 to i32
  %and261 = and i32 %conv260, 8
  %tobool262 = icmp ne i32 %and261, 0
  br i1 %tobool262, label %if.then.263, label %if.else.283

if.then.263:                                      ; preds = %if.else.256
  br label %while.cond.264

while.cond.264:                                   ; preds = %while.body.280, %if.then.263
  %147 = load i8*, i8** %cp, align 8
  %148 = load i8, i8* %147, align 1
  %conv265 = sext i8 %148 to i32
  store i32 %conv265, i32* %c, align 4
  %cmp266 = icmp ne i32 %conv265, 0
  br i1 %cmp266, label %land.rhs.268, label %land.end.279

land.rhs.268:                                     ; preds = %while.cond.264
  %149 = load i32, i32* %c, align 4
  %idxprom269 = sext i32 %149 to i64
  %call270 = call i16** @__ctype_b_loc() #9
  %150 = load i16*, i16** %call270, align 8
  %arrayidx271 = getelementptr inbounds i16, i16* %150, i64 %idxprom269
  %151 = load i16, i16* %arrayidx271, align 2
  %conv272 = zext i16 %151 to i32
  %and273 = and i32 %conv272, 8
  %tobool274 = icmp ne i32 %and273, 0
  br i1 %tobool274, label %lor.end.278, label %lor.rhs.275

lor.rhs.275:                                      ; preds = %land.rhs.268
  %152 = load i32, i32* %c, align 4
  %cmp276 = icmp eq i32 %152, 95
  br label %lor.end.278

lor.end.278:                                      ; preds = %lor.rhs.275, %land.rhs.268
  %153 = phi i1 [ true, %land.rhs.268 ], [ %cmp276, %lor.rhs.275 ]
  br label %land.end.279

land.end.279:                                     ; preds = %lor.end.278, %while.cond.264
  %154 = phi i1 [ false, %while.cond.264 ], [ %153, %lor.end.278 ]
  br i1 %154, label %while.body.280, label %while.end.282

while.body.280:                                   ; preds = %land.end.279
  %155 = load i8*, i8** %cp, align 8
  %incdec.ptr281 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %incdec.ptr281, i8** %cp, align 8
  br label %while.cond.264

while.end.282:                                    ; preds = %land.end.279
  %156 = load i8*, i8** %cp, align 8
  store i8* %156, i8** %nextcp, align 8
  br label %if.end.338

if.else.283:                                      ; preds = %if.else.256
  %157 = load i32, i32* %c, align 4
  %cmp284 = icmp eq i32 %157, 58
  br i1 %cmp284, label %land.lhs.true.286, label %if.else.298

land.lhs.true.286:                                ; preds = %if.else.283
  %158 = load i8*, i8** %cp, align 8
  %arrayidx287 = getelementptr inbounds i8, i8* %158, i64 1
  %159 = load i8, i8* %arrayidx287, align 1
  %conv288 = sext i8 %159 to i32
  %cmp289 = icmp eq i32 %conv288, 58
  br i1 %cmp289, label %land.lhs.true.291, label %if.else.298

land.lhs.true.291:                                ; preds = %land.lhs.true.286
  %160 = load i8*, i8** %cp, align 8
  %arrayidx292 = getelementptr inbounds i8, i8* %160, i64 2
  %161 = load i8, i8* %arrayidx292, align 1
  %conv293 = sext i8 %161 to i32
  %cmp294 = icmp eq i32 %conv293, 61
  br i1 %cmp294, label %if.then.296, label %if.else.298

if.then.296:                                      ; preds = %land.lhs.true.291
  %162 = load i8*, i8** %cp, align 8
  %add.ptr297 = getelementptr inbounds i8, i8* %162, i64 3
  store i8* %add.ptr297, i8** %cp, align 8
  %163 = load i8*, i8** %cp, align 8
  store i8* %163, i8** %nextcp, align 8
  br label %if.end.337

if.else.298:                                      ; preds = %land.lhs.true.291, %land.lhs.true.286, %if.else.283
  %164 = load i32, i32* %c, align 4
  %cmp299 = icmp eq i32 %164, 47
  br i1 %cmp299, label %land.lhs.true.304, label %lor.lhs.false.301

lor.lhs.false.301:                                ; preds = %if.else.298
  %165 = load i32, i32* %c, align 4
  %cmp302 = icmp eq i32 %165, 124
  br i1 %cmp302, label %land.lhs.true.304, label %if.else.334

land.lhs.true.304:                                ; preds = %lor.lhs.false.301, %if.else.298
  %166 = load i8*, i8** %cp, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %166, i64 1
  %167 = load i8, i8* %arrayidx305, align 1
  %conv306 = sext i8 %167 to i32
  %idxprom307 = sext i32 %conv306 to i64
  %call308 = call i16** @__ctype_b_loc() #9
  %168 = load i16*, i16** %call308, align 8
  %arrayidx309 = getelementptr inbounds i16, i16* %168, i64 %idxprom307
  %169 = load i16, i16* %arrayidx309, align 2
  %conv310 = zext i16 %169 to i32
  %and311 = and i32 %conv310, 1024
  %tobool312 = icmp ne i32 %and311, 0
  br i1 %tobool312, label %if.then.313, label %if.else.334

if.then.313:                                      ; preds = %land.lhs.true.304
  %170 = load i8*, i8** %cp, align 8
  %add.ptr314 = getelementptr inbounds i8, i8* %170, i64 2
  store i8* %add.ptr314, i8** %cp, align 8
  br label %while.cond.315

while.cond.315:                                   ; preds = %while.body.331, %if.then.313
  %171 = load i8*, i8** %cp, align 8
  %172 = load i8, i8* %171, align 1
  %conv316 = sext i8 %172 to i32
  store i32 %conv316, i32* %c, align 4
  %cmp317 = icmp ne i32 %conv316, 0
  br i1 %cmp317, label %land.rhs.319, label %land.end.330

land.rhs.319:                                     ; preds = %while.cond.315
  %173 = load i32, i32* %c, align 4
  %idxprom320 = sext i32 %173 to i64
  %call321 = call i16** @__ctype_b_loc() #9
  %174 = load i16*, i16** %call321, align 8
  %arrayidx322 = getelementptr inbounds i16, i16* %174, i64 %idxprom320
  %175 = load i16, i16* %arrayidx322, align 2
  %conv323 = zext i16 %175 to i32
  %and324 = and i32 %conv323, 8
  %tobool325 = icmp ne i32 %and324, 0
  br i1 %tobool325, label %lor.end.329, label %lor.rhs.326

lor.rhs.326:                                      ; preds = %land.rhs.319
  %176 = load i32, i32* %c, align 4
  %cmp327 = icmp eq i32 %176, 95
  br label %lor.end.329

lor.end.329:                                      ; preds = %lor.rhs.326, %land.rhs.319
  %177 = phi i1 [ true, %land.rhs.319 ], [ %cmp327, %lor.rhs.326 ]
  br label %land.end.330

land.end.330:                                     ; preds = %lor.end.329, %while.cond.315
  %178 = phi i1 [ false, %while.cond.315 ], [ %177, %lor.end.329 ]
  br i1 %178, label %while.body.331, label %while.end.333

while.body.331:                                   ; preds = %land.end.330
  %179 = load i8*, i8** %cp, align 8
  %incdec.ptr332 = getelementptr inbounds i8, i8* %179, i32 1
  store i8* %incdec.ptr332, i8** %cp, align 8
  br label %while.cond.315

while.end.333:                                    ; preds = %land.end.330
  %180 = load i8*, i8** %cp, align 8
  store i8* %180, i8** %nextcp, align 8
  br label %if.end.336

if.else.334:                                      ; preds = %land.lhs.true.304, %lor.lhs.false.301
  %181 = load i8*, i8** %cp, align 8
  %incdec.ptr335 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr335, i8** %cp, align 8
  %182 = load i8*, i8** %cp, align 8
  store i8* %182, i8** %nextcp, align 8
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.334, %while.end.333
  br label %if.end.337

if.end.337:                                       ; preds = %if.end.336, %if.then.296
  br label %if.end.338

if.end.338:                                       ; preds = %if.end.337, %while.end.282
  br label %if.end.339

if.end.339:                                       ; preds = %if.end.338, %if.end.255
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.339, %if.end.118
  %183 = load i8*, i8** %cp, align 8
  %184 = load i8, i8* %183, align 1
  %conv341 = sext i8 %184 to i32
  store i32 %conv341, i32* %c, align 4
  %185 = load i8*, i8** %cp, align 8
  store i8 0, i8* %185, align 1
  call void @parseonetoken(%struct.pstate* %ps)
  %186 = load i32, i32* %c, align 4
  %conv342 = trunc i32 %186 to i8
  %187 = load i8*, i8** %cp, align 8
  store i8 %conv342, i8* %187, align 1
  %188 = load i8*, i8** %nextcp, align 8
  store i8* %188, i8** %cp, align 8
  br label %for.cond

for.end.343:                                      ; preds = %for.cond
  %189 = load i8*, i8** %filebuf, align 8
  call void @free(i8* %189) #4
  %firstrule = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 18
  %190 = load %struct.rule*, %struct.rule** %firstrule, align 8
  %191 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %191, i32 0, i32 1
  store %struct.rule* %190, %struct.rule** %rule, align 8
  %errorcnt344 = getelementptr inbounds %struct.pstate, %struct.pstate* %ps, i32 0, i32 2
  %192 = load i32, i32* %errorcnt344, align 4
  %193 = load %struct.lemon*, %struct.lemon** %gp.addr, align 8
  %errorcnt345 = getelementptr inbounds %struct.lemon, %struct.lemon* %193, i32 0, i32 7
  store i32 %192, i32* %errorcnt345, align 4
  br label %return

return:                                           ; preds = %for.end.343, %if.then.23, %if.then.12, %if.then
  ret void
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare void @rewind(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal void @preprocess_input(i8* %z) #0 {
entry:
  %z.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %exclude = alloca i32, align 4
  %start = alloca i32, align 4
  %lineno = alloca i32, align 4
  %start_lineno = alloca i32, align 4
  store i8* %z, i8** %z.addr, align 8
  store i32 0, i32* %exclude, align 4
  store i32 0, i32* %start, align 4
  store i32 1, i32* %lineno, align 4
  store i32 1, i32* %start_lineno, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.202, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %z.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end.204

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %z.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  %5 = load i8, i8* %arrayidx2, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load i8*, i8** %z.addr, align 8
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %9 to i32
  %cmp7 = icmp ne i32 %conv6, 37
  br i1 %cmp7, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %cmp9 = icmp sgt i32 %10, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 1
  %idxprom11 = sext i32 %sub to i64
  %12 = load i8*, i8** %z.addr, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %12, i64 %idxprom11
  %13 = load i8, i8* %arrayidx12, align 1
  %conv13 = sext i8 %13 to i32
  %cmp14 = icmp ne i32 %conv13, 10
  br i1 %cmp14, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true, %if.end
  br label %for.inc.202

if.end.17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %14 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %14 to i64
  %15 = load i8*, i8** %z.addr, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %15, i64 %idxprom18
  %call = call i32 @strncmp(i8* %arrayidx19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.173, i32 0, i32 0), i64 6) #8
  %cmp20 = icmp eq i32 %call, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %if.end.17
  %16 = load i32, i32* %i, align 4
  %add = add nsw i32 %16, 6
  %idxprom23 = sext i32 %add to i64
  %17 = load i8*, i8** %z.addr, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %17, i64 %idxprom23
  %18 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %18 to i32
  %idxprom26 = sext i32 %conv25 to i64
  %call27 = call i16** @__ctype_b_loc() #9
  %19 = load i16*, i16** %call27, align 8
  %arrayidx28 = getelementptr inbounds i16, i16* %19, i64 %idxprom26
  %20 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %20 to i32
  %and = and i32 %conv29, 8192
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true.22
  %21 = load i32, i32* %exclude, align 4
  %tobool32 = icmp ne i32 %21, 0
  br i1 %tobool32, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %if.then.31
  %22 = load i32, i32* %exclude, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %exclude, align 4
  %23 = load i32, i32* %exclude, align 4
  %cmp34 = icmp eq i32 %23, 0
  br i1 %cmp34, label %if.then.36, label %if.end.51

if.then.36:                                       ; preds = %if.then.33
  %24 = load i32, i32* %start, align 4
  store i32 %24, i32* %j, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc, %if.then.36
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %i, align 4
  %cmp38 = icmp slt i32 %25, %26
  br i1 %cmp38, label %for.body.40, label %for.end

for.body.40:                                      ; preds = %for.cond.37
  %27 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %27 to i64
  %28 = load i8*, i8** %z.addr, align 8
  %arrayidx42 = getelementptr inbounds i8, i8* %28, i64 %idxprom41
  %29 = load i8, i8* %arrayidx42, align 1
  %conv43 = sext i8 %29 to i32
  %cmp44 = icmp ne i32 %conv43, 10
  br i1 %cmp44, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %for.body.40
  %30 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %30 to i64
  %31 = load i8*, i8** %z.addr, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %31, i64 %idxprom47
  store i8 32, i8* %arrayidx48, align 1
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %for.body.40
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %32 = load i32, i32* %j, align 4
  %inc50 = add nsw i32 %32, 1
  store i32 %inc50, i32* %j, align 4
  br label %for.cond.37

for.end:                                          ; preds = %for.cond.37
  br label %if.end.51

if.end.51:                                        ; preds = %for.end, %if.then.33
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.31
  %33 = load i32, i32* %i, align 4
  store i32 %33, i32* %j, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.66, %if.end.52
  %34 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %34 to i64
  %35 = load i8*, i8** %z.addr, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %35, i64 %idxprom54
  %36 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %36 to i32
  %tobool57 = icmp ne i32 %conv56, 0
  br i1 %tobool57, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.53
  %37 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %37 to i64
  %38 = load i8*, i8** %z.addr, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %38, i64 %idxprom58
  %39 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %39 to i32
  %cmp61 = icmp ne i32 %conv60, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.53
  %40 = phi i1 [ false, %for.cond.53 ], [ %cmp61, %land.rhs ]
  br i1 %40, label %for.body.63, label %for.end.68

for.body.63:                                      ; preds = %land.end
  %41 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %41 to i64
  %42 = load i8*, i8** %z.addr, align 8
  %arrayidx65 = getelementptr inbounds i8, i8* %42, i64 %idxprom64
  store i8 32, i8* %arrayidx65, align 1
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.63
  %43 = load i32, i32* %j, align 4
  %inc67 = add nsw i32 %43, 1
  store i32 %inc67, i32* %j, align 4
  br label %for.cond.53

for.end.68:                                       ; preds = %land.end
  br label %if.end.201

if.else:                                          ; preds = %land.lhs.true.22, %if.end.17
  %44 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %44 to i64
  %45 = load i8*, i8** %z.addr, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %45, i64 %idxprom69
  %call71 = call i32 @strncmp(i8* %arrayidx70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.174, i32 0, i32 0), i64 6) #8
  %cmp72 = icmp eq i32 %call71, 0
  br i1 %cmp72, label %land.lhs.true.74, label %lor.lhs.false.85

land.lhs.true.74:                                 ; preds = %if.else
  %46 = load i32, i32* %i, align 4
  %add75 = add nsw i32 %46, 6
  %idxprom76 = sext i32 %add75 to i64
  %47 = load i8*, i8** %z.addr, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %47, i64 %idxprom76
  %48 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %48 to i32
  %idxprom79 = sext i32 %conv78 to i64
  %call80 = call i16** @__ctype_b_loc() #9
  %49 = load i16*, i16** %call80, align 8
  %arrayidx81 = getelementptr inbounds i16, i16* %49, i64 %idxprom79
  %50 = load i16, i16* %arrayidx81, align 2
  %conv82 = zext i16 %50 to i32
  %and83 = and i32 %conv82, 8192
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.102, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.74, %if.else
  %51 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %51 to i64
  %52 = load i8*, i8** %z.addr, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %52, i64 %idxprom86
  %call88 = call i32 @strncmp(i8* %arrayidx87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.175, i32 0, i32 0), i64 7) #8
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.200

land.lhs.true.91:                                 ; preds = %lor.lhs.false.85
  %53 = load i32, i32* %i, align 4
  %add92 = add nsw i32 %53, 7
  %idxprom93 = sext i32 %add92 to i64
  %54 = load i8*, i8** %z.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %54, i64 %idxprom93
  %55 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %55 to i32
  %idxprom96 = sext i32 %conv95 to i64
  %call97 = call i16** @__ctype_b_loc() #9
  %56 = load i16*, i16** %call97, align 8
  %arrayidx98 = getelementptr inbounds i16, i16* %56, i64 %idxprom96
  %57 = load i16, i16* %arrayidx98, align 2
  %conv99 = zext i16 %57 to i32
  %and100 = and i32 %conv99, 8192
  %tobool101 = icmp ne i32 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.200

if.then.102:                                      ; preds = %land.lhs.true.91, %land.lhs.true.74
  %58 = load i32, i32* %exclude, align 4
  %tobool103 = icmp ne i32 %58, 0
  br i1 %tobool103, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %if.then.102
  %59 = load i32, i32* %exclude, align 4
  %inc105 = add nsw i32 %59, 1
  store i32 %inc105, i32* %exclude, align 4
  br label %if.end.181

if.else.106:                                      ; preds = %if.then.102
  %60 = load i32, i32* %i, align 4
  %add107 = add nsw i32 %60, 7
  store i32 %add107, i32* %j, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.119, %if.else.106
  %61 = load i32, i32* %j, align 4
  %idxprom109 = sext i32 %61 to i64
  %62 = load i8*, i8** %z.addr, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %62, i64 %idxprom109
  %63 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %63 to i32
  %idxprom112 = sext i32 %conv111 to i64
  %call113 = call i16** @__ctype_b_loc() #9
  %64 = load i16*, i16** %call113, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %64, i64 %idxprom112
  %65 = load i16, i16* %arrayidx114, align 2
  %conv115 = zext i16 %65 to i32
  %and116 = and i32 %conv115, 8192
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %for.body.118, label %for.end.121

for.body.118:                                     ; preds = %for.cond.108
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.118
  %66 = load i32, i32* %j, align 4
  %inc120 = add nsw i32 %66, 1
  store i32 %inc120, i32* %j, align 4
  br label %for.cond.108

for.end.121:                                      ; preds = %for.cond.108
  store i32 0, i32* %n, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.141, %for.end.121
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %n, align 4
  %add123 = add nsw i32 %67, %68
  %idxprom124 = sext i32 %add123 to i64
  %69 = load i8*, i8** %z.addr, align 8
  %arrayidx125 = getelementptr inbounds i8, i8* %69, i64 %idxprom124
  %70 = load i8, i8* %arrayidx125, align 1
  %conv126 = sext i8 %70 to i32
  %tobool127 = icmp ne i32 %conv126, 0
  br i1 %tobool127, label %land.rhs.128, label %land.end.139

land.rhs.128:                                     ; preds = %for.cond.122
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %n, align 4
  %add129 = add nsw i32 %71, %72
  %idxprom130 = sext i32 %add129 to i64
  %73 = load i8*, i8** %z.addr, align 8
  %arrayidx131 = getelementptr inbounds i8, i8* %73, i64 %idxprom130
  %74 = load i8, i8* %arrayidx131, align 1
  %conv132 = sext i8 %74 to i32
  %idxprom133 = sext i32 %conv132 to i64
  %call134 = call i16** @__ctype_b_loc() #9
  %75 = load i16*, i16** %call134, align 8
  %arrayidx135 = getelementptr inbounds i16, i16* %75, i64 %idxprom133
  %76 = load i16, i16* %arrayidx135, align 2
  %conv136 = zext i16 %76 to i32
  %and137 = and i32 %conv136, 8192
  %tobool138 = icmp ne i32 %and137, 0
  %lnot = xor i1 %tobool138, true
  br label %land.end.139

land.end.139:                                     ; preds = %land.rhs.128, %for.cond.122
  %77 = phi i1 [ false, %for.cond.122 ], [ %lnot, %land.rhs.128 ]
  br i1 %77, label %for.body.140, label %for.end.143

for.body.140:                                     ; preds = %land.end.139
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.body.140
  %78 = load i32, i32* %n, align 4
  %inc142 = add nsw i32 %78, 1
  store i32 %inc142, i32* %n, align 4
  br label %for.cond.122

for.end.143:                                      ; preds = %land.end.139
  store i32 1, i32* %exclude, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.165, %for.end.143
  %79 = load i32, i32* %k, align 4
  %80 = load i32, i32* @nDefine, align 4
  %cmp145 = icmp slt i32 %79, %80
  br i1 %cmp145, label %for.body.147, label %for.end.167

for.body.147:                                     ; preds = %for.cond.144
  %81 = load i32, i32* %k, align 4
  %idxprom148 = sext i32 %81 to i64
  %82 = load i8**, i8*** @azDefine, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %82, i64 %idxprom148
  %83 = load i8*, i8** %arrayidx149, align 8
  %84 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %84 to i64
  %85 = load i8*, i8** %z.addr, align 8
  %arrayidx151 = getelementptr inbounds i8, i8* %85, i64 %idxprom150
  %86 = load i32, i32* %n, align 4
  %conv152 = sext i32 %86 to i64
  %call153 = call i32 @strncmp(i8* %83, i8* %arrayidx151, i64 %conv152) #8
  %cmp154 = icmp eq i32 %call153, 0
  br i1 %cmp154, label %land.lhs.true.156, label %if.end.164

land.lhs.true.156:                                ; preds = %for.body.147
  %87 = load i32, i32* %k, align 4
  %idxprom157 = sext i32 %87 to i64
  %88 = load i8**, i8*** @azDefine, align 8
  %arrayidx158 = getelementptr inbounds i8*, i8** %88, i64 %idxprom157
  %89 = load i8*, i8** %arrayidx158, align 8
  %call159 = call i64 @strlen(i8* %89) #8
  %90 = load i32, i32* %n, align 4
  %conv160 = sext i32 %90 to i64
  %cmp161 = icmp eq i64 %call159, %conv160
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %land.lhs.true.156
  store i32 0, i32* %exclude, align 4
  br label %for.end.167

if.end.164:                                       ; preds = %land.lhs.true.156, %for.body.147
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %91 = load i32, i32* %k, align 4
  %inc166 = add nsw i32 %91, 1
  store i32 %inc166, i32* %k, align 4
  br label %for.cond.144

for.end.167:                                      ; preds = %if.then.163, %for.cond.144
  %92 = load i32, i32* %i, align 4
  %add168 = add nsw i32 %92, 3
  %idxprom169 = sext i32 %add168 to i64
  %93 = load i8*, i8** %z.addr, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %93, i64 %idxprom169
  %94 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %94 to i32
  %cmp172 = icmp eq i32 %conv171, 110
  br i1 %cmp172, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %for.end.167
  %95 = load i32, i32* %exclude, align 4
  %tobool175 = icmp ne i32 %95, 0
  %lnot176 = xor i1 %tobool175, true
  %lnot.ext = zext i1 %lnot176 to i32
  store i32 %lnot.ext, i32* %exclude, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %for.end.167
  %96 = load i32, i32* %exclude, align 4
  %tobool178 = icmp ne i32 %96, 0
  br i1 %tobool178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.177
  %97 = load i32, i32* %i, align 4
  store i32 %97, i32* %start, align 4
  %98 = load i32, i32* %lineno, align 4
  store i32 %98, i32* %start_lineno, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.179, %if.end.177
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.104
  %99 = load i32, i32* %i, align 4
  store i32 %99, i32* %j, align 4
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.197, %if.end.181
  %100 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %100 to i64
  %101 = load i8*, i8** %z.addr, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %101, i64 %idxprom183
  %102 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %102 to i32
  %tobool186 = icmp ne i32 %conv185, 0
  br i1 %tobool186, label %land.rhs.187, label %land.end.193

land.rhs.187:                                     ; preds = %for.cond.182
  %103 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %103 to i64
  %104 = load i8*, i8** %z.addr, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %104, i64 %idxprom188
  %105 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %105 to i32
  %cmp191 = icmp ne i32 %conv190, 10
  br label %land.end.193

land.end.193:                                     ; preds = %land.rhs.187, %for.cond.182
  %106 = phi i1 [ false, %for.cond.182 ], [ %cmp191, %land.rhs.187 ]
  br i1 %106, label %for.body.194, label %for.end.199

for.body.194:                                     ; preds = %land.end.193
  %107 = load i32, i32* %j, align 4
  %idxprom195 = sext i32 %107 to i64
  %108 = load i8*, i8** %z.addr, align 8
  %arrayidx196 = getelementptr inbounds i8, i8* %108, i64 %idxprom195
  store i8 32, i8* %arrayidx196, align 1
  br label %for.inc.197

for.inc.197:                                      ; preds = %for.body.194
  %109 = load i32, i32* %j, align 4
  %inc198 = add nsw i32 %109, 1
  store i32 %inc198, i32* %j, align 4
  br label %for.cond.182

for.end.199:                                      ; preds = %land.end.193
  br label %if.end.200

if.end.200:                                       ; preds = %for.end.199, %land.lhs.true.91, %lor.lhs.false.85
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %for.end.68
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.201, %if.then.16
  %110 = load i32, i32* %i, align 4
  %inc203 = add nsw i32 %110, 1
  store i32 %inc203, i32* %i, align 4
  br label %for.cond

for.end.204:                                      ; preds = %for.cond
  %111 = load i32, i32* %exclude, align 4
  %tobool205 = icmp ne i32 %111, 0
  br i1 %tobool205, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %for.end.204
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %113 = load i32, i32* %start_lineno, align 4
  %call207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.176, i32 0, i32 0), i32 %113)
  call void @exit(i32 1) #7
  unreachable

if.end.208:                                       ; preds = %for.end.204
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parseonetoken(%struct.pstate* %psp) #0 {
entry:
  %psp.addr = alloca %struct.pstate*, align 8
  %x = alloca i8*, align 8
  %rp = alloca %struct.rule*, align 8
  %i = alloca i32, align 4
  %msp = alloca %struct.symbol*, align 8
  %origsp = alloca %struct.symbol*, align 8
  %sp = alloca %struct.symbol*, align 8
  %sp698 = alloca %struct.symbol*, align 8
  %sp721 = alloca %struct.symbol*, align 8
  %sp831 = alloca %struct.symbol*, align 8
  %sp876 = alloca %struct.symbol*, align 8
  store %struct.pstate* %psp, %struct.pstate** %psp.addr, align 8
  %0 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenstart = getelementptr inbounds %struct.pstate, %struct.pstate* %0, i32 0, i32 3
  %1 = load i8*, i8** %tokenstart, align 8
  %call = call i8* @Strsafe(i8* %1)
  store i8* %call, i8** %x, align 8
  %2 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state = getelementptr inbounds %struct.pstate, %struct.pstate* %2, i32 0, i32 5
  %3 = load i32, i32* %state, align 4
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 12, label %sw.bb.54
    i32 13, label %sw.bb.94
    i32 5, label %sw.bb.106
    i32 7, label %sw.bb.138
    i32 8, label %sw.bb.159
    i32 9, label %sw.bb.174
    i32 6, label %sw.bb.201
    i32 10, label %sw.bb.400
    i32 11, label %sw.bb.429
    i32 2, label %sw.bb.444
    i32 16, label %sw.bb.661
    i32 17, label %sw.bb.682
    i32 4, label %sw.bb.704
    i32 3, label %sw.bb.742
    i32 18, label %sw.bb.809
    i32 19, label %sw.bb.854
    i32 14, label %sw.bb.892
    i32 15, label %sw.bb.892
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule = getelementptr inbounds %struct.pstate, %struct.pstate* %4, i32 0, i32 12
  store %struct.rule* null, %struct.rule** %prevrule, align 8
  %5 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %preccounter = getelementptr inbounds %struct.pstate, %struct.pstate* %5, i32 0, i32 17
  store i32 0, i32* %preccounter, align 4
  %6 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lastrule = getelementptr inbounds %struct.pstate, %struct.pstate* %6, i32 0, i32 19
  store %struct.rule* null, %struct.rule** %lastrule, align 8
  %7 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %firstrule = getelementptr inbounds %struct.pstate, %struct.pstate* %7, i32 0, i32 18
  store %struct.rule* null, %struct.rule** %firstrule, align 8
  %8 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp = getelementptr inbounds %struct.pstate, %struct.pstate* %8, i32 0, i32 4
  %9 = load %struct.lemon*, %struct.lemon** %gp, align 8
  %nrule = getelementptr inbounds %struct.lemon, %struct.lemon* %9, i32 0, i32 3
  store i32 0, i32* %nrule, align 4
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %sw.bb
  %10 = load i8*, i8** %x, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 0
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp = icmp eq i32 %conv, 37
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %12 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state3 = getelementptr inbounds %struct.pstate, %struct.pstate* %12, i32 0, i32 5
  store i32 2, i32* %state3, align 4
  br label %if.end.53

if.else:                                          ; preds = %sw.bb.1
  %13 = load i8*, i8** %x, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %14 to i32
  %idxprom = sext i32 %conv5 to i64
  %call6 = call i16** @__ctype_b_loc() #9
  %15 = load i16*, i16** %call6, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %16 to i32
  %and = and i32 %conv8, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.else
  %17 = load i8*, i8** %x, align 8
  %call10 = call %struct.symbol* @Symbol_new(i8* %17)
  %18 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhs = getelementptr inbounds %struct.pstate, %struct.pstate* %18, i32 0, i32 7
  store %struct.symbol* %call10, %struct.symbol** %lhs, align 8
  %19 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs = getelementptr inbounds %struct.pstate, %struct.pstate* %19, i32 0, i32 9
  store i32 0, i32* %nrhs, align 4
  %20 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias = getelementptr inbounds %struct.pstate, %struct.pstate* %20, i32 0, i32 8
  store i8* null, i8** %lhsalias, align 8
  %21 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state11 = getelementptr inbounds %struct.pstate, %struct.pstate* %21, i32 0, i32 5
  store i32 5, i32* %state11, align 4
  br label %if.end.52

if.else.12:                                       ; preds = %if.else
  %22 = load i8*, i8** %x, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %22, i64 0
  %23 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %23 to i32
  %cmp15 = icmp eq i32 %conv14, 123
  br i1 %cmp15, label %if.then.17, label %if.else.38

if.then.17:                                       ; preds = %if.else.12
  %24 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule18 = getelementptr inbounds %struct.pstate, %struct.pstate* %24, i32 0, i32 12
  %25 = load %struct.rule*, %struct.rule** %prevrule18, align 8
  %cmp19 = icmp eq %struct.rule* %25, null
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.then.17
  %26 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename = getelementptr inbounds %struct.pstate, %struct.pstate* %26, i32 0, i32 0
  %27 = load i8*, i8** %filename, align 8
  %28 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno = getelementptr inbounds %struct.pstate, %struct.pstate* %28, i32 0, i32 1
  %29 = load i32, i32* %tokenlineno, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %27, i32 %29, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.177, i32 0, i32 0))
  %30 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.pstate, %struct.pstate* %30, i32 0, i32 2
  %31 = load i32, i32* %errorcnt, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %errorcnt, align 4
  br label %if.end.37

if.else.22:                                       ; preds = %if.then.17
  %32 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule23 = getelementptr inbounds %struct.pstate, %struct.pstate* %32, i32 0, i32 12
  %33 = load %struct.rule*, %struct.rule** %prevrule23, align 8
  %code = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 8
  %34 = load i8*, i8** %code, align 8
  %cmp24 = icmp ne i8* %34, null
  br i1 %cmp24, label %if.then.26, label %if.else.31

if.then.26:                                       ; preds = %if.else.22
  %35 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename27 = getelementptr inbounds %struct.pstate, %struct.pstate* %35, i32 0, i32 0
  %36 = load i8*, i8** %filename27, align 8
  %37 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno28 = getelementptr inbounds %struct.pstate, %struct.pstate* %37, i32 0, i32 1
  %38 = load i32, i32* %tokenlineno28, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %36, i32 %38, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.178, i32 0, i32 0))
  %39 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt29 = getelementptr inbounds %struct.pstate, %struct.pstate* %39, i32 0, i32 2
  %40 = load i32, i32* %errorcnt29, align 4
  %inc30 = add nsw i32 %40, 1
  store i32 %inc30, i32* %errorcnt29, align 4
  br label %if.end

if.else.31:                                       ; preds = %if.else.22
  %41 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno32 = getelementptr inbounds %struct.pstate, %struct.pstate* %41, i32 0, i32 1
  %42 = load i32, i32* %tokenlineno32, align 4
  %43 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule33 = getelementptr inbounds %struct.pstate, %struct.pstate* %43, i32 0, i32 12
  %44 = load %struct.rule*, %struct.rule** %prevrule33, align 8
  %line = getelementptr inbounds %struct.rule, %struct.rule* %44, i32 0, i32 7
  store i32 %42, i32* %line, align 4
  %45 = load i8*, i8** %x, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %45, i64 1
  %46 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule35 = getelementptr inbounds %struct.pstate, %struct.pstate* %46, i32 0, i32 12
  %47 = load %struct.rule*, %struct.rule** %prevrule35, align 8
  %code36 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 8
  store i8* %arrayidx34, i8** %code36, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.31, %if.then.26
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.21
  br label %if.end.51

if.else.38:                                       ; preds = %if.else.12
  %48 = load i8*, i8** %x, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %48, i64 0
  %49 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %49 to i32
  %cmp41 = icmp eq i32 %conv40, 91
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.38
  %50 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state44 = getelementptr inbounds %struct.pstate, %struct.pstate* %50, i32 0, i32 5
  store i32 12, i32* %state44, align 4
  br label %if.end.50

if.else.45:                                       ; preds = %if.else.38
  %51 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename46 = getelementptr inbounds %struct.pstate, %struct.pstate* %51, i32 0, i32 0
  %52 = load i8*, i8** %filename46, align 8
  %53 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno47 = getelementptr inbounds %struct.pstate, %struct.pstate* %53, i32 0, i32 1
  %54 = load i32, i32* %tokenlineno47, align 4
  %55 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %52, i32 %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.179, i32 0, i32 0), i8* %55)
  %56 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt48 = getelementptr inbounds %struct.pstate, %struct.pstate* %56, i32 0, i32 2
  %57 = load i32, i32* %errorcnt48, align 4
  %inc49 = add nsw i32 %57, 1
  store i32 %inc49, i32* %errorcnt48, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.then.43
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.9
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %58 = load i8*, i8** %x, align 8
  %arrayidx55 = getelementptr inbounds i8, i8* %58, i64 0
  %59 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %59 to i32
  %idxprom57 = sext i32 %conv56 to i64
  %call58 = call i16** @__ctype_b_loc() #9
  %60 = load i16*, i16** %call58, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %60, i64 %idxprom57
  %61 = load i16, i16* %arrayidx59, align 2
  %conv60 = zext i16 %61 to i32
  %and61 = and i32 %conv60, 256
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.else.68, label %if.then.63

if.then.63:                                       ; preds = %sw.bb.54
  %62 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename64 = getelementptr inbounds %struct.pstate, %struct.pstate* %62, i32 0, i32 0
  %63 = load i8*, i8** %filename64, align 8
  %64 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno65 = getelementptr inbounds %struct.pstate, %struct.pstate* %64, i32 0, i32 1
  %65 = load i32, i32* %tokenlineno65, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %63, i32 %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.180, i32 0, i32 0))
  %66 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt66 = getelementptr inbounds %struct.pstate, %struct.pstate* %66, i32 0, i32 2
  %67 = load i32, i32* %errorcnt66, align 4
  %inc67 = add nsw i32 %67, 1
  store i32 %inc67, i32* %errorcnt66, align 4
  br label %if.end.92

if.else.68:                                       ; preds = %sw.bb.54
  %68 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule69 = getelementptr inbounds %struct.pstate, %struct.pstate* %68, i32 0, i32 12
  %69 = load %struct.rule*, %struct.rule** %prevrule69, align 8
  %cmp70 = icmp eq %struct.rule* %69, null
  br i1 %cmp70, label %if.then.72, label %if.else.77

if.then.72:                                       ; preds = %if.else.68
  %70 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename73 = getelementptr inbounds %struct.pstate, %struct.pstate* %70, i32 0, i32 0
  %71 = load i8*, i8** %filename73, align 8
  %72 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno74 = getelementptr inbounds %struct.pstate, %struct.pstate* %72, i32 0, i32 1
  %73 = load i32, i32* %tokenlineno74, align 4
  %74 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %71, i32 %73, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.181, i32 0, i32 0), i8* %74)
  %75 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt75 = getelementptr inbounds %struct.pstate, %struct.pstate* %75, i32 0, i32 2
  %76 = load i32, i32* %errorcnt75, align 4
  %inc76 = add nsw i32 %76, 1
  store i32 %inc76, i32* %errorcnt75, align 4
  br label %if.end.91

if.else.77:                                       ; preds = %if.else.68
  %77 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule78 = getelementptr inbounds %struct.pstate, %struct.pstate* %77, i32 0, i32 12
  %78 = load %struct.rule*, %struct.rule** %prevrule78, align 8
  %precsym = getelementptr inbounds %struct.rule, %struct.rule* %78, i32 0, i32 9
  %79 = load %struct.symbol*, %struct.symbol** %precsym, align 8
  %cmp79 = icmp ne %struct.symbol* %79, null
  br i1 %cmp79, label %if.then.81, label %if.else.86

if.then.81:                                       ; preds = %if.else.77
  %80 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename82 = getelementptr inbounds %struct.pstate, %struct.pstate* %80, i32 0, i32 0
  %81 = load i8*, i8** %filename82, align 8
  %82 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno83 = getelementptr inbounds %struct.pstate, %struct.pstate* %82, i32 0, i32 1
  %83 = load i32, i32* %tokenlineno83, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %81, i32 %83, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.182, i32 0, i32 0))
  %84 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt84 = getelementptr inbounds %struct.pstate, %struct.pstate* %84, i32 0, i32 2
  %85 = load i32, i32* %errorcnt84, align 4
  %inc85 = add nsw i32 %85, 1
  store i32 %inc85, i32* %errorcnt84, align 4
  br label %if.end.90

if.else.86:                                       ; preds = %if.else.77
  %86 = load i8*, i8** %x, align 8
  %call87 = call %struct.symbol* @Symbol_new(i8* %86)
  %87 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule88 = getelementptr inbounds %struct.pstate, %struct.pstate* %87, i32 0, i32 12
  %88 = load %struct.rule*, %struct.rule** %prevrule88, align 8
  %precsym89 = getelementptr inbounds %struct.rule, %struct.rule* %88, i32 0, i32 9
  store %struct.symbol* %call87, %struct.symbol** %precsym89, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.86, %if.then.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.72
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.63
  %89 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state93 = getelementptr inbounds %struct.pstate, %struct.pstate* %89, i32 0, i32 5
  store i32 13, i32* %state93, align 4
  br label %sw.epilog

sw.bb.94:                                         ; preds = %entry
  %90 = load i8*, i8** %x, align 8
  %arrayidx95 = getelementptr inbounds i8, i8* %90, i64 0
  %91 = load i8, i8* %arrayidx95, align 1
  %conv96 = sext i8 %91 to i32
  %cmp97 = icmp ne i32 %conv96, 93
  br i1 %cmp97, label %if.then.99, label %if.end.104

if.then.99:                                       ; preds = %sw.bb.94
  %92 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename100 = getelementptr inbounds %struct.pstate, %struct.pstate* %92, i32 0, i32 0
  %93 = load i8*, i8** %filename100, align 8
  %94 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno101 = getelementptr inbounds %struct.pstate, %struct.pstate* %94, i32 0, i32 1
  %95 = load i32, i32* %tokenlineno101, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %93, i32 %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.183, i32 0, i32 0))
  %96 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt102 = getelementptr inbounds %struct.pstate, %struct.pstate* %96, i32 0, i32 2
  %97 = load i32, i32* %errorcnt102, align 4
  %inc103 = add nsw i32 %97, 1
  store i32 %inc103, i32* %errorcnt102, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.99, %sw.bb.94
  %98 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state105 = getelementptr inbounds %struct.pstate, %struct.pstate* %98, i32 0, i32 5
  store i32 1, i32* %state105, align 4
  br label %sw.epilog

sw.bb.106:                                        ; preds = %entry
  %99 = load i8*, i8** %x, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %99, i64 0
  %100 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %100 to i32
  %cmp109 = icmp eq i32 %conv108, 58
  br i1 %cmp109, label %land.lhs.true, label %if.else.122

land.lhs.true:                                    ; preds = %sw.bb.106
  %101 = load i8*, i8** %x, align 8
  %arrayidx111 = getelementptr inbounds i8, i8* %101, i64 1
  %102 = load i8, i8* %arrayidx111, align 1
  %conv112 = sext i8 %102 to i32
  %cmp113 = icmp eq i32 %conv112, 58
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.122

land.lhs.true.115:                                ; preds = %land.lhs.true
  %103 = load i8*, i8** %x, align 8
  %arrayidx116 = getelementptr inbounds i8, i8* %103, i64 2
  %104 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %104 to i32
  %cmp118 = icmp eq i32 %conv117, 61
  br i1 %cmp118, label %if.then.120, label %if.else.122

if.then.120:                                      ; preds = %land.lhs.true.115
  %105 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state121 = getelementptr inbounds %struct.pstate, %struct.pstate* %105, i32 0, i32 5
  store i32 6, i32* %state121, align 4
  br label %if.end.137

if.else.122:                                      ; preds = %land.lhs.true.115, %land.lhs.true, %sw.bb.106
  %106 = load i8*, i8** %x, align 8
  %arrayidx123 = getelementptr inbounds i8, i8* %106, i64 0
  %107 = load i8, i8* %arrayidx123, align 1
  %conv124 = sext i8 %107 to i32
  %cmp125 = icmp eq i32 %conv124, 40
  br i1 %cmp125, label %if.then.127, label %if.else.129

if.then.127:                                      ; preds = %if.else.122
  %108 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state128 = getelementptr inbounds %struct.pstate, %struct.pstate* %108, i32 0, i32 5
  store i32 7, i32* %state128, align 4
  br label %if.end.136

if.else.129:                                      ; preds = %if.else.122
  %109 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename130 = getelementptr inbounds %struct.pstate, %struct.pstate* %109, i32 0, i32 0
  %110 = load i8*, i8** %filename130, align 8
  %111 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno131 = getelementptr inbounds %struct.pstate, %struct.pstate* %111, i32 0, i32 1
  %112 = load i32, i32* %tokenlineno131, align 4
  %113 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhs132 = getelementptr inbounds %struct.pstate, %struct.pstate* %113, i32 0, i32 7
  %114 = load %struct.symbol*, %struct.symbol** %lhs132, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %114, i32 0, i32 0
  %115 = load i8*, i8** %name, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %110, i32 %112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.184, i32 0, i32 0), i8* %115)
  %116 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt133 = getelementptr inbounds %struct.pstate, %struct.pstate* %116, i32 0, i32 2
  %117 = load i32, i32* %errorcnt133, align 4
  %inc134 = add nsw i32 %117, 1
  store i32 %inc134, i32* %errorcnt133, align 4
  %118 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state135 = getelementptr inbounds %struct.pstate, %struct.pstate* %118, i32 0, i32 5
  store i32 14, i32* %state135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.129, %if.then.127
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.120
  br label %sw.epilog

sw.bb.138:                                        ; preds = %entry
  %119 = load i8*, i8** %x, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %119, i64 0
  %120 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %120 to i32
  %idxprom141 = sext i32 %conv140 to i64
  %call142 = call i16** @__ctype_b_loc() #9
  %121 = load i16*, i16** %call142, align 8
  %arrayidx143 = getelementptr inbounds i16, i16* %121, i64 %idxprom141
  %122 = load i16, i16* %arrayidx143, align 2
  %conv144 = zext i16 %122 to i32
  %and145 = and i32 %conv144, 1024
  %tobool146 = icmp ne i32 %and145, 0
  br i1 %tobool146, label %if.then.147, label %if.else.150

if.then.147:                                      ; preds = %sw.bb.138
  %123 = load i8*, i8** %x, align 8
  %124 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias148 = getelementptr inbounds %struct.pstate, %struct.pstate* %124, i32 0, i32 8
  store i8* %123, i8** %lhsalias148, align 8
  %125 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state149 = getelementptr inbounds %struct.pstate, %struct.pstate* %125, i32 0, i32 5
  store i32 8, i32* %state149, align 4
  br label %if.end.158

if.else.150:                                      ; preds = %sw.bb.138
  %126 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename151 = getelementptr inbounds %struct.pstate, %struct.pstate* %126, i32 0, i32 0
  %127 = load i8*, i8** %filename151, align 8
  %128 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno152 = getelementptr inbounds %struct.pstate, %struct.pstate* %128, i32 0, i32 1
  %129 = load i32, i32* %tokenlineno152, align 4
  %130 = load i8*, i8** %x, align 8
  %131 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhs153 = getelementptr inbounds %struct.pstate, %struct.pstate* %131, i32 0, i32 7
  %132 = load %struct.symbol*, %struct.symbol** %lhs153, align 8
  %name154 = getelementptr inbounds %struct.symbol, %struct.symbol* %132, i32 0, i32 0
  %133 = load i8*, i8** %name154, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %127, i32 %129, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.185, i32 0, i32 0), i8* %130, i8* %133)
  %134 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt155 = getelementptr inbounds %struct.pstate, %struct.pstate* %134, i32 0, i32 2
  %135 = load i32, i32* %errorcnt155, align 4
  %inc156 = add nsw i32 %135, 1
  store i32 %inc156, i32* %errorcnt155, align 4
  %136 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state157 = getelementptr inbounds %struct.pstate, %struct.pstate* %136, i32 0, i32 5
  store i32 14, i32* %state157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.150, %if.then.147
  br label %sw.epilog

sw.bb.159:                                        ; preds = %entry
  %137 = load i8*, i8** %x, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %137, i64 0
  %138 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %138 to i32
  %cmp162 = icmp eq i32 %conv161, 41
  br i1 %cmp162, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %sw.bb.159
  %139 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state165 = getelementptr inbounds %struct.pstate, %struct.pstate* %139, i32 0, i32 5
  store i32 9, i32* %state165, align 4
  br label %if.end.173

if.else.166:                                      ; preds = %sw.bb.159
  %140 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename167 = getelementptr inbounds %struct.pstate, %struct.pstate* %140, i32 0, i32 0
  %141 = load i8*, i8** %filename167, align 8
  %142 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno168 = getelementptr inbounds %struct.pstate, %struct.pstate* %142, i32 0, i32 1
  %143 = load i32, i32* %tokenlineno168, align 4
  %144 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias169 = getelementptr inbounds %struct.pstate, %struct.pstate* %144, i32 0, i32 8
  %145 = load i8*, i8** %lhsalias169, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %141, i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.186, i32 0, i32 0), i8* %145)
  %146 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt170 = getelementptr inbounds %struct.pstate, %struct.pstate* %146, i32 0, i32 2
  %147 = load i32, i32* %errorcnt170, align 4
  %inc171 = add nsw i32 %147, 1
  store i32 %inc171, i32* %errorcnt170, align 4
  %148 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state172 = getelementptr inbounds %struct.pstate, %struct.pstate* %148, i32 0, i32 5
  store i32 14, i32* %state172, align 4
  br label %if.end.173

if.end.173:                                       ; preds = %if.else.166, %if.then.164
  br label %sw.epilog

sw.bb.174:                                        ; preds = %entry
  %149 = load i8*, i8** %x, align 8
  %arrayidx175 = getelementptr inbounds i8, i8* %149, i64 0
  %150 = load i8, i8* %arrayidx175, align 1
  %conv176 = sext i8 %150 to i32
  %cmp177 = icmp eq i32 %conv176, 58
  br i1 %cmp177, label %land.lhs.true.179, label %if.else.191

land.lhs.true.179:                                ; preds = %sw.bb.174
  %151 = load i8*, i8** %x, align 8
  %arrayidx180 = getelementptr inbounds i8, i8* %151, i64 1
  %152 = load i8, i8* %arrayidx180, align 1
  %conv181 = sext i8 %152 to i32
  %cmp182 = icmp eq i32 %conv181, 58
  br i1 %cmp182, label %land.lhs.true.184, label %if.else.191

land.lhs.true.184:                                ; preds = %land.lhs.true.179
  %153 = load i8*, i8** %x, align 8
  %arrayidx185 = getelementptr inbounds i8, i8* %153, i64 2
  %154 = load i8, i8* %arrayidx185, align 1
  %conv186 = sext i8 %154 to i32
  %cmp187 = icmp eq i32 %conv186, 61
  br i1 %cmp187, label %if.then.189, label %if.else.191

if.then.189:                                      ; preds = %land.lhs.true.184
  %155 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state190 = getelementptr inbounds %struct.pstate, %struct.pstate* %155, i32 0, i32 5
  store i32 6, i32* %state190, align 4
  br label %if.end.200

if.else.191:                                      ; preds = %land.lhs.true.184, %land.lhs.true.179, %sw.bb.174
  %156 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename192 = getelementptr inbounds %struct.pstate, %struct.pstate* %156, i32 0, i32 0
  %157 = load i8*, i8** %filename192, align 8
  %158 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno193 = getelementptr inbounds %struct.pstate, %struct.pstate* %158, i32 0, i32 1
  %159 = load i32, i32* %tokenlineno193, align 4
  %160 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhs194 = getelementptr inbounds %struct.pstate, %struct.pstate* %160, i32 0, i32 7
  %161 = load %struct.symbol*, %struct.symbol** %lhs194, align 8
  %name195 = getelementptr inbounds %struct.symbol, %struct.symbol* %161, i32 0, i32 0
  %162 = load i8*, i8** %name195, align 8
  %163 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias196 = getelementptr inbounds %struct.pstate, %struct.pstate* %163, i32 0, i32 8
  %164 = load i8*, i8** %lhsalias196, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %157, i32 %159, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.187, i32 0, i32 0), i8* %162, i8* %164)
  %165 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt197 = getelementptr inbounds %struct.pstate, %struct.pstate* %165, i32 0, i32 2
  %166 = load i32, i32* %errorcnt197, align 4
  %inc198 = add nsw i32 %166, 1
  store i32 %inc198, i32* %errorcnt197, align 4
  %167 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state199 = getelementptr inbounds %struct.pstate, %struct.pstate* %167, i32 0, i32 5
  store i32 14, i32* %state199, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.else.191, %if.then.189
  br label %sw.epilog

sw.bb.201:                                        ; preds = %entry
  %168 = load i8*, i8** %x, align 8
  %arrayidx202 = getelementptr inbounds i8, i8* %168, i64 0
  %169 = load i8, i8* %arrayidx202, align 1
  %conv203 = sext i8 %169 to i32
  %cmp204 = icmp eq i32 %conv203, 46
  br i1 %cmp204, label %if.then.206, label %if.else.272

if.then.206:                                      ; preds = %sw.bb.201
  %170 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs207 = getelementptr inbounds %struct.pstate, %struct.pstate* %170, i32 0, i32 9
  %171 = load i32, i32* %nrhs207, align 4
  %conv208 = sext i32 %171 to i64
  %mul = mul i64 8, %conv208
  %add = add i64 96, %mul
  %172 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs209 = getelementptr inbounds %struct.pstate, %struct.pstate* %172, i32 0, i32 9
  %173 = load i32, i32* %nrhs209, align 4
  %conv210 = sext i32 %173 to i64
  %mul211 = mul i64 8, %conv210
  %add212 = add i64 %add, %mul211
  %call213 = call noalias i8* @calloc(i64 %add212, i64 1) #4
  %174 = bitcast i8* %call213 to %struct.rule*
  store %struct.rule* %174, %struct.rule** %rp, align 8
  %175 = load %struct.rule*, %struct.rule** %rp, align 8
  %cmp214 = icmp eq %struct.rule* %175, null
  br i1 %cmp214, label %if.then.216, label %if.else.222

if.then.216:                                      ; preds = %if.then.206
  %176 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename217 = getelementptr inbounds %struct.pstate, %struct.pstate* %176, i32 0, i32 0
  %177 = load i8*, i8** %filename217, align 8
  %178 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno218 = getelementptr inbounds %struct.pstate, %struct.pstate* %178, i32 0, i32 1
  %179 = load i32, i32* %tokenlineno218, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %177, i32 %179, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.188, i32 0, i32 0))
  %180 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt219 = getelementptr inbounds %struct.pstate, %struct.pstate* %180, i32 0, i32 2
  %181 = load i32, i32* %errorcnt219, align 4
  %inc220 = add nsw i32 %181, 1
  store i32 %inc220, i32* %errorcnt219, align 4
  %182 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule221 = getelementptr inbounds %struct.pstate, %struct.pstate* %182, i32 0, i32 12
  store %struct.rule* null, %struct.rule** %prevrule221, align 8
  br label %if.end.270

if.else.222:                                      ; preds = %if.then.206
  %183 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno223 = getelementptr inbounds %struct.pstate, %struct.pstate* %183, i32 0, i32 1
  %184 = load i32, i32* %tokenlineno223, align 4
  %185 = load %struct.rule*, %struct.rule** %rp, align 8
  %ruleline = getelementptr inbounds %struct.rule, %struct.rule* %185, i32 0, i32 3
  store i32 %184, i32* %ruleline, align 4
  %186 = load %struct.rule*, %struct.rule** %rp, align 8
  %arrayidx224 = getelementptr inbounds %struct.rule, %struct.rule* %186, i64 1
  %187 = bitcast %struct.rule* %arrayidx224 to %struct.symbol**
  %188 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %188, i32 0, i32 5
  store %struct.symbol** %187, %struct.symbol*** %rhs, align 8
  %189 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs225 = getelementptr inbounds %struct.pstate, %struct.pstate* %189, i32 0, i32 9
  %190 = load i32, i32* %nrhs225, align 4
  %idxprom226 = sext i32 %190 to i64
  %191 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs227 = getelementptr inbounds %struct.rule, %struct.rule* %191, i32 0, i32 5
  %192 = load %struct.symbol**, %struct.symbol*** %rhs227, align 8
  %arrayidx228 = getelementptr inbounds %struct.symbol*, %struct.symbol** %192, i64 %idxprom226
  %193 = bitcast %struct.symbol** %arrayidx228 to i8**
  %194 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhsalias = getelementptr inbounds %struct.rule, %struct.rule* %194, i32 0, i32 6
  store i8** %193, i8*** %rhsalias, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.222
  %195 = load i32, i32* %i, align 4
  %196 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs229 = getelementptr inbounds %struct.pstate, %struct.pstate* %196, i32 0, i32 9
  %197 = load i32, i32* %nrhs229, align 4
  %cmp230 = icmp slt i32 %195, %197
  br i1 %cmp230, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %198 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %198 to i64
  %199 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %rhs233 = getelementptr inbounds %struct.pstate, %struct.pstate* %199, i32 0, i32 10
  %arrayidx234 = getelementptr inbounds [1000 x %struct.symbol*], [1000 x %struct.symbol*]* %rhs233, i32 0, i64 %idxprom232
  %200 = load %struct.symbol*, %struct.symbol** %arrayidx234, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %201 to i64
  %202 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs236 = getelementptr inbounds %struct.rule, %struct.rule* %202, i32 0, i32 5
  %203 = load %struct.symbol**, %struct.symbol*** %rhs236, align 8
  %arrayidx237 = getelementptr inbounds %struct.symbol*, %struct.symbol** %203, i64 %idxprom235
  store %struct.symbol* %200, %struct.symbol** %arrayidx237, align 8
  %204 = load i32, i32* %i, align 4
  %idxprom238 = sext i32 %204 to i64
  %205 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %alias = getelementptr inbounds %struct.pstate, %struct.pstate* %205, i32 0, i32 11
  %arrayidx239 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %alias, i32 0, i64 %idxprom238
  %206 = load i8*, i8** %arrayidx239, align 8
  %207 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %207 to i64
  %208 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhsalias241 = getelementptr inbounds %struct.rule, %struct.rule* %208, i32 0, i32 6
  %209 = load i8**, i8*** %rhsalias241, align 8
  %arrayidx242 = getelementptr inbounds i8*, i8** %209, i64 %idxprom240
  store i8* %206, i8** %arrayidx242, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %210 = load i32, i32* %i, align 4
  %inc243 = add nsw i32 %210, 1
  store i32 %inc243, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %211 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhs244 = getelementptr inbounds %struct.pstate, %struct.pstate* %211, i32 0, i32 7
  %212 = load %struct.symbol*, %struct.symbol** %lhs244, align 8
  %213 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs245 = getelementptr inbounds %struct.rule, %struct.rule* %213, i32 0, i32 0
  store %struct.symbol* %212, %struct.symbol** %lhs245, align 8
  %214 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias246 = getelementptr inbounds %struct.pstate, %struct.pstate* %214, i32 0, i32 8
  %215 = load i8*, i8** %lhsalias246, align 8
  %216 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhsalias247 = getelementptr inbounds %struct.rule, %struct.rule* %216, i32 0, i32 1
  store i8* %215, i8** %lhsalias247, align 8
  %217 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs248 = getelementptr inbounds %struct.pstate, %struct.pstate* %217, i32 0, i32 9
  %218 = load i32, i32* %nrhs248, align 4
  %219 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs249 = getelementptr inbounds %struct.rule, %struct.rule* %219, i32 0, i32 4
  store i32 %218, i32* %nrhs249, align 4
  %220 = load %struct.rule*, %struct.rule** %rp, align 8
  %code250 = getelementptr inbounds %struct.rule, %struct.rule* %220, i32 0, i32 8
  store i8* null, i8** %code250, align 8
  %221 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym251 = getelementptr inbounds %struct.rule, %struct.rule* %221, i32 0, i32 9
  store %struct.symbol* null, %struct.symbol** %precsym251, align 8
  %222 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp252 = getelementptr inbounds %struct.pstate, %struct.pstate* %222, i32 0, i32 4
  %223 = load %struct.lemon*, %struct.lemon** %gp252, align 8
  %nrule253 = getelementptr inbounds %struct.lemon, %struct.lemon* %223, i32 0, i32 3
  %224 = load i32, i32* %nrule253, align 4
  %inc254 = add nsw i32 %224, 1
  store i32 %inc254, i32* %nrule253, align 4
  %225 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %225, i32 0, i32 10
  store i32 %224, i32* %index, align 4
  %226 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs255 = getelementptr inbounds %struct.rule, %struct.rule* %226, i32 0, i32 0
  %227 = load %struct.symbol*, %struct.symbol** %lhs255, align 8
  %rule = getelementptr inbounds %struct.symbol, %struct.symbol* %227, i32 0, i32 3
  %228 = load %struct.rule*, %struct.rule** %rule, align 8
  %229 = load %struct.rule*, %struct.rule** %rp, align 8
  %nextlhs = getelementptr inbounds %struct.rule, %struct.rule* %229, i32 0, i32 12
  store %struct.rule* %228, %struct.rule** %nextlhs, align 8
  %230 = load %struct.rule*, %struct.rule** %rp, align 8
  %231 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs256 = getelementptr inbounds %struct.rule, %struct.rule* %231, i32 0, i32 0
  %232 = load %struct.symbol*, %struct.symbol** %lhs256, align 8
  %rule257 = getelementptr inbounds %struct.symbol, %struct.symbol* %232, i32 0, i32 3
  store %struct.rule* %230, %struct.rule** %rule257, align 8
  %233 = load %struct.rule*, %struct.rule** %rp, align 8
  %next = getelementptr inbounds %struct.rule, %struct.rule* %233, i32 0, i32 13
  store %struct.rule* null, %struct.rule** %next, align 8
  %234 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %firstrule258 = getelementptr inbounds %struct.pstate, %struct.pstate* %234, i32 0, i32 18
  %235 = load %struct.rule*, %struct.rule** %firstrule258, align 8
  %cmp259 = icmp eq %struct.rule* %235, null
  br i1 %cmp259, label %if.then.261, label %if.else.264

if.then.261:                                      ; preds = %for.end
  %236 = load %struct.rule*, %struct.rule** %rp, align 8
  %237 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lastrule262 = getelementptr inbounds %struct.pstate, %struct.pstate* %237, i32 0, i32 19
  store %struct.rule* %236, %struct.rule** %lastrule262, align 8
  %238 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %firstrule263 = getelementptr inbounds %struct.pstate, %struct.pstate* %238, i32 0, i32 18
  store %struct.rule* %236, %struct.rule** %firstrule263, align 8
  br label %if.end.268

if.else.264:                                      ; preds = %for.end
  %239 = load %struct.rule*, %struct.rule** %rp, align 8
  %240 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lastrule265 = getelementptr inbounds %struct.pstate, %struct.pstate* %240, i32 0, i32 19
  %241 = load %struct.rule*, %struct.rule** %lastrule265, align 8
  %next266 = getelementptr inbounds %struct.rule, %struct.rule* %241, i32 0, i32 13
  store %struct.rule* %239, %struct.rule** %next266, align 8
  %242 = load %struct.rule*, %struct.rule** %rp, align 8
  %243 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lastrule267 = getelementptr inbounds %struct.pstate, %struct.pstate* %243, i32 0, i32 19
  store %struct.rule* %242, %struct.rule** %lastrule267, align 8
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.264, %if.then.261
  %244 = load %struct.rule*, %struct.rule** %rp, align 8
  %245 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %prevrule269 = getelementptr inbounds %struct.pstate, %struct.pstate* %245, i32 0, i32 12
  store %struct.rule* %244, %struct.rule** %prevrule269, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %if.end.268, %if.then.216
  %246 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state271 = getelementptr inbounds %struct.pstate, %struct.pstate* %246, i32 0, i32 5
  store i32 1, i32* %state271, align 4
  br label %if.end.399

if.else.272:                                      ; preds = %sw.bb.201
  %247 = load i8*, i8** %x, align 8
  %arrayidx273 = getelementptr inbounds i8, i8* %247, i64 0
  %248 = load i8, i8* %arrayidx273, align 1
  %conv274 = sext i8 %248 to i32
  %idxprom275 = sext i32 %conv274 to i64
  %call276 = call i16** @__ctype_b_loc() #9
  %249 = load i16*, i16** %call276, align 8
  %arrayidx277 = getelementptr inbounds i16, i16* %249, i64 %idxprom275
  %250 = load i16, i16* %arrayidx277, align 2
  %conv278 = zext i16 %250 to i32
  %and279 = and i32 %conv278, 1024
  %tobool280 = icmp ne i32 %and279, 0
  br i1 %tobool280, label %if.then.281, label %if.else.304

if.then.281:                                      ; preds = %if.else.272
  %251 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs282 = getelementptr inbounds %struct.pstate, %struct.pstate* %251, i32 0, i32 9
  %252 = load i32, i32* %nrhs282, align 4
  %cmp283 = icmp sge i32 %252, 1000
  br i1 %cmp283, label %if.then.285, label %if.else.291

if.then.285:                                      ; preds = %if.then.281
  %253 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename286 = getelementptr inbounds %struct.pstate, %struct.pstate* %253, i32 0, i32 0
  %254 = load i8*, i8** %filename286, align 8
  %255 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno287 = getelementptr inbounds %struct.pstate, %struct.pstate* %255, i32 0, i32 1
  %256 = load i32, i32* %tokenlineno287, align 4
  %257 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %254, i32 %256, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.189, i32 0, i32 0), i8* %257)
  %258 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt288 = getelementptr inbounds %struct.pstate, %struct.pstate* %258, i32 0, i32 2
  %259 = load i32, i32* %errorcnt288, align 4
  %inc289 = add nsw i32 %259, 1
  store i32 %inc289, i32* %errorcnt288, align 4
  %260 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state290 = getelementptr inbounds %struct.pstate, %struct.pstate* %260, i32 0, i32 5
  store i32 14, i32* %state290, align 4
  br label %if.end.303

if.else.291:                                      ; preds = %if.then.281
  %261 = load i8*, i8** %x, align 8
  %call292 = call %struct.symbol* @Symbol_new(i8* %261)
  %262 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs293 = getelementptr inbounds %struct.pstate, %struct.pstate* %262, i32 0, i32 9
  %263 = load i32, i32* %nrhs293, align 4
  %idxprom294 = sext i32 %263 to i64
  %264 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %rhs295 = getelementptr inbounds %struct.pstate, %struct.pstate* %264, i32 0, i32 10
  %arrayidx296 = getelementptr inbounds [1000 x %struct.symbol*], [1000 x %struct.symbol*]* %rhs295, i32 0, i64 %idxprom294
  store %struct.symbol* %call292, %struct.symbol** %arrayidx296, align 8
  %265 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs297 = getelementptr inbounds %struct.pstate, %struct.pstate* %265, i32 0, i32 9
  %266 = load i32, i32* %nrhs297, align 4
  %idxprom298 = sext i32 %266 to i64
  %267 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %alias299 = getelementptr inbounds %struct.pstate, %struct.pstate* %267, i32 0, i32 11
  %arrayidx300 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %alias299, i32 0, i64 %idxprom298
  store i8* null, i8** %arrayidx300, align 8
  %268 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs301 = getelementptr inbounds %struct.pstate, %struct.pstate* %268, i32 0, i32 9
  %269 = load i32, i32* %nrhs301, align 4
  %inc302 = add nsw i32 %269, 1
  store i32 %inc302, i32* %nrhs301, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.else.291, %if.then.285
  br label %if.end.398

if.else.304:                                      ; preds = %if.else.272
  %270 = load i8*, i8** %x, align 8
  %arrayidx305 = getelementptr inbounds i8, i8* %270, i64 0
  %271 = load i8, i8* %arrayidx305, align 1
  %conv306 = sext i8 %271 to i32
  %cmp307 = icmp eq i32 %conv306, 124
  br i1 %cmp307, label %land.lhs.true.313, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.304
  %272 = load i8*, i8** %x, align 8
  %arrayidx309 = getelementptr inbounds i8, i8* %272, i64 0
  %273 = load i8, i8* %arrayidx309, align 1
  %conv310 = sext i8 %273 to i32
  %cmp311 = icmp eq i32 %conv310, 47
  br i1 %cmp311, label %land.lhs.true.313, label %if.else.379

land.lhs.true.313:                                ; preds = %lor.lhs.false, %if.else.304
  %274 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs314 = getelementptr inbounds %struct.pstate, %struct.pstate* %274, i32 0, i32 9
  %275 = load i32, i32* %nrhs314, align 4
  %cmp315 = icmp sgt i32 %275, 0
  br i1 %cmp315, label %if.then.317, label %if.else.379

if.then.317:                                      ; preds = %land.lhs.true.313
  %276 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs318 = getelementptr inbounds %struct.pstate, %struct.pstate* %276, i32 0, i32 9
  %277 = load i32, i32* %nrhs318, align 4
  %sub = sub nsw i32 %277, 1
  %idxprom319 = sext i32 %sub to i64
  %278 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %rhs320 = getelementptr inbounds %struct.pstate, %struct.pstate* %278, i32 0, i32 10
  %arrayidx321 = getelementptr inbounds [1000 x %struct.symbol*], [1000 x %struct.symbol*]* %rhs320, i32 0, i64 %idxprom319
  %279 = load %struct.symbol*, %struct.symbol** %arrayidx321, align 8
  store %struct.symbol* %279, %struct.symbol** %msp, align 8
  %280 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %280, i32 0, i32 2
  %281 = load i32, i32* %type, align 4
  %cmp322 = icmp ne i32 %281, 2
  br i1 %cmp322, label %if.then.324, label %if.end.337

if.then.324:                                      ; preds = %if.then.317
  %282 = load %struct.symbol*, %struct.symbol** %msp, align 8
  store %struct.symbol* %282, %struct.symbol** %origsp, align 8
  %call325 = call noalias i8* @calloc(i64 1, i64 96) #4
  %283 = bitcast i8* %call325 to %struct.symbol*
  store %struct.symbol* %283, %struct.symbol** %msp, align 8
  %284 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %285 = bitcast %struct.symbol* %284 to i8*
  call void @llvm.memset.p0i8.i64(i8* %285, i8 0, i64 96, i32 8, i1 false)
  %286 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %type326 = getelementptr inbounds %struct.symbol, %struct.symbol* %286, i32 0, i32 2
  store i32 2, i32* %type326, align 4
  %287 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %287, i32 0, i32 14
  store i32 1, i32* %nsubsym, align 4
  %call327 = call noalias i8* @calloc(i64 1, i64 8) #4
  %288 = bitcast i8* %call327 to %struct.symbol**
  %289 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %289, i32 0, i32 15
  store %struct.symbol** %288, %struct.symbol*** %subsym, align 8
  %290 = load %struct.symbol*, %struct.symbol** %origsp, align 8
  %291 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym328 = getelementptr inbounds %struct.symbol, %struct.symbol* %291, i32 0, i32 15
  %292 = load %struct.symbol**, %struct.symbol*** %subsym328, align 8
  %arrayidx329 = getelementptr inbounds %struct.symbol*, %struct.symbol** %292, i64 0
  store %struct.symbol* %290, %struct.symbol** %arrayidx329, align 8
  %293 = load %struct.symbol*, %struct.symbol** %origsp, align 8
  %name330 = getelementptr inbounds %struct.symbol, %struct.symbol* %293, i32 0, i32 0
  %294 = load i8*, i8** %name330, align 8
  %295 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %name331 = getelementptr inbounds %struct.symbol, %struct.symbol* %295, i32 0, i32 0
  store i8* %294, i8** %name331, align 8
  %296 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %297 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs332 = getelementptr inbounds %struct.pstate, %struct.pstate* %297, i32 0, i32 9
  %298 = load i32, i32* %nrhs332, align 4
  %sub333 = sub nsw i32 %298, 1
  %idxprom334 = sext i32 %sub333 to i64
  %299 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %rhs335 = getelementptr inbounds %struct.pstate, %struct.pstate* %299, i32 0, i32 10
  %arrayidx336 = getelementptr inbounds [1000 x %struct.symbol*], [1000 x %struct.symbol*]* %rhs335, i32 0, i64 %idxprom334
  store %struct.symbol* %296, %struct.symbol** %arrayidx336, align 8
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.324, %if.then.317
  %300 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %nsubsym338 = getelementptr inbounds %struct.symbol, %struct.symbol* %300, i32 0, i32 14
  %301 = load i32, i32* %nsubsym338, align 4
  %inc339 = add nsw i32 %301, 1
  store i32 %inc339, i32* %nsubsym338, align 4
  %302 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym340 = getelementptr inbounds %struct.symbol, %struct.symbol* %302, i32 0, i32 15
  %303 = load %struct.symbol**, %struct.symbol*** %subsym340, align 8
  %304 = bitcast %struct.symbol** %303 to i8*
  %305 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %nsubsym341 = getelementptr inbounds %struct.symbol, %struct.symbol* %305, i32 0, i32 14
  %306 = load i32, i32* %nsubsym341, align 4
  %conv342 = sext i32 %306 to i64
  %mul343 = mul i64 8, %conv342
  %call344 = call i8* @realloc(i8* %304, i64 %mul343) #4
  %307 = bitcast i8* %call344 to %struct.symbol**
  %308 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym345 = getelementptr inbounds %struct.symbol, %struct.symbol* %308, i32 0, i32 15
  store %struct.symbol** %307, %struct.symbol*** %subsym345, align 8
  %309 = load i8*, i8** %x, align 8
  %arrayidx346 = getelementptr inbounds i8, i8* %309, i64 1
  %call347 = call %struct.symbol* @Symbol_new(i8* %arrayidx346)
  %310 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %nsubsym348 = getelementptr inbounds %struct.symbol, %struct.symbol* %310, i32 0, i32 14
  %311 = load i32, i32* %nsubsym348, align 4
  %sub349 = sub nsw i32 %311, 1
  %idxprom350 = sext i32 %sub349 to i64
  %312 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym351 = getelementptr inbounds %struct.symbol, %struct.symbol* %312, i32 0, i32 15
  %313 = load %struct.symbol**, %struct.symbol*** %subsym351, align 8
  %arrayidx352 = getelementptr inbounds %struct.symbol*, %struct.symbol** %313, i64 %idxprom350
  store %struct.symbol* %call347, %struct.symbol** %arrayidx352, align 8
  %314 = load i8*, i8** %x, align 8
  %arrayidx353 = getelementptr inbounds i8, i8* %314, i64 1
  %315 = load i8, i8* %arrayidx353, align 1
  %conv354 = sext i8 %315 to i32
  %idxprom355 = sext i32 %conv354 to i64
  %call356 = call i16** @__ctype_b_loc() #9
  %316 = load i16*, i16** %call356, align 8
  %arrayidx357 = getelementptr inbounds i16, i16* %316, i64 %idxprom355
  %317 = load i16, i16* %arrayidx357, align 2
  %conv358 = zext i16 %317 to i32
  %and359 = and i32 %conv358, 512
  %tobool360 = icmp ne i32 %and359, 0
  br i1 %tobool360, label %if.then.373, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %if.end.337
  %318 = load %struct.symbol*, %struct.symbol** %msp, align 8
  %subsym362 = getelementptr inbounds %struct.symbol, %struct.symbol* %318, i32 0, i32 15
  %319 = load %struct.symbol**, %struct.symbol*** %subsym362, align 8
  %arrayidx363 = getelementptr inbounds %struct.symbol*, %struct.symbol** %319, i64 0
  %320 = load %struct.symbol*, %struct.symbol** %arrayidx363, align 8
  %name364 = getelementptr inbounds %struct.symbol, %struct.symbol* %320, i32 0, i32 0
  %321 = load i8*, i8** %name364, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %321, i64 0
  %322 = load i8, i8* %arrayidx365, align 1
  %conv366 = sext i8 %322 to i32
  %idxprom367 = sext i32 %conv366 to i64
  %call368 = call i16** @__ctype_b_loc() #9
  %323 = load i16*, i16** %call368, align 8
  %arrayidx369 = getelementptr inbounds i16, i16* %323, i64 %idxprom367
  %324 = load i16, i16* %arrayidx369, align 2
  %conv370 = zext i16 %324 to i32
  %and371 = and i32 %conv370, 512
  %tobool372 = icmp ne i32 %and371, 0
  br i1 %tobool372, label %if.then.373, label %if.end.378

if.then.373:                                      ; preds = %lor.lhs.false.361, %if.end.337
  %325 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename374 = getelementptr inbounds %struct.pstate, %struct.pstate* %325, i32 0, i32 0
  %326 = load i8*, i8** %filename374, align 8
  %327 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno375 = getelementptr inbounds %struct.pstate, %struct.pstate* %327, i32 0, i32 1
  %328 = load i32, i32* %tokenlineno375, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %326, i32 %328, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.190, i32 0, i32 0))
  %329 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt376 = getelementptr inbounds %struct.pstate, %struct.pstate* %329, i32 0, i32 2
  %330 = load i32, i32* %errorcnt376, align 4
  %inc377 = add nsw i32 %330, 1
  store i32 %inc377, i32* %errorcnt376, align 4
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.373, %lor.lhs.false.361
  br label %if.end.397

if.else.379:                                      ; preds = %land.lhs.true.313, %lor.lhs.false
  %331 = load i8*, i8** %x, align 8
  %arrayidx380 = getelementptr inbounds i8, i8* %331, i64 0
  %332 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %332 to i32
  %cmp382 = icmp eq i32 %conv381, 40
  br i1 %cmp382, label %land.lhs.true.384, label %if.else.390

land.lhs.true.384:                                ; preds = %if.else.379
  %333 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs385 = getelementptr inbounds %struct.pstate, %struct.pstate* %333, i32 0, i32 9
  %334 = load i32, i32* %nrhs385, align 4
  %cmp386 = icmp sgt i32 %334, 0
  br i1 %cmp386, label %if.then.388, label %if.else.390

if.then.388:                                      ; preds = %land.lhs.true.384
  %335 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state389 = getelementptr inbounds %struct.pstate, %struct.pstate* %335, i32 0, i32 5
  store i32 10, i32* %state389, align 4
  br label %if.end.396

if.else.390:                                      ; preds = %land.lhs.true.384, %if.else.379
  %336 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename391 = getelementptr inbounds %struct.pstate, %struct.pstate* %336, i32 0, i32 0
  %337 = load i8*, i8** %filename391, align 8
  %338 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno392 = getelementptr inbounds %struct.pstate, %struct.pstate* %338, i32 0, i32 1
  %339 = load i32, i32* %tokenlineno392, align 4
  %340 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %337, i32 %339, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.191, i32 0, i32 0), i8* %340)
  %341 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt393 = getelementptr inbounds %struct.pstate, %struct.pstate* %341, i32 0, i32 2
  %342 = load i32, i32* %errorcnt393, align 4
  %inc394 = add nsw i32 %342, 1
  store i32 %inc394, i32* %errorcnt393, align 4
  %343 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state395 = getelementptr inbounds %struct.pstate, %struct.pstate* %343, i32 0, i32 5
  store i32 14, i32* %state395, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.else.390, %if.then.388
  br label %if.end.397

if.end.397:                                       ; preds = %if.end.396, %if.end.378
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %if.end.303
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %if.end.270
  br label %sw.epilog

sw.bb.400:                                        ; preds = %entry
  %344 = load i8*, i8** %x, align 8
  %arrayidx401 = getelementptr inbounds i8, i8* %344, i64 0
  %345 = load i8, i8* %arrayidx401, align 1
  %conv402 = sext i8 %345 to i32
  %idxprom403 = sext i32 %conv402 to i64
  %call404 = call i16** @__ctype_b_loc() #9
  %346 = load i16*, i16** %call404, align 8
  %arrayidx405 = getelementptr inbounds i16, i16* %346, i64 %idxprom403
  %347 = load i16, i16* %arrayidx405, align 2
  %conv406 = zext i16 %347 to i32
  %and407 = and i32 %conv406, 1024
  %tobool408 = icmp ne i32 %and407, 0
  br i1 %tobool408, label %if.then.409, label %if.else.416

if.then.409:                                      ; preds = %sw.bb.400
  %348 = load i8*, i8** %x, align 8
  %349 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs410 = getelementptr inbounds %struct.pstate, %struct.pstate* %349, i32 0, i32 9
  %350 = load i32, i32* %nrhs410, align 4
  %sub411 = sub nsw i32 %350, 1
  %idxprom412 = sext i32 %sub411 to i64
  %351 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %alias413 = getelementptr inbounds %struct.pstate, %struct.pstate* %351, i32 0, i32 11
  %arrayidx414 = getelementptr inbounds [1000 x i8*], [1000 x i8*]* %alias413, i32 0, i64 %idxprom412
  store i8* %348, i8** %arrayidx414, align 8
  %352 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state415 = getelementptr inbounds %struct.pstate, %struct.pstate* %352, i32 0, i32 5
  store i32 11, i32* %state415, align 4
  br label %if.end.428

if.else.416:                                      ; preds = %sw.bb.400
  %353 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename417 = getelementptr inbounds %struct.pstate, %struct.pstate* %353, i32 0, i32 0
  %354 = load i8*, i8** %filename417, align 8
  %355 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno418 = getelementptr inbounds %struct.pstate, %struct.pstate* %355, i32 0, i32 1
  %356 = load i32, i32* %tokenlineno418, align 4
  %357 = load i8*, i8** %x, align 8
  %358 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %nrhs419 = getelementptr inbounds %struct.pstate, %struct.pstate* %358, i32 0, i32 9
  %359 = load i32, i32* %nrhs419, align 4
  %sub420 = sub nsw i32 %359, 1
  %idxprom421 = sext i32 %sub420 to i64
  %360 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %rhs422 = getelementptr inbounds %struct.pstate, %struct.pstate* %360, i32 0, i32 10
  %arrayidx423 = getelementptr inbounds [1000 x %struct.symbol*], [1000 x %struct.symbol*]* %rhs422, i32 0, i64 %idxprom421
  %361 = load %struct.symbol*, %struct.symbol** %arrayidx423, align 8
  %name424 = getelementptr inbounds %struct.symbol, %struct.symbol* %361, i32 0, i32 0
  %362 = load i8*, i8** %name424, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %354, i32 %356, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.192, i32 0, i32 0), i8* %357, i8* %362)
  %363 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt425 = getelementptr inbounds %struct.pstate, %struct.pstate* %363, i32 0, i32 2
  %364 = load i32, i32* %errorcnt425, align 4
  %inc426 = add nsw i32 %364, 1
  store i32 %inc426, i32* %errorcnt425, align 4
  %365 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state427 = getelementptr inbounds %struct.pstate, %struct.pstate* %365, i32 0, i32 5
  store i32 14, i32* %state427, align 4
  br label %if.end.428

if.end.428:                                       ; preds = %if.else.416, %if.then.409
  br label %sw.epilog

sw.bb.429:                                        ; preds = %entry
  %366 = load i8*, i8** %x, align 8
  %arrayidx430 = getelementptr inbounds i8, i8* %366, i64 0
  %367 = load i8, i8* %arrayidx430, align 1
  %conv431 = sext i8 %367 to i32
  %cmp432 = icmp eq i32 %conv431, 41
  br i1 %cmp432, label %if.then.434, label %if.else.436

if.then.434:                                      ; preds = %sw.bb.429
  %368 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state435 = getelementptr inbounds %struct.pstate, %struct.pstate* %368, i32 0, i32 5
  store i32 6, i32* %state435, align 4
  br label %if.end.443

if.else.436:                                      ; preds = %sw.bb.429
  %369 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename437 = getelementptr inbounds %struct.pstate, %struct.pstate* %369, i32 0, i32 0
  %370 = load i8*, i8** %filename437, align 8
  %371 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno438 = getelementptr inbounds %struct.pstate, %struct.pstate* %371, i32 0, i32 1
  %372 = load i32, i32* %tokenlineno438, align 4
  %373 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %lhsalias439 = getelementptr inbounds %struct.pstate, %struct.pstate* %373, i32 0, i32 8
  %374 = load i8*, i8** %lhsalias439, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %370, i32 %372, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.186, i32 0, i32 0), i8* %374)
  %375 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt440 = getelementptr inbounds %struct.pstate, %struct.pstate* %375, i32 0, i32 2
  %376 = load i32, i32* %errorcnt440, align 4
  %inc441 = add nsw i32 %376, 1
  store i32 %inc441, i32* %errorcnt440, align 4
  %377 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state442 = getelementptr inbounds %struct.pstate, %struct.pstate* %377, i32 0, i32 5
  store i32 14, i32* %state442, align 4
  br label %if.end.443

if.end.443:                                       ; preds = %if.else.436, %if.then.434
  br label %sw.epilog

sw.bb.444:                                        ; preds = %entry
  %378 = load i8*, i8** %x, align 8
  %arrayidx445 = getelementptr inbounds i8, i8* %378, i64 0
  %379 = load i8, i8* %arrayidx445, align 1
  %conv446 = sext i8 %379 to i32
  %idxprom447 = sext i32 %conv446 to i64
  %call448 = call i16** @__ctype_b_loc() #9
  %380 = load i16*, i16** %call448, align 8
  %arrayidx449 = getelementptr inbounds i16, i16* %380, i64 %idxprom447
  %381 = load i16, i16* %arrayidx449, align 2
  %conv450 = zext i16 %381 to i32
  %and451 = and i32 %conv450, 1024
  %tobool452 = icmp ne i32 %and451, 0
  br i1 %tobool452, label %if.then.453, label %if.else.654

if.then.453:                                      ; preds = %sw.bb.444
  %382 = load i8*, i8** %x, align 8
  %383 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declkeyword = getelementptr inbounds %struct.pstate, %struct.pstate* %383, i32 0, i32 13
  store i8* %382, i8** %declkeyword, align 8
  %384 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot = getelementptr inbounds %struct.pstate, %struct.pstate* %384, i32 0, i32 14
  store i8** null, i8*** %declargslot, align 8
  %385 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot = getelementptr inbounds %struct.pstate, %struct.pstate* %385, i32 0, i32 15
  store i32* null, i32** %decllnslot, align 8
  %386 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state454 = getelementptr inbounds %struct.pstate, %struct.pstate* %386, i32 0, i32 5
  store i32 3, i32* %state454, align 4
  %387 = load i8*, i8** %x, align 8
  %call455 = call i32 @strcmp(i8* %387, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.193, i32 0, i32 0)) #8
  %cmp456 = icmp eq i32 %call455, 0
  br i1 %cmp456, label %if.then.458, label %if.else.462

if.then.458:                                      ; preds = %if.then.453
  %388 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp459 = getelementptr inbounds %struct.pstate, %struct.pstate* %388, i32 0, i32 4
  %389 = load %struct.lemon*, %struct.lemon** %gp459, align 8
  %name460 = getelementptr inbounds %struct.lemon, %struct.lemon* %389, i32 0, i32 10
  %390 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot461 = getelementptr inbounds %struct.pstate, %struct.pstate* %390, i32 0, i32 14
  store i8** %name460, i8*** %declargslot461, align 8
  br label %if.end.653

if.else.462:                                      ; preds = %if.then.453
  %391 = load i8*, i8** %x, align 8
  %call463 = call i32 @strcmp(i8* %391, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.194, i32 0, i32 0)) #8
  %cmp464 = icmp eq i32 %call463, 0
  br i1 %cmp464, label %if.then.466, label %if.else.471

if.then.466:                                      ; preds = %if.else.462
  %392 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp467 = getelementptr inbounds %struct.pstate, %struct.pstate* %392, i32 0, i32 4
  %393 = load %struct.lemon*, %struct.lemon** %gp467, align 8
  %include = getelementptr inbounds %struct.lemon, %struct.lemon* %393, i32 0, i32 16
  %394 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot468 = getelementptr inbounds %struct.pstate, %struct.pstate* %394, i32 0, i32 14
  store i8** %include, i8*** %declargslot468, align 8
  %395 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp469 = getelementptr inbounds %struct.pstate, %struct.pstate* %395, i32 0, i32 4
  %396 = load %struct.lemon*, %struct.lemon** %gp469, align 8
  %includeln = getelementptr inbounds %struct.lemon, %struct.lemon* %396, i32 0, i32 17
  %397 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot470 = getelementptr inbounds %struct.pstate, %struct.pstate* %397, i32 0, i32 15
  store i32* %includeln, i32** %decllnslot470, align 8
  br label %if.end.652

if.else.471:                                      ; preds = %if.else.462
  %398 = load i8*, i8** %x, align 8
  %call472 = call i32 @strcmp(i8* %398, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.195, i32 0, i32 0)) #8
  %cmp473 = icmp eq i32 %call472, 0
  br i1 %cmp473, label %if.then.475, label %if.else.480

if.then.475:                                      ; preds = %if.else.471
  %399 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp476 = getelementptr inbounds %struct.pstate, %struct.pstate* %399, i32 0, i32 4
  %400 = load %struct.lemon*, %struct.lemon** %gp476, align 8
  %extracode = getelementptr inbounds %struct.lemon, %struct.lemon* %400, i32 0, i32 26
  %401 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot477 = getelementptr inbounds %struct.pstate, %struct.pstate* %401, i32 0, i32 14
  store i8** %extracode, i8*** %declargslot477, align 8
  %402 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp478 = getelementptr inbounds %struct.pstate, %struct.pstate* %402, i32 0, i32 4
  %403 = load %struct.lemon*, %struct.lemon** %gp478, align 8
  %extracodeln = getelementptr inbounds %struct.lemon, %struct.lemon* %403, i32 0, i32 27
  %404 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot479 = getelementptr inbounds %struct.pstate, %struct.pstate* %404, i32 0, i32 15
  store i32* %extracodeln, i32** %decllnslot479, align 8
  br label %if.end.651

if.else.480:                                      ; preds = %if.else.471
  %405 = load i8*, i8** %x, align 8
  %call481 = call i32 @strcmp(i8* %405, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.196, i32 0, i32 0)) #8
  %cmp482 = icmp eq i32 %call481, 0
  br i1 %cmp482, label %if.then.484, label %if.else.489

if.then.484:                                      ; preds = %if.else.480
  %406 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp485 = getelementptr inbounds %struct.pstate, %struct.pstate* %406, i32 0, i32 4
  %407 = load %struct.lemon*, %struct.lemon** %gp485, align 8
  %tokendest = getelementptr inbounds %struct.lemon, %struct.lemon* %407, i32 0, i32 28
  %408 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot486 = getelementptr inbounds %struct.pstate, %struct.pstate* %408, i32 0, i32 14
  store i8** %tokendest, i8*** %declargslot486, align 8
  %409 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp487 = getelementptr inbounds %struct.pstate, %struct.pstate* %409, i32 0, i32 4
  %410 = load %struct.lemon*, %struct.lemon** %gp487, align 8
  %tokendestln = getelementptr inbounds %struct.lemon, %struct.lemon* %410, i32 0, i32 29
  %411 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot488 = getelementptr inbounds %struct.pstate, %struct.pstate* %411, i32 0, i32 15
  store i32* %tokendestln, i32** %decllnslot488, align 8
  br label %if.end.650

if.else.489:                                      ; preds = %if.else.480
  %412 = load i8*, i8** %x, align 8
  %call490 = call i32 @strcmp(i8* %412, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.197, i32 0, i32 0)) #8
  %cmp491 = icmp eq i32 %call490, 0
  br i1 %cmp491, label %if.then.493, label %if.else.498

if.then.493:                                      ; preds = %if.else.489
  %413 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp494 = getelementptr inbounds %struct.pstate, %struct.pstate* %413, i32 0, i32 4
  %414 = load %struct.lemon*, %struct.lemon** %gp494, align 8
  %vardest = getelementptr inbounds %struct.lemon, %struct.lemon* %414, i32 0, i32 30
  %415 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot495 = getelementptr inbounds %struct.pstate, %struct.pstate* %415, i32 0, i32 14
  store i8** %vardest, i8*** %declargslot495, align 8
  %416 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp496 = getelementptr inbounds %struct.pstate, %struct.pstate* %416, i32 0, i32 4
  %417 = load %struct.lemon*, %struct.lemon** %gp496, align 8
  %vardestln = getelementptr inbounds %struct.lemon, %struct.lemon* %417, i32 0, i32 31
  %418 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot497 = getelementptr inbounds %struct.pstate, %struct.pstate* %418, i32 0, i32 15
  store i32* %vardestln, i32** %decllnslot497, align 8
  br label %if.end.649

if.else.498:                                      ; preds = %if.else.489
  %419 = load i8*, i8** %x, align 8
  %call499 = call i32 @strcmp(i8* %419, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.198, i32 0, i32 0)) #8
  %cmp500 = icmp eq i32 %call499, 0
  br i1 %cmp500, label %if.then.502, label %if.else.505

if.then.502:                                      ; preds = %if.else.498
  %420 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp503 = getelementptr inbounds %struct.pstate, %struct.pstate* %420, i32 0, i32 4
  %421 = load %struct.lemon*, %struct.lemon** %gp503, align 8
  %tokenprefix = getelementptr inbounds %struct.lemon, %struct.lemon* %421, i32 0, i32 34
  %422 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot504 = getelementptr inbounds %struct.pstate, %struct.pstate* %422, i32 0, i32 14
  store i8** %tokenprefix, i8*** %declargslot504, align 8
  br label %if.end.648

if.else.505:                                      ; preds = %if.else.498
  %423 = load i8*, i8** %x, align 8
  %call506 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i32 0, i32 0)) #8
  %cmp507 = icmp eq i32 %call506, 0
  br i1 %cmp507, label %if.then.509, label %if.else.514

if.then.509:                                      ; preds = %if.else.505
  %424 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp510 = getelementptr inbounds %struct.pstate, %struct.pstate* %424, i32 0, i32 4
  %425 = load %struct.lemon*, %struct.lemon** %gp510, align 8
  %error = getelementptr inbounds %struct.lemon, %struct.lemon* %425, i32 0, i32 18
  %426 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot511 = getelementptr inbounds %struct.pstate, %struct.pstate* %426, i32 0, i32 14
  store i8** %error, i8*** %declargslot511, align 8
  %427 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp512 = getelementptr inbounds %struct.pstate, %struct.pstate* %427, i32 0, i32 4
  %428 = load %struct.lemon*, %struct.lemon** %gp512, align 8
  %errorln = getelementptr inbounds %struct.lemon, %struct.lemon* %428, i32 0, i32 19
  %429 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot513 = getelementptr inbounds %struct.pstate, %struct.pstate* %429, i32 0, i32 15
  store i32* %errorln, i32** %decllnslot513, align 8
  br label %if.end.647

if.else.514:                                      ; preds = %if.else.505
  %430 = load i8*, i8** %x, align 8
  %call515 = call i32 @strcmp(i8* %430, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.200, i32 0, i32 0)) #8
  %cmp516 = icmp eq i32 %call515, 0
  br i1 %cmp516, label %if.then.518, label %if.else.523

if.then.518:                                      ; preds = %if.else.514
  %431 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp519 = getelementptr inbounds %struct.pstate, %struct.pstate* %431, i32 0, i32 4
  %432 = load %struct.lemon*, %struct.lemon** %gp519, align 8
  %accept = getelementptr inbounds %struct.lemon, %struct.lemon* %432, i32 0, i32 24
  %433 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot520 = getelementptr inbounds %struct.pstate, %struct.pstate* %433, i32 0, i32 14
  store i8** %accept, i8*** %declargslot520, align 8
  %434 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp521 = getelementptr inbounds %struct.pstate, %struct.pstate* %434, i32 0, i32 4
  %435 = load %struct.lemon*, %struct.lemon** %gp521, align 8
  %acceptln = getelementptr inbounds %struct.lemon, %struct.lemon* %435, i32 0, i32 25
  %436 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot522 = getelementptr inbounds %struct.pstate, %struct.pstate* %436, i32 0, i32 15
  store i32* %acceptln, i32** %decllnslot522, align 8
  br label %if.end.646

if.else.523:                                      ; preds = %if.else.514
  %437 = load i8*, i8** %x, align 8
  %call524 = call i32 @strcmp(i8* %437, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0)) #8
  %cmp525 = icmp eq i32 %call524, 0
  br i1 %cmp525, label %if.then.527, label %if.else.532

if.then.527:                                      ; preds = %if.else.523
  %438 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp528 = getelementptr inbounds %struct.pstate, %struct.pstate* %438, i32 0, i32 4
  %439 = load %struct.lemon*, %struct.lemon** %gp528, align 8
  %failure = getelementptr inbounds %struct.lemon, %struct.lemon* %439, i32 0, i32 22
  %440 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot529 = getelementptr inbounds %struct.pstate, %struct.pstate* %440, i32 0, i32 14
  store i8** %failure, i8*** %declargslot529, align 8
  %441 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp530 = getelementptr inbounds %struct.pstate, %struct.pstate* %441, i32 0, i32 4
  %442 = load %struct.lemon*, %struct.lemon** %gp530, align 8
  %failureln = getelementptr inbounds %struct.lemon, %struct.lemon* %442, i32 0, i32 23
  %443 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot531 = getelementptr inbounds %struct.pstate, %struct.pstate* %443, i32 0, i32 15
  store i32* %failureln, i32** %decllnslot531, align 8
  br label %if.end.645

if.else.532:                                      ; preds = %if.else.523
  %444 = load i8*, i8** %x, align 8
  %call533 = call i32 @strcmp(i8* %444, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.202, i32 0, i32 0)) #8
  %cmp534 = icmp eq i32 %call533, 0
  br i1 %cmp534, label %if.then.536, label %if.else.541

if.then.536:                                      ; preds = %if.else.532
  %445 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp537 = getelementptr inbounds %struct.pstate, %struct.pstate* %445, i32 0, i32 4
  %446 = load %struct.lemon*, %struct.lemon** %gp537, align 8
  %overflow = getelementptr inbounds %struct.lemon, %struct.lemon* %446, i32 0, i32 20
  %447 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot538 = getelementptr inbounds %struct.pstate, %struct.pstate* %447, i32 0, i32 14
  store i8** %overflow, i8*** %declargslot538, align 8
  %448 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp539 = getelementptr inbounds %struct.pstate, %struct.pstate* %448, i32 0, i32 4
  %449 = load %struct.lemon*, %struct.lemon** %gp539, align 8
  %overflowln = getelementptr inbounds %struct.lemon, %struct.lemon* %449, i32 0, i32 21
  %450 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot540 = getelementptr inbounds %struct.pstate, %struct.pstate* %450, i32 0, i32 15
  store i32* %overflowln, i32** %decllnslot540, align 8
  br label %if.end.644

if.else.541:                                      ; preds = %if.else.532
  %451 = load i8*, i8** %x, align 8
  %call542 = call i32 @strcmp(i8* %451, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.203, i32 0, i32 0)) #8
  %cmp543 = icmp eq i32 %call542, 0
  br i1 %cmp543, label %if.then.545, label %if.else.548

if.then.545:                                      ; preds = %if.else.541
  %452 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp546 = getelementptr inbounds %struct.pstate, %struct.pstate* %452, i32 0, i32 4
  %453 = load %struct.lemon*, %struct.lemon** %gp546, align 8
  %arg = getelementptr inbounds %struct.lemon, %struct.lemon* %453, i32 0, i32 11
  %454 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot547 = getelementptr inbounds %struct.pstate, %struct.pstate* %454, i32 0, i32 14
  store i8** %arg, i8*** %declargslot547, align 8
  br label %if.end.643

if.else.548:                                      ; preds = %if.else.541
  %455 = load i8*, i8** %x, align 8
  %call549 = call i32 @strcmp(i8* %455, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.204, i32 0, i32 0)) #8
  %cmp550 = icmp eq i32 %call549, 0
  br i1 %cmp550, label %if.then.552, label %if.else.555

if.then.552:                                      ; preds = %if.else.548
  %456 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp553 = getelementptr inbounds %struct.pstate, %struct.pstate* %456, i32 0, i32 4
  %457 = load %struct.lemon*, %struct.lemon** %gp553, align 8
  %tokentype = getelementptr inbounds %struct.lemon, %struct.lemon* %457, i32 0, i32 12
  %458 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot554 = getelementptr inbounds %struct.pstate, %struct.pstate* %458, i32 0, i32 14
  store i8** %tokentype, i8*** %declargslot554, align 8
  br label %if.end.642

if.else.555:                                      ; preds = %if.else.548
  %459 = load i8*, i8** %x, align 8
  %call556 = call i32 @strcmp(i8* %459, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.205, i32 0, i32 0)) #8
  %cmp557 = icmp eq i32 %call556, 0
  br i1 %cmp557, label %if.then.559, label %if.else.562

if.then.559:                                      ; preds = %if.else.555
  %460 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp560 = getelementptr inbounds %struct.pstate, %struct.pstate* %460, i32 0, i32 4
  %461 = load %struct.lemon*, %struct.lemon** %gp560, align 8
  %vartype = getelementptr inbounds %struct.lemon, %struct.lemon* %461, i32 0, i32 13
  %462 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot561 = getelementptr inbounds %struct.pstate, %struct.pstate* %462, i32 0, i32 14
  store i8** %vartype, i8*** %declargslot561, align 8
  br label %if.end.641

if.else.562:                                      ; preds = %if.else.555
  %463 = load i8*, i8** %x, align 8
  %call563 = call i32 @strcmp(i8* %463, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.206, i32 0, i32 0)) #8
  %cmp564 = icmp eq i32 %call563, 0
  br i1 %cmp564, label %if.then.566, label %if.else.569

if.then.566:                                      ; preds = %if.else.562
  %464 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp567 = getelementptr inbounds %struct.pstate, %struct.pstate* %464, i32 0, i32 4
  %465 = load %struct.lemon*, %struct.lemon** %gp567, align 8
  %stacksize = getelementptr inbounds %struct.lemon, %struct.lemon* %465, i32 0, i32 15
  %466 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot568 = getelementptr inbounds %struct.pstate, %struct.pstate* %466, i32 0, i32 14
  store i8** %stacksize, i8*** %declargslot568, align 8
  br label %if.end.640

if.else.569:                                      ; preds = %if.else.562
  %467 = load i8*, i8** %x, align 8
  %call570 = call i32 @strcmp(i8* %467, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.207, i32 0, i32 0)) #8
  %cmp571 = icmp eq i32 %call570, 0
  br i1 %cmp571, label %if.then.573, label %if.else.576

if.then.573:                                      ; preds = %if.else.569
  %468 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp574 = getelementptr inbounds %struct.pstate, %struct.pstate* %468, i32 0, i32 4
  %469 = load %struct.lemon*, %struct.lemon** %gp574, align 8
  %start = getelementptr inbounds %struct.lemon, %struct.lemon* %469, i32 0, i32 14
  %470 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot575 = getelementptr inbounds %struct.pstate, %struct.pstate* %470, i32 0, i32 14
  store i8** %start, i8*** %declargslot575, align 8
  br label %if.end.639

if.else.576:                                      ; preds = %if.else.569
  %471 = load i8*, i8** %x, align 8
  %call577 = call i32 @strcmp(i8* %471, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.208, i32 0, i32 0)) #8
  %cmp578 = icmp eq i32 %call577, 0
  br i1 %cmp578, label %if.then.580, label %if.else.584

if.then.580:                                      ; preds = %if.else.576
  %472 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %preccounter581 = getelementptr inbounds %struct.pstate, %struct.pstate* %472, i32 0, i32 17
  %473 = load i32, i32* %preccounter581, align 4
  %inc582 = add nsw i32 %473, 1
  store i32 %inc582, i32* %preccounter581, align 4
  %474 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declassoc = getelementptr inbounds %struct.pstate, %struct.pstate* %474, i32 0, i32 16
  store i32 0, i32* %declassoc, align 4
  %475 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state583 = getelementptr inbounds %struct.pstate, %struct.pstate* %475, i32 0, i32 5
  store i32 4, i32* %state583, align 4
  br label %if.end.638

if.else.584:                                      ; preds = %if.else.576
  %476 = load i8*, i8** %x, align 8
  %call585 = call i32 @strcmp(i8* %476, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.209, i32 0, i32 0)) #8
  %cmp586 = icmp eq i32 %call585, 0
  br i1 %cmp586, label %if.then.588, label %if.else.593

if.then.588:                                      ; preds = %if.else.584
  %477 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %preccounter589 = getelementptr inbounds %struct.pstate, %struct.pstate* %477, i32 0, i32 17
  %478 = load i32, i32* %preccounter589, align 4
  %inc590 = add nsw i32 %478, 1
  store i32 %inc590, i32* %preccounter589, align 4
  %479 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declassoc591 = getelementptr inbounds %struct.pstate, %struct.pstate* %479, i32 0, i32 16
  store i32 1, i32* %declassoc591, align 4
  %480 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state592 = getelementptr inbounds %struct.pstate, %struct.pstate* %480, i32 0, i32 5
  store i32 4, i32* %state592, align 4
  br label %if.end.637

if.else.593:                                      ; preds = %if.else.584
  %481 = load i8*, i8** %x, align 8
  %call594 = call i32 @strcmp(i8* %481, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.210, i32 0, i32 0)) #8
  %cmp595 = icmp eq i32 %call594, 0
  br i1 %cmp595, label %if.then.597, label %if.else.602

if.then.597:                                      ; preds = %if.else.593
  %482 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %preccounter598 = getelementptr inbounds %struct.pstate, %struct.pstate* %482, i32 0, i32 17
  %483 = load i32, i32* %preccounter598, align 4
  %inc599 = add nsw i32 %483, 1
  store i32 %inc599, i32* %preccounter598, align 4
  %484 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declassoc600 = getelementptr inbounds %struct.pstate, %struct.pstate* %484, i32 0, i32 16
  store i32 2, i32* %declassoc600, align 4
  %485 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state601 = getelementptr inbounds %struct.pstate, %struct.pstate* %485, i32 0, i32 5
  store i32 4, i32* %state601, align 4
  br label %if.end.636

if.else.602:                                      ; preds = %if.else.593
  %486 = load i8*, i8** %x, align 8
  %call603 = call i32 @strcmp(i8* %486, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.211, i32 0, i32 0)) #8
  %cmp604 = icmp eq i32 %call603, 0
  br i1 %cmp604, label %if.then.606, label %if.else.608

if.then.606:                                      ; preds = %if.else.602
  %487 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state607 = getelementptr inbounds %struct.pstate, %struct.pstate* %487, i32 0, i32 5
  store i32 16, i32* %state607, align 4
  br label %if.end.635

if.else.608:                                      ; preds = %if.else.602
  %488 = load i8*, i8** %x, align 8
  %call609 = call i32 @strcmp(i8* %488, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.212, i32 0, i32 0)) #8
  %cmp610 = icmp eq i32 %call609, 0
  br i1 %cmp610, label %if.then.612, label %if.else.614

if.then.612:                                      ; preds = %if.else.608
  %489 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state613 = getelementptr inbounds %struct.pstate, %struct.pstate* %489, i32 0, i32 5
  store i32 17, i32* %state613, align 4
  br label %if.end.634

if.else.614:                                      ; preds = %if.else.608
  %490 = load i8*, i8** %x, align 8
  %call615 = call i32 @strcmp(i8* %490, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.213, i32 0, i32 0)) #8
  %cmp616 = icmp eq i32 %call615, 0
  br i1 %cmp616, label %if.then.618, label %if.else.620

if.then.618:                                      ; preds = %if.else.614
  %491 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %fallback = getelementptr inbounds %struct.pstate, %struct.pstate* %491, i32 0, i32 6
  store %struct.symbol* null, %struct.symbol** %fallback, align 8
  %492 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state619 = getelementptr inbounds %struct.pstate, %struct.pstate* %492, i32 0, i32 5
  store i32 18, i32* %state619, align 4
  br label %if.end.633

if.else.620:                                      ; preds = %if.else.614
  %493 = load i8*, i8** %x, align 8
  %call621 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.214, i32 0, i32 0)) #8
  %cmp622 = icmp eq i32 %call621, 0
  br i1 %cmp622, label %if.then.624, label %if.else.626

if.then.624:                                      ; preds = %if.else.620
  %494 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state625 = getelementptr inbounds %struct.pstate, %struct.pstate* %494, i32 0, i32 5
  store i32 19, i32* %state625, align 4
  br label %if.end.632

if.else.626:                                      ; preds = %if.else.620
  %495 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename627 = getelementptr inbounds %struct.pstate, %struct.pstate* %495, i32 0, i32 0
  %496 = load i8*, i8** %filename627, align 8
  %497 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno628 = getelementptr inbounds %struct.pstate, %struct.pstate* %497, i32 0, i32 1
  %498 = load i32, i32* %tokenlineno628, align 4
  %499 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %496, i32 %498, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.215, i32 0, i32 0), i8* %499)
  %500 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt629 = getelementptr inbounds %struct.pstate, %struct.pstate* %500, i32 0, i32 2
  %501 = load i32, i32* %errorcnt629, align 4
  %inc630 = add nsw i32 %501, 1
  store i32 %inc630, i32* %errorcnt629, align 4
  %502 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state631 = getelementptr inbounds %struct.pstate, %struct.pstate* %502, i32 0, i32 5
  store i32 15, i32* %state631, align 4
  br label %if.end.632

if.end.632:                                       ; preds = %if.else.626, %if.then.624
  br label %if.end.633

if.end.633:                                       ; preds = %if.end.632, %if.then.618
  br label %if.end.634

if.end.634:                                       ; preds = %if.end.633, %if.then.612
  br label %if.end.635

if.end.635:                                       ; preds = %if.end.634, %if.then.606
  br label %if.end.636

if.end.636:                                       ; preds = %if.end.635, %if.then.597
  br label %if.end.637

if.end.637:                                       ; preds = %if.end.636, %if.then.588
  br label %if.end.638

if.end.638:                                       ; preds = %if.end.637, %if.then.580
  br label %if.end.639

if.end.639:                                       ; preds = %if.end.638, %if.then.573
  br label %if.end.640

if.end.640:                                       ; preds = %if.end.639, %if.then.566
  br label %if.end.641

if.end.641:                                       ; preds = %if.end.640, %if.then.559
  br label %if.end.642

if.end.642:                                       ; preds = %if.end.641, %if.then.552
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.642, %if.then.545
  br label %if.end.644

if.end.644:                                       ; preds = %if.end.643, %if.then.536
  br label %if.end.645

if.end.645:                                       ; preds = %if.end.644, %if.then.527
  br label %if.end.646

if.end.646:                                       ; preds = %if.end.645, %if.then.518
  br label %if.end.647

if.end.647:                                       ; preds = %if.end.646, %if.then.509
  br label %if.end.648

if.end.648:                                       ; preds = %if.end.647, %if.then.502
  br label %if.end.649

if.end.649:                                       ; preds = %if.end.648, %if.then.493
  br label %if.end.650

if.end.650:                                       ; preds = %if.end.649, %if.then.484
  br label %if.end.651

if.end.651:                                       ; preds = %if.end.650, %if.then.475
  br label %if.end.652

if.end.652:                                       ; preds = %if.end.651, %if.then.466
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %if.then.458
  br label %if.end.660

if.else.654:                                      ; preds = %sw.bb.444
  %503 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename655 = getelementptr inbounds %struct.pstate, %struct.pstate* %503, i32 0, i32 0
  %504 = load i8*, i8** %filename655, align 8
  %505 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno656 = getelementptr inbounds %struct.pstate, %struct.pstate* %505, i32 0, i32 1
  %506 = load i32, i32* %tokenlineno656, align 4
  %507 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %504, i32 %506, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.216, i32 0, i32 0), i8* %507)
  %508 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt657 = getelementptr inbounds %struct.pstate, %struct.pstate* %508, i32 0, i32 2
  %509 = load i32, i32* %errorcnt657, align 4
  %inc658 = add nsw i32 %509, 1
  store i32 %inc658, i32* %errorcnt657, align 4
  %510 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state659 = getelementptr inbounds %struct.pstate, %struct.pstate* %510, i32 0, i32 5
  store i32 15, i32* %state659, align 4
  br label %if.end.660

if.end.660:                                       ; preds = %if.else.654, %if.end.653
  br label %sw.epilog

sw.bb.661:                                        ; preds = %entry
  %511 = load i8*, i8** %x, align 8
  %arrayidx662 = getelementptr inbounds i8, i8* %511, i64 0
  %512 = load i8, i8* %arrayidx662, align 1
  %conv663 = sext i8 %512 to i32
  %idxprom664 = sext i32 %conv663 to i64
  %call665 = call i16** @__ctype_b_loc() #9
  %513 = load i16*, i16** %call665, align 8
  %arrayidx666 = getelementptr inbounds i16, i16* %513, i64 %idxprom664
  %514 = load i16, i16* %arrayidx666, align 2
  %conv667 = zext i16 %514 to i32
  %and668 = and i32 %conv667, 1024
  %tobool669 = icmp ne i32 %and668, 0
  br i1 %tobool669, label %if.else.676, label %if.then.670

if.then.670:                                      ; preds = %sw.bb.661
  %515 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename671 = getelementptr inbounds %struct.pstate, %struct.pstate* %515, i32 0, i32 0
  %516 = load i8*, i8** %filename671, align 8
  %517 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno672 = getelementptr inbounds %struct.pstate, %struct.pstate* %517, i32 0, i32 1
  %518 = load i32, i32* %tokenlineno672, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %516, i32 %518, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.217, i32 0, i32 0))
  %519 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt673 = getelementptr inbounds %struct.pstate, %struct.pstate* %519, i32 0, i32 2
  %520 = load i32, i32* %errorcnt673, align 4
  %inc674 = add nsw i32 %520, 1
  store i32 %inc674, i32* %errorcnt673, align 4
  %521 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state675 = getelementptr inbounds %struct.pstate, %struct.pstate* %521, i32 0, i32 5
  store i32 15, i32* %state675, align 4
  br label %if.end.681

if.else.676:                                      ; preds = %sw.bb.661
  %522 = load i8*, i8** %x, align 8
  %call677 = call %struct.symbol* @Symbol_new(i8* %522)
  store %struct.symbol* %call677, %struct.symbol** %sp, align 8
  %523 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %destructor = getelementptr inbounds %struct.symbol, %struct.symbol* %523, i32 0, i32 10
  %524 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot678 = getelementptr inbounds %struct.pstate, %struct.pstate* %524, i32 0, i32 14
  store i8** %destructor, i8*** %declargslot678, align 8
  %525 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %destructorln = getelementptr inbounds %struct.symbol, %struct.symbol* %525, i32 0, i32 11
  %526 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot679 = getelementptr inbounds %struct.pstate, %struct.pstate* %526, i32 0, i32 15
  store i32* %destructorln, i32** %decllnslot679, align 8
  %527 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state680 = getelementptr inbounds %struct.pstate, %struct.pstate* %527, i32 0, i32 5
  store i32 3, i32* %state680, align 4
  br label %if.end.681

if.end.681:                                       ; preds = %if.else.676, %if.then.670
  br label %sw.epilog

sw.bb.682:                                        ; preds = %entry
  %528 = load i8*, i8** %x, align 8
  %arrayidx683 = getelementptr inbounds i8, i8* %528, i64 0
  %529 = load i8, i8* %arrayidx683, align 1
  %conv684 = sext i8 %529 to i32
  %idxprom685 = sext i32 %conv684 to i64
  %call686 = call i16** @__ctype_b_loc() #9
  %530 = load i16*, i16** %call686, align 8
  %arrayidx687 = getelementptr inbounds i16, i16* %530, i64 %idxprom685
  %531 = load i16, i16* %arrayidx687, align 2
  %conv688 = zext i16 %531 to i32
  %and689 = and i32 %conv688, 1024
  %tobool690 = icmp ne i32 %and689, 0
  br i1 %tobool690, label %if.else.697, label %if.then.691

if.then.691:                                      ; preds = %sw.bb.682
  %532 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename692 = getelementptr inbounds %struct.pstate, %struct.pstate* %532, i32 0, i32 0
  %533 = load i8*, i8** %filename692, align 8
  %534 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno693 = getelementptr inbounds %struct.pstate, %struct.pstate* %534, i32 0, i32 1
  %535 = load i32, i32* %tokenlineno693, align 4
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %533, i32 %535, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.217, i32 0, i32 0))
  %536 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt694 = getelementptr inbounds %struct.pstate, %struct.pstate* %536, i32 0, i32 2
  %537 = load i32, i32* %errorcnt694, align 4
  %inc695 = add nsw i32 %537, 1
  store i32 %inc695, i32* %errorcnt694, align 4
  %538 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state696 = getelementptr inbounds %struct.pstate, %struct.pstate* %538, i32 0, i32 5
  store i32 15, i32* %state696, align 4
  br label %if.end.703

if.else.697:                                      ; preds = %sw.bb.682
  %539 = load i8*, i8** %x, align 8
  %call699 = call %struct.symbol* @Symbol_new(i8* %539)
  store %struct.symbol* %call699, %struct.symbol** %sp698, align 8
  %540 = load %struct.symbol*, %struct.symbol** %sp698, align 8
  %datatype = getelementptr inbounds %struct.symbol, %struct.symbol* %540, i32 0, i32 12
  %541 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot700 = getelementptr inbounds %struct.pstate, %struct.pstate* %541, i32 0, i32 14
  store i8** %datatype, i8*** %declargslot700, align 8
  %542 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot701 = getelementptr inbounds %struct.pstate, %struct.pstate* %542, i32 0, i32 15
  store i32* null, i32** %decllnslot701, align 8
  %543 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state702 = getelementptr inbounds %struct.pstate, %struct.pstate* %543, i32 0, i32 5
  store i32 3, i32* %state702, align 4
  br label %if.end.703

if.end.703:                                       ; preds = %if.else.697, %if.then.691
  br label %sw.epilog

sw.bb.704:                                        ; preds = %entry
  %544 = load i8*, i8** %x, align 8
  %arrayidx705 = getelementptr inbounds i8, i8* %544, i64 0
  %545 = load i8, i8* %arrayidx705, align 1
  %conv706 = sext i8 %545 to i32
  %cmp707 = icmp eq i32 %conv706, 46
  br i1 %cmp707, label %if.then.709, label %if.else.711

if.then.709:                                      ; preds = %sw.bb.704
  %546 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state710 = getelementptr inbounds %struct.pstate, %struct.pstate* %546, i32 0, i32 5
  store i32 1, i32* %state710, align 4
  br label %if.end.741

if.else.711:                                      ; preds = %sw.bb.704
  %547 = load i8*, i8** %x, align 8
  %arrayidx712 = getelementptr inbounds i8, i8* %547, i64 0
  %548 = load i8, i8* %arrayidx712, align 1
  %conv713 = sext i8 %548 to i32
  %idxprom714 = sext i32 %conv713 to i64
  %call715 = call i16** @__ctype_b_loc() #9
  %549 = load i16*, i16** %call715, align 8
  %arrayidx716 = getelementptr inbounds i16, i16* %549, i64 %idxprom714
  %550 = load i16, i16* %arrayidx716, align 2
  %conv717 = zext i16 %550 to i32
  %and718 = and i32 %conv717, 256
  %tobool719 = icmp ne i32 %and718, 0
  br i1 %tobool719, label %if.then.720, label %if.else.735

if.then.720:                                      ; preds = %if.else.711
  %551 = load i8*, i8** %x, align 8
  %call722 = call %struct.symbol* @Symbol_new(i8* %551)
  store %struct.symbol* %call722, %struct.symbol** %sp721, align 8
  %552 = load %struct.symbol*, %struct.symbol** %sp721, align 8
  %prec = getelementptr inbounds %struct.symbol, %struct.symbol* %552, i32 0, i32 5
  %553 = load i32, i32* %prec, align 4
  %cmp723 = icmp sge i32 %553, 0
  br i1 %cmp723, label %if.then.725, label %if.else.730

if.then.725:                                      ; preds = %if.then.720
  %554 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename726 = getelementptr inbounds %struct.pstate, %struct.pstate* %554, i32 0, i32 0
  %555 = load i8*, i8** %filename726, align 8
  %556 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno727 = getelementptr inbounds %struct.pstate, %struct.pstate* %556, i32 0, i32 1
  %557 = load i32, i32* %tokenlineno727, align 4
  %558 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %555, i32 %557, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.218, i32 0, i32 0), i8* %558)
  %559 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt728 = getelementptr inbounds %struct.pstate, %struct.pstate* %559, i32 0, i32 2
  %560 = load i32, i32* %errorcnt728, align 4
  %inc729 = add nsw i32 %560, 1
  store i32 %inc729, i32* %errorcnt728, align 4
  br label %if.end.734

if.else.730:                                      ; preds = %if.then.720
  %561 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %preccounter731 = getelementptr inbounds %struct.pstate, %struct.pstate* %561, i32 0, i32 17
  %562 = load i32, i32* %preccounter731, align 4
  %563 = load %struct.symbol*, %struct.symbol** %sp721, align 8
  %prec732 = getelementptr inbounds %struct.symbol, %struct.symbol* %563, i32 0, i32 5
  store i32 %562, i32* %prec732, align 4
  %564 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declassoc733 = getelementptr inbounds %struct.pstate, %struct.pstate* %564, i32 0, i32 16
  %565 = load i32, i32* %declassoc733, align 4
  %566 = load %struct.symbol*, %struct.symbol** %sp721, align 8
  %assoc = getelementptr inbounds %struct.symbol, %struct.symbol* %566, i32 0, i32 6
  store i32 %565, i32* %assoc, align 4
  br label %if.end.734

if.end.734:                                       ; preds = %if.else.730, %if.then.725
  br label %if.end.740

if.else.735:                                      ; preds = %if.else.711
  %567 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename736 = getelementptr inbounds %struct.pstate, %struct.pstate* %567, i32 0, i32 0
  %568 = load i8*, i8** %filename736, align 8
  %569 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno737 = getelementptr inbounds %struct.pstate, %struct.pstate* %569, i32 0, i32 1
  %570 = load i32, i32* %tokenlineno737, align 4
  %571 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %568, i32 %570, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.219, i32 0, i32 0), i8* %571)
  %572 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt738 = getelementptr inbounds %struct.pstate, %struct.pstate* %572, i32 0, i32 2
  %573 = load i32, i32* %errorcnt738, align 4
  %inc739 = add nsw i32 %573, 1
  store i32 %inc739, i32* %errorcnt738, align 4
  br label %if.end.740

if.end.740:                                       ; preds = %if.else.735, %if.end.734
  br label %if.end.741

if.end.741:                                       ; preds = %if.end.740, %if.then.709
  br label %sw.epilog

sw.bb.742:                                        ; preds = %entry
  %574 = load i8*, i8** %x, align 8
  %arrayidx743 = getelementptr inbounds i8, i8* %574, i64 0
  %575 = load i8, i8* %arrayidx743, align 1
  %conv744 = sext i8 %575 to i32
  %cmp745 = icmp eq i32 %conv744, 123
  br i1 %cmp745, label %if.then.761, label %lor.lhs.false.747

lor.lhs.false.747:                                ; preds = %sw.bb.742
  %576 = load i8*, i8** %x, align 8
  %arrayidx748 = getelementptr inbounds i8, i8* %576, i64 0
  %577 = load i8, i8* %arrayidx748, align 1
  %conv749 = sext i8 %577 to i32
  %cmp750 = icmp eq i32 %conv749, 34
  br i1 %cmp750, label %if.then.761, label %lor.lhs.false.752

lor.lhs.false.752:                                ; preds = %lor.lhs.false.747
  %578 = load i8*, i8** %x, align 8
  %arrayidx753 = getelementptr inbounds i8, i8* %578, i64 0
  %579 = load i8, i8* %arrayidx753, align 1
  %conv754 = sext i8 %579 to i32
  %idxprom755 = sext i32 %conv754 to i64
  %call756 = call i16** @__ctype_b_loc() #9
  %580 = load i16*, i16** %call756, align 8
  %arrayidx757 = getelementptr inbounds i16, i16* %580, i64 %idxprom755
  %581 = load i16, i16* %arrayidx757, align 2
  %conv758 = zext i16 %581 to i32
  %and759 = and i32 %conv758, 8
  %tobool760 = icmp ne i32 %and759, 0
  br i1 %tobool760, label %if.then.761, label %if.else.801

if.then.761:                                      ; preds = %lor.lhs.false.752, %lor.lhs.false.747, %sw.bb.742
  %582 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot762 = getelementptr inbounds %struct.pstate, %struct.pstate* %582, i32 0, i32 14
  %583 = load i8**, i8*** %declargslot762, align 8
  %584 = load i8*, i8** %583, align 8
  %cmp763 = icmp ne i8* %584, null
  br i1 %cmp763, label %if.then.765, label %if.else.777

if.then.765:                                      ; preds = %if.then.761
  %585 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename766 = getelementptr inbounds %struct.pstate, %struct.pstate* %585, i32 0, i32 0
  %586 = load i8*, i8** %filename766, align 8
  %587 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno767 = getelementptr inbounds %struct.pstate, %struct.pstate* %587, i32 0, i32 1
  %588 = load i32, i32* %tokenlineno767, align 4
  %589 = load i8*, i8** %x, align 8
  %arrayidx768 = getelementptr inbounds i8, i8* %589, i64 0
  %590 = load i8, i8* %arrayidx768, align 1
  %conv769 = sext i8 %590 to i32
  %cmp770 = icmp eq i32 %conv769, 34
  br i1 %cmp770, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.765
  %591 = load i8*, i8** %x, align 8
  %arrayidx772 = getelementptr inbounds i8, i8* %591, i64 1
  br label %cond.end

cond.false:                                       ; preds = %if.then.765
  %592 = load i8*, i8** %x, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %arrayidx772, %cond.true ], [ %592, %cond.false ]
  %593 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declkeyword773 = getelementptr inbounds %struct.pstate, %struct.pstate* %593, i32 0, i32 13
  %594 = load i8*, i8** %declkeyword773, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %586, i32 %588, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.220, i32 0, i32 0), i8* %cond, i8* %594)
  %595 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt774 = getelementptr inbounds %struct.pstate, %struct.pstate* %595, i32 0, i32 2
  %596 = load i32, i32* %errorcnt774, align 4
  %inc775 = add nsw i32 %596, 1
  store i32 %inc775, i32* %errorcnt774, align 4
  %597 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state776 = getelementptr inbounds %struct.pstate, %struct.pstate* %597, i32 0, i32 5
  store i32 15, i32* %state776, align 4
  br label %if.end.800

if.else.777:                                      ; preds = %if.then.761
  %598 = load i8*, i8** %x, align 8
  %arrayidx778 = getelementptr inbounds i8, i8* %598, i64 0
  %599 = load i8, i8* %arrayidx778, align 1
  %conv779 = sext i8 %599 to i32
  %cmp780 = icmp eq i32 %conv779, 34
  br i1 %cmp780, label %cond.true.787, label %lor.lhs.false.782

lor.lhs.false.782:                                ; preds = %if.else.777
  %600 = load i8*, i8** %x, align 8
  %arrayidx783 = getelementptr inbounds i8, i8* %600, i64 0
  %601 = load i8, i8* %arrayidx783, align 1
  %conv784 = sext i8 %601 to i32
  %cmp785 = icmp eq i32 %conv784, 123
  br i1 %cmp785, label %cond.true.787, label %cond.false.789

cond.true.787:                                    ; preds = %lor.lhs.false.782, %if.else.777
  %602 = load i8*, i8** %x, align 8
  %arrayidx788 = getelementptr inbounds i8, i8* %602, i64 1
  br label %cond.end.790

cond.false.789:                                   ; preds = %lor.lhs.false.782
  %603 = load i8*, i8** %x, align 8
  br label %cond.end.790

cond.end.790:                                     ; preds = %cond.false.789, %cond.true.787
  %cond791 = phi i8* [ %arrayidx788, %cond.true.787 ], [ %603, %cond.false.789 ]
  %604 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declargslot792 = getelementptr inbounds %struct.pstate, %struct.pstate* %604, i32 0, i32 14
  %605 = load i8**, i8*** %declargslot792, align 8
  store i8* %cond791, i8** %605, align 8
  %606 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot793 = getelementptr inbounds %struct.pstate, %struct.pstate* %606, i32 0, i32 15
  %607 = load i32*, i32** %decllnslot793, align 8
  %tobool794 = icmp ne i32* %607, null
  br i1 %tobool794, label %if.then.795, label %if.end.798

if.then.795:                                      ; preds = %cond.end.790
  %608 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno796 = getelementptr inbounds %struct.pstate, %struct.pstate* %608, i32 0, i32 1
  %609 = load i32, i32* %tokenlineno796, align 4
  %610 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %decllnslot797 = getelementptr inbounds %struct.pstate, %struct.pstate* %610, i32 0, i32 15
  %611 = load i32*, i32** %decllnslot797, align 8
  store i32 %609, i32* %611, align 4
  br label %if.end.798

if.end.798:                                       ; preds = %if.then.795, %cond.end.790
  %612 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state799 = getelementptr inbounds %struct.pstate, %struct.pstate* %612, i32 0, i32 5
  store i32 1, i32* %state799, align 4
  br label %if.end.800

if.end.800:                                       ; preds = %if.end.798, %cond.end
  br label %if.end.808

if.else.801:                                      ; preds = %lor.lhs.false.752
  %613 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename802 = getelementptr inbounds %struct.pstate, %struct.pstate* %613, i32 0, i32 0
  %614 = load i8*, i8** %filename802, align 8
  %615 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno803 = getelementptr inbounds %struct.pstate, %struct.pstate* %615, i32 0, i32 1
  %616 = load i32, i32* %tokenlineno803, align 4
  %617 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %declkeyword804 = getelementptr inbounds %struct.pstate, %struct.pstate* %617, i32 0, i32 13
  %618 = load i8*, i8** %declkeyword804, align 8
  %619 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %614, i32 %616, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.221, i32 0, i32 0), i8* %618, i8* %619)
  %620 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt805 = getelementptr inbounds %struct.pstate, %struct.pstate* %620, i32 0, i32 2
  %621 = load i32, i32* %errorcnt805, align 4
  %inc806 = add nsw i32 %621, 1
  store i32 %inc806, i32* %errorcnt805, align 4
  %622 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state807 = getelementptr inbounds %struct.pstate, %struct.pstate* %622, i32 0, i32 5
  store i32 15, i32* %state807, align 4
  br label %if.end.808

if.end.808:                                       ; preds = %if.else.801, %if.end.800
  br label %sw.epilog

sw.bb.809:                                        ; preds = %entry
  %623 = load i8*, i8** %x, align 8
  %arrayidx810 = getelementptr inbounds i8, i8* %623, i64 0
  %624 = load i8, i8* %arrayidx810, align 1
  %conv811 = sext i8 %624 to i32
  %cmp812 = icmp eq i32 %conv811, 46
  br i1 %cmp812, label %if.then.814, label %if.else.816

if.then.814:                                      ; preds = %sw.bb.809
  %625 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state815 = getelementptr inbounds %struct.pstate, %struct.pstate* %625, i32 0, i32 5
  store i32 1, i32* %state815, align 4
  br label %if.end.853

if.else.816:                                      ; preds = %sw.bb.809
  %626 = load i8*, i8** %x, align 8
  %arrayidx817 = getelementptr inbounds i8, i8* %626, i64 0
  %627 = load i8, i8* %arrayidx817, align 1
  %conv818 = sext i8 %627 to i32
  %idxprom819 = sext i32 %conv818 to i64
  %call820 = call i16** @__ctype_b_loc() #9
  %628 = load i16*, i16** %call820, align 8
  %arrayidx821 = getelementptr inbounds i16, i16* %628, i64 %idxprom819
  %629 = load i16, i16* %arrayidx821, align 2
  %conv822 = zext i16 %629 to i32
  %and823 = and i32 %conv822, 256
  %tobool824 = icmp ne i32 %and823, 0
  br i1 %tobool824, label %if.else.830, label %if.then.825

if.then.825:                                      ; preds = %if.else.816
  %630 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename826 = getelementptr inbounds %struct.pstate, %struct.pstate* %630, i32 0, i32 0
  %631 = load i8*, i8** %filename826, align 8
  %632 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno827 = getelementptr inbounds %struct.pstate, %struct.pstate* %632, i32 0, i32 1
  %633 = load i32, i32* %tokenlineno827, align 4
  %634 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %631, i32 %633, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.222, i32 0, i32 0), i8* %634)
  %635 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt828 = getelementptr inbounds %struct.pstate, %struct.pstate* %635, i32 0, i32 2
  %636 = load i32, i32* %errorcnt828, align 4
  %inc829 = add nsw i32 %636, 1
  store i32 %inc829, i32* %errorcnt828, align 4
  br label %if.end.852

if.else.830:                                      ; preds = %if.else.816
  %637 = load i8*, i8** %x, align 8
  %call832 = call %struct.symbol* @Symbol_new(i8* %637)
  store %struct.symbol* %call832, %struct.symbol** %sp831, align 8
  %638 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %fallback833 = getelementptr inbounds %struct.pstate, %struct.pstate* %638, i32 0, i32 6
  %639 = load %struct.symbol*, %struct.symbol** %fallback833, align 8
  %cmp834 = icmp eq %struct.symbol* %639, null
  br i1 %cmp834, label %if.then.836, label %if.else.838

if.then.836:                                      ; preds = %if.else.830
  %640 = load %struct.symbol*, %struct.symbol** %sp831, align 8
  %641 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %fallback837 = getelementptr inbounds %struct.pstate, %struct.pstate* %641, i32 0, i32 6
  store %struct.symbol* %640, %struct.symbol** %fallback837, align 8
  br label %if.end.851

if.else.838:                                      ; preds = %if.else.830
  %642 = load %struct.symbol*, %struct.symbol** %sp831, align 8
  %fallback839 = getelementptr inbounds %struct.symbol, %struct.symbol* %642, i32 0, i32 4
  %643 = load %struct.symbol*, %struct.symbol** %fallback839, align 8
  %tobool840 = icmp ne %struct.symbol* %643, null
  br i1 %tobool840, label %if.then.841, label %if.else.846

if.then.841:                                      ; preds = %if.else.838
  %644 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename842 = getelementptr inbounds %struct.pstate, %struct.pstate* %644, i32 0, i32 0
  %645 = load i8*, i8** %filename842, align 8
  %646 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno843 = getelementptr inbounds %struct.pstate, %struct.pstate* %646, i32 0, i32 1
  %647 = load i32, i32* %tokenlineno843, align 4
  %648 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %645, i32 %647, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.223, i32 0, i32 0), i8* %648)
  %649 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt844 = getelementptr inbounds %struct.pstate, %struct.pstate* %649, i32 0, i32 2
  %650 = load i32, i32* %errorcnt844, align 4
  %inc845 = add nsw i32 %650, 1
  store i32 %inc845, i32* %errorcnt844, align 4
  br label %if.end.850

if.else.846:                                      ; preds = %if.else.838
  %651 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %fallback847 = getelementptr inbounds %struct.pstate, %struct.pstate* %651, i32 0, i32 6
  %652 = load %struct.symbol*, %struct.symbol** %fallback847, align 8
  %653 = load %struct.symbol*, %struct.symbol** %sp831, align 8
  %fallback848 = getelementptr inbounds %struct.symbol, %struct.symbol* %653, i32 0, i32 4
  store %struct.symbol* %652, %struct.symbol** %fallback848, align 8
  %654 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp849 = getelementptr inbounds %struct.pstate, %struct.pstate* %654, i32 0, i32 4
  %655 = load %struct.lemon*, %struct.lemon** %gp849, align 8
  %has_fallback = getelementptr inbounds %struct.lemon, %struct.lemon* %655, i32 0, i32 38
  store i32 1, i32* %has_fallback, align 4
  br label %if.end.850

if.end.850:                                       ; preds = %if.else.846, %if.then.841
  br label %if.end.851

if.end.851:                                       ; preds = %if.end.850, %if.then.836
  br label %if.end.852

if.end.852:                                       ; preds = %if.end.851, %if.then.825
  br label %if.end.853

if.end.853:                                       ; preds = %if.end.852, %if.then.814
  br label %sw.epilog

sw.bb.854:                                        ; preds = %entry
  %656 = load i8*, i8** %x, align 8
  %arrayidx855 = getelementptr inbounds i8, i8* %656, i64 0
  %657 = load i8, i8* %arrayidx855, align 1
  %conv856 = sext i8 %657 to i32
  %cmp857 = icmp eq i32 %conv856, 46
  br i1 %cmp857, label %if.then.859, label %if.else.861

if.then.859:                                      ; preds = %sw.bb.854
  %658 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state860 = getelementptr inbounds %struct.pstate, %struct.pstate* %658, i32 0, i32 5
  store i32 1, i32* %state860, align 4
  br label %if.end.891

if.else.861:                                      ; preds = %sw.bb.854
  %659 = load i8*, i8** %x, align 8
  %arrayidx862 = getelementptr inbounds i8, i8* %659, i64 0
  %660 = load i8, i8* %arrayidx862, align 1
  %conv863 = sext i8 %660 to i32
  %idxprom864 = sext i32 %conv863 to i64
  %call865 = call i16** @__ctype_b_loc() #9
  %661 = load i16*, i16** %call865, align 8
  %arrayidx866 = getelementptr inbounds i16, i16* %661, i64 %idxprom864
  %662 = load i16, i16* %arrayidx866, align 2
  %conv867 = zext i16 %662 to i32
  %and868 = and i32 %conv867, 256
  %tobool869 = icmp ne i32 %and868, 0
  br i1 %tobool869, label %if.else.875, label %if.then.870

if.then.870:                                      ; preds = %if.else.861
  %663 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename871 = getelementptr inbounds %struct.pstate, %struct.pstate* %663, i32 0, i32 0
  %664 = load i8*, i8** %filename871, align 8
  %665 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno872 = getelementptr inbounds %struct.pstate, %struct.pstate* %665, i32 0, i32 1
  %666 = load i32, i32* %tokenlineno872, align 4
  %667 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %664, i32 %666, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.224, i32 0, i32 0), i8* %667)
  %668 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt873 = getelementptr inbounds %struct.pstate, %struct.pstate* %668, i32 0, i32 2
  %669 = load i32, i32* %errorcnt873, align 4
  %inc874 = add nsw i32 %669, 1
  store i32 %inc874, i32* %errorcnt873, align 4
  br label %if.end.890

if.else.875:                                      ; preds = %if.else.861
  %670 = load i8*, i8** %x, align 8
  %call877 = call %struct.symbol* @Symbol_new(i8* %670)
  store %struct.symbol* %call877, %struct.symbol** %sp876, align 8
  %671 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp878 = getelementptr inbounds %struct.pstate, %struct.pstate* %671, i32 0, i32 4
  %672 = load %struct.lemon*, %struct.lemon** %gp878, align 8
  %wildcard = getelementptr inbounds %struct.lemon, %struct.lemon* %672, i32 0, i32 9
  %673 = load %struct.symbol*, %struct.symbol** %wildcard, align 8
  %cmp879 = icmp eq %struct.symbol* %673, null
  br i1 %cmp879, label %if.then.881, label %if.else.884

if.then.881:                                      ; preds = %if.else.875
  %674 = load %struct.symbol*, %struct.symbol** %sp876, align 8
  %675 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %gp882 = getelementptr inbounds %struct.pstate, %struct.pstate* %675, i32 0, i32 4
  %676 = load %struct.lemon*, %struct.lemon** %gp882, align 8
  %wildcard883 = getelementptr inbounds %struct.lemon, %struct.lemon* %676, i32 0, i32 9
  store %struct.symbol* %674, %struct.symbol** %wildcard883, align 8
  br label %if.end.889

if.else.884:                                      ; preds = %if.else.875
  %677 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %filename885 = getelementptr inbounds %struct.pstate, %struct.pstate* %677, i32 0, i32 0
  %678 = load i8*, i8** %filename885, align 8
  %679 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %tokenlineno886 = getelementptr inbounds %struct.pstate, %struct.pstate* %679, i32 0, i32 1
  %680 = load i32, i32* %tokenlineno886, align 4
  %681 = load i8*, i8** %x, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %678, i32 %680, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.225, i32 0, i32 0), i8* %681)
  %682 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %errorcnt887 = getelementptr inbounds %struct.pstate, %struct.pstate* %682, i32 0, i32 2
  %683 = load i32, i32* %errorcnt887, align 4
  %inc888 = add nsw i32 %683, 1
  store i32 %inc888, i32* %errorcnt887, align 4
  br label %if.end.889

if.end.889:                                       ; preds = %if.else.884, %if.then.881
  br label %if.end.890

if.end.890:                                       ; preds = %if.end.889, %if.then.870
  br label %if.end.891

if.end.891:                                       ; preds = %if.end.890, %if.then.859
  br label %sw.epilog

sw.bb.892:                                        ; preds = %entry, %entry
  %684 = load i8*, i8** %x, align 8
  %arrayidx893 = getelementptr inbounds i8, i8* %684, i64 0
  %685 = load i8, i8* %arrayidx893, align 1
  %conv894 = sext i8 %685 to i32
  %cmp895 = icmp eq i32 %conv894, 46
  br i1 %cmp895, label %if.then.897, label %if.end.899

if.then.897:                                      ; preds = %sw.bb.892
  %686 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state898 = getelementptr inbounds %struct.pstate, %struct.pstate* %686, i32 0, i32 5
  store i32 1, i32* %state898, align 4
  br label %if.end.899

if.end.899:                                       ; preds = %if.then.897, %sw.bb.892
  %687 = load i8*, i8** %x, align 8
  %arrayidx900 = getelementptr inbounds i8, i8* %687, i64 0
  %688 = load i8, i8* %arrayidx900, align 1
  %conv901 = sext i8 %688 to i32
  %cmp902 = icmp eq i32 %conv901, 37
  br i1 %cmp902, label %if.then.904, label %if.end.906

if.then.904:                                      ; preds = %if.end.899
  %689 = load %struct.pstate*, %struct.pstate** %psp.addr, align 8
  %state905 = getelementptr inbounds %struct.pstate, %struct.pstate* %689, i32 0, i32 5
  store i32 2, i32* %state905, align 4
  br label %if.end.906

if.end.906:                                       ; preds = %if.then.904, %if.end.899
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.906, %if.end.891, %if.end.853, %if.end.808, %if.end.741, %if.end.703, %if.end.681, %if.end.660, %if.end.443, %if.end.428, %if.end.399, %if.end.200, %if.end.173, %if.end.158, %if.end.137, %if.end.104, %if.end.92, %if.end.53
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.plink* @Plink_new() #0 {
entry:
  %new = alloca %struct.plink*, align 8
  %i = alloca i32, align 4
  %amt = alloca i32, align 4
  %0 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %cmp = icmp eq %struct.plink* %0, null
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  store i32 100, i32* %amt, align 4
  %1 = load i32, i32* %amt, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 16) #4
  %2 = bitcast i8* %call to %struct.plink*
  store %struct.plink* %2, %struct.plink** @plink_freelist, align 8
  %3 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %cmp1 = icmp eq %struct.plink* %3, null
  br i1 %cmp1, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %amt, align 4
  %sub = sub nsw i32 %6, 1
  %cmp5 = icmp slt i32 %5, %sub
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %add = add nsw i32 %7, 1
  %idxprom = sext i32 %add to i64
  %8 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %arrayidx = getelementptr inbounds %struct.plink, %struct.plink* %8, i64 %idxprom
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %arrayidx8 = getelementptr inbounds %struct.plink, %struct.plink* %10, i64 %idxprom7
  %next = getelementptr inbounds %struct.plink, %struct.plink* %arrayidx8, i32 0, i32 1
  store %struct.plink* %arrayidx, %struct.plink** %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %amt, align 4
  %sub9 = sub nsw i32 %12, 1
  %idxprom10 = sext i32 %sub9 to i64
  %13 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %arrayidx11 = getelementptr inbounds %struct.plink, %struct.plink* %13, i64 %idxprom10
  %next12 = getelementptr inbounds %struct.plink, %struct.plink* %arrayidx11, i32 0, i32 1
  store %struct.plink* null, %struct.plink** %next12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  %14 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  store %struct.plink* %14, %struct.plink** %new, align 8
  %15 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %next14 = getelementptr inbounds %struct.plink, %struct.plink* %15, i32 0, i32 1
  %16 = load %struct.plink*, %struct.plink** %next14, align 8
  store %struct.plink* %16, %struct.plink** @plink_freelist, align 8
  %17 = load %struct.plink*, %struct.plink** %new, align 8
  ret %struct.plink* %17
}

; Function Attrs: nounwind uwtable
define void @Plink_add(%struct.plink** %plpp, %struct.config* %cfp) #0 {
entry:
  %plpp.addr = alloca %struct.plink**, align 8
  %cfp.addr = alloca %struct.config*, align 8
  %new = alloca %struct.plink*, align 8
  store %struct.plink** %plpp, %struct.plink*** %plpp.addr, align 8
  store %struct.config* %cfp, %struct.config** %cfp.addr, align 8
  %call = call %struct.plink* @Plink_new()
  store %struct.plink* %call, %struct.plink** %new, align 8
  %0 = load %struct.plink**, %struct.plink*** %plpp.addr, align 8
  %1 = load %struct.plink*, %struct.plink** %0, align 8
  %2 = load %struct.plink*, %struct.plink** %new, align 8
  %next = getelementptr inbounds %struct.plink, %struct.plink* %2, i32 0, i32 1
  store %struct.plink* %1, %struct.plink** %next, align 8
  %3 = load %struct.plink*, %struct.plink** %new, align 8
  %4 = load %struct.plink**, %struct.plink*** %plpp.addr, align 8
  store %struct.plink* %3, %struct.plink** %4, align 8
  %5 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %6 = load %struct.plink*, %struct.plink** %new, align 8
  %cfp1 = getelementptr inbounds %struct.plink, %struct.plink* %6, i32 0, i32 0
  store %struct.config* %5, %struct.config** %cfp1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plink_copy(%struct.plink** %to, %struct.plink* %from) #0 {
entry:
  %to.addr = alloca %struct.plink**, align 8
  %from.addr = alloca %struct.plink*, align 8
  %nextpl = alloca %struct.plink*, align 8
  store %struct.plink** %to, %struct.plink*** %to.addr, align 8
  store %struct.plink* %from, %struct.plink** %from.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.plink*, %struct.plink** %from.addr, align 8
  %tobool = icmp ne %struct.plink* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.plink*, %struct.plink** %from.addr, align 8
  %next = getelementptr inbounds %struct.plink, %struct.plink* %1, i32 0, i32 1
  %2 = load %struct.plink*, %struct.plink** %next, align 8
  store %struct.plink* %2, %struct.plink** %nextpl, align 8
  %3 = load %struct.plink**, %struct.plink*** %to.addr, align 8
  %4 = load %struct.plink*, %struct.plink** %3, align 8
  %5 = load %struct.plink*, %struct.plink** %from.addr, align 8
  %next1 = getelementptr inbounds %struct.plink, %struct.plink* %5, i32 0, i32 1
  store %struct.plink* %4, %struct.plink** %next1, align 8
  %6 = load %struct.plink*, %struct.plink** %from.addr, align 8
  %7 = load %struct.plink**, %struct.plink*** %to.addr, align 8
  store %struct.plink* %6, %struct.plink** %7, align 8
  %8 = load %struct.plink*, %struct.plink** %nextpl, align 8
  store %struct.plink* %8, %struct.plink** %from.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plink_delete(%struct.plink* %plp) #0 {
entry:
  %plp.addr = alloca %struct.plink*, align 8
  %nextpl = alloca %struct.plink*, align 8
  store %struct.plink* %plp, %struct.plink** %plp.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.plink*, %struct.plink** %plp.addr, align 8
  %tobool = icmp ne %struct.plink* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.plink*, %struct.plink** %plp.addr, align 8
  %next = getelementptr inbounds %struct.plink, %struct.plink* %1, i32 0, i32 1
  %2 = load %struct.plink*, %struct.plink** %next, align 8
  store %struct.plink* %2, %struct.plink** %nextpl, align 8
  %3 = load %struct.plink*, %struct.plink** @plink_freelist, align 8
  %4 = load %struct.plink*, %struct.plink** %plp.addr, align 8
  %next1 = getelementptr inbounds %struct.plink, %struct.plink* %4, i32 0, i32 1
  store %struct.plink* %3, %struct.plink** %next1, align 8
  %5 = load %struct.plink*, %struct.plink** %plp.addr, align 8
  store %struct.plink* %5, %struct.plink** @plink_freelist, align 8
  %6 = load %struct.plink*, %struct.plink** %nextpl, align 8
  store %struct.plink* %6, %struct.plink** %plp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @file_makename(%struct.lemon* %lemp, i8* %suffix) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %suffix.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 32
  %1 = load i8*, i8** %filename, align 8
  %call = call i64 @strlen(i8* %1) #8
  %2 = load i8*, i8** %suffix.addr, align 8
  %call1 = call i64 @strlen(i8* %2) #8
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 5
  %call3 = call noalias i8* @malloc(i64 %add2) #4
  store i8* %call3, i8** %name, align 8
  %3 = load i8*, i8** %name, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %name, align 8
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename5 = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 32
  %7 = load i8*, i8** %filename5, align 8
  %call6 = call i8* @strcpy(i8* %5, i8* %7) #4
  %8 = load i8*, i8** %name, align 8
  %call7 = call i8* @strrchr(i8* %8, i32 46) #8
  store i8* %call7, i8** %cp, align 8
  %9 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %10 = load i8*, i8** %cp, align 8
  store i8 0, i8* %10, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end
  %11 = load i8*, i8** %name, align 8
  %12 = load i8*, i8** %suffix.addr, align 8
  %call10 = call i8* @strcat(i8* %11, i8* %12) #4
  %13 = load i8*, i8** %name, align 8
  ret i8* %13
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @file_open(%struct.lemon* %lemp, i8* %suffix, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %suffix.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i8* %suffix, i8** %suffix.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 33
  %1 = load i8*, i8** %outname, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname1 = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 33
  %3 = load i8*, i8** %outname1, align 8
  call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %5 = load i8*, i8** %suffix.addr, align 8
  %call = call i8* @file_makename(%struct.lemon* %4, i8* %5)
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname2 = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 33
  store i8* %call, i8** %outname2, align 8
  %7 = load i8*, i8** %mode.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp = icmp eq i32 %conv, 114
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %9, %struct._IO_FILE** %fp, align 8
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp6 = icmp eq %struct._IO_FILE* %10, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end.5
  %11 = load i8*, i8** %mode.addr, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 119
  br i1 %cmp9, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %land.lhs.true
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname12 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 33
  %15 = load i8*, i8** %outname12, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i32 0, i32 0), i8* %15)
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 7
  %17 = load i32, i32* %errorcnt, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %errorcnt, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true, %if.end.5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %18, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.11, %if.then.4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %19
}

; Function Attrs: nounwind uwtable
define void @Reprint(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %rp = alloca %struct.rule*, align 8
  %sp = alloca %struct.symbol*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %maxlen = alloca i32, align 4
  %len = alloca i32, align 4
  %ncolumns = alloca i32, align 4
  %skip = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 32
  %1 = load i8*, i8** %filename, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.51, i32 0, i32 0), i8* %1)
  store i32 10, i32* %maxlen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %3, i32 0, i32 4
  %4 = load i32, i32* %nsymbol, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 6
  %7 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %7, i64 %idxprom
  %8 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %8, %struct.symbol** %sp, align 8
  %9 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %call1 = call i64 @strlen(i8* %10) #8
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4
  %11 = load i32, i32* %len, align 4
  %12 = load i32, i32* %maxlen, align 4
  %cmp2 = icmp sgt i32 %11, %12
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %len, align 4
  store i32 %13, i32* %maxlen, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %maxlen, align 4
  %add = add nsw i32 %15, 5
  %div = sdiv i32 76, %add
  store i32 %div, i32* %ncolumns, align 4
  %16 = load i32, i32* %ncolumns, align 4
  %cmp4 = icmp slt i32 %16, 1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 1, i32* %ncolumns, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %for.end
  %17 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol8 = getelementptr inbounds %struct.lemon, %struct.lemon* %17, i32 0, i32 4
  %18 = load i32, i32* %nsymbol8, align 4
  %19 = load i32, i32* %ncolumns, align 4
  %add9 = add nsw i32 %18, %19
  %sub = sub nsw i32 %add9, 1
  %20 = load i32, i32* %ncolumns, align 4
  %div10 = sdiv i32 %sub, %20
  store i32 %div10, i32* %skip, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.30, %if.end.7
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %skip, align 4
  %cmp12 = icmp slt i32 %21, %22
  br i1 %cmp12, label %for.body.14, label %for.end.32

for.body.14:                                      ; preds = %for.cond.11
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %j, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.26, %for.body.14
  %24 = load i32, i32* %j, align 4
  %25 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol17 = getelementptr inbounds %struct.lemon, %struct.lemon* %25, i32 0, i32 4
  %26 = load i32, i32* %nsymbol17, align 4
  %cmp18 = icmp slt i32 %24, %26
  br i1 %cmp18, label %for.body.20, label %for.end.28

for.body.20:                                      ; preds = %for.cond.16
  %27 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols22 = getelementptr inbounds %struct.lemon, %struct.lemon* %28, i32 0, i32 6
  %29 = load %struct.symbol**, %struct.symbol*** %symbols22, align 8
  %arrayidx23 = getelementptr inbounds %struct.symbol*, %struct.symbol** %29, i64 %idxprom21
  %30 = load %struct.symbol*, %struct.symbol** %arrayidx23, align 8
  store %struct.symbol* %30, %struct.symbol** %sp, align 8
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %maxlen, align 4
  %33 = load i32, i32* %maxlen, align 4
  %34 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name24 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 0
  %35 = load i8*, i8** %name24, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 %31, i32 %32, i32 %33, i8* %35)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.20
  %36 = load i32, i32* %skip, align 4
  %37 = load i32, i32* %j, align 4
  %add27 = add nsw i32 %37, %36
  store i32 %add27, i32* %j, align 4
  br label %for.cond.16

for.end.28:                                       ; preds = %for.cond.16
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.28
  %38 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.11

for.end.32:                                       ; preds = %for.cond.11
  %39 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %39, i32 0, i32 1
  %40 = load %struct.rule*, %struct.rule** %rule, align 8
  store %struct.rule* %40, %struct.rule** %rp, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.72, %for.end.32
  %41 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool = icmp ne %struct.rule* %41, null
  br i1 %tobool, label %for.body.34, label %for.end.73

for.body.34:                                      ; preds = %for.cond.33
  %42 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %42, i32 0, i32 0
  %43 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %name35 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 0
  %44 = load i8*, i8** %name35, align 8
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %44)
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.61, %for.body.34
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %46, i32 0, i32 4
  %47 = load i32, i32* %nrhs, align 4
  %cmp39 = icmp slt i32 %45, %47
  br i1 %cmp39, label %for.body.41, label %for.end.63

for.body.41:                                      ; preds = %for.cond.38
  %48 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %48 to i64
  %49 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 5
  %50 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx43 = getelementptr inbounds %struct.symbol*, %struct.symbol** %50, i64 %idxprom42
  %51 = load %struct.symbol*, %struct.symbol** %arrayidx43, align 8
  store %struct.symbol* %51, %struct.symbol** %sp, align 8
  %52 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name44 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 0
  %53 = load i8*, i8** %name44, align 8
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %53)
  %54 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %54, i32 0, i32 2
  %55 = load i32, i32* %type, align 4
  %cmp46 = icmp eq i32 %55, 2
  br i1 %cmp46, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %for.body.41
  store i32 1, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.57, %if.then.48
  %56 = load i32, i32* %j, align 4
  %57 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %57, i32 0, i32 14
  %58 = load i32, i32* %nsubsym, align 4
  %cmp50 = icmp slt i32 %56, %58
  br i1 %cmp50, label %for.body.52, label %for.end.59

for.body.52:                                      ; preds = %for.cond.49
  %59 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %59 to i64
  %60 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 15
  %61 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx54 = getelementptr inbounds %struct.symbol*, %struct.symbol** %61, i64 %idxprom53
  %62 = load %struct.symbol*, %struct.symbol** %arrayidx54, align 8
  %name55 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 0
  %63 = load i8*, i8** %name55, align 8
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* %63)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.52
  %64 = load i32, i32* %j, align 4
  %inc58 = add nsw i32 %64, 1
  store i32 %inc58, i32* %j, align 4
  br label %for.cond.49

for.end.59:                                       ; preds = %for.cond.49
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.59, %for.body.41
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %65 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %65, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.38

for.end.63:                                       ; preds = %for.cond.38
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %66 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym = getelementptr inbounds %struct.rule, %struct.rule* %66, i32 0, i32 9
  %67 = load %struct.symbol*, %struct.symbol** %precsym, align 8
  %tobool65 = icmp ne %struct.symbol* %67, null
  br i1 %tobool65, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %for.end.63
  %68 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym67 = getelementptr inbounds %struct.rule, %struct.rule* %68, i32 0, i32 9
  %69 = load %struct.symbol*, %struct.symbol** %precsym67, align 8
  %name68 = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 0
  %70 = load i8*, i8** %name68, align 8
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* %70)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %for.end.63
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.70
  %71 = load %struct.rule*, %struct.rule** %rp, align 8
  %next = getelementptr inbounds %struct.rule, %struct.rule* %71, i32 0, i32 13
  %72 = load %struct.rule*, %struct.rule** %next, align 8
  store %struct.rule* %72, %struct.rule** %rp, align 8
  br label %for.cond.33

for.end.73:                                       ; preds = %for.cond.33
  ret void
}

; Function Attrs: nounwind uwtable
define void @ConfigPrint(%struct._IO_FILE* %fp, %struct.config* %cfp) #0 {
entry:
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %cfp.addr = alloca %struct.config*, align 8
  %rp = alloca %struct.rule*, align 8
  %sp = alloca %struct.symbol*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store %struct.config* %cfp, %struct.config** %cfp.addr, align 8
  %0 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %rp1 = getelementptr inbounds %struct.config, %struct.config* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %rp1, align 8
  store %struct.rule* %1, %struct.rule** %rp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 0
  %4 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* %5)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 4
  %8 = load i32, i32* %nrhs, align 4
  %cmp = icmp sle i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.config*, %struct.config** %cfp.addr, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %10, i32 0, i32 1
  %11 = load i32, i32* %dot, align 4
  %cmp2 = icmp eq i32 %9, %11
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs4 = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 4
  %15 = load i32, i32* %nrhs4, align 4
  %cmp5 = icmp eq i32 %13, %15
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.end.22

if.end.7:                                         ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.rule*, %struct.rule** %rp, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 5
  %18 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %18, i64 %idxprom
  %19 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %19, %struct.symbol** %sp, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %21 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name8 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 0
  %22 = load i8*, i8** %name8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %22)
  %23 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 2
  %24 = load i32, i32* %type, align 4
  %cmp10 = icmp eq i32 %24, 2
  br i1 %cmp10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %if.end.7
  store i32 1, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then.11
  %25 = load i32, i32* %j, align 4
  %26 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 14
  %27 = load i32, i32* %nsubsym, align 4
  %cmp13 = icmp slt i32 %25, %27
  br i1 %cmp13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.12
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %29 to i64
  %30 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 15
  %31 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx16 = getelementptr inbounds %struct.symbol*, %struct.symbol** %31, i64 %idxprom15
  %32 = load %struct.symbol*, %struct.symbol** %arrayidx16, align 8
  %name17 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 0
  %33 = load i8*, i8** %name17, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* %33)
  br label %for.inc

for.inc:                                          ; preds = %for.body.14
  %34 = load i32, i32* %j, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %if.end.7
  br label %for.inc.20

for.inc.20:                                       ; preds = %if.end.19
  %35 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %35, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %if.then.6, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @PrintAction(%struct.action* %ap, %struct._IO_FILE* %fp, i32 %indent) #0 {
entry:
  %ap.addr = alloca %struct.action*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %indent.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.action* %ap, %struct.action** %ap.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  store i32 1, i32* %result, align 4
  %0 = load %struct.action*, %struct.action** %ap.addr, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 1, label %sw.bb.6
    i32 3, label %sw.bb.10
    i32 5, label %sw.bb.14
    i32 6, label %sw.bb.14
    i32 4, label %sw.bb.21
    i32 7, label %sw.bb.28
    i32 8, label %sw.bb.28
    i32 9, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %3 = load i32, i32* %indent.addr, align 4
  %4 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %4, i32 0, i32 0
  %5 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 0
  %6 = load i8*, i8** %name, align 8
  %7 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %7, i32 0, i32 2
  %stp = bitcast %union.anon* %x to %struct.state**
  %8 = load %struct.state*, %struct.state** %stp, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %8, i32 0, i32 2
  %9 = load i32, i32* %statenum, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i32 %3, i8* %6, i32 %9)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %11 = load i32, i32* %indent.addr, align 4
  %12 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp2 = getelementptr inbounds %struct.action, %struct.action* %12, i32 0, i32 0
  %13 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %name3 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %14 = load i8*, i8** %name3, align 8
  %15 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x4 = getelementptr inbounds %struct.action, %struct.action* %15, i32 0, i32 2
  %rp = bitcast %union.anon* %x4 to %struct.rule**
  %16 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 10
  %17 = load i32, i32* %index, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i32 %11, i8* %14, i32 %17)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %19 = load i32, i32* %indent.addr, align 4
  %20 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp7 = getelementptr inbounds %struct.action, %struct.action* %20, i32 0, i32 0
  %21 = load %struct.symbol*, %struct.symbol** %sp7, align 8
  %name8 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 0
  %22 = load i8*, i8** %name8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 %19, i8* %22)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %24 = load i32, i32* %indent.addr, align 4
  %25 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp11 = getelementptr inbounds %struct.action, %struct.action* %25, i32 0, i32 0
  %26 = load %struct.symbol*, %struct.symbol** %sp11, align 8
  %name12 = getelementptr inbounds %struct.symbol, %struct.symbol* %26, i32 0, i32 0
  %27 = load i8*, i8** %name12, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 %24, i8* %27)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry, %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %29 = load i32, i32* %indent.addr, align 4
  %30 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp15 = getelementptr inbounds %struct.action, %struct.action* %30, i32 0, i32 0
  %31 = load %struct.symbol*, %struct.symbol** %sp15, align 8
  %name16 = getelementptr inbounds %struct.symbol, %struct.symbol* %31, i32 0, i32 0
  %32 = load i8*, i8** %name16, align 8
  %33 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x17 = getelementptr inbounds %struct.action, %struct.action* %33, i32 0, i32 2
  %rp18 = bitcast %union.anon* %x17 to %struct.rule**
  %34 = load %struct.rule*, %struct.rule** %rp18, align 8
  %index19 = getelementptr inbounds %struct.rule, %struct.rule* %34, i32 0, i32 10
  %35 = load i32, i32* %index19, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i32 0, i32 0), i32 %29, i8* %32, i32 %35)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %37 = load i32, i32* %indent.addr, align 4
  %38 = load %struct.action*, %struct.action** %ap.addr, align 8
  %sp22 = getelementptr inbounds %struct.action, %struct.action* %38, i32 0, i32 0
  %39 = load %struct.symbol*, %struct.symbol** %sp22, align 8
  %name23 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 0
  %40 = load i8*, i8** %name23, align 8
  %41 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x24 = getelementptr inbounds %struct.action, %struct.action* %41, i32 0, i32 2
  %stp25 = bitcast %union.anon* %x24 to %struct.state**
  %42 = load %struct.state*, %struct.state** %stp25, align 8
  %statenum26 = getelementptr inbounds %struct.state, %struct.state* %42, i32 0, i32 2
  %43 = load i32, i32* %statenum26, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.68, i32 0, i32 0), i32 %37, i8* %40, i32 %43)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry, %entry, %entry
  store i32 0, i32* %result, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.28, %sw.bb.21, %sw.bb.14, %sw.bb.10, %sw.bb.6, %sw.bb.1, %sw.bb
  %44 = load i32, i32* %result, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define void @ReportOutput(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %stp = alloca %struct.state*, align 8
  %cfp = alloca %struct.config*, align 8
  %ap = alloca %struct.action*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %buf = alloca [20 x i8], align 16
  %j = alloca i32, align 4
  %sp = alloca %struct.symbol*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call = call %struct._IO_FILE* @file_open(%struct.lemon* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %3, i32 0, i32 2
  %4 = load i32, i32* %nstate, align 4
  %cmp1 = icmp slt i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 0
  %7 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %7, i64 %idxprom
  %8 = load %struct.state*, %struct.state** %arrayidx, align 8
  store %struct.state* %8, %struct.state** %stp, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %10 = load %struct.state*, %struct.state** %stp, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 2
  %11 = load i32, i32* %statenum, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32 %11)
  %12 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %basisflag = getelementptr inbounds %struct.lemon, %struct.lemon* %12, i32 0, i32 37
  %13 = load i32, i32* %basisflag, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %14 = load %struct.state*, %struct.state** %stp, align 8
  %bp = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 0
  %15 = load %struct.config*, %struct.config** %bp, align 8
  store %struct.config* %15, %struct.config** %cfp, align 8
  br label %if.end.5

if.else:                                          ; preds = %for.body
  %16 = load %struct.state*, %struct.state** %stp, align 8
  %cfp4 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 1
  %17 = load %struct.config*, %struct.config** %cfp4, align 8
  store %struct.config* %17, %struct.config** %cfp, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.3
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %if.end.5
  %18 = load %struct.config*, %struct.config** %cfp, align 8
  %tobool6 = icmp ne %struct.config* %18, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.config*, %struct.config** %cfp, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %19, i32 0, i32 1
  %20 = load i32, i32* %dot, align 4
  %21 = load %struct.config*, %struct.config** %cfp, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %21, i32 0, i32 0
  %22 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 4
  %23 = load i32, i32* %nrhs, align 4
  %cmp7 = icmp eq i32 %20, %23
  br i1 %cmp7, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %while.body
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %24 = load %struct.config*, %struct.config** %cfp, align 8
  %rp9 = getelementptr inbounds %struct.config, %struct.config* %24, i32 0, i32 0
  %25 = load %struct.rule*, %struct.rule** %rp9, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 10
  %26 = load i32, i32* %index, align 4
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 %26) #4
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %arraydecay11 = getelementptr inbounds [20 x i8], [20 x i8]* %buf, i32 0, i32 0
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* %arraydecay11)
  br label %if.end.15

if.else.13:                                       ; preds = %while.body
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.13, %if.then.8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %30 = load %struct.config*, %struct.config** %cfp, align 8
  call void @ConfigPrint(%struct._IO_FILE* %29, %struct.config* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %32 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %basisflag17 = getelementptr inbounds %struct.lemon, %struct.lemon* %32, i32 0, i32 37
  %33 = load i32, i32* %basisflag17, align 4
  %tobool18 = icmp ne i32 %33, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.end.15
  %34 = load %struct.config*, %struct.config** %cfp, align 8
  %bp20 = getelementptr inbounds %struct.config, %struct.config* %34, i32 0, i32 8
  %35 = load %struct.config*, %struct.config** %bp20, align 8
  store %struct.config* %35, %struct.config** %cfp, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.15
  %36 = load %struct.config*, %struct.config** %cfp, align 8
  %next = getelementptr inbounds %struct.config, %struct.config* %36, i32 0, i32 7
  %37 = load %struct.config*, %struct.config** %next, align 8
  store %struct.config* %37, %struct.config** %cfp, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %39 = load %struct.state*, %struct.state** %stp, align 8
  %ap24 = getelementptr inbounds %struct.state, %struct.state* %39, i32 0, i32 3
  %40 = load %struct.action*, %struct.action** %ap24, align 8
  store %struct.action* %40, %struct.action** %ap, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %while.end
  %41 = load %struct.action*, %struct.action** %ap, align 8
  %tobool26 = icmp ne %struct.action* %41, null
  br i1 %tobool26, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.25
  %42 = load %struct.action*, %struct.action** %ap, align 8
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @PrintAction(%struct.action* %42, %struct._IO_FILE* %43, i32 30)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.body.27
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %45 = load %struct.action*, %struct.action** %ap, align 8
  %next33 = getelementptr inbounds %struct.action, %struct.action* %45, i32 0, i32 3
  %46 = load %struct.action*, %struct.action** %next33, align 8
  store %struct.action* %46, %struct.action** %ap, align 8
  br label %for.cond.25

for.end:                                          ; preds = %for.cond.25
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.75, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.72, %for.end.36
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %52, i32 0, i32 4
  %53 = load i32, i32* %nsymbol, align 4
  %cmp40 = icmp slt i32 %51, %53
  br i1 %cmp40, label %for.body.41, label %for.end.74

for.body.41:                                      ; preds = %for.cond.39
  %54 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %54 to i64
  %55 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %55, i32 0, i32 6
  %56 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx43 = getelementptr inbounds %struct.symbol*, %struct.symbol** %56, i64 %idxprom42
  %57 = load %struct.symbol*, %struct.symbol** %arrayidx43, align 8
  store %struct.symbol* %57, %struct.symbol** %sp, align 8
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %59 = load i32, i32* %i, align 4
  %60 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 0
  %61 = load i8*, i8** %name, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i32 %59, i8* %61)
  %62 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 2
  %63 = load i32, i32* %type, align 4
  %cmp45 = icmp eq i32 %63, 1
  br i1 %cmp45, label %if.then.46, label %if.end.70

if.then.46:                                       ; preds = %for.body.41
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.78, i32 0, i32 0))
  %65 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %lambda = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 8
  %66 = load i32, i32* %lambda, align 4
  %tobool48 = icmp ne i32 %66, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.46
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0))
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  store i32 0, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.67, %if.end.51
  %68 = load i32, i32* %j, align 4
  %69 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %69, i32 0, i32 5
  %70 = load i32, i32* %nterminal, align 4
  %cmp53 = icmp slt i32 %68, %70
  br i1 %cmp53, label %for.body.54, label %for.end.69

for.body.54:                                      ; preds = %for.cond.52
  %71 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %firstset = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 7
  %72 = load i8*, i8** %firstset, align 8
  %tobool55 = icmp ne i8* %72, null
  br i1 %tobool55, label %land.lhs.true, label %if.end.66

land.lhs.true:                                    ; preds = %for.body.54
  %73 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %73 to i64
  %74 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %firstset57 = getelementptr inbounds %struct.symbol, %struct.symbol* %74, i32 0, i32 7
  %75 = load i8*, i8** %firstset57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %75, i64 %idxprom56
  %76 = load i8, i8* %arrayidx58, align 1
  %conv = sext i8 %76 to i32
  %tobool59 = icmp ne i32 %conv, 0
  br i1 %tobool59, label %if.then.60, label %if.end.66

if.then.60:                                       ; preds = %land.lhs.true
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %78 to i64
  %79 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols62 = getelementptr inbounds %struct.lemon, %struct.lemon* %79, i32 0, i32 6
  %80 = load %struct.symbol**, %struct.symbol*** %symbols62, align 8
  %arrayidx63 = getelementptr inbounds %struct.symbol*, %struct.symbol** %80, i64 %idxprom61
  %81 = load %struct.symbol*, %struct.symbol** %arrayidx63, align 8
  %name64 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 0
  %82 = load i8*, i8** %name64, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %82)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.60, %land.lhs.true, %for.body.54
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %83 = load i32, i32* %j, align 4
  %inc68 = add nsw i32 %83, 1
  store i32 %inc68, i32* %j, align 4
  br label %for.cond.52

for.end.69:                                       ; preds = %for.cond.52
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %for.body.41
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.70
  %85 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %85, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.39

for.end.74:                                       ; preds = %for.cond.39
  br label %return

return:                                           ; preds = %for.end.74, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @pathsearch(i8* %argv0, i8* %name, i32 %modemask) #0 {
entry:
  %argv0.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %modemask.addr = alloca i32, align 4
  %pathlist = alloca i8*, align 8
  %path = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %c = alloca i8, align 1
  store i8* %argv0, i8** %argv0.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %modemask, i32* %modemask.addr, align 4
  %0 = load i8*, i8** %argv0.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #8
  store i8* %call, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %cp, align 8
  %3 = load i8, i8* %2, align 1
  store i8 %3, i8* %c, align 1
  %4 = load i8*, i8** %cp, align 8
  store i8 0, i8* %4, align 1
  %5 = load i8*, i8** %argv0.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #8
  %6 = load i8*, i8** %name.addr, align 8
  %call2 = call i64 @strlen(i8* %6) #8
  %add = add i64 %call1, %call2
  %add3 = add i64 %add, 2
  %call4 = call noalias i8* @malloc(i64 %add3) #4
  store i8* %call4, i8** %path, align 8
  %7 = load i8*, i8** %path, align 8
  %tobool5 = icmp ne i8* %7, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %8 = load i8*, i8** %path, align 8
  %9 = load i8*, i8** %argv0.addr, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* %9, i8* %10) #4
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %11 = load i8, i8* %c, align 1
  %12 = load i8*, i8** %cp, align 8
  store i8 %11, i8* %12, align 1
  br label %if.end.37

if.else:                                          ; preds = %entry
  %call8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0)) #4
  store i8* %call8, i8** %pathlist, align 8
  %13 = load i8*, i8** %pathlist, align 8
  %cmp = icmp eq i8* %13, null
  br i1 %cmp, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.82, i32 0, i32 0), i8** %pathlist, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.else
  %14 = load i8*, i8** %pathlist, align 8
  %call11 = call i64 @strlen(i8* %14) #8
  %15 = load i8*, i8** %name.addr, align 8
  %call12 = call i64 @strlen(i8* %15) #8
  %add13 = add i64 %call11, %call12
  %add14 = add i64 %add13, 2
  %call15 = call noalias i8* @malloc(i64 %add14) #4
  store i8* %call15, i8** %path, align 8
  %16 = load i8*, i8** %path, align 8
  %cmp16 = icmp ne i8* %16, null
  br i1 %cmp16, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %if.end.10
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %if.then.17
  %17 = load i8*, i8** %pathlist, align 8
  %18 = load i8, i8* %17, align 1
  %tobool18 = icmp ne i8 %18, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i8*, i8** %pathlist, align 8
  %call19 = call i8* @strchr(i8* %19, i32 58) #8
  store i8* %call19, i8** %cp, align 8
  %20 = load i8*, i8** %cp, align 8
  %cmp20 = icmp eq i8* %20, null
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %while.body
  %21 = load i8*, i8** %pathlist, align 8
  %call22 = call i64 @strlen(i8* %21) #8
  %22 = load i8*, i8** %pathlist, align 8
  %arrayidx = getelementptr inbounds i8, i8* %22, i64 %call22
  store i8* %arrayidx, i8** %cp, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %while.body
  %23 = load i8*, i8** %cp, align 8
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %c, align 1
  %25 = load i8*, i8** %cp, align 8
  store i8 0, i8* %25, align 1
  %26 = load i8*, i8** %path, align 8
  %27 = load i8*, i8** %pathlist, align 8
  %28 = load i8*, i8** %name.addr, align 8
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i8* %27, i8* %28) #4
  %29 = load i8, i8* %c, align 1
  %30 = load i8*, i8** %cp, align 8
  store i8 %29, i8* %30, align 1
  %31 = load i8, i8* %c, align 1
  %conv = sext i8 %31 to i32
  %cmp25 = icmp eq i32 %conv, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.end.23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8** %pathlist, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %if.end.23
  %32 = load i8*, i8** %cp, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %32, i64 1
  store i8* %arrayidx29, i8** %pathlist, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.27
  %33 = load i8*, i8** %path, align 8
  %34 = load i32, i32* %modemask.addr, align 4
  %call31 = call i32 @access(i8* %33, i32 %34) #4
  %cmp32 = icmp eq i32 %call31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.30
  br label %while.end

if.end.35:                                        ; preds = %if.end.30
  br label %while.cond

while.end:                                        ; preds = %if.then.34, %while.cond
  br label %if.end.36

if.end.36:                                        ; preds = %while.end, %if.end.10
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  %35 = load i8*, i8** %path, align 8
  ret i8* %35
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @compute_action(%struct.lemon* %lemp, %struct.action* %ap) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %ap.addr = alloca %struct.action*, align 8
  %act = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store %struct.action* %ap, %struct.action** %ap.addr, align 8
  %0 = load %struct.action*, %struct.action** %ap.addr, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.1
    i32 3, label %sw.bb.3
    i32 1, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %2, i32 0, i32 2
  %stp = bitcast %union.anon* %x to %struct.state**
  %3 = load %struct.state*, %struct.state** %stp, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %3, i32 0, i32 2
  %4 = load i32, i32* %statenum, align 4
  store i32 %4, i32* %act, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.action*, %struct.action** %ap.addr, align 8
  %x2 = getelementptr inbounds %struct.action, %struct.action* %5, i32 0, i32 2
  %rp = bitcast %union.anon* %x2 to %struct.rule**
  %6 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %6, i32 0, i32 10
  %7 = load i32, i32* %index, align 4
  %8 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %8, i32 0, i32 2
  %9 = load i32, i32* %nstate, align 4
  %add = add nsw i32 %7, %9
  store i32 %add, i32* %act, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate4 = getelementptr inbounds %struct.lemon, %struct.lemon* %10, i32 0, i32 2
  %11 = load i32, i32* %nstate4, align 4
  %12 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule = getelementptr inbounds %struct.lemon, %struct.lemon* %12, i32 0, i32 3
  %13 = load i32, i32* %nrule, align 4
  %add5 = add nsw i32 %11, %13
  store i32 %add5, i32* %act, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate7 = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 2
  %15 = load i32, i32* %nstate7, align 4
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule8 = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 3
  %17 = load i32, i32* %nrule8, align 4
  %add9 = add nsw i32 %15, %17
  %add10 = add nsw i32 %add9, 1
  store i32 %add10, i32* %act, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %act, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.6, %sw.bb.3, %sw.bb.1, %sw.bb
  %18 = load i32, i32* %act, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define void @tplt_xfer(i8* %name, %struct._IO_FILE* %in, %struct._IO_FILE* %out, i32* %lineno) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %in.addr = alloca %struct._IO_FILE*, align 8
  %out.addr = alloca %struct._IO_FILE*, align 8
  %lineno.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %iStart = alloca i32, align 4
  %line = alloca [1000 x i8], align 16
  store i8* %name, i8** %name.addr, align 8
  store %struct._IO_FILE* %in, %struct._IO_FILE** %in.addr, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i32* %lineno, i32** %lineno.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.42, %entry
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %in.addr, align 8
  %call = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %0)
  %tobool = icmp ne i8* %call, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 37
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %arrayidx2 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 1
  %2 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp ne i32 %conv3, 37
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %3, %lor.end ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32*, i32** %lineno.addr, align 8
  %6 = load i32, i32* %5, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %5, align 4
  store i32 0, i32* %iStart, align 4
  %7 = load i8*, i8** %name.addr, align 8
  %tobool6 = icmp ne i8* %7, null
  br i1 %tobool6, label %if.then, label %if.end.42

if.then:                                          ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx7, align 1
  %tobool8 = icmp ne i8 %9, 0
  br i1 %tobool8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom9
  %11 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 80
  br i1 %cmp12, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom14
  %call16 = call i32 @strncmp(i8* %arrayidx15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i64 5) #8
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %land.lhs.true.19, label %if.end.40

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %i, align 4
  %cmp20 = icmp eq i32 %13, 0
  br i1 %cmp20, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom22
  %15 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %15 to i32
  %idxprom25 = sext i32 %conv24 to i64
  %call26 = call i16** @__ctype_b_loc() #9
  %16 = load i16*, i16** %call26, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %16, i64 %idxprom25
  %17 = load i16, i16* %arrayidx27, align 2
  %conv28 = zext i16 %17 to i32
  %and = and i32 %conv28, 1024
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.end.40, label %if.then.30

if.then.30:                                       ; preds = %lor.lhs.false, %land.lhs.true.19
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %iStart, align 4
  %cmp31 = icmp sgt i32 %18, %19
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %if.then.30
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %iStart, align 4
  %sub34 = sub nsw i32 %21, %22
  %23 = load i32, i32* %iStart, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom35
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i32 %sub34, i8* %arrayidx36)
  br label %if.end

if.end:                                           ; preds = %if.then.33, %if.then.30
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %25 = load i8*, i8** %name.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %25)
  %26 = load i32, i32* %i, align 4
  %add = add nsw i32 %26, 4
  store i32 %add, i32* %i, align 4
  %27 = load i32, i32* %i, align 4
  %add39 = add nsw i32 %27, 1
  store i32 %add39, i32* %iStart, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %28 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %28, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %while.body
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %30 = load i32, i32* %iStart, align 4
  %idxprom43 = sext i32 %30 to i64
  %arrayidx44 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i64 %idxprom43
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i8* %arrayidx44)
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @tplt_open(%struct.lemon* %lemp) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %buf = alloca [1000 x i8], align 16
  %in = alloca %struct._IO_FILE*, align 8
  %tpltname = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 32
  %1 = load i8*, i8** %filename, align 8
  %call = call i8* @strrchr(i8* %1, i32 46) #8
  store i8* %call, i8** %cp, align 8
  %2 = load i8*, i8** %cp, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  %3 = load i8*, i8** %cp, align 8
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename1 = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 32
  %5 = load i8*, i8** %filename1, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename2 = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 32
  %7 = load i8*, i8** %filename2, align 8
  %call3 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i32 %conv, i8* %7) #4
  br label %if.end

if.else:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  %8 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename5 = getelementptr inbounds %struct.lemon, %struct.lemon* %8, i32 0, i32 32
  %9 = load i8*, i8** %filename5, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i8* %9) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay7 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  %call8 = call i32 @access(i8* %arraydecay7, i32 4) #4
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.end
  %arraydecay11 = getelementptr inbounds [1000 x i8], [1000 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay11, i8** %tpltname, align 8
  br label %if.end.21

if.else.12:                                       ; preds = %if.end
  %call13 = call i32 @access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i32 0, i32 0), i32 4) #4
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %if.else.12
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i32 0, i32 0), i8** %tpltname, align 8
  br label %if.end.20

if.else.17:                                       ; preds = %if.else.12
  %10 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename18 = getelementptr inbounds %struct.lemon, %struct.lemon* %10, i32 0, i32 32
  %11 = load i8*, i8** %filename18, align 8
  %call19 = call i8* @pathsearch(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i32 0, i32 0), i32 0)
  store i8* %call19, i8** %tpltname, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.10
  %12 = load i8*, i8** %tpltname, align 8
  %cmp22 = icmp eq i8* %12, null
  br i1 %cmp22, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.end.21
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i32 0, i32 0))
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 7
  %15 = load i32, i32* %errorcnt, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %errorcnt, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.21
  %16 = load i8*, i8** %tpltname, align 8
  %call27 = call %struct._IO_FILE* @fopen(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call27, %struct._IO_FILE** %in, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp28 = icmp eq %struct._IO_FILE* %17, null
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.26
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @tplt_open.templatename, i32 0, i32 0))
  %19 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt32 = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 7
  %20 = load i32, i32* %errorcnt32, align 4
  %inc33 = add nsw i32 %20, 1
  store i32 %inc33, i32* %errorcnt32, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.34:                                        ; preds = %if.end.26
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  store %struct._IO_FILE* %21, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.34, %if.then.30, %if.then.24
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %22
}

; Function Attrs: nounwind uwtable
define void @tplt_linedir(%struct._IO_FILE* %out, i32 %lineno, i8* %filename) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %lineno.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @mybasename(i8* %0)
  store i8* %call, i8** %filename.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %2 = load i32, i32* %lineno.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0), i32 %2)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i8, i8* %3, align 1
  %tobool = icmp ne i8 %4, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %filename.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call3 = call i32 @_IO_putc(i32 92, %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load i8*, i8** %filename.addr, align 8
  %9 = load i8, i8* %8, align 1
  %conv4 = sext i8 %9 to i32
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call5 = call i32 @_IO_putc(i32 %conv4, %struct._IO_FILE* %10)
  %11 = load i8*, i8** %filename.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %filename.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #8
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

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @tplt_print(%struct._IO_FILE* %out, %struct.lemon* %lemp, i8* %str, i32 %strln, i32* %lineno) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %str.addr = alloca i8*, align 8
  %strln.addr = alloca i32, align 4
  %lineno.addr = alloca i32*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  store i32 %strln, i32* %strln.addr, align 4
  store i32* %lineno, i32** %lineno.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %2 = load i32, i32* %strln.addr, align 4
  %3 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %3, i32 0, i32 32
  %4 = load i8*, i8** %filename, align 8
  call void @tplt_linedir(%struct._IO_FILE* %1, i32 %2, i8* %4)
  %5 = load i32*, i32** %lineno.addr, align 8
  %6 = load i32, i32* %5, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %5, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i8, i8* %7, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %str.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv = sext i8 %10 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %while.body
  %11 = load i32*, i32** %lineno.addr, align 8
  %12 = load i32, i32* %11, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, i32* %11, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %while.body
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i8, i8* %13, align 1
  %conv6 = sext i8 %14 to i32
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 @_IO_putc(i32 %conv6, %struct._IO_FILE* %15)
  %16 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load i8*, i8** %str.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 -1
  %18 = load i8, i8* %arrayidx, align 1
  %conv7 = sext i8 %18 to i32
  %cmp8 = icmp ne i32 %conv7, 10
  br i1 %cmp8, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %while.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call11 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %19)
  %20 = load i32*, i32** %lineno.addr, align 8
  %21 = load i32, i32* %20, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, i32* %20, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %while.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %23 = load i32*, i32** %lineno.addr, align 8
  %24 = load i32, i32* %23, align 4
  %add = add nsw i32 %24, 2
  %25 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname = getelementptr inbounds %struct.lemon, %struct.lemon* %25, i32 0, i32 33
  %26 = load i8*, i8** %outname, align 8
  call void @tplt_linedir(%struct._IO_FILE* %22, i32 %add, i8* %26)
  %27 = load i32*, i32** %lineno.addr, align 8
  %28 = load i32, i32* %27, align 4
  %add14 = add nsw i32 %28, 2
  store i32 %add14, i32* %27, align 4
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_destructor_code(%struct._IO_FILE* %out, %struct.symbol* %sp, %struct.lemon* %lemp, i32* %lineno) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %sp.addr = alloca %struct.symbol*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %lineno.addr = alloca i32*, align 8
  %cp = alloca i8*, align 8
  %linecnt = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.symbol* %sp, %struct.symbol** %sp.addr, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32* %lineno, i32** %lineno.addr, align 8
  store i8* null, i8** %cp, align 8
  store i32 0, i32* %linecnt, align 4
  %0 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %0, i32 0, i32 2
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokendest = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 28
  %3 = load i8*, i8** %tokendest, align 8
  store i8* %3, i8** %cp, align 8
  %4 = load i8*, i8** %cp, align 8
  %cmp1 = icmp eq i8* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %6 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokendestln = getelementptr inbounds %struct.lemon, %struct.lemon* %6, i32 0, i32 29
  %7 = load i32, i32* %tokendestln, align 4
  %8 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %8, i32 0, i32 32
  %9 = load i8*, i8** %filename, align 8
  call void @tplt_linedir(%struct._IO_FILE* %5, i32 %7, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %entry
  %11 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %destructor = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 10
  %12 = load i8*, i8** %destructor, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then.3, label %if.else.7

if.then.3:                                        ; preds = %if.else
  %13 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %destructor4 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 10
  %14 = load i8*, i8** %destructor4, align 8
  store i8* %14, i8** %cp, align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %16 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %destructorln = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 11
  %17 = load i32, i32* %destructorln, align 4
  %18 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename5 = getelementptr inbounds %struct.lemon, %struct.lemon* %18, i32 0, i32 32
  %19 = load i8*, i8** %filename5, align 8
  call void @tplt_linedir(%struct._IO_FILE* %15, i32 %17, i8* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.18

if.else.7:                                        ; preds = %if.else
  %21 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vardest = getelementptr inbounds %struct.lemon, %struct.lemon* %21, i32 0, i32 30
  %22 = load i8*, i8** %vardest, align 8
  %tobool8 = icmp ne i8* %22, null
  br i1 %tobool8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.else.7
  %23 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vardest10 = getelementptr inbounds %struct.lemon, %struct.lemon* %23, i32 0, i32 30
  %24 = load i8*, i8** %vardest10, align 8
  store i8* %24, i8** %cp, align 8
  %25 = load i8*, i8** %cp, align 8
  %cmp11 = icmp eq i8* %25, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %27 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vardestln = getelementptr inbounds %struct.lemon, %struct.lemon* %27, i32 0, i32 31
  %28 = load i32, i32* %vardestln, align 4
  %29 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename14 = getelementptr inbounds %struct.lemon, %struct.lemon* %29, i32 0, i32 32
  %30 = load i8*, i8** %filename14, align 8
  call void @tplt_linedir(%struct._IO_FILE* %26, i32 %28, i8* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0))
  br label %if.end.17

if.else.16:                                       ; preds = %if.else.7
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.3
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.19
  %32 = load i8*, i8** %cp, align 8
  %33 = load i8, i8* %32, align 1
  %tobool20 = icmp ne i8 %33, 0
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8*, i8** %cp, align 8
  %35 = load i8, i8* %34, align 1
  %conv = sext i8 %35 to i32
  %cmp21 = icmp eq i32 %conv, 36
  br i1 %cmp21, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %for.body
  %36 = load i8*, i8** %cp, align 8
  %arrayidx = getelementptr inbounds i8, i8* %36, i64 1
  %37 = load i8, i8* %arrayidx, align 1
  %conv23 = sext i8 %37 to i32
  %cmp24 = icmp eq i32 %conv23, 36
  br i1 %cmp24, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %39 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %dtnum = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 13
  %40 = load i32, i32* %dtnum, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0), i32 %40)
  %41 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.inc

if.end.28:                                        ; preds = %land.lhs.true, %for.body
  %42 = load i8*, i8** %cp, align 8
  %43 = load i8, i8* %42, align 1
  %conv29 = sext i8 %43 to i32
  %cmp30 = icmp eq i32 %conv29, 10
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  %44 = load i32, i32* %linecnt, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %linecnt, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.28
  %45 = load i8*, i8** %cp, align 8
  %46 = load i8, i8* %45, align 1
  %conv34 = sext i8 %46 to i32
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call35 = call i32 @fputc(i32 %conv34, %struct._IO_FILE* %47)
  br label %for.inc

for.inc:                                          ; preds = %if.end.33, %if.then.26
  %48 = load i8*, i8** %cp, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr36, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load i32, i32* %linecnt, align 4
  %add = add nsw i32 3, %49
  %50 = load i32*, i32** %lineno.addr, align 8
  %51 = load i32, i32* %50, align 4
  %add37 = add nsw i32 %51, %add
  store i32 %add37, i32* %50, align 4
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %54 = load i32*, i32** %lineno.addr, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname = getelementptr inbounds %struct.lemon, %struct.lemon* %56, i32 0, i32 33
  %57 = load i8*, i8** %outname, align 8
  call void @tplt_linedir(%struct._IO_FILE* %53, i32 %55, i8* %57)
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.2
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @has_destructor(%struct.symbol* %sp, %struct.lemon* %lemp) #0 {
entry:
  %sp.addr = alloca %struct.symbol*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %ret = alloca i32, align 4
  store %struct.symbol* %sp, %struct.symbol** %sp.addr, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %0, i32 0, i32 2
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokendest = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 28
  %3 = load i8*, i8** %tokendest, align 8
  %cmp1 = icmp ne i8* %3, null
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %ret, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vardest = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 30
  %5 = load i8*, i8** %vardest, align 8
  %cmp2 = icmp ne i8* %5, null
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.else
  %6 = load %struct.symbol*, %struct.symbol** %sp.addr, align 8
  %destructor = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 10
  %7 = load i8*, i8** %destructor, align 8
  %cmp4 = icmp ne i8* %7, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.else
  %8 = phi i1 [ true, %if.else ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %if.then
  %9 = load i32, i32* %ret, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define i8* @append_str(i8* %zText, i32 %n, i32 %p1, i32 %p2) #0 {
entry:
  %retval = alloca i8*, align 8
  %zText.addr = alloca i8*, align 8
  %n.addr = alloca i32, align 4
  %p1.addr = alloca i32, align 4
  %p2.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %zInt = alloca [40 x i8], align 16
  store i8* %zText, i8** %zText.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %p1, i32* %p1.addr, align 4
  store i32 %p2, i32* %p2.addr, align 4
  %0 = load i8*, i8** %zText.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @append_str.used, align 4
  %1 = load i8*, i8** @append_str.z, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sle i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %n.addr, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %4 = load i32, i32* %n.addr, align 4
  %5 = load i32, i32* @append_str.used, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, i32* @append_str.used, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %6 = load i8*, i8** %zText.addr, align 8
  %call = call i64 @strlen(i8* %6) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %n.addr, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.end
  %7 = load i32, i32* %n.addr, align 4
  %conv7 = sext i32 %7 to i64
  %add8 = add i64 %conv7, 80
  %8 = load i32, i32* @append_str.used, align 4
  %conv9 = sext i32 %8 to i64
  %add10 = add i64 %add8, %conv9
  %9 = load i32, i32* @append_str.alloced, align 4
  %conv11 = sext i32 %9 to i64
  %cmp12 = icmp uge i64 %add10, %conv11
  br i1 %cmp12, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.end.6
  %10 = load i32, i32* %n.addr, align 4
  %conv15 = sext i32 %10 to i64
  %add16 = add i64 %conv15, 80
  %11 = load i32, i32* @append_str.used, align 4
  %conv17 = sext i32 %11 to i64
  %add18 = add i64 %add16, %conv17
  %add19 = add i64 %add18, 200
  %conv20 = trunc i64 %add19 to i32
  store i32 %conv20, i32* @append_str.alloced, align 4
  %12 = load i8*, i8** @append_str.z, align 8
  %13 = load i32, i32* @append_str.alloced, align 4
  %conv21 = sext i32 %13 to i64
  %call22 = call i8* @realloc(i8* %12, i64 %conv21) #4
  store i8* %call22, i8** @append_str.z, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.14, %if.end.6
  %14 = load i8*, i8** @append_str.z, align 8
  %cmp24 = icmp eq i8* %14, null
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.23
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.end.27
  %15 = load i32, i32* %n.addr, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %n.addr, align 4
  %cmp28 = icmp sgt i32 %15, 0
  br i1 %cmp28, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i8*, i8** %zText.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr, i8** %zText.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv30 = sext i8 %17 to i32
  store i32 %conv30, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %18, 37
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %19 = load i32, i32* %n.addr, align 4
  %cmp33 = icmp sgt i32 %19, 0
  br i1 %cmp33, label %land.lhs.true.35, label %if.else

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %20 = load i8*, i8** %zText.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx, align 1
  %conv36 = sext i8 %21 to i32
  %cmp37 = icmp eq i32 %conv36, 100
  br i1 %cmp37, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %land.lhs.true.35
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %zInt, i32 0, i32 0
  %22 = load i32, i32* %p1.addr, align 4
  %call40 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0), i32 %22) #4
  %23 = load i32, i32* %p2.addr, align 4
  store i32 %23, i32* %p1.addr, align 4
  %24 = load i32, i32* @append_str.used, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** @append_str.z, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %arraydecay42 = getelementptr inbounds [40 x i8], [40 x i8]* %zInt, i32 0, i32 0
  %call43 = call i8* @strcpy(i8* %arrayidx41, i8* %arraydecay42) #4
  %26 = load i32, i32* @append_str.used, align 4
  %idxprom44 = sext i32 %26 to i64
  %27 = load i8*, i8** @append_str.z, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %27, i64 %idxprom44
  %call46 = call i64 @strlen(i8* %arrayidx45) #8
  %28 = load i32, i32* @append_str.used, align 4
  %conv47 = sext i32 %28 to i64
  %add48 = add i64 %conv47, %call46
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, i32* @append_str.used, align 4
  %29 = load i8*, i8** %zText.addr, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr50, i8** %zText.addr, align 8
  %30 = load i32, i32* %n.addr, align 4
  %dec51 = add nsw i32 %30, -1
  store i32 %dec51, i32* %n.addr, align 4
  br label %if.end.55

if.else:                                          ; preds = %land.lhs.true.35, %land.lhs.true, %while.body
  %31 = load i32, i32* %c, align 4
  %conv52 = trunc i32 %31 to i8
  %32 = load i32, i32* @append_str.used, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* @append_str.used, align 4
  %idxprom53 = sext i32 %32 to i64
  %33 = load i8*, i8** @append_str.z, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %33, i64 %idxprom53
  store i8 %conv52, i8* %arrayidx54, align 1
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.then.39
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %34 = load i32, i32* @append_str.used, align 4
  %idxprom56 = sext i32 %34 to i64
  %35 = load i8*, i8** @append_str.z, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %35, i64 %idxprom56
  store i8 0, i8* %arrayidx57, align 1
  %36 = load i8*, i8** @append_str.z, align 8
  store i8* %36, i8** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.26, %if.then
  %37 = load i8*, i8** %retval
  ret i8* %37
}

; Function Attrs: nounwind uwtable
define void @translate_code(%struct.lemon* %lemp, %struct.rule* %rp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %rp.addr = alloca %struct.rule*, align 8
  %cp = alloca i8*, align 8
  %xp = alloca i8*, align 8
  %i = alloca i32, align 4
  %lhsused = alloca i8, align 1
  %used = alloca [1000 x i8], align 16
  %saved = alloca i8, align 1
  %sp = alloca %struct.symbol*, align 8
  %dtnum81 = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store %struct.rule* %rp, %struct.rule** %rp.addr, align 8
  store i8 0, i8* %lhsused, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 4
  %2 = load i32, i32* %nrhs, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1000 x i8], [1000 x i8]* %used, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %lhsused, align 1
  %5 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 8
  %6 = load i8*, i8** %code, align 8
  %cmp1 = icmp eq i8* %6, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %7 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code2 = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i8** %code2, align 8
  %8 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %ruleline = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 3
  %9 = load i32, i32* %ruleline, align 4
  %10 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %line = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 7
  store i32 %9, i32* %line, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %call = call i8* @append_str(i8* null, i32 0, i32 0, i32 0)
  %11 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code3 = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 8
  %12 = load i8*, i8** %code3, align 8
  store i8* %12, i8** %cp, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.104, %if.end
  %13 = load i8*, i8** %cp, align 8
  %14 = load i8, i8* %13, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %for.body.5, label %for.end.106

for.body.5:                                       ; preds = %for.cond.4
  %15 = load i8*, i8** %cp, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %idxprom6 = sext i32 %conv to i64
  %call7 = call i16** @__ctype_b_loc() #9
  %17 = load i16*, i16** %call7, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %17, i64 %idxprom6
  %18 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %18 to i32
  %and = and i32 %conv9, 1024
  %tobool10 = icmp ne i32 %and, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %for.body.5
  %19 = load i8*, i8** %cp, align 8
  %20 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code11 = getelementptr inbounds %struct.rule, %struct.rule* %20, i32 0, i32 8
  %21 = load i8*, i8** %code11, align 8
  %cmp12 = icmp eq i8* %19, %21
  br i1 %cmp12, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load i8*, i8** %cp, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %22, i64 -1
  %23 = load i8, i8* %arrayidx14, align 1
  %conv15 = sext i8 %23 to i32
  %idxprom16 = sext i32 %conv15 to i64
  %call17 = call i16** @__ctype_b_loc() #9
  %24 = load i16*, i16** %call17, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %24, i64 %idxprom16
  %25 = load i16, i16* %arrayidx18, align 2
  %conv19 = zext i16 %25 to i32
  %and20 = and i32 %conv19, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.end.102, label %land.lhs.true.22

land.lhs.true.22:                                 ; preds = %lor.lhs.false
  %26 = load i8*, i8** %cp, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %26, i64 -1
  %27 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %27 to i32
  %cmp25 = icmp ne i32 %conv24, 95
  br i1 %cmp25, label %if.then.27, label %if.end.102

if.then.27:                                       ; preds = %land.lhs.true.22, %land.lhs.true
  %28 = load i8*, i8** %cp, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %arrayidx28, i8** %xp, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.41, %if.then.27
  %29 = load i8*, i8** %xp, align 8
  %30 = load i8, i8* %29, align 1
  %conv30 = sext i8 %30 to i32
  %idxprom31 = sext i32 %conv30 to i64
  %call32 = call i16** @__ctype_b_loc() #9
  %31 = load i16*, i16** %call32, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %31, i64 %idxprom31
  %32 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %32 to i32
  %and35 = and i32 %conv34, 8
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond.29
  %33 = load i8*, i8** %xp, align 8
  %34 = load i8, i8* %33, align 1
  %conv37 = sext i8 %34 to i32
  %cmp38 = icmp eq i32 %conv37, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond.29
  %35 = phi i1 [ true, %for.cond.29 ], [ %cmp38, %lor.rhs ]
  br i1 %35, label %for.body.40, label %for.end.42

for.body.40:                                      ; preds = %lor.end
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.40
  %36 = load i8*, i8** %xp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr, i8** %xp, align 8
  br label %for.cond.29

for.end.42:                                       ; preds = %lor.end
  %37 = load i8*, i8** %xp, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %saved, align 1
  %39 = load i8*, i8** %xp, align 8
  store i8 0, i8* %39, align 1
  %40 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhsalias = getelementptr inbounds %struct.rule, %struct.rule* %40, i32 0, i32 1
  %41 = load i8*, i8** %lhsalias, align 8
  %tobool43 = icmp ne i8* %41, null
  br i1 %tobool43, label %land.lhs.true.44, label %if.else

land.lhs.true.44:                                 ; preds = %for.end.42
  %42 = load i8*, i8** %cp, align 8
  %43 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhsalias45 = getelementptr inbounds %struct.rule, %struct.rule* %43, i32 0, i32 1
  %44 = load i8*, i8** %lhsalias45, align 8
  %call46 = call i32 @strcmp(i8* %42, i8* %44) #8
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.else

if.then.49:                                       ; preds = %land.lhs.true.44
  %45 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %45, i32 0, i32 0
  %46 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %dtnum = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 13
  %47 = load i32, i32* %dtnum, align 4
  %call50 = call i8* @append_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 %47, i32 0)
  %48 = load i8*, i8** %xp, align 8
  store i8* %48, i8** %cp, align 8
  store i8 1, i8* %lhsused, align 1
  br label %if.end.101

if.else:                                          ; preds = %land.lhs.true.44, %for.end.42
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.98, %if.else
  %49 = load i32, i32* %i, align 4
  %50 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs52 = getelementptr inbounds %struct.rule, %struct.rule* %50, i32 0, i32 4
  %51 = load i32, i32* %nrhs52, align 4
  %cmp53 = icmp slt i32 %49, %51
  br i1 %cmp53, label %for.body.55, label %for.end.100

for.body.55:                                      ; preds = %for.cond.51
  %52 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias = getelementptr inbounds %struct.rule, %struct.rule* %53, i32 0, i32 6
  %54 = load i8**, i8*** %rhsalias, align 8
  %arrayidx57 = getelementptr inbounds i8*, i8** %54, i64 %idxprom56
  %55 = load i8*, i8** %arrayidx57, align 8
  %tobool58 = icmp ne i8* %55, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.97

land.lhs.true.59:                                 ; preds = %for.body.55
  %56 = load i8*, i8** %cp, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %57 to i64
  %58 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias61 = getelementptr inbounds %struct.rule, %struct.rule* %58, i32 0, i32 6
  %59 = load i8**, i8*** %rhsalias61, align 8
  %arrayidx62 = getelementptr inbounds i8*, i8** %59, i64 %idxprom60
  %60 = load i8*, i8** %arrayidx62, align 8
  %call63 = call i32 @strcmp(i8* %56, i8* %60) #8
  %cmp64 = icmp eq i32 %call63, 0
  br i1 %cmp64, label %if.then.66, label %if.end.97

if.then.66:                                       ; preds = %land.lhs.true.59
  %61 = load i8*, i8** %cp, align 8
  %62 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code67 = getelementptr inbounds %struct.rule, %struct.rule* %62, i32 0, i32 8
  %63 = load i8*, i8** %code67, align 8
  %cmp68 = icmp ne i8* %61, %63
  br i1 %cmp68, label %land.lhs.true.70, label %if.else.78

land.lhs.true.70:                                 ; preds = %if.then.66
  %64 = load i8*, i8** %cp, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %64, i64 -1
  %65 = load i8, i8* %arrayidx71, align 1
  %conv72 = sext i8 %65 to i32
  %cmp73 = icmp eq i32 %conv72, 64
  br i1 %cmp73, label %if.then.75, label %if.else.78

if.then.75:                                       ; preds = %land.lhs.true.70
  %66 = load i32, i32* %i, align 4
  %67 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs76 = getelementptr inbounds %struct.rule, %struct.rule* %67, i32 0, i32 4
  %68 = load i32, i32* %nrhs76, align 4
  %sub = sub nsw i32 %66, %68
  %add = add nsw i32 %sub, 1
  %call77 = call i8* @append_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.96, i32 0, i32 0), i32 -1, i32 %add, i32 0)
  br label %if.end.94

if.else.78:                                       ; preds = %land.lhs.true.70, %if.then.66
  %69 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %69 to i64
  %70 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %70, i32 0, i32 5
  %71 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx80 = getelementptr inbounds %struct.symbol*, %struct.symbol** %71, i64 %idxprom79
  %72 = load %struct.symbol*, %struct.symbol** %arrayidx80, align 8
  store %struct.symbol* %72, %struct.symbol** %sp, align 8
  %73 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 2
  %74 = load i32, i32* %type, align 4
  %cmp82 = icmp eq i32 %74, 2
  br i1 %cmp82, label %if.then.84, label %if.else.87

if.then.84:                                       ; preds = %if.else.78
  %75 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 15
  %76 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx85 = getelementptr inbounds %struct.symbol*, %struct.symbol** %76, i64 0
  %77 = load %struct.symbol*, %struct.symbol** %arrayidx85, align 8
  %dtnum86 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 13
  %78 = load i32, i32* %dtnum86, align 4
  store i32 %78, i32* %dtnum81, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.78
  %79 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %dtnum88 = getelementptr inbounds %struct.symbol, %struct.symbol* %79, i32 0, i32 13
  %80 = load i32, i32* %dtnum88, align 4
  store i32 %80, i32* %dtnum81, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.84
  %81 = load i32, i32* %i, align 4
  %82 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs90 = getelementptr inbounds %struct.rule, %struct.rule* %82, i32 0, i32 4
  %83 = load i32, i32* %nrhs90, align 4
  %sub91 = sub nsw i32 %81, %83
  %add92 = add nsw i32 %sub91, 1
  %84 = load i32, i32* %dtnum81, align 4
  %call93 = call i8* @append_str(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 %add92, i32 %84)
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.89, %if.then.75
  %85 = load i8*, i8** %xp, align 8
  store i8* %85, i8** %cp, align 8
  %86 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %86 to i64
  %arrayidx96 = getelementptr inbounds [1000 x i8], [1000 x i8]* %used, i32 0, i64 %idxprom95
  store i8 1, i8* %arrayidx96, align 1
  br label %for.end.100

if.end.97:                                        ; preds = %land.lhs.true.59, %for.body.55
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %87 = load i32, i32* %i, align 4
  %inc99 = add nsw i32 %87, 1
  store i32 %inc99, i32* %i, align 4
  br label %for.cond.51

for.end.100:                                      ; preds = %if.end.94, %for.cond.51
  br label %if.end.101

if.end.101:                                       ; preds = %for.end.100, %if.then.49
  %88 = load i8, i8* %saved, align 1
  %89 = load i8*, i8** %xp, align 8
  store i8 %88, i8* %89, align 1
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.22, %lor.lhs.false, %for.body.5
  %90 = load i8*, i8** %cp, align 8
  %call103 = call i8* @append_str(i8* %90, i32 1, i32 0, i32 0)
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.102
  %91 = load i8*, i8** %cp, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %incdec.ptr105, i8** %cp, align 8
  br label %for.cond.4

for.end.106:                                      ; preds = %for.cond.4
  %92 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhsalias107 = getelementptr inbounds %struct.rule, %struct.rule* %92, i32 0, i32 1
  %93 = load i8*, i8** %lhsalias107, align 8
  %tobool108 = icmp ne i8* %93, null
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.117

land.lhs.true.109:                                ; preds = %for.end.106
  %94 = load i8, i8* %lhsused, align 1
  %tobool110 = icmp ne i8 %94, 0
  br i1 %tobool110, label %if.end.117, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.109
  %95 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %95, i32 0, i32 32
  %96 = load i8*, i8** %filename, align 8
  %97 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %ruleline112 = getelementptr inbounds %struct.rule, %struct.rule* %97, i32 0, i32 3
  %98 = load i32, i32* %ruleline112, align 4
  %99 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhsalias113 = getelementptr inbounds %struct.rule, %struct.rule* %99, i32 0, i32 1
  %100 = load i8*, i8** %lhsalias113, align 8
  %101 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhs114 = getelementptr inbounds %struct.rule, %struct.rule* %101, i32 0, i32 0
  %102 = load %struct.symbol*, %struct.symbol** %lhs114, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %102, i32 0, i32 0
  %103 = load i8*, i8** %name, align 8
  %104 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhsalias115 = getelementptr inbounds %struct.rule, %struct.rule* %104, i32 0, i32 1
  %105 = load i8*, i8** %lhsalias115, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %96, i32 %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.98, i32 0, i32 0), i8* %100, i8* %103, i8* %105)
  %106 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt = getelementptr inbounds %struct.lemon, %struct.lemon* %106, i32 0, i32 7
  %107 = load i32, i32* %errorcnt, align 4
  %inc116 = add nsw i32 %107, 1
  store i32 %inc116, i32* %errorcnt, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.111, %land.lhs.true.109, %for.end.106
  store i32 0, i32* %i, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.170, %if.end.117
  %108 = load i32, i32* %i, align 4
  %109 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs119 = getelementptr inbounds %struct.rule, %struct.rule* %109, i32 0, i32 4
  %110 = load i32, i32* %nrhs119, align 4
  %cmp120 = icmp slt i32 %108, %110
  br i1 %cmp120, label %for.body.122, label %for.end.172

for.body.122:                                     ; preds = %for.cond.118
  %111 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %111 to i64
  %112 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias124 = getelementptr inbounds %struct.rule, %struct.rule* %112, i32 0, i32 6
  %113 = load i8**, i8*** %rhsalias124, align 8
  %arrayidx125 = getelementptr inbounds i8*, i8** %113, i64 %idxprom123
  %114 = load i8*, i8** %arrayidx125, align 8
  %tobool126 = icmp ne i8* %114, null
  br i1 %tobool126, label %land.lhs.true.127, label %if.else.146

land.lhs.true.127:                                ; preds = %for.body.122
  %115 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %115 to i64
  %arrayidx129 = getelementptr inbounds [1000 x i8], [1000 x i8]* %used, i32 0, i64 %idxprom128
  %116 = load i8, i8* %arrayidx129, align 1
  %tobool130 = icmp ne i8 %116, 0
  br i1 %tobool130, label %if.else.146, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.127
  %117 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename132 = getelementptr inbounds %struct.lemon, %struct.lemon* %117, i32 0, i32 32
  %118 = load i8*, i8** %filename132, align 8
  %119 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %ruleline133 = getelementptr inbounds %struct.rule, %struct.rule* %119, i32 0, i32 3
  %120 = load i32, i32* %ruleline133, align 4
  %121 = load i32, i32* %i, align 4
  %idxprom134 = sext i32 %121 to i64
  %122 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias135 = getelementptr inbounds %struct.rule, %struct.rule* %122, i32 0, i32 6
  %123 = load i8**, i8*** %rhsalias135, align 8
  %arrayidx136 = getelementptr inbounds i8*, i8** %123, i64 %idxprom134
  %124 = load i8*, i8** %arrayidx136, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom137 = sext i32 %125 to i64
  %126 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhs138 = getelementptr inbounds %struct.rule, %struct.rule* %126, i32 0, i32 5
  %127 = load %struct.symbol**, %struct.symbol*** %rhs138, align 8
  %arrayidx139 = getelementptr inbounds %struct.symbol*, %struct.symbol** %127, i64 %idxprom137
  %128 = load %struct.symbol*, %struct.symbol** %arrayidx139, align 8
  %name140 = getelementptr inbounds %struct.symbol, %struct.symbol* %128, i32 0, i32 0
  %129 = load i8*, i8** %name140, align 8
  %130 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %130 to i64
  %131 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias142 = getelementptr inbounds %struct.rule, %struct.rule* %131, i32 0, i32 6
  %132 = load i8**, i8*** %rhsalias142, align 8
  %arrayidx143 = getelementptr inbounds i8*, i8** %132, i64 %idxprom141
  %133 = load i8*, i8** %arrayidx143, align 8
  call void (i8*, i32, i8*, ...) @ErrorMsg(i8* %118, i32 %120, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.99, i32 0, i32 0), i8* %124, i8* %129, i8* %133)
  %134 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorcnt144 = getelementptr inbounds %struct.lemon, %struct.lemon* %134, i32 0, i32 7
  %135 = load i32, i32* %errorcnt144, align 4
  %inc145 = add nsw i32 %135, 1
  store i32 %inc145, i32* %errorcnt144, align 4
  br label %if.end.169

if.else.146:                                      ; preds = %land.lhs.true.127, %for.body.122
  %136 = load i32, i32* %i, align 4
  %idxprom147 = sext i32 %136 to i64
  %137 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhsalias148 = getelementptr inbounds %struct.rule, %struct.rule* %137, i32 0, i32 6
  %138 = load i8**, i8*** %rhsalias148, align 8
  %arrayidx149 = getelementptr inbounds i8*, i8** %138, i64 %idxprom147
  %139 = load i8*, i8** %arrayidx149, align 8
  %cmp150 = icmp eq i8* %139, null
  br i1 %cmp150, label %if.then.152, label %if.end.168

if.then.152:                                      ; preds = %if.else.146
  %140 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %140 to i64
  %141 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhs154 = getelementptr inbounds %struct.rule, %struct.rule* %141, i32 0, i32 5
  %142 = load %struct.symbol**, %struct.symbol*** %rhs154, align 8
  %arrayidx155 = getelementptr inbounds %struct.symbol*, %struct.symbol** %142, i64 %idxprom153
  %143 = load %struct.symbol*, %struct.symbol** %arrayidx155, align 8
  %144 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call156 = call i32 @has_destructor(%struct.symbol* %143, %struct.lemon* %144)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.then.158, label %if.else.166

if.then.158:                                      ; preds = %if.then.152
  %145 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %145 to i64
  %146 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhs160 = getelementptr inbounds %struct.rule, %struct.rule* %146, i32 0, i32 5
  %147 = load %struct.symbol**, %struct.symbol*** %rhs160, align 8
  %arrayidx161 = getelementptr inbounds %struct.symbol*, %struct.symbol** %147, i64 %idxprom159
  %148 = load %struct.symbol*, %struct.symbol** %arrayidx161, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %148, i32 0, i32 1
  %149 = load i32, i32* %index, align 4
  %150 = load i32, i32* %i, align 4
  %151 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs162 = getelementptr inbounds %struct.rule, %struct.rule* %151, i32 0, i32 4
  %152 = load i32, i32* %nrhs162, align 4
  %sub163 = sub nsw i32 %150, %152
  %add164 = add nsw i32 %sub163, 1
  %call165 = call i8* @append_str(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 %149, i32 %add164)
  br label %if.end.167

if.else.166:                                      ; preds = %if.then.152
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.166, %if.then.158
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.else.146
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.131
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %153 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %153, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.118

for.end.172:                                      ; preds = %for.cond.118
  %154 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code173 = getelementptr inbounds %struct.rule, %struct.rule* %154, i32 0, i32 8
  %155 = load i8*, i8** %code173, align 8
  %tobool174 = icmp ne i8* %155, null
  br i1 %tobool174, label %if.then.175, label %if.end.180

if.then.175:                                      ; preds = %for.end.172
  %call176 = call i8* @append_str(i8* null, i32 0, i32 0, i32 0)
  store i8* %call176, i8** %cp, align 8
  %156 = load i8*, i8** %cp, align 8
  %tobool177 = icmp ne i8* %156, null
  br i1 %tobool177, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.175
  %157 = load i8*, i8** %cp, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.175
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %157, %cond.true ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), %cond.false ]
  %call178 = call i8* @Strsafe(i8* %cond)
  %158 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code179 = getelementptr inbounds %struct.rule, %struct.rule* %158, i32 0, i32 8
  store i8* %call178, i8** %code179, align 8
  br label %if.end.180

if.end.180:                                       ; preds = %cond.end, %for.end.172
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_code(%struct._IO_FILE* %out, %struct.rule* %rp, %struct.lemon* %lemp, i32* %lineno) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %rp.addr = alloca %struct.rule*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %lineno.addr = alloca i32*, align 8
  %cp = alloca i8*, align 8
  %linecnt = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.rule* %rp, %struct.rule** %rp.addr, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32* %lineno, i32** %lineno.addr, align 8
  store i32 0, i32* %linecnt, align 4
  %0 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code = getelementptr inbounds %struct.rule, %struct.rule* %0, i32 0, i32 8
  %1 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %3 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %line = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 7
  %4 = load i32, i32* %line, align 4
  %5 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %filename = getelementptr inbounds %struct.lemon, %struct.lemon* %5, i32 0, i32 32
  %6 = load i8*, i8** %filename, align 8
  call void @tplt_linedir(%struct._IO_FILE* %2, i32 %4, i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %8 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code1 = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 8
  %9 = load i8*, i8** %code1, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.101, i32 0, i32 0), i8* %9)
  %10 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %code2 = getelementptr inbounds %struct.rule, %struct.rule* %10, i32 0, i32 8
  %11 = load i8*, i8** %code2, align 8
  store i8* %11, i8** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load i8*, i8** %cp, align 8
  %13 = load i8, i8* %12, align 1
  %tobool3 = icmp ne i8 %13, 0
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i8*, i8** %cp, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp = icmp eq i32 %conv, 10
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %16 = load i32, i32* %linecnt, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %linecnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %linecnt, align 4
  %add = add nsw i32 3, %18
  %19 = load i32*, i32** %lineno.addr, align 8
  %20 = load i32, i32* %19, align 4
  %add6 = add nsw i32 %20, %add
  store i32 %add6, i32* %19, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %23 = load i32*, i32** %lineno.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %outname = getelementptr inbounds %struct.lemon, %struct.lemon* %25, i32 0, i32 33
  %26 = load i8*, i8** %outname, align 8
  call void @tplt_linedir(%struct._IO_FILE* %22, i32 %24, i8* %26)
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_stack_union(%struct._IO_FILE* %out, %struct.lemon* %lemp, i32* %plineno, i32 %mhflag) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %lemp.addr = alloca %struct.lemon*, align 8
  %plineno.addr = alloca i32*, align 8
  %mhflag.addr = alloca i32, align 4
  %lineno = alloca i32, align 4
  %types = alloca i8**, align 8
  %arraysize = alloca i32, align 4
  %maxdtlength = alloca i32, align 4
  %stddt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %hash = alloca i32, align 4
  %name = alloca i8*, align 8
  %len = alloca i32, align 4
  %sp = alloca %struct.symbol*, align 8
  %sp41 = alloca %struct.symbol*, align 8
  %cp = alloca i8*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32* %plineno, i32** %plineno.addr, align 8
  store i32 %mhflag, i32* %mhflag.addr, align 4
  %0 = load i32*, i32** %plineno.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %lineno, align 4
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 4
  %3 = load i32, i32* %nsymbol, align 4
  %mul = mul nsw i32 %3, 2
  store i32 %mul, i32* %arraysize, align 4
  %4 = load i32, i32* %arraysize, align 4
  %conv = sext i32 %4 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %5 = bitcast i8* %call to i8**
  store i8** %5, i8*** %types, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %arraysize, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %types, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 %idxprom
  store i8* null, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %maxdtlength, align 4
  %11 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vartype = getelementptr inbounds %struct.lemon, %struct.lemon* %11, i32 0, i32 13
  %12 = load i8*, i8** %vartype, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %13 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vartype2 = getelementptr inbounds %struct.lemon, %struct.lemon* %13, i32 0, i32 13
  %14 = load i8*, i8** %vartype2, align 8
  %call3 = call i64 @strlen(i8* %14) #8
  %conv4 = trunc i64 %call3 to i32
  store i32 %conv4, i32* %maxdtlength, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.23, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol6 = getelementptr inbounds %struct.lemon, %struct.lemon* %16, i32 0, i32 4
  %17 = load i32, i32* %nsymbol6, align 4
  %cmp7 = icmp slt i32 %15, %17
  br i1 %cmp7, label %for.body.9, label %for.end.25

for.body.9:                                       ; preds = %for.cond.5
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %19, i32 0, i32 6
  %20 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx11 = getelementptr inbounds %struct.symbol*, %struct.symbol** %20, i64 %idxprom10
  %21 = load %struct.symbol*, %struct.symbol** %arrayidx11, align 8
  store %struct.symbol* %21, %struct.symbol** %sp, align 8
  %22 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %datatype = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 12
  %23 = load i8*, i8** %datatype, align 8
  %cmp12 = icmp eq i8* %23, null
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body.9
  br label %for.inc.23

if.end.15:                                        ; preds = %for.body.9
  %24 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %datatype16 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 12
  %25 = load i8*, i8** %datatype16, align 8
  %call17 = call i64 @strlen(i8* %25) #8
  %conv18 = trunc i64 %call17 to i32
  store i32 %conv18, i32* %len, align 4
  %26 = load i32, i32* %len, align 4
  %27 = load i32, i32* %maxdtlength, align 4
  %cmp19 = icmp sgt i32 %26, %27
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.15
  %28 = load i32, i32* %len, align 4
  store i32 %28, i32* %maxdtlength, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.15
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22, %if.then.14
  %29 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  %30 = load i32, i32* %maxdtlength, align 4
  %mul26 = mul nsw i32 %30, 2
  %add = add nsw i32 %mul26, 1
  %conv27 = sext i32 %add to i64
  %call28 = call noalias i8* @malloc(i64 %conv27) #4
  store i8* %call28, i8** %stddt, align 8
  %31 = load i8**, i8*** %types, align 8
  %cmp29 = icmp eq i8** %31, null
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.25
  %32 = load i8*, i8** %stddt, align 8
  %cmp31 = icmp eq i8* %32, null
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %lor.lhs.false, %for.end.25
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.35:                                        ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.155, %if.end.35
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol37 = getelementptr inbounds %struct.lemon, %struct.lemon* %35, i32 0, i32 4
  %36 = load i32, i32* %nsymbol37, align 4
  %cmp38 = icmp slt i32 %34, %36
  br i1 %cmp38, label %for.body.40, label %for.end.157

for.body.40:                                      ; preds = %for.cond.36
  %37 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %37 to i64
  %38 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols43 = getelementptr inbounds %struct.lemon, %struct.lemon* %38, i32 0, i32 6
  %39 = load %struct.symbol**, %struct.symbol*** %symbols43, align 8
  %arrayidx44 = getelementptr inbounds %struct.symbol*, %struct.symbol** %39, i64 %idxprom42
  %40 = load %struct.symbol*, %struct.symbol** %arrayidx44, align 8
  store %struct.symbol* %40, %struct.symbol** %sp41, align 8
  %41 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %42 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym = getelementptr inbounds %struct.lemon, %struct.lemon* %42, i32 0, i32 8
  %43 = load %struct.symbol*, %struct.symbol** %errsym, align 8
  %cmp45 = icmp eq %struct.symbol* %41, %43
  br i1 %cmp45, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %for.body.40
  %44 = load i32, i32* %arraysize, align 4
  %add48 = add nsw i32 %44, 1
  %45 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %dtnum = getelementptr inbounds %struct.symbol, %struct.symbol* %45, i32 0, i32 13
  store i32 %add48, i32* %dtnum, align 4
  br label %for.inc.155

if.end.49:                                        ; preds = %for.body.40
  %46 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %46, i32 0, i32 2
  %47 = load i32, i32* %type, align 4
  %cmp50 = icmp ne i32 %47, 1
  br i1 %cmp50, label %if.then.59, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.end.49
  %48 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %datatype53 = getelementptr inbounds %struct.symbol, %struct.symbol* %48, i32 0, i32 12
  %49 = load i8*, i8** %datatype53, align 8
  %cmp54 = icmp eq i8* %49, null
  br i1 %cmp54, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %lor.lhs.false.52
  %50 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vartype56 = getelementptr inbounds %struct.lemon, %struct.lemon* %50, i32 0, i32 13
  %51 = load i8*, i8** %vartype56, align 8
  %cmp57 = icmp eq i8* %51, null
  br i1 %cmp57, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %land.lhs.true, %if.end.49
  %52 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %dtnum60 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 13
  store i32 0, i32* %dtnum60, align 4
  br label %for.inc.155

if.end.61:                                        ; preds = %land.lhs.true, %lor.lhs.false.52
  %53 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %datatype62 = getelementptr inbounds %struct.symbol, %struct.symbol* %53, i32 0, i32 12
  %54 = load i8*, i8** %datatype62, align 8
  store i8* %54, i8** %cp, align 8
  %55 = load i8*, i8** %cp, align 8
  %cmp63 = icmp eq i8* %55, null
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.61
  %56 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vartype66 = getelementptr inbounds %struct.lemon, %struct.lemon* %56, i32 0, i32 13
  %57 = load i8*, i8** %vartype66, align 8
  store i8* %57, i8** %cp, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.61
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.67
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8, i8* %58, align 1
  %conv68 = sext i8 %59 to i32
  %idxprom69 = sext i32 %conv68 to i64
  %call70 = call i16** @__ctype_b_loc() #9
  %60 = load i16*, i16** %call70, align 8
  %arrayidx71 = getelementptr inbounds i16, i16* %60, i64 %idxprom69
  %61 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %61 to i32
  %and = and i32 %conv72, 8192
  %tobool73 = icmp ne i32 %and, 0
  br i1 %tobool73, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %62 = load i8*, i8** %cp, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.74

while.cond.74:                                    ; preds = %while.body.76, %while.end
  %63 = load i8*, i8** %cp, align 8
  %64 = load i8, i8* %63, align 1
  %tobool75 = icmp ne i8 %64, 0
  br i1 %tobool75, label %while.body.76, label %while.end.81

while.body.76:                                    ; preds = %while.cond.74
  %65 = load i8*, i8** %cp, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr77, i8** %cp, align 8
  %66 = load i8, i8* %65, align 1
  %67 = load i32, i32* %j, align 4
  %inc78 = add nsw i32 %67, 1
  store i32 %inc78, i32* %j, align 4
  %idxprom79 = sext i32 %67 to i64
  %68 = load i8*, i8** %stddt, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %68, i64 %idxprom79
  store i8 %66, i8* %arrayidx80, align 1
  br label %while.cond.74

while.end.81:                                     ; preds = %while.cond.74
  br label %while.cond.82

while.cond.82:                                    ; preds = %while.body.94, %while.end.81
  %69 = load i32, i32* %j, align 4
  %cmp83 = icmp sgt i32 %69, 0
  br i1 %cmp83, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.82
  %70 = load i32, i32* %j, align 4
  %sub = sub nsw i32 %70, 1
  %idxprom85 = sext i32 %sub to i64
  %71 = load i8*, i8** %stddt, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %71, i64 %idxprom85
  %72 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %72 to i32
  %idxprom88 = sext i32 %conv87 to i64
  %call89 = call i16** @__ctype_b_loc() #9
  %73 = load i16*, i16** %call89, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %73, i64 %idxprom88
  %74 = load i16, i16* %arrayidx90, align 2
  %conv91 = zext i16 %74 to i32
  %and92 = and i32 %conv91, 8192
  %tobool93 = icmp ne i32 %and92, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.82
  %75 = phi i1 [ false, %while.cond.82 ], [ %tobool93, %land.rhs ]
  br i1 %75, label %while.body.94, label %while.end.95

while.body.94:                                    ; preds = %land.end
  %76 = load i32, i32* %j, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond.82

while.end.95:                                     ; preds = %land.end
  %77 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %77 to i64
  %78 = load i8*, i8** %stddt, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %78, i64 %idxprom96
  store i8 0, i8* %arrayidx97, align 1
  store i32 0, i32* %hash, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.98

for.cond.98:                                      ; preds = %for.inc.108, %while.end.95
  %79 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %79 to i64
  %80 = load i8*, i8** %stddt, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %80, i64 %idxprom99
  %81 = load i8, i8* %arrayidx100, align 1
  %tobool101 = icmp ne i8 %81, 0
  br i1 %tobool101, label %for.body.102, label %for.end.110

for.body.102:                                     ; preds = %for.cond.98
  %82 = load i32, i32* %hash, align 4
  %mul103 = mul nsw i32 %82, 53
  %83 = load i32, i32* %j, align 4
  %idxprom104 = sext i32 %83 to i64
  %84 = load i8*, i8** %stddt, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %84, i64 %idxprom104
  %85 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %85 to i32
  %add107 = add nsw i32 %mul103, %conv106
  store i32 %add107, i32* %hash, align 4
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.102
  %86 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %86, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.98

for.end.110:                                      ; preds = %for.cond.98
  %87 = load i32, i32* %hash, align 4
  %and111 = and i32 %87, 2147483647
  %88 = load i32, i32* %arraysize, align 4
  %rem = srem i32 %and111, %88
  store i32 %rem, i32* %hash, align 4
  br label %while.cond.112

while.cond.112:                                   ; preds = %if.end.130, %for.end.110
  %89 = load i32, i32* %hash, align 4
  %idxprom113 = sext i32 %89 to i64
  %90 = load i8**, i8*** %types, align 8
  %arrayidx114 = getelementptr inbounds i8*, i8** %90, i64 %idxprom113
  %91 = load i8*, i8** %arrayidx114, align 8
  %tobool115 = icmp ne i8* %91, null
  br i1 %tobool115, label %while.body.116, label %while.end.131

while.body.116:                                   ; preds = %while.cond.112
  %92 = load i32, i32* %hash, align 4
  %idxprom117 = sext i32 %92 to i64
  %93 = load i8**, i8*** %types, align 8
  %arrayidx118 = getelementptr inbounds i8*, i8** %93, i64 %idxprom117
  %94 = load i8*, i8** %arrayidx118, align 8
  %95 = load i8*, i8** %stddt, align 8
  %call119 = call i32 @strcmp(i8* %94, i8* %95) #8
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.125

if.then.122:                                      ; preds = %while.body.116
  %96 = load i32, i32* %hash, align 4
  %add123 = add nsw i32 %96, 1
  %97 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %dtnum124 = getelementptr inbounds %struct.symbol, %struct.symbol* %97, i32 0, i32 13
  store i32 %add123, i32* %dtnum124, align 4
  br label %while.end.131

if.end.125:                                       ; preds = %while.body.116
  %98 = load i32, i32* %hash, align 4
  %inc126 = add nsw i32 %98, 1
  store i32 %inc126, i32* %hash, align 4
  %99 = load i32, i32* %hash, align 4
  %100 = load i32, i32* %arraysize, align 4
  %cmp127 = icmp sge i32 %99, %100
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.end.125
  store i32 0, i32* %hash, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.end.125
  br label %while.cond.112

while.end.131:                                    ; preds = %if.then.122, %while.cond.112
  %101 = load i32, i32* %hash, align 4
  %idxprom132 = sext i32 %101 to i64
  %102 = load i8**, i8*** %types, align 8
  %arrayidx133 = getelementptr inbounds i8*, i8** %102, i64 %idxprom132
  %103 = load i8*, i8** %arrayidx133, align 8
  %cmp134 = icmp eq i8* %103, null
  br i1 %cmp134, label %if.then.136, label %if.end.154

if.then.136:                                      ; preds = %while.end.131
  %104 = load i32, i32* %hash, align 4
  %add137 = add nsw i32 %104, 1
  %105 = load %struct.symbol*, %struct.symbol** %sp41, align 8
  %dtnum138 = getelementptr inbounds %struct.symbol, %struct.symbol* %105, i32 0, i32 13
  store i32 %add137, i32* %dtnum138, align 4
  %106 = load i8*, i8** %stddt, align 8
  %call139 = call i64 @strlen(i8* %106) #8
  %add140 = add i64 %call139, 1
  %call141 = call noalias i8* @malloc(i64 %add140) #4
  %107 = load i32, i32* %hash, align 4
  %idxprom142 = sext i32 %107 to i64
  %108 = load i8**, i8*** %types, align 8
  %arrayidx143 = getelementptr inbounds i8*, i8** %108, i64 %idxprom142
  store i8* %call141, i8** %arrayidx143, align 8
  %109 = load i32, i32* %hash, align 4
  %idxprom144 = sext i32 %109 to i64
  %110 = load i8**, i8*** %types, align 8
  %arrayidx145 = getelementptr inbounds i8*, i8** %110, i64 %idxprom144
  %111 = load i8*, i8** %arrayidx145, align 8
  %cmp146 = icmp eq i8* %111, null
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.then.136
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.150:                                       ; preds = %if.then.136
  %113 = load i32, i32* %hash, align 4
  %idxprom151 = sext i32 %113 to i64
  %114 = load i8**, i8*** %types, align 8
  %arrayidx152 = getelementptr inbounds i8*, i8** %114, i64 %idxprom151
  %115 = load i8*, i8** %arrayidx152, align 8
  %116 = load i8*, i8** %stddt, align 8
  %call153 = call i8* @strcpy(i8* %115, i8* %116) #4
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.150, %while.end.131
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154, %if.then.59, %if.then.47
  %117 = load i32, i32* %i, align 4
  %inc156 = add nsw i32 %117, 1
  store i32 %inc156, i32* %i, align 4
  br label %for.cond.36

for.end.157:                                      ; preds = %for.cond.36
  %118 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name158 = getelementptr inbounds %struct.lemon, %struct.lemon* %118, i32 0, i32 10
  %119 = load i8*, i8** %name158, align 8
  %tobool159 = icmp ne i8* %119, null
  br i1 %tobool159, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.157
  %120 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name160 = getelementptr inbounds %struct.lemon, %struct.lemon* %120, i32 0, i32 10
  %121 = load i8*, i8** %name160, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end.157
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %121, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %name, align 8
  %122 = load i32*, i32** %plineno.addr, align 8
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %lineno, align 4
  %124 = load i32, i32* %mhflag.addr, align 4
  %tobool161 = icmp ne i32 %124, 0
  br i1 %tobool161, label %if.then.162, label %if.end.165

if.then.162:                                      ; preds = %cond.end
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0))
  %126 = load i32, i32* %lineno, align 4
  %inc164 = add nsw i32 %126, 1
  store i32 %inc164, i32* %lineno, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.162, %cond.end
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %128 = load i8*, i8** %name, align 8
  %129 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokentype = getelementptr inbounds %struct.lemon, %struct.lemon* %129, i32 0, i32 12
  %130 = load i8*, i8** %tokentype, align 8
  %tobool166 = icmp ne i8* %130, null
  br i1 %tobool166, label %cond.true.167, label %cond.false.169

cond.true.167:                                    ; preds = %if.end.165
  %131 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokentype168 = getelementptr inbounds %struct.lemon, %struct.lemon* %131, i32 0, i32 12
  %132 = load i8*, i8** %tokentype168, align 8
  br label %cond.end.170

cond.false.169:                                   ; preds = %if.end.165
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.false.169, %cond.true.167
  %cond171 = phi i8* [ %132, %cond.true.167 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), %cond.false.169 ]
  %call172 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.104, i32 0, i32 0), i8* %128, i8* %cond171)
  %133 = load i32, i32* %lineno, align 4
  %inc173 = add nsw i32 %133, 1
  store i32 %inc173, i32* %lineno, align 4
  %134 = load i32, i32* %mhflag.addr, align 4
  %tobool174 = icmp ne i32 %134, 0
  br i1 %tobool174, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %cond.end.170
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0))
  %136 = load i32, i32* %lineno, align 4
  %inc177 = add nsw i32 %136, 1
  store i32 %inc177, i32* %lineno, align 4
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %cond.end.170
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.107, i32 0, i32 0))
  %138 = load i32, i32* %lineno, align 4
  %inc180 = add nsw i32 %138, 1
  store i32 %inc180, i32* %lineno, align 4
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %140 = load i8*, i8** %name, align 8
  %call181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* %140)
  %141 = load i32, i32* %lineno, align 4
  %inc182 = add nsw i32 %141, 1
  store i32 %inc182, i32* %lineno, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.183

for.cond.183:                                     ; preds = %for.inc.200, %if.end.178
  %142 = load i32, i32* %i, align 4
  %143 = load i32, i32* %arraysize, align 4
  %cmp184 = icmp slt i32 %142, %143
  br i1 %cmp184, label %for.body.186, label %for.end.202

for.body.186:                                     ; preds = %for.cond.183
  %144 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %144 to i64
  %145 = load i8**, i8*** %types, align 8
  %arrayidx188 = getelementptr inbounds i8*, i8** %145, i64 %idxprom187
  %146 = load i8*, i8** %arrayidx188, align 8
  %cmp189 = icmp eq i8* %146, null
  br i1 %cmp189, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %for.body.186
  br label %for.inc.200

if.end.192:                                       ; preds = %for.body.186
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom193 = sext i32 %148 to i64
  %149 = load i8**, i8*** %types, align 8
  %arrayidx194 = getelementptr inbounds i8*, i8** %149, i64 %idxprom193
  %150 = load i8*, i8** %arrayidx194, align 8
  %151 = load i32, i32* %i, align 4
  %add195 = add nsw i32 %151, 1
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i8* %150, i32 %add195)
  %152 = load i32, i32* %lineno, align 4
  %inc197 = add nsw i32 %152, 1
  store i32 %inc197, i32* %lineno, align 4
  %153 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %153 to i64
  %154 = load i8**, i8*** %types, align 8
  %arrayidx199 = getelementptr inbounds i8*, i8** %154, i64 %idxprom198
  %155 = load i8*, i8** %arrayidx199, align 8
  call void @free(i8* %155) #4
  br label %for.inc.200

for.inc.200:                                      ; preds = %if.end.192, %if.then.191
  %156 = load i32, i32* %i, align 4
  %inc201 = add nsw i32 %156, 1
  store i32 %inc201, i32* %i, align 4
  br label %for.cond.183

for.end.202:                                      ; preds = %for.cond.183
  %157 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym203 = getelementptr inbounds %struct.lemon, %struct.lemon* %157, i32 0, i32 8
  %158 = load %struct.symbol*, %struct.symbol** %errsym203, align 8
  %useCnt = getelementptr inbounds %struct.symbol, %struct.symbol* %158, i32 0, i32 9
  %159 = load i32, i32* %useCnt, align 4
  %tobool204 = icmp ne i32 %159, 0
  br i1 %tobool204, label %if.then.205, label %if.end.210

if.then.205:                                      ; preds = %for.end.202
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %161 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym206 = getelementptr inbounds %struct.lemon, %struct.lemon* %161, i32 0, i32 8
  %162 = load %struct.symbol*, %struct.symbol** %errsym206, align 8
  %dtnum207 = getelementptr inbounds %struct.symbol, %struct.symbol* %162, i32 0, i32 13
  %163 = load i32, i32* %dtnum207, align 4
  %call208 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.110, i32 0, i32 0), i32 %163)
  %164 = load i32, i32* %lineno, align 4
  %inc209 = add nsw i32 %164, 1
  store i32 %inc209, i32* %lineno, align 4
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.205, %for.end.202
  %165 = load i8*, i8** %stddt, align 8
  call void @free(i8* %165) #4
  %166 = load i8**, i8*** %types, align 8
  %167 = bitcast i8** %166 to i8*
  call void @free(i8* %167) #4
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %call211 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.111, i32 0, i32 0))
  %169 = load i32, i32* %lineno, align 4
  %inc212 = add nsw i32 %169, 1
  store i32 %inc212, i32* %lineno, align 4
  %170 = load i32, i32* %lineno, align 4
  %171 = load i32*, i32** %plineno.addr, align 8
  store i32 %170, i32* %171, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @ReportTable(%struct.lemon* %lemp, i32 %mhflag) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %mhflag.addr = alloca i32, align 4
  %out = alloca %struct._IO_FILE*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %line = alloca [1000 x i8], align 16
  %lineno = alloca i32, align 4
  %stp = alloca %struct.state*, align 8
  %ap = alloca %struct.action*, align 8
  %rp = alloca %struct.rule*, align 8
  %pActtab = alloca %struct.acttab*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %name = alloca i8*, align 8
  %mnTknOfst = alloca i32, align 4
  %mxTknOfst = alloca i32, align 4
  %mnNtOfst = alloca i32, align 4
  %mxNtOfst = alloca i32, align 4
  %ax = alloca %struct.axset*, align 8
  %name8 = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %i74 = alloca i32, align 4
  %action = alloca i32, align 4
  %action277 = alloca i32, align 4
  %action326 = alloca i32, align 4
  %la = alloca i32, align 4
  %ofst = alloca i32, align 4
  %ofst489 = alloca i32, align 4
  %p = alloca %struct.symbol*, align 8
  %sp634 = alloca %struct.symbol*, align 8
  %dflt_sp = alloca %struct.symbol*, align 8
  %sp686 = alloca %struct.symbol*, align 8
  %sp724 = alloca %struct.symbol*, align 8
  %sp2 = alloca %struct.symbol*, align 8
  %rp2 = alloca %struct.rule*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 %mhflag, i32* %mhflag.addr, align 4
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call = call %struct._IO_FILE* @tplt_open(%struct.lemon* %0)
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call1 = call %struct._IO_FILE* @file_open(%struct.lemon* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %out, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %cmp2 = icmp eq %struct._IO_FILE* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call4 = call i32 @fclose(%struct._IO_FILE* %4)
  br label %return

if.end.5:                                         ; preds = %if.end
  store i32 1, i32* %lineno, align 4
  %5 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name6 = getelementptr inbounds %struct.lemon, %struct.lemon* %5, i32 0, i32 10
  %6 = load i8*, i8** %name6, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %6, %struct._IO_FILE* %7, %struct._IO_FILE* %8, i32* %lineno)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %10 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %11 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %include = getelementptr inbounds %struct.lemon, %struct.lemon* %11, i32 0, i32 16
  %12 = load i8*, i8** %include, align 8
  %13 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %includeln = getelementptr inbounds %struct.lemon, %struct.lemon* %13, i32 0, i32 17
  %14 = load i32, i32* %includeln, align 4
  call void @tplt_print(%struct._IO_FILE* %9, %struct.lemon* %10, i8* %12, i32 %14, i32* %lineno)
  %15 = load i32, i32* %mhflag.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end.5
  %16 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call9 = call i8* @file_makename(%struct.lemon* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0))
  store i8* %call9, i8** %name8, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %18 = load i8*, i8** %name8, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.114, i32 0, i32 0), i8* %18)
  %19 = load i32, i32* %lineno, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %lineno, align 4
  %20 = load i8*, i8** %name8, align 8
  call void @free(i8* %20) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end.5
  %21 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name12 = getelementptr inbounds %struct.lemon, %struct.lemon* %21, i32 0, i32 10
  %22 = load i8*, i8** %name12, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %22, %struct._IO_FILE* %23, %struct._IO_FILE* %24, i32* %lineno)
  %25 = load i32, i32* %mhflag.addr, align 4
  %tobool13 = icmp ne i32 %25, 0
  br i1 %tobool13, label %if.then.14, label %if.end.28

if.then.14:                                       ; preds = %if.end.11
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0))
  %27 = load i32, i32* %lineno, align 4
  %inc16 = add nsw i32 %27, 1
  store i32 %inc16, i32* %lineno, align 4
  %28 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokenprefix = getelementptr inbounds %struct.lemon, %struct.lemon* %28, i32 0, i32 34
  %29 = load i8*, i8** %tokenprefix, align 8
  %tobool17 = icmp ne i8* %29, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.14
  %30 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokenprefix19 = getelementptr inbounds %struct.lemon, %struct.lemon* %30, i32 0, i32 34
  %31 = load i8*, i8** %tokenprefix19, align 8
  store i8* %31, i8** %prefix, align 8
  br label %if.end.20

if.else:                                          ; preds = %if.then.14
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8** %prefix, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %33, i32 0, i32 5
  %34 = load i32, i32* %nterminal, align 4
  %cmp21 = icmp slt i32 %32, %34
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %36 = load i8*, i8** %prefix, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom = sext i32 %37 to i64
  %38 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %38, i32 0, i32 6
  %39 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %39, i64 %idxprom
  %40 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  %name22 = getelementptr inbounds %struct.symbol, %struct.symbol* %40, i32 0, i32 0
  %41 = load i8*, i8** %name22, align 8
  %42 = load i32, i32* %i, align 4
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), i8* %36, i8* %41, i32 %42)
  %43 = load i32, i32* %lineno, align 4
  %inc24 = add nsw i32 %43, 1
  store i32 %inc24, i32* %lineno, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %44, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0))
  %46 = load i32, i32* %lineno, align 4
  %inc27 = add nsw i32 %46, 1
  store i32 %inc27, i32* %lineno, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %if.end.11
  %47 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name29 = getelementptr inbounds %struct.lemon, %struct.lemon* %47, i32 0, i32 10
  %48 = load i8*, i8** %name29, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %48, %struct._IO_FILE* %49, %struct._IO_FILE* %50, i32* %lineno)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %52 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %52, i32 0, i32 4
  %53 = load i32, i32* %nsymbol, align 4
  %add = add nsw i32 %53, 5
  %call30 = call i8* @minimum_size_type(i32 0, i32 %add)
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i32 0, i32 0), i8* %call30)
  %54 = load i32, i32* %lineno, align 4
  %inc32 = add nsw i32 %54, 1
  store i32 %inc32, i32* %lineno, align 4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %56 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol33 = getelementptr inbounds %struct.lemon, %struct.lemon* %56, i32 0, i32 4
  %57 = load i32, i32* %nsymbol33, align 4
  %add34 = add nsw i32 %57, 1
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.117, i32 0, i32 0), i32 %add34)
  %58 = load i32, i32* %lineno, align 4
  %inc36 = add nsw i32 %58, 1
  store i32 %inc36, i32* %lineno, align 4
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %60 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %60, i32 0, i32 2
  %61 = load i32, i32* %nstate, align 4
  %62 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule = getelementptr inbounds %struct.lemon, %struct.lemon* %62, i32 0, i32 3
  %63 = load i32, i32* %nrule, align 4
  %add37 = add nsw i32 %61, %63
  %add38 = add nsw i32 %add37, 5
  %call39 = call i8* @minimum_size_type(i32 0, i32 %add38)
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.118, i32 0, i32 0), i8* %call39)
  %64 = load i32, i32* %lineno, align 4
  %inc41 = add nsw i32 %64, 1
  store i32 %inc41, i32* %lineno, align 4
  %65 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %wildcard = getelementptr inbounds %struct.lemon, %struct.lemon* %65, i32 0, i32 9
  %66 = load %struct.symbol*, %struct.symbol** %wildcard, align 8
  %tobool42 = icmp ne %struct.symbol* %66, null
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.28
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %68 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %wildcard44 = getelementptr inbounds %struct.lemon, %struct.lemon* %68, i32 0, i32 9
  %69 = load %struct.symbol*, %struct.symbol** %wildcard44, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %69, i32 0, i32 1
  %70 = load i32, i32* %index, align 4
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.119, i32 0, i32 0), i32 %70)
  %71 = load i32, i32* %lineno, align 4
  %inc46 = add nsw i32 %71, 1
  store i32 %inc46, i32* %lineno, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.28
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %73 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %74 = load i32, i32* %mhflag.addr, align 4
  call void @print_stack_union(%struct._IO_FILE* %72, %struct.lemon* %73, i32* %lineno, i32 %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.120, i32 0, i32 0))
  %76 = load i32, i32* %lineno, align 4
  %inc49 = add nsw i32 %76, 1
  store i32 %inc49, i32* %lineno, align 4
  %77 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %stacksize = getelementptr inbounds %struct.lemon, %struct.lemon* %77, i32 0, i32 15
  %78 = load i8*, i8** %stacksize, align 8
  %tobool50 = icmp ne i8* %78, null
  br i1 %tobool50, label %if.then.51, label %if.else.55

if.then.51:                                       ; preds = %if.end.47
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %80 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %stacksize52 = getelementptr inbounds %struct.lemon, %struct.lemon* %80, i32 0, i32 15
  %81 = load i8*, i8** %stacksize52, align 8
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.121, i32 0, i32 0), i8* %81)
  %82 = load i32, i32* %lineno, align 4
  %inc54 = add nsw i32 %82, 1
  store i32 %inc54, i32* %lineno, align 4
  br label %if.end.58

if.else.55:                                       ; preds = %if.end.47
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.122, i32 0, i32 0))
  %84 = load i32, i32* %lineno, align 4
  %inc57 = add nsw i32 %84, 1
  store i32 %inc57, i32* %lineno, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.51
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0))
  %86 = load i32, i32* %lineno, align 4
  %inc60 = add nsw i32 %86, 1
  store i32 %inc60, i32* %lineno, align 4
  %87 = load i32, i32* %mhflag.addr, align 4
  %tobool61 = icmp ne i32 %87, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.58
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.103, i32 0, i32 0))
  %89 = load i32, i32* %lineno, align 4
  %inc64 = add nsw i32 %89, 1
  store i32 %inc64, i32* %lineno, align 4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.58
  %90 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name66 = getelementptr inbounds %struct.lemon, %struct.lemon* %90, i32 0, i32 10
  %91 = load i8*, i8** %name66, align 8
  %tobool67 = icmp ne i8* %91, null
  br i1 %tobool67, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.65
  %92 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name68 = getelementptr inbounds %struct.lemon, %struct.lemon* %92, i32 0, i32 10
  %93 = load i8*, i8** %name68, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.65
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %93, %cond.true ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %name, align 8
  %94 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg = getelementptr inbounds %struct.lemon, %struct.lemon* %94, i32 0, i32 11
  %95 = load i8*, i8** %arg, align 8
  %tobool69 = icmp ne i8* %95, null
  br i1 %tobool69, label %land.lhs.true, label %if.else.135

land.lhs.true:                                    ; preds = %cond.end
  %96 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg70 = getelementptr inbounds %struct.lemon, %struct.lemon* %96, i32 0, i32 11
  %97 = load i8*, i8** %arg70, align 8
  %arrayidx71 = getelementptr inbounds i8, i8* %97, i64 0
  %98 = load i8, i8* %arrayidx71, align 1
  %conv = sext i8 %98 to i32
  %tobool72 = icmp ne i32 %conv, 0
  br i1 %tobool72, label %if.then.73, label %if.else.135

if.then.73:                                       ; preds = %land.lhs.true
  %99 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg75 = getelementptr inbounds %struct.lemon, %struct.lemon* %99, i32 0, i32 11
  %100 = load i8*, i8** %arg75, align 8
  %call76 = call i64 @strlen(i8* %100) #8
  %conv77 = trunc i64 %call76 to i32
  store i32 %conv77, i32* %i74, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.73
  %101 = load i32, i32* %i74, align 4
  %cmp78 = icmp sge i32 %101, 1
  br i1 %cmp78, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %102 = load i32, i32* %i74, align 4
  %sub = sub nsw i32 %102, 1
  %idxprom80 = sext i32 %sub to i64
  %103 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg81 = getelementptr inbounds %struct.lemon, %struct.lemon* %103, i32 0, i32 11
  %104 = load i8*, i8** %arg81, align 8
  %arrayidx82 = getelementptr inbounds i8, i8* %104, i64 %idxprom80
  %105 = load i8, i8* %arrayidx82, align 1
  %conv83 = sext i8 %105 to i32
  %idxprom84 = sext i32 %conv83 to i64
  %call85 = call i16** @__ctype_b_loc() #9
  %106 = load i16*, i16** %call85, align 8
  %arrayidx86 = getelementptr inbounds i16, i16* %106, i64 %idxprom84
  %107 = load i16, i16* %arrayidx86, align 2
  %conv87 = zext i16 %107 to i32
  %and = and i32 %conv87, 8192
  %tobool88 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %108 = phi i1 [ false, %while.cond ], [ %tobool88, %land.rhs ]
  br i1 %108, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %109 = load i32, i32* %i74, align 4
  %dec = add nsw i32 %109, -1
  store i32 %dec, i32* %i74, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.89

while.cond.89:                                    ; preds = %while.body.112, %while.end
  %110 = load i32, i32* %i74, align 4
  %cmp90 = icmp sge i32 %110, 1
  br i1 %cmp90, label %land.rhs.92, label %land.end.111

land.rhs.92:                                      ; preds = %while.cond.89
  %111 = load i32, i32* %i74, align 4
  %sub93 = sub nsw i32 %111, 1
  %idxprom94 = sext i32 %sub93 to i64
  %112 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg95 = getelementptr inbounds %struct.lemon, %struct.lemon* %112, i32 0, i32 11
  %113 = load i8*, i8** %arg95, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %113, i64 %idxprom94
  %114 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %114 to i32
  %idxprom98 = sext i32 %conv97 to i64
  %call99 = call i16** @__ctype_b_loc() #9
  %115 = load i16*, i16** %call99, align 8
  %arrayidx100 = getelementptr inbounds i16, i16* %115, i64 %idxprom98
  %116 = load i16, i16* %arrayidx100, align 2
  %conv101 = zext i16 %116 to i32
  %and102 = and i32 %conv101, 8
  %tobool103 = icmp ne i32 %and102, 0
  br i1 %tobool103, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.92
  %117 = load i32, i32* %i74, align 4
  %sub104 = sub nsw i32 %117, 1
  %idxprom105 = sext i32 %sub104 to i64
  %118 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg106 = getelementptr inbounds %struct.lemon, %struct.lemon* %118, i32 0, i32 11
  %119 = load i8*, i8** %arg106, align 8
  %arrayidx107 = getelementptr inbounds i8, i8* %119, i64 %idxprom105
  %120 = load i8, i8* %arrayidx107, align 1
  %conv108 = sext i8 %120 to i32
  %cmp109 = icmp eq i32 %conv108, 95
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.92
  %121 = phi i1 [ true, %land.rhs.92 ], [ %cmp109, %lor.rhs ]
  br label %land.end.111

land.end.111:                                     ; preds = %lor.end, %while.cond.89
  %122 = phi i1 [ false, %while.cond.89 ], [ %121, %lor.end ]
  br i1 %122, label %while.body.112, label %while.end.114

while.body.112:                                   ; preds = %land.end.111
  %123 = load i32, i32* %i74, align 4
  %dec113 = add nsw i32 %123, -1
  store i32 %dec113, i32* %i74, align 4
  br label %while.cond.89

while.end.114:                                    ; preds = %land.end.111
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %125 = load i8*, i8** %name, align 8
  %126 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg115 = getelementptr inbounds %struct.lemon, %struct.lemon* %126, i32 0, i32 11
  %127 = load i8*, i8** %arg115, align 8
  %call116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.123, i32 0, i32 0), i8* %125, i8* %127)
  %128 = load i32, i32* %lineno, align 4
  %inc117 = add nsw i32 %128, 1
  store i32 %inc117, i32* %lineno, align 4
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %130 = load i8*, i8** %name, align 8
  %131 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg118 = getelementptr inbounds %struct.lemon, %struct.lemon* %131, i32 0, i32 11
  %132 = load i8*, i8** %arg118, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.124, i32 0, i32 0), i8* %130, i8* %132)
  %133 = load i32, i32* %lineno, align 4
  %inc120 = add nsw i32 %133, 1
  store i32 %inc120, i32* %lineno, align 4
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %135 = load i8*, i8** %name, align 8
  %136 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg121 = getelementptr inbounds %struct.lemon, %struct.lemon* %136, i32 0, i32 11
  %137 = load i8*, i8** %arg121, align 8
  %138 = load i32, i32* %i74, align 4
  %idxprom122 = sext i32 %138 to i64
  %139 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg123 = getelementptr inbounds %struct.lemon, %struct.lemon* %139, i32 0, i32 11
  %140 = load i8*, i8** %arg123, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %140, i64 %idxprom122
  %call125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.125, i32 0, i32 0), i8* %135, i8* %137, i8* %arrayidx124)
  %141 = load i32, i32* %lineno, align 4
  %inc126 = add nsw i32 %141, 1
  store i32 %inc126, i32* %lineno, align 4
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %143 = load i8*, i8** %name, align 8
  %144 = load i32, i32* %i74, align 4
  %idxprom127 = sext i32 %144 to i64
  %145 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg128 = getelementptr inbounds %struct.lemon, %struct.lemon* %145, i32 0, i32 11
  %146 = load i8*, i8** %arg128, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %146, i64 %idxprom127
  %147 = load i32, i32* %i74, align 4
  %idxprom130 = sext i32 %147 to i64
  %148 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %arg131 = getelementptr inbounds %struct.lemon, %struct.lemon* %148, i32 0, i32 11
  %149 = load i8*, i8** %arg131, align 8
  %arrayidx132 = getelementptr inbounds i8, i8* %149, i64 %idxprom130
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i32 0, i32 0), i8* %143, i8* %arrayidx129, i8* %arrayidx132)
  %150 = load i32, i32* %lineno, align 4
  %inc134 = add nsw i32 %150, 1
  store i32 %inc134, i32* %lineno, align 4
  br label %if.end.144

if.else.135:                                      ; preds = %land.lhs.true, %cond.end
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %152 = load i8*, i8** %name, align 8
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.127, i32 0, i32 0), i8* %152)
  %153 = load i32, i32* %lineno, align 4
  %inc137 = add nsw i32 %153, 1
  store i32 %inc137, i32* %lineno, align 4
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %155 = load i8*, i8** %name, align 8
  %call138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.128, i32 0, i32 0), i8* %155)
  %156 = load i32, i32* %lineno, align 4
  %inc139 = add nsw i32 %156, 1
  store i32 %inc139, i32* %lineno, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %158 = load i8*, i8** %name, align 8
  %call140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %157, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.129, i32 0, i32 0), i8* %158)
  %159 = load i32, i32* %lineno, align 4
  %inc141 = add nsw i32 %159, 1
  store i32 %inc141, i32* %lineno, align 4
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %161 = load i8*, i8** %name, align 8
  %call142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.130, i32 0, i32 0), i8* %161)
  %162 = load i32, i32* %lineno, align 4
  %inc143 = add nsw i32 %162, 1
  store i32 %inc143, i32* %lineno, align 4
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.135, %while.end.114
  %163 = load i32, i32* %mhflag.addr, align 4
  %tobool145 = icmp ne i32 %163, 0
  br i1 %tobool145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %if.end.144
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0))
  %165 = load i32, i32* %lineno, align 4
  %inc148 = add nsw i32 %165, 1
  store i32 %inc148, i32* %lineno, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %if.end.144
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %167 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate150 = getelementptr inbounds %struct.lemon, %struct.lemon* %167, i32 0, i32 2
  %168 = load i32, i32* %nstate150, align 4
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.131, i32 0, i32 0), i32 %168)
  %169 = load i32, i32* %lineno, align 4
  %inc152 = add nsw i32 %169, 1
  store i32 %inc152, i32* %lineno, align 4
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %171 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule153 = getelementptr inbounds %struct.lemon, %struct.lemon* %171, i32 0, i32 3
  %172 = load i32, i32* %nrule153, align 4
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.132, i32 0, i32 0), i32 %172)
  %173 = load i32, i32* %lineno, align 4
  %inc155 = add nsw i32 %173, 1
  store i32 %inc155, i32* %lineno, align 4
  %174 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym = getelementptr inbounds %struct.lemon, %struct.lemon* %174, i32 0, i32 8
  %175 = load %struct.symbol*, %struct.symbol** %errsym, align 8
  %useCnt = getelementptr inbounds %struct.symbol, %struct.symbol* %175, i32 0, i32 9
  %176 = load i32, i32* %useCnt, align 4
  %tobool156 = icmp ne i32 %176, 0
  br i1 %tobool156, label %if.then.157, label %if.end.165

if.then.157:                                      ; preds = %if.end.149
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %178 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym158 = getelementptr inbounds %struct.lemon, %struct.lemon* %178, i32 0, i32 8
  %179 = load %struct.symbol*, %struct.symbol** %errsym158, align 8
  %index159 = getelementptr inbounds %struct.symbol, %struct.symbol* %179, i32 0, i32 1
  %180 = load i32, i32* %index159, align 4
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0), i32 %180)
  %181 = load i32, i32* %lineno, align 4
  %inc161 = add nsw i32 %181, 1
  store i32 %inc161, i32* %lineno, align 4
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %183 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errsym162 = getelementptr inbounds %struct.lemon, %struct.lemon* %183, i32 0, i32 8
  %184 = load %struct.symbol*, %struct.symbol** %errsym162, align 8
  %dtnum = getelementptr inbounds %struct.symbol, %struct.symbol* %184, i32 0, i32 13
  %185 = load i32, i32* %dtnum, align 4
  %call163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.134, i32 0, i32 0), i32 %185)
  %186 = load i32, i32* %lineno, align 4
  %inc164 = add nsw i32 %186, 1
  store i32 %inc164, i32* %lineno, align 4
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.157, %if.end.149
  %187 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %has_fallback = getelementptr inbounds %struct.lemon, %struct.lemon* %187, i32 0, i32 38
  %188 = load i32, i32* %has_fallback, align 4
  %tobool166 = icmp ne i32 %188, 0
  br i1 %tobool166, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.end.165
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.135, i32 0, i32 0))
  %190 = load i32, i32* %lineno, align 4
  %inc169 = add nsw i32 %190, 1
  store i32 %inc169, i32* %lineno, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %if.end.165
  %191 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name171 = getelementptr inbounds %struct.lemon, %struct.lemon* %191, i32 0, i32 10
  %192 = load i8*, i8** %name171, align 8
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %192, %struct._IO_FILE* %193, %struct._IO_FILE* %194, i32* %lineno)
  %195 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate172 = getelementptr inbounds %struct.lemon, %struct.lemon* %195, i32 0, i32 2
  %196 = load i32, i32* %nstate172, align 4
  %mul = mul nsw i32 %196, 2
  %conv173 = sext i32 %mul to i64
  %call174 = call noalias i8* @calloc(i64 %conv173, i64 16) #4
  %197 = bitcast i8* %call174 to %struct.axset*
  store %struct.axset* %197, %struct.axset** %ax, align 8
  %198 = load %struct.axset*, %struct.axset** %ax, align 8
  %cmp175 = icmp eq %struct.axset* %198, null
  br i1 %cmp175, label %if.then.177, label %if.end.179

if.then.177:                                      ; preds = %if.end.170
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

if.end.179:                                       ; preds = %if.end.170
  store i32 0, i32* %i, align 4
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.212, %if.end.179
  %200 = load i32, i32* %i, align 4
  %201 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate181 = getelementptr inbounds %struct.lemon, %struct.lemon* %201, i32 0, i32 2
  %202 = load i32, i32* %nstate181, align 4
  %cmp182 = icmp slt i32 %200, %202
  br i1 %cmp182, label %for.body.184, label %for.end.214

for.body.184:                                     ; preds = %for.cond.180
  %203 = load i32, i32* %i, align 4
  %idxprom185 = sext i32 %203 to i64
  %204 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %204, i32 0, i32 0
  %205 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx186 = getelementptr inbounds %struct.state*, %struct.state** %205, i64 %idxprom185
  %206 = load %struct.state*, %struct.state** %arrayidx186, align 8
  store %struct.state* %206, %struct.state** %stp, align 8
  %207 = load %struct.state*, %struct.state** %stp, align 8
  %208 = load i32, i32* %i, align 4
  %mul187 = mul nsw i32 %208, 2
  %idxprom188 = sext i32 %mul187 to i64
  %209 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx189 = getelementptr inbounds %struct.axset, %struct.axset* %209, i64 %idxprom188
  %stp190 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx189, i32 0, i32 0
  store %struct.state* %207, %struct.state** %stp190, align 8
  %210 = load i32, i32* %i, align 4
  %mul191 = mul nsw i32 %210, 2
  %idxprom192 = sext i32 %mul191 to i64
  %211 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx193 = getelementptr inbounds %struct.axset, %struct.axset* %211, i64 %idxprom192
  %isTkn = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx193, i32 0, i32 1
  store i32 1, i32* %isTkn, align 4
  %212 = load %struct.state*, %struct.state** %stp, align 8
  %nTknAct = getelementptr inbounds %struct.state, %struct.state* %212, i32 0, i32 4
  %213 = load i32, i32* %nTknAct, align 4
  %214 = load i32, i32* %i, align 4
  %mul194 = mul nsw i32 %214, 2
  %idxprom195 = sext i32 %mul194 to i64
  %215 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx196 = getelementptr inbounds %struct.axset, %struct.axset* %215, i64 %idxprom195
  %nAction = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx196, i32 0, i32 2
  store i32 %213, i32* %nAction, align 4
  %216 = load %struct.state*, %struct.state** %stp, align 8
  %217 = load i32, i32* %i, align 4
  %mul197 = mul nsw i32 %217, 2
  %add198 = add nsw i32 %mul197, 1
  %idxprom199 = sext i32 %add198 to i64
  %218 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx200 = getelementptr inbounds %struct.axset, %struct.axset* %218, i64 %idxprom199
  %stp201 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx200, i32 0, i32 0
  store %struct.state* %216, %struct.state** %stp201, align 8
  %219 = load i32, i32* %i, align 4
  %mul202 = mul nsw i32 %219, 2
  %add203 = add nsw i32 %mul202, 1
  %idxprom204 = sext i32 %add203 to i64
  %220 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx205 = getelementptr inbounds %struct.axset, %struct.axset* %220, i64 %idxprom204
  %isTkn206 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx205, i32 0, i32 1
  store i32 0, i32* %isTkn206, align 4
  %221 = load %struct.state*, %struct.state** %stp, align 8
  %nNtAct = getelementptr inbounds %struct.state, %struct.state* %221, i32 0, i32 5
  %222 = load i32, i32* %nNtAct, align 4
  %223 = load i32, i32* %i, align 4
  %mul207 = mul nsw i32 %223, 2
  %add208 = add nsw i32 %mul207, 1
  %idxprom209 = sext i32 %add208 to i64
  %224 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx210 = getelementptr inbounds %struct.axset, %struct.axset* %224, i64 %idxprom209
  %nAction211 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx210, i32 0, i32 2
  store i32 %222, i32* %nAction211, align 4
  br label %for.inc.212

for.inc.212:                                      ; preds = %for.body.184
  %225 = load i32, i32* %i, align 4
  %inc213 = add nsw i32 %225, 1
  store i32 %inc213, i32* %i, align 4
  br label %for.cond.180

for.end.214:                                      ; preds = %for.cond.180
  store i32 0, i32* %mnTknOfst, align 4
  store i32 0, i32* %mxTknOfst, align 4
  store i32 0, i32* %mnNtOfst, align 4
  store i32 0, i32* %mxNtOfst, align 4
  %226 = load %struct.axset*, %struct.axset** %ax, align 8
  %227 = bitcast %struct.axset* %226 to i8*
  %228 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate215 = getelementptr inbounds %struct.lemon, %struct.lemon* %228, i32 0, i32 2
  %229 = load i32, i32* %nstate215, align 4
  %mul216 = mul nsw i32 %229, 2
  %conv217 = sext i32 %mul216 to i64
  call void @qsort(i8* %227, i64 %conv217, i64 16, i32 (i8*, i8*)* @axset_compare)
  %call218 = call %struct.acttab* @acttab_alloc()
  store %struct.acttab* %call218, %struct.acttab** %pActtab, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.316, %for.end.214
  %230 = load i32, i32* %i, align 4
  %231 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate220 = getelementptr inbounds %struct.lemon, %struct.lemon* %231, i32 0, i32 2
  %232 = load i32, i32* %nstate220, align 4
  %mul221 = mul nsw i32 %232, 2
  %cmp222 = icmp slt i32 %230, %mul221
  br i1 %cmp222, label %land.rhs.224, label %land.end.230

land.rhs.224:                                     ; preds = %for.cond.219
  %233 = load i32, i32* %i, align 4
  %idxprom225 = sext i32 %233 to i64
  %234 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx226 = getelementptr inbounds %struct.axset, %struct.axset* %234, i64 %idxprom225
  %nAction227 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx226, i32 0, i32 2
  %235 = load i32, i32* %nAction227, align 4
  %cmp228 = icmp sgt i32 %235, 0
  br label %land.end.230

land.end.230:                                     ; preds = %land.rhs.224, %for.cond.219
  %236 = phi i1 [ false, %for.cond.219 ], [ %cmp228, %land.rhs.224 ]
  br i1 %236, label %for.body.231, label %for.end.318

for.body.231:                                     ; preds = %land.end.230
  %237 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %237 to i64
  %238 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx233 = getelementptr inbounds %struct.axset, %struct.axset* %238, i64 %idxprom232
  %stp234 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx233, i32 0, i32 0
  %239 = load %struct.state*, %struct.state** %stp234, align 8
  store %struct.state* %239, %struct.state** %stp, align 8
  %240 = load i32, i32* %i, align 4
  %idxprom235 = sext i32 %240 to i64
  %241 = load %struct.axset*, %struct.axset** %ax, align 8
  %arrayidx236 = getelementptr inbounds %struct.axset, %struct.axset* %241, i64 %idxprom235
  %isTkn237 = getelementptr inbounds %struct.axset, %struct.axset* %arrayidx236, i32 0, i32 1
  %242 = load i32, i32* %isTkn237, align 4
  %tobool238 = icmp ne i32 %242, 0
  br i1 %tobool238, label %if.then.239, label %if.else.272

if.then.239:                                      ; preds = %for.body.231
  %243 = load %struct.state*, %struct.state** %stp, align 8
  %ap240 = getelementptr inbounds %struct.state, %struct.state* %243, i32 0, i32 3
  %244 = load %struct.action*, %struct.action** %ap240, align 8
  store %struct.action* %244, %struct.action** %ap, align 8
  br label %for.cond.241

for.cond.241:                                     ; preds = %for.inc.257, %if.then.239
  %245 = load %struct.action*, %struct.action** %ap, align 8
  %tobool242 = icmp ne %struct.action* %245, null
  br i1 %tobool242, label %for.body.243, label %for.end.258

for.body.243:                                     ; preds = %for.cond.241
  %246 = load %struct.action*, %struct.action** %ap, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %246, i32 0, i32 0
  %247 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %index244 = getelementptr inbounds %struct.symbol, %struct.symbol* %247, i32 0, i32 1
  %248 = load i32, i32* %index244, align 4
  %249 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal245 = getelementptr inbounds %struct.lemon, %struct.lemon* %249, i32 0, i32 5
  %250 = load i32, i32* %nterminal245, align 4
  %cmp246 = icmp sge i32 %248, %250
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %for.body.243
  br label %for.inc.257

if.end.249:                                       ; preds = %for.body.243
  %251 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %252 = load %struct.action*, %struct.action** %ap, align 8
  %call250 = call i32 @compute_action(%struct.lemon* %251, %struct.action* %252)
  store i32 %call250, i32* %action, align 4
  %253 = load i32, i32* %action, align 4
  %cmp251 = icmp slt i32 %253, 0
  br i1 %cmp251, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %if.end.249
  br label %for.inc.257

if.end.254:                                       ; preds = %if.end.249
  %254 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %255 = load %struct.action*, %struct.action** %ap, align 8
  %sp255 = getelementptr inbounds %struct.action, %struct.action* %255, i32 0, i32 0
  %256 = load %struct.symbol*, %struct.symbol** %sp255, align 8
  %index256 = getelementptr inbounds %struct.symbol, %struct.symbol* %256, i32 0, i32 1
  %257 = load i32, i32* %index256, align 4
  %258 = load i32, i32* %action, align 4
  call void @acttab_action(%struct.acttab* %254, i32 %257, i32 %258)
  br label %for.inc.257

for.inc.257:                                      ; preds = %if.end.254, %if.then.253, %if.then.248
  %259 = load %struct.action*, %struct.action** %ap, align 8
  %next = getelementptr inbounds %struct.action, %struct.action* %259, i32 0, i32 3
  %260 = load %struct.action*, %struct.action** %next, align 8
  store %struct.action* %260, %struct.action** %ap, align 8
  br label %for.cond.241

for.end.258:                                      ; preds = %for.cond.241
  %261 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %call259 = call i32 @acttab_insert(%struct.acttab* %261)
  %262 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst = getelementptr inbounds %struct.state, %struct.state* %262, i32 0, i32 6
  store i32 %call259, i32* %iTknOfst, align 4
  %263 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst260 = getelementptr inbounds %struct.state, %struct.state* %263, i32 0, i32 6
  %264 = load i32, i32* %iTknOfst260, align 4
  %265 = load i32, i32* %mnTknOfst, align 4
  %cmp261 = icmp slt i32 %264, %265
  br i1 %cmp261, label %if.then.263, label %if.end.265

if.then.263:                                      ; preds = %for.end.258
  %266 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst264 = getelementptr inbounds %struct.state, %struct.state* %266, i32 0, i32 6
  %267 = load i32, i32* %iTknOfst264, align 4
  store i32 %267, i32* %mnTknOfst, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.263, %for.end.258
  %268 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst266 = getelementptr inbounds %struct.state, %struct.state* %268, i32 0, i32 6
  %269 = load i32, i32* %iTknOfst266, align 4
  %270 = load i32, i32* %mxTknOfst, align 4
  %cmp267 = icmp sgt i32 %269, %270
  br i1 %cmp267, label %if.then.269, label %if.end.271

if.then.269:                                      ; preds = %if.end.265
  %271 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst270 = getelementptr inbounds %struct.state, %struct.state* %271, i32 0, i32 6
  %272 = load i32, i32* %iTknOfst270, align 4
  store i32 %272, i32* %mxTknOfst, align 4
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.269, %if.end.265
  br label %if.end.315

if.else.272:                                      ; preds = %for.body.231
  %273 = load %struct.state*, %struct.state** %stp, align 8
  %ap273 = getelementptr inbounds %struct.state, %struct.state* %273, i32 0, i32 3
  %274 = load %struct.action*, %struct.action** %ap273, align 8
  store %struct.action* %274, %struct.action** %ap, align 8
  br label %for.cond.274

for.cond.274:                                     ; preds = %for.inc.299, %if.else.272
  %275 = load %struct.action*, %struct.action** %ap, align 8
  %tobool275 = icmp ne %struct.action* %275, null
  br i1 %tobool275, label %for.body.276, label %for.end.301

for.body.276:                                     ; preds = %for.cond.274
  %276 = load %struct.action*, %struct.action** %ap, align 8
  %sp278 = getelementptr inbounds %struct.action, %struct.action* %276, i32 0, i32 0
  %277 = load %struct.symbol*, %struct.symbol** %sp278, align 8
  %index279 = getelementptr inbounds %struct.symbol, %struct.symbol* %277, i32 0, i32 1
  %278 = load i32, i32* %index279, align 4
  %279 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal280 = getelementptr inbounds %struct.lemon, %struct.lemon* %279, i32 0, i32 5
  %280 = load i32, i32* %nterminal280, align 4
  %cmp281 = icmp slt i32 %278, %280
  br i1 %cmp281, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %for.body.276
  br label %for.inc.299

if.end.284:                                       ; preds = %for.body.276
  %281 = load %struct.action*, %struct.action** %ap, align 8
  %sp285 = getelementptr inbounds %struct.action, %struct.action* %281, i32 0, i32 0
  %282 = load %struct.symbol*, %struct.symbol** %sp285, align 8
  %index286 = getelementptr inbounds %struct.symbol, %struct.symbol* %282, i32 0, i32 1
  %283 = load i32, i32* %index286, align 4
  %284 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol287 = getelementptr inbounds %struct.lemon, %struct.lemon* %284, i32 0, i32 4
  %285 = load i32, i32* %nsymbol287, align 4
  %cmp288 = icmp eq i32 %283, %285
  br i1 %cmp288, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.284
  br label %for.inc.299

if.end.291:                                       ; preds = %if.end.284
  %286 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %287 = load %struct.action*, %struct.action** %ap, align 8
  %call292 = call i32 @compute_action(%struct.lemon* %286, %struct.action* %287)
  store i32 %call292, i32* %action277, align 4
  %288 = load i32, i32* %action277, align 4
  %cmp293 = icmp slt i32 %288, 0
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.291
  br label %for.inc.299

if.end.296:                                       ; preds = %if.end.291
  %289 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %290 = load %struct.action*, %struct.action** %ap, align 8
  %sp297 = getelementptr inbounds %struct.action, %struct.action* %290, i32 0, i32 0
  %291 = load %struct.symbol*, %struct.symbol** %sp297, align 8
  %index298 = getelementptr inbounds %struct.symbol, %struct.symbol* %291, i32 0, i32 1
  %292 = load i32, i32* %index298, align 4
  %293 = load i32, i32* %action277, align 4
  call void @acttab_action(%struct.acttab* %289, i32 %292, i32 %293)
  br label %for.inc.299

for.inc.299:                                      ; preds = %if.end.296, %if.then.295, %if.then.290, %if.then.283
  %294 = load %struct.action*, %struct.action** %ap, align 8
  %next300 = getelementptr inbounds %struct.action, %struct.action* %294, i32 0, i32 3
  %295 = load %struct.action*, %struct.action** %next300, align 8
  store %struct.action* %295, %struct.action** %ap, align 8
  br label %for.cond.274

for.end.301:                                      ; preds = %for.cond.274
  %296 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %call302 = call i32 @acttab_insert(%struct.acttab* %296)
  %297 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst = getelementptr inbounds %struct.state, %struct.state* %297, i32 0, i32 7
  store i32 %call302, i32* %iNtOfst, align 4
  %298 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst303 = getelementptr inbounds %struct.state, %struct.state* %298, i32 0, i32 7
  %299 = load i32, i32* %iNtOfst303, align 4
  %300 = load i32, i32* %mnNtOfst, align 4
  %cmp304 = icmp slt i32 %299, %300
  br i1 %cmp304, label %if.then.306, label %if.end.308

if.then.306:                                      ; preds = %for.end.301
  %301 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst307 = getelementptr inbounds %struct.state, %struct.state* %301, i32 0, i32 7
  %302 = load i32, i32* %iNtOfst307, align 4
  store i32 %302, i32* %mnNtOfst, align 4
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.306, %for.end.301
  %303 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst309 = getelementptr inbounds %struct.state, %struct.state* %303, i32 0, i32 7
  %304 = load i32, i32* %iNtOfst309, align 4
  %305 = load i32, i32* %mxNtOfst, align 4
  %cmp310 = icmp sgt i32 %304, %305
  br i1 %cmp310, label %if.then.312, label %if.end.314

if.then.312:                                      ; preds = %if.end.308
  %306 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst313 = getelementptr inbounds %struct.state, %struct.state* %306, i32 0, i32 7
  %307 = load i32, i32* %iNtOfst313, align 4
  store i32 %307, i32* %mxNtOfst, align 4
  br label %if.end.314

if.end.314:                                       ; preds = %if.then.312, %if.end.308
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.271
  br label %for.inc.316

for.inc.316:                                      ; preds = %if.end.315
  %308 = load i32, i32* %i, align 4
  %inc317 = add nsw i32 %308, 1
  store i32 %inc317, i32* %i, align 4
  br label %for.cond.219

for.end.318:                                      ; preds = %land.end.230
  %309 = load %struct.axset*, %struct.axset** %ax, align 8
  %310 = bitcast %struct.axset* %309 to i8*
  call void @free(i8* %310) #4
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call319 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %311, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.136, i32 0, i32 0))
  %312 = load i32, i32* %lineno, align 4
  %inc320 = add nsw i32 %312, 1
  store i32 %inc320, i32* %lineno, align 4
  %313 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %nAction321 = getelementptr inbounds %struct.acttab, %struct.acttab* %313, i32 0, i32 0
  %314 = load i32, i32* %nAction321, align 4
  store i32 %314, i32* %n, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.355, %for.end.318
  %315 = load i32, i32* %i, align 4
  %316 = load i32, i32* %n, align 4
  %cmp323 = icmp slt i32 %315, %316
  br i1 %cmp323, label %for.body.325, label %for.end.357

for.body.325:                                     ; preds = %for.cond.322
  %317 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %317 to i64
  %318 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %aAction = getelementptr inbounds %struct.acttab, %struct.acttab* %318, i32 0, i32 2
  %319 = load %struct.anon*, %struct.anon** %aAction, align 8
  %arrayidx328 = getelementptr inbounds %struct.anon, %struct.anon* %319, i64 %idxprom327
  %action329 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx328, i32 0, i32 1
  %320 = load i32, i32* %action329, align 4
  store i32 %320, i32* %action326, align 4
  %321 = load i32, i32* %action326, align 4
  %cmp330 = icmp slt i32 %321, 0
  br i1 %cmp330, label %if.then.332, label %if.end.337

if.then.332:                                      ; preds = %for.body.325
  %322 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate333 = getelementptr inbounds %struct.lemon, %struct.lemon* %322, i32 0, i32 2
  %323 = load i32, i32* %nstate333, align 4
  %324 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule334 = getelementptr inbounds %struct.lemon, %struct.lemon* %324, i32 0, i32 3
  %325 = load i32, i32* %nrule334, align 4
  %add335 = add nsw i32 %323, %325
  %add336 = add nsw i32 %add335, 2
  store i32 %add336, i32* %action326, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.332, %for.body.325
  %326 = load i32, i32* %j, align 4
  %cmp338 = icmp eq i32 %326, 0
  br i1 %cmp338, label %if.then.340, label %if.end.342

if.then.340:                                      ; preds = %if.end.337
  %327 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %328 = load i32, i32* %i, align 4
  %call341 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %327, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 %328)
  br label %if.end.342

if.end.342:                                       ; preds = %if.then.340, %if.end.337
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %330 = load i32, i32* %action326, align 4
  %call343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 %330)
  %331 = load i32, i32* %j, align 4
  %cmp344 = icmp eq i32 %331, 9
  br i1 %cmp344, label %if.then.349, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.342
  %332 = load i32, i32* %i, align 4
  %333 = load i32, i32* %n, align 4
  %sub346 = sub nsw i32 %333, 1
  %cmp347 = icmp eq i32 %332, %sub346
  br i1 %cmp347, label %if.then.349, label %if.else.352

if.then.349:                                      ; preds = %lor.lhs.false, %if.end.342
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call350 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %335 = load i32, i32* %lineno, align 4
  %inc351 = add nsw i32 %335, 1
  store i32 %inc351, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  br label %if.end.354

if.else.352:                                      ; preds = %lor.lhs.false
  %336 = load i32, i32* %j, align 4
  %inc353 = add nsw i32 %336, 1
  store i32 %inc353, i32* %j, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.else.352, %if.then.349
  br label %for.inc.355

for.inc.355:                                      ; preds = %if.end.354
  %337 = load i32, i32* %i, align 4
  %inc356 = add nsw i32 %337, 1
  store i32 %inc356, i32* %i, align 4
  br label %for.cond.322

for.end.357:                                      ; preds = %for.cond.322
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %338, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0))
  %339 = load i32, i32* %lineno, align 4
  %inc359 = add nsw i32 %339, 1
  store i32 %inc359, i32* %lineno, align 4
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call360 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.140, i32 0, i32 0))
  %341 = load i32, i32* %lineno, align 4
  %inc361 = add nsw i32 %341, 1
  store i32 %inc361, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.362

for.cond.362:                                     ; preds = %for.inc.392, %for.end.357
  %342 = load i32, i32* %i, align 4
  %343 = load i32, i32* %n, align 4
  %cmp363 = icmp slt i32 %342, %343
  br i1 %cmp363, label %for.body.365, label %for.end.394

for.body.365:                                     ; preds = %for.cond.362
  %344 = load i32, i32* %i, align 4
  %idxprom366 = sext i32 %344 to i64
  %345 = load %struct.acttab*, %struct.acttab** %pActtab, align 8
  %aAction367 = getelementptr inbounds %struct.acttab, %struct.acttab* %345, i32 0, i32 2
  %346 = load %struct.anon*, %struct.anon** %aAction367, align 8
  %arrayidx368 = getelementptr inbounds %struct.anon, %struct.anon* %346, i64 %idxprom366
  %lookahead = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx368, i32 0, i32 0
  %347 = load i32, i32* %lookahead, align 4
  store i32 %347, i32* %la, align 4
  %348 = load i32, i32* %la, align 4
  %cmp369 = icmp slt i32 %348, 0
  br i1 %cmp369, label %if.then.371, label %if.end.373

if.then.371:                                      ; preds = %for.body.365
  %349 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol372 = getelementptr inbounds %struct.lemon, %struct.lemon* %349, i32 0, i32 4
  %350 = load i32, i32* %nsymbol372, align 4
  store i32 %350, i32* %la, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.371, %for.body.365
  %351 = load i32, i32* %j, align 4
  %cmp374 = icmp eq i32 %351, 0
  br i1 %cmp374, label %if.then.376, label %if.end.378

if.then.376:                                      ; preds = %if.end.373
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %353 = load i32, i32* %i, align 4
  %call377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 %353)
  br label %if.end.378

if.end.378:                                       ; preds = %if.then.376, %if.end.373
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %355 = load i32, i32* %la, align 4
  %call379 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %354, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 %355)
  %356 = load i32, i32* %j, align 4
  %cmp380 = icmp eq i32 %356, 9
  br i1 %cmp380, label %if.then.386, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %if.end.378
  %357 = load i32, i32* %i, align 4
  %358 = load i32, i32* %n, align 4
  %sub383 = sub nsw i32 %358, 1
  %cmp384 = icmp eq i32 %357, %sub383
  br i1 %cmp384, label %if.then.386, label %if.else.389

if.then.386:                                      ; preds = %lor.lhs.false.382, %if.end.378
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %360 = load i32, i32* %lineno, align 4
  %inc388 = add nsw i32 %360, 1
  store i32 %inc388, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  br label %if.end.391

if.else.389:                                      ; preds = %lor.lhs.false.382
  %361 = load i32, i32* %j, align 4
  %inc390 = add nsw i32 %361, 1
  store i32 %inc390, i32* %j, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.else.389, %if.then.386
  br label %for.inc.392

for.inc.392:                                      ; preds = %if.end.391
  %362 = load i32, i32* %i, align 4
  %inc393 = add nsw i32 %362, 1
  store i32 %inc393, i32* %i, align 4
  br label %for.cond.362

for.end.394:                                      ; preds = %for.cond.362
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call395 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %363, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0))
  %364 = load i32, i32* %lineno, align 4
  %inc396 = add nsw i32 %364, 1
  store i32 %inc396, i32* %lineno, align 4
  %365 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %366 = load i32, i32* %mnTknOfst, align 4
  %sub397 = sub nsw i32 %366, 1
  %call398 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %365, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.141, i32 0, i32 0), i32 %sub397)
  %367 = load i32, i32* %lineno, align 4
  %inc399 = add nsw i32 %367, 1
  store i32 %inc399, i32* %lineno, align 4
  %368 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate400 = getelementptr inbounds %struct.lemon, %struct.lemon* %368, i32 0, i32 2
  %369 = load i32, i32* %nstate400, align 4
  store i32 %369, i32* %n, align 4
  br label %while.cond.401

while.cond.401:                                   ; preds = %while.body.413, %for.end.394
  %370 = load i32, i32* %n, align 4
  %cmp402 = icmp sgt i32 %370, 0
  br i1 %cmp402, label %land.rhs.404, label %land.end.412

land.rhs.404:                                     ; preds = %while.cond.401
  %371 = load i32, i32* %n, align 4
  %sub405 = sub nsw i32 %371, 1
  %idxprom406 = sext i32 %sub405 to i64
  %372 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted407 = getelementptr inbounds %struct.lemon, %struct.lemon* %372, i32 0, i32 0
  %373 = load %struct.state**, %struct.state*** %sorted407, align 8
  %arrayidx408 = getelementptr inbounds %struct.state*, %struct.state** %373, i64 %idxprom406
  %374 = load %struct.state*, %struct.state** %arrayidx408, align 8
  %iTknOfst409 = getelementptr inbounds %struct.state, %struct.state* %374, i32 0, i32 6
  %375 = load i32, i32* %iTknOfst409, align 4
  %cmp410 = icmp eq i32 %375, -2147483647
  br label %land.end.412

land.end.412:                                     ; preds = %land.rhs.404, %while.cond.401
  %376 = phi i1 [ false, %while.cond.401 ], [ %cmp410, %land.rhs.404 ]
  br i1 %376, label %while.body.413, label %while.end.415

while.body.413:                                   ; preds = %land.end.412
  %377 = load i32, i32* %n, align 4
  %dec414 = add nsw i32 %377, -1
  store i32 %dec414, i32* %n, align 4
  br label %while.cond.401

while.end.415:                                    ; preds = %land.end.412
  %378 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %379 = load i32, i32* %n, align 4
  %sub416 = sub nsw i32 %379, 1
  %call417 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %378, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.142, i32 0, i32 0), i32 %sub416)
  %380 = load i32, i32* %lineno, align 4
  %inc418 = add nsw i32 %380, 1
  store i32 %inc418, i32* %lineno, align 4
  %381 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %382 = load i32, i32* %mnTknOfst, align 4
  %sub419 = sub nsw i32 %382, 1
  %383 = load i32, i32* %mxTknOfst, align 4
  %call420 = call i8* @minimum_size_type(i32 %sub419, i32 %383)
  %call421 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %381, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.143, i32 0, i32 0), i8* %call420)
  %384 = load i32, i32* %lineno, align 4
  %inc422 = add nsw i32 %384, 1
  store i32 %inc422, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.454, %while.end.415
  %385 = load i32, i32* %i, align 4
  %386 = load i32, i32* %n, align 4
  %cmp424 = icmp slt i32 %385, %386
  br i1 %cmp424, label %for.body.426, label %for.end.456

for.body.426:                                     ; preds = %for.cond.423
  %387 = load i32, i32* %i, align 4
  %idxprom427 = sext i32 %387 to i64
  %388 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted428 = getelementptr inbounds %struct.lemon, %struct.lemon* %388, i32 0, i32 0
  %389 = load %struct.state**, %struct.state*** %sorted428, align 8
  %arrayidx429 = getelementptr inbounds %struct.state*, %struct.state** %389, i64 %idxprom427
  %390 = load %struct.state*, %struct.state** %arrayidx429, align 8
  store %struct.state* %390, %struct.state** %stp, align 8
  %391 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst430 = getelementptr inbounds %struct.state, %struct.state* %391, i32 0, i32 6
  %392 = load i32, i32* %iTknOfst430, align 4
  store i32 %392, i32* %ofst, align 4
  %393 = load i32, i32* %ofst, align 4
  %cmp431 = icmp eq i32 %393, -2147483647
  br i1 %cmp431, label %if.then.433, label %if.end.435

if.then.433:                                      ; preds = %for.body.426
  %394 = load i32, i32* %mnTknOfst, align 4
  %sub434 = sub nsw i32 %394, 1
  store i32 %sub434, i32* %ofst, align 4
  br label %if.end.435

if.end.435:                                       ; preds = %if.then.433, %for.body.426
  %395 = load i32, i32* %j, align 4
  %cmp436 = icmp eq i32 %395, 0
  br i1 %cmp436, label %if.then.438, label %if.end.440

if.then.438:                                      ; preds = %if.end.435
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %397 = load i32, i32* %i, align 4
  %call439 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %396, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 %397)
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.438, %if.end.435
  %398 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %399 = load i32, i32* %ofst, align 4
  %call441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %398, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 %399)
  %400 = load i32, i32* %j, align 4
  %cmp442 = icmp eq i32 %400, 9
  br i1 %cmp442, label %if.then.448, label %lor.lhs.false.444

lor.lhs.false.444:                                ; preds = %if.end.440
  %401 = load i32, i32* %i, align 4
  %402 = load i32, i32* %n, align 4
  %sub445 = sub nsw i32 %402, 1
  %cmp446 = icmp eq i32 %401, %sub445
  br i1 %cmp446, label %if.then.448, label %if.else.451

if.then.448:                                      ; preds = %lor.lhs.false.444, %if.end.440
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call449 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %404 = load i32, i32* %lineno, align 4
  %inc450 = add nsw i32 %404, 1
  store i32 %inc450, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  br label %if.end.453

if.else.451:                                      ; preds = %lor.lhs.false.444
  %405 = load i32, i32* %j, align 4
  %inc452 = add nsw i32 %405, 1
  store i32 %inc452, i32* %j, align 4
  br label %if.end.453

if.end.453:                                       ; preds = %if.else.451, %if.then.448
  br label %for.inc.454

for.inc.454:                                      ; preds = %if.end.453
  %406 = load i32, i32* %i, align 4
  %inc455 = add nsw i32 %406, 1
  store i32 %inc455, i32* %i, align 4
  br label %for.cond.423

for.end.456:                                      ; preds = %for.cond.423
  %407 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call457 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %407, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0))
  %408 = load i32, i32* %lineno, align 4
  %inc458 = add nsw i32 %408, 1
  store i32 %inc458, i32* %lineno, align 4
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %410 = load i32, i32* %mnNtOfst, align 4
  %sub459 = sub nsw i32 %410, 1
  %call460 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %409, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.144, i32 0, i32 0), i32 %sub459)
  %411 = load i32, i32* %lineno, align 4
  %inc461 = add nsw i32 %411, 1
  store i32 %inc461, i32* %lineno, align 4
  %412 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate462 = getelementptr inbounds %struct.lemon, %struct.lemon* %412, i32 0, i32 2
  %413 = load i32, i32* %nstate462, align 4
  store i32 %413, i32* %n, align 4
  br label %while.cond.463

while.cond.463:                                   ; preds = %while.body.475, %for.end.456
  %414 = load i32, i32* %n, align 4
  %cmp464 = icmp sgt i32 %414, 0
  br i1 %cmp464, label %land.rhs.466, label %land.end.474

land.rhs.466:                                     ; preds = %while.cond.463
  %415 = load i32, i32* %n, align 4
  %sub467 = sub nsw i32 %415, 1
  %idxprom468 = sext i32 %sub467 to i64
  %416 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted469 = getelementptr inbounds %struct.lemon, %struct.lemon* %416, i32 0, i32 0
  %417 = load %struct.state**, %struct.state*** %sorted469, align 8
  %arrayidx470 = getelementptr inbounds %struct.state*, %struct.state** %417, i64 %idxprom468
  %418 = load %struct.state*, %struct.state** %arrayidx470, align 8
  %iNtOfst471 = getelementptr inbounds %struct.state, %struct.state* %418, i32 0, i32 7
  %419 = load i32, i32* %iNtOfst471, align 4
  %cmp472 = icmp eq i32 %419, -2147483647
  br label %land.end.474

land.end.474:                                     ; preds = %land.rhs.466, %while.cond.463
  %420 = phi i1 [ false, %while.cond.463 ], [ %cmp472, %land.rhs.466 ]
  br i1 %420, label %while.body.475, label %while.end.477

while.body.475:                                   ; preds = %land.end.474
  %421 = load i32, i32* %n, align 4
  %dec476 = add nsw i32 %421, -1
  store i32 %dec476, i32* %n, align 4
  br label %while.cond.463

while.end.477:                                    ; preds = %land.end.474
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %423 = load i32, i32* %n, align 4
  %sub478 = sub nsw i32 %423, 1
  %call479 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %422, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i32 0, i32 0), i32 %sub478)
  %424 = load i32, i32* %lineno, align 4
  %inc480 = add nsw i32 %424, 1
  store i32 %inc480, i32* %lineno, align 4
  %425 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %426 = load i32, i32* %mnNtOfst, align 4
  %sub481 = sub nsw i32 %426, 1
  %427 = load i32, i32* %mxNtOfst, align 4
  %call482 = call i8* @minimum_size_type(i32 %sub481, i32 %427)
  %call483 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %425, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.146, i32 0, i32 0), i8* %call482)
  %428 = load i32, i32* %lineno, align 4
  %inc484 = add nsw i32 %428, 1
  store i32 %inc484, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.485

for.cond.485:                                     ; preds = %for.inc.517, %while.end.477
  %429 = load i32, i32* %i, align 4
  %430 = load i32, i32* %n, align 4
  %cmp486 = icmp slt i32 %429, %430
  br i1 %cmp486, label %for.body.488, label %for.end.519

for.body.488:                                     ; preds = %for.cond.485
  %431 = load i32, i32* %i, align 4
  %idxprom490 = sext i32 %431 to i64
  %432 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted491 = getelementptr inbounds %struct.lemon, %struct.lemon* %432, i32 0, i32 0
  %433 = load %struct.state**, %struct.state*** %sorted491, align 8
  %arrayidx492 = getelementptr inbounds %struct.state*, %struct.state** %433, i64 %idxprom490
  %434 = load %struct.state*, %struct.state** %arrayidx492, align 8
  store %struct.state* %434, %struct.state** %stp, align 8
  %435 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst493 = getelementptr inbounds %struct.state, %struct.state* %435, i32 0, i32 7
  %436 = load i32, i32* %iNtOfst493, align 4
  store i32 %436, i32* %ofst489, align 4
  %437 = load i32, i32* %ofst489, align 4
  %cmp494 = icmp eq i32 %437, -2147483647
  br i1 %cmp494, label %if.then.496, label %if.end.498

if.then.496:                                      ; preds = %for.body.488
  %438 = load i32, i32* %mnNtOfst, align 4
  %sub497 = sub nsw i32 %438, 1
  store i32 %sub497, i32* %ofst489, align 4
  br label %if.end.498

if.end.498:                                       ; preds = %if.then.496, %for.body.488
  %439 = load i32, i32* %j, align 4
  %cmp499 = icmp eq i32 %439, 0
  br i1 %cmp499, label %if.then.501, label %if.end.503

if.then.501:                                      ; preds = %if.end.498
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %441 = load i32, i32* %i, align 4
  %call502 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %440, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 %441)
  br label %if.end.503

if.end.503:                                       ; preds = %if.then.501, %if.end.498
  %442 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %443 = load i32, i32* %ofst489, align 4
  %call504 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %442, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 %443)
  %444 = load i32, i32* %j, align 4
  %cmp505 = icmp eq i32 %444, 9
  br i1 %cmp505, label %if.then.511, label %lor.lhs.false.507

lor.lhs.false.507:                                ; preds = %if.end.503
  %445 = load i32, i32* %i, align 4
  %446 = load i32, i32* %n, align 4
  %sub508 = sub nsw i32 %446, 1
  %cmp509 = icmp eq i32 %445, %sub508
  br i1 %cmp509, label %if.then.511, label %if.else.514

if.then.511:                                      ; preds = %lor.lhs.false.507, %if.end.503
  %447 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call512 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %447, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %448 = load i32, i32* %lineno, align 4
  %inc513 = add nsw i32 %448, 1
  store i32 %inc513, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  br label %if.end.516

if.else.514:                                      ; preds = %lor.lhs.false.507
  %449 = load i32, i32* %j, align 4
  %inc515 = add nsw i32 %449, 1
  store i32 %inc515, i32* %j, align 4
  br label %if.end.516

if.end.516:                                       ; preds = %if.else.514, %if.then.511
  br label %for.inc.517

for.inc.517:                                      ; preds = %if.end.516
  %450 = load i32, i32* %i, align 4
  %inc518 = add nsw i32 %450, 1
  store i32 %inc518, i32* %i, align 4
  br label %for.cond.485

for.end.519:                                      ; preds = %for.cond.485
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call520 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0))
  %452 = load i32, i32* %lineno, align 4
  %inc521 = add nsw i32 %452, 1
  store i32 %inc521, i32* %lineno, align 4
  %453 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %453, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.147, i32 0, i32 0))
  %454 = load i32, i32* %lineno, align 4
  %inc523 = add nsw i32 %454, 1
  store i32 %inc523, i32* %lineno, align 4
  %455 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate524 = getelementptr inbounds %struct.lemon, %struct.lemon* %455, i32 0, i32 2
  %456 = load i32, i32* %nstate524, align 4
  store i32 %456, i32* %n, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.525

for.cond.525:                                     ; preds = %for.inc.550, %for.end.519
  %457 = load i32, i32* %i, align 4
  %458 = load i32, i32* %n, align 4
  %cmp526 = icmp slt i32 %457, %458
  br i1 %cmp526, label %for.body.528, label %for.end.552

for.body.528:                                     ; preds = %for.cond.525
  %459 = load i32, i32* %i, align 4
  %idxprom529 = sext i32 %459 to i64
  %460 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted530 = getelementptr inbounds %struct.lemon, %struct.lemon* %460, i32 0, i32 0
  %461 = load %struct.state**, %struct.state*** %sorted530, align 8
  %arrayidx531 = getelementptr inbounds %struct.state*, %struct.state** %461, i64 %idxprom529
  %462 = load %struct.state*, %struct.state** %arrayidx531, align 8
  store %struct.state* %462, %struct.state** %stp, align 8
  %463 = load i32, i32* %j, align 4
  %cmp532 = icmp eq i32 %463, 0
  br i1 %cmp532, label %if.then.534, label %if.end.536

if.then.534:                                      ; preds = %for.body.528
  %464 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %465 = load i32, i32* %i, align 4
  %call535 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %464, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 %465)
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.534, %for.body.528
  %466 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %467 = load %struct.state*, %struct.state** %stp, align 8
  %iDflt = getelementptr inbounds %struct.state, %struct.state* %467, i32 0, i32 8
  %468 = load i32, i32* %iDflt, align 4
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %466, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.138, i32 0, i32 0), i32 %468)
  %469 = load i32, i32* %j, align 4
  %cmp538 = icmp eq i32 %469, 9
  br i1 %cmp538, label %if.then.544, label %lor.lhs.false.540

lor.lhs.false.540:                                ; preds = %if.end.536
  %470 = load i32, i32* %i, align 4
  %471 = load i32, i32* %n, align 4
  %sub541 = sub nsw i32 %471, 1
  %cmp542 = icmp eq i32 %470, %sub541
  br i1 %cmp542, label %if.then.544, label %if.else.547

if.then.544:                                      ; preds = %lor.lhs.false.540, %if.end.536
  %472 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call545 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %472, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %473 = load i32, i32* %lineno, align 4
  %inc546 = add nsw i32 %473, 1
  store i32 %inc546, i32* %lineno, align 4
  store i32 0, i32* %j, align 4
  br label %if.end.549

if.else.547:                                      ; preds = %lor.lhs.false.540
  %474 = load i32, i32* %j, align 4
  %inc548 = add nsw i32 %474, 1
  store i32 %inc548, i32* %j, align 4
  br label %if.end.549

if.end.549:                                       ; preds = %if.else.547, %if.then.544
  br label %for.inc.550

for.inc.550:                                      ; preds = %if.end.549
  %475 = load i32, i32* %i, align 4
  %inc551 = add nsw i32 %475, 1
  store i32 %inc551, i32* %i, align 4
  br label %for.cond.525

for.end.552:                                      ; preds = %for.cond.525
  %476 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call553 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %476, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.139, i32 0, i32 0))
  %477 = load i32, i32* %lineno, align 4
  %inc554 = add nsw i32 %477, 1
  store i32 %inc554, i32* %lineno, align 4
  %478 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name555 = getelementptr inbounds %struct.lemon, %struct.lemon* %478, i32 0, i32 10
  %479 = load i8*, i8** %name555, align 8
  %480 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %481 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %479, %struct._IO_FILE* %480, %struct._IO_FILE* %481, i32* %lineno)
  %482 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %has_fallback556 = getelementptr inbounds %struct.lemon, %struct.lemon* %482, i32 0, i32 38
  %483 = load i32, i32* %has_fallback556, align 4
  %tobool557 = icmp ne i32 %483, 0
  br i1 %tobool557, label %if.then.558, label %if.end.584

if.then.558:                                      ; preds = %for.end.552
  store i32 0, i32* %i, align 4
  br label %for.cond.559

for.cond.559:                                     ; preds = %for.inc.581, %if.then.558
  %484 = load i32, i32* %i, align 4
  %485 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal560 = getelementptr inbounds %struct.lemon, %struct.lemon* %485, i32 0, i32 5
  %486 = load i32, i32* %nterminal560, align 4
  %cmp561 = icmp slt i32 %484, %486
  br i1 %cmp561, label %for.body.563, label %for.end.583

for.body.563:                                     ; preds = %for.cond.559
  %487 = load i32, i32* %i, align 4
  %idxprom564 = sext i32 %487 to i64
  %488 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols565 = getelementptr inbounds %struct.lemon, %struct.lemon* %488, i32 0, i32 6
  %489 = load %struct.symbol**, %struct.symbol*** %symbols565, align 8
  %arrayidx566 = getelementptr inbounds %struct.symbol*, %struct.symbol** %489, i64 %idxprom564
  %490 = load %struct.symbol*, %struct.symbol** %arrayidx566, align 8
  store %struct.symbol* %490, %struct.symbol** %p, align 8
  %491 = load %struct.symbol*, %struct.symbol** %p, align 8
  %fallback = getelementptr inbounds %struct.symbol, %struct.symbol* %491, i32 0, i32 4
  %492 = load %struct.symbol*, %struct.symbol** %fallback, align 8
  %cmp567 = icmp eq %struct.symbol* %492, null
  br i1 %cmp567, label %if.then.569, label %if.else.572

if.then.569:                                      ; preds = %for.body.563
  %493 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %494 = load %struct.symbol*, %struct.symbol** %p, align 8
  %name570 = getelementptr inbounds %struct.symbol, %struct.symbol* %494, i32 0, i32 0
  %495 = load i8*, i8** %name570, align 8
  %call571 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %493, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.148, i32 0, i32 0), i8* %495)
  br label %if.end.579

if.else.572:                                      ; preds = %for.body.563
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %497 = load %struct.symbol*, %struct.symbol** %p, align 8
  %fallback573 = getelementptr inbounds %struct.symbol, %struct.symbol* %497, i32 0, i32 4
  %498 = load %struct.symbol*, %struct.symbol** %fallback573, align 8
  %index574 = getelementptr inbounds %struct.symbol, %struct.symbol* %498, i32 0, i32 1
  %499 = load i32, i32* %index574, align 4
  %500 = load %struct.symbol*, %struct.symbol** %p, align 8
  %name575 = getelementptr inbounds %struct.symbol, %struct.symbol* %500, i32 0, i32 0
  %501 = load i8*, i8** %name575, align 8
  %502 = load %struct.symbol*, %struct.symbol** %p, align 8
  %fallback576 = getelementptr inbounds %struct.symbol, %struct.symbol* %502, i32 0, i32 4
  %503 = load %struct.symbol*, %struct.symbol** %fallback576, align 8
  %name577 = getelementptr inbounds %struct.symbol, %struct.symbol* %503, i32 0, i32 0
  %504 = load i8*, i8** %name577, align 8
  %call578 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %496, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i32 0, i32 0), i32 %499, i8* %501, i8* %504)
  br label %if.end.579

if.end.579:                                       ; preds = %if.else.572, %if.then.569
  %505 = load i32, i32* %lineno, align 4
  %inc580 = add nsw i32 %505, 1
  store i32 %inc580, i32* %lineno, align 4
  br label %for.inc.581

for.inc.581:                                      ; preds = %if.end.579
  %506 = load i32, i32* %i, align 4
  %inc582 = add nsw i32 %506, 1
  store i32 %inc582, i32* %i, align 4
  br label %for.cond.559

for.end.583:                                      ; preds = %for.cond.559
  br label %if.end.584

if.end.584:                                       ; preds = %for.end.583, %for.end.552
  %507 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name585 = getelementptr inbounds %struct.lemon, %struct.lemon* %507, i32 0, i32 10
  %508 = load i8*, i8** %name585, align 8
  %509 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %510 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %508, %struct._IO_FILE* %509, %struct._IO_FILE* %510, i32* %lineno)
  store i32 0, i32* %i, align 4
  br label %for.cond.586

for.cond.586:                                     ; preds = %for.inc.605, %if.end.584
  %511 = load i32, i32* %i, align 4
  %512 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol587 = getelementptr inbounds %struct.lemon, %struct.lemon* %512, i32 0, i32 4
  %513 = load i32, i32* %nsymbol587, align 4
  %cmp588 = icmp slt i32 %511, %513
  br i1 %cmp588, label %for.body.590, label %for.end.607

for.body.590:                                     ; preds = %for.cond.586
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %514 = load i32, i32* %i, align 4
  %idxprom591 = sext i32 %514 to i64
  %515 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols592 = getelementptr inbounds %struct.lemon, %struct.lemon* %515, i32 0, i32 6
  %516 = load %struct.symbol**, %struct.symbol*** %symbols592, align 8
  %arrayidx593 = getelementptr inbounds %struct.symbol*, %struct.symbol** %516, i64 %idxprom591
  %517 = load %struct.symbol*, %struct.symbol** %arrayidx593, align 8
  %name594 = getelementptr inbounds %struct.symbol, %struct.symbol* %517, i32 0, i32 0
  %518 = load i8*, i8** %name594, align 8
  %call595 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.150, i32 0, i32 0), i8* %518) #4
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %arraydecay596 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %call597 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %519, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.151, i32 0, i32 0), i8* %arraydecay596)
  %520 = load i32, i32* %i, align 4
  %and598 = and i32 %520, 3
  %cmp599 = icmp eq i32 %and598, 3
  br i1 %cmp599, label %if.then.601, label %if.end.604

if.then.601:                                      ; preds = %for.body.590
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call602 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %522 = load i32, i32* %lineno, align 4
  %inc603 = add nsw i32 %522, 1
  store i32 %inc603, i32* %lineno, align 4
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.601, %for.body.590
  br label %for.inc.605

for.inc.605:                                      ; preds = %if.end.604
  %523 = load i32, i32* %i, align 4
  %inc606 = add nsw i32 %523, 1
  store i32 %inc606, i32* %i, align 4
  br label %for.cond.586

for.end.607:                                      ; preds = %for.cond.586
  %524 = load i32, i32* %i, align 4
  %and608 = and i32 %524, 3
  %cmp609 = icmp ne i32 %and608, 0
  br i1 %cmp609, label %if.then.611, label %if.end.614

if.then.611:                                      ; preds = %for.end.607
  %525 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call612 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %525, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0))
  %526 = load i32, i32* %lineno, align 4
  %inc613 = add nsw i32 %526, 1
  store i32 %inc613, i32* %lineno, align 4
  br label %if.end.614

if.end.614:                                       ; preds = %if.then.611, %for.end.607
  %527 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name615 = getelementptr inbounds %struct.lemon, %struct.lemon* %527, i32 0, i32 10
  %528 = load i8*, i8** %name615, align 8
  %529 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %530 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %528, %struct._IO_FILE* %529, %struct._IO_FILE* %530, i32* %lineno)
  store i32 0, i32* %i, align 4
  %531 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule = getelementptr inbounds %struct.lemon, %struct.lemon* %531, i32 0, i32 1
  %532 = load %struct.rule*, %struct.rule** %rule, align 8
  store %struct.rule* %532, %struct.rule** %rp, align 8
  br label %for.cond.616

for.cond.616:                                     ; preds = %for.inc.622, %if.end.614
  %533 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool617 = icmp ne %struct.rule* %533, null
  br i1 %tobool617, label %for.body.618, label %for.end.625

for.body.618:                                     ; preds = %for.cond.616
  %534 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %535 = load i32, i32* %i, align 4
  %call619 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %534, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.152, i32 0, i32 0), i32 %535)
  %536 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %537 = load %struct.rule*, %struct.rule** %rp, align 8
  call void @writeRuleText(%struct._IO_FILE* %536, %struct.rule* %537)
  %538 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call620 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %538, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.153, i32 0, i32 0))
  %539 = load i32, i32* %lineno, align 4
  %inc621 = add nsw i32 %539, 1
  store i32 %inc621, i32* %lineno, align 4
  br label %for.inc.622

for.inc.622:                                      ; preds = %for.body.618
  %540 = load %struct.rule*, %struct.rule** %rp, align 8
  %next623 = getelementptr inbounds %struct.rule, %struct.rule* %540, i32 0, i32 13
  %541 = load %struct.rule*, %struct.rule** %next623, align 8
  store %struct.rule* %541, %struct.rule** %rp, align 8
  %542 = load i32, i32* %i, align 4
  %inc624 = add nsw i32 %542, 1
  store i32 %inc624, i32* %i, align 4
  br label %for.cond.616

for.end.625:                                      ; preds = %for.cond.616
  %543 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name626 = getelementptr inbounds %struct.lemon, %struct.lemon* %543, i32 0, i32 10
  %544 = load i8*, i8** %name626, align 8
  %545 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %546 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %544, %struct._IO_FILE* %545, %struct._IO_FILE* %546, i32* %lineno)
  %547 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokendest = getelementptr inbounds %struct.lemon, %struct.lemon* %547, i32 0, i32 28
  %548 = load i8*, i8** %tokendest, align 8
  %tobool627 = icmp ne i8* %548, null
  br i1 %tobool627, label %if.then.628, label %if.end.678

if.then.628:                                      ; preds = %for.end.625
  store i32 0, i32* %i, align 4
  br label %for.cond.629

for.cond.629:                                     ; preds = %for.inc.649, %if.then.628
  %549 = load i32, i32* %i, align 4
  %550 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol630 = getelementptr inbounds %struct.lemon, %struct.lemon* %550, i32 0, i32 4
  %551 = load i32, i32* %nsymbol630, align 4
  %cmp631 = icmp slt i32 %549, %551
  br i1 %cmp631, label %for.body.633, label %for.end.651

for.body.633:                                     ; preds = %for.cond.629
  %552 = load i32, i32* %i, align 4
  %idxprom635 = sext i32 %552 to i64
  %553 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols636 = getelementptr inbounds %struct.lemon, %struct.lemon* %553, i32 0, i32 6
  %554 = load %struct.symbol**, %struct.symbol*** %symbols636, align 8
  %arrayidx637 = getelementptr inbounds %struct.symbol*, %struct.symbol** %554, i64 %idxprom635
  %555 = load %struct.symbol*, %struct.symbol** %arrayidx637, align 8
  store %struct.symbol* %555, %struct.symbol** %sp634, align 8
  %556 = load %struct.symbol*, %struct.symbol** %sp634, align 8
  %cmp638 = icmp eq %struct.symbol* %556, null
  br i1 %cmp638, label %if.then.643, label %lor.lhs.false.640

lor.lhs.false.640:                                ; preds = %for.body.633
  %557 = load %struct.symbol*, %struct.symbol** %sp634, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %557, i32 0, i32 2
  %558 = load i32, i32* %type, align 4
  %cmp641 = icmp ne i32 %558, 0
  br i1 %cmp641, label %if.then.643, label %if.end.644

if.then.643:                                      ; preds = %lor.lhs.false.640, %for.body.633
  br label %for.inc.649

if.end.644:                                       ; preds = %lor.lhs.false.640
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %560 = load %struct.symbol*, %struct.symbol** %sp634, align 8
  %index645 = getelementptr inbounds %struct.symbol, %struct.symbol* %560, i32 0, i32 1
  %561 = load i32, i32* %index645, align 4
  %562 = load %struct.symbol*, %struct.symbol** %sp634, align 8
  %name646 = getelementptr inbounds %struct.symbol, %struct.symbol* %562, i32 0, i32 0
  %563 = load i8*, i8** %name646, align 8
  %call647 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %559, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i32 0, i32 0), i32 %561, i8* %563)
  %564 = load i32, i32* %lineno, align 4
  %inc648 = add nsw i32 %564, 1
  store i32 %inc648, i32* %lineno, align 4
  br label %for.inc.649

for.inc.649:                                      ; preds = %if.end.644, %if.then.643
  %565 = load i32, i32* %i, align 4
  %inc650 = add nsw i32 %565, 1
  store i32 %inc650, i32* %i, align 4
  br label %for.cond.629

for.end.651:                                      ; preds = %for.cond.629
  store i32 0, i32* %i, align 4
  br label %for.cond.652

for.cond.652:                                     ; preds = %for.inc.665, %for.end.651
  %566 = load i32, i32* %i, align 4
  %567 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol653 = getelementptr inbounds %struct.lemon, %struct.lemon* %567, i32 0, i32 4
  %568 = load i32, i32* %nsymbol653, align 4
  %cmp654 = icmp slt i32 %566, %568
  br i1 %cmp654, label %land.rhs.656, label %land.end.663

land.rhs.656:                                     ; preds = %for.cond.652
  %569 = load i32, i32* %i, align 4
  %idxprom657 = sext i32 %569 to i64
  %570 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols658 = getelementptr inbounds %struct.lemon, %struct.lemon* %570, i32 0, i32 6
  %571 = load %struct.symbol**, %struct.symbol*** %symbols658, align 8
  %arrayidx659 = getelementptr inbounds %struct.symbol*, %struct.symbol** %571, i64 %idxprom657
  %572 = load %struct.symbol*, %struct.symbol** %arrayidx659, align 8
  %type660 = getelementptr inbounds %struct.symbol, %struct.symbol* %572, i32 0, i32 2
  %573 = load i32, i32* %type660, align 4
  %cmp661 = icmp ne i32 %573, 0
  br label %land.end.663

land.end.663:                                     ; preds = %land.rhs.656, %for.cond.652
  %574 = phi i1 [ false, %for.cond.652 ], [ %cmp661, %land.rhs.656 ]
  br i1 %574, label %for.body.664, label %for.end.667

for.body.664:                                     ; preds = %land.end.663
  br label %for.inc.665

for.inc.665:                                      ; preds = %for.body.664
  %575 = load i32, i32* %i, align 4
  %inc666 = add nsw i32 %575, 1
  store i32 %inc666, i32* %i, align 4
  br label %for.cond.652

for.end.667:                                      ; preds = %land.end.663
  %576 = load i32, i32* %i, align 4
  %577 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol668 = getelementptr inbounds %struct.lemon, %struct.lemon* %577, i32 0, i32 4
  %578 = load i32, i32* %nsymbol668, align 4
  %cmp669 = icmp slt i32 %576, %578
  br i1 %cmp669, label %if.then.671, label %if.end.677

if.then.671:                                      ; preds = %for.end.667
  %579 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %580 = load i32, i32* %i, align 4
  %idxprom672 = sext i32 %580 to i64
  %581 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols673 = getelementptr inbounds %struct.lemon, %struct.lemon* %581, i32 0, i32 6
  %582 = load %struct.symbol**, %struct.symbol*** %symbols673, align 8
  %arrayidx674 = getelementptr inbounds %struct.symbol*, %struct.symbol** %582, i64 %idxprom672
  %583 = load %struct.symbol*, %struct.symbol** %arrayidx674, align 8
  %584 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  call void @emit_destructor_code(%struct._IO_FILE* %579, %struct.symbol* %583, %struct.lemon* %584, i32* %lineno)
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call675 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %585, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0))
  %586 = load i32, i32* %lineno, align 4
  %inc676 = add nsw i32 %586, 1
  store i32 %inc676, i32* %lineno, align 4
  br label %if.end.677

if.end.677:                                       ; preds = %if.then.671, %for.end.667
  br label %if.end.678

if.end.678:                                       ; preds = %if.end.677, %for.end.625
  %587 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %vardest = getelementptr inbounds %struct.lemon, %struct.lemon* %587, i32 0, i32 30
  %588 = load i8*, i8** %vardest, align 8
  %tobool679 = icmp ne i8* %588, null
  br i1 %tobool679, label %if.then.680, label %if.end.718

if.then.680:                                      ; preds = %if.end.678
  store %struct.symbol* null, %struct.symbol** %dflt_sp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.681

for.cond.681:                                     ; preds = %for.inc.709, %if.then.680
  %589 = load i32, i32* %i, align 4
  %590 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol682 = getelementptr inbounds %struct.lemon, %struct.lemon* %590, i32 0, i32 4
  %591 = load i32, i32* %nsymbol682, align 4
  %cmp683 = icmp slt i32 %589, %591
  br i1 %cmp683, label %for.body.685, label %for.end.711

for.body.685:                                     ; preds = %for.cond.681
  %592 = load i32, i32* %i, align 4
  %idxprom687 = sext i32 %592 to i64
  %593 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols688 = getelementptr inbounds %struct.lemon, %struct.lemon* %593, i32 0, i32 6
  %594 = load %struct.symbol**, %struct.symbol*** %symbols688, align 8
  %arrayidx689 = getelementptr inbounds %struct.symbol*, %struct.symbol** %594, i64 %idxprom687
  %595 = load %struct.symbol*, %struct.symbol** %arrayidx689, align 8
  store %struct.symbol* %595, %struct.symbol** %sp686, align 8
  %596 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %cmp690 = icmp eq %struct.symbol* %596, null
  br i1 %cmp690, label %if.then.703, label %lor.lhs.false.692

lor.lhs.false.692:                                ; preds = %for.body.685
  %597 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %type693 = getelementptr inbounds %struct.symbol, %struct.symbol* %597, i32 0, i32 2
  %598 = load i32, i32* %type693, align 4
  %cmp694 = icmp eq i32 %598, 0
  br i1 %cmp694, label %if.then.703, label %lor.lhs.false.696

lor.lhs.false.696:                                ; preds = %lor.lhs.false.692
  %599 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %index697 = getelementptr inbounds %struct.symbol, %struct.symbol* %599, i32 0, i32 1
  %600 = load i32, i32* %index697, align 4
  %cmp698 = icmp sle i32 %600, 0
  br i1 %cmp698, label %if.then.703, label %lor.lhs.false.700

lor.lhs.false.700:                                ; preds = %lor.lhs.false.696
  %601 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %destructor = getelementptr inbounds %struct.symbol, %struct.symbol* %601, i32 0, i32 10
  %602 = load i8*, i8** %destructor, align 8
  %cmp701 = icmp ne i8* %602, null
  br i1 %cmp701, label %if.then.703, label %if.end.704

if.then.703:                                      ; preds = %lor.lhs.false.700, %lor.lhs.false.696, %lor.lhs.false.692, %for.body.685
  br label %for.inc.709

if.end.704:                                       ; preds = %lor.lhs.false.700
  %603 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %604 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %index705 = getelementptr inbounds %struct.symbol, %struct.symbol* %604, i32 0, i32 1
  %605 = load i32, i32* %index705, align 4
  %606 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  %name706 = getelementptr inbounds %struct.symbol, %struct.symbol* %606, i32 0, i32 0
  %607 = load i8*, i8** %name706, align 8
  %call707 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %603, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i32 0, i32 0), i32 %605, i8* %607)
  %608 = load i32, i32* %lineno, align 4
  %inc708 = add nsw i32 %608, 1
  store i32 %inc708, i32* %lineno, align 4
  %609 = load %struct.symbol*, %struct.symbol** %sp686, align 8
  store %struct.symbol* %609, %struct.symbol** %dflt_sp, align 8
  br label %for.inc.709

for.inc.709:                                      ; preds = %if.end.704, %if.then.703
  %610 = load i32, i32* %i, align 4
  %inc710 = add nsw i32 %610, 1
  store i32 %inc710, i32* %i, align 4
  br label %for.cond.681

for.end.711:                                      ; preds = %for.cond.681
  %611 = load %struct.symbol*, %struct.symbol** %dflt_sp, align 8
  %cmp712 = icmp ne %struct.symbol* %611, null
  br i1 %cmp712, label %if.then.714, label %if.end.717

if.then.714:                                      ; preds = %for.end.711
  %612 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %613 = load %struct.symbol*, %struct.symbol** %dflt_sp, align 8
  %614 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  call void @emit_destructor_code(%struct._IO_FILE* %612, %struct.symbol* %613, %struct.lemon* %614, i32* %lineno)
  %615 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call715 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %615, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0))
  %616 = load i32, i32* %lineno, align 4
  %inc716 = add nsw i32 %616, 1
  store i32 %inc716, i32* %lineno, align 4
  br label %if.end.717

if.end.717:                                       ; preds = %if.then.714, %for.end.711
  br label %if.end.718

if.end.718:                                       ; preds = %if.end.717, %if.end.678
  store i32 0, i32* %i, align 4
  br label %for.cond.719

for.cond.719:                                     ; preds = %for.inc.787, %if.end.718
  %617 = load i32, i32* %i, align 4
  %618 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol720 = getelementptr inbounds %struct.lemon, %struct.lemon* %618, i32 0, i32 4
  %619 = load i32, i32* %nsymbol720, align 4
  %cmp721 = icmp slt i32 %617, %619
  br i1 %cmp721, label %for.body.723, label %for.end.789

for.body.723:                                     ; preds = %for.cond.719
  %620 = load i32, i32* %i, align 4
  %idxprom725 = sext i32 %620 to i64
  %621 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols726 = getelementptr inbounds %struct.lemon, %struct.lemon* %621, i32 0, i32 6
  %622 = load %struct.symbol**, %struct.symbol*** %symbols726, align 8
  %arrayidx727 = getelementptr inbounds %struct.symbol*, %struct.symbol** %622, i64 %idxprom725
  %623 = load %struct.symbol*, %struct.symbol** %arrayidx727, align 8
  store %struct.symbol* %623, %struct.symbol** %sp724, align 8
  %624 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %cmp728 = icmp eq %struct.symbol* %624, null
  br i1 %cmp728, label %if.then.738, label %lor.lhs.false.730

lor.lhs.false.730:                                ; preds = %for.body.723
  %625 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %type731 = getelementptr inbounds %struct.symbol, %struct.symbol* %625, i32 0, i32 2
  %626 = load i32, i32* %type731, align 4
  %cmp732 = icmp eq i32 %626, 0
  br i1 %cmp732, label %if.then.738, label %lor.lhs.false.734

lor.lhs.false.734:                                ; preds = %lor.lhs.false.730
  %627 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %destructor735 = getelementptr inbounds %struct.symbol, %struct.symbol* %627, i32 0, i32 10
  %628 = load i8*, i8** %destructor735, align 8
  %cmp736 = icmp eq i8* %628, null
  br i1 %cmp736, label %if.then.738, label %if.end.739

if.then.738:                                      ; preds = %lor.lhs.false.734, %lor.lhs.false.730, %for.body.723
  br label %for.inc.787

if.end.739:                                       ; preds = %lor.lhs.false.734
  %629 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %630 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %index740 = getelementptr inbounds %struct.symbol, %struct.symbol* %630, i32 0, i32 1
  %631 = load i32, i32* %index740, align 4
  %632 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %name741 = getelementptr inbounds %struct.symbol, %struct.symbol* %632, i32 0, i32 0
  %633 = load i8*, i8** %name741, align 8
  %call742 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %629, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i32 0, i32 0), i32 %631, i8* %633)
  %634 = load i32, i32* %lineno, align 4
  %inc743 = add nsw i32 %634, 1
  store i32 %inc743, i32* %lineno, align 4
  %635 = load i32, i32* %i, align 4
  %add744 = add nsw i32 %635, 1
  store i32 %add744, i32* %j, align 4
  br label %for.cond.745

for.cond.745:                                     ; preds = %for.inc.779, %if.end.739
  %636 = load i32, i32* %j, align 4
  %637 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol746 = getelementptr inbounds %struct.lemon, %struct.lemon* %637, i32 0, i32 4
  %638 = load i32, i32* %nsymbol746, align 4
  %cmp747 = icmp slt i32 %636, %638
  br i1 %cmp747, label %for.body.749, label %for.end.781

for.body.749:                                     ; preds = %for.cond.745
  %639 = load i32, i32* %j, align 4
  %idxprom750 = sext i32 %639 to i64
  %640 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols751 = getelementptr inbounds %struct.lemon, %struct.lemon* %640, i32 0, i32 6
  %641 = load %struct.symbol**, %struct.symbol*** %symbols751, align 8
  %arrayidx752 = getelementptr inbounds %struct.symbol*, %struct.symbol** %641, i64 %idxprom750
  %642 = load %struct.symbol*, %struct.symbol** %arrayidx752, align 8
  store %struct.symbol* %642, %struct.symbol** %sp2, align 8
  %643 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %tobool753 = icmp ne %struct.symbol* %643, null
  br i1 %tobool753, label %land.lhs.true.754, label %if.end.778

land.lhs.true.754:                                ; preds = %for.body.749
  %644 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %type755 = getelementptr inbounds %struct.symbol, %struct.symbol* %644, i32 0, i32 2
  %645 = load i32, i32* %type755, align 4
  %cmp756 = icmp ne i32 %645, 0
  br i1 %cmp756, label %land.lhs.true.758, label %if.end.778

land.lhs.true.758:                                ; preds = %land.lhs.true.754
  %646 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %destructor759 = getelementptr inbounds %struct.symbol, %struct.symbol* %646, i32 0, i32 10
  %647 = load i8*, i8** %destructor759, align 8
  %tobool760 = icmp ne i8* %647, null
  br i1 %tobool760, label %land.lhs.true.761, label %if.end.778

land.lhs.true.761:                                ; preds = %land.lhs.true.758
  %648 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %dtnum762 = getelementptr inbounds %struct.symbol, %struct.symbol* %648, i32 0, i32 13
  %649 = load i32, i32* %dtnum762, align 4
  %650 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %dtnum763 = getelementptr inbounds %struct.symbol, %struct.symbol* %650, i32 0, i32 13
  %651 = load i32, i32* %dtnum763, align 4
  %cmp764 = icmp eq i32 %649, %651
  br i1 %cmp764, label %land.lhs.true.766, label %if.end.778

land.lhs.true.766:                                ; preds = %land.lhs.true.761
  %652 = load %struct.symbol*, %struct.symbol** %sp724, align 8
  %destructor767 = getelementptr inbounds %struct.symbol, %struct.symbol* %652, i32 0, i32 10
  %653 = load i8*, i8** %destructor767, align 8
  %654 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %destructor768 = getelementptr inbounds %struct.symbol, %struct.symbol* %654, i32 0, i32 10
  %655 = load i8*, i8** %destructor768, align 8
  %call769 = call i32 @strcmp(i8* %653, i8* %655) #8
  %cmp770 = icmp eq i32 %call769, 0
  br i1 %cmp770, label %if.then.772, label %if.end.778

if.then.772:                                      ; preds = %land.lhs.true.766
  %656 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %657 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %index773 = getelementptr inbounds %struct.symbol, %struct.symbol* %657, i32 0, i32 1
  %658 = load i32, i32* %index773, align 4
  %659 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %name774 = getelementptr inbounds %struct.symbol, %struct.symbol* %659, i32 0, i32 0
  %660 = load i8*, i8** %name774, align 8
  %call775 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %656, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i32 0, i32 0), i32 %658, i8* %660)
  %661 = load i32, i32* %lineno, align 4
  %inc776 = add nsw i32 %661, 1
  store i32 %inc776, i32* %lineno, align 4
  %662 = load %struct.symbol*, %struct.symbol** %sp2, align 8
  %destructor777 = getelementptr inbounds %struct.symbol, %struct.symbol* %662, i32 0, i32 10
  store i8* null, i8** %destructor777, align 8
  br label %if.end.778

if.end.778:                                       ; preds = %if.then.772, %land.lhs.true.766, %land.lhs.true.761, %land.lhs.true.758, %land.lhs.true.754, %for.body.749
  br label %for.inc.779

for.inc.779:                                      ; preds = %if.end.778
  %663 = load i32, i32* %j, align 4
  %inc780 = add nsw i32 %663, 1
  store i32 %inc780, i32* %j, align 4
  br label %for.cond.745

for.end.781:                                      ; preds = %for.cond.745
  %664 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %665 = load i32, i32* %i, align 4
  %idxprom782 = sext i32 %665 to i64
  %666 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols783 = getelementptr inbounds %struct.lemon, %struct.lemon* %666, i32 0, i32 6
  %667 = load %struct.symbol**, %struct.symbol*** %symbols783, align 8
  %arrayidx784 = getelementptr inbounds %struct.symbol*, %struct.symbol** %667, i64 %idxprom782
  %668 = load %struct.symbol*, %struct.symbol** %arrayidx784, align 8
  %669 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  call void @emit_destructor_code(%struct._IO_FILE* %664, %struct.symbol* %668, %struct.lemon* %669, i32* %lineno)
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call785 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %670, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.155, i32 0, i32 0))
  %671 = load i32, i32* %lineno, align 4
  %inc786 = add nsw i32 %671, 1
  store i32 %inc786, i32* %lineno, align 4
  br label %for.inc.787

for.inc.787:                                      ; preds = %for.end.781, %if.then.738
  %672 = load i32, i32* %i, align 4
  %inc788 = add nsw i32 %672, 1
  store i32 %inc788, i32* %i, align 4
  br label %for.cond.719

for.end.789:                                      ; preds = %for.cond.719
  %673 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name790 = getelementptr inbounds %struct.lemon, %struct.lemon* %673, i32 0, i32 10
  %674 = load i8*, i8** %name790, align 8
  %675 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %676 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %674, %struct._IO_FILE* %675, %struct._IO_FILE* %676, i32* %lineno)
  %677 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %678 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %679 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %overflow = getelementptr inbounds %struct.lemon, %struct.lemon* %679, i32 0, i32 20
  %680 = load i8*, i8** %overflow, align 8
  %681 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %overflowln = getelementptr inbounds %struct.lemon, %struct.lemon* %681, i32 0, i32 21
  %682 = load i32, i32* %overflowln, align 4
  call void @tplt_print(%struct._IO_FILE* %677, %struct.lemon* %678, i8* %680, i32 %682, i32* %lineno)
  %683 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name791 = getelementptr inbounds %struct.lemon, %struct.lemon* %683, i32 0, i32 10
  %684 = load i8*, i8** %name791, align 8
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %684, %struct._IO_FILE* %685, %struct._IO_FILE* %686, i32* %lineno)
  %687 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule792 = getelementptr inbounds %struct.lemon, %struct.lemon* %687, i32 0, i32 1
  %688 = load %struct.rule*, %struct.rule** %rule792, align 8
  store %struct.rule* %688, %struct.rule** %rp, align 8
  br label %for.cond.793

for.cond.793:                                     ; preds = %for.inc.799, %for.end.789
  %689 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool794 = icmp ne %struct.rule* %689, null
  br i1 %tobool794, label %for.body.795, label %for.end.801

for.body.795:                                     ; preds = %for.cond.793
  %690 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %691 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %691, i32 0, i32 0
  %692 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %index796 = getelementptr inbounds %struct.symbol, %struct.symbol* %692, i32 0, i32 1
  %693 = load i32, i32* %index796, align 4
  %694 = load %struct.rule*, %struct.rule** %rp, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %694, i32 0, i32 4
  %695 = load i32, i32* %nrhs, align 4
  %call797 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %690, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i32 %693, i32 %695)
  %696 = load i32, i32* %lineno, align 4
  %inc798 = add nsw i32 %696, 1
  store i32 %inc798, i32* %lineno, align 4
  br label %for.inc.799

for.inc.799:                                      ; preds = %for.body.795
  %697 = load %struct.rule*, %struct.rule** %rp, align 8
  %next800 = getelementptr inbounds %struct.rule, %struct.rule* %697, i32 0, i32 13
  %698 = load %struct.rule*, %struct.rule** %next800, align 8
  store %struct.rule* %698, %struct.rule** %rp, align 8
  br label %for.cond.793

for.end.801:                                      ; preds = %for.cond.793
  %699 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name802 = getelementptr inbounds %struct.lemon, %struct.lemon* %699, i32 0, i32 10
  %700 = load i8*, i8** %name802, align 8
  %701 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %702 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %700, %struct._IO_FILE* %701, %struct._IO_FILE* %702, i32* %lineno)
  %703 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule803 = getelementptr inbounds %struct.lemon, %struct.lemon* %703, i32 0, i32 1
  %704 = load %struct.rule*, %struct.rule** %rule803, align 8
  store %struct.rule* %704, %struct.rule** %rp, align 8
  br label %for.cond.804

for.cond.804:                                     ; preds = %for.inc.807, %for.end.801
  %705 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool805 = icmp ne %struct.rule* %705, null
  br i1 %tobool805, label %for.body.806, label %for.end.809

for.body.806:                                     ; preds = %for.cond.804
  %706 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %707 = load %struct.rule*, %struct.rule** %rp, align 8
  call void @translate_code(%struct.lemon* %706, %struct.rule* %707)
  br label %for.inc.807

for.inc.807:                                      ; preds = %for.body.806
  %708 = load %struct.rule*, %struct.rule** %rp, align 8
  %next808 = getelementptr inbounds %struct.rule, %struct.rule* %708, i32 0, i32 13
  %709 = load %struct.rule*, %struct.rule** %next808, align 8
  store %struct.rule* %709, %struct.rule** %rp, align 8
  br label %for.cond.804

for.end.809:                                      ; preds = %for.cond.804
  %710 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %rule810 = getelementptr inbounds %struct.lemon, %struct.lemon* %710, i32 0, i32 1
  %711 = load %struct.rule*, %struct.rule** %rule810, align 8
  store %struct.rule* %711, %struct.rule** %rp, align 8
  br label %for.cond.811

for.cond.811:                                     ; preds = %for.inc.842, %for.end.809
  %712 = load %struct.rule*, %struct.rule** %rp, align 8
  %tobool812 = icmp ne %struct.rule* %712, null
  br i1 %tobool812, label %for.body.813, label %for.end.844

for.body.813:                                     ; preds = %for.cond.811
  %713 = load %struct.rule*, %struct.rule** %rp, align 8
  %code = getelementptr inbounds %struct.rule, %struct.rule* %713, i32 0, i32 8
  %714 = load i8*, i8** %code, align 8
  %cmp814 = icmp eq i8* %714, null
  br i1 %cmp814, label %if.then.816, label %if.end.817

if.then.816:                                      ; preds = %for.body.813
  br label %for.inc.842

if.end.817:                                       ; preds = %for.body.813
  %715 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %716 = load %struct.rule*, %struct.rule** %rp, align 8
  %index818 = getelementptr inbounds %struct.rule, %struct.rule* %716, i32 0, i32 10
  %717 = load i32, i32* %index818, align 4
  %call819 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %715, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i32 0, i32 0), i32 %717)
  %718 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %719 = load %struct.rule*, %struct.rule** %rp, align 8
  call void @writeRuleText(%struct._IO_FILE* %718, %struct.rule* %719)
  %720 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call820 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %720, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0))
  %721 = load i32, i32* %lineno, align 4
  %inc821 = add nsw i32 %721, 1
  store i32 %inc821, i32* %lineno, align 4
  %722 = load %struct.rule*, %struct.rule** %rp, align 8
  %next822 = getelementptr inbounds %struct.rule, %struct.rule* %722, i32 0, i32 13
  %723 = load %struct.rule*, %struct.rule** %next822, align 8
  store %struct.rule* %723, %struct.rule** %rp2, align 8
  br label %for.cond.823

for.cond.823:                                     ; preds = %for.inc.837, %if.end.817
  %724 = load %struct.rule*, %struct.rule** %rp2, align 8
  %tobool824 = icmp ne %struct.rule* %724, null
  br i1 %tobool824, label %for.body.825, label %for.end.839

for.body.825:                                     ; preds = %for.cond.823
  %725 = load %struct.rule*, %struct.rule** %rp2, align 8
  %code826 = getelementptr inbounds %struct.rule, %struct.rule* %725, i32 0, i32 8
  %726 = load i8*, i8** %code826, align 8
  %727 = load %struct.rule*, %struct.rule** %rp, align 8
  %code827 = getelementptr inbounds %struct.rule, %struct.rule* %727, i32 0, i32 8
  %728 = load i8*, i8** %code827, align 8
  %cmp828 = icmp eq i8* %726, %728
  br i1 %cmp828, label %if.then.830, label %if.end.836

if.then.830:                                      ; preds = %for.body.825
  %729 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %730 = load %struct.rule*, %struct.rule** %rp2, align 8
  %index831 = getelementptr inbounds %struct.rule, %struct.rule* %730, i32 0, i32 10
  %731 = load i32, i32* %index831, align 4
  %call832 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %729, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i32 0, i32 0), i32 %731)
  %732 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %733 = load %struct.rule*, %struct.rule** %rp2, align 8
  call void @writeRuleText(%struct._IO_FILE* %732, %struct.rule* %733)
  %734 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call833 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %734, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.158, i32 0, i32 0))
  %735 = load i32, i32* %lineno, align 4
  %inc834 = add nsw i32 %735, 1
  store i32 %inc834, i32* %lineno, align 4
  %736 = load %struct.rule*, %struct.rule** %rp2, align 8
  %code835 = getelementptr inbounds %struct.rule, %struct.rule* %736, i32 0, i32 8
  store i8* null, i8** %code835, align 8
  br label %if.end.836

if.end.836:                                       ; preds = %if.then.830, %for.body.825
  br label %for.inc.837

for.inc.837:                                      ; preds = %if.end.836
  %737 = load %struct.rule*, %struct.rule** %rp2, align 8
  %next838 = getelementptr inbounds %struct.rule, %struct.rule* %737, i32 0, i32 13
  %738 = load %struct.rule*, %struct.rule** %next838, align 8
  store %struct.rule* %738, %struct.rule** %rp2, align 8
  br label %for.cond.823

for.end.839:                                      ; preds = %for.cond.823
  %739 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %740 = load %struct.rule*, %struct.rule** %rp, align 8
  %741 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  call void @emit_code(%struct._IO_FILE* %739, %struct.rule* %740, %struct.lemon* %741, i32* %lineno)
  %742 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %call840 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %742, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0))
  %743 = load i32, i32* %lineno, align 4
  %inc841 = add nsw i32 %743, 1
  store i32 %inc841, i32* %lineno, align 4
  br label %for.inc.842

for.inc.842:                                      ; preds = %for.end.839, %if.then.816
  %744 = load %struct.rule*, %struct.rule** %rp, align 8
  %next843 = getelementptr inbounds %struct.rule, %struct.rule* %744, i32 0, i32 13
  %745 = load %struct.rule*, %struct.rule** %next843, align 8
  store %struct.rule* %745, %struct.rule** %rp, align 8
  br label %for.cond.811

for.end.844:                                      ; preds = %for.cond.811
  %746 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name845 = getelementptr inbounds %struct.lemon, %struct.lemon* %746, i32 0, i32 10
  %747 = load i8*, i8** %name845, align 8
  %748 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %749 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %747, %struct._IO_FILE* %748, %struct._IO_FILE* %749, i32* %lineno)
  %750 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %751 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %752 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %failure = getelementptr inbounds %struct.lemon, %struct.lemon* %752, i32 0, i32 22
  %753 = load i8*, i8** %failure, align 8
  %754 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %failureln = getelementptr inbounds %struct.lemon, %struct.lemon* %754, i32 0, i32 23
  %755 = load i32, i32* %failureln, align 4
  call void @tplt_print(%struct._IO_FILE* %750, %struct.lemon* %751, i8* %753, i32 %755, i32* %lineno)
  %756 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name846 = getelementptr inbounds %struct.lemon, %struct.lemon* %756, i32 0, i32 10
  %757 = load i8*, i8** %name846, align 8
  %758 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %759 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %757, %struct._IO_FILE* %758, %struct._IO_FILE* %759, i32* %lineno)
  %760 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %761 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %762 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %error = getelementptr inbounds %struct.lemon, %struct.lemon* %762, i32 0, i32 18
  %763 = load i8*, i8** %error, align 8
  %764 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %errorln = getelementptr inbounds %struct.lemon, %struct.lemon* %764, i32 0, i32 19
  %765 = load i32, i32* %errorln, align 4
  call void @tplt_print(%struct._IO_FILE* %760, %struct.lemon* %761, i8* %763, i32 %765, i32* %lineno)
  %766 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name847 = getelementptr inbounds %struct.lemon, %struct.lemon* %766, i32 0, i32 10
  %767 = load i8*, i8** %name847, align 8
  %768 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %769 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %767, %struct._IO_FILE* %768, %struct._IO_FILE* %769, i32* %lineno)
  %770 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %771 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %772 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %accept = getelementptr inbounds %struct.lemon, %struct.lemon* %772, i32 0, i32 24
  %773 = load i8*, i8** %accept, align 8
  %774 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %acceptln = getelementptr inbounds %struct.lemon, %struct.lemon* %774, i32 0, i32 25
  %775 = load i32, i32* %acceptln, align 4
  call void @tplt_print(%struct._IO_FILE* %770, %struct.lemon* %771, i8* %773, i32 %775, i32* %lineno)
  %776 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %name848 = getelementptr inbounds %struct.lemon, %struct.lemon* %776, i32 0, i32 10
  %777 = load i8*, i8** %name848, align 8
  %778 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %779 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  call void @tplt_xfer(i8* %777, %struct._IO_FILE* %778, %struct._IO_FILE* %779, i32* %lineno)
  %780 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %781 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %782 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %extracode = getelementptr inbounds %struct.lemon, %struct.lemon* %782, i32 0, i32 26
  %783 = load i8*, i8** %extracode, align 8
  %784 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %extracodeln = getelementptr inbounds %struct.lemon, %struct.lemon* %784, i32 0, i32 27
  %785 = load i32, i32* %extracodeln, align 4
  call void @tplt_print(%struct._IO_FILE* %780, %struct.lemon* %781, i8* %783, i32 %785, i32* %lineno)
  %786 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call849 = call i32 @fclose(%struct._IO_FILE* %786)
  br label %return

return:                                           ; preds = %for.end.844, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @minimum_size_type(i32 %lwr, i32 %upr) #0 {
entry:
  %retval = alloca i8*, align 8
  %lwr.addr = alloca i32, align 4
  %upr.addr = alloca i32, align 4
  store i32 %lwr, i32* %lwr.addr, align 4
  store i32 %upr, i32* %upr.addr, align 4
  %0 = load i32, i32* %lwr.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %upr.addr, align 4
  %cmp1 = icmp sle i32 %1, 255
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.226, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %2 = load i32, i32* %upr.addr, align 4
  %cmp3 = icmp slt i32 %2, 65535
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.227, i32 0, i32 0), i8** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.228, i32 0, i32 0), i8** %retval
  br label %return

if.else.6:                                        ; preds = %entry
  %3 = load i32, i32* %lwr.addr, align 4
  %cmp7 = icmp sge i32 %3, -127
  br i1 %cmp7, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.else.6
  %4 = load i32, i32* %upr.addr, align 4
  %cmp8 = icmp sle i32 %4, 127
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %land.lhs.true
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.229, i32 0, i32 0), i8** %retval
  br label %return

if.else.10:                                       ; preds = %land.lhs.true, %if.else.6
  %5 = load i32, i32* %lwr.addr, align 4
  %cmp11 = icmp sge i32 %5, -32767
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.15

land.lhs.true.12:                                 ; preds = %if.else.10
  %6 = load i32, i32* %upr.addr, align 4
  %cmp13 = icmp slt i32 %6, 32767
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.230, i32 0, i32 0), i8** %retval
  br label %return

if.else.15:                                       ; preds = %land.lhs.true.12, %if.else.10
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.231, i32 0, i32 0), i8** %retval
  br label %return

return:                                           ; preds = %if.else.15, %if.then.14, %if.then.9, %if.else.5, %if.then.4, %if.then.2
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal i32 @axset_compare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %p1 = alloca %struct.axset*, align 8
  %p2 = alloca %struct.axset*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.axset*
  store %struct.axset* %1, %struct.axset** %p1, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.axset*
  store %struct.axset* %3, %struct.axset** %p2, align 8
  %4 = load %struct.axset*, %struct.axset** %p1, align 8
  %nAction = getelementptr inbounds %struct.axset, %struct.axset* %4, i32 0, i32 2
  %5 = load i32, i32* %nAction, align 4
  %6 = load %struct.axset*, %struct.axset** %p2, align 8
  %nAction1 = getelementptr inbounds %struct.axset, %struct.axset* %6, i32 0, i32 2
  %7 = load i32, i32* %nAction1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.axset*, %struct.axset** %p1, align 8
  %nAction2 = getelementptr inbounds %struct.axset, %struct.axset* %8, i32 0, i32 2
  %9 = load i32, i32* %nAction2, align 4
  %10 = load %struct.axset*, %struct.axset** %p2, align 8
  %nAction3 = getelementptr inbounds %struct.axset, %struct.axset* %10, i32 0, i32 2
  %11 = load i32, i32* %nAction3, align 4
  %cmp4 = icmp sgt i32 %9, %11
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %12 = load %struct.axset*, %struct.axset** %p1, align 8
  %isTkn = getelementptr inbounds %struct.axset, %struct.axset* %12, i32 0, i32 1
  %13 = load i32, i32* %isTkn, align 4
  %14 = load %struct.axset*, %struct.axset** %p2, align 8
  %isTkn7 = getelementptr inbounds %struct.axset, %struct.axset* %14, i32 0, i32 1
  %15 = load i32, i32* %isTkn7, align 4
  %cmp8 = icmp slt i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %16 = load %struct.axset*, %struct.axset** %p1, align 8
  %isTkn11 = getelementptr inbounds %struct.axset, %struct.axset* %16, i32 0, i32 1
  %17 = load i32, i32* %isTkn11, align 4
  %18 = load %struct.axset*, %struct.axset** %p2, align 8
  %isTkn12 = getelementptr inbounds %struct.axset, %struct.axset* %18, i32 0, i32 1
  %19 = load i32, i32* %isTkn12, align 4
  %cmp13 = icmp sgt i32 %17, %19
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %20 = load %struct.axset*, %struct.axset** %p1, align 8
  %stp = getelementptr inbounds %struct.axset, %struct.axset* %20, i32 0, i32 0
  %21 = load %struct.state*, %struct.state** %stp, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %21, i32 0, i32 2
  %22 = load i32, i32* %statenum, align 4
  %23 = load %struct.axset*, %struct.axset** %p2, align 8
  %stp16 = getelementptr inbounds %struct.axset, %struct.axset* %23, i32 0, i32 0
  %24 = load %struct.state*, %struct.state** %stp16, align 8
  %statenum17 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 2
  %25 = load i32, i32* %statenum17, align 4
  %cmp18 = icmp slt i32 %22, %25
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %26 = load %struct.axset*, %struct.axset** %p1, align 8
  %stp21 = getelementptr inbounds %struct.axset, %struct.axset* %26, i32 0, i32 0
  %27 = load %struct.state*, %struct.state** %stp21, align 8
  %statenum22 = getelementptr inbounds %struct.state, %struct.state* %27, i32 0, i32 2
  %28 = load i32, i32* %statenum22, align 4
  %29 = load %struct.axset*, %struct.axset** %p2, align 8
  %stp23 = getelementptr inbounds %struct.axset, %struct.axset* %29, i32 0, i32 0
  %30 = load %struct.state*, %struct.state** %stp23, align 8
  %statenum24 = getelementptr inbounds %struct.state, %struct.state* %30, i32 0, i32 2
  %31 = load i32, i32* %statenum24, align 4
  %cmp25 = icmp sgt i32 %28, %31
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.20
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.19, %if.then.14, %if.then.9, %if.then.5, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @writeRuleText(%struct._IO_FILE* %out, %struct.rule* %rp) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  %rp.addr = alloca %struct.rule*, align 8
  %j = alloca i32, align 4
  %sp = alloca %struct.symbol*, align 8
  %k = alloca i32, align 4
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  store %struct.rule* %rp, %struct.rule** %rp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 0
  %2 = load %struct.symbol*, %struct.symbol** %lhs, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* %3)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %nrhs = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 4
  %6 = load i32, i32* %nrhs, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %j, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.rule*, %struct.rule** %rp.addr, align 8
  %rhs = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 5
  %9 = load %struct.symbol**, %struct.symbol*** %rhs, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %9, i64 %idxprom
  %10 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  store %struct.symbol* %10, %struct.symbol** %sp, align 8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %12 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name1 = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 0
  %13 = load i8*, i8** %name1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i8* %13)
  %14 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 2
  %15 = load i32, i32* %type, align 4
  %cmp3 = icmp eq i32 %15, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %16 = load i32, i32* %k, align 4
  %17 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %nsubsym = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 14
  %18 = load i32, i32* %nsubsym, align 4
  %cmp5 = icmp slt i32 %16, %18
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %20 = load i32, i32* %k, align 4
  %idxprom7 = sext i32 %20 to i64
  %21 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %subsym = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 15
  %22 = load %struct.symbol**, %struct.symbol*** %subsym, align 8
  %arrayidx8 = getelementptr inbounds %struct.symbol*, %struct.symbol** %22, i64 %idxprom7
  %23 = load %struct.symbol*, %struct.symbol** %arrayidx8, align 8
  %name9 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 0
  %24 = load i8*, i8** %name9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %25 = load i32, i32* %k, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %26 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %26, 1
  store i32 %inc12, i32* %j, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ReportHeader(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %out = alloca %struct._IO_FILE*, align 8
  %in = alloca %struct._IO_FILE*, align 8
  %prefix = alloca i8*, align 8
  %line = alloca [1000 x i8], align 16
  %pattern = alloca [1000 x i8], align 16
  %i = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  %0 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokenprefix = getelementptr inbounds %struct.lemon, %struct.lemon* %0, i32 0, i32 34
  %1 = load i8*, i8** %tokenprefix, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %tokenprefix1 = getelementptr inbounds %struct.lemon, %struct.lemon* %2, i32 0, i32 34
  %3 = load i8*, i8** %tokenprefix1, align 8
  store i8* %3, i8** %prefix, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.39, i32 0, i32 0), i8** %prefix, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call = call %struct._IO_FILE* @file_open(%struct.lemon* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %in, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %7, i32 0, i32 5
  %8 = load i32, i32* %nterminal, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call4 = call i8* @fgets(i8* %arraydecay, i32 1000, %struct._IO_FILE* %9)
  %tobool5 = icmp ne i8* %call4, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %10 = phi i1 [ false, %for.cond ], [ %tobool5, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %arraydecay6 = getelementptr inbounds [1000 x i8], [1000 x i8]* %pattern, i32 0, i32 0
  %11 = load i8*, i8** %prefix, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols = getelementptr inbounds %struct.lemon, %struct.lemon* %13, i32 0, i32 6
  %14 = load %struct.symbol**, %struct.symbol*** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.symbol*, %struct.symbol** %14, i64 %idxprom
  %15 = load %struct.symbol*, %struct.symbol** %arrayidx, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %17 = load i32, i32* %i, align 4
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), i8* %11, i8* %16, i32 %17) #4
  %arraydecay8 = getelementptr inbounds [1000 x i8], [1000 x i8]* %line, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [1000 x i8], [1000 x i8]* %pattern, i32 0, i32 0
  %call10 = call i32 @strcmp(i8* %arraydecay8, i8* %arraydecay9) #8
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %for.end

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.12, %land.end
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %in, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %19)
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal15 = getelementptr inbounds %struct.lemon, %struct.lemon* %21, i32 0, i32 5
  %22 = load i32, i32* %nterminal15, align 4
  %cmp16 = icmp eq i32 %20, %22
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  br label %return

if.end.18:                                        ; preds = %for.end
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end
  %23 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %call20 = call %struct._IO_FILE* @file_open(%struct.lemon* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0))
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %out, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %24, null
  br i1 %tobool21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %if.end.19
  store i32 1, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.32, %if.then.22
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal24 = getelementptr inbounds %struct.lemon, %struct.lemon* %26, i32 0, i32 5
  %27 = load i32, i32* %nterminal24, align 4
  %cmp25 = icmp slt i32 %25, %27
  br i1 %cmp25, label %for.body.26, label %for.end.34

for.body.26:                                      ; preds = %for.cond.23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %out, align 8
  %29 = load i8*, i8** %prefix, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %symbols28 = getelementptr inbounds %struct.lemon, %struct.lemon* %31, i32 0, i32 6
  %32 = load %struct.symbol**, %struct.symbol*** %symbols28, align 8
  %arrayidx29 = getelementptr inbounds %struct.symbol*, %struct.symbol** %32, i64 %idxprom27
  %33 = load %struct.symbol*, %struct.symbol** %arrayidx29, align 8
  %name30 = getelementptr inbounds %struct.symbol, %struct.symbol* %33, i32 0, i32 0
  %34 = load i8*, i8** %name30, align 8
  %35 = load i32, i32* %i, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i32 0, i32 0), i8* %29, i8* %34, i32 %35)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.26
  %36 = load i32, i32* %i, align 4
  %inc33 = add nsw i32 %36, 1
  store i32 %inc33, i32* %i, align 4
  br label %for.cond.23

for.end.34:                                       ; preds = %for.cond.23
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %if.end.19
  br label %return

return:                                           ; preds = %if.end.35, %if.then.17
  ret void
}

; Function Attrs: nounwind uwtable
define void @CompressTables(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %stp = alloca %struct.state*, align 8
  %ap = alloca %struct.action*, align 8
  %ap2 = alloca %struct.action*, align 8
  %rp = alloca %struct.rule*, align 8
  %rp2 = alloca %struct.rule*, align 8
  %rbest = alloca %struct.rule*, align 8
  %nbest = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %usesWildcard = alloca i32, align 4
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.78, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 2
  %2 = load i32, i32* %nstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.80

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 0
  %5 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %5, i64 %idxprom
  %6 = load %struct.state*, %struct.state** %arrayidx, align 8
  store %struct.state* %6, %struct.state** %stp, align 8
  store i32 0, i32* %nbest, align 4
  store %struct.rule* null, %struct.rule** %rbest, align 8
  store i32 0, i32* %usesWildcard, align 4
  %7 = load %struct.state*, %struct.state** %stp, align 8
  %ap1 = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 3
  %8 = load %struct.action*, %struct.action** %ap1, align 8
  store %struct.action* %8, %struct.action** %ap, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.36, %for.body
  %9 = load %struct.action*, %struct.action** %ap, align 8
  %tobool = icmp ne %struct.action* %9, null
  br i1 %tobool, label %for.body.3, label %for.end.38

for.body.3:                                       ; preds = %for.cond.2
  %10 = load %struct.action*, %struct.action** %ap, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %10, i32 0, i32 1
  %11 = load i32, i32* %type, align 4
  %cmp4 = icmp eq i32 %11, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.3
  %12 = load %struct.action*, %struct.action** %ap, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %12, i32 0, i32 0
  %13 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %14 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %wildcard = getelementptr inbounds %struct.lemon, %struct.lemon* %14, i32 0, i32 9
  %15 = load %struct.symbol*, %struct.symbol** %wildcard, align 8
  %cmp5 = icmp eq %struct.symbol* %13, %15
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %usesWildcard, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body.3
  %16 = load %struct.action*, %struct.action** %ap, align 8
  %type6 = getelementptr inbounds %struct.action, %struct.action* %16, i32 0, i32 1
  %17 = load i32, i32* %type6, align 4
  %cmp7 = icmp ne i32 %17, 2
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %for.inc.36

if.end.9:                                         ; preds = %if.end
  %18 = load %struct.action*, %struct.action** %ap, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %18, i32 0, i32 2
  %rp10 = bitcast %union.anon* %x to %struct.rule**
  %19 = load %struct.rule*, %struct.rule** %rp10, align 8
  store %struct.rule* %19, %struct.rule** %rp, align 8
  %20 = load %struct.rule*, %struct.rule** %rp, align 8
  %lhsStart = getelementptr inbounds %struct.rule, %struct.rule* %20, i32 0, i32 2
  %21 = load i32, i32* %lhsStart, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %for.inc.36

if.end.13:                                        ; preds = %if.end.9
  %22 = load %struct.rule*, %struct.rule** %rp, align 8
  %23 = load %struct.rule*, %struct.rule** %rbest, align 8
  %cmp14 = icmp eq %struct.rule* %22, %23
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  br label %for.inc.36

if.end.16:                                        ; preds = %if.end.13
  store i32 1, i32* %n, align 4
  %24 = load %struct.action*, %struct.action** %ap, align 8
  %next = getelementptr inbounds %struct.action, %struct.action* %24, i32 0, i32 3
  %25 = load %struct.action*, %struct.action** %next, align 8
  store %struct.action* %25, %struct.action** %ap2, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.end.16
  %26 = load %struct.action*, %struct.action** %ap2, align 8
  %tobool18 = icmp ne %struct.action* %26, null
  br i1 %tobool18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.17
  %27 = load %struct.action*, %struct.action** %ap2, align 8
  %type20 = getelementptr inbounds %struct.action, %struct.action* %27, i32 0, i32 1
  %28 = load i32, i32* %type20, align 4
  %cmp21 = icmp ne i32 %28, 2
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.19
  br label %for.inc

if.end.23:                                        ; preds = %for.body.19
  %29 = load %struct.action*, %struct.action** %ap2, align 8
  %x24 = getelementptr inbounds %struct.action, %struct.action* %29, i32 0, i32 2
  %rp25 = bitcast %union.anon* %x24 to %struct.rule**
  %30 = load %struct.rule*, %struct.rule** %rp25, align 8
  store %struct.rule* %30, %struct.rule** %rp2, align 8
  %31 = load %struct.rule*, %struct.rule** %rp2, align 8
  %32 = load %struct.rule*, %struct.rule** %rbest, align 8
  %cmp26 = icmp eq %struct.rule* %31, %32
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.23
  br label %for.inc

if.end.28:                                        ; preds = %if.end.23
  %33 = load %struct.rule*, %struct.rule** %rp2, align 8
  %34 = load %struct.rule*, %struct.rule** %rp, align 8
  %cmp29 = icmp eq %struct.rule* %33, %34
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %35 = load i32, i32* %n, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %n, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  br label %for.inc

for.inc:                                          ; preds = %if.end.31, %if.then.27, %if.then.22
  %36 = load %struct.action*, %struct.action** %ap2, align 8
  %next32 = getelementptr inbounds %struct.action, %struct.action* %36, i32 0, i32 3
  %37 = load %struct.action*, %struct.action** %next32, align 8
  store %struct.action* %37, %struct.action** %ap2, align 8
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  %38 = load i32, i32* %n, align 4
  %39 = load i32, i32* %nbest, align 4
  %cmp33 = icmp sgt i32 %38, %39
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %40 = load i32, i32* %n, align 4
  store i32 %40, i32* %nbest, align 4
  %41 = load %struct.rule*, %struct.rule** %rp, align 8
  store %struct.rule* %41, %struct.rule** %rbest, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35, %if.then.15, %if.then.12, %if.then.8
  %42 = load %struct.action*, %struct.action** %ap, align 8
  %next37 = getelementptr inbounds %struct.action, %struct.action* %42, i32 0, i32 3
  %43 = load %struct.action*, %struct.action** %next37, align 8
  store %struct.action* %43, %struct.action** %ap, align 8
  br label %for.cond.2

for.end.38:                                       ; preds = %for.cond.2
  %44 = load i32, i32* %nbest, align 4
  %cmp39 = icmp slt i32 %44, 1
  br i1 %cmp39, label %if.then.41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.38
  %45 = load i32, i32* %usesWildcard, align 4
  %tobool40 = icmp ne i32 %45, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false, %for.end.38
  br label %for.inc.78

if.end.42:                                        ; preds = %lor.lhs.false
  %46 = load %struct.state*, %struct.state** %stp, align 8
  %ap43 = getelementptr inbounds %struct.state, %struct.state* %46, i32 0, i32 3
  %47 = load %struct.action*, %struct.action** %ap43, align 8
  store %struct.action* %47, %struct.action** %ap, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.55, %if.end.42
  %48 = load %struct.action*, %struct.action** %ap, align 8
  %tobool45 = icmp ne %struct.action* %48, null
  br i1 %tobool45, label %for.body.46, label %for.end.57

for.body.46:                                      ; preds = %for.cond.44
  %49 = load %struct.action*, %struct.action** %ap, align 8
  %type47 = getelementptr inbounds %struct.action, %struct.action* %49, i32 0, i32 1
  %50 = load i32, i32* %type47, align 4
  %cmp48 = icmp eq i32 %50, 2
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.54

land.lhs.true.49:                                 ; preds = %for.body.46
  %51 = load %struct.action*, %struct.action** %ap, align 8
  %x50 = getelementptr inbounds %struct.action, %struct.action* %51, i32 0, i32 2
  %rp51 = bitcast %union.anon* %x50 to %struct.rule**
  %52 = load %struct.rule*, %struct.rule** %rp51, align 8
  %53 = load %struct.rule*, %struct.rule** %rbest, align 8
  %cmp52 = icmp eq %struct.rule* %52, %53
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %land.lhs.true.49
  br label %for.end.57

if.end.54:                                        ; preds = %land.lhs.true.49, %for.body.46
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %54 = load %struct.action*, %struct.action** %ap, align 8
  %next56 = getelementptr inbounds %struct.action, %struct.action* %54, i32 0, i32 3
  %55 = load %struct.action*, %struct.action** %next56, align 8
  store %struct.action* %55, %struct.action** %ap, align 8
  br label %for.cond.44

for.end.57:                                       ; preds = %if.then.53, %for.cond.44
  %call = call %struct.symbol* @Symbol_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  %56 = load %struct.action*, %struct.action** %ap, align 8
  %sp58 = getelementptr inbounds %struct.action, %struct.action* %56, i32 0, i32 0
  store %struct.symbol* %call, %struct.symbol** %sp58, align 8
  %57 = load %struct.action*, %struct.action** %ap, align 8
  %next59 = getelementptr inbounds %struct.action, %struct.action* %57, i32 0, i32 3
  %58 = load %struct.action*, %struct.action** %next59, align 8
  store %struct.action* %58, %struct.action** %ap, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.72, %for.end.57
  %59 = load %struct.action*, %struct.action** %ap, align 8
  %tobool61 = icmp ne %struct.action* %59, null
  br i1 %tobool61, label %for.body.62, label %for.end.74

for.body.62:                                      ; preds = %for.cond.60
  %60 = load %struct.action*, %struct.action** %ap, align 8
  %type63 = getelementptr inbounds %struct.action, %struct.action* %60, i32 0, i32 1
  %61 = load i32, i32* %type63, align 4
  %cmp64 = icmp eq i32 %61, 2
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.71

land.lhs.true.65:                                 ; preds = %for.body.62
  %62 = load %struct.action*, %struct.action** %ap, align 8
  %x66 = getelementptr inbounds %struct.action, %struct.action* %62, i32 0, i32 2
  %rp67 = bitcast %union.anon* %x66 to %struct.rule**
  %63 = load %struct.rule*, %struct.rule** %rp67, align 8
  %64 = load %struct.rule*, %struct.rule** %rbest, align 8
  %cmp68 = icmp eq %struct.rule* %63, %64
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %land.lhs.true.65
  %65 = load %struct.action*, %struct.action** %ap, align 8
  %type70 = getelementptr inbounds %struct.action, %struct.action* %65, i32 0, i32 1
  store i32 9, i32* %type70, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %land.lhs.true.65, %for.body.62
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %66 = load %struct.action*, %struct.action** %ap, align 8
  %next73 = getelementptr inbounds %struct.action, %struct.action* %66, i32 0, i32 3
  %67 = load %struct.action*, %struct.action** %next73, align 8
  store %struct.action* %67, %struct.action** %ap, align 8
  br label %for.cond.60

for.end.74:                                       ; preds = %for.cond.60
  %68 = load %struct.state*, %struct.state** %stp, align 8
  %ap75 = getelementptr inbounds %struct.state, %struct.state* %68, i32 0, i32 3
  %69 = load %struct.action*, %struct.action** %ap75, align 8
  %call76 = call %struct.action* @Action_sort(%struct.action* %69)
  %70 = load %struct.state*, %struct.state** %stp, align 8
  %ap77 = getelementptr inbounds %struct.state, %struct.state* %70, i32 0, i32 3
  store %struct.action* %call76, %struct.action** %ap77, align 8
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.end.74, %if.then.41
  %71 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %71, 1
  store i32 %inc79, i32* %i, align 4
  br label %for.cond

for.end.80:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @ResortStates(%struct.lemon* %lemp) #0 {
entry:
  %lemp.addr = alloca %struct.lemon*, align 8
  %i = alloca i32, align 4
  %stp = alloca %struct.state*, align 8
  %ap = alloca %struct.action*, align 8
  store %struct.lemon* %lemp, %struct.lemon** %lemp.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate = getelementptr inbounds %struct.lemon, %struct.lemon* %1, i32 0, i32 2
  %2 = load i32, i32* %nstate, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted = getelementptr inbounds %struct.lemon, %struct.lemon* %4, i32 0, i32 0
  %5 = load %struct.state**, %struct.state*** %sorted, align 8
  %arrayidx = getelementptr inbounds %struct.state*, %struct.state** %5, i64 %idxprom
  %6 = load %struct.state*, %struct.state** %arrayidx, align 8
  store %struct.state* %6, %struct.state** %stp, align 8
  %7 = load %struct.state*, %struct.state** %stp, align 8
  %nNtAct = getelementptr inbounds %struct.state, %struct.state* %7, i32 0, i32 5
  store i32 0, i32* %nNtAct, align 4
  %8 = load %struct.state*, %struct.state** %stp, align 8
  %nTknAct = getelementptr inbounds %struct.state, %struct.state* %8, i32 0, i32 4
  store i32 0, i32* %nTknAct, align 4
  %9 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate1 = getelementptr inbounds %struct.lemon, %struct.lemon* %9, i32 0, i32 2
  %10 = load i32, i32* %nstate1, align 4
  %11 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nrule = getelementptr inbounds %struct.lemon, %struct.lemon* %11, i32 0, i32 3
  %12 = load i32, i32* %nrule, align 4
  %add = add nsw i32 %10, %12
  %13 = load %struct.state*, %struct.state** %stp, align 8
  %iDflt = getelementptr inbounds %struct.state, %struct.state* %13, i32 0, i32 8
  store i32 %add, i32* %iDflt, align 4
  %14 = load %struct.state*, %struct.state** %stp, align 8
  %iTknOfst = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 6
  store i32 -2147483647, i32* %iTknOfst, align 4
  %15 = load %struct.state*, %struct.state** %stp, align 8
  %iNtOfst = getelementptr inbounds %struct.state, %struct.state* %15, i32 0, i32 7
  store i32 -2147483647, i32* %iNtOfst, align 4
  %16 = load %struct.state*, %struct.state** %stp, align 8
  %ap2 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 3
  %17 = load %struct.action*, %struct.action** %ap2, align 8
  store %struct.action* %17, %struct.action** %ap, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %18 = load %struct.action*, %struct.action** %ap, align 8
  %tobool = icmp ne %struct.action* %18, null
  br i1 %tobool, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %19 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %20 = load %struct.action*, %struct.action** %ap, align 8
  %call = call i32 @compute_action(%struct.lemon* %19, %struct.action* %20)
  %cmp5 = icmp sge i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end.19

if.then:                                          ; preds = %for.body.4
  %21 = load %struct.action*, %struct.action** %ap, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %21, i32 0, i32 0
  %22 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 1
  %23 = load i32, i32* %index, align 4
  %24 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nterminal = getelementptr inbounds %struct.lemon, %struct.lemon* %24, i32 0, i32 5
  %25 = load i32, i32* %nterminal, align 4
  %cmp6 = icmp slt i32 %23, %25
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %26 = load %struct.state*, %struct.state** %stp, align 8
  %nTknAct8 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 4
  %27 = load i32, i32* %nTknAct8, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %nTknAct8, align 4
  br label %if.end.18

if.else:                                          ; preds = %if.then
  %28 = load %struct.action*, %struct.action** %ap, align 8
  %sp9 = getelementptr inbounds %struct.action, %struct.action* %28, i32 0, i32 0
  %29 = load %struct.symbol*, %struct.symbol** %sp9, align 8
  %index10 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 1
  %30 = load i32, i32* %index10, align 4
  %31 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nsymbol = getelementptr inbounds %struct.lemon, %struct.lemon* %31, i32 0, i32 4
  %32 = load i32, i32* %nsymbol, align 4
  %cmp11 = icmp slt i32 %30, %32
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else
  %33 = load %struct.state*, %struct.state** %stp, align 8
  %nNtAct13 = getelementptr inbounds %struct.state, %struct.state* %33, i32 0, i32 5
  %34 = load i32, i32* %nNtAct13, align 4
  %inc14 = add nsw i32 %34, 1
  store i32 %inc14, i32* %nNtAct13, align 4
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %35 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %36 = load %struct.action*, %struct.action** %ap, align 8
  %call16 = call i32 @compute_action(%struct.lemon* %35, %struct.action* %36)
  %37 = load %struct.state*, %struct.state** %stp, align 8
  %iDflt17 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 8
  store i32 %call16, i32* %iDflt17, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.7
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %38 = load %struct.action*, %struct.action** %ap, align 8
  %next = getelementptr inbounds %struct.action, %struct.action* %38, i32 0, i32 3
  %39 = load %struct.action*, %struct.action** %next, align 8
  store %struct.action* %39, %struct.action** %ap, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %40 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %40, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %41 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted23 = getelementptr inbounds %struct.lemon, %struct.lemon* %41, i32 0, i32 0
  %42 = load %struct.state**, %struct.state*** %sorted23, align 8
  %arrayidx24 = getelementptr inbounds %struct.state*, %struct.state** %42, i64 1
  %43 = bitcast %struct.state** %arrayidx24 to i8*
  %44 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate25 = getelementptr inbounds %struct.lemon, %struct.lemon* %44, i32 0, i32 2
  %45 = load i32, i32* %nstate25, align 4
  %sub = sub nsw i32 %45, 1
  %conv = sext i32 %sub to i64
  call void @qsort(i8* %43, i64 %conv, i64 8, i32 (i8*, i8*)* @stateResortCompare)
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.34, %for.end.22
  %46 = load i32, i32* %i, align 4
  %47 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %nstate27 = getelementptr inbounds %struct.lemon, %struct.lemon* %47, i32 0, i32 2
  %48 = load i32, i32* %nstate27, align 4
  %cmp28 = icmp slt i32 %46, %48
  br i1 %cmp28, label %for.body.30, label %for.end.36

for.body.30:                                      ; preds = %for.cond.26
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %50 to i64
  %51 = load %struct.lemon*, %struct.lemon** %lemp.addr, align 8
  %sorted32 = getelementptr inbounds %struct.lemon, %struct.lemon* %51, i32 0, i32 0
  %52 = load %struct.state**, %struct.state*** %sorted32, align 8
  %arrayidx33 = getelementptr inbounds %struct.state*, %struct.state** %52, i64 %idxprom31
  %53 = load %struct.state*, %struct.state** %arrayidx33, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %53, i32 0, i32 2
  store i32 %49, i32* %statenum, align 4
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.body.30
  %54 = load i32, i32* %i, align 4
  %inc35 = add nsw i32 %54, 1
  store i32 %inc35, i32* %i, align 4
  br label %for.cond.26

for.end.36:                                       ; preds = %for.cond.26
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @stateResortCompare(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %pA = alloca %struct.state*, align 8
  %pB = alloca %struct.state*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.state**
  %2 = load %struct.state*, %struct.state** %1, align 8
  store %struct.state* %2, %struct.state** %pA, align 8
  %3 = load i8*, i8** %b.addr, align 8
  %4 = bitcast i8* %3 to %struct.state**
  %5 = load %struct.state*, %struct.state** %4, align 8
  store %struct.state* %5, %struct.state** %pB, align 8
  %6 = load %struct.state*, %struct.state** %pA, align 8
  %nNtAct = getelementptr inbounds %struct.state, %struct.state* %6, i32 0, i32 5
  %7 = load i32, i32* %nNtAct, align 4
  %8 = load %struct.state*, %struct.state** %pB, align 8
  %nNtAct1 = getelementptr inbounds %struct.state, %struct.state* %8, i32 0, i32 5
  %9 = load i32, i32* %nNtAct1, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.state*, %struct.state** %pA, align 8
  %nNtAct2 = getelementptr inbounds %struct.state, %struct.state* %10, i32 0, i32 5
  %11 = load i32, i32* %nNtAct2, align 4
  %12 = load %struct.state*, %struct.state** %pB, align 8
  %nNtAct3 = getelementptr inbounds %struct.state, %struct.state* %12, i32 0, i32 5
  %13 = load i32, i32* %nNtAct3, align 4
  %cmp4 = icmp sgt i32 %11, %13
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct.state*, %struct.state** %pA, align 8
  %nTknAct = getelementptr inbounds %struct.state, %struct.state* %14, i32 0, i32 4
  %15 = load i32, i32* %nTknAct, align 4
  %16 = load %struct.state*, %struct.state** %pB, align 8
  %nTknAct7 = getelementptr inbounds %struct.state, %struct.state* %16, i32 0, i32 4
  %17 = load i32, i32* %nTknAct7, align 4
  %cmp8 = icmp slt i32 %15, %17
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %18 = load %struct.state*, %struct.state** %pA, align 8
  %nTknAct11 = getelementptr inbounds %struct.state, %struct.state* %18, i32 0, i32 4
  %19 = load i32, i32* %nTknAct11, align 4
  %20 = load %struct.state*, %struct.state** %pB, align 8
  %nTknAct12 = getelementptr inbounds %struct.state, %struct.state* %20, i32 0, i32 4
  %21 = load i32, i32* %nTknAct12, align 4
  %cmp13 = icmp sgt i32 %19, %21
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.10
  %22 = load %struct.state*, %struct.state** %pA, align 8
  %statenum = getelementptr inbounds %struct.state, %struct.state* %22, i32 0, i32 2
  %23 = load i32, i32* %statenum, align 4
  %24 = load %struct.state*, %struct.state** %pB, align 8
  %statenum16 = getelementptr inbounds %struct.state, %struct.state* %24, i32 0, i32 2
  %25 = load i32, i32* %statenum16, align 4
  %cmp17 = icmp slt i32 %23, %25
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %26 = load %struct.state*, %struct.state** %pA, align 8
  %statenum20 = getelementptr inbounds %struct.state, %struct.state* %26, i32 0, i32 2
  %27 = load i32, i32* %statenum20, align 4
  %28 = load %struct.state*, %struct.state** %pB, align 8
  %statenum21 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 2
  %29 = load i32, i32* %statenum21, align 4
  %cmp22 = icmp sgt i32 %27, %29
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then.18, %if.then.14, %if.then.9, %if.then.5, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define void @SetSize(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %0, 1
  store i32 %add, i32* @size, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @SetNew() #0 {
entry:
  %s = alloca i8*, align 8
  %0 = load i32, i32* @size, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #4
  store i8* %call, i8** %s, align 8
  %1 = load i8*, i8** %s, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %s, align 8
  ret i8* %2
}

; Function Attrs: nounwind uwtable
define void @SetFree(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  call void @free(i8* %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @SetAdd(i8* %s, i32 %e) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i32, align 4
  %rv = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 %e, i32* %e.addr, align 4
  %0 = load i32, i32* %e.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %s.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %rv, align 4
  %3 = load i32, i32* %e.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8*, i8** %s.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %4, i64 %idxprom1
  store i8 1, i8* %arrayidx2, align 1
  %5 = load i32, i32* %rv, align 4
  %tobool = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define i32 @SetUnion(i8* %s1, i8* %s2) #0 {
entry:
  %s1.addr = alloca i8*, align 8
  %s2.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %progress = alloca i32, align 4
  store i8* %s1, i8** %s1.addr, align 8
  store i8* %s2, i8** %s2.addr, align 8
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @size, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %s2.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i8*, i8** %s1.addr, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %6, i64 %idxprom3
  %7 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %7 to i32
  %cmp6 = icmp eq i32 %conv5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  store i32 1, i32* %progress, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %9 = load i8*, i8** %s1.addr, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %9, i64 %idxprom9
  store i8 1, i8* %arrayidx10, align 1
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %progress, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @strhash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %h = alloca i32, align 4
  store i8* %x, i8** %x.addr, align 8
  store i32 0, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %x.addr, align 8
  %1 = load i8, i8* %0, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %2, 13
  %3 = load i8*, i8** %x.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %x.addr, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %add = add nsw i32 %mul, %conv
  store i32 %add, i32* %h, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %h, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i8* @Strsafe(i8* %y) #0 {
entry:
  %retval = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %z = alloca i8*, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %y.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %y.addr, align 8
  %call = call i8* @Strsafe_find(i8* %1)
  store i8* %call, i8** %z, align 8
  %2 = load i8*, i8** %z, align 8
  %cmp1 = icmp eq i8* %2, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %y.addr, align 8
  %call2 = call i64 @strlen(i8* %3) #8
  %add = add i64 %call2, 1
  %call3 = call noalias i8* @malloc(i64 %add) #4
  store i8* %call3, i8** %z, align 8
  %cmp4 = icmp ne i8* %call3, null
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %4 = load i8*, i8** %z, align 8
  %5 = load i8*, i8** %y.addr, align 8
  %call6 = call i8* @strcpy(i8* %4, i8* %5) #4
  %6 = load i8*, i8** %z, align 8
  %call7 = call i32 @Strsafe_insert(i8* %6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %7 = load i8*, i8** %z, align 8
  %cmp9 = icmp eq i8* %7, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  call void @memory_error()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %8 = load i8*, i8** %z, align 8
  store i8* %8, i8** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind uwtable
define void @Strsafe_init() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tobool = icmp ne %struct.s_x1* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.s_x1*
  store %struct.s_x1* %1, %struct.s_x1** @x1a, align 8
  %2 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tobool1 = icmp ne %struct.s_x1* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size = getelementptr inbounds %struct.s_x1, %struct.s_x1* %3, i32 0, i32 0
  store i32 1024, i32* %size, align 4
  %4 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %count = getelementptr inbounds %struct.s_x1, %struct.s_x1* %4, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %call3 = call noalias i8* @malloc(i64 32768) #4
  %5 = bitcast i8* %call3 to %struct.s_x1node*
  %6 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl = getelementptr inbounds %struct.s_x1, %struct.s_x1* %6, i32 0, i32 2
  store %struct.s_x1node* %5, %struct.s_x1node** %tbl, align 8
  %7 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl4 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %7, i32 0, i32 2
  %8 = load %struct.s_x1node*, %struct.s_x1node** %tbl4, align 8
  %cmp = icmp eq %struct.s_x1node* %8, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %10 = bitcast %struct.s_x1* %9 to i8*
  call void @free(i8* %10) #4
  store %struct.s_x1* null, %struct.s_x1** @x1a, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.2
  %11 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl6 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %11, i32 0, i32 2
  %12 = load %struct.s_x1node*, %struct.s_x1node** %tbl6, align 8
  %arrayidx = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %12, i64 1024
  %13 = bitcast %struct.s_x1node* %arrayidx to %struct.s_x1node**
  %14 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht = getelementptr inbounds %struct.s_x1, %struct.s_x1* %14, i32 0, i32 3
  store %struct.s_x1node** %13, %struct.s_x1node*** %ht, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %15, 1024
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht8 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %17, i32 0, i32 3
  %18 = load %struct.s_x1node**, %struct.s_x1node*** %ht8, align 8
  %arrayidx9 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %18, i64 %idxprom
  store %struct.s_x1node* null, %struct.s_x1node** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.end.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Strsafe_insert(i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %np = alloca %struct.s_x1node*, align 8
  %h = alloca i32, align 4
  %ph = alloca i32, align 4
  %i = alloca i32, align 4
  %size9 = alloca i32, align 4
  %array = alloca %struct.s_x1, align 8
  %oldnp = alloca %struct.s_x1node*, align 8
  %newnp = alloca %struct.s_x1node*, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %cmp = icmp eq %struct.s_x1* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %data.addr, align 8
  %call = call i32 @strhash(i8* %1)
  store i32 %call, i32* %ph, align 4
  %2 = load i32, i32* %ph, align 4
  %3 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size = getelementptr inbounds %struct.s_x1, %struct.s_x1* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %4, 1
  %and = and i32 %2, %sub
  store i32 %and, i32* %h, align 4
  %5 = load i32, i32* %h, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht = getelementptr inbounds %struct.s_x1, %struct.s_x1* %6, i32 0, i32 3
  %7 = load %struct.s_x1node**, %struct.s_x1node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %7, i64 %idxprom
  %8 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx, align 8
  store %struct.s_x1node* %8, %struct.s_x1node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %9 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %tobool = icmp ne %struct.s_x1node* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %data1 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %10, i32 0, i32 0
  %11 = load i8*, i8** %data1, align 8
  %12 = load i8*, i8** %data.addr, align 8
  %call2 = call i32 @strcmp(i8* %11, i8* %12) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %13 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %next = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %13, i32 0, i32 1
  %14 = load %struct.s_x1node*, %struct.s_x1node** %next, align 8
  store %struct.s_x1node* %14, %struct.s_x1node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %count = getelementptr inbounds %struct.s_x1, %struct.s_x1* %15, i32 0, i32 1
  %16 = load i32, i32* %count, align 4
  %17 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size6 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %17, i32 0, i32 0
  %18 = load i32, i32* %size6, align 4
  %cmp7 = icmp sge i32 %16, %18
  br i1 %cmp7, label %if.then.8, label %if.end.72

if.then.8:                                        ; preds = %while.end
  %19 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size10 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %19, i32 0, i32 0
  %20 = load i32, i32* %size10, align 4
  %mul = mul nsw i32 %20, 2
  store i32 %mul, i32* %size9, align 4
  %size11 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 0
  store i32 %mul, i32* %size11, align 4
  %21 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %count12 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %21, i32 0, i32 1
  %22 = load i32, i32* %count12, align 4
  %count13 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 1
  store i32 %22, i32* %count13, align 4
  %23 = load i32, i32* %size9, align 4
  %conv = sext i32 %23 to i64
  %mul14 = mul i64 32, %conv
  %call15 = call noalias i8* @malloc(i64 %mul14) #4
  %24 = bitcast i8* %call15 to %struct.s_x1node*
  %tbl = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 2
  store %struct.s_x1node* %24, %struct.s_x1node** %tbl, align 8
  %tbl16 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 2
  %25 = load %struct.s_x1node*, %struct.s_x1node** %tbl16, align 8
  %cmp17 = icmp eq %struct.s_x1node* %25, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.8
  %26 = load i32, i32* %size9, align 4
  %idxprom21 = sext i32 %26 to i64
  %tbl22 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 2
  %27 = load %struct.s_x1node*, %struct.s_x1node** %tbl22, align 8
  %arrayidx23 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %27, i64 %idxprom21
  %28 = bitcast %struct.s_x1node* %arrayidx23 to %struct.s_x1node**
  %ht24 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  store %struct.s_x1node** %28, %struct.s_x1node*** %ht24, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %size9, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %ht28 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %32 = load %struct.s_x1node**, %struct.s_x1node*** %ht28, align 8
  %arrayidx29 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %32, i64 %idxprom27
  store %struct.s_x1node* null, %struct.s_x1node** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.68, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %count31 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %35, i32 0, i32 1
  %36 = load i32, i32* %count31, align 4
  %cmp32 = icmp slt i32 %34, %36
  br i1 %cmp32, label %for.body.34, label %for.end.70

for.body.34:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl36 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %38, i32 0, i32 2
  %39 = load %struct.s_x1node*, %struct.s_x1node** %tbl36, align 8
  %arrayidx37 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %39, i64 %idxprom35
  store %struct.s_x1node* %arrayidx37, %struct.s_x1node** %oldnp, align 8
  %40 = load %struct.s_x1node*, %struct.s_x1node** %oldnp, align 8
  %data38 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %40, i32 0, i32 0
  %41 = load i8*, i8** %data38, align 8
  %call39 = call i32 @strhash(i8* %41)
  %42 = load i32, i32* %size9, align 4
  %sub40 = sub nsw i32 %42, 1
  %and41 = and i32 %call39, %sub40
  store i32 %and41, i32* %h, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %tbl43 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 2
  %44 = load %struct.s_x1node*, %struct.s_x1node** %tbl43, align 8
  %arrayidx44 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %44, i64 %idxprom42
  store %struct.s_x1node* %arrayidx44, %struct.s_x1node** %newnp, align 8
  %45 = load i32, i32* %h, align 4
  %idxprom45 = sext i32 %45 to i64
  %ht46 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %46 = load %struct.s_x1node**, %struct.s_x1node*** %ht46, align 8
  %arrayidx47 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %46, i64 %idxprom45
  %47 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx47, align 8
  %tobool48 = icmp ne %struct.s_x1node* %47, null
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.body.34
  %48 = load %struct.s_x1node*, %struct.s_x1node** %newnp, align 8
  %next50 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %48, i32 0, i32 1
  %49 = load i32, i32* %h, align 4
  %idxprom51 = sext i32 %49 to i64
  %ht52 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %50 = load %struct.s_x1node**, %struct.s_x1node*** %ht52, align 8
  %arrayidx53 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %50, i64 %idxprom51
  %51 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx53, align 8
  %from = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %51, i32 0, i32 2
  store %struct.s_x1node** %next50, %struct.s_x1node*** %from, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %for.body.34
  %52 = load i32, i32* %h, align 4
  %idxprom55 = sext i32 %52 to i64
  %ht56 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %53 = load %struct.s_x1node**, %struct.s_x1node*** %ht56, align 8
  %arrayidx57 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %53, i64 %idxprom55
  %54 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx57, align 8
  %55 = load %struct.s_x1node*, %struct.s_x1node** %newnp, align 8
  %next58 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %55, i32 0, i32 1
  store %struct.s_x1node* %54, %struct.s_x1node** %next58, align 8
  %56 = load %struct.s_x1node*, %struct.s_x1node** %oldnp, align 8
  %data59 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %56, i32 0, i32 0
  %57 = load i8*, i8** %data59, align 8
  %58 = load %struct.s_x1node*, %struct.s_x1node** %newnp, align 8
  %data60 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %58, i32 0, i32 0
  store i8* %57, i8** %data60, align 8
  %59 = load i32, i32* %h, align 4
  %idxprom61 = sext i32 %59 to i64
  %ht62 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %60 = load %struct.s_x1node**, %struct.s_x1node*** %ht62, align 8
  %arrayidx63 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %60, i64 %idxprom61
  %61 = load %struct.s_x1node*, %struct.s_x1node** %newnp, align 8
  %from64 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %61, i32 0, i32 2
  store %struct.s_x1node** %arrayidx63, %struct.s_x1node*** %from64, align 8
  %62 = load %struct.s_x1node*, %struct.s_x1node** %newnp, align 8
  %63 = load i32, i32* %h, align 4
  %idxprom65 = sext i32 %63 to i64
  %ht66 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %array, i32 0, i32 3
  %64 = load %struct.s_x1node**, %struct.s_x1node*** %ht66, align 8
  %arrayidx67 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %64, i64 %idxprom65
  store %struct.s_x1node* %62, %struct.s_x1node** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.54
  %65 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %65, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.30

for.end.70:                                       ; preds = %for.cond.30
  %66 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl71 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %66, i32 0, i32 2
  %67 = load %struct.s_x1node*, %struct.s_x1node** %tbl71, align 8
  %68 = bitcast %struct.s_x1node* %67 to i8*
  call void @free(i8* %68) #4
  %69 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %70 = bitcast %struct.s_x1* %69 to i8*
  %71 = bitcast %struct.s_x1* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 24, i32 8, i1 false)
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.70, %while.end
  %72 = load i32, i32* %ph, align 4
  %73 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size73 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %73, i32 0, i32 0
  %74 = load i32, i32* %size73, align 4
  %sub74 = sub nsw i32 %74, 1
  %and75 = and i32 %72, %sub74
  store i32 %and75, i32* %h, align 4
  %75 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %count76 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %75, i32 0, i32 1
  %76 = load i32, i32* %count76, align 4
  %inc77 = add nsw i32 %76, 1
  store i32 %inc77, i32* %count76, align 4
  %idxprom78 = sext i32 %76 to i64
  %77 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %tbl79 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %77, i32 0, i32 2
  %78 = load %struct.s_x1node*, %struct.s_x1node** %tbl79, align 8
  %arrayidx80 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %78, i64 %idxprom78
  store %struct.s_x1node* %arrayidx80, %struct.s_x1node** %np, align 8
  %79 = load i8*, i8** %data.addr, align 8
  %80 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %data81 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %80, i32 0, i32 0
  store i8* %79, i8** %data81, align 8
  %81 = load i32, i32* %h, align 4
  %idxprom82 = sext i32 %81 to i64
  %82 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht83 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %82, i32 0, i32 3
  %83 = load %struct.s_x1node**, %struct.s_x1node*** %ht83, align 8
  %arrayidx84 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %83, i64 %idxprom82
  %84 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx84, align 8
  %tobool85 = icmp ne %struct.s_x1node* %84, null
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.72
  %85 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %next87 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %85, i32 0, i32 1
  %86 = load i32, i32* %h, align 4
  %idxprom88 = sext i32 %86 to i64
  %87 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht89 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %87, i32 0, i32 3
  %88 = load %struct.s_x1node**, %struct.s_x1node*** %ht89, align 8
  %arrayidx90 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %88, i64 %idxprom88
  %89 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx90, align 8
  %from91 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %89, i32 0, i32 2
  store %struct.s_x1node** %next87, %struct.s_x1node*** %from91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.86, %if.end.72
  %90 = load i32, i32* %h, align 4
  %idxprom93 = sext i32 %90 to i64
  %91 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht94 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %91, i32 0, i32 3
  %92 = load %struct.s_x1node**, %struct.s_x1node*** %ht94, align 8
  %arrayidx95 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %92, i64 %idxprom93
  %93 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx95, align 8
  %94 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %next96 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %94, i32 0, i32 1
  store %struct.s_x1node* %93, %struct.s_x1node** %next96, align 8
  %95 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %96 = load i32, i32* %h, align 4
  %idxprom97 = sext i32 %96 to i64
  %97 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht98 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %97, i32 0, i32 3
  %98 = load %struct.s_x1node**, %struct.s_x1node*** %ht98, align 8
  %arrayidx99 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %98, i64 %idxprom97
  store %struct.s_x1node* %95, %struct.s_x1node** %arrayidx99, align 8
  %99 = load i32, i32* %h, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht101 = getelementptr inbounds %struct.s_x1, %struct.s_x1* %100, i32 0, i32 3
  %101 = load %struct.s_x1node**, %struct.s_x1node*** %ht101, align 8
  %arrayidx102 = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %101, i64 %idxprom100
  %102 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %from103 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %102, i32 0, i32 2
  store %struct.s_x1node** %arrayidx102, %struct.s_x1node*** %from103, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.19, %if.then.4, %if.then
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define i8* @Strsafe_find(i8* %key) #0 {
entry:
  %retval = alloca i8*, align 8
  %key.addr = alloca i8*, align 8
  %h = alloca i32, align 4
  %np = alloca %struct.s_x1node*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %cmp = icmp eq %struct.s_x1* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strhash(i8* %1)
  %2 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %size = getelementptr inbounds %struct.s_x1, %struct.s_x1* %2, i32 0, i32 0
  %3 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %3, 1
  %and = and i32 %call, %sub
  store i32 %and, i32* %h, align 4
  %4 = load i32, i32* %h, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.s_x1*, %struct.s_x1** @x1a, align 8
  %ht = getelementptr inbounds %struct.s_x1, %struct.s_x1* %5, i32 0, i32 3
  %6 = load %struct.s_x1node**, %struct.s_x1node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x1node*, %struct.s_x1node** %6, i64 %idxprom
  %7 = load %struct.s_x1node*, %struct.s_x1node** %arrayidx, align 8
  store %struct.s_x1node* %7, %struct.s_x1node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %if.end
  %8 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %tobool = icmp ne %struct.s_x1node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %data = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %9, i32 0, i32 0
  %10 = load i8*, i8** %data, align 8
  %11 = load i8*, i8** %key.addr, align 8
  %call1 = call i32 @strcmp(i8* %10, i8* %11) #8
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  br label %while.end

if.end.4:                                         ; preds = %while.body
  %12 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %next = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %12, i32 0, i32 1
  %13 = load %struct.s_x1node*, %struct.s_x1node** %next, align 8
  store %struct.s_x1node* %13, %struct.s_x1node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.3, %while.cond
  %14 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %tobool5 = icmp ne %struct.s_x1node* %14, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %15 = load %struct.s_x1node*, %struct.s_x1node** %np, align 8
  %data6 = getelementptr inbounds %struct.s_x1node, %struct.s_x1node* %15, i32 0, i32 0
  %16 = load i8*, i8** %data6, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %16, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %17 = load i8*, i8** %retval
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define %struct.symbol* @Symbol_new(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %sp = alloca %struct.symbol*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %call = call %struct.symbol* @Symbol_find(i8* %0)
  store %struct.symbol* %call, %struct.symbol** %sp, align 8
  %1 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %cmp = icmp eq %struct.symbol* %1, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %call1 = call noalias i8* @calloc(i64 1, i64 96) #4
  %2 = bitcast i8* %call1 to %struct.symbol*
  store %struct.symbol* %2, %struct.symbol** %sp, align 8
  %3 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %cmp2 = icmp eq %struct.symbol* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @memory_error()
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load i8*, i8** %x.addr, align 8
  %call4 = call i8* @Strsafe(i8* %4)
  %5 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 0
  store i8* %call4, i8** %name, align 8
  %6 = load i8*, i8** %x.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %call5 = call i16** @__ctype_b_loc() #9
  %8 = load i16*, i16** %call5, align 8
  %arrayidx = getelementptr inbounds i16, i16* %8, i64 %idxprom
  %9 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %9 to i32
  %and = and i32 %conv6, 256
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 0, i32 1
  %10 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %type = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 2
  store i32 %cond, i32* %type, align 4
  %11 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %rule = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 3
  store %struct.rule* null, %struct.rule** %rule, align 8
  %12 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %fallback = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 4
  store %struct.symbol* null, %struct.symbol** %fallback, align 8
  %13 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %prec = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 5
  store i32 -1, i32* %prec, align 4
  %14 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %assoc = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 6
  store i32 3, i32* %assoc, align 4
  %15 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %firstset = getelementptr inbounds %struct.symbol, %struct.symbol* %15, i32 0, i32 7
  store i8* null, i8** %firstset, align 8
  %16 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %lambda = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 8
  store i32 0, i32* %lambda, align 4
  %17 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %destructor = getelementptr inbounds %struct.symbol, %struct.symbol* %17, i32 0, i32 10
  store i8* null, i8** %destructor, align 8
  %18 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %datatype = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 12
  store i8* null, i8** %datatype, align 8
  %19 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %useCnt = getelementptr inbounds %struct.symbol, %struct.symbol* %19, i32 0, i32 9
  store i32 0, i32* %useCnt, align 4
  %20 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %21 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %name7 = getelementptr inbounds %struct.symbol, %struct.symbol* %21, i32 0, i32 0
  %22 = load i8*, i8** %name7, align 8
  %call8 = call i32 @Symbol_insert(%struct.symbol* %20, i8* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %23 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %useCnt10 = getelementptr inbounds %struct.symbol, %struct.symbol* %23, i32 0, i32 9
  %24 = load i32, i32* %useCnt10, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %useCnt10, align 4
  %25 = load %struct.symbol*, %struct.symbol** %sp, align 8
  ret %struct.symbol* %25
}

; Function Attrs: nounwind uwtable
define i32 @Symbolcmpp(%struct.symbol** %a, %struct.symbol** %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct.symbol**, align 8
  %b.addr = alloca %struct.symbol**, align 8
  %indexA = alloca i32, align 4
  %indexB = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store %struct.symbol** %a, %struct.symbol*** %a.addr, align 8
  store %struct.symbol** %b, %struct.symbol*** %b.addr, align 8
  %0 = load %struct.symbol**, %struct.symbol*** %a.addr, align 8
  %1 = load %struct.symbol*, %struct.symbol** %0, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %1, i32 0, i32 1
  %2 = load i32, i32* %index, align 4
  store i32 %2, i32* %indexA, align 4
  %3 = load %struct.symbol**, %struct.symbol*** %b.addr, align 8
  %4 = load %struct.symbol*, %struct.symbol** %3, align 8
  %index1 = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 1
  %5 = load i32, i32* %index1, align 4
  store i32 %5, i32* %indexB, align 4
  %6 = load i32, i32* %indexA, align 4
  %7 = load %struct.symbol**, %struct.symbol*** %a.addr, align 8
  %8 = load %struct.symbol*, %struct.symbol** %7, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp sgt i32 %conv, 90
  %conv2 = zext i1 %cmp to i32
  %mul = mul nsw i32 10000000, %conv2
  %add = add nsw i32 %6, %mul
  store i32 %add, i32* %i1, align 4
  %11 = load i32, i32* %indexB, align 4
  %12 = load %struct.symbol**, %struct.symbol*** %b.addr, align 8
  %13 = load %struct.symbol*, %struct.symbol** %12, align 8
  %name3 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %14 = load i8*, i8** %name3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %15 to i32
  %cmp6 = icmp sgt i32 %conv5, 90
  %conv7 = zext i1 %cmp6 to i32
  %mul8 = mul nsw i32 10000000, %conv7
  %add9 = add nsw i32 %11, %mul8
  store i32 %add9, i32* %i2, align 4
  %16 = load i32, i32* %i1, align 4
  %17 = load i32, i32* %i2, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %18 = load i32, i32* %i1, align 4
  %19 = load i32, i32* %i2, align 4
  %cmp12 = icmp sgt i32 %18, %19
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end
  %20 = load i32, i32* %indexA, align 4
  %21 = load i32, i32* %indexB, align 4
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.15
  store i32 -1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end.15
  %22 = load i32, i32* %indexA, align 4
  %23 = load i32, i32* %indexB, align 4
  %cmp20 = icmp sgt i32 %22, %23
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.18, %if.then.14, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define void @Symbol_init() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tobool = icmp ne %struct.s_x2* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.s_x2*
  store %struct.s_x2* %1, %struct.s_x2** @x2a, align 8
  %2 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tobool1 = icmp ne %struct.s_x2* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size = getelementptr inbounds %struct.s_x2, %struct.s_x2* %3, i32 0, i32 0
  store i32 128, i32* %size, align 4
  %4 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count = getelementptr inbounds %struct.s_x2, %struct.s_x2* %4, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %call3 = call noalias i8* @malloc(i64 5120) #4
  %5 = bitcast i8* %call3 to %struct.s_x2node*
  %6 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl = getelementptr inbounds %struct.s_x2, %struct.s_x2* %6, i32 0, i32 2
  store %struct.s_x2node* %5, %struct.s_x2node** %tbl, align 8
  %7 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl4 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %7, i32 0, i32 2
  %8 = load %struct.s_x2node*, %struct.s_x2node** %tbl4, align 8
  %cmp = icmp eq %struct.s_x2node* %8, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %10 = bitcast %struct.s_x2* %9 to i8*
  call void @free(i8* %10) #4
  store %struct.s_x2* null, %struct.s_x2** @x2a, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.2
  %11 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl6 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %11, i32 0, i32 2
  %12 = load %struct.s_x2node*, %struct.s_x2node** %tbl6, align 8
  %arrayidx = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %12, i64 128
  %13 = bitcast %struct.s_x2node* %arrayidx to %struct.s_x2node**
  %14 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht = getelementptr inbounds %struct.s_x2, %struct.s_x2* %14, i32 0, i32 3
  store %struct.s_x2node** %13, %struct.s_x2node*** %ht, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %15, 128
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht8 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %17, i32 0, i32 3
  %18 = load %struct.s_x2node**, %struct.s_x2node*** %ht8, align 8
  %arrayidx9 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %18, i64 %idxprom
  store %struct.s_x2node* null, %struct.s_x2node** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.end.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Symbol_insert(%struct.symbol* %data, i8* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.symbol*, align 8
  %key.addr = alloca i8*, align 8
  %np = alloca %struct.s_x2node*, align 8
  %h = alloca i32, align 4
  %ph = alloca i32, align 4
  %i = alloca i32, align 4
  %size9 = alloca i32, align 4
  %array = alloca %struct.s_x2, align 8
  %oldnp = alloca %struct.s_x2node*, align 8
  %newnp = alloca %struct.s_x2node*, align 8
  store %struct.symbol* %data, %struct.symbol** %data.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %cmp = icmp eq %struct.s_x2* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strhash(i8* %1)
  store i32 %call, i32* %ph, align 4
  %2 = load i32, i32* %ph, align 4
  %3 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size = getelementptr inbounds %struct.s_x2, %struct.s_x2* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %4, 1
  %and = and i32 %2, %sub
  store i32 %and, i32* %h, align 4
  %5 = load i32, i32* %h, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht = getelementptr inbounds %struct.s_x2, %struct.s_x2* %6, i32 0, i32 3
  %7 = load %struct.s_x2node**, %struct.s_x2node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %7, i64 %idxprom
  %8 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx, align 8
  store %struct.s_x2node* %8, %struct.s_x2node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %9 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %tobool = icmp ne %struct.s_x2node* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %key1 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %10, i32 0, i32 1
  %11 = load i8*, i8** %key1, align 8
  %12 = load i8*, i8** %key.addr, align 8
  %call2 = call i32 @strcmp(i8* %11, i8* %12) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %13 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %next = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %13, i32 0, i32 2
  %14 = load %struct.s_x2node*, %struct.s_x2node** %next, align 8
  store %struct.s_x2node* %14, %struct.s_x2node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count = getelementptr inbounds %struct.s_x2, %struct.s_x2* %15, i32 0, i32 1
  %16 = load i32, i32* %count, align 4
  %17 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size6 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %17, i32 0, i32 0
  %18 = load i32, i32* %size6, align 4
  %cmp7 = icmp sge i32 %16, %18
  br i1 %cmp7, label %if.then.8, label %if.end.74

if.then.8:                                        ; preds = %while.end
  %19 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size10 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %19, i32 0, i32 0
  %20 = load i32, i32* %size10, align 4
  %mul = mul nsw i32 %20, 2
  store i32 %mul, i32* %size9, align 4
  %size11 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 0
  store i32 %mul, i32* %size11, align 4
  %21 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count12 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %21, i32 0, i32 1
  %22 = load i32, i32* %count12, align 4
  %count13 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 1
  store i32 %22, i32* %count13, align 4
  %23 = load i32, i32* %size9, align 4
  %conv = sext i32 %23 to i64
  %mul14 = mul i64 40, %conv
  %call15 = call noalias i8* @malloc(i64 %mul14) #4
  %24 = bitcast i8* %call15 to %struct.s_x2node*
  %tbl = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 2
  store %struct.s_x2node* %24, %struct.s_x2node** %tbl, align 8
  %tbl16 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 2
  %25 = load %struct.s_x2node*, %struct.s_x2node** %tbl16, align 8
  %cmp17 = icmp eq %struct.s_x2node* %25, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.8
  %26 = load i32, i32* %size9, align 4
  %idxprom21 = sext i32 %26 to i64
  %tbl22 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 2
  %27 = load %struct.s_x2node*, %struct.s_x2node** %tbl22, align 8
  %arrayidx23 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %27, i64 %idxprom21
  %28 = bitcast %struct.s_x2node* %arrayidx23 to %struct.s_x2node**
  %ht24 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  store %struct.s_x2node** %28, %struct.s_x2node*** %ht24, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %size9, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %ht28 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %32 = load %struct.s_x2node**, %struct.s_x2node*** %ht28, align 8
  %arrayidx29 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %32, i64 %idxprom27
  store %struct.s_x2node* null, %struct.s_x2node** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.70, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count31 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %35, i32 0, i32 1
  %36 = load i32, i32* %count31, align 4
  %cmp32 = icmp slt i32 %34, %36
  br i1 %cmp32, label %for.body.34, label %for.end.72

for.body.34:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl36 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %38, i32 0, i32 2
  %39 = load %struct.s_x2node*, %struct.s_x2node** %tbl36, align 8
  %arrayidx37 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %39, i64 %idxprom35
  store %struct.s_x2node* %arrayidx37, %struct.s_x2node** %oldnp, align 8
  %40 = load %struct.s_x2node*, %struct.s_x2node** %oldnp, align 8
  %key38 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %40, i32 0, i32 1
  %41 = load i8*, i8** %key38, align 8
  %call39 = call i32 @strhash(i8* %41)
  %42 = load i32, i32* %size9, align 4
  %sub40 = sub nsw i32 %42, 1
  %and41 = and i32 %call39, %sub40
  store i32 %and41, i32* %h, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %tbl43 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 2
  %44 = load %struct.s_x2node*, %struct.s_x2node** %tbl43, align 8
  %arrayidx44 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %44, i64 %idxprom42
  store %struct.s_x2node* %arrayidx44, %struct.s_x2node** %newnp, align 8
  %45 = load i32, i32* %h, align 4
  %idxprom45 = sext i32 %45 to i64
  %ht46 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %46 = load %struct.s_x2node**, %struct.s_x2node*** %ht46, align 8
  %arrayidx47 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %46, i64 %idxprom45
  %47 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx47, align 8
  %tobool48 = icmp ne %struct.s_x2node* %47, null
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.body.34
  %48 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %next50 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %48, i32 0, i32 2
  %49 = load i32, i32* %h, align 4
  %idxprom51 = sext i32 %49 to i64
  %ht52 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %50 = load %struct.s_x2node**, %struct.s_x2node*** %ht52, align 8
  %arrayidx53 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %50, i64 %idxprom51
  %51 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx53, align 8
  %from = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %51, i32 0, i32 3
  store %struct.s_x2node** %next50, %struct.s_x2node*** %from, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %for.body.34
  %52 = load i32, i32* %h, align 4
  %idxprom55 = sext i32 %52 to i64
  %ht56 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %53 = load %struct.s_x2node**, %struct.s_x2node*** %ht56, align 8
  %arrayidx57 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %53, i64 %idxprom55
  %54 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx57, align 8
  %55 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %next58 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %55, i32 0, i32 2
  store %struct.s_x2node* %54, %struct.s_x2node** %next58, align 8
  %56 = load %struct.s_x2node*, %struct.s_x2node** %oldnp, align 8
  %key59 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %56, i32 0, i32 1
  %57 = load i8*, i8** %key59, align 8
  %58 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %key60 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %58, i32 0, i32 1
  store i8* %57, i8** %key60, align 8
  %59 = load %struct.s_x2node*, %struct.s_x2node** %oldnp, align 8
  %data61 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %59, i32 0, i32 0
  %60 = load %struct.symbol*, %struct.symbol** %data61, align 8
  %61 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %data62 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %61, i32 0, i32 0
  store %struct.symbol* %60, %struct.symbol** %data62, align 8
  %62 = load i32, i32* %h, align 4
  %idxprom63 = sext i32 %62 to i64
  %ht64 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %63 = load %struct.s_x2node**, %struct.s_x2node*** %ht64, align 8
  %arrayidx65 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %63, i64 %idxprom63
  %64 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %from66 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %64, i32 0, i32 3
  store %struct.s_x2node** %arrayidx65, %struct.s_x2node*** %from66, align 8
  %65 = load %struct.s_x2node*, %struct.s_x2node** %newnp, align 8
  %66 = load i32, i32* %h, align 4
  %idxprom67 = sext i32 %66 to i64
  %ht68 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %array, i32 0, i32 3
  %67 = load %struct.s_x2node**, %struct.s_x2node*** %ht68, align 8
  %arrayidx69 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %67, i64 %idxprom67
  store %struct.s_x2node* %65, %struct.s_x2node** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.54
  %68 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %68, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.30

for.end.72:                                       ; preds = %for.cond.30
  %69 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl73 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %69, i32 0, i32 2
  %70 = load %struct.s_x2node*, %struct.s_x2node** %tbl73, align 8
  %71 = bitcast %struct.s_x2node* %70 to i8*
  call void @free(i8* %71) #4
  %72 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %73 = bitcast %struct.s_x2* %72 to i8*
  %74 = bitcast %struct.s_x2* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 24, i32 8, i1 false)
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.72, %while.end
  %75 = load i32, i32* %ph, align 4
  %76 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size75 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %76, i32 0, i32 0
  %77 = load i32, i32* %size75, align 4
  %sub76 = sub nsw i32 %77, 1
  %and77 = and i32 %75, %sub76
  store i32 %and77, i32* %h, align 4
  %78 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count78 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %78, i32 0, i32 1
  %79 = load i32, i32* %count78, align 4
  %inc79 = add nsw i32 %79, 1
  store i32 %inc79, i32* %count78, align 4
  %idxprom80 = sext i32 %79 to i64
  %80 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl81 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %80, i32 0, i32 2
  %81 = load %struct.s_x2node*, %struct.s_x2node** %tbl81, align 8
  %arrayidx82 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %81, i64 %idxprom80
  store %struct.s_x2node* %arrayidx82, %struct.s_x2node** %np, align 8
  %82 = load i8*, i8** %key.addr, align 8
  %83 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %key83 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %83, i32 0, i32 1
  store i8* %82, i8** %key83, align 8
  %84 = load %struct.symbol*, %struct.symbol** %data.addr, align 8
  %85 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %data84 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %85, i32 0, i32 0
  store %struct.symbol* %84, %struct.symbol** %data84, align 8
  %86 = load i32, i32* %h, align 4
  %idxprom85 = sext i32 %86 to i64
  %87 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht86 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %87, i32 0, i32 3
  %88 = load %struct.s_x2node**, %struct.s_x2node*** %ht86, align 8
  %arrayidx87 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %88, i64 %idxprom85
  %89 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx87, align 8
  %tobool88 = icmp ne %struct.s_x2node* %89, null
  br i1 %tobool88, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end.74
  %90 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %next90 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %90, i32 0, i32 2
  %91 = load i32, i32* %h, align 4
  %idxprom91 = sext i32 %91 to i64
  %92 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht92 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %92, i32 0, i32 3
  %93 = load %struct.s_x2node**, %struct.s_x2node*** %ht92, align 8
  %arrayidx93 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %93, i64 %idxprom91
  %94 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx93, align 8
  %from94 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %94, i32 0, i32 3
  store %struct.s_x2node** %next90, %struct.s_x2node*** %from94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.89, %if.end.74
  %95 = load i32, i32* %h, align 4
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht97 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %96, i32 0, i32 3
  %97 = load %struct.s_x2node**, %struct.s_x2node*** %ht97, align 8
  %arrayidx98 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %97, i64 %idxprom96
  %98 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx98, align 8
  %99 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %next99 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %99, i32 0, i32 2
  store %struct.s_x2node* %98, %struct.s_x2node** %next99, align 8
  %100 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %101 = load i32, i32* %h, align 4
  %idxprom100 = sext i32 %101 to i64
  %102 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht101 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %102, i32 0, i32 3
  %103 = load %struct.s_x2node**, %struct.s_x2node*** %ht101, align 8
  %arrayidx102 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %103, i64 %idxprom100
  store %struct.s_x2node* %100, %struct.s_x2node** %arrayidx102, align 8
  %104 = load i32, i32* %h, align 4
  %idxprom103 = sext i32 %104 to i64
  %105 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht104 = getelementptr inbounds %struct.s_x2, %struct.s_x2* %105, i32 0, i32 3
  %106 = load %struct.s_x2node**, %struct.s_x2node*** %ht104, align 8
  %arrayidx105 = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %106, i64 %idxprom103
  %107 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %from106 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %107, i32 0, i32 3
  store %struct.s_x2node** %arrayidx105, %struct.s_x2node*** %from106, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.19, %if.then.4, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define %struct.symbol* @Symbol_find(i8* %key) #0 {
entry:
  %retval = alloca %struct.symbol*, align 8
  %key.addr = alloca i8*, align 8
  %h = alloca i32, align 4
  %np = alloca %struct.s_x2node*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %cmp = icmp eq %struct.s_x2* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symbol* null, %struct.symbol** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @strhash(i8* %1)
  %2 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %size = getelementptr inbounds %struct.s_x2, %struct.s_x2* %2, i32 0, i32 0
  %3 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %3, 1
  %and = and i32 %call, %sub
  store i32 %and, i32* %h, align 4
  %4 = load i32, i32* %h, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %ht = getelementptr inbounds %struct.s_x2, %struct.s_x2* %5, i32 0, i32 3
  %6 = load %struct.s_x2node**, %struct.s_x2node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x2node*, %struct.s_x2node** %6, i64 %idxprom
  %7 = load %struct.s_x2node*, %struct.s_x2node** %arrayidx, align 8
  store %struct.s_x2node* %7, %struct.s_x2node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %tobool = icmp ne %struct.s_x2node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %key1 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %9, i32 0, i32 1
  %10 = load i8*, i8** %key1, align 8
  %11 = load i8*, i8** %key.addr, align 8
  %call2 = call i32 @strcmp(i8* %10, i8* %11) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  %12 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %next = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %12, i32 0, i32 2
  %13 = load %struct.s_x2node*, %struct.s_x2node** %next, align 8
  store %struct.s_x2node* %13, %struct.s_x2node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %14 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %tobool6 = icmp ne %struct.s_x2node* %14, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %15 = load %struct.s_x2node*, %struct.s_x2node** %np, align 8
  %data = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %15, i32 0, i32 0
  %16 = load %struct.symbol*, %struct.symbol** %data, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.symbol* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.symbol* %cond, %struct.symbol** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %17 = load %struct.symbol*, %struct.symbol** %retval
  ret %struct.symbol* %17
}

; Function Attrs: nounwind uwtable
define %struct.symbol* @Symbol_Nth(i32 %n) #0 {
entry:
  %n.addr = alloca i32, align 4
  %data = alloca %struct.symbol*, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tobool = icmp ne %struct.s_x2* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.lhs.true.1, label %if.else

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load i32, i32* %n.addr, align 4
  %3 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count = getelementptr inbounds %struct.s_x2, %struct.s_x2* %3, i32 0, i32 1
  %4 = load i32, i32* %count, align 4
  %cmp2 = icmp sle i32 %2, %4
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.1
  %5 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %5, 1
  %idxprom = sext i32 %sub to i64
  %6 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl = getelementptr inbounds %struct.s_x2, %struct.s_x2* %6, i32 0, i32 2
  %7 = load %struct.s_x2node*, %struct.s_x2node** %tbl, align 8
  %arrayidx = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %7, i64 %idxprom
  %data3 = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %arrayidx, i32 0, i32 0
  %8 = load %struct.symbol*, %struct.symbol** %data3, align 8
  store %struct.symbol* %8, %struct.symbol** %data, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  store %struct.symbol* null, %struct.symbol** %data, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.symbol*, %struct.symbol** %data, align 8
  ret %struct.symbol* %9
}

; Function Attrs: nounwind uwtable
define i32 @Symbol_count() #0 {
entry:
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tobool = icmp ne %struct.s_x2* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count = getelementptr inbounds %struct.s_x2, %struct.s_x2* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define %struct.symbol** @Symbol_arrayof() #0 {
entry:
  %retval = alloca %struct.symbol**, align 8
  %array = alloca %struct.symbol**, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %0 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %cmp = icmp eq %struct.s_x2* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symbol** null, %struct.symbol*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %count = getelementptr inbounds %struct.s_x2, %struct.s_x2* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4
  store i32 %2, i32* %size, align 4
  %3 = load i32, i32* %size, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 8) #4
  %4 = bitcast i8* %call to %struct.symbol**
  store %struct.symbol** %4, %struct.symbol*** %array, align 8
  %5 = load %struct.symbol**, %struct.symbol*** %array, align 8
  %tobool = icmp ne %struct.symbol** %5, null
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %size, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.s_x2*, %struct.s_x2** @x2a, align 8
  %tbl = getelementptr inbounds %struct.s_x2, %struct.s_x2* %9, i32 0, i32 2
  %10 = load %struct.s_x2node*, %struct.s_x2node** %tbl, align 8
  %arrayidx = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %10, i64 %idxprom
  %data = getelementptr inbounds %struct.s_x2node, %struct.s_x2node* %arrayidx, i32 0, i32 0
  %11 = load %struct.symbol*, %struct.symbol** %data, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.symbol**, %struct.symbol*** %array, align 8
  %arrayidx5 = getelementptr inbounds %struct.symbol*, %struct.symbol** %13, i64 %idxprom4
  store %struct.symbol* %11, %struct.symbol** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %15 = load %struct.symbol**, %struct.symbol*** %array, align 8
  store %struct.symbol** %15, %struct.symbol*** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %16 = load %struct.symbol**, %struct.symbol*** %retval
  ret %struct.symbol** %16
}

; Function Attrs: nounwind uwtable
define i32 @Configcmp(%struct.config* %a, %struct.config* %b) #0 {
entry:
  %a.addr = alloca %struct.config*, align 8
  %b.addr = alloca %struct.config*, align 8
  %x = alloca i32, align 4
  store %struct.config* %a, %struct.config** %a.addr, align 8
  store %struct.config* %b, %struct.config** %b.addr, align 8
  %0 = load %struct.config*, %struct.config** %a.addr, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %0, i32 0, i32 0
  %1 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 10
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.config*, %struct.config** %b.addr, align 8
  %rp1 = getelementptr inbounds %struct.config, %struct.config* %3, i32 0, i32 0
  %4 = load %struct.rule*, %struct.rule** %rp1, align 8
  %index2 = getelementptr inbounds %struct.rule, %struct.rule* %4, i32 0, i32 10
  %5 = load i32, i32* %index2, align 4
  %sub = sub nsw i32 %2, %5
  store i32 %sub, i32* %x, align 4
  %6 = load i32, i32* %x, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.config*, %struct.config** %a.addr, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 1
  %8 = load i32, i32* %dot, align 4
  %9 = load %struct.config*, %struct.config** %b.addr, align 8
  %dot3 = getelementptr inbounds %struct.config, %struct.config* %9, i32 0, i32 1
  %10 = load i32, i32* %dot3, align 4
  %sub4 = sub nsw i32 %8, %10
  store i32 %sub4, i32* %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %x, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @statecmp(%struct.config* %a, %struct.config* %b) #0 {
entry:
  %a.addr = alloca %struct.config*, align 8
  %b.addr = alloca %struct.config*, align 8
  %rc = alloca i32, align 4
  store %struct.config* %a, %struct.config** %a.addr, align 8
  store %struct.config* %b, %struct.config** %b.addr, align 8
  store i32 0, i32* %rc, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %1 = load %struct.config*, %struct.config** %a.addr, align 8
  %tobool = icmp ne %struct.config* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load %struct.config*, %struct.config** %b.addr, align 8
  %tobool1 = icmp ne %struct.config* %2, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %for.cond
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %3, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %4 = load %struct.config*, %struct.config** %a.addr, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 0
  %5 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 10
  %6 = load i32, i32* %index, align 4
  %7 = load %struct.config*, %struct.config** %b.addr, align 8
  %rp2 = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 0
  %8 = load %struct.rule*, %struct.rule** %rp2, align 8
  %index3 = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 10
  %9 = load i32, i32* %index3, align 4
  %sub = sub nsw i32 %6, %9
  store i32 %sub, i32* %rc, align 4
  %10 = load i32, i32* %rc, align 4
  %cmp4 = icmp eq i32 %10, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.config*, %struct.config** %a.addr, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %11, i32 0, i32 1
  %12 = load i32, i32* %dot, align 4
  %13 = load %struct.config*, %struct.config** %b.addr, align 8
  %dot5 = getelementptr inbounds %struct.config, %struct.config* %13, i32 0, i32 1
  %14 = load i32, i32* %dot5, align 4
  %sub6 = sub nsw i32 %12, %14
  store i32 %sub6, i32* %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.config*, %struct.config** %a.addr, align 8
  %bp = getelementptr inbounds %struct.config, %struct.config* %15, i32 0, i32 8
  %16 = load %struct.config*, %struct.config** %bp, align 8
  store %struct.config* %16, %struct.config** %a.addr, align 8
  %17 = load %struct.config*, %struct.config** %b.addr, align 8
  %bp7 = getelementptr inbounds %struct.config, %struct.config* %17, i32 0, i32 8
  %18 = load %struct.config*, %struct.config** %bp7, align 8
  store %struct.config* %18, %struct.config** %b.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i32, i32* %rc, align 4
  %cmp8 = icmp eq i32 %19, 0
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %for.end
  %20 = load %struct.config*, %struct.config** %a.addr, align 8
  %tobool10 = icmp ne %struct.config* %20, null
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.9
  store i32 1, i32* %rc, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.9
  %21 = load %struct.config*, %struct.config** %b.addr, align 8
  %tobool13 = icmp ne %struct.config* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  store i32 -1, i32* %rc, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %for.end
  %22 = load i32, i32* %rc, align 4
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @statehash(%struct.config* %a) #0 {
entry:
  %a.addr = alloca %struct.config*, align 8
  %h = alloca i32, align 4
  store %struct.config* %a, %struct.config** %a.addr, align 8
  store i32 0, i32* %h, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.config*, %struct.config** %a.addr, align 8
  %tobool = icmp ne %struct.config* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %1, 571
  %2 = load %struct.config*, %struct.config** %a.addr, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %2, i32 0, i32 0
  %3 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 10
  %4 = load i32, i32* %index, align 4
  %mul1 = mul nsw i32 %4, 37
  %add = add nsw i32 %mul, %mul1
  %5 = load %struct.config*, %struct.config** %a.addr, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %5, i32 0, i32 1
  %6 = load i32, i32* %dot, align 4
  %add2 = add nsw i32 %add, %6
  store i32 %add2, i32* %h, align 4
  %7 = load %struct.config*, %struct.config** %a.addr, align 8
  %bp = getelementptr inbounds %struct.config, %struct.config* %7, i32 0, i32 8
  %8 = load %struct.config*, %struct.config** %bp, align 8
  store %struct.config* %8, %struct.config** %a.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load i32, i32* %h, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define %struct.state* @State_new() #0 {
entry:
  %new = alloca %struct.state*, align 8
  %call = call noalias i8* @calloc(i64 1, i64 56) #4
  %0 = bitcast i8* %call to %struct.state*
  store %struct.state* %0, %struct.state** %new, align 8
  %1 = load %struct.state*, %struct.state** %new, align 8
  %cmp = icmp eq %struct.state* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @memory_error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.state*, %struct.state** %new, align 8
  ret %struct.state* %2
}

; Function Attrs: nounwind uwtable
define void @State_init() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tobool = icmp ne %struct.s_x3* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.s_x3*
  store %struct.s_x3* %1, %struct.s_x3** @x3a, align 8
  %2 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tobool1 = icmp ne %struct.s_x3* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size = getelementptr inbounds %struct.s_x3, %struct.s_x3* %3, i32 0, i32 0
  store i32 128, i32* %size, align 4
  %4 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count = getelementptr inbounds %struct.s_x3, %struct.s_x3* %4, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %call3 = call noalias i8* @malloc(i64 5120) #4
  %5 = bitcast i8* %call3 to %struct.s_x3node*
  %6 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl = getelementptr inbounds %struct.s_x3, %struct.s_x3* %6, i32 0, i32 2
  store %struct.s_x3node* %5, %struct.s_x3node** %tbl, align 8
  %7 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl4 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %7, i32 0, i32 2
  %8 = load %struct.s_x3node*, %struct.s_x3node** %tbl4, align 8
  %cmp = icmp eq %struct.s_x3node* %8, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %10 = bitcast %struct.s_x3* %9 to i8*
  call void @free(i8* %10) #4
  store %struct.s_x3* null, %struct.s_x3** @x3a, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.2
  %11 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl6 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %11, i32 0, i32 2
  %12 = load %struct.s_x3node*, %struct.s_x3node** %tbl6, align 8
  %arrayidx = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %12, i64 128
  %13 = bitcast %struct.s_x3node* %arrayidx to %struct.s_x3node**
  %14 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht = getelementptr inbounds %struct.s_x3, %struct.s_x3* %14, i32 0, i32 3
  store %struct.s_x3node** %13, %struct.s_x3node*** %ht, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %15, 128
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht8 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %17, i32 0, i32 3
  %18 = load %struct.s_x3node**, %struct.s_x3node*** %ht8, align 8
  %arrayidx9 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %18, i64 %idxprom
  store %struct.s_x3node* null, %struct.s_x3node** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.end.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @State_insert(%struct.state* %data, %struct.config* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.state*, align 8
  %key.addr = alloca %struct.config*, align 8
  %np = alloca %struct.s_x3node*, align 8
  %h = alloca i32, align 4
  %ph = alloca i32, align 4
  %i = alloca i32, align 4
  %size9 = alloca i32, align 4
  %array = alloca %struct.s_x3, align 8
  %oldnp = alloca %struct.s_x3node*, align 8
  %newnp = alloca %struct.s_x3node*, align 8
  store %struct.state* %data, %struct.state** %data.addr, align 8
  store %struct.config* %key, %struct.config** %key.addr, align 8
  %0 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %cmp = icmp eq %struct.s_x3* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.config*, %struct.config** %key.addr, align 8
  %call = call i32 @statehash(%struct.config* %1)
  store i32 %call, i32* %ph, align 4
  %2 = load i32, i32* %ph, align 4
  %3 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size = getelementptr inbounds %struct.s_x3, %struct.s_x3* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %4, 1
  %and = and i32 %2, %sub
  store i32 %and, i32* %h, align 4
  %5 = load i32, i32* %h, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht = getelementptr inbounds %struct.s_x3, %struct.s_x3* %6, i32 0, i32 3
  %7 = load %struct.s_x3node**, %struct.s_x3node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %7, i64 %idxprom
  %8 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx, align 8
  store %struct.s_x3node* %8, %struct.s_x3node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %9 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %tobool = icmp ne %struct.s_x3node* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %key1 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %10, i32 0, i32 1
  %11 = load %struct.config*, %struct.config** %key1, align 8
  %12 = load %struct.config*, %struct.config** %key.addr, align 8
  %call2 = call i32 @statecmp(%struct.config* %11, %struct.config* %12)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %13 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %next = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %13, i32 0, i32 2
  %14 = load %struct.s_x3node*, %struct.s_x3node** %next, align 8
  store %struct.s_x3node* %14, %struct.s_x3node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count = getelementptr inbounds %struct.s_x3, %struct.s_x3* %15, i32 0, i32 1
  %16 = load i32, i32* %count, align 4
  %17 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size6 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %17, i32 0, i32 0
  %18 = load i32, i32* %size6, align 4
  %cmp7 = icmp sge i32 %16, %18
  br i1 %cmp7, label %if.then.8, label %if.end.74

if.then.8:                                        ; preds = %while.end
  %19 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size10 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %19, i32 0, i32 0
  %20 = load i32, i32* %size10, align 4
  %mul = mul nsw i32 %20, 2
  store i32 %mul, i32* %size9, align 4
  %size11 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 0
  store i32 %mul, i32* %size11, align 4
  %21 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count12 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %21, i32 0, i32 1
  %22 = load i32, i32* %count12, align 4
  %count13 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 1
  store i32 %22, i32* %count13, align 4
  %23 = load i32, i32* %size9, align 4
  %conv = sext i32 %23 to i64
  %mul14 = mul i64 40, %conv
  %call15 = call noalias i8* @malloc(i64 %mul14) #4
  %24 = bitcast i8* %call15 to %struct.s_x3node*
  %tbl = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 2
  store %struct.s_x3node* %24, %struct.s_x3node** %tbl, align 8
  %tbl16 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 2
  %25 = load %struct.s_x3node*, %struct.s_x3node** %tbl16, align 8
  %cmp17 = icmp eq %struct.s_x3node* %25, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.8
  %26 = load i32, i32* %size9, align 4
  %idxprom21 = sext i32 %26 to i64
  %tbl22 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 2
  %27 = load %struct.s_x3node*, %struct.s_x3node** %tbl22, align 8
  %arrayidx23 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %27, i64 %idxprom21
  %28 = bitcast %struct.s_x3node* %arrayidx23 to %struct.s_x3node**
  %ht24 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  store %struct.s_x3node** %28, %struct.s_x3node*** %ht24, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %size9, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %ht28 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %32 = load %struct.s_x3node**, %struct.s_x3node*** %ht28, align 8
  %arrayidx29 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %32, i64 %idxprom27
  store %struct.s_x3node* null, %struct.s_x3node** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.70, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count31 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %35, i32 0, i32 1
  %36 = load i32, i32* %count31, align 4
  %cmp32 = icmp slt i32 %34, %36
  br i1 %cmp32, label %for.body.34, label %for.end.72

for.body.34:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl36 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %38, i32 0, i32 2
  %39 = load %struct.s_x3node*, %struct.s_x3node** %tbl36, align 8
  %arrayidx37 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %39, i64 %idxprom35
  store %struct.s_x3node* %arrayidx37, %struct.s_x3node** %oldnp, align 8
  %40 = load %struct.s_x3node*, %struct.s_x3node** %oldnp, align 8
  %key38 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %40, i32 0, i32 1
  %41 = load %struct.config*, %struct.config** %key38, align 8
  %call39 = call i32 @statehash(%struct.config* %41)
  %42 = load i32, i32* %size9, align 4
  %sub40 = sub nsw i32 %42, 1
  %and41 = and i32 %call39, %sub40
  store i32 %and41, i32* %h, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %tbl43 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 2
  %44 = load %struct.s_x3node*, %struct.s_x3node** %tbl43, align 8
  %arrayidx44 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %44, i64 %idxprom42
  store %struct.s_x3node* %arrayidx44, %struct.s_x3node** %newnp, align 8
  %45 = load i32, i32* %h, align 4
  %idxprom45 = sext i32 %45 to i64
  %ht46 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %46 = load %struct.s_x3node**, %struct.s_x3node*** %ht46, align 8
  %arrayidx47 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %46, i64 %idxprom45
  %47 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx47, align 8
  %tobool48 = icmp ne %struct.s_x3node* %47, null
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.body.34
  %48 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %next50 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %48, i32 0, i32 2
  %49 = load i32, i32* %h, align 4
  %idxprom51 = sext i32 %49 to i64
  %ht52 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %50 = load %struct.s_x3node**, %struct.s_x3node*** %ht52, align 8
  %arrayidx53 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %50, i64 %idxprom51
  %51 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx53, align 8
  %from = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %51, i32 0, i32 3
  store %struct.s_x3node** %next50, %struct.s_x3node*** %from, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %for.body.34
  %52 = load i32, i32* %h, align 4
  %idxprom55 = sext i32 %52 to i64
  %ht56 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %53 = load %struct.s_x3node**, %struct.s_x3node*** %ht56, align 8
  %arrayidx57 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %53, i64 %idxprom55
  %54 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx57, align 8
  %55 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %next58 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %55, i32 0, i32 2
  store %struct.s_x3node* %54, %struct.s_x3node** %next58, align 8
  %56 = load %struct.s_x3node*, %struct.s_x3node** %oldnp, align 8
  %key59 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %56, i32 0, i32 1
  %57 = load %struct.config*, %struct.config** %key59, align 8
  %58 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %key60 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %58, i32 0, i32 1
  store %struct.config* %57, %struct.config** %key60, align 8
  %59 = load %struct.s_x3node*, %struct.s_x3node** %oldnp, align 8
  %data61 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %59, i32 0, i32 0
  %60 = load %struct.state*, %struct.state** %data61, align 8
  %61 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %data62 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %61, i32 0, i32 0
  store %struct.state* %60, %struct.state** %data62, align 8
  %62 = load i32, i32* %h, align 4
  %idxprom63 = sext i32 %62 to i64
  %ht64 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %63 = load %struct.s_x3node**, %struct.s_x3node*** %ht64, align 8
  %arrayidx65 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %63, i64 %idxprom63
  %64 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %from66 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %64, i32 0, i32 3
  store %struct.s_x3node** %arrayidx65, %struct.s_x3node*** %from66, align 8
  %65 = load %struct.s_x3node*, %struct.s_x3node** %newnp, align 8
  %66 = load i32, i32* %h, align 4
  %idxprom67 = sext i32 %66 to i64
  %ht68 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %array, i32 0, i32 3
  %67 = load %struct.s_x3node**, %struct.s_x3node*** %ht68, align 8
  %arrayidx69 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %67, i64 %idxprom67
  store %struct.s_x3node* %65, %struct.s_x3node** %arrayidx69, align 8
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.54
  %68 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %68, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.30

for.end.72:                                       ; preds = %for.cond.30
  %69 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl73 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %69, i32 0, i32 2
  %70 = load %struct.s_x3node*, %struct.s_x3node** %tbl73, align 8
  %71 = bitcast %struct.s_x3node* %70 to i8*
  call void @free(i8* %71) #4
  %72 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %73 = bitcast %struct.s_x3* %72 to i8*
  %74 = bitcast %struct.s_x3* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 24, i32 8, i1 false)
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.72, %while.end
  %75 = load i32, i32* %ph, align 4
  %76 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size75 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %76, i32 0, i32 0
  %77 = load i32, i32* %size75, align 4
  %sub76 = sub nsw i32 %77, 1
  %and77 = and i32 %75, %sub76
  store i32 %and77, i32* %h, align 4
  %78 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count78 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %78, i32 0, i32 1
  %79 = load i32, i32* %count78, align 4
  %inc79 = add nsw i32 %79, 1
  store i32 %inc79, i32* %count78, align 4
  %idxprom80 = sext i32 %79 to i64
  %80 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl81 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %80, i32 0, i32 2
  %81 = load %struct.s_x3node*, %struct.s_x3node** %tbl81, align 8
  %arrayidx82 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %81, i64 %idxprom80
  store %struct.s_x3node* %arrayidx82, %struct.s_x3node** %np, align 8
  %82 = load %struct.config*, %struct.config** %key.addr, align 8
  %83 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %key83 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %83, i32 0, i32 1
  store %struct.config* %82, %struct.config** %key83, align 8
  %84 = load %struct.state*, %struct.state** %data.addr, align 8
  %85 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %data84 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %85, i32 0, i32 0
  store %struct.state* %84, %struct.state** %data84, align 8
  %86 = load i32, i32* %h, align 4
  %idxprom85 = sext i32 %86 to i64
  %87 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht86 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %87, i32 0, i32 3
  %88 = load %struct.s_x3node**, %struct.s_x3node*** %ht86, align 8
  %arrayidx87 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %88, i64 %idxprom85
  %89 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx87, align 8
  %tobool88 = icmp ne %struct.s_x3node* %89, null
  br i1 %tobool88, label %if.then.89, label %if.end.95

if.then.89:                                       ; preds = %if.end.74
  %90 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %next90 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %90, i32 0, i32 2
  %91 = load i32, i32* %h, align 4
  %idxprom91 = sext i32 %91 to i64
  %92 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht92 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %92, i32 0, i32 3
  %93 = load %struct.s_x3node**, %struct.s_x3node*** %ht92, align 8
  %arrayidx93 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %93, i64 %idxprom91
  %94 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx93, align 8
  %from94 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %94, i32 0, i32 3
  store %struct.s_x3node** %next90, %struct.s_x3node*** %from94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.89, %if.end.74
  %95 = load i32, i32* %h, align 4
  %idxprom96 = sext i32 %95 to i64
  %96 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht97 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %96, i32 0, i32 3
  %97 = load %struct.s_x3node**, %struct.s_x3node*** %ht97, align 8
  %arrayidx98 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %97, i64 %idxprom96
  %98 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx98, align 8
  %99 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %next99 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %99, i32 0, i32 2
  store %struct.s_x3node* %98, %struct.s_x3node** %next99, align 8
  %100 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %101 = load i32, i32* %h, align 4
  %idxprom100 = sext i32 %101 to i64
  %102 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht101 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %102, i32 0, i32 3
  %103 = load %struct.s_x3node**, %struct.s_x3node*** %ht101, align 8
  %arrayidx102 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %103, i64 %idxprom100
  store %struct.s_x3node* %100, %struct.s_x3node** %arrayidx102, align 8
  %104 = load i32, i32* %h, align 4
  %idxprom103 = sext i32 %104 to i64
  %105 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht104 = getelementptr inbounds %struct.s_x3, %struct.s_x3* %105, i32 0, i32 3
  %106 = load %struct.s_x3node**, %struct.s_x3node*** %ht104, align 8
  %arrayidx105 = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %106, i64 %idxprom103
  %107 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %from106 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %107, i32 0, i32 3
  store %struct.s_x3node** %arrayidx105, %struct.s_x3node*** %from106, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.95, %if.then.19, %if.then.4, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define %struct.state* @State_find(%struct.config* %key) #0 {
entry:
  %retval = alloca %struct.state*, align 8
  %key.addr = alloca %struct.config*, align 8
  %h = alloca i32, align 4
  %np = alloca %struct.s_x3node*, align 8
  store %struct.config* %key, %struct.config** %key.addr, align 8
  %0 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %cmp = icmp eq %struct.s_x3* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.state* null, %struct.state** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.config*, %struct.config** %key.addr, align 8
  %call = call i32 @statehash(%struct.config* %1)
  %2 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %size = getelementptr inbounds %struct.s_x3, %struct.s_x3* %2, i32 0, i32 0
  %3 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %3, 1
  %and = and i32 %call, %sub
  store i32 %and, i32* %h, align 4
  %4 = load i32, i32* %h, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %ht = getelementptr inbounds %struct.s_x3, %struct.s_x3* %5, i32 0, i32 3
  %6 = load %struct.s_x3node**, %struct.s_x3node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x3node*, %struct.s_x3node** %6, i64 %idxprom
  %7 = load %struct.s_x3node*, %struct.s_x3node** %arrayidx, align 8
  store %struct.s_x3node* %7, %struct.s_x3node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %8 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %tobool = icmp ne %struct.s_x3node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %key1 = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %9, i32 0, i32 1
  %10 = load %struct.config*, %struct.config** %key1, align 8
  %11 = load %struct.config*, %struct.config** %key.addr, align 8
  %call2 = call i32 @statecmp(%struct.config* %10, %struct.config* %11)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.end

if.end.5:                                         ; preds = %while.body
  %12 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %next = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %12, i32 0, i32 2
  %13 = load %struct.s_x3node*, %struct.s_x3node** %next, align 8
  store %struct.s_x3node* %13, %struct.s_x3node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.4, %while.cond
  %14 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %tobool6 = icmp ne %struct.s_x3node* %14, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %15 = load %struct.s_x3node*, %struct.s_x3node** %np, align 8
  %data = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %15, i32 0, i32 0
  %16 = load %struct.state*, %struct.state** %data, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.state* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.state* %cond, %struct.state** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %17 = load %struct.state*, %struct.state** %retval
  ret %struct.state* %17
}

; Function Attrs: nounwind uwtable
define %struct.state** @State_arrayof() #0 {
entry:
  %retval = alloca %struct.state**, align 8
  %array = alloca %struct.state**, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %0 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %cmp = icmp eq %struct.s_x3* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.state** null, %struct.state*** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %count = getelementptr inbounds %struct.s_x3, %struct.s_x3* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4
  store i32 %2, i32* %size, align 4
  %3 = load i32, i32* %size, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @malloc(i64 %mul) #4
  %4 = bitcast i8* %call to %struct.state**
  store %struct.state** %4, %struct.state*** %array, align 8
  %5 = load %struct.state**, %struct.state*** %array, align 8
  %tobool = icmp ne %struct.state** %5, null
  br i1 %tobool, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.1
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %size, align 4
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.s_x3*, %struct.s_x3** @x3a, align 8
  %tbl = getelementptr inbounds %struct.s_x3, %struct.s_x3* %9, i32 0, i32 2
  %10 = load %struct.s_x3node*, %struct.s_x3node** %tbl, align 8
  %arrayidx = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %10, i64 %idxprom
  %data = getelementptr inbounds %struct.s_x3node, %struct.s_x3node* %arrayidx, i32 0, i32 0
  %11 = load %struct.state*, %struct.state** %data, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.state**, %struct.state*** %array, align 8
  %arrayidx5 = getelementptr inbounds %struct.state*, %struct.state** %13, i64 %idxprom4
  store %struct.state* %11, %struct.state** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %15 = load %struct.state**, %struct.state*** %array, align 8
  store %struct.state** %15, %struct.state*** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %16 = load %struct.state**, %struct.state*** %retval
  ret %struct.state** %16
}

; Function Attrs: nounwind uwtable
define i32 @confighash(%struct.config* %a) #0 {
entry:
  %a.addr = alloca %struct.config*, align 8
  %h = alloca i32, align 4
  store %struct.config* %a, %struct.config** %a.addr, align 8
  store i32 0, i32* %h, align 4
  %0 = load i32, i32* %h, align 4
  %mul = mul nsw i32 %0, 571
  %1 = load %struct.config*, %struct.config** %a.addr, align 8
  %rp = getelementptr inbounds %struct.config, %struct.config* %1, i32 0, i32 0
  %2 = load %struct.rule*, %struct.rule** %rp, align 8
  %index = getelementptr inbounds %struct.rule, %struct.rule* %2, i32 0, i32 10
  %3 = load i32, i32* %index, align 4
  %mul1 = mul nsw i32 %3, 37
  %add = add nsw i32 %mul, %mul1
  %4 = load %struct.config*, %struct.config** %a.addr, align 8
  %dot = getelementptr inbounds %struct.config, %struct.config* %4, i32 0, i32 1
  %5 = load i32, i32* %dot, align 4
  %add2 = add nsw i32 %add, %5
  store i32 %add2, i32* %h, align 4
  %6 = load i32, i32* %h, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @Configtable_init() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tobool = icmp ne %struct.s_x4* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %call = call noalias i8* @malloc(i64 24) #4
  %1 = bitcast i8* %call to %struct.s_x4*
  store %struct.s_x4* %1, %struct.s_x4** @x4a, align 8
  %2 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tobool1 = icmp ne %struct.s_x4* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.11

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size = getelementptr inbounds %struct.s_x4, %struct.s_x4* %3, i32 0, i32 0
  store i32 64, i32* %size, align 4
  %4 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count = getelementptr inbounds %struct.s_x4, %struct.s_x4* %4, i32 0, i32 1
  store i32 0, i32* %count, align 4
  %call3 = call noalias i8* @malloc(i64 2048) #4
  %5 = bitcast i8* %call3 to %struct.s_x4node*
  %6 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl = getelementptr inbounds %struct.s_x4, %struct.s_x4* %6, i32 0, i32 2
  store %struct.s_x4node* %5, %struct.s_x4node** %tbl, align 8
  %7 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl4 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %7, i32 0, i32 2
  %8 = load %struct.s_x4node*, %struct.s_x4node** %tbl4, align 8
  %cmp = icmp eq %struct.s_x4node* %8, null
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then.2
  %9 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %10 = bitcast %struct.s_x4* %9 to i8*
  call void @free(i8* %10) #4
  store %struct.s_x4* null, %struct.s_x4** @x4a, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then.2
  %11 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl6 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %11, i32 0, i32 2
  %12 = load %struct.s_x4node*, %struct.s_x4node** %tbl6, align 8
  %arrayidx = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %12, i64 64
  %13 = bitcast %struct.s_x4node* %arrayidx to %struct.s_x4node**
  %14 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht = getelementptr inbounds %struct.s_x4, %struct.s_x4* %14, i32 0, i32 3
  store %struct.s_x4node** %13, %struct.s_x4node*** %ht, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %15 = load i32, i32* %i, align 4
  %cmp7 = icmp slt i32 %15, 64
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht8 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %17, i32 0, i32 3
  %18 = load %struct.s_x4node**, %struct.s_x4node*** %ht8, align 8
  %arrayidx9 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %18, i64 %idxprom
  store %struct.s_x4node* null, %struct.s_x4node** %arrayidx9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then.5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.end.10, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Configtable_insert(%struct.config* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.config*, align 8
  %np = alloca %struct.s_x4node*, align 8
  %h = alloca i32, align 4
  %ph = alloca i32, align 4
  %i = alloca i32, align 4
  %size9 = alloca i32, align 4
  %array = alloca %struct.s_x4, align 8
  %oldnp = alloca %struct.s_x4node*, align 8
  %newnp = alloca %struct.s_x4node*, align 8
  store %struct.config* %data, %struct.config** %data.addr, align 8
  %0 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %cmp = icmp eq %struct.s_x4* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.config*, %struct.config** %data.addr, align 8
  %call = call i32 @confighash(%struct.config* %1)
  store i32 %call, i32* %ph, align 4
  %2 = load i32, i32* %ph, align 4
  %3 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size = getelementptr inbounds %struct.s_x4, %struct.s_x4* %3, i32 0, i32 0
  %4 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %4, 1
  %and = and i32 %2, %sub
  store i32 %and, i32* %h, align 4
  %5 = load i32, i32* %h, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht = getelementptr inbounds %struct.s_x4, %struct.s_x4* %6, i32 0, i32 3
  %7 = load %struct.s_x4node**, %struct.s_x4node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %7, i64 %idxprom
  %8 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx, align 8
  store %struct.s_x4node* %8, %struct.s_x4node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.5, %if.end
  %9 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %tobool = icmp ne %struct.s_x4node* %9, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %data1 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %10, i32 0, i32 0
  %11 = load %struct.config*, %struct.config** %data1, align 8
  %12 = load %struct.config*, %struct.config** %data.addr, align 8
  %call2 = call i32 @Configcmp(%struct.config* %11, %struct.config* %12)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %while.body
  %13 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %next = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %13, i32 0, i32 1
  %14 = load %struct.s_x4node*, %struct.s_x4node** %next, align 8
  store %struct.s_x4node* %14, %struct.s_x4node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count = getelementptr inbounds %struct.s_x4, %struct.s_x4* %15, i32 0, i32 1
  %16 = load i32, i32* %count, align 4
  %17 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size6 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %17, i32 0, i32 0
  %18 = load i32, i32* %size6, align 4
  %cmp7 = icmp sge i32 %16, %18
  br i1 %cmp7, label %if.then.8, label %if.end.72

if.then.8:                                        ; preds = %while.end
  %19 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size10 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %19, i32 0, i32 0
  %20 = load i32, i32* %size10, align 4
  %mul = mul nsw i32 %20, 2
  store i32 %mul, i32* %size9, align 4
  %size11 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 0
  store i32 %mul, i32* %size11, align 4
  %21 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count12 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %21, i32 0, i32 1
  %22 = load i32, i32* %count12, align 4
  %count13 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 1
  store i32 %22, i32* %count13, align 4
  %23 = load i32, i32* %size9, align 4
  %conv = sext i32 %23 to i64
  %mul14 = mul i64 32, %conv
  %call15 = call noalias i8* @malloc(i64 %mul14) #4
  %24 = bitcast i8* %call15 to %struct.s_x4node*
  %tbl = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 2
  store %struct.s_x4node* %24, %struct.s_x4node** %tbl, align 8
  %tbl16 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 2
  %25 = load %struct.s_x4node*, %struct.s_x4node** %tbl16, align 8
  %cmp17 = icmp eq %struct.s_x4node* %25, null
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.8
  %26 = load i32, i32* %size9, align 4
  %idxprom21 = sext i32 %26 to i64
  %tbl22 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 2
  %27 = load %struct.s_x4node*, %struct.s_x4node** %tbl22, align 8
  %arrayidx23 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %27, i64 %idxprom21
  %28 = bitcast %struct.s_x4node* %arrayidx23 to %struct.s_x4node**
  %ht24 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  store %struct.s_x4node** %28, %struct.s_x4node*** %ht24, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* %size9, align 4
  %cmp25 = icmp slt i32 %29, %30
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %ht28 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %32 = load %struct.s_x4node**, %struct.s_x4node*** %ht28, align 8
  %arrayidx29 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %32, i64 %idxprom27
  store %struct.s_x4node* null, %struct.s_x4node** %arrayidx29, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.68, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count31 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %35, i32 0, i32 1
  %36 = load i32, i32* %count31, align 4
  %cmp32 = icmp slt i32 %34, %36
  br i1 %cmp32, label %for.body.34, label %for.end.70

for.body.34:                                      ; preds = %for.cond.30
  %37 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %37 to i64
  %38 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl36 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %38, i32 0, i32 2
  %39 = load %struct.s_x4node*, %struct.s_x4node** %tbl36, align 8
  %arrayidx37 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %39, i64 %idxprom35
  store %struct.s_x4node* %arrayidx37, %struct.s_x4node** %oldnp, align 8
  %40 = load %struct.s_x4node*, %struct.s_x4node** %oldnp, align 8
  %data38 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %40, i32 0, i32 0
  %41 = load %struct.config*, %struct.config** %data38, align 8
  %call39 = call i32 @confighash(%struct.config* %41)
  %42 = load i32, i32* %size9, align 4
  %sub40 = sub nsw i32 %42, 1
  %and41 = and i32 %call39, %sub40
  store i32 %and41, i32* %h, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %tbl43 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 2
  %44 = load %struct.s_x4node*, %struct.s_x4node** %tbl43, align 8
  %arrayidx44 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %44, i64 %idxprom42
  store %struct.s_x4node* %arrayidx44, %struct.s_x4node** %newnp, align 8
  %45 = load i32, i32* %h, align 4
  %idxprom45 = sext i32 %45 to i64
  %ht46 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %46 = load %struct.s_x4node**, %struct.s_x4node*** %ht46, align 8
  %arrayidx47 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %46, i64 %idxprom45
  %47 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx47, align 8
  %tobool48 = icmp ne %struct.s_x4node* %47, null
  br i1 %tobool48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.body.34
  %48 = load %struct.s_x4node*, %struct.s_x4node** %newnp, align 8
  %next50 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %48, i32 0, i32 1
  %49 = load i32, i32* %h, align 4
  %idxprom51 = sext i32 %49 to i64
  %ht52 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %50 = load %struct.s_x4node**, %struct.s_x4node*** %ht52, align 8
  %arrayidx53 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %50, i64 %idxprom51
  %51 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx53, align 8
  %from = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %51, i32 0, i32 2
  store %struct.s_x4node** %next50, %struct.s_x4node*** %from, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %for.body.34
  %52 = load i32, i32* %h, align 4
  %idxprom55 = sext i32 %52 to i64
  %ht56 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %53 = load %struct.s_x4node**, %struct.s_x4node*** %ht56, align 8
  %arrayidx57 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %53, i64 %idxprom55
  %54 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx57, align 8
  %55 = load %struct.s_x4node*, %struct.s_x4node** %newnp, align 8
  %next58 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %55, i32 0, i32 1
  store %struct.s_x4node* %54, %struct.s_x4node** %next58, align 8
  %56 = load %struct.s_x4node*, %struct.s_x4node** %oldnp, align 8
  %data59 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %56, i32 0, i32 0
  %57 = load %struct.config*, %struct.config** %data59, align 8
  %58 = load %struct.s_x4node*, %struct.s_x4node** %newnp, align 8
  %data60 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %58, i32 0, i32 0
  store %struct.config* %57, %struct.config** %data60, align 8
  %59 = load i32, i32* %h, align 4
  %idxprom61 = sext i32 %59 to i64
  %ht62 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %60 = load %struct.s_x4node**, %struct.s_x4node*** %ht62, align 8
  %arrayidx63 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %60, i64 %idxprom61
  %61 = load %struct.s_x4node*, %struct.s_x4node** %newnp, align 8
  %from64 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %61, i32 0, i32 2
  store %struct.s_x4node** %arrayidx63, %struct.s_x4node*** %from64, align 8
  %62 = load %struct.s_x4node*, %struct.s_x4node** %newnp, align 8
  %63 = load i32, i32* %h, align 4
  %idxprom65 = sext i32 %63 to i64
  %ht66 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %array, i32 0, i32 3
  %64 = load %struct.s_x4node**, %struct.s_x4node*** %ht66, align 8
  %arrayidx67 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %64, i64 %idxprom65
  store %struct.s_x4node* %62, %struct.s_x4node** %arrayidx67, align 8
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.54
  %65 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %65, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond.30

for.end.70:                                       ; preds = %for.cond.30
  %66 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl71 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %66, i32 0, i32 2
  %67 = load %struct.s_x4node*, %struct.s_x4node** %tbl71, align 8
  %68 = bitcast %struct.s_x4node* %67 to i8*
  call void @free(i8* %68) #4
  %69 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %70 = bitcast %struct.s_x4* %69 to i8*
  %71 = bitcast %struct.s_x4* %array to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %71, i64 24, i32 8, i1 false)
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.70, %while.end
  %72 = load i32, i32* %ph, align 4
  %73 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size73 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %73, i32 0, i32 0
  %74 = load i32, i32* %size73, align 4
  %sub74 = sub nsw i32 %74, 1
  %and75 = and i32 %72, %sub74
  store i32 %and75, i32* %h, align 4
  %75 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count76 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %75, i32 0, i32 1
  %76 = load i32, i32* %count76, align 4
  %inc77 = add nsw i32 %76, 1
  store i32 %inc77, i32* %count76, align 4
  %idxprom78 = sext i32 %76 to i64
  %77 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl79 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %77, i32 0, i32 2
  %78 = load %struct.s_x4node*, %struct.s_x4node** %tbl79, align 8
  %arrayidx80 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %78, i64 %idxprom78
  store %struct.s_x4node* %arrayidx80, %struct.s_x4node** %np, align 8
  %79 = load %struct.config*, %struct.config** %data.addr, align 8
  %80 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %data81 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %80, i32 0, i32 0
  store %struct.config* %79, %struct.config** %data81, align 8
  %81 = load i32, i32* %h, align 4
  %idxprom82 = sext i32 %81 to i64
  %82 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht83 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %82, i32 0, i32 3
  %83 = load %struct.s_x4node**, %struct.s_x4node*** %ht83, align 8
  %arrayidx84 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %83, i64 %idxprom82
  %84 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx84, align 8
  %tobool85 = icmp ne %struct.s_x4node* %84, null
  br i1 %tobool85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.72
  %85 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %next87 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %85, i32 0, i32 1
  %86 = load i32, i32* %h, align 4
  %idxprom88 = sext i32 %86 to i64
  %87 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht89 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %87, i32 0, i32 3
  %88 = load %struct.s_x4node**, %struct.s_x4node*** %ht89, align 8
  %arrayidx90 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %88, i64 %idxprom88
  %89 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx90, align 8
  %from91 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %89, i32 0, i32 2
  store %struct.s_x4node** %next87, %struct.s_x4node*** %from91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.86, %if.end.72
  %90 = load i32, i32* %h, align 4
  %idxprom93 = sext i32 %90 to i64
  %91 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht94 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %91, i32 0, i32 3
  %92 = load %struct.s_x4node**, %struct.s_x4node*** %ht94, align 8
  %arrayidx95 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %92, i64 %idxprom93
  %93 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx95, align 8
  %94 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %next96 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %94, i32 0, i32 1
  store %struct.s_x4node* %93, %struct.s_x4node** %next96, align 8
  %95 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %96 = load i32, i32* %h, align 4
  %idxprom97 = sext i32 %96 to i64
  %97 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht98 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %97, i32 0, i32 3
  %98 = load %struct.s_x4node**, %struct.s_x4node*** %ht98, align 8
  %arrayidx99 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %98, i64 %idxprom97
  store %struct.s_x4node* %95, %struct.s_x4node** %arrayidx99, align 8
  %99 = load i32, i32* %h, align 4
  %idxprom100 = sext i32 %99 to i64
  %100 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht101 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %100, i32 0, i32 3
  %101 = load %struct.s_x4node**, %struct.s_x4node*** %ht101, align 8
  %arrayidx102 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %101, i64 %idxprom100
  %102 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %from103 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %102, i32 0, i32 2
  store %struct.s_x4node** %arrayidx102, %struct.s_x4node*** %from103, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.92, %if.then.19, %if.then.4, %if.then
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define %struct.config* @Configtable_find(%struct.config* %key) #0 {
entry:
  %retval = alloca %struct.config*, align 8
  %key.addr = alloca %struct.config*, align 8
  %h = alloca i32, align 4
  %np = alloca %struct.s_x4node*, align 8
  store %struct.config* %key, %struct.config** %key.addr, align 8
  %0 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %cmp = icmp eq %struct.s_x4* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.config* null, %struct.config** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.config*, %struct.config** %key.addr, align 8
  %call = call i32 @confighash(%struct.config* %1)
  %2 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size = getelementptr inbounds %struct.s_x4, %struct.s_x4* %2, i32 0, i32 0
  %3 = load i32, i32* %size, align 4
  %sub = sub nsw i32 %3, 1
  %and = and i32 %call, %sub
  store i32 %and, i32* %h, align 4
  %4 = load i32, i32* %h, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht = getelementptr inbounds %struct.s_x4, %struct.s_x4* %5, i32 0, i32 3
  %6 = load %struct.s_x4node**, %struct.s_x4node*** %ht, align 8
  %arrayidx = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %6, i64 %idxprom
  %7 = load %struct.s_x4node*, %struct.s_x4node** %arrayidx, align 8
  store %struct.s_x4node* %7, %struct.s_x4node** %np, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %if.end
  %8 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %tobool = icmp ne %struct.s_x4node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %data = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %9, i32 0, i32 0
  %10 = load %struct.config*, %struct.config** %data, align 8
  %11 = load %struct.config*, %struct.config** %key.addr, align 8
  %call1 = call i32 @Configcmp(%struct.config* %10, %struct.config* %11)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  br label %while.end

if.end.4:                                         ; preds = %while.body
  %12 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %next = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %12, i32 0, i32 1
  %13 = load %struct.s_x4node*, %struct.s_x4node** %next, align 8
  store %struct.s_x4node* %13, %struct.s_x4node** %np, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.3, %while.cond
  %14 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %tobool5 = icmp ne %struct.s_x4node* %14, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  %15 = load %struct.s_x4node*, %struct.s_x4node** %np, align 8
  %data6 = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %15, i32 0, i32 0
  %16 = load %struct.config*, %struct.config** %data6, align 8
  br label %cond.end

cond.false:                                       ; preds = %while.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.config* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct.config* %cond, %struct.config** %retval
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %17 = load %struct.config*, %struct.config** %retval
  ret %struct.config* %17
}

; Function Attrs: nounwind uwtable
define void @Configtable_clear(i32 (...)* %f) #0 {
entry:
  %f.addr = alloca i32 (...)*, align 8
  %i = alloca i32, align 4
  store i32 (...)* %f, i32 (...)** %f.addr, align 8
  %0 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %cmp = icmp eq %struct.s_x4* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count = getelementptr inbounds %struct.s_x4, %struct.s_x4* %1, i32 0, i32 1
  %2 = load i32, i32* %count, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32 (...)*, i32 (...)** %f.addr, align 8
  %tobool = icmp ne i32 (...)* %3, null
  br i1 %tobool, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count3 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %5, i32 0, i32 1
  %6 = load i32, i32* %count3, align 4
  %cmp4 = icmp slt i32 %4, %6
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32 (...)*, i32 (...)** %f.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %tbl = getelementptr inbounds %struct.s_x4, %struct.s_x4* %9, i32 0, i32 2
  %10 = load %struct.s_x4node*, %struct.s_x4node** %tbl, align 8
  %arrayidx = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %10, i64 %idxprom
  %data = getelementptr inbounds %struct.s_x4node, %struct.s_x4node* %arrayidx, i32 0, i32 0
  %11 = load %struct.config*, %struct.config** %data, align 8
  %callee.knr.cast = bitcast i32 (...)* %7 to i32 (%struct.config*, ...)*
  %call = call i32 (%struct.config*, ...) %callee.knr.cast(%struct.config* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.5

if.end.5:                                         ; preds = %for.end, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %if.end.5
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %size = getelementptr inbounds %struct.s_x4, %struct.s_x4* %14, i32 0, i32 0
  %15 = load i32, i32* %size, align 4
  %cmp7 = icmp slt i32 %13, %15
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.6
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %ht = getelementptr inbounds %struct.s_x4, %struct.s_x4* %17, i32 0, i32 3
  %18 = load %struct.s_x4node**, %struct.s_x4node*** %ht, align 8
  %arrayidx10 = getelementptr inbounds %struct.s_x4node*, %struct.s_x4node** %18, i64 %idxprom9
  store %struct.s_x4node* null, %struct.s_x4node** %arrayidx10, align 8
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %19 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.6

for.end.13:                                       ; preds = %for.cond.6
  %20 = load %struct.s_x4*, %struct.s_x4** @x4a, align 8
  %count14 = getelementptr inbounds %struct.s_x4, %struct.s_x4* %20, i32 0, i32 1
  store i32 0, i32* %count14, align 4
  br label %return

return:                                           ; preds = %for.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %p = alloca i32, align 4
  %argv_child = alloca [4 x i8*], align 16
  %agg.tmp = alloca %union.__WAIT_STATUS, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %argc.addr, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %call = call i32 @fork() #4
  store i32 %call, i32* %p, align 4
  %3 = load i32, i32* %p, align 4
  %cmp4 = icmp eq i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %arrayinit.begin = getelementptr inbounds [4 x i8*], [4 x i8*]* %argv_child, i64 0, i64 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.160, i32 0, i32 0), i8** %arrayinit.begin
  %arrayinit.element = getelementptr inbounds i8*, i8** %arrayinit.begin, i64 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.161, i32 0, i32 0), i8** %arrayinit.element
  %arrayinit.element5 = getelementptr inbounds i8*, i8** %arrayinit.element, i64 1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %arrayinit.element5
  %arrayinit.element6 = getelementptr inbounds i8*, i8** %arrayinit.element5, i64 1
  store i8* null, i8** %arrayinit.element6
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %9, i64 %idxprom7
  %10 = load i8*, i8** %arrayidx8, align 8
  %call9 = call i8* @mybasename(i8* %10)
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.162, i32 0, i32 0), i8* %call9)
  %arraydecay = getelementptr inbounds [4 x i8*], [4 x i8*]* %argv_child, i32 0, i32 0
  %call11 = call i32 @lemon_main(i32 3, i8** %arraydecay)
  call void @exit(i32 %call11) #7
  unreachable

if.end:                                           ; preds = %for.body.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %__iptr = bitcast %union.__WAIT_STATUS* %agg.tmp to i32**
  store i32* %status, i32** %__iptr, align 8
  %coerce.dive = getelementptr %union.__WAIT_STATUS, %union.__WAIT_STATUS* %agg.tmp, i32 0, i32 0
  %11 = load %union.wait*, %union.wait** %coerce.dive, align 8
  %call12 = call i32 @wait(%union.wait* %11)
  %cmp13 = icmp eq i32 %call12, -1
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call14 = call i32* @__errno_location() #9
  %12 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %12, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %status, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %while.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i8**, i8*** %argv.addr, align 8
  %arrayidx19 = getelementptr inbounds i8*, i8** %18, i64 %idxprom18
  %19 = load i8*, i8** %arrayidx19, align 8
  %call20 = call i8* @mybasename(i8* %19)
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.163, i32 0, i32 0), i8* %call20)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.16, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end
  %21 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %21, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @fork() #1

declare i32 @wait(%union.wait*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define internal i32 @actioncmp(%struct.action* %ap1, %struct.action* %ap2) #0 {
entry:
  %ap1.addr = alloca %struct.action*, align 8
  %ap2.addr = alloca %struct.action*, align 8
  %rc = alloca i32, align 4
  store %struct.action* %ap1, %struct.action** %ap1.addr, align 8
  store %struct.action* %ap2, %struct.action** %ap2.addr, align 8
  %0 = load %struct.action*, %struct.action** %ap1.addr, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %0, i32 0, i32 0
  %1 = load %struct.symbol*, %struct.symbol** %sp, align 8
  %index = getelementptr inbounds %struct.symbol, %struct.symbol* %1, i32 0, i32 1
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.action*, %struct.action** %ap2.addr, align 8
  %sp1 = getelementptr inbounds %struct.action, %struct.action* %3, i32 0, i32 0
  %4 = load %struct.symbol*, %struct.symbol** %sp1, align 8
  %index2 = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 1
  %5 = load i32, i32* %index2, align 4
  %sub = sub nsw i32 %2, %5
  store i32 %sub, i32* %rc, align 4
  %6 = load i32, i32* %rc, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.action*, %struct.action** %ap1.addr, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %7, i32 0, i32 1
  %8 = load i32, i32* %type, align 4
  %9 = load %struct.action*, %struct.action** %ap2.addr, align 8
  %type3 = getelementptr inbounds %struct.action, %struct.action* %9, i32 0, i32 1
  %10 = load i32, i32* %type3, align 4
  %sub4 = sub nsw i32 %8, %10
  store i32 %sub4, i32* %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %rc, align 4
  %cmp5 = icmp eq i32 %11, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.action*, %struct.action** %ap1.addr, align 8
  %type6 = getelementptr inbounds %struct.action, %struct.action* %12, i32 0, i32 1
  %13 = load i32, i32* %type6, align 4
  %cmp7 = icmp eq i32 %13, 2
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %land.lhs.true
  %14 = load %struct.action*, %struct.action** %ap1.addr, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %14, i32 0, i32 2
  %rp = bitcast %union.anon* %x to %struct.rule**
  %15 = load %struct.rule*, %struct.rule** %rp, align 8
  %index9 = getelementptr inbounds %struct.rule, %struct.rule* %15, i32 0, i32 10
  %16 = load i32, i32* %index9, align 4
  %17 = load %struct.action*, %struct.action** %ap2.addr, align 8
  %x10 = getelementptr inbounds %struct.action, %struct.action* %17, i32 0, i32 2
  %rp11 = bitcast %union.anon* %x10 to %struct.rule**
  %18 = load %struct.rule*, %struct.rule** %rp11, align 8
  %index12 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 10
  %19 = load i32, i32* %index12, align 4
  %sub13 = sub nsw i32 %16, %19
  store i32 %sub13, i32* %rc, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %20 = load i32, i32* %rc, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @resolve_conflict(%struct.action* %apx, %struct.action* %apy, %struct.symbol* %errsym) #0 {
entry:
  %apx.addr = alloca %struct.action*, align 8
  %apy.addr = alloca %struct.action*, align 8
  %errsym.addr = alloca %struct.symbol*, align 8
  %spx = alloca %struct.symbol*, align 8
  %spy = alloca %struct.symbol*, align 8
  %errcnt = alloca i32, align 4
  store %struct.action* %apx, %struct.action** %apx.addr, align 8
  store %struct.action* %apy, %struct.action** %apy.addr, align 8
  store %struct.symbol* %errsym, %struct.symbol** %errsym.addr, align 8
  store i32 0, i32* %errcnt, align 4
  %0 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type = getelementptr inbounds %struct.action, %struct.action* %0, i32 0, i32 1
  %1 = load i32, i32* %type, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type1 = getelementptr inbounds %struct.action, %struct.action* %2, i32 0, i32 1
  %3 = load i32, i32* %type1, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type3 = getelementptr inbounds %struct.action, %struct.action* %4, i32 0, i32 1
  store i32 4, i32* %type3, align 4
  %5 = load i32, i32* %errcnt, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %errcnt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type4 = getelementptr inbounds %struct.action, %struct.action* %6, i32 0, i32 1
  %7 = load i32, i32* %type4, align 4
  %cmp5 = icmp eq i32 %7, 0
  br i1 %cmp5, label %land.lhs.true.6, label %if.else.54

land.lhs.true.6:                                  ; preds = %if.end
  %8 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type7 = getelementptr inbounds %struct.action, %struct.action* %8, i32 0, i32 1
  %9 = load i32, i32* %type7, align 4
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %if.then.9, label %if.else.54

if.then.9:                                        ; preds = %land.lhs.true.6
  %10 = load %struct.action*, %struct.action** %apx.addr, align 8
  %sp = getelementptr inbounds %struct.action, %struct.action* %10, i32 0, i32 0
  %11 = load %struct.symbol*, %struct.symbol** %sp, align 8
  store %struct.symbol* %11, %struct.symbol** %spx, align 8
  %12 = load %struct.action*, %struct.action** %apy.addr, align 8
  %x = getelementptr inbounds %struct.action, %struct.action* %12, i32 0, i32 2
  %rp = bitcast %union.anon* %x to %struct.rule**
  %13 = load %struct.rule*, %struct.rule** %rp, align 8
  %precsym = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 9
  %14 = load %struct.symbol*, %struct.symbol** %precsym, align 8
  store %struct.symbol* %14, %struct.symbol** %spy, align 8
  %15 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %cmp10 = icmp eq %struct.symbol* %15, null
  br i1 %cmp10, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %16 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 5
  %17 = load i32, i32* %prec, align 4
  %cmp11 = icmp slt i32 %17, 0
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false
  %18 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec13 = getelementptr inbounds %struct.symbol, %struct.symbol* %18, i32 0, i32 5
  %19 = load i32, i32* %prec13, align 4
  %cmp14 = icmp slt i32 %19, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false, %if.then.9
  %20 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type16 = getelementptr inbounds %struct.action, %struct.action* %20, i32 0, i32 1
  store i32 5, i32* %type16, align 4
  %21 = load i32, i32* %errcnt, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %errcnt, align 4
  br label %if.end.53

if.else:                                          ; preds = %lor.lhs.false.12
  %22 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec18 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 5
  %23 = load i32, i32* %prec18, align 4
  %24 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec19 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 5
  %25 = load i32, i32* %prec19, align 4
  %cmp20 = icmp sgt i32 %23, %25
  br i1 %cmp20, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %if.else
  %26 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type22 = getelementptr inbounds %struct.action, %struct.action* %26, i32 0, i32 1
  store i32 8, i32* %type22, align 4
  br label %if.end.52

if.else.23:                                       ; preds = %if.else
  %27 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec24 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 5
  %28 = load i32, i32* %prec24, align 4
  %29 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec25 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 5
  %30 = load i32, i32* %prec25, align 4
  %cmp26 = icmp slt i32 %28, %30
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else.23
  %31 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type28 = getelementptr inbounds %struct.action, %struct.action* %31, i32 0, i32 1
  store i32 7, i32* %type28, align 4
  br label %if.end.51

if.else.29:                                       ; preds = %if.else.23
  %32 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec30 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 5
  %33 = load i32, i32* %prec30, align 4
  %34 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec31 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 5
  %35 = load i32, i32* %prec31, align 4
  %cmp32 = icmp eq i32 %33, %35
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.37

land.lhs.true.33:                                 ; preds = %if.else.29
  %36 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %assoc = getelementptr inbounds %struct.symbol, %struct.symbol* %36, i32 0, i32 6
  %37 = load i32, i32* %assoc, align 4
  %cmp34 = icmp eq i32 %37, 1
  br i1 %cmp34, label %if.then.35, label %if.else.37

if.then.35:                                       ; preds = %land.lhs.true.33
  %38 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type36 = getelementptr inbounds %struct.action, %struct.action* %38, i32 0, i32 1
  store i32 8, i32* %type36, align 4
  br label %if.end.50

if.else.37:                                       ; preds = %land.lhs.true.33, %if.else.29
  %39 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec38 = getelementptr inbounds %struct.symbol, %struct.symbol* %39, i32 0, i32 5
  %40 = load i32, i32* %prec38, align 4
  %41 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec39 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 5
  %42 = load i32, i32* %prec39, align 4
  %cmp40 = icmp eq i32 %40, %42
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else.37
  %43 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %assoc42 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 6
  %44 = load i32, i32* %assoc42, align 4
  %cmp43 = icmp eq i32 %44, 0
  br i1 %cmp43, label %if.then.44, label %if.else.46

if.then.44:                                       ; preds = %land.lhs.true.41
  %45 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type45 = getelementptr inbounds %struct.action, %struct.action* %45, i32 0, i32 1
  store i32 7, i32* %type45, align 4
  br label %if.end.49

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else.37
  %46 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type47 = getelementptr inbounds %struct.action, %struct.action* %46, i32 0, i32 1
  store i32 5, i32* %type47, align 4
  %47 = load i32, i32* %errcnt, align 4
  %inc48 = add nsw i32 %47, 1
  store i32 %inc48, i32* %errcnt, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.44
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.35
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.27
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.21
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.15
  br label %if.end.100

if.else.54:                                       ; preds = %land.lhs.true.6, %if.end
  %48 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type55 = getelementptr inbounds %struct.action, %struct.action* %48, i32 0, i32 1
  %49 = load i32, i32* %type55, align 4
  %cmp56 = icmp eq i32 %49, 2
  br i1 %cmp56, label %land.lhs.true.57, label %if.else.98

land.lhs.true.57:                                 ; preds = %if.else.54
  %50 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type58 = getelementptr inbounds %struct.action, %struct.action* %50, i32 0, i32 1
  %51 = load i32, i32* %type58, align 4
  %cmp59 = icmp eq i32 %51, 2
  br i1 %cmp59, label %if.then.60, label %if.else.98

if.then.60:                                       ; preds = %land.lhs.true.57
  %52 = load %struct.action*, %struct.action** %apx.addr, align 8
  %x61 = getelementptr inbounds %struct.action, %struct.action* %52, i32 0, i32 2
  %rp62 = bitcast %union.anon* %x61 to %struct.rule**
  %53 = load %struct.rule*, %struct.rule** %rp62, align 8
  %precsym63 = getelementptr inbounds %struct.rule, %struct.rule* %53, i32 0, i32 9
  %54 = load %struct.symbol*, %struct.symbol** %precsym63, align 8
  store %struct.symbol* %54, %struct.symbol** %spx, align 8
  %55 = load %struct.action*, %struct.action** %apy.addr, align 8
  %x64 = getelementptr inbounds %struct.action, %struct.action* %55, i32 0, i32 2
  %rp65 = bitcast %union.anon* %x64 to %struct.rule**
  %56 = load %struct.rule*, %struct.rule** %rp65, align 8
  %precsym66 = getelementptr inbounds %struct.rule, %struct.rule* %56, i32 0, i32 9
  %57 = load %struct.symbol*, %struct.symbol** %precsym66, align 8
  store %struct.symbol* %57, %struct.symbol** %spy, align 8
  %58 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %cmp67 = icmp eq %struct.symbol* %58, null
  br i1 %cmp67, label %if.then.80, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %if.then.60
  %59 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %cmp69 = icmp eq %struct.symbol* %59, null
  br i1 %cmp69, label %if.then.80, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.68
  %60 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec71 = getelementptr inbounds %struct.symbol, %struct.symbol* %60, i32 0, i32 5
  %61 = load i32, i32* %prec71, align 4
  %cmp72 = icmp slt i32 %61, 0
  br i1 %cmp72, label %if.then.80, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.70
  %62 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec74 = getelementptr inbounds %struct.symbol, %struct.symbol* %62, i32 0, i32 5
  %63 = load i32, i32* %prec74, align 4
  %cmp75 = icmp slt i32 %63, 0
  br i1 %cmp75, label %if.then.80, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.73
  %64 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec77 = getelementptr inbounds %struct.symbol, %struct.symbol* %64, i32 0, i32 5
  %65 = load i32, i32* %prec77, align 4
  %66 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec78 = getelementptr inbounds %struct.symbol, %struct.symbol* %66, i32 0, i32 5
  %67 = load i32, i32* %prec78, align 4
  %cmp79 = icmp eq i32 %65, %67
  br i1 %cmp79, label %if.then.80, label %if.else.83

if.then.80:                                       ; preds = %lor.lhs.false.76, %lor.lhs.false.73, %lor.lhs.false.70, %lor.lhs.false.68, %if.then.60
  %68 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type81 = getelementptr inbounds %struct.action, %struct.action* %68, i32 0, i32 1
  store i32 6, i32* %type81, align 4
  %69 = load i32, i32* %errcnt, align 4
  %inc82 = add nsw i32 %69, 1
  store i32 %inc82, i32* %errcnt, align 4
  br label %if.end.97

if.else.83:                                       ; preds = %lor.lhs.false.76
  %70 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec84 = getelementptr inbounds %struct.symbol, %struct.symbol* %70, i32 0, i32 5
  %71 = load i32, i32* %prec84, align 4
  %72 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec85 = getelementptr inbounds %struct.symbol, %struct.symbol* %72, i32 0, i32 5
  %73 = load i32, i32* %prec85, align 4
  %cmp86 = icmp sgt i32 %71, %73
  br i1 %cmp86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.else.83
  %74 = load %struct.action*, %struct.action** %apy.addr, align 8
  %type88 = getelementptr inbounds %struct.action, %struct.action* %74, i32 0, i32 1
  store i32 8, i32* %type88, align 4
  br label %if.end.96

if.else.89:                                       ; preds = %if.else.83
  %75 = load %struct.symbol*, %struct.symbol** %spx, align 8
  %prec90 = getelementptr inbounds %struct.symbol, %struct.symbol* %75, i32 0, i32 5
  %76 = load i32, i32* %prec90, align 4
  %77 = load %struct.symbol*, %struct.symbol** %spy, align 8
  %prec91 = getelementptr inbounds %struct.symbol, %struct.symbol* %77, i32 0, i32 5
  %78 = load i32, i32* %prec91, align 4
  %cmp92 = icmp slt i32 %76, %78
  br i1 %cmp92, label %if.then.93, label %if.end.95

if.then.93:                                       ; preds = %if.else.89
  %79 = load %struct.action*, %struct.action** %apx.addr, align 8
  %type94 = getelementptr inbounds %struct.action, %struct.action* %79, i32 0, i32 1
  store i32 8, i32* %type94, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %if.else.89
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.87
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.80
  br label %if.end.99

if.else.98:                                       ; preds = %land.lhs.true.57, %if.else.54
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.end.97
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.53
  %80 = load i32, i32* %errcnt, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal i8* @merge(i8* %a, i8* %b, i32 (i8*, i8*)* %cmp, i32 %offset) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %cmp.addr = alloca i32 (i8*, i8*)*, align 8
  %offset.addr = alloca i32, align 4
  %ptr = alloca i8*, align 8
  %head = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  store i32 (i8*, i8*)* %cmp, i32 (i8*, i8*)** %cmp.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i8*, i8** %a.addr, align 8
  %cmp1 = icmp eq i8* %0, null
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %b.addr, align 8
  store i8* %1, i8** %head, align 8
  br label %if.end.34

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %b.addr, align 8
  %cmp2 = icmp eq i8* %2, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %3 = load i8*, i8** %a.addr, align 8
  store i8* %3, i8** %head, align 8
  br label %if.end.33

if.else.4:                                        ; preds = %if.else
  %4 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %5 = load i8*, i8** %a.addr, align 8
  %6 = load i8*, i8** %b.addr, align 8
  %call = call i32 %4(i8* %5, i8* %6)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else.4
  %7 = load i8*, i8** %a.addr, align 8
  store i8* %7, i8** %ptr, align 8
  %8 = load i8*, i8** %a.addr, align 8
  %9 = ptrtoint i8* %8 to i64
  %10 = load i32, i32* %offset.addr, align 4
  %conv = sext i32 %10 to i64
  %add = add i64 %9, %conv
  %11 = inttoptr i64 %add to i8**
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %a.addr, align 8
  br label %if.end

if.else.7:                                        ; preds = %if.else.4
  %13 = load i8*, i8** %b.addr, align 8
  store i8* %13, i8** %ptr, align 8
  %14 = load i8*, i8** %b.addr, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i32, i32* %offset.addr, align 4
  %conv8 = sext i32 %16 to i64
  %add9 = add i64 %15, %conv8
  %17 = inttoptr i64 %add9 to i8**
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %b.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.7, %if.then.6
  %19 = load i8*, i8** %ptr, align 8
  store i8* %19, i8** %head, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.end
  %20 = load i8*, i8** %a.addr, align 8
  %tobool = icmp ne i8* %20, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load i8*, i8** %b.addr, align 8
  %tobool10 = icmp ne i8* %21, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %tobool10, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %cmp.addr, align 8
  %24 = load i8*, i8** %a.addr, align 8
  %25 = load i8*, i8** %b.addr, align 8
  %call11 = call i32 %23(i8* %24, i8* %25)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.else.19

if.then.14:                                       ; preds = %while.body
  %26 = load i8*, i8** %a.addr, align 8
  %27 = load i8*, i8** %ptr, align 8
  %28 = ptrtoint i8* %27 to i64
  %29 = load i32, i32* %offset.addr, align 4
  %conv15 = sext i32 %29 to i64
  %add16 = add i64 %28, %conv15
  %30 = inttoptr i64 %add16 to i8**
  store i8* %26, i8** %30, align 8
  %31 = load i8*, i8** %a.addr, align 8
  store i8* %31, i8** %ptr, align 8
  %32 = load i8*, i8** %a.addr, align 8
  %33 = ptrtoint i8* %32 to i64
  %34 = load i32, i32* %offset.addr, align 4
  %conv17 = sext i32 %34 to i64
  %add18 = add i64 %33, %conv17
  %35 = inttoptr i64 %add18 to i8**
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %a.addr, align 8
  br label %if.end.24

if.else.19:                                       ; preds = %while.body
  %37 = load i8*, i8** %b.addr, align 8
  %38 = load i8*, i8** %ptr, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = load i32, i32* %offset.addr, align 4
  %conv20 = sext i32 %40 to i64
  %add21 = add i64 %39, %conv20
  %41 = inttoptr i64 %add21 to i8**
  store i8* %37, i8** %41, align 8
  %42 = load i8*, i8** %b.addr, align 8
  store i8* %42, i8** %ptr, align 8
  %43 = load i8*, i8** %b.addr, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i32, i32* %offset.addr, align 4
  %conv22 = sext i32 %45 to i64
  %add23 = add i64 %44, %conv22
  %46 = inttoptr i64 %add23 to i8**
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %b.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.19, %if.then.14
  br label %while.cond

while.end:                                        ; preds = %land.end
  %48 = load i8*, i8** %a.addr, align 8
  %tobool25 = icmp ne i8* %48, null
  br i1 %tobool25, label %if.then.26, label %if.else.29

if.then.26:                                       ; preds = %while.end
  %49 = load i8*, i8** %a.addr, align 8
  %50 = load i8*, i8** %ptr, align 8
  %51 = ptrtoint i8* %50 to i64
  %52 = load i32, i32* %offset.addr, align 4
  %conv27 = sext i32 %52 to i64
  %add28 = add i64 %51, %conv27
  %53 = inttoptr i64 %add28 to i8**
  store i8* %49, i8** %53, align 8
  br label %if.end.32

if.else.29:                                       ; preds = %while.end
  %54 = load i8*, i8** %b.addr, align 8
  %55 = load i8*, i8** %ptr, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load i32, i32* %offset.addr, align 4
  %conv30 = sext i32 %57 to i64
  %add31 = add i64 %56, %conv30
  %58 = inttoptr i64 %add31 to i8**
  store i8* %54, i8** %58, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.26
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.3
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then
  %59 = load i8*, i8** %head, align 8
  ret i8* %59
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
