; ModuleID = './MultiSource.Applications.Burg/10.y.tab.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.YYSTACKDATA = type { i32, i16*, i16*, i16*, %union.YYSTYPE*, %union.YYSTYPE* }
%union.YYSTYPE = type { i8* }
%struct.list = type { i8*, %struct.list* }
%struct.arity = type { i32, %struct.list* }
%struct.binding = type { i8*, i32 }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.intlist = type { i32, %struct.intlist* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }

@rcsid_gram = global [5 x i8] c"$Id$\00", align 1
@yynerrs = common global i32 0, align 4
@yyerrflag = common global i32 0, align 4
@yychar = common global i32 0, align 4
@yystack = internal global %struct.YYSTACKDATA zeroinitializer, align 8
@yydefred = internal constant [43 x i16] [i16 4, i16 0, i16 0, i16 0, i16 11, i16 9, i16 0, i16 14, i16 5, i16 2, i16 0, i16 0, i16 8, i16 0, i16 0, i16 12, i16 10, i16 0, i16 15, i16 0, i16 0, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 18, i16 0, i16 0, i16 0, i16 0, i16 0, i16 16, i16 19, i16 0, i16 0, i16 0, i16 24, i16 0, i16 21, i16 23], align 16
@yysindex = internal constant [43 x i16] [i16 0, i16 0, i16 -247, i16 -252, i16 0, i16 0, i16 -244, i16 0, i16 0, i16 0, i16 -242, i16 -236, i16 0, i16 -234, i16 -41, i16 0, i16 0, i16 -28, i16 0, i16 -231, i16 -230, i16 0, i16 -12, i16 -29, i16 -230, i16 -228, i16 -37, i16 -5, i16 0, i16 -230, i16 -226, i16 -22, i16 -3, i16 -44, i16 0, i16 0, i16 -44, i16 -223, i16 -1, i16 0, i16 -44, i16 0, i16 0], align 16
@yycheck = internal constant [263 x i16] [i16 44, i16 0, i16 41, i16 24, i16 41, i16 44, i16 36, i16 44, i16 29, i16 261, i16 40, i16 258, i16 259, i16 260, i16 261, i16 258, i16 259, i16 260, i16 261, i16 263, i16 61, i16 263, i16 61, i16 258, i16 259, i16 260, i16 261, i16 263, i16 40, i16 263, i16 58, i16 262, i16 61, i16 263, i16 262, i16 40, i16 262, i16 59, i16 41, i16 262, i16 41, i16 0, i16 59, i16 41, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 262, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 261], align 16
@yytable = internal constant [263 x i16] [i16 37, i16 3, i16 17, i16 26, i16 28, i16 17, i16 39, i16 29, i16 32, i16 9, i16 42, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 6, i16 6, i16 12, i16 19, i16 14, i16 17, i16 7, i16 7, i16 7, i16 7, i16 16, i16 24, i16 17, i16 20, i16 21, i16 25, i16 22, i16 27, i16 30, i16 33, i16 34, i16 35, i16 40, i16 41, i16 1, i16 20, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 36, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 3], align 16
@yylval = common global %union.YYSTYPE zeroinitializer, align 8
@yyrindex = internal constant [43 x i16] [i16 0, i16 0, i16 0, i16 41, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -243, i16 -235, i16 0, i16 1, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -39, i16 0, i16 0, i16 0, i16 0, i16 -17, i16 0, i16 0, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0, i16 2, i16 0, i16 0, i16 0, i16 2, i16 0, i16 0], align 16
@.str = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@yylen = internal constant [25 x i16] [i16 2, i16 1, i16 2, i16 3, i16 0, i16 2, i16 2, i16 2, i16 2, i16 0, i16 2, i16 0, i16 2, i16 3, i16 0, i16 2, i16 7, i16 1, i16 4, i16 6, i16 0, i16 4, i16 0, i16 3, i16 2], align 16
@yyval = common global %union.YYSTYPE zeroinitializer, align 8
@yylhs = internal constant [25 x i16] [i16 -1, i16 0, i16 0, i16 11, i16 7, i16 7, i16 1, i16 1, i16 1, i16 10, i16 10, i16 9, i16 9, i16 2, i16 8, i16 8, i16 5, i16 6, i16 6, i16 6, i16 3, i16 3, i16 4, i16 4, i16 4], align 16
@yygindex = internal constant [12 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -30, i16 0, i16 -21, i16 0, i16 0, i16 0, i16 0, i16 0], align 16
@yydgoto = internal constant [12 x i16] [i16 1, i16 8, i16 15, i16 31, i16 38, i16 18, i16 23, i16 2, i16 13, i16 10, i16 11, i16 3], align 16
@.str.1 = private unnamed_addr constant [20 x i8] c"yacc stack overflow\00", align 1
@yydebug = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @yyparse() #0 {
entry:
  %retval = alloca i32, align 4
  %yym = alloca i32, align 4
  %yyn = alloca i32, align 4
  %yystate = alloca i32, align 4
  store i32 0, i32* @yynerrs, align 4
  store i32 0, i32* @yyerrflag, align 4
  store i32 -1, i32* @yychar, align 4
  store i32 0, i32* %yystate, align 4
  %0 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  %cmp = icmp eq i16* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %yyoverflow

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  store i16* %1, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %2 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 4), align 8
  store %union.YYSTYPE* %2, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  store i32 0, i32* %yystate, align 4
  %3 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 0, i16* %3, align 2
  br label %yyloop

