; ModuleID = './MultiSource.Benchmarks.Prolangs-C/265.bison.output.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.reductions = type { %struct.reductions*, i16, i16, [1 x i16] }
%struct.shifts = type { %struct.shifts*, i16, i16, [1 x i16] }
%struct.errs = type { i16, [1 x i16] }
%struct.core = type { %struct.core*, %struct.core*, i16, i16, i16, [1 x i16] }

@semantic_parser = external global i32, align 4
@fguard = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [248 x i8] c"\0A#include \22%s\22\0Aextern int yyerror;\0Aextern int yycost;\0Aextern char * yymsg;\0Aextern YYSTYPE yyval;\0A\0Ayyguard(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  yyerror = 0;\0Ayycost = 0;\0A  yymsg = 0;\0Aswitch (n)\0A    {\00", align 1
@attrsfile = external global i8*, align 8
@faction = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [164 x i8] c"\0A#include \22%s\22\0Aextern YYSTYPE yyval;\0Aextern int yychar;yyaction(n, yyvsp, yylsp)\0Aregister int n;\0Aregister YYSTYPE *yyvsp;\0Aregister YYLTYPE *yylsp;\0A{\0A  switch (n)\0A{\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"\0A  switch (yyn) {\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A    }\0A}\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@fattrs = external global %struct._IO_FILE*, align 8
@ftable = external global %struct._IO_FILE*, align 8
@debugflag = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"#define YYDEBUG\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"#include <stdio.h>\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"#ifndef __STDC__\0A#define const\0A#endif\0A\0A\00", align 1
@ritem = external global i16*, align 8
@translations = external global i32, align 4
@.str.9 = private unnamed_addr constant [69 x i8] c"\0A#define YYTRANSLATE(x) ((unsigned)(x) <= %d ? yytranslate[x] : %d)\0A\00", align 1
@max_user_token_number = external global i32, align 4
@nsyms = external global i32, align 4
@ntokens = external global i32, align 4
@.str.10 = private unnamed_addr constant [43 x i8] c"\0Astatic const char yytranslate[] = {     0\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\0Astatic const short yytranslate[] = {     0\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@token_translations = external global i16*, align 8
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\0A#define YYTRANSLATE(x) (x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yyprhs[] = {     0\00", align 1
@nrules = external global i32, align 4
@rrhs = external global i16*, align 8
@.str.16 = private unnamed_addr constant [39 x i8] c"\0A};\0A\0Astatic const short yyrhs[] = {%6d\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"     0\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yystos[] = {     0\00", align 1
@nstates = external global i32, align 4
@accessing_symbol = external global i16*, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"\0Astatic const short yyrline[] = {     0\00", align 1
@rline = external global i16*, align 8
@.str.20 = private unnamed_addr constant [51 x i8] c"\0A};\0A\0Astatic const char * const yytname[] = {     0\00", align 1
@tags = external global i8**, align 8
@.str.21 = private unnamed_addr constant [4 x i8] c"\5C%c\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"\5Ct\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"\5Cb\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr1[] = {     0\00", align 1
@rlhs = external global i16*, align 8
@.str.27 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yyr2[] = {     0\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"%6d\0A};\0A\00", align 1
@nitems = external global i32, align 4
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYFINAL\09\09%d\0A\00", align 1
@final_state = external global i32, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"#define\09YYFLAG\09\09%d\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"#define\09YYNTBASE\09%d\0A\00", align 1
@nvars = external global i32, align 4
@nvectors = internal global i32 0, align 4
@froms = internal global i16** null, align 8
@tos = internal global i16** null, align 8
@tally = internal global i16* null, align 8
@width = internal global i16* null, align 8
@lookaheads = external global i16*, align 8
@LA = external global i32*, align 8
@LAruleno = external global i16*, align 8
@goto_map = external global i16*, align 8
@from_state = external global i16*, align 8
@to_state = external global i16*, align 8
@actrow = internal global i16* null, align 8
@.str.32 = private unnamed_addr constant [38 x i8] c"\0Astatic const short yydefact[] = {%6d\00", align 1
@reduction_table = external global %struct.reductions**, align 8
@tokensetsize = external global i32, align 4
@shift_table = external global %struct.shifts**, align 8
@error_token_number = external global i32, align 4
@err_table = external global %struct.errs**, align 8
@consistent = external global i8*, align 8
@state_count = internal global i16* null, align 8
@.str.33 = private unnamed_addr constant [39 x i8] c"\0Astatic const short yydefgoto[] = {%6d\00", align 1
@order = internal global i16* null, align 8
@nentries = internal global i32 0, align 4
@base = internal global i16* null, align 8
@pos = internal global i16* null, align 8
@table = internal global i16* null, align 8
@check = internal global i16* null, align 8
@lowzero = internal global i32 0, align 4
@high = internal global i32 0, align 4
@.str.34 = private unnamed_addr constant [12 x i8] c"pack_vector\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"maximum table size (%d) exceeded\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"\0Astatic const short yypact[] = {%6d\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"\0A};\0A\0Astatic const short yypgoto[] = {%6d\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"\0A\0A#define\09YYLAST\09\09%d\0A\0A\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yytable[] = {%6d\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"\0Astatic const short yycheck[] = {%6d\00", align 1
@pure_parser = external global i32, align 4
@.str.41 = private unnamed_addr constant [21 x i8] c"#define YYIMPURE 1\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [19 x i8] c"#define YYPURE 1\0A\0A\00", align 1
@fparser = external global %struct._IO_FILE*, align 8
@nolinesflag = external global i32, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"#lin\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"#li\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"#l\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"#line %d \22%s\22\0A\00", align 1
@lineno = external global i32, align 4
@infile = external global i8*, align 8
@finput = external global %struct._IO_FILE*, align 8
@state_table = external global %struct.core**, align 8
@first_state = external global %struct.core*, align 8
@first_shift = external global %struct.shifts*, align 8
@first_reduction = external global %struct.reductions*, align 8

; Function Attrs: nounwind uwtable
define void @output_headers() #0 {
entry:
  %0 = load i32, i32* @semantic_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %2 = load i8*, i8** @attrsfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([248 x i8], [248 x i8]* @.str, i32 0, i32 0), i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %4 = load i32, i32* @semantic_parser, align 4
  %tobool1 = icmp ne i32 %4, 0
  %cond = select i1 %tobool1, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)
  %5 = load i8*, i8** @attrsfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* %cond, i8* %5)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @output_trailers() #0 {
entry:
  %0 = load i32, i32* @semantic_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fguard, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @output() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i32, i32* @semantic_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  call void @rewind(%struct._IO_FILE* %1)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @fattrs, align 8
  %call = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %call, i32* %c, align 4
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %c, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 @_IO_putc(i32 %3, %struct._IO_FILE* %4)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %entry
  %5 = load i32, i32* @debugflag, align 4
  %tobool2 = icmp ne i32 %5, 0
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %7 = load i32, i32* @semantic_parser, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %9 = load i8*, i8** @attrsfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0))
  call void @free_itemsets()
  call void @output_defines()
  call void @output_token_translations()
  %12 = load i32, i32* @semantic_parser, align 4
  %tobool12 = icmp ne i32 %12, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  call void @output_gram()
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.end.9
  %13 = load i16*, i16** @ritem, align 8
  %tobool15 = icmp ne i16* %13, null
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.14
  %14 = load i16*, i16** @ritem, align 8
  %15 = bitcast i16* %14 to i8*
  call void @free(i8* %15) #4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end.14
  %16 = load i32, i32* @semantic_parser, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.17
  call void @output_stos()
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.17
  call void @output_rule_data()
  call void @output_actions()
  call void @output_parser()
  call void @output_program()
  ret void
}

declare void @rewind(%struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @free_itemsets() #0 {
entry:
  %cp = alloca %struct.core*, align 8
  %cptmp = alloca %struct.core*, align 8
  %0 = load %struct.core**, %struct.core*** @state_table, align 8
  %tobool = icmp ne %struct.core** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.core**, %struct.core*** @state_table, align 8
  %2 = bitcast %struct.core** %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.core*, %struct.core** @first_state, align 8
  store %struct.core* %3, %struct.core** %cp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.core*, %struct.core** %cp, align 8
  %tobool1 = icmp ne %struct.core* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.core*, %struct.core** %cp, align 8
  %next = getelementptr inbounds %struct.core, %struct.core* %5, i32 0, i32 0
  %6 = load %struct.core*, %struct.core** %next, align 8
  store %struct.core* %6, %struct.core** %cptmp, align 8
  %7 = load %struct.core*, %struct.core** %cp, align 8
  %tobool2 = icmp ne %struct.core* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.core*, %struct.core** %cp, align 8
  %9 = bitcast %struct.core* %8 to i8*
  call void @free(i8* %9) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %10 = load %struct.core*, %struct.core** %cptmp, align 8
  store %struct.core* %10, %struct.core** %cp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_defines() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %1 = load i32, i32* @final_state, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i32 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i32 -32768)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i32, i32* @ntokens, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i32 %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_token_translations() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load i32, i32* @translations, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %2 = load i32, i32* @max_user_token_number, align 4
  %3 = load i32, i32* @nsyms, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i32 0, i32 0), i32 %2, i32 %3)
  %4 = load i32, i32* @ntokens, align 4
  %cmp = icmp slt i32 %4, 127
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.1
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @max_user_token_number, align 4
  %cmp4 = icmp sle i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call5 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %9)
  %10 = load i32, i32* %j, align 4
  %cmp6 = icmp sge i32 %10, 10
  br i1 %cmp6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %11)
  store i32 1, i32* %j, align 4
  br label %if.end.10

if.else.9:                                        ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.7
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i16*, i16** @token_translations, align 8
  %arrayidx = getelementptr inbounds i16, i16* %15, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %16 to i32
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %17 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %17, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.16

if.else.14:                                       ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_gram() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sp = alloca i16*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @nrules, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %3)
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp sge i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @rrhs, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %10 to i32
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %13 = load i16*, i16** @ritem, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %13, i64 0
  %14 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %14 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0), i32 %conv7)
  store i32 10, i32* %j, align 4
  %15 = load i16*, i16** @ritem, align 8
  %add.ptr = getelementptr inbounds i16, i16* %15, i64 1
  store i16* %add.ptr, i16** %sp, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.28, %for.end
  %16 = load i16*, i16** %sp, align 8
  %17 = load i16, i16* %16, align 2
  %tobool = icmp ne i16 %17, 0
  br i1 %tobool, label %for.body.10, label %for.end.29

for.body.10:                                      ; preds = %for.cond.9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call11 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %18)
  %19 = load i32, i32* %j, align 4
  %cmp12 = icmp sge i32 %19, 10
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %for.body.10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call15 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %20)
  store i32 1, i32* %j, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %for.body.10
  %21 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %j, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %22 = load i16*, i16** %sp, align 8
  %23 = load i16, i16* %22, align 2
  %conv19 = sext i16 %23 to i32
  %cmp20 = icmp sgt i32 %conv19, 0
  br i1 %cmp20, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.end.18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %25 = load i16*, i16** %sp, align 8
  %26 = load i16, i16* %25, align 2
  %conv23 = sext i16 %26 to i32
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv23)
  br label %if.end.27

if.else.25:                                       ; preds = %if.end.18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.22
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %28 = load i16*, i16** %sp, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %28, i32 1
  store i16* %incdec.ptr, i16** %sp, align 8
  br label %for.cond.9

for.end.29:                                       ; preds = %for.cond.9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @output_stos() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %3)
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp sge i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %10 to i32
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_rule_data() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i8*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @nrules, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %3)
  %4 = load i32, i32* %j, align 4
  %cmp2 = icmp sge i32 %4, 10
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %5)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @rline, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %10 to i32
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %11, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.20, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.73, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @ntokens, align 4
  %cmp8 = icmp sle i32 %13, %14
  br i1 %cmp8, label %for.body.10, label %for.end.75

for.body.10:                                      ; preds = %for.cond.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call11 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %15)
  %16 = load i32, i32* %j, align 4
  %cmp12 = icmp sge i32 %16, 10
  br i1 %cmp12, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %for.body.10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call15 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %17)
  store i32 1, i32* %j, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %for.body.10
  %18 = load i32, i32* %j, align 4
  %inc17 = add nsw i32 %18, 1
  store i32 %inc17, i32* %j, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call19 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %19)
  %20 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %20 to i64
  %21 = load i8**, i8*** @tags, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %21, i64 %idxprom20
  %22 = load i8*, i8** %arrayidx21, align 8
  store i8* %22, i8** %p, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.70, %if.end.18
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %tobool = icmp ne i8 %24, 0
  br i1 %tobool, label %for.body.23, label %for.end.71

for.body.23:                                      ; preds = %for.cond.22
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv24 = sext i8 %26 to i32
  %cmp25 = icmp eq i32 %conv24, 34
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.23
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv27 = sext i8 %28 to i32
  %cmp28 = icmp eq i32 %conv27, 92
  br i1 %cmp28, label %if.then.30, label %if.else.33

if.then.30:                                       ; preds = %lor.lhs.false, %for.body.23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %30 = load i8*, i8** %p, align 8
  %31 = load i8, i8* %30, align 1
  %conv31 = sext i8 %31 to i32
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 %conv31)
  br label %if.end.69

if.else.33:                                       ; preds = %lor.lhs.false
  %32 = load i8*, i8** %p, align 8
  %33 = load i8, i8* %32, align 1
  %conv34 = sext i8 %33 to i32
  %cmp35 = icmp eq i32 %conv34, 10
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.33
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.68

if.else.39:                                       ; preds = %if.else.33
  %35 = load i8*, i8** %p, align 8
  %36 = load i8, i8* %35, align 1
  %conv40 = sext i8 %36 to i32
  %cmp41 = icmp eq i32 %conv40, 9
  br i1 %cmp41, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.else.39
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.67

if.else.45:                                       ; preds = %if.else.39
  %38 = load i8*, i8** %p, align 8
  %39 = load i8, i8* %38, align 1
  %conv46 = sext i8 %39 to i32
  %cmp47 = icmp eq i32 %conv46, 8
  br i1 %cmp47, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %if.else.45
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.66

if.else.51:                                       ; preds = %if.else.45
  %41 = load i8*, i8** %p, align 8
  %42 = load i8, i8* %41, align 1
  %conv52 = sext i8 %42 to i32
  %cmp53 = icmp slt i32 %conv52, 32
  br i1 %cmp53, label %if.then.59, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %if.else.51
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv56 = sext i8 %44 to i32
  %cmp57 = icmp sge i32 %conv56, 127
  br i1 %cmp57, label %if.then.59, label %if.else.62

if.then.59:                                       ; preds = %lor.lhs.false.55, %if.else.51
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %46 = load i8*, i8** %p, align 8
  %47 = load i8, i8* %46, align 1
  %conv60 = sext i8 %47 to i32
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 %conv60)
  br label %if.end.65

if.else.62:                                       ; preds = %lor.lhs.false.55
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv63 = sext i8 %49 to i32
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call64 = call i32 @_IO_putc(i32 %conv63, %struct._IO_FILE* %50)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.59
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.49
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.43
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.37
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.30
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %51 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond.22

for.end.71:                                       ; preds = %for.cond.22
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call72 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %52)
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.end.71
  %53 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %53, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond.7

for.end.75:                                       ; preds = %for.cond.7
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.93, %for.end.75
  %55 = load i32, i32* %i, align 4
  %56 = load i32, i32* @nrules, align 4
  %cmp78 = icmp sle i32 %55, %56
  br i1 %cmp78, label %for.body.80, label %for.end.95

for.body.80:                                      ; preds = %for.cond.77
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call81 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %57)
  %58 = load i32, i32* %j, align 4
  %cmp82 = icmp sge i32 %58, 10
  br i1 %cmp82, label %if.then.84, label %if.else.86

if.then.84:                                       ; preds = %for.body.80
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call85 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %59)
  store i32 1, i32* %j, align 4
  br label %if.end.88

if.else.86:                                       ; preds = %for.body.80
  %60 = load i32, i32* %j, align 4
  %inc87 = add nsw i32 %60, 1
  store i32 %inc87, i32* %j, align 4
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.86, %if.then.84
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %62 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %62 to i64
  %63 = load i16*, i16** @rlhs, align 8
  %arrayidx90 = getelementptr inbounds i16, i16* %63, i64 %idxprom89
  %64 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %64 to i32
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv91)
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.88
  %65 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %65, 1
  store i32 %inc94, i32* %i, align 4
  br label %for.cond.77

for.end.95:                                       ; preds = %for.cond.77
  %66 = load i16*, i16** @rlhs, align 8
  %add.ptr = getelementptr inbounds i16, i16* %66, i64 1
  %tobool96 = icmp ne i16* %add.ptr, null
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %for.end.95
  %67 = load i16*, i16** @rlhs, align 8
  %add.ptr98 = getelementptr inbounds i16, i16* %67, i64 1
  %68 = bitcast i16* %add.ptr98 to i8*
  call void @free(i8* %68) #4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %for.end.95
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i32 0, i32 0))
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.121, %if.end.99
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* @nrules, align 4
  %cmp102 = icmp slt i32 %70, %71
  br i1 %cmp102, label %for.body.104, label %for.end.123

for.body.104:                                     ; preds = %for.cond.101
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call105 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %72)
  %73 = load i32, i32* %j, align 4
  %cmp106 = icmp sge i32 %73, 10
  br i1 %cmp106, label %if.then.108, label %if.else.110

if.then.108:                                      ; preds = %for.body.104
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call109 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %74)
  store i32 1, i32* %j, align 4
  br label %if.end.112

if.else.110:                                      ; preds = %for.body.104
  %75 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %75, 1
  store i32 %inc111, i32* %j, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.108
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %77 = load i32, i32* %i, align 4
  %add = add nsw i32 %77, 1
  %idxprom113 = sext i32 %add to i64
  %78 = load i16*, i16** @rrhs, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %78, i64 %idxprom113
  %79 = load i16, i16* %arrayidx114, align 2
  %conv115 = sext i16 %79 to i32
  %80 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %80 to i64
  %81 = load i16*, i16** @rrhs, align 8
  %arrayidx117 = getelementptr inbounds i16, i16* %81, i64 %idxprom116
  %82 = load i16, i16* %arrayidx117, align 2
  %conv118 = sext i16 %82 to i32
  %sub = sub nsw i32 %conv115, %conv118
  %sub119 = sub nsw i32 %sub, 1
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %sub119)
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.112
  %83 = load i32, i32* %i, align 4
  %inc122 = add nsw i32 %83, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond.101

for.end.123:                                      ; preds = %for.cond.101
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call124 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %84)
  %85 = load i32, i32* %j, align 4
  %cmp125 = icmp sge i32 %85, 10
  br i1 %cmp125, label %if.then.127, label %if.end.129