yyloop:                                           ; preds = %if.end.283, %if.end.249, %if.end.120, %if.end.101, %if.end.47, %if.end
  %4 = load i32, i32* %yystate, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [43 x i16], [43 x i16]* @yydefred, i32 0, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %5 to i32
  store i32 %conv, i32* %yyn, align 4
  %cmp1 = icmp ne i32 %conv, 0
  br i1 %cmp1, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %yyloop
  br label %yyreduce

if.end.4:                                         ; preds = %yyloop
  %6 = load i32, i32* @yychar, align 4
  %cmp5 = icmp slt i32 %6, 0
  br i1 %cmp5, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.4
  %call8 = call i32 @yylex()
  store i32 %call8, i32* @yychar, align 4
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* @yychar, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end.4
  %7 = load i32, i32* %yystate, align 4
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds [43 x i16], [43 x i16]* @yysindex, i32 0, i64 %idxprom14
  %8 = load i16, i16* %arrayidx15, align 2
  %conv16 = sext i16 %8 to i32
  store i32 %conv16, i32* %yyn, align 4
  %tobool17 = icmp ne i32 %conv16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.48

land.lhs.true.18:                                 ; preds = %if.end.13
  %9 = load i32, i32* @yychar, align 4
  %10 = load i32, i32* %yyn, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %yyn, align 4
  %cmp19 = icmp sge i32 %add, 0
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.48

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %11 = load i32, i32* %yyn, align 4
  %cmp22 = icmp sle i32 %11, 262
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.48

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %12 = load i32, i32* %yyn, align 4
  %idxprom25 = sext i32 %12 to i64
  %arrayidx26 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i32 0, i64 %idxprom25
  %13 = load i16, i16* %arrayidx26, align 2
  %conv27 = sext i16 %13 to i32
  %14 = load i32, i32* @yychar, align 4
  %cmp28 = icmp eq i32 %conv27, %14
  br i1 %cmp28, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %land.lhs.true.24
  %15 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %16 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %cmp31 = icmp uge i16* %15, %16
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.37

land.lhs.true.33:                                 ; preds = %if.then.30
  %call34 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.33
  br label %yyoverflow

if.end.37:                                        ; preds = %land.lhs.true.33, %if.then.30
  %17 = load i32, i32* %yyn, align 4
  %idxprom38 = sext i32 %17 to i64
  %arrayidx39 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom38
  %18 = load i16, i16* %arrayidx39, align 2
  %conv40 = sext i16 %18 to i32
  store i32 %conv40, i32* %yystate, align 4
  %19 = load i32, i32* %yyn, align 4
  %idxprom41 = sext i32 %19 to i64
  %arrayidx42 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom41
  %20 = load i16, i16* %arrayidx42, align 2
  %21 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %21, i32 1
  store i16* %incdec.ptr, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %20, i16* %incdec.ptr, align 2
  %22 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %incdec.ptr43 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %22, i32 1
  store %union.YYSTYPE* %incdec.ptr43, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %23 = bitcast %union.YYSTYPE* %incdec.ptr43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false)
  store i32 -1, i32* @yychar, align 4
  %24 = load i32, i32* @yyerrflag, align 4
  %cmp44 = icmp sgt i32 %24, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.37
  %25 = load i32, i32* @yyerrflag, align 4
  %dec = add nsw i32 %25, -1
  store i32 %dec, i32* @yyerrflag, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.37
  br label %yyloop

if.end.48:                                        ; preds = %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true.18, %if.end.13
  %26 = load i32, i32* %yystate, align 4
  %idxprom49 = sext i32 %26 to i64
  %arrayidx50 = getelementptr inbounds [43 x i16], [43 x i16]* @yyrindex, i32 0, i64 %idxprom49
  %27 = load i16, i16* %arrayidx50, align 2
  %conv51 = sext i16 %27 to i32
  store i32 %conv51, i32* %yyn, align 4
  %tobool52 = icmp ne i32 %conv51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.70

land.lhs.true.53:                                 ; preds = %if.end.48
  %28 = load i32, i32* @yychar, align 4
  %29 = load i32, i32* %yyn, align 4
  %add54 = add nsw i32 %29, %28
  store i32 %add54, i32* %yyn, align 4
  %cmp55 = icmp sge i32 %add54, 0
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %30 = load i32, i32* %yyn, align 4
  %cmp58 = icmp sle i32 %30, 262
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.70

land.lhs.true.60:                                 ; preds = %land.lhs.true.57
  %31 = load i32, i32* %yyn, align 4
  %idxprom61 = sext i32 %31 to i64
  %arrayidx62 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i32 0, i64 %idxprom61
  %32 = load i16, i16* %arrayidx62, align 2
  %conv63 = sext i16 %32 to i32
  %33 = load i32, i32* @yychar, align 4
  %cmp64 = icmp eq i32 %conv63, %33
  br i1 %cmp64, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %land.lhs.true.60
  %34 = load i32, i32* %yyn, align 4
  %idxprom67 = sext i32 %34 to i64
  %arrayidx68 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom67
  %35 = load i16, i16* %arrayidx68, align 2
  %conv69 = sext i16 %35 to i32
  store i32 %conv69, i32* %yyn, align 4
  br label %yyreduce

if.end.70:                                        ; preds = %land.lhs.true.60, %land.lhs.true.57, %land.lhs.true.53, %if.end.48
  %36 = load i32, i32* @yyerrflag, align 4
  %tobool71 = icmp ne i32 %36, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  br label %yyinrecovery

if.end.73:                                        ; preds = %if.end.70
  call void @yyerror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0))
  br label %yyerrlab

yyerrlab:                                         ; preds = %if.end.73
  %37 = load i32, i32* @yynerrs, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* @yynerrs, align 4
  br label %yyinrecovery

yyinrecovery:                                     ; preds = %yyerrlab, %if.then.72
  %38 = load i32, i32* @yyerrflag, align 4
  %cmp74 = icmp slt i32 %38, 3
  br i1 %cmp74, label %if.then.76, label %if.else.116

if.then.76:                                       ; preds = %yyinrecovery
  store i32 3, i32* @yyerrflag, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end.115, %if.then.76
  %39 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %40 = load i16, i16* %39, align 2
  %idxprom77 = sext i16 %40 to i64
  %arrayidx78 = getelementptr inbounds [43 x i16], [43 x i16]* @yysindex, i32 0, i64 %idxprom77
  %41 = load i16, i16* %arrayidx78, align 2
  %conv79 = sext i16 %41 to i32
  store i32 %conv79, i32* %yyn, align 4
  %tobool80 = icmp ne i32 %conv79, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.else

land.lhs.true.81:                                 ; preds = %for.cond
  %42 = load i32, i32* %yyn, align 4
  %add82 = add nsw i32 %42, 256
  store i32 %add82, i32* %yyn, align 4
  %cmp83 = icmp sge i32 %add82, 0
  br i1 %cmp83, label %land.lhs.true.85, label %if.else

land.lhs.true.85:                                 ; preds = %land.lhs.true.81
  %43 = load i32, i32* %yyn, align 4
  %cmp86 = icmp sle i32 %43, 262
  br i1 %cmp86, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %land.lhs.true.85
  %44 = load i32, i32* %yyn, align 4
  %idxprom89 = sext i32 %44 to i64
  %arrayidx90 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i32 0, i64 %idxprom89
  %45 = load i16, i16* %arrayidx90, align 2
  %conv91 = sext i16 %45 to i32
  %cmp92 = icmp eq i32 %conv91, 256
  br i1 %cmp92, label %if.then.94, label %if.else

if.then.94:                                       ; preds = %land.lhs.true.88
  %46 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %47 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %cmp95 = icmp uge i16* %46, %47
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.101

land.lhs.true.97:                                 ; preds = %if.then.94
  %call98 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %land.lhs.true.97
  br label %yyoverflow

if.end.101:                                       ; preds = %land.lhs.true.97, %if.then.94
  %48 = load i32, i32* %yyn, align 4
  %idxprom102 = sext i32 %48 to i64
  %arrayidx103 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom102
  %49 = load i16, i16* %arrayidx103, align 2
  %conv104 = sext i16 %49 to i32
  store i32 %conv104, i32* %yystate, align 4
  %50 = load i32, i32* %yyn, align 4
  %idxprom105 = sext i32 %50 to i64
  %arrayidx106 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom105
  %51 = load i16, i16* %arrayidx106, align 2
  %52 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %incdec.ptr107 = getelementptr inbounds i16, i16* %52, i32 1
  store i16* %incdec.ptr107, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %51, i16* %incdec.ptr107, align 2
  %53 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %incdec.ptr108 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %53, i32 1
  store %union.YYSTYPE* %incdec.ptr108, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %54 = bitcast %union.YYSTYPE* %incdec.ptr108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* bitcast (%union.YYSTYPE* @yylval to i8*), i64 8, i32 8, i1 false)
  br label %yyloop

if.else:                                          ; preds = %land.lhs.true.88, %land.lhs.true.85, %land.lhs.true.81, %for.cond
  %55 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %56 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 1), align 8
  %cmp109 = icmp ule i16* %55, %56
  br i1 %cmp109, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %if.else
  br label %yyabort

if.end.112:                                       ; preds = %if.else
  %57 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %incdec.ptr113 = getelementptr inbounds i16, i16* %57, i32 -1
  store i16* %incdec.ptr113, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %58 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %incdec.ptr114 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %58, i32 -1
  store %union.YYSTYPE* %incdec.ptr114, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.112
  br label %for.cond

if.else.116:                                      ; preds = %yyinrecovery
  %59 = load i32, i32* @yychar, align 4
  %cmp117 = icmp eq i32 %59, 0
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.else.116
  br label %yyabort

if.end.120:                                       ; preds = %if.else.116
  store i32 -1, i32* @yychar, align 4
  br label %yyloop

yyreduce:                                         ; preds = %if.then.66, %if.then.3
  %60 = load i32, i32* %yyn, align 4
  %idxprom121 = sext i32 %60 to i64
  %arrayidx122 = getelementptr inbounds [25 x i16], [25 x i16]* @yylen, i32 0, i64 %idxprom121
  %61 = load i16, i16* %arrayidx122, align 2
  %conv123 = sext i16 %61 to i32
  store i32 %conv123, i32* %yym, align 4
  %62 = load i32, i32* %yym, align 4
  %tobool124 = icmp ne i32 %62, 0
  br i1 %tobool124, label %if.then.125, label %if.else.128