if.then.127:                                      ; preds = %for.end.123
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call128 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %86)
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.127, %for.end.123
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %88 = load i32, i32* @nitems, align 4
  %89 = load i32, i32* @nrules, align 4
  %idxprom130 = sext i32 %89 to i64
  %90 = load i16*, i16** @rrhs, align 8
  %arrayidx131 = getelementptr inbounds i16, i16* %90, i64 %idxprom130
  %91 = load i16, i16* %arrayidx131, align 2
  %conv132 = sext i16 %91 to i32
  %sub133 = sub nsw i32 %88, %conv132
  %sub134 = sub nsw i32 %sub133, 1
  %call135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i32 %sub134)
  %92 = load i16*, i16** @rrhs, align 8
  %add.ptr136 = getelementptr inbounds i16, i16* %92, i64 1
  %tobool137 = icmp ne i16* %add.ptr136, null
  br i1 %tobool137, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %if.end.129
  %93 = load i16*, i16** @rrhs, align 8
  %add.ptr139 = getelementptr inbounds i16, i16* %93, i64 1
  %94 = bitcast i16* %add.ptr139 to i8*
  call void @free(i8* %94) #4
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %if.end.129
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_actions() #0 {
entry:
  %0 = load i32, i32* @nstates, align 4
  %1 = load i32, i32* @nvars, align 4
  %add = add nsw i32 %0, %1
  store i32 %add, i32* @nvectors, align 4
  %2 = load i32, i32* @nvectors, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %3 = bitcast i8* %call to i16**
  store i16** %3, i16*** @froms, align 8
  %4 = load i32, i32* @nvectors, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 8
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %5 = bitcast i8* %call5 to i16**
  store i16** %5, i16*** @tos, align 8
  %6 = load i32, i32* @nvectors, align 4
  %conv6 = sext i32 %6 to i64
  %mul7 = mul i64 %conv6, 2
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv8)
  %7 = bitcast i8* %call9 to i16*
  store i16* %7, i16** @tally, align 8
  %8 = load i32, i32* @nvectors, align 4
  %conv10 = sext i32 %8 to i64
  %mul11 = mul i64 %conv10, 2
  %conv12 = trunc i64 %mul11 to i32
  %call13 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv12)
  %9 = bitcast i8* %call13 to i16*
  store i16* %9, i16** @width, align 8
  call void @token_actions()
  call void @free_shifts()
  call void @free_reductions()
  %10 = load i16*, i16** @lookaheads, align 8
  %tobool = icmp ne i16* %10, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i16*, i16** @lookaheads, align 8
  %12 = bitcast i16* %11 to i8*
  call void @free(i8* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32*, i32** @LA, align 8
  %tobool14 = icmp ne i32* %13, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  %14 = load i32*, i32** @LA, align 8
  %15 = bitcast i32* %14 to i8*
  call void @free(i8* %15) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end
  %16 = load i16*, i16** @LAruleno, align 8
  %tobool17 = icmp ne i16* %16, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %17 = load i16*, i16** @LAruleno, align 8
  %18 = bitcast i16* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  %19 = load i16*, i16** @accessing_symbol, align 8
  %tobool20 = icmp ne i16* %19, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %20 = load i16*, i16** @accessing_symbol, align 8
  %21 = bitcast i16* %20 to i8*
  call void @free(i8* %21) #4
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  call void @goto_actions()
  %22 = load i16*, i16** @goto_map, align 8
  %23 = load i32, i32* @ntokens, align 4
  %idx.ext = sext i32 %23 to i64
  %add.ptr = getelementptr inbounds i16, i16* %22, i64 %idx.ext
  %tobool23 = icmp ne i16* %add.ptr, null
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.22
  %24 = load i16*, i16** @goto_map, align 8
  %25 = load i32, i32* @ntokens, align 4
  %idx.ext25 = sext i32 %25 to i64
  %add.ptr26 = getelementptr inbounds i16, i16* %24, i64 %idx.ext25
  %26 = bitcast i16* %add.ptr26 to i8*
  call void @free(i8* %26) #4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.22
  %27 = load i16*, i16** @from_state, align 8
  %tobool28 = icmp ne i16* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.27
  %28 = load i16*, i16** @from_state, align 8
  %29 = bitcast i16* %28 to i8*
  call void @free(i8* %29) #4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.27
  %30 = load i16*, i16** @to_state, align 8
  %tobool31 = icmp ne i16* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  %31 = load i16*, i16** @to_state, align 8
  %32 = bitcast i16* %31 to i8*
  call void @free(i8* %32) #4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end.30
  call void @sort_actions()
  call void @pack_table()
  call void @output_base()
  call void @output_table()
  call void @output_check()
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_parser() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load i32, i32* @pure_parser, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call3 = call i32 @feof(%struct._IO_FILE* %4) #4
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  br label %while.end.62

if.end.6:                                         ; preds = %lor.lhs.false
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call7 = call i32 @_IO_getc(%struct._IO_FILE* %5)
  store i32 %call7, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.60, %if.end.6
  %6 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %while.body, label %while.end.62

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* @nolinesflag, align 4
  %tobool8 = icmp ne i32 %7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.51

if.then.9:                                        ; preds = %while.body
  %8 = load i32, i32* %c, align 4
  %cmp10 = icmp eq i32 %8, 10
  br i1 %cmp10, label %if.then.11, label %if.end.50

if.then.11:                                       ; preds = %if.then.9
  %9 = load i32, i32* %c, align 4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call12 = call i32 @_IO_putc(i32 %9, %struct._IO_FILE* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call13 = call i32 @_IO_getc(%struct._IO_FILE* %11)
  store i32 %call13, i32* %c, align 4
  %12 = load i32, i32* %c, align 4
  %cmp14 = icmp eq i32 %12, 35
  br i1 %cmp14, label %if.then.15, label %if.end.49

if.then.15:                                       ; preds = %if.then.11
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call16 = call i32 @_IO_getc(%struct._IO_FILE* %13)
  store i32 %call16, i32* %c, align 4
  %14 = load i32, i32* %c, align 4
  %cmp17 = icmp eq i32 %14, 108
  br i1 %cmp17, label %if.then.18, label %if.else.46

if.then.18:                                       ; preds = %if.then.15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call19 = call i32 @_IO_getc(%struct._IO_FILE* %15)
  store i32 %call19, i32* %c, align 4
  %16 = load i32, i32* %c, align 4
  %cmp20 = icmp eq i32 %16, 105
  br i1 %cmp20, label %if.then.21, label %if.else.43

if.then.21:                                       ; preds = %if.then.18
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call22 = call i32 @_IO_getc(%struct._IO_FILE* %17)
  store i32 %call22, i32* %c, align 4
  %18 = load i32, i32* %c, align 4
  %cmp23 = icmp eq i32 %18, 110
  br i1 %cmp23, label %if.then.24, label %if.else.40

if.then.24:                                       ; preds = %if.then.21
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call25 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %call25, i32* %c, align 4
  %20 = load i32, i32* %c, align 4
  %cmp26 = icmp eq i32 %20, 101
  br i1 %cmp26, label %if.then.27, label %if.else.37

if.then.27:                                       ; preds = %if.then.24
  br label %while.body.29

while.body.29:                                    ; preds = %if.then.27, %if.end.35
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call30 = call i32 @_IO_getc(%struct._IO_FILE* %21)
  store i32 %call30, i32* %c, align 4
  %22 = load i32, i32* %c, align 4
  %cmp31 = icmp eq i32 %22, 10
  br i1 %cmp31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %while.body.29
  %23 = load i32, i32* %c, align 4
  %cmp33 = icmp slt i32 %23, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false.32, %while.body.29
  br label %while.end

if.end.35:                                        ; preds = %lor.lhs.false.32
  br label %while.body.29

while.end:                                        ; preds = %if.then.34
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call36 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %call36, i32* %c, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %if.then.24
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %while.end
  br label %if.end.42

if.else.40:                                       ; preds = %if.then.21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.40, %if.end.39
  br label %if.end.45

if.else.43:                                       ; preds = %if.then.18
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.48

if.else.46:                                       ; preds = %if.then.15
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.end.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.11
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.9
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %while.body
  %29 = load i32, i32* %c, align 4
  %cmp52 = icmp eq i32 %29, 36
  br i1 %cmp52, label %if.then.53, label %if.else.58

if.then.53:                                       ; preds = %if.end.51
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  call void @rewind(%struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call54 = call i32 @_IO_getc(%struct._IO_FILE* %31)
  store i32 %call54, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.53
  %32 = load i32, i32* %c, align 4
  %cmp55 = icmp ne i32 %32, -1
  br i1 %cmp55, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %c, align 4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call56 = call i32 @_IO_putc(i32 %33, %struct._IO_FILE* %34)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @faction, align 8
  %call57 = call i32 @_IO_getc(%struct._IO_FILE* %35)
  store i32 %call57, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.60

if.else.58:                                       ; preds = %if.end.51
  %36 = load i32, i32* %c, align 4
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call59 = call i32 @_IO_putc(i32 %36, %struct._IO_FILE* %37)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %for.end
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @fparser, align 8
  %call61 = call i32 @_IO_getc(%struct._IO_FILE* %38)
  store i32 %call61, i32* %c, align 4
  br label %while.cond

while.end.62:                                     ; preds = %if.then.5, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_program() #0 {
entry:
  %c = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %1 = load i32, i32* @lineno, align 4
  %2 = load i8*, i8** @infile, align 8
  %call = call i8* @mybasename(i8* %2)
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 %1, i8* %call)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call2 = call i32 @_IO_getc(%struct._IO_FILE* %3)
  store i32 %call2, i32* %c, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i32, i32* %c, align 4
  %cmp = icmp ne i32 %4, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %c, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 @_IO_putc(i32 %5, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @finput, align 8
  %call4 = call i32 @_IO_getc(%struct._IO_FILE* %7)
  store i32 %call4, i32* %c, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @mallocate(...) #1

; Function Attrs: nounwind uwtable
define void @token_actions() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load i32, i32* @ntokens, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @actrow, align 8
  %call2 = call i32 @action_row(i32 0)
  store i32 %call2, i32* %k, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %3 = load i32, i32* %k, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i32 0, i32 0), i32 %3)
  call void @save_row(i32 0)
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call5 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %6)
  %7 = load i32, i32* %j, align 4
  %cmp6 = icmp sge i32 %7, 10
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %8)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %i, align 4
  %call9 = call i32 @action_row(i32 %10)
  store i32 %call9, i32* %k, align 4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %12 = load i32, i32* %k, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %12)
  %13 = load i32, i32* %i, align 4
  call void @save_row(i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %16 = load i16*, i16** @actrow, align 8
  %tobool = icmp ne i16* %16, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %17 = load i16*, i16** @actrow, align 8
  %18 = bitcast i16* %17 to i8*
  call void @free(i8* %18) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_shifts() #0 {
entry:
  %sp = alloca %struct.shifts*, align 8
  %sptmp = alloca %struct.shifts*, align 8
  %0 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %tobool = icmp ne %struct.shifts** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %2 = bitcast %struct.shifts** %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.shifts*, %struct.shifts** @first_shift, align 8
  store %struct.shifts* %3, %struct.shifts** %sp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool1 = icmp ne %struct.shifts* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %next = getelementptr inbounds %struct.shifts, %struct.shifts* %5, i32 0, i32 0
  %6 = load %struct.shifts*, %struct.shifts** %next, align 8
  store %struct.shifts* %6, %struct.shifts** %sptmp, align 8
  %7 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %tobool2 = icmp ne %struct.shifts* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.shifts*, %struct.shifts** %sp, align 8
  %9 = bitcast %struct.shifts* %8 to i8*
  call void @free(i8* %9) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %10 = load %struct.shifts*, %struct.shifts** %sptmp, align 8
  store %struct.shifts* %10, %struct.shifts** %sp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_reductions() #0 {
entry:
  %rp = alloca %struct.reductions*, align 8
  %rptmp = alloca %struct.reductions*, align 8
  %0 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %tobool = icmp ne %struct.reductions** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %2 = bitcast %struct.reductions** %1 to i8*
  call void @free(i8* %2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.reductions*, %struct.reductions** @first_reduction, align 8
  store %struct.reductions* %3, %struct.reductions** %rp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %tobool1 = icmp ne %struct.reductions* %4, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %next = getelementptr inbounds %struct.reductions, %struct.reductions* %5, i32 0, i32 0
  %6 = load %struct.reductions*, %struct.reductions** %next, align 8
  store %struct.reductions* %6, %struct.reductions** %rptmp, align 8
  %7 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %tobool2 = icmp ne %struct.reductions* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.body
  %8 = load %struct.reductions*, %struct.reductions** %rp, align 8
  %9 = bitcast %struct.reductions* %8 to i8*
  call void @free(i8* %9) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %10 = load %struct.reductions*, %struct.reductions** %rptmp, align 8
  store %struct.reductions* %10, %struct.reductions** %rp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @goto_actions() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %0 = load i32, i32* @nstates, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @state_count, align 8
  %2 = load i32, i32* @ntokens, align 4
  %call2 = call i32 @default_goto(i32 %2)
  store i32 %call2, i32* %k, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %4 = load i32, i32* %k, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0), i32 %4)
  %5 = load i32, i32* @ntokens, align 4
  %6 = load i32, i32* %k, align 4
  call void @save_column(i32 %5, i32 %6)
  store i32 10, i32* %j, align 4
  %7 = load i32, i32* @ntokens, align 4
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @nsyms, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call5 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %10)
  %11 = load i32, i32* %j, align 4
  %cmp6 = icmp sge i32 %11, 10
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call8 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %12)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, i32* %i, align 4
  %call9 = call i32 @default_goto(i32 %14)
  store i32 %call9, i32* %k, align 4
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %16 = load i32, i32* %k, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %16)
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %k, align 4
  call void @save_column(i32 %17, i32 %18)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %21 = load i16*, i16** @state_count, align 8
  %tobool = icmp ne i16* %21, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %22 = load i16*, i16** @state_count, align 8
  %23 = bitcast i16* %22 to i8*
  call void @free(i8* %23) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @sort_actions() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %w = alloca i32, align 4
  %0 = load i32, i32* @nvectors, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @order, align 8
  store i32 0, i32* @nentries, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @nvectors, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i16*, i16** @tally, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv3 = sext i16 %6 to i32
  %cmp4 = icmp sgt i32 %conv3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %8 = load i16*, i16** @tally, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %8, i64 %idxprom6
  %9 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %9 to i32
  store i32 %conv8, i32* %t, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %11 = load i16*, i16** @width, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %11, i64 %idxprom9
  %12 = load i16, i16* %arrayidx10, align 2
  %conv11 = sext i16 %12 to i32
  store i32 %conv11, i32* %w, align 4
  %13 = load i32, i32* @nentries, align 4
  %sub = sub nsw i32 %13, 1
  store i32 %sub, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load i32, i32* %j, align 4
  %cmp12 = icmp sge i32 %14, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i16*, i16** @order, align 8
  %arrayidx15 = getelementptr inbounds i16, i16* %16, i64 %idxprom14
  %17 = load i16, i16* %arrayidx15, align 2
  %idxprom16 = sext i16 %17 to i64
  %18 = load i16*, i16** @width, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %18, i64 %idxprom16
  %19 = load i16, i16* %arrayidx17, align 2
  %conv18 = sext i16 %19 to i32
  %20 = load i32, i32* %w, align 4
  %cmp19 = icmp slt i32 %conv18, %20
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %21 = phi i1 [ false, %while.cond ], [ %cmp19, %land.rhs ]
  br i1 %21, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %22 = load i32, i32* %j, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.21

while.cond.21:                                    ; preds = %while.body.40, %while.end
  %23 = load i32, i32* %j, align 4
  %cmp22 = icmp sge i32 %23, 0
  br i1 %cmp22, label %land.lhs.true, label %land.end.39

land.lhs.true:                                    ; preds = %while.cond.21
  %24 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %24 to i64
  %25 = load i16*, i16** @order, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %25, i64 %idxprom24
  %26 = load i16, i16* %arrayidx25, align 2
  %idxprom26 = sext i16 %26 to i64
  %27 = load i16*, i16** @width, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %27, i64 %idxprom26
  %28 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %28 to i32
  %29 = load i32, i32* %w, align 4
  %cmp29 = icmp eq i32 %conv28, %29
  br i1 %cmp29, label %land.rhs.31, label %land.end.39

land.rhs.31:                                      ; preds = %land.lhs.true
  %30 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load i16*, i16** @order, align 8
  %arrayidx33 = getelementptr inbounds i16, i16* %31, i64 %idxprom32
  %32 = load i16, i16* %arrayidx33, align 2
  %idxprom34 = sext i16 %32 to i64
  %33 = load i16*, i16** @tally, align 8
  %arrayidx35 = getelementptr inbounds i16, i16* %33, i64 %idxprom34
  %34 = load i16, i16* %arrayidx35, align 2
  %conv36 = sext i16 %34 to i32
  %35 = load i32, i32* %t, align 4
  %cmp37 = icmp slt i32 %conv36, %35
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.31, %land.lhs.true, %while.cond.21
  %36 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.21 ], [ %cmp37, %land.rhs.31 ]
  br i1 %36, label %while.body.40, label %while.end.42

while.body.40:                                    ; preds = %land.end.39
  %37 = load i32, i32* %j, align 4
  %dec41 = add nsw i32 %37, -1
  store i32 %dec41, i32* %j, align 4
  br label %while.cond.21

while.end.42:                                     ; preds = %land.end.39
  %38 = load i32, i32* @nentries, align 4
  %sub43 = sub nsw i32 %38, 1
  store i32 %sub43, i32* %k, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %while.end.42
  %39 = load i32, i32* %k, align 4
  %40 = load i32, i32* %j, align 4
  %cmp45 = icmp sgt i32 %39, %40
  br i1 %cmp45, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.44
  %41 = load i32, i32* %k, align 4
  %idxprom48 = sext i32 %41 to i64
  %42 = load i16*, i16** @order, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %42, i64 %idxprom48
  %43 = load i16, i16* %arrayidx49, align 2
  %44 = load i32, i32* %k, align 4
  %add = add nsw i32 %44, 1
  %idxprom50 = sext i32 %add to i64
  %45 = load i16*, i16** @order, align 8
  %arrayidx51 = getelementptr inbounds i16, i16* %45, i64 %idxprom50
  store i16 %43, i16* %arrayidx51, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body.47
  %46 = load i32, i32* %k, align 4
  %dec52 = add nsw i32 %46, -1
  store i32 %dec52, i32* %k, align 4
  br label %for.cond.44

for.end:                                          ; preds = %for.cond.44
  %47 = load i32, i32* %i, align 4
  %conv53 = trunc i32 %47 to i16
  %48 = load i32, i32* %j, align 4
  %add54 = add nsw i32 %48, 1
  %idxprom55 = sext i32 %add54 to i64
  %49 = load i16*, i16** @order, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %49, i64 %idxprom55
  store i16 %conv53, i16* %arrayidx56, align 2
  %50 = load i32, i32* @nentries, align 4
  %inc = add nsw i32 %50, 1
  store i32 %inc, i32* @nentries, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end
  %51 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %51, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @pack_table() #0 {
entry:
  %i = alloca i32, align 4
  %place = alloca i32, align 4
  %state = alloca i32, align 4
  %0 = load i32, i32* @nvectors, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** @base, align 8
  %2 = load i32, i32* @nentries, align 4
  %conv2 = sext i32 %2 to i64
  %mul3 = mul i64 %conv2, 2
  %conv4 = trunc i64 %mul3 to i32
  %call5 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv4)
  %3 = bitcast i8* %call5 to i16*
  store i16* %3, i16** @pos, align 8
  %call6 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 65534)
  %4 = bitcast i8* %call6 to i16*
  store i16* %4, i16** @table, align 8
  %call7 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 65534)
  %5 = bitcast i8* %call7 to i16*
  store i16* %5, i16** @check, align 8
  store i32 0, i32* @lowzero, align 4
  store i32 0, i32* @high, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @nvectors, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** @base, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  store i16 -32768, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp10 = icmp slt i32 %11, 32767
  br i1 %cmp10, label %for.body.12, label %for.end.17

for.body.12:                                      ; preds = %for.cond.9
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load i16*, i16** @check, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %13, i64 %idxprom13
  store i16 -1, i16* %arrayidx14, align 2
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.12
  %14 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %14, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.37, %for.end.17
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* @nentries, align 4
  %cmp19 = icmp slt i32 %15, %16
  br i1 %cmp19, label %for.body.21, label %for.end.39

for.body.21:                                      ; preds = %for.cond.18
  %17 = load i32, i32* %i, align 4
  %call22 = call i32 @matching_state(i32 %17)
  store i32 %call22, i32* %state, align 4
  %18 = load i32, i32* %state, align 4
  %cmp23 = icmp slt i32 %18, 0
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.21
  %19 = load i32, i32* %i, align 4
  %call25 = call i32 @pack_vector(i32 %19)
  store i32 %call25, i32* %place, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.21
  %20 = load i32, i32* %state, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load i16*, i16** @base, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %21, i64 %idxprom26
  %22 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %22 to i32
  store i32 %conv28, i32* %place, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, i32* %place, align 4
  %conv29 = trunc i32 %23 to i16
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load i16*, i16** @pos, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %25, i64 %idxprom30
  store i16 %conv29, i16* %arrayidx31, align 2
  %26 = load i32, i32* %place, align 4
  %conv32 = trunc i32 %26 to i16
  %27 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %27 to i64
  %28 = load i16*, i16** @order, align 8
  %arrayidx34 = getelementptr inbounds i16, i16* %28, i64 %idxprom33
  %29 = load i16, i16* %arrayidx34, align 2
  %idxprom35 = sext i16 %29 to i64
  %30 = load i16*, i16** @base, align 8
  %arrayidx36 = getelementptr inbounds i16, i16* %30, i64 %idxprom35
  store i16 %conv32, i16* %arrayidx36, align 2
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %inc38 = add nsw i32 %31, 1
  store i32 %inc38, i32* %i, align 4
  br label %for.cond.18

for.end.39:                                       ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.57, %for.end.39
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* @nvectors, align 4
  %cmp41 = icmp slt i32 %32, %33
  br i1 %cmp41, label %for.body.43, label %for.end.59

for.body.43:                                      ; preds = %for.cond.40
  %34 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %34 to i64
  %35 = load i16**, i16*** @froms, align 8
  %arrayidx45 = getelementptr inbounds i16*, i16** %35, i64 %idxprom44
  %36 = load i16*, i16** %arrayidx45, align 8
  %tobool = icmp ne i16* %36, null
  br i1 %tobool, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %for.body.43
  %37 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i16**, i16*** @froms, align 8
  %arrayidx48 = getelementptr inbounds i16*, i16** %38, i64 %idxprom47
  %39 = load i16*, i16** %arrayidx48, align 8
  %40 = bitcast i16* %39 to i8*
  call void @free(i8* %40) #4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %for.body.43
  %41 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %41 to i64
  %42 = load i16**, i16*** @tos, align 8
  %arrayidx51 = getelementptr inbounds i16*, i16** %42, i64 %idxprom50
  %43 = load i16*, i16** %arrayidx51, align 8
  %tobool52 = icmp ne i16* %43, null
  br i1 %tobool52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.49
  %44 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %44 to i64
  %45 = load i16**, i16*** @tos, align 8
  %arrayidx55 = getelementptr inbounds i16*, i16** %45, i64 %idxprom54
  %46 = load i16*, i16** %arrayidx55, align 8
  %47 = bitcast i16* %46 to i8*
  call void @free(i8* %47) #4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.49
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %48 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %48, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond.40

for.end.59:                                       ; preds = %for.cond.40
  %49 = load i16**, i16*** @froms, align 8
  %tobool60 = icmp ne i16** %49, null
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %for.end.59
  %50 = load i16**, i16*** @froms, align 8
  %51 = bitcast i16** %50 to i8*
  call void @free(i8* %51) #4
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.61, %for.end.59
  %52 = load i16**, i16*** @tos, align 8
  %tobool63 = icmp ne i16** %52, null
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.62
  %53 = load i16**, i16*** @tos, align 8
  %54 = bitcast i16** %53 to i8*
  call void @free(i8* %54) #4
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %if.end.62
  %55 = load i16*, i16** @pos, align 8
  %tobool66 = icmp ne i16* %55, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.65
  %56 = load i16*, i16** @pos, align 8
  %57 = bitcast i16* %56 to i8*
  call void @free(i8* %57) #4
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %if.end.65
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_base() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %1 = load i16*, i16** @base, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i32 0, i32 0), i32 %conv)
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @nstates, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call2 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %5)
  %6 = load i32, i32* %j, align 4
  %cmp3 = icmp sge i32 %6, 10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** @base, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %12 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %15 = load i32, i32* @nstates, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i16*, i16** @base, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 %idxprom10
  %17 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %17 to i32
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i32 %conv12)
  store i32 10, i32* %j, align 4
  %18 = load i32, i32* @nstates, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @nvectors, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body.17, label %for.end.32