if.then.125:                                      ; preds = %yyreduce
  %63 = load i32, i32* %yym, align 4
  %sub = sub nsw i32 1, %63
  %idxprom126 = sext i32 %sub to i64
  %64 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx127 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %64, i64 %idxprom126
  %65 = bitcast %union.YYSTYPE* %arrayidx127 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8* %65, i64 8, i32 8, i1 false)
  br label %if.end.129

if.else.128:                                      ; preds = %yyreduce
  call void @llvm.memset.p0i8.i64(i8* bitcast (%union.YYSTYPE* @yyval to i8*), i8 0, i64 8, i32 8, i1 false)
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.128, %if.then.125
  %66 = load i32, i32* %yyn, align 4
  switch i32 %66, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.130
    i32 4, label %sw.bb.134
    i32 5, label %sw.bb.135
    i32 6, label %sw.bb.140
    i32 7, label %sw.bb.144
    i32 8, label %sw.bb.147
    i32 9, label %sw.bb.149
    i32 10, label %sw.bb.150
    i32 11, label %sw.bb.156
    i32 12, label %sw.bb.157
    i32 13, label %sw.bb.162
    i32 14, label %sw.bb.167
    i32 15, label %sw.bb.168
    i32 16, label %sw.bb.173
    i32 17, label %sw.bb.181
    i32 18, label %sw.bb.185
    i32 19, label %sw.bb.192
    i32 20, label %sw.bb.202
    i32 21, label %sw.bb.203
    i32 22, label %sw.bb.209
    i32 23, label %sw.bb.210
    i32 24, label %sw.bb.216
  ]

sw.bb:                                            ; preds = %if.end.129
  call void @yyfinished()
  br label %sw.epilog

sw.bb.130:                                        ; preds = %if.end.129
  %67 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx131 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %67, i64 -2
  %y_list = bitcast %union.YYSTYPE* %arrayidx131 to %struct.list**
  %68 = load %struct.list*, %struct.list** %y_list, align 8
  %69 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx132 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %69, i64 0
  %y_list133 = bitcast %union.YYSTYPE* %arrayidx132 to %struct.list**
  %70 = load %struct.list*, %struct.list** %y_list133, align 8
  call void @doSpec(%struct.list* %68, %struct.list* %70)
  br label %sw.epilog

sw.bb.134:                                        ; preds = %if.end.129
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.end.129
  %71 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx136 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %71, i64 0
  %y_arity = bitcast %union.YYSTYPE* %arrayidx136 to %struct.arity**
  %72 = load %struct.arity*, %struct.arity** %y_arity, align 8
  %73 = bitcast %struct.arity* %72 to i8*
  %74 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx137 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %74, i64 -1
  %y_list138 = bitcast %union.YYSTYPE* %arrayidx137 to %struct.list**
  %75 = load %struct.list*, %struct.list** %y_list138, align 8
  %call139 = call %struct.list* @newList(i8* %73, %struct.list* %75)
  store %struct.list* %call139, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.140:                                        ; preds = %if.end.129
  %76 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx141 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %76, i64 0
  %y_list142 = bitcast %union.YYSTYPE* %arrayidx141 to %struct.list**
  %77 = load %struct.list*, %struct.list** %y_list142, align 8
  %call143 = call %struct.arity* @newArity(i32 -1, %struct.list* %77)
  store %struct.arity* %call143, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  br label %sw.epilog

sw.bb.144:                                        ; preds = %if.end.129
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %78 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx145 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %78, i64 0
  %y_list146 = bitcast %union.YYSTYPE* %arrayidx145 to %struct.list**
  %79 = load %struct.list*, %struct.list** %y_list146, align 8
  call void (%struct.list*, ...) bitcast (void (...)* @doGram to void (%struct.list*, ...)*)(%struct.list* %79)
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.end.129
  store %struct.arity* null, %struct.arity** bitcast (%union.YYSTYPE* @yyval to %struct.arity**), align 8
  %80 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx148 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %80, i64 0
  %y_string = bitcast %union.YYSTYPE* %arrayidx148 to i8**
  %81 = load i8*, i8** %y_string, align 8
  call void @doStart(i8* %81)
  br label %sw.epilog

sw.bb.149:                                        ; preds = %if.end.129
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end.129
  %82 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx151 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %82, i64 0
  %y_string152 = bitcast %union.YYSTYPE* %arrayidx151 to i8**
  %83 = load i8*, i8** %y_string152, align 8
  %84 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx153 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %84, i64 -1
  %y_list154 = bitcast %union.YYSTYPE* %arrayidx153 to %struct.list**
  %85 = load %struct.list*, %struct.list** %y_list154, align 8
  %call155 = call %struct.list* @newList(i8* %83, %struct.list* %85)
  store %struct.list* %call155, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.156:                                        ; preds = %if.end.129
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.157:                                        ; preds = %if.end.129
  %86 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx158 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %86, i64 0
  %y_binding = bitcast %union.YYSTYPE* %arrayidx158 to %struct.binding**
  %87 = load %struct.binding*, %struct.binding** %y_binding, align 8
  %88 = bitcast %struct.binding* %87 to i8*
  %89 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx159 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %89, i64 -1
  %y_list160 = bitcast %union.YYSTYPE* %arrayidx159 to %struct.list**
  %90 = load %struct.list*, %struct.list** %y_list160, align 8
  %call161 = call %struct.list* @newList(i8* %88, %struct.list* %90)
  store %struct.list* %call161, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.162:                                        ; preds = %if.end.129
  %91 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx163 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %91, i64 -2
  %y_string164 = bitcast %union.YYSTYPE* %arrayidx163 to i8**
  %92 = load i8*, i8** %y_string164, align 8
  %93 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx165 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %93, i64 0
  %y_int = bitcast %union.YYSTYPE* %arrayidx165 to i32*
  %94 = load i32, i32* %y_int, align 4
  %call166 = call %struct.binding* @newBinding(i8* %92, i32 %94)
  store %struct.binding* %call166, %struct.binding** bitcast (%union.YYSTYPE* @yyval to %struct.binding**), align 8
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.end.129
  store %struct.list* null, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.168:                                        ; preds = %if.end.129
  %95 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx169 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %95, i64 0
  %y_ruleAST = bitcast %union.YYSTYPE* %arrayidx169 to %struct.ruleAST**
  %96 = load %struct.ruleAST*, %struct.ruleAST** %y_ruleAST, align 8
  %97 = bitcast %struct.ruleAST* %96 to i8*
  %98 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx170 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %98, i64 -1
  %y_list171 = bitcast %union.YYSTYPE* %arrayidx170 to %struct.list**
  %99 = load %struct.list*, %struct.list** %y_list171, align 8
  %call172 = call %struct.list* @newList(i8* %97, %struct.list* %99)
  store %struct.list* %call172, %struct.list** bitcast (%union.YYSTYPE* @yyval to %struct.list**), align 8
  br label %sw.epilog

sw.bb.173:                                        ; preds = %if.end.129
  %100 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx174 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %100, i64 -6
  %y_string175 = bitcast %union.YYSTYPE* %arrayidx174 to i8**
  %101 = load i8*, i8** %y_string175, align 8
  %102 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx176 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %102, i64 -4
  %y_patternAST = bitcast %union.YYSTYPE* %arrayidx176 to %struct.patternAST**
  %103 = load %struct.patternAST*, %struct.patternAST** %y_patternAST, align 8
  %104 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx177 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %104, i64 -2
  %y_int178 = bitcast %union.YYSTYPE* %arrayidx177 to i32*
  %105 = load i32, i32* %y_int178, align 4
  %106 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx179 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %106, i64 -1
  %y_intlist = bitcast %union.YYSTYPE* %arrayidx179 to %struct.intlist**
  %107 = load %struct.intlist*, %struct.intlist** %y_intlist, align 8
  %call180 = call %struct.ruleAST* @newRuleAST(i8* %101, %struct.patternAST* %103, i32 %105, %struct.intlist* %107)
  store %struct.ruleAST* %call180, %struct.ruleAST** bitcast (%union.YYSTYPE* @yyval to %struct.ruleAST**), align 8
  br label %sw.epilog

sw.bb.181:                                        ; preds = %if.end.129
  %108 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx182 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %108, i64 0
  %y_string183 = bitcast %union.YYSTYPE* %arrayidx182 to i8**
  %109 = load i8*, i8** %y_string183, align 8
  %call184 = call %struct.patternAST* @newPatternAST(i8* %109, %struct.list* null)
  store %struct.patternAST* %call184, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %sw.epilog

sw.bb.185:                                        ; preds = %if.end.129
  %110 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx186 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %110, i64 -3
  %y_string187 = bitcast %union.YYSTYPE* %arrayidx186 to i8**
  %111 = load i8*, i8** %y_string187, align 8
  %112 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx188 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %112, i64 -1
  %y_patternAST189 = bitcast %union.YYSTYPE* %arrayidx188 to %struct.patternAST**
  %113 = load %struct.patternAST*, %struct.patternAST** %y_patternAST189, align 8
  %114 = bitcast %struct.patternAST* %113 to i8*
  %call190 = call %struct.list* @newList(i8* %114, %struct.list* null)
  %call191 = call %struct.patternAST* @newPatternAST(i8* %111, %struct.list* %call190)
  store %struct.patternAST* %call191, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %sw.epilog

sw.bb.192:                                        ; preds = %if.end.129
  %115 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx193 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %115, i64 -5
  %y_string194 = bitcast %union.YYSTYPE* %arrayidx193 to i8**
  %116 = load i8*, i8** %y_string194, align 8
  %117 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx195 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %117, i64 -3
  %y_patternAST196 = bitcast %union.YYSTYPE* %arrayidx195 to %struct.patternAST**
  %118 = load %struct.patternAST*, %struct.patternAST** %y_patternAST196, align 8
  %119 = bitcast %struct.patternAST* %118 to i8*
  %120 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx197 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %120, i64 -1
  %y_patternAST198 = bitcast %union.YYSTYPE* %arrayidx197 to %struct.patternAST**
  %121 = load %struct.patternAST*, %struct.patternAST** %y_patternAST198, align 8
  %122 = bitcast %struct.patternAST* %121 to i8*
  %call199 = call %struct.list* @newList(i8* %122, %struct.list* null)
  %call200 = call %struct.list* @newList(i8* %119, %struct.list* %call199)
  %call201 = call %struct.patternAST* @newPatternAST(i8* %116, %struct.list* %call200)
  store %struct.patternAST* %call201, %struct.patternAST** bitcast (%union.YYSTYPE* @yyval to %struct.patternAST**), align 8
  br label %sw.epilog

sw.bb.202:                                        ; preds = %if.end.129
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %sw.epilog