for.body.17:                                      ; preds = %for.cond.14
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call18 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %21)
  %22 = load i32, i32* %j, align 4
  %cmp19 = icmp sge i32 %22, 10
  br i1 %cmp19, label %if.then.21, label %if.else.23

if.then.21:                                       ; preds = %for.body.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call22 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %23)
  store i32 1, i32* %j, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %for.body.17
  %24 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %j, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i16*, i16** @base, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %27, i64 %idxprom26
  %28 = load i16, i16* %arrayidx27, align 2
  %conv28 = sext i16 %28 to i32
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv28)
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.25
  %29 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.14

for.end.32:                                       ; preds = %for.cond.14
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %31 = load i16*, i16** @base, align 8
  %tobool = icmp ne i16* %31, null
  br i1 %tobool, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end.32
  %32 = load i16*, i16** @base, align 8
  %33 = bitcast i16* %32 to i8*
  call void @free(i8* %33) #4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %for.end.32
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_table() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %1 = load i32, i32* @high, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i32 0, i32 0), i32 %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %3 = load i16*, i16** @table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 0
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.39, i32 0, i32 0), i32 %conv)
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @high, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call3 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %7)
  %8 = load i32, i32* %j, align 4
  %cmp4 = icmp sge i32 %8, 10
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call6 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %9)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i16*, i16** @table, align 8
  %arrayidx7 = getelementptr inbounds i16, i16* %13, i64 %idxprom
  %14 = load i16, i16* %arrayidx7, align 2
  %conv8 = sext i16 %14 to i32
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv8)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %17 = load i16*, i16** @table, align 8
  %tobool = icmp ne i16* %17, null
  br i1 %tobool, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  %18 = load i16*, i16** @table, align 8
  %19 = bitcast i16* %18 to i8*
  call void @free(i8* %19) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_check() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %1 = load i16*, i16** @check, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 0
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0), i32 %conv)
  store i32 10, i32* %j, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @high, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call2 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %5)
  %6 = load i32, i32* %j, align 4
  %cmp3 = icmp sge i32 %6, 10
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call5 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %7)
  store i32 1, i32* %j, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i16*, i16** @check, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %11, i64 %idxprom
  %12 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %12 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 %conv7)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @ftable, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0))
  %15 = load i16*, i16** @check, align 8
  %tobool = icmp ne i16* %15, null
  br i1 %tobool, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  %16 = load i16*, i16** @check, align 8
  %17 = bitcast i16* %16 to i8*
  call void @free(i8* %17) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @action_row(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %count = alloca i32, align 4
  %default_rule = alloca i32, align 4
  %nreds = alloca i32, align 4
  %max = alloca i32, align 4
  %rule = alloca i32, align 4
  %shift_state = alloca i32, align 4
  %symbol = alloca i32, align 4
  %mask = alloca i32, align 4
  %wordp = alloca i32*, align 8
  %redp = alloca %struct.reductions*, align 8
  %shiftp = alloca %struct.shifts*, align 8
  %errp = alloca %struct.errs*, align 8
  %nodefault = alloca i32, align 4
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* %nodefault, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @ntokens, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @actrow, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  store i16 0, i16* %arrayidx, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %default_rule, align 4
  store i32 0, i32* %nreds, align 4
  %5 = load i32, i32* %state.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.reductions**, %struct.reductions*** @reduction_table, align 8
  %arrayidx2 = getelementptr inbounds %struct.reductions*, %struct.reductions** %6, i64 %idxprom1
  %7 = load %struct.reductions*, %struct.reductions** %arrayidx2, align 8
  store %struct.reductions* %7, %struct.reductions** %redp, align 8
  %8 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %tobool = icmp ne %struct.reductions* %8, null
  br i1 %tobool, label %if.then, label %if.end.40

if.then:                                          ; preds = %for.end
  %9 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %nreds3 = getelementptr inbounds %struct.reductions, %struct.reductions* %9, i32 0, i32 2
  %10 = load i16, i16* %nreds3, align 2
  %conv = sext i16 %10 to i32
  store i32 %conv, i32* %nreds, align 4
  %11 = load i32, i32* %nreds, align 4
  %cmp4 = icmp sge i32 %11, 1
  br i1 %cmp4, label %if.then.6, label %if.end.39

if.then.6:                                        ; preds = %if.then
  %12 = load i32, i32* %state.addr, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i16*, i16** @lookaheads, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %13, i64 %idxprom7
  %14 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %14 to i32
  store i32 %conv9, i32* %m, align 4
  %15 = load i32, i32* %state.addr, align 4
  %add = add nsw i32 %15, 1
  %idxprom10 = sext i32 %add to i64
  %16 = load i16*, i16** @lookaheads, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %16, i64 %idxprom10
  %17 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %17 to i32
  store i32 %conv12, i32* %n, align 4
  %18 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.37, %if.then.6
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %m, align 4
  %cmp14 = icmp sge i32 %19, %20
  br i1 %cmp14, label %for.body.16, label %for.end.38

for.body.16:                                      ; preds = %for.cond.13
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load i16*, i16** @LAruleno, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %22, i64 %idxprom17
  %23 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %23 to i32
  %sub20 = sub nsw i32 0, %conv19
  store i32 %sub20, i32* %rule, align 4
  %24 = load i32*, i32** @LA, align 8
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @tokensetsize, align 4
  %mul = mul nsw i32 %25, %26
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %24, i64 %idx.ext
  store i32* %add.ptr, i32** %wordp, align 8
  store i32 1, i32* %mask, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.34, %for.body.16
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* @ntokens, align 4
  %cmp22 = icmp slt i32 %27, %28
  br i1 %cmp22, label %for.body.24, label %for.end.36

for.body.24:                                      ; preds = %for.cond.21
  %29 = load i32, i32* %mask, align 4
  %30 = load i32*, i32** %wordp, align 8
  %31 = load i32, i32* %30, align 4
  %and = and i32 %29, %31
  %tobool25 = icmp ne i32 %and, 0
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %for.body.24
  %32 = load i32, i32* %rule, align 4
  %conv27 = trunc i32 %32 to i16
  %33 = load i32, i32* %j, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load i16*, i16** @actrow, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %34, i64 %idxprom28
  store i16 %conv27, i16* %arrayidx29, align 2
  br label %if.end

if.end:                                           ; preds = %if.then.26, %for.body.24
  %35 = load i32, i32* %mask, align 4
  %shl = shl i32 %35, 1
  store i32 %shl, i32* %mask, align 4
  %36 = load i32, i32* %mask, align 4
  %cmp30 = icmp eq i32 %36, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end
  store i32 1, i32* %mask, align 4
  %37 = load i32*, i32** %wordp, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr, i32** %wordp, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %if.end
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %38 = load i32, i32* %j, align 4
  %inc35 = add nsw i32 %38, 1
  store i32 %inc35, i32* %j, align 4
  br label %for.cond.21

for.end.36:                                       ; preds = %for.cond.21
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.end.36
  %39 = load i32, i32* %i, align 4
  %dec = add nsw i32 %39, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.13

for.end.38:                                       ; preds = %for.cond.13
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %if.then
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %for.end
  %40 = load i32, i32* %state.addr, align 4
  %idxprom41 = sext i32 %40 to i64
  %41 = load %struct.shifts**, %struct.shifts*** @shift_table, align 8
  %arrayidx42 = getelementptr inbounds %struct.shifts*, %struct.shifts** %41, i64 %idxprom41
  %42 = load %struct.shifts*, %struct.shifts** %arrayidx42, align 8
  store %struct.shifts* %42, %struct.shifts** %shiftp, align 8
  %43 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %tobool43 = icmp ne %struct.shifts* %43, null
  br i1 %tobool43, label %if.then.44, label %if.end.73

if.then.44:                                       ; preds = %if.end.40
  %44 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %nshifts = getelementptr inbounds %struct.shifts, %struct.shifts* %44, i32 0, i32 2
  %45 = load i16, i16* %nshifts, align 2
  %conv45 = sext i16 %45 to i32
  store i32 %conv45, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.70, %if.then.44
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %k, align 4
  %cmp47 = icmp slt i32 %46, %47
  br i1 %cmp47, label %for.body.49, label %for.end.72

for.body.49:                                      ; preds = %for.cond.46
  %48 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %48 to i64
  %49 = load %struct.shifts*, %struct.shifts** %shiftp, align 8
  %shifts = getelementptr inbounds %struct.shifts, %struct.shifts* %49, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [1 x i16], [1 x i16]* %shifts, i32 0, i64 %idxprom50
  %50 = load i16, i16* %arrayidx51, align 2
  %conv52 = sext i16 %50 to i32
  store i32 %conv52, i32* %shift_state, align 4
  %51 = load i32, i32* %shift_state, align 4
  %tobool53 = icmp ne i32 %51, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %for.body.49
  br label %for.inc.70

if.end.55:                                        ; preds = %for.body.49
  %52 = load i32, i32* %shift_state, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load i16*, i16** @accessing_symbol, align 8
  %arrayidx57 = getelementptr inbounds i16, i16* %53, i64 %idxprom56
  %54 = load i16, i16* %arrayidx57, align 2
  %conv58 = sext i16 %54 to i32
  store i32 %conv58, i32* %symbol, align 4
  %55 = load i32, i32* %symbol, align 4
  %56 = load i32, i32* @ntokens, align 4
  %cmp59 = icmp sge i32 %55, %56
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.55
  br label %for.end.72

if.end.62:                                        ; preds = %if.end.55
  %57 = load i32, i32* %shift_state, align 4
  %conv63 = trunc i32 %57 to i16
  %58 = load i32, i32* %symbol, align 4
  %idxprom64 = sext i32 %58 to i64
  %59 = load i16*, i16** @actrow, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %59, i64 %idxprom64
  store i16 %conv63, i16* %arrayidx65, align 2
  %60 = load i32, i32* %symbol, align 4
  %61 = load i32, i32* @error_token_number, align 4
  %cmp66 = icmp eq i32 %60, %61
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.62
  store i32 1, i32* %nodefault, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.62
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69, %if.then.54
  %62 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %62, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.46

for.end.72:                                       ; preds = %if.then.61, %for.cond.46
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %if.end.40
  %63 = load i32, i32* %state.addr, align 4
  %idxprom74 = sext i32 %63 to i64
  %64 = load %struct.errs**, %struct.errs*** @err_table, align 8
  %arrayidx75 = getelementptr inbounds %struct.errs*, %struct.errs** %64, i64 %idxprom74
  %65 = load %struct.errs*, %struct.errs** %arrayidx75, align 8
  store %struct.errs* %65, %struct.errs** %errp, align 8
  %66 = load %struct.errs*, %struct.errs** %errp, align 8
  %tobool76 = icmp ne %struct.errs* %66, null
  br i1 %tobool76, label %if.then.77, label %if.end.91

if.then.77:                                       ; preds = %if.end.73
  %67 = load %struct.errs*, %struct.errs** %errp, align 8
  %nerrs = getelementptr inbounds %struct.errs, %struct.errs* %67, i32 0, i32 0
  %68 = load i16, i16* %nerrs, align 2
  %conv78 = sext i16 %68 to i32
  store i32 %conv78, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %if.then.77
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %k, align 4
  %cmp80 = icmp slt i32 %69, %70
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.79
  %71 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %71 to i64
  %72 = load %struct.errs*, %struct.errs** %errp, align 8
  %errs = getelementptr inbounds %struct.errs, %struct.errs* %72, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x i16], [1 x i16]* %errs, i32 0, i64 %idxprom83
  %73 = load i16, i16* %arrayidx84, align 2
  %conv85 = sext i16 %73 to i32
  store i32 %conv85, i32* %symbol, align 4
  %74 = load i32, i32* %symbol, align 4
  %idxprom86 = sext i32 %74 to i64
  %75 = load i16*, i16** @actrow, align 8
  %arrayidx87 = getelementptr inbounds i16, i16* %75, i64 %idxprom86
  store i16 -32768, i16* %arrayidx87, align 2
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %76 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %76, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.end.73
  %77 = load i32, i32* %nreds, align 4
  %cmp92 = icmp sge i32 %77, 1
  br i1 %cmp92, label %land.lhs.true, label %if.end.154

land.lhs.true:                                    ; preds = %if.end.91
  %78 = load i32, i32* %nodefault, align 4
  %tobool94 = icmp ne i32 %78, 0
  br i1 %tobool94, label %if.end.154, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true
  %79 = load i32, i32* %state.addr, align 4
  %idxprom96 = sext i32 %79 to i64
  %80 = load i8*, i8** @consistent, align 8
  %arrayidx97 = getelementptr inbounds i8, i8* %80, i64 %idxprom96
  %81 = load i8, i8* %arrayidx97, align 1
  %tobool98 = icmp ne i8 %81, 0
  br i1 %tobool98, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %if.then.95
  %82 = load %struct.reductions*, %struct.reductions** %redp, align 8
  %rules = getelementptr inbounds %struct.reductions, %struct.reductions* %82, i32 0, i32 3
  %arrayidx100 = getelementptr inbounds [1 x i16], [1 x i16]* %rules, i32 0, i64 0
  %83 = load i16, i16* %arrayidx100, align 2
  %conv101 = sext i16 %83 to i32
  store i32 %conv101, i32* %default_rule, align 4
  br label %if.end.153

if.else:                                          ; preds = %if.then.95
  store i32 0, i32* %max, align 4
  %84 = load i32, i32* %m, align 4
  store i32 %84, i32* %i, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.129, %if.else
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %n, align 4
  %cmp103 = icmp slt i32 %85, %86
  br i1 %cmp103, label %for.body.105, label %for.end.131

for.body.105:                                     ; preds = %for.cond.102
  store i32 0, i32* %count, align 4
  %87 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %87 to i64
  %88 = load i16*, i16** @LAruleno, align 8
  %arrayidx107 = getelementptr inbounds i16, i16* %88, i64 %idxprom106
  %89 = load i16, i16* %arrayidx107, align 2
  %conv108 = sext i16 %89 to i32
  %sub109 = sub nsw i32 0, %conv108
  store i32 %sub109, i32* %rule, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.122, %for.body.105
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* @ntokens, align 4
  %cmp111 = icmp slt i32 %90, %91
  br i1 %cmp111, label %for.body.113, label %for.end.124

for.body.113:                                     ; preds = %for.cond.110
  %92 = load i32, i32* %j, align 4
  %idxprom114 = sext i32 %92 to i64
  %93 = load i16*, i16** @actrow, align 8
  %arrayidx115 = getelementptr inbounds i16, i16* %93, i64 %idxprom114
  %94 = load i16, i16* %arrayidx115, align 2
  %conv116 = sext i16 %94 to i32
  %95 = load i32, i32* %rule, align 4
  %cmp117 = icmp eq i32 %conv116, %95
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %for.body.113
  %96 = load i32, i32* %count, align 4
  %inc120 = add nsw i32 %96, 1
  store i32 %inc120, i32* %count, align 4
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %for.body.113
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %97 = load i32, i32* %j, align 4
  %inc123 = add nsw i32 %97, 1
  store i32 %inc123, i32* %j, align 4
  br label %for.cond.110

for.end.124:                                      ; preds = %for.cond.110
  %98 = load i32, i32* %count, align 4
  %99 = load i32, i32* %max, align 4
  %cmp125 = icmp sgt i32 %98, %99
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.124
  %100 = load i32, i32* %count, align 4
  store i32 %100, i32* %max, align 4
  %101 = load i32, i32* %rule, align 4
  store i32 %101, i32* %default_rule, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.124
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %102 = load i32, i32* %i, align 4
  %inc130 = add nsw i32 %102, 1
  store i32 %inc130, i32* %i, align 4
  br label %for.cond.102

for.end.131:                                      ; preds = %for.cond.102
  %103 = load i32, i32* %max, align 4
  %cmp132 = icmp sgt i32 %103, 0
  br i1 %cmp132, label %if.then.134, label %if.end.152

if.then.134:                                      ; preds = %for.end.131
  store i32 0, i32* %j, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.148, %if.then.134
  %104 = load i32, i32* %j, align 4
  %105 = load i32, i32* @ntokens, align 4
  %cmp136 = icmp slt i32 %104, %105
  br i1 %cmp136, label %for.body.138, label %for.end.150

for.body.138:                                     ; preds = %for.cond.135
  %106 = load i32, i32* %j, align 4
  %idxprom139 = sext i32 %106 to i64
  %107 = load i16*, i16** @actrow, align 8
  %arrayidx140 = getelementptr inbounds i16, i16* %107, i64 %idxprom139
  %108 = load i16, i16* %arrayidx140, align 2
  %conv141 = sext i16 %108 to i32
  %109 = load i32, i32* %default_rule, align 4
  %cmp142 = icmp eq i32 %conv141, %109
  br i1 %cmp142, label %if.then.144, label %if.end.147

if.then.144:                                      ; preds = %for.body.138
  %110 = load i32, i32* %j, align 4
  %idxprom145 = sext i32 %110 to i64
  %111 = load i16*, i16** @actrow, align 8
  %arrayidx146 = getelementptr inbounds i16, i16* %111, i64 %idxprom145
  store i16 0, i16* %arrayidx146, align 2
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.144, %for.body.138
  br label %for.inc.148

for.inc.148:                                      ; preds = %if.end.147
  %112 = load i32, i32* %j, align 4
  %inc149 = add nsw i32 %112, 1
  store i32 %inc149, i32* %j, align 4
  br label %for.cond.135

for.end.150:                                      ; preds = %for.cond.135
  %113 = load i32, i32* %default_rule, align 4
  %sub151 = sub nsw i32 0, %113
  store i32 %sub151, i32* %default_rule, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %for.end.150, %for.end.131
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.then.99
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.153, %land.lhs.true, %if.end.91
  %114 = load i32, i32* %default_rule, align 4
  %cmp155 = icmp eq i32 %114, 0
  br i1 %cmp155, label %if.then.157, label %if.end.174

if.then.157:                                      ; preds = %if.end.154
  store i32 0, i32* %j, align 4
  br label %for.cond.158

for.cond.158:                                     ; preds = %for.inc.171, %if.then.157
  %115 = load i32, i32* %j, align 4
  %116 = load i32, i32* @ntokens, align 4
  %cmp159 = icmp slt i32 %115, %116
  br i1 %cmp159, label %for.body.161, label %for.end.173

for.body.161:                                     ; preds = %for.cond.158
  %117 = load i32, i32* %j, align 4
  %idxprom162 = sext i32 %117 to i64
  %118 = load i16*, i16** @actrow, align 8
  %arrayidx163 = getelementptr inbounds i16, i16* %118, i64 %idxprom162
  %119 = load i16, i16* %arrayidx163, align 2
  %conv164 = sext i16 %119 to i32
  %cmp165 = icmp eq i32 %conv164, -32768
  br i1 %cmp165, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %for.body.161
  %120 = load i32, i32* %j, align 4
  %idxprom168 = sext i32 %120 to i64
  %121 = load i16*, i16** @actrow, align 8
  %arrayidx169 = getelementptr inbounds i16, i16* %121, i64 %idxprom168
  store i16 0, i16* %arrayidx169, align 2
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %for.body.161
  br label %for.inc.171

for.inc.171:                                      ; preds = %if.end.170
  %122 = load i32, i32* %j, align 4
  %inc172 = add nsw i32 %122, 1
  store i32 %inc172, i32* %j, align 4
  br label %for.cond.158

for.end.173:                                      ; preds = %for.cond.158
  br label %if.end.174

if.end.174:                                       ; preds = %for.end.173, %if.end.154
  %123 = load i32, i32* %default_rule, align 4
  ret i32 %123
}

; Function Attrs: nounwind uwtable
define void @save_row(i32 %state) #0 {
entry:
  %state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %sp = alloca i16*, align 8
  %sp1 = alloca i16*, align 8
  %sp2 = alloca i16*, align 8
  store i32 %state, i32* %state.addr, align 4
  store i32 0, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @ntokens, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @actrow, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %count, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %count, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  br label %return

if.end.7:                                         ; preds = %for.end
  %8 = load i32, i32* %count, align 4
  %conv8 = sext i32 %8 to i64
  %mul = mul i64 %conv8, 2
  %conv9 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv9)
  %9 = bitcast i8* %call to i16*
  store i16* %9, i16** %sp, align 8
  store i16* %9, i16** %sp1, align 8
  %10 = load i32, i32* %state.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i16**, i16*** @froms, align 8
  %arrayidx11 = getelementptr inbounds i16*, i16** %11, i64 %idxprom10
  store i16* %9, i16** %arrayidx11, align 8
  %12 = load i32, i32* %count, align 4
  %conv12 = sext i32 %12 to i64
  %mul13 = mul i64 %conv12, 2
  %conv14 = trunc i64 %mul13 to i32
  %call15 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv14)
  %13 = bitcast i8* %call15 to i16*
  store i16* %13, i16** %sp2, align 8
  %14 = load i32, i32* %state.addr, align 4
  %idxprom16 = sext i32 %14 to i64
  %15 = load i16**, i16*** @tos, align 8
  %arrayidx17 = getelementptr inbounds i16*, i16** %15, i64 %idxprom16
  store i16* %13, i16** %arrayidx17, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.33, %if.end.7
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @ntokens, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body.21, label %for.end.35