sw.bb.203:                                        ; preds = %if.end.129
  %123 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx204 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %123, i64 -2
  %y_int205 = bitcast %union.YYSTYPE* %arrayidx204 to i32*
  %124 = load i32, i32* %y_int205, align 4
  %125 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx206 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %125, i64 -1
  %y_intlist207 = bitcast %union.YYSTYPE* %arrayidx206 to %struct.intlist**
  %126 = load %struct.intlist*, %struct.intlist** %y_intlist207, align 8
  %call208 = call %struct.intlist* @newIntList(i32 %124, %struct.intlist* %126)
  store %struct.intlist* %call208, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %sw.epilog

sw.bb.209:                                        ; preds = %if.end.129
  store %struct.intlist* null, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %sw.epilog

sw.bb.210:                                        ; preds = %if.end.129
  %127 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx211 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %127, i64 -1
  %y_int212 = bitcast %union.YYSTYPE* %arrayidx211 to i32*
  %128 = load i32, i32* %y_int212, align 4
  %129 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx213 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %129, i64 0
  %y_intlist214 = bitcast %union.YYSTYPE* %arrayidx213 to %struct.intlist**
  %130 = load %struct.intlist*, %struct.intlist** %y_intlist214, align 8
  %call215 = call %struct.intlist* @newIntList(i32 %128, %struct.intlist* %130)
  store %struct.intlist* %call215, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %sw.epilog

sw.bb.216:                                        ; preds = %if.end.129
  %131 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx217 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %131, i64 -1
  %y_int218 = bitcast %union.YYSTYPE* %arrayidx217 to i32*
  %132 = load i32, i32* %y_int218, align 4
  %133 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %arrayidx219 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %133, i64 0
  %y_intlist220 = bitcast %union.YYSTYPE* %arrayidx219 to %struct.intlist**
  %134 = load %struct.intlist*, %struct.intlist** %y_intlist220, align 8
  %call221 = call %struct.intlist* @newIntList(i32 %132, %struct.intlist* %134)
  store %struct.intlist* %call221, %struct.intlist** bitcast (%union.YYSTYPE* @yyval to %struct.intlist**), align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.129, %sw.bb.216, %sw.bb.210, %sw.bb.209, %sw.bb.203, %sw.bb.202, %sw.bb.192, %sw.bb.185, %sw.bb.181, %sw.bb.173, %sw.bb.168, %sw.bb.167, %sw.bb.162, %sw.bb.157, %sw.bb.156, %sw.bb.150, %sw.bb.149, %sw.bb.147, %sw.bb.144, %sw.bb.140, %sw.bb.135, %sw.bb.134, %sw.bb.130, %sw.bb
  %135 = load i32, i32* %yym, align 4
  %136 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %idx.ext = sext i32 %135 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i16, i16* %136, i64 %idx.neg
  store i16* %add.ptr, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %137 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %138 = load i16, i16* %137, align 2
  %conv222 = sext i16 %138 to i32
  store i32 %conv222, i32* %yystate, align 4
  %139 = load i32, i32* %yym, align 4
  %140 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %idx.ext223 = sext i32 %139 to i64
  %idx.neg224 = sub i64 0, %idx.ext223
  %add.ptr225 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %140, i64 %idx.neg224
  store %union.YYSTYPE* %add.ptr225, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %141 = load i32, i32* %yyn, align 4
  %idxprom226 = sext i32 %141 to i64
  %arrayidx227 = getelementptr inbounds [25 x i16], [25 x i16]* @yylhs, i32 0, i64 %idxprom226
  %142 = load i16, i16* %arrayidx227, align 2
  %conv228 = sext i16 %142 to i32
  store i32 %conv228, i32* %yym, align 4
  %143 = load i32, i32* %yystate, align 4
  %cmp229 = icmp eq i32 %143, 0
  br i1 %cmp229, label %land.lhs.true.231, label %if.end.250

land.lhs.true.231:                                ; preds = %sw.epilog
  %144 = load i32, i32* %yym, align 4
  %cmp232 = icmp eq i32 %144, 0
  br i1 %cmp232, label %if.then.234, label %if.end.250

if.then.234:                                      ; preds = %land.lhs.true.231
  store i32 1, i32* %yystate, align 4
  %145 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %incdec.ptr235 = getelementptr inbounds i16, i16* %145, i32 1
  store i16* %incdec.ptr235, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 1, i16* %incdec.ptr235, align 2
  %146 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %incdec.ptr236 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %146, i32 1
  store %union.YYSTYPE* %incdec.ptr236, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %147 = bitcast %union.YYSTYPE* %incdec.ptr236 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i32 8, i1 false)
  %148 = load i32, i32* @yychar, align 4
  %cmp237 = icmp slt i32 %148, 0
  br i1 %cmp237, label %if.then.239, label %if.end.245

if.then.239:                                      ; preds = %if.then.234
  %call240 = call i32 @yylex()
  store i32 %call240, i32* @yychar, align 4
  %cmp241 = icmp slt i32 %call240, 0
  br i1 %cmp241, label %if.then.243, label %if.end.244

if.then.243:                                      ; preds = %if.then.239
  store i32 0, i32* @yychar, align 4
  br label %if.end.244

if.end.244:                                       ; preds = %if.then.243, %if.then.239
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %if.then.234
  %149 = load i32, i32* @yychar, align 4
  %cmp246 = icmp eq i32 %149, 0
  br i1 %cmp246, label %if.then.248, label %if.end.249

if.then.248:                                      ; preds = %if.end.245
  br label %yyaccept

if.end.249:                                       ; preds = %if.end.245
  br label %yyloop

if.end.250:                                       ; preds = %land.lhs.true.231, %sw.epilog
  %150 = load i32, i32* %yym, align 4
  %idxprom251 = sext i32 %150 to i64
  %arrayidx252 = getelementptr inbounds [12 x i16], [12 x i16]* @yygindex, i32 0, i64 %idxprom251
  %151 = load i16, i16* %arrayidx252, align 2
  %conv253 = sext i16 %151 to i32
  store i32 %conv253, i32* %yyn, align 4
  %tobool254 = icmp ne i32 %conv253, 0
  br i1 %tobool254, label %land.lhs.true.255, label %if.else.272

land.lhs.true.255:                                ; preds = %if.end.250
  %152 = load i32, i32* %yystate, align 4
  %153 = load i32, i32* %yyn, align 4
  %add256 = add nsw i32 %153, %152
  store i32 %add256, i32* %yyn, align 4
  %cmp257 = icmp sge i32 %add256, 0
  br i1 %cmp257, label %land.lhs.true.259, label %if.else.272

land.lhs.true.259:                                ; preds = %land.lhs.true.255
  %154 = load i32, i32* %yyn, align 4
  %cmp260 = icmp sle i32 %154, 262
  br i1 %cmp260, label %land.lhs.true.262, label %if.else.272

land.lhs.true.262:                                ; preds = %land.lhs.true.259
  %155 = load i32, i32* %yyn, align 4
  %idxprom263 = sext i32 %155 to i64
  %arrayidx264 = getelementptr inbounds [263 x i16], [263 x i16]* @yycheck, i32 0, i64 %idxprom263
  %156 = load i16, i16* %arrayidx264, align 2
  %conv265 = sext i16 %156 to i32
  %157 = load i32, i32* %yystate, align 4
  %cmp266 = icmp eq i32 %conv265, %157
  br i1 %cmp266, label %if.then.268, label %if.else.272

if.then.268:                                      ; preds = %land.lhs.true.262
  %158 = load i32, i32* %yyn, align 4
  %idxprom269 = sext i32 %158 to i64
  %arrayidx270 = getelementptr inbounds [263 x i16], [263 x i16]* @yytable, i32 0, i64 %idxprom269
  %159 = load i16, i16* %arrayidx270, align 2
  %conv271 = sext i16 %159 to i32
  store i32 %conv271, i32* %yystate, align 4
  br label %if.end.276

if.else.272:                                      ; preds = %land.lhs.true.262, %land.lhs.true.259, %land.lhs.true.255, %if.end.250
  %160 = load i32, i32* %yym, align 4
  %idxprom273 = sext i32 %160 to i64
  %arrayidx274 = getelementptr inbounds [12 x i16], [12 x i16]* @yydgoto, i32 0, i64 %idxprom273
  %161 = load i16, i16* %arrayidx274, align 2
  %conv275 = sext i16 %161 to i32
  store i32 %conv275, i32* %yystate, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.else.272, %if.then.268
  %162 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %163 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 3), align 8
  %cmp277 = icmp uge i16* %162, %163
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.283

land.lhs.true.279:                                ; preds = %if.end.276
  %call280 = call i32 @yygrowstack(%struct.YYSTACKDATA* @yystack)
  %tobool281 = icmp ne i32 %call280, 0
  br i1 %tobool281, label %if.then.282, label %if.end.283

if.then.282:                                      ; preds = %land.lhs.true.279
  br label %yyoverflow

if.end.283:                                       ; preds = %land.lhs.true.279, %if.end.276
  %164 = load i32, i32* %yystate, align 4
  %conv284 = trunc i32 %164 to i16
  %165 = load i16*, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  %incdec.ptr285 = getelementptr inbounds i16, i16* %165, i32 1
  store i16* %incdec.ptr285, i16** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 2), align 8
  store i16 %conv284, i16* %incdec.ptr285, align 2
  %166 = load %union.YYSTYPE*, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %incdec.ptr286 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %166, i32 1
  store %union.YYSTYPE* %incdec.ptr286, %union.YYSTYPE** getelementptr inbounds (%struct.YYSTACKDATA, %struct.YYSTACKDATA* @yystack, i32 0, i32 5), align 8
  %167 = bitcast %union.YYSTYPE* %incdec.ptr286 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %167, i8* bitcast (%union.YYSTYPE* @yyval to i8*), i64 8, i32 8, i1 false)
  br label %yyloop

yyoverflow:                                       ; preds = %if.then.282, %if.then.100, %if.then.36, %if.then
  call void @yyerror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %yyabort

yyabort:                                          ; preds = %yyoverflow, %if.then.119, %if.then.111
  store i32 1, i32* %retval
  br label %return

yyaccept:                                         ; preds = %if.then.248
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %yyaccept, %yyabort
  %168 = load i32, i32* %retval
  ret i32 %168
}