for.body.21:                                      ; preds = %for.cond.18
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load i16*, i16** @actrow, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %19, i64 %idxprom22
  %20 = load i16, i16* %arrayidx23, align 2
  %conv24 = sext i16 %20 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %for.body.21
  %21 = load i32, i32* %i, align 4
  %conv28 = trunc i32 %21 to i16
  %22 = load i16*, i16** %sp1, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %22, i32 1
  store i16* %incdec.ptr, i16** %sp1, align 8
  store i16 %conv28, i16* %22, align 2
  %23 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i16*, i16** @actrow, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %24, i64 %idxprom29
  %25 = load i16, i16* %arrayidx30, align 2
  %26 = load i16*, i16** %sp2, align 8
  %incdec.ptr31 = getelementptr inbounds i16, i16* %26, i32 1
  store i16* %incdec.ptr31, i16** %sp2, align 8
  store i16 %25, i16* %26, align 2
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.27, %for.body.21
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %27 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %27, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.18

for.end.35:                                       ; preds = %for.cond.18
  %28 = load i32, i32* %count, align 4
  %conv36 = trunc i32 %28 to i16
  %29 = load i32, i32* %state.addr, align 4
  %idxprom37 = sext i32 %29 to i64
  %30 = load i16*, i16** @tally, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %30, i64 %idxprom37
  store i16 %conv36, i16* %arrayidx38, align 2
  %31 = load i16*, i16** %sp1, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %31, i64 -1
  %32 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %32 to i32
  %33 = load i16*, i16** %sp, align 8
  %arrayidx41 = getelementptr inbounds i16, i16* %33, i64 0
  %34 = load i16, i16* %arrayidx41, align 2
  %conv42 = sext i16 %34 to i32
  %sub = sub nsw i32 %conv40, %conv42
  %add = add nsw i32 %sub, 1
  %conv43 = trunc i32 %add to i16
  %35 = load i32, i32* %state.addr, align 4
  %idxprom44 = sext i32 %35 to i64
  %36 = load i16*, i16** @width, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %36, i64 %idxprom44
  store i16 %conv43, i16* %arrayidx45, align 2
  br label %return

return:                                           ; preds = %for.end.35, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @default_goto(i32 %symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %symbol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %default_state = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @goto_map, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %m, align 4
  %3 = load i32, i32* %symbol.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load i16*, i16** @goto_map, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %n, align 4
  %6 = load i32, i32* %m, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @nstates, align 4
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16*, i16** @state_count, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %11, i64 %idxprom7
  store i16 0, i16* %arrayidx8, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %m, align 4
  store i32 %13, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.18, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n, align 4
  %cmp10 = icmp slt i32 %14, %15
  br i1 %cmp10, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.9
  %16 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i16*, i16** @to_state, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %17, i64 %idxprom13
  %18 = load i16, i16* %arrayidx14, align 2
  %idxprom15 = sext i16 %18 to i64
  %19 = load i16*, i16** @state_count, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %19, i64 %idxprom15
  %20 = load i16, i16* %arrayidx16, align 2
  %inc17 = add i16 %20, 1
  store i16 %inc17, i16* %arrayidx16, align 2
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %21 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.9

for.end.20:                                       ; preds = %for.cond.9
  store i32 0, i32* %max, align 4
  store i32 -1, i32* %default_state, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.35, %for.end.20
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @nstates, align 4
  %cmp22 = icmp slt i32 %22, %23
  br i1 %cmp22, label %for.body.24, label %for.end.37

for.body.24:                                      ; preds = %for.cond.21
  %24 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %25 = load i16*, i16** @state_count, align 8
  %arrayidx26 = getelementptr inbounds i16, i16* %25, i64 %idxprom25
  %26 = load i16, i16* %arrayidx26, align 2
  %conv27 = sext i16 %26 to i32
  %27 = load i32, i32* %max, align 4
  %cmp28 = icmp sgt i32 %conv27, %27
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.body.24
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load i16*, i16** @state_count, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %29, i64 %idxprom31
  %30 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %30 to i32
  store i32 %conv33, i32* %max, align 4
  %31 = load i32, i32* %i, align 4
  store i32 %31, i32* %default_state, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %for.body.24
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %32 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.21

for.end.37:                                       ; preds = %for.cond.21
  %33 = load i32, i32* %default_state, align 4
  store i32 %33, i32* %retval
  br label %return

return:                                           ; preds = %for.end.37, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @save_column(i32 %symbol, i32 %default_state) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %default_state.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %sp = alloca i16*, align 8
  %sp1 = alloca i16*, align 8
  %sp2 = alloca i16*, align 8
  %count = alloca i32, align 4
  %symno = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  store i32 %default_state, i32* %default_state.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @goto_map, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %m, align 4
  %3 = load i32, i32* %symbol.addr, align 4
  %add = add nsw i32 %3, 1
  %idxprom1 = sext i32 %add to i64
  %4 = load i16*, i16** @goto_map, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %n, align 4
  store i32 0, i32* %count, align 4
  %6 = load i32, i32* %m, align 4
  store i32 %6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load i16*, i16** @to_state, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %10, i64 %idxprom5
  %11 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %11 to i32
  %12 = load i32, i32* %default_state.addr, align 4
  %cmp8 = icmp ne i32 %conv7, %12
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, i32* %count, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %14, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %count, align 4
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  br label %return

if.end.14:                                        ; preds = %for.end
  %16 = load i32, i32* %symbol.addr, align 4
  %17 = load i32, i32* @ntokens, align 4
  %sub = sub nsw i32 %16, %17
  %18 = load i32, i32* @nstates, align 4
  %add15 = add nsw i32 %sub, %18
  store i32 %add15, i32* %symno, align 4
  %19 = load i32, i32* %count, align 4
  %conv16 = sext i32 %19 to i64
  %mul = mul i64 %conv16, 2
  %conv17 = trunc i64 %mul to i32
  %call = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv17)
  %20 = bitcast i8* %call to i16*
  store i16* %20, i16** %sp, align 8
  store i16* %20, i16** %sp1, align 8
  %21 = load i32, i32* %symno, align 4
  %idxprom18 = sext i32 %21 to i64
  %22 = load i16**, i16*** @froms, align 8
  %arrayidx19 = getelementptr inbounds i16*, i16** %22, i64 %idxprom18
  store i16* %20, i16** %arrayidx19, align 8
  %23 = load i32, i32* %count, align 4
  %conv20 = sext i32 %23 to i64
  %mul21 = mul i64 %conv20, 2
  %conv22 = trunc i64 %mul21 to i32
  %call23 = call i8* (i32, ...) bitcast (i8* (...)* @mallocate to i8* (i32, ...)*)(i32 %conv22)
  %24 = bitcast i8* %call23 to i16*
  store i16* %24, i16** %sp2, align 8
  %25 = load i32, i32* %symno, align 4
  %idxprom24 = sext i32 %25 to i64
  %26 = load i16**, i16*** @tos, align 8
  %arrayidx25 = getelementptr inbounds i16*, i16** %26, i64 %idxprom24
  store i16* %24, i16** %arrayidx25, align 8
  %27 = load i32, i32* %m, align 4
  store i32 %27, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.42, %if.end.14
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %n, align 4
  %cmp27 = icmp slt i32 %28, %29
  br i1 %cmp27, label %for.body.29, label %for.end.44

for.body.29:                                      ; preds = %for.cond.26
  %30 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %30 to i64
  %31 = load i16*, i16** @to_state, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %31, i64 %idxprom30
  %32 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %32 to i32
  %33 = load i32, i32* %default_state.addr, align 4
  %cmp33 = icmp ne i32 %conv32, %33
  br i1 %cmp33, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %for.body.29
  %34 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load i16*, i16** @from_state, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %35, i64 %idxprom36
  %36 = load i16, i16* %arrayidx37, align 2
  %37 = load i16*, i16** %sp1, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %37, i32 1
  store i16* %incdec.ptr, i16** %sp1, align 8
  store i16 %36, i16* %37, align 2
  %38 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %38 to i64
  %39 = load i16*, i16** @to_state, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %39, i64 %idxprom38
  %40 = load i16, i16* %arrayidx39, align 2
  %41 = load i16*, i16** %sp2, align 8
  %incdec.ptr40 = getelementptr inbounds i16, i16* %41, i32 1
  store i16* %incdec.ptr40, i16** %sp2, align 8
  store i16 %40, i16* %41, align 2
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.35, %for.body.29
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %42 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %42, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.26

for.end.44:                                       ; preds = %for.cond.26
  %43 = load i32, i32* %count, align 4
  %conv45 = trunc i32 %43 to i16
  %44 = load i32, i32* %symno, align 4
  %idxprom46 = sext i32 %44 to i64
  %45 = load i16*, i16** @tally, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %45, i64 %idxprom46
  store i16 %conv45, i16* %arrayidx47, align 2
  %46 = load i16*, i16** %sp1, align 8
  %arrayidx48 = getelementptr inbounds i16, i16* %46, i64 -1
  %47 = load i16, i16* %arrayidx48, align 2
  %conv49 = sext i16 %47 to i32
  %48 = load i16*, i16** %sp, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %48, i64 0
  %49 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %49 to i32
  %sub52 = sub nsw i32 %conv49, %conv51
  %add53 = add nsw i32 %sub52, 1
  %conv54 = trunc i32 %add53 to i16
  %50 = load i32, i32* %symno, align 4
  %idxprom55 = sext i32 %50 to i64
  %51 = load i16*, i16** @width, align 8
  %arrayidx56 = getelementptr inbounds i16, i16* %51, i64 %idxprom55
  store i16 %conv54, i16* %arrayidx56, align 2
  br label %return

return:                                           ; preds = %for.end.44, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @matching_state(i32 %vector) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %w = alloca i32, align 4
  %match = alloca i32, align 4
  %prev = alloca i32, align 4
  store i32 %vector, i32* %vector.addr, align 4
  %0 = load i32, i32* %vector.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @order, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @nstates, align 4
  %cmp = icmp sge i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i16*, i16** @tally, align 8
  %arrayidx3 = getelementptr inbounds i16, i16* %6, i64 %idxprom2
  %7 = load i16, i16* %arrayidx3, align 2
  %conv4 = sext i16 %7 to i32
  store i32 %conv4, i32* %t, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %8 to i64
  %9 = load i16*, i16** @width, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %9, i64 %idxprom5
  %10 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %10 to i32
  store i32 %conv7, i32* %w, align 4
  %11 = load i32, i32* %vector.addr, align 4
  %sub = sub nsw i32 %11, 1
  store i32 %sub, i32* %prev, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %if.end
  %12 = load i32, i32* %prev, align 4
  %cmp8 = icmp sge i32 %12, 0
  br i1 %cmp8, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %prev, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load i16*, i16** @order, align 8
  %arrayidx11 = getelementptr inbounds i16, i16* %14, i64 %idxprom10
  %15 = load i16, i16* %arrayidx11, align 2
  %conv12 = sext i16 %15 to i32
  store i32 %conv12, i32* %j, align 4
  %16 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %16 to i64
  %17 = load i16*, i16** @width, align 8
  %arrayidx14 = getelementptr inbounds i16, i16* %17, i64 %idxprom13
  %18 = load i16, i16* %arrayidx14, align 2
  %conv15 = sext i16 %18 to i32
  %19 = load i32, i32* %w, align 4
  %cmp16 = icmp ne i32 %conv15, %19
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %20 to i64
  %21 = load i16*, i16** @tally, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %21, i64 %idxprom18
  %22 = load i16, i16* %arrayidx19, align 2
  %conv20 = sext i16 %22 to i32
  %23 = load i32, i32* %t, align 4
  %cmp21 = icmp ne i32 %conv20, %23
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %lor.lhs.false, %for.body
  store i32 -1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %lor.lhs.false
  store i32 1, i32* %match, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc, %if.end.24
  %24 = load i32, i32* %match, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.25
  %25 = load i32, i32* %k, align 4
  %26 = load i32, i32* %t, align 4
  %cmp26 = icmp slt i32 %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %27 = phi i1 [ false, %for.cond.25 ], [ %cmp26, %land.rhs ]
  br i1 %27, label %for.body.28, label %for.end