; Function Attrs: nounwind uwtable
define internal i32 @yygrowstack(%struct.YYSTACKDATA* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca %struct.YYSTACKDATA*, align 8
  %i = alloca i32, align 4
  %newsize = alloca i32, align 4
  %newss = alloca i16*, align 8
  %newvs = alloca %union.YYSTYPE*, align 8
  store %struct.YYSTACKDATA* %data, %struct.YYSTACKDATA** %data.addr, align 8
  %0 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %stacksize = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %0, i32 0, i32 0
  %1 = load i32, i32* %stacksize, align 4
  store i32 %1, i32* %newsize, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 200, i32* %newsize, align 4
  br label %if.end.7

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %newsize, align 4
  %cmp1 = icmp uge i32 %2, 10000
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %3 = load i32, i32* %newsize, align 4
  %mul = mul i32 %3, 2
  store i32 %mul, i32* %newsize, align 4
  %cmp4 = icmp ugt i32 %mul, 10000
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else.3
  store i32 10000, i32* %newsize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then
  %4 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_mark = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %4, i32 0, i32 2
  %5 = load i16*, i16** %s_mark, align 8
  %6 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_base = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %6, i32 0, i32 1
  %7 = load i16*, i16** %s_base, align 8
  %sub.ptr.lhs.cast = ptrtoint i16* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv = trunc i64 %sub.ptr.div to i32
  store i32 %conv, i32* %i, align 4
  %8 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_base8 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %8, i32 0, i32 1
  %9 = load i16*, i16** %s_base8, align 8
  %10 = bitcast i16* %9 to i8*
  %11 = load i32, i32* %newsize, align 4
  %conv9 = zext i32 %11 to i64
  %mul10 = mul i64 %conv9, 2
  %call = call i8* @realloc(i8* %10, i64 %mul10) #2
  %12 = bitcast i8* %call to i16*
  store i16* %12, i16** %newss, align 8
  %13 = load i16*, i16** %newss, align 8
  %cmp11 = icmp eq i16* %13, null
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.7
  store i32 -1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.7
  %14 = load i16*, i16** %newss, align 8
  %15 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_base15 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %15, i32 0, i32 1
  store i16* %14, i16** %s_base15, align 8
  %16 = load i16*, i16** %newss, align 8
  %17 = load i32, i32* %i, align 4
  %idx.ext = sext i32 %17 to i64
  %add.ptr = getelementptr inbounds i16, i16* %16, i64 %idx.ext
  %18 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_mark16 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %18, i32 0, i32 2
  store i16* %add.ptr, i16** %s_mark16, align 8
  %19 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %l_base = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %19, i32 0, i32 4
  %20 = load %union.YYSTYPE*, %union.YYSTYPE** %l_base, align 8
  %21 = bitcast %union.YYSTYPE* %20 to i8*
  %22 = load i32, i32* %newsize, align 4
  %conv17 = zext i32 %22 to i64
  %mul18 = mul i64 %conv17, 8
  %call19 = call i8* @realloc(i8* %21, i64 %mul18) #2
  %23 = bitcast i8* %call19 to %union.YYSTYPE*
  store %union.YYSTYPE* %23, %union.YYSTYPE** %newvs, align 8
  %24 = load %union.YYSTYPE*, %union.YYSTYPE** %newvs, align 8
  %cmp20 = icmp eq %union.YYSTYPE* %24, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.14
  store i32 -1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.14
  %25 = load %union.YYSTYPE*, %union.YYSTYPE** %newvs, align 8
  %26 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %l_base24 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %26, i32 0, i32 4
  store %union.YYSTYPE* %25, %union.YYSTYPE** %l_base24, align 8
  %27 = load %union.YYSTYPE*, %union.YYSTYPE** %newvs, align 8
  %28 = load i32, i32* %i, align 4
  %idx.ext25 = sext i32 %28 to i64
  %add.ptr26 = getelementptr inbounds %union.YYSTYPE, %union.YYSTYPE* %27, i64 %idx.ext25
  %29 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %l_mark = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %29, i32 0, i32 5
  store %union.YYSTYPE* %add.ptr26, %union.YYSTYPE** %l_mark, align 8
  %30 = load i32, i32* %newsize, align 4
  %31 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %stacksize27 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %31, i32 0, i32 0
  store i32 %30, i32* %stacksize27, align 4
  %32 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_base28 = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %32, i32 0, i32 1
  %33 = load i16*, i16** %s_base28, align 8
  %34 = load i32, i32* %newsize, align 4
  %idx.ext29 = zext i32 %34 to i64
  %add.ptr30 = getelementptr inbounds i16, i16* %33, i64 %idx.ext29
  %add.ptr31 = getelementptr inbounds i16, i16* %add.ptr30, i64 -1
  %35 = load %struct.YYSTACKDATA*, %struct.YYSTACKDATA** %data.addr, align 8
  %s_last = getelementptr inbounds %struct.YYSTACKDATA, %struct.YYSTACKDATA* %35, i32 0, i32 3
  store i16* %add.ptr31, i16** %s_last, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.13, %if.then.2
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @yylex() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @yyerror(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @yyfinished() #1

declare void @doSpec(%struct.list*, %struct.list*) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

declare %struct.arity* @newArity(i32, %struct.list*) #1

declare void @doGram(...) #1

declare void @doStart(i8*) #1

declare %struct.binding* @newBinding(i8*, i32) #1

declare %struct.ruleAST* @newRuleAST(i8*, %struct.patternAST*, i32, %struct.intlist*) #1

declare %struct.patternAST* @newPatternAST(i8*, %struct.list*) #1

declare %struct.intlist* @newIntList(i32, %struct.intlist*) #1

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