for.body.28:                                      ; preds = %land.end
  %28 = load i32, i32* %k, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %29 to i64
  %30 = load i16**, i16*** @tos, align 8
  %arrayidx31 = getelementptr inbounds i16*, i16** %30, i64 %idxprom30
  %31 = load i16*, i16** %arrayidx31, align 8
  %arrayidx32 = getelementptr inbounds i16, i16* %31, i64 %idxprom29
  %32 = load i16, i16* %arrayidx32, align 2
  %conv33 = sext i16 %32 to i32
  %33 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %33 to i64
  %34 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load i16**, i16*** @tos, align 8
  %arrayidx36 = getelementptr inbounds i16*, i16** %35, i64 %idxprom35
  %36 = load i16*, i16** %arrayidx36, align 8
  %arrayidx37 = getelementptr inbounds i16, i16* %36, i64 %idxprom34
  %37 = load i16, i16* %arrayidx37, align 2
  %conv38 = sext i16 %37 to i32
  %cmp39 = icmp ne i32 %conv33, %conv38
  br i1 %cmp39, label %if.then.54, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %for.body.28
  %38 = load i32, i32* %k, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i32, i32* %j, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i16**, i16*** @froms, align 8
  %arrayidx44 = getelementptr inbounds i16*, i16** %40, i64 %idxprom43
  %41 = load i16*, i16** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds i16, i16* %41, i64 %idxprom42
  %42 = load i16, i16* %arrayidx45, align 2
  %conv46 = sext i16 %42 to i32
  %43 = load i32, i32* %k, align 4
  %idxprom47 = sext i32 %43 to i64
  %44 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %44 to i64
  %45 = load i16**, i16*** @froms, align 8
  %arrayidx49 = getelementptr inbounds i16*, i16** %45, i64 %idxprom48
  %46 = load i16*, i16** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds i16, i16* %46, i64 %idxprom47
  %47 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %47 to i32
  %cmp52 = icmp ne i32 %conv46, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false.41, %for.body.28
  store i32 0, i32* %match, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %lor.lhs.false.41
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %48 = load i32, i32* %k, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.25

for.end:                                          ; preds = %land.end
  %49 = load i32, i32* %match, align 4
  %tobool56 = icmp ne i32 %49, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %for.end
  %50 = load i32, i32* %j, align 4
  store i32 %50, i32* %retval
  br label %return

if.end.58:                                        ; preds = %for.end
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %51 = load i32, i32* %prev, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %prev, align 4
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.60, %if.then.57, %if.then.23, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define i32 @pack_vector(i32 %vector) #0 {
entry:
  %retval = alloca i32, align 4
  %vector.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %t = alloca i32, align 4
  %loc = alloca i32, align 4
  %ok = alloca i32, align 4
  %from = alloca i16*, align 8
  %to = alloca i16*, align 8
  store i32 %vector, i32* %vector.addr, align 4
  %0 = load i32, i32* %vector.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** @order, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %2 to i32
  store i32 %conv, i32* %i, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16*, i16** @tally, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv3 = sext i16 %5 to i32
  store i32 %conv3, i32* %t, align 4
  %6 = load i32, i32* %t, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @berror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i16**, i16*** @froms, align 8
  %arrayidx6 = getelementptr inbounds i16*, i16** %8, i64 %idxprom5
  %9 = load i16*, i16** %arrayidx6, align 8
  store i16* %9, i16** %from, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load i16**, i16*** @tos, align 8
  %arrayidx8 = getelementptr inbounds i16*, i16** %11, i64 %idxprom7
  %12 = load i16*, i16** %arrayidx8, align 8
  store i16* %12, i16** %to, align 8
  %13 = load i32, i32* @lowzero, align 4
  %14 = load i16*, i16** %from, align 8
  %arrayidx9 = getelementptr inbounds i16, i16* %14, i64 0
  %15 = load i16, i16* %arrayidx9, align 2
  %conv10 = sext i16 %15 to i32
  %sub = sub nsw i32 %13, %conv10
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %if.end
  %16 = load i32, i32* %j, align 4
  %cmp11 = icmp slt i32 %16, 32767
  br i1 %cmp11, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %ok, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %17 = load i32, i32* %ok, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.13
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %t, align 4
  %cmp14 = icmp slt i32 %18, %19
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.13
  %20 = phi i1 [ false, %for.cond.13 ], [ %cmp14, %land.rhs ]
  br i1 %20, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %land.end
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %k, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load i16*, i16** %from, align 8
  %arrayidx18 = getelementptr inbounds i16, i16* %23, i64 %idxprom17
  %24 = load i16, i16* %arrayidx18, align 2
  %conv19 = sext i16 %24 to i32
  %add = add nsw i32 %21, %conv19
  store i32 %add, i32* %loc, align 4
  %25 = load i32, i32* %loc, align 4
  %cmp20 = icmp sgt i32 %25, 32767
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.body.16
  call void @fatals(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i32 32767, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.body.16
  %26 = load i32, i32* %loc, align 4
  %idxprom24 = sext i32 %26 to i64
  %27 = load i16*, i16** @table, align 8
  %arrayidx25 = getelementptr inbounds i16, i16* %27, i64 %idxprom24
  %28 = load i16, i16* %arrayidx25, align 2
  %conv26 = sext i16 %28 to i32
  %cmp27 = icmp ne i32 %conv26, 0
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.23
  store i32 0, i32* %ok, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %29 = load i32, i32* %k, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.13

for.end:                                          ; preds = %land.end
  store i32 0, i32* %k, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.45, %for.end
  %30 = load i32, i32* %ok, align 4
  %tobool32 = icmp ne i32 %30, 0
  br i1 %tobool32, label %land.rhs.33, label %land.end.36

land.rhs.33:                                      ; preds = %for.cond.31
  %31 = load i32, i32* %k, align 4
  %32 = load i32, i32* %vector.addr, align 4
  %cmp34 = icmp slt i32 %31, %32
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.33, %for.cond.31
  %33 = phi i1 [ false, %for.cond.31 ], [ %cmp34, %land.rhs.33 ]
  br i1 %33, label %for.body.37, label %for.end.47

for.body.37:                                      ; preds = %land.end.36
  %34 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %34 to i64
  %35 = load i16*, i16** @pos, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %35, i64 %idxprom38
  %36 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %36 to i32
  %37 = load i32, i32* %j, align 4
  %cmp41 = icmp eq i32 %conv40, %37
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.37
  store i32 0, i32* %ok, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %for.body.37
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %38 = load i32, i32* %k, align 4
  %inc46 = add nsw i32 %38, 1
  store i32 %inc46, i32* %k, align 4
  br label %for.cond.31

for.end.47:                                       ; preds = %land.end.36
  %39 = load i32, i32* %ok, align 4
  %tobool48 = icmp ne i32 %39, 0
  br i1 %tobool48, label %if.then.49, label %if.end.79

if.then.49:                                       ; preds = %for.end.47
  store i32 0, i32* %k, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.66, %if.then.49
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %t, align 4
  %cmp51 = icmp slt i32 %40, %41
  br i1 %cmp51, label %for.body.53, label %for.end.68

for.body.53:                                      ; preds = %for.cond.50
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %43 to i64
  %44 = load i16*, i16** %from, align 8
  %arrayidx55 = getelementptr inbounds i16, i16* %44, i64 %idxprom54
  %45 = load i16, i16* %arrayidx55, align 2
  %conv56 = sext i16 %45 to i32
  %add57 = add nsw i32 %42, %conv56
  store i32 %add57, i32* %loc, align 4
  %46 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %46 to i64
  %47 = load i16*, i16** %to, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %47, i64 %idxprom58
  %48 = load i16, i16* %arrayidx59, align 2
  %49 = load i32, i32* %loc, align 4
  %idxprom60 = sext i32 %49 to i64
  %50 = load i16*, i16** @table, align 8
  %arrayidx61 = getelementptr inbounds i16, i16* %50, i64 %idxprom60
  store i16 %48, i16* %arrayidx61, align 2
  %51 = load i32, i32* %k, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load i16*, i16** %from, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %52, i64 %idxprom62
  %53 = load i16, i16* %arrayidx63, align 2
  %54 = load i32, i32* %loc, align 4
  %idxprom64 = sext i32 %54 to i64
  %55 = load i16*, i16** @check, align 8
  %arrayidx65 = getelementptr inbounds i16, i16* %55, i64 %idxprom64
  store i16 %53, i16* %arrayidx65, align 2
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.53
  %56 = load i32, i32* %k, align 4
  %inc67 = add nsw i32 %56, 1
  store i32 %inc67, i32* %k, align 4
  br label %for.cond.50

for.end.68:                                       ; preds = %for.cond.50
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.68
  %57 = load i32, i32* @lowzero, align 4
  %idxprom69 = sext i32 %57 to i64
  %58 = load i16*, i16** @table, align 8
  %arrayidx70 = getelementptr inbounds i16, i16* %58, i64 %idxprom69
  %59 = load i16, i16* %arrayidx70, align 2
  %conv71 = sext i16 %59 to i32
  %cmp72 = icmp ne i32 %conv71, 0
  br i1 %cmp72, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %60 = load i32, i32* @lowzero, align 4
  %inc74 = add nsw i32 %60, 1
  store i32 %inc74, i32* @lowzero, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* %loc, align 4
  %62 = load i32, i32* @high, align 4
  %cmp75 = icmp sgt i32 %61, %62
  br i1 %cmp75, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %while.end
  %63 = load i32, i32* %loc, align 4
  store i32 %63, i32* @high, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %while.end
  %64 = load i32, i32* %j, align 4
  store i32 %64, i32* %retval
  br label %return

if.end.79:                                        ; preds = %for.end.47
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %65 = load i32, i32* %j, align 4
  %inc81 = add nsw i32 %65, 1
  store i32 %inc81, i32* %j, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  call void @berror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.82, %if.end.78
  %66 = load i32, i32* %retval
  ret i32 %66
}

declare void @berror(i8*) #1

declare void @fatals(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @feof(%struct._IO_FILE*) #2

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

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
