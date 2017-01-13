; ModuleID = './MultiSource.Applications.Burg/4.fe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.arity = type { i32, %struct.list* }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }
%struct.binding = type { i8*, i32 }

@rcsid_fe = global [44 x i8] c"$Id: fe.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@debugTables = external global i32, align 4
@operators = external global %struct.list*, align 8
@ruleASTs = common global %struct.list* null, align 8
@max_nonterminal = external global i32, align 4
@last_user_nonterminal = external global i32, align 4
@start = external global %struct.nonterminal*, align 8
@.str = private unnamed_addr constant [37 x i8] c"Redeclaration of start symbol to be \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"\22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Illegal use of %s as a non-terminal\0A\00", align 1
@grammarNts = common global %struct.list* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"ERROR: %%gram, unused non-terminal: \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"ERROR: %%gram, Not a non-terminal: \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Redeclaration of %%gram\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"ERROR: Non-positive external symbol number, \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"External Rulenumber \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"(%d) <= 0\0A\00", align 1
@max_ruleAST = common global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"%s=%d \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Arity(%d) \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s : \00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" = %d (%ld)\0A\00", align 1
@grammarflag = common global i32 0, align 4
@arity = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [21 x i8] c"Non-unique name: %s\0A\00", align 1
@leaves = external global %struct.list*, align 8
@lexical = external global i32, align 4
@principleCost = external global i32, align 4
@.str.20 = private unnamed_addr constant [40 x i8] c"Illegal use of %s --- undefined symbol\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Illegal use of %s, a non-terminal, as a terminal\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"ERROR: Too many children (max = 2) for \22%s\22\0A\00", align 1
@max_arity = external global i32, align 4
@.str.23 = private unnamed_addr constant [61 x i8] c"ERROR: Incorrect number of children for leaf operator, \22%s\22\0A\00", align 1
@.str.24 = private unnamed_addr constant [62 x i8] c"ERROR: Incorrect number of children for unary operator, \22%s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"ERROR: Incorrect number of children for binary operator, \22%s\22\0A\00", align 1
@xpatterns = internal global %struct.list* null, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"n%%%d\00", align 1
@tcount = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @doSpec(%struct.list* %decls, %struct.list* %rules) #0 {
entry:
  %decls.addr = alloca %struct.list*, align 8
  %rules.addr = alloca %struct.list*, align 8
  store %struct.list* %decls, %struct.list** %decls.addr, align 8
  store %struct.list* %rules, %struct.list** %rules.addr, align 8
  %0 = load %struct.list*, %struct.list** %decls.addr, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.arity*)* @doDecl to i8* (i8*)*), %struct.list* %0)
  %1 = load i32, i32* @debugTables, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @dumpOperator_l to i8* (i8*)*), %struct.list* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.list*, %struct.list** %rules.addr, align 8
  store %struct.list* %3, %struct.list** @ruleASTs, align 8
  %4 = load %struct.list*, %struct.list** %rules.addr, align 8
  call void @reveachList(i8* (i8*)* bitcast (void (%struct.ruleAST*)* @doEnterNonTerm to i8* (i8*)*), %struct.list* %4)
  %5 = load i32, i32* @max_nonterminal, align 4
  store i32 %5, i32* @last_user_nonterminal, align 4
  %6 = load %struct.list*, %struct.list** %rules.addr, align 8
  call void @reveachList(i8* (i8*)* bitcast (void (%struct.ruleAST*)* @doRule to i8* (i8*)*), %struct.list* %6)
  %7 = load i32, i32* @debugTables, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.list*, %struct.list** %rules.addr, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.rule*)* @dumpRule to i8* (i8*)*), %struct.list* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %9 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doTable to i8* (i8*)*), %struct.list* %9)
  ret void
}

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @doDecl(%struct.arity* %a) #0 {
entry:
  %a.addr = alloca %struct.arity*, align 8
  store %struct.arity* %a, %struct.arity** %a.addr, align 8
  %0 = load %struct.arity*, %struct.arity** %a.addr, align 8
  %tobool = icmp ne %struct.arity* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.arity*, %struct.arity** %a.addr, align 8
  %arity = getelementptr inbounds %struct.arity, %struct.arity* %1, i32 0, i32 0
  %2 = load i32, i32* %arity, align 4
  store i32 %2, i32* @arity, align 4
  %3 = load %struct.arity*, %struct.arity** %a.addr, align 8
  %bindings = getelementptr inbounds %struct.arity, %struct.arity* %3, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %bindings, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.binding*)* @doBinding to i8* (i8*)*), %struct.list* %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @dumpOperator_l(%struct.operator*) #1

declare void @reveachList(i8* (i8*)*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @doEnterNonTerm(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  %new = alloca i32, align 4
  %s = alloca %struct.symbol*, align 8
  %delta = alloca [4 x i16], align 2
  %i = alloca i32, align 4
  %p = alloca %struct.intlist*, align 8
  %x = alloca i32, align 4
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %lhs = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 0
  %1 = load i8*, i8** %lhs, align 8
  %call = call %struct.symbol* @enter(i8* %1, i32* %new)
  store %struct.symbol* %call, %struct.symbol** %s, align 8
  %2 = load i32, i32* %new, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  %call1 = call %struct.nonterminal* @newNonTerminal(i8* %4)
  %5 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 2
  %nt = bitcast %union.anon* %u to %struct.nonterminal**
  store %struct.nonterminal* %call1, %struct.nonterminal** %nt, align 8
  %6 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 1
  store i32 2, i32* %tag, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
  %7 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag2 = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 1
  %8 = load i32, i32* %tag2, align 4
  %cmp = icmp ne i32 %8, 2
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name4 = getelementptr inbounds %struct.symbol, %struct.symbol* %10, i32 0, i32 0
  %11 = load i8*, i8** %name4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* %11)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay)
  %12 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %cost = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %12, i32 0, i32 3
  %13 = load %struct.intlist*, %struct.intlist** %cost, align 8
  store %struct.intlist* %13, %struct.intlist** %p, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %14 = load %struct.intlist*, %struct.intlist** %p, align 8
  %tobool7 = icmp ne %struct.intlist* %14, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.intlist*, %struct.intlist** %p, align 8
  %x8 = getelementptr inbounds %struct.intlist, %struct.intlist* %15, i32 0, i32 0
  %16 = load i32, i32* %x8, align 4
  store i32 %16, i32* %x, align 4
  %17 = load i32, i32* @lexical, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %18, 4
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  %19 = load i32, i32* %x, align 4
  %conv = trunc i32 %19 to i16
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i64 %idxprom
  store i16 %conv, i16* %arrayidx, align 2
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.10
  br label %if.end.21

if.else.14:                                       ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @principleCost, align 4
  %cmp15 = icmp eq i32 %21, %22
  br i1 %cmp15, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.else.14
  %23 = load i32, i32* %x, align 4
  %conv18 = trunc i32 %23 to i16
  %arrayidx19 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i64 0
  store i16 %conv18, i16* %arrayidx19, align 2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.else.14
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.21
  %24 = load %struct.intlist*, %struct.intlist** %p, align 8
  %next = getelementptr inbounds %struct.intlist, %struct.intlist* %24, i32 0, i32 1
  %25 = load %struct.intlist*, %struct.intlist** %next, align 8
  store %struct.intlist* %25, %struct.intlist** %p, align 8
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay22 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  %27 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %erulenum = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %27, i32 0, i32 2
  %28 = load i32, i32* %erulenum, align 4
  %29 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u23 = getelementptr inbounds %struct.symbol, %struct.symbol* %29, i32 0, i32 2
  %nt24 = bitcast %union.anon* %u23 to %struct.nonterminal**
  %30 = load %struct.nonterminal*, %struct.nonterminal** %nt24, align 8
  %call25 = call %struct.rule* @newRule(i16* %arraydecay22, i32 %28, %struct.nonterminal* %30, %struct.pattern* null)
  %31 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %31, i32 0, i32 4
  store %struct.rule* %call25, %struct.rule** %rule, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doRule(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  %pat = alloca %struct.pattern*, align 8
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %pat1 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 1
  %1 = load %struct.patternAST*, %struct.patternAST** %pat1, align 8
  %2 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %2, i32 0, i32 4
  %3 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 4
  %4 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %call = call %struct.nonterminal* @normalize(%struct.patternAST* %1, %struct.nonterminal* %4, %struct.pattern** %pat)
  %5 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %6 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule2 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %6, i32 0, i32 4
  %7 = load %struct.rule*, %struct.rule** %rule2, align 8
  %pat3 = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 5
  store %struct.pattern* %5, %struct.pattern** %pat3, align 8
  ret void
}

declare void @dumpRule(%struct.rule*) #1

; Function Attrs: nounwind uwtable
define internal void @doTable(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %call = call %struct.table* @newTable(%struct.operator* %0)
  %1 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 6
  store %struct.table* %call, %struct.table** %table, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @doStart(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %s = alloca %struct.symbol*, align 8
  %new = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %tobool = icmp ne %struct.nonterminal* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i8* %2)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %call1 = call %struct.symbol* @enter(i8* %3, i32* %new)
  store %struct.symbol* %call1, %struct.symbol** %s, align 8
  %4 = load i32, i32* %new, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name4 = getelementptr inbounds %struct.symbol, %struct.symbol* %5, i32 0, i32 0
  %6 = load i8*, i8** %name4, align 8
  %call5 = call %struct.nonterminal* @newNonTerminal(i8* %6)
  %7 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %7, i32 0, i32 2
  %nt = bitcast %union.anon* %u to %struct.nonterminal**
  store %struct.nonterminal* %call5, %struct.nonterminal** %nt, align 8
  %8 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 1
  store i32 2, i32* %tag, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %9 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag6 = getelementptr inbounds %struct.symbol, %struct.symbol* %9, i32 0, i32 1
  %10 = load i32, i32* %tag6, align 4
  %cmp = icmp ne i32 %10, 2
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name8 = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 0
  %13 = load i8*, i8** %name8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* %13)
  call void @exit(i32 1) #5
  unreachable

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then.3
  ret void
}

declare void @yyerror1(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare %struct.symbol* @enter(i8*, i32*) #1

declare %struct.nonterminal* @newNonTerminal(i8*) #1

; Function Attrs: nounwind uwtable
define void @doGrammarNts() #0 {
entry:
  %l = alloca %struct.list*, align 8
  %new = alloca i32, align 4
  %n = alloca i8*, align 8
  %s = alloca %struct.symbol*, align 8
  %0 = load %struct.list*, %struct.list** @grammarNts, align 8
  store %struct.list* %0, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  store i8* %3, i8** %n, align 8
  %4 = load i8*, i8** %n, align 8
  %call = call %struct.symbol* @enter(i8* %4, i32* %new)
  store %struct.symbol* %call, %struct.symbol** %s, align 8
  %5 = load i32, i32* %new, align 4
  %tobool1 = icmp ne i32 %5, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %n, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %for.body
  %8 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 1
  %9 = load i32, i32* %tag, align 4
  %cmp = icmp ne i32 %9, 2
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** %n, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0), i8* %11)
  call void @exit(i32 1) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  %12 = load %struct.symbol*, %struct.symbol** %s, align 8
  %13 = bitcast %struct.symbol* %12 to i8*
  %14 = load %struct.list*, %struct.list** %l, align 8
  %x6 = getelementptr inbounds %struct.list, %struct.list* %14, i32 0, i32 0
  store i8* %13, i8** %x6, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %15 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1
  %16 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %16, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @doGram(%struct.list* %nts) #0 {
entry:
  %nts.addr = alloca %struct.list*, align 8
  store %struct.list* %nts, %struct.list** %nts.addr, align 8
  %0 = load %struct.list*, %struct.list** @grammarNts, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.list*, %struct.list** %nts.addr, align 8
  store %struct.list* %1, %struct.list** @grammarNts, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.arity* @newArity(i32 %ar, %struct.list* %b) #0 {
entry:
  %ar.addr = alloca i32, align 4
  %b.addr = alloca %struct.list*, align 8
  %a = alloca %struct.arity*, align 8
  store i32 %ar, i32* %ar.addr, align 4
  store %struct.list* %b, %struct.list** %b.addr, align 8
  %call = call i8* @zalloc(i32 16)
  %0 = bitcast i8* %call to %struct.arity*
  store %struct.arity* %0, %struct.arity** %a, align 8
  %1 = load i32, i32* %ar.addr, align 4
  %2 = load %struct.arity*, %struct.arity** %a, align 8
  %arity = getelementptr inbounds %struct.arity, %struct.arity* %2, i32 0, i32 0
  store i32 %1, i32* %arity, align 4
  %3 = load %struct.list*, %struct.list** %b.addr, align 8
  %4 = load %struct.arity*, %struct.arity** %a, align 8
  %bindings = getelementptr inbounds %struct.arity, %struct.arity* %4, i32 0, i32 1
  store %struct.list* %3, %struct.list** %bindings, align 8
  %5 = load %struct.arity*, %struct.arity** %a, align 8
  ret %struct.arity* %5
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.binding* @newBinding(i8* %name, i32 %opnum) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %opnum.addr = alloca i32, align 4
  %b = alloca %struct.binding*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %opnum, i32* %opnum.addr, align 4
  %call = call i8* @zalloc(i32 16)
  %0 = bitcast i8* %call to %struct.binding*
  store %struct.binding* %0, %struct.binding** %b, align 8
  %1 = load i32, i32* %opnum.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror1(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i32, i32* %opnum.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i32 %3)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  %5 = load %struct.binding*, %struct.binding** %b, align 8
  %name2 = getelementptr inbounds %struct.binding, %struct.binding* %5, i32 0, i32 0
  store i8* %4, i8** %name2, align 8
  %6 = load i32, i32* %opnum.addr, align 4
  %7 = load %struct.binding*, %struct.binding** %b, align 8
  %opnum3 = getelementptr inbounds %struct.binding, %struct.binding* %7, i32 0, i32 1
  store i32 %6, i32* %opnum3, align 4
  %8 = load %struct.binding*, %struct.binding** %b, align 8
  ret %struct.binding* %8
}

; Function Attrs: nounwind uwtable
define %struct.patternAST* @newPatternAST(i8* %op, %struct.list* %children) #0 {
entry:
  %op.addr = alloca i8*, align 8
  %children.addr = alloca %struct.list*, align 8
  %p = alloca %struct.patternAST*, align 8
  store i8* %op, i8** %op.addr, align 8
  store %struct.list* %children, %struct.list** %children.addr, align 8
  %call = call i8* @zalloc(i32 24)
  %0 = bitcast i8* %call to %struct.patternAST*
  store %struct.patternAST* %0, %struct.patternAST** %p, align 8
  %1 = load i8*, i8** %op.addr, align 8
  %2 = load %struct.patternAST*, %struct.patternAST** %p, align 8
  %op1 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %2, i32 0, i32 1
  store i8* %1, i8** %op1, align 8
  %3 = load %struct.list*, %struct.list** %children.addr, align 8
  %4 = load %struct.patternAST*, %struct.patternAST** %p, align 8
  %children2 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %4, i32 0, i32 2
  store %struct.list* %3, %struct.list** %children2, align 8
  %5 = load %struct.patternAST*, %struct.patternAST** %p, align 8
  ret %struct.patternAST* %5
}

; Function Attrs: nounwind uwtable
define %struct.ruleAST* @newRuleAST(i8* %lhs, %struct.patternAST* %pat, i32 %erulenum, %struct.intlist* %cost) #0 {
entry:
  %lhs.addr = alloca i8*, align 8
  %pat.addr = alloca %struct.patternAST*, align 8
  %erulenum.addr = alloca i32, align 4
  %cost.addr = alloca %struct.intlist*, align 8
  %p = alloca %struct.ruleAST*, align 8
  store i8* %lhs, i8** %lhs.addr, align 8
  store %struct.patternAST* %pat, %struct.patternAST** %pat.addr, align 8
  store i32 %erulenum, i32* %erulenum.addr, align 4
  store %struct.intlist* %cost, %struct.intlist** %cost.addr, align 8
  %call = call i8* @zalloc(i32 56)
  %0 = bitcast i8* %call to %struct.ruleAST*
  store %struct.ruleAST* %0, %struct.ruleAST** %p, align 8
  %1 = load i8*, i8** %lhs.addr, align 8
  %2 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  %lhs1 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %2, i32 0, i32 0
  store i8* %1, i8** %lhs1, align 8
  %3 = load %struct.patternAST*, %struct.patternAST** %pat.addr, align 8
  %4 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  %pat2 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %4, i32 0, i32 1
  store %struct.patternAST* %3, %struct.patternAST** %pat2, align 8
  %5 = load i32, i32* %erulenum.addr, align 4
  %cmp = icmp sle i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @yyerror1(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i32, i32* %erulenum.addr, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i32 %7)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %erulenum.addr, align 4
  %9 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  %erulenum4 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %9, i32 0, i32 2
  store i32 %8, i32* %erulenum4, align 4
  %10 = load %struct.intlist*, %struct.intlist** %cost.addr, align 8
  %11 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  %cost5 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %11, i32 0, i32 3
  store %struct.intlist* %10, %struct.intlist** %cost5, align 8
  %12 = load i32, i32* @max_ruleAST, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* @max_ruleAST, align 4
  %13 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  ret %struct.ruleAST* %13
}

; Function Attrs: nounwind uwtable
define void @dumpBinding(%struct.binding* %b) #0 {
entry:
  %b.addr = alloca %struct.binding*, align 8
  store %struct.binding* %b, %struct.binding** %b.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %name = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %2 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %opnum = getelementptr inbounds %struct.binding, %struct.binding* %2, i32 0, i32 1
  %3 = load i32, i32* %opnum, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* %1, i32 %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpArity(%struct.arity* %a) #0 {
entry:
  %a.addr = alloca %struct.arity*, align 8
  %l = alloca %struct.list*, align 8
  %b = alloca %struct.binding*, align 8
  store %struct.arity* %a, %struct.arity** %a.addr, align 8
  %0 = load %struct.arity*, %struct.arity** %a.addr, align 8
  %arity = getelementptr inbounds %struct.arity, %struct.arity* %0, i32 0, i32 0
  %1 = load i32, i32* %arity, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i32 %1)
  %2 = load %struct.arity*, %struct.arity** %a.addr, align 8
  %bindings = getelementptr inbounds %struct.arity, %struct.arity* %2, i32 0, i32 1
  %3 = load %struct.list*, %struct.list** %bindings, align 8
  store %struct.list* %3, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0
  %6 = load i8*, i8** %x, align 8
  %7 = bitcast i8* %6 to %struct.binding*
  store %struct.binding* %7, %struct.binding** %b, align 8
  %8 = load %struct.binding*, %struct.binding** %b, align 8
  call void @dumpBinding(%struct.binding* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 1
  %10 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %10, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpPatternAST(%struct.patternAST* %p) #0 {
entry:
  %p.addr = alloca %struct.patternAST*, align 8
  %l = alloca %struct.list*, align 8
  %past = alloca %struct.patternAST*, align 8
  store %struct.patternAST* %p, %struct.patternAST** %p.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %op = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i32 0, i32 1
  %1 = load i8*, i8** %op, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* %1)
  %2 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %2, i32 0, i32 2
  %3 = load %struct.list*, %struct.list** %children, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0))
  %4 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children2 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %4, i32 0, i32 2
  %5 = load %struct.list*, %struct.list** %children2, align 8
  store %struct.list* %5, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.list*, %struct.list** %l, align 8
  %tobool3 = icmp ne %struct.list* %6, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 0
  %8 = load i8*, i8** %x, align 8
  %9 = bitcast i8* %8 to %struct.patternAST*
  store %struct.patternAST* %9, %struct.patternAST** %past, align 8
  %10 = load %struct.patternAST*, %struct.patternAST** %past, align 8
  call void @dumpPatternAST(%struct.patternAST* %10)
  %11 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 1
  %12 = load %struct.list*, %struct.list** %next, align 8
  %tobool4 = icmp ne %struct.list* %12, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.list*, %struct.list** %l, align 8
  %next7 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 1
  %14 = load %struct.list*, %struct.list** %next7, align 8
  store %struct.list* %14, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpRuleAST(%struct.ruleAST* %p) #0 {
entry:
  %p.addr = alloca %struct.ruleAST*, align 8
  store %struct.ruleAST* %p, %struct.ruleAST** %p.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %p.addr, align 8
  %lhs = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 0
  %1 = load i8*, i8** %lhs, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* %1)
  %2 = load %struct.ruleAST*, %struct.ruleAST** %p.addr, align 8
  %pat = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %2, i32 0, i32 1
  %3 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @dumpPatternAST(%struct.patternAST* %3)
  %4 = load %struct.ruleAST*, %struct.ruleAST** %p.addr, align 8
  %erulenum = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %4, i32 0, i32 2
  %5 = load i32, i32* %erulenum, align 4
  %6 = load %struct.ruleAST*, %struct.ruleAST** %p.addr, align 8
  %cost = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %6, i32 0, i32 3
  %7 = load %struct.intlist*, %struct.intlist** %cost, align 8
  %8 = ptrtoint %struct.intlist* %7 to i64
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 %5, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpDecls(%struct.list* %decls) #0 {
entry:
  %decls.addr = alloca %struct.list*, align 8
  %l = alloca %struct.list*, align 8
  %a = alloca %struct.arity*, align 8
  store %struct.list* %decls, %struct.list** %decls.addr, align 8
  %0 = load %struct.list*, %struct.list** %decls.addr, align 8
  store %struct.list* %0, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.arity*
  store %struct.arity* %4, %struct.arity** %a, align 8
  %5 = load %struct.arity*, %struct.arity** %a, align 8
  call void @dumpArity(%struct.arity* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 1
  %7 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %7, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpRules(%struct.list* %rules) #0 {
entry:
  %rules.addr = alloca %struct.list*, align 8
  %l = alloca %struct.list*, align 8
  %p = alloca %struct.ruleAST*, align 8
  store %struct.list* %rules, %struct.list** %rules.addr, align 8
  %0 = load %struct.list*, %struct.list** %rules.addr, align 8
  store %struct.list* %0, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.ruleAST*
  store %struct.ruleAST* %4, %struct.ruleAST** %p, align 8
  %5 = load %struct.ruleAST*, %struct.ruleAST** %p, align 8
  call void @dumpRuleAST(%struct.ruleAST* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 1
  %7 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %7, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doBinding(%struct.binding* %b) #0 {
entry:
  %b.addr = alloca %struct.binding*, align 8
  %new = alloca i32, align 4
  %s = alloca %struct.symbol*, align 8
  store %struct.binding* %b, %struct.binding** %b.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %name = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %call = call %struct.symbol* @enter(i8* %1, i32* %new)
  store %struct.symbol* %call, %struct.symbol** %s, align 8
  %2 = load i32, i32* %new, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %name1 = getelementptr inbounds %struct.binding, %struct.binding* %4, i32 0, i32 0
  %5 = load i8*, i8** %name1, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i32 0, i32 0), i8* %5)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  %6 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 1
  store i32 1, i32* %tag, align 4
  %7 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %name3 = getelementptr inbounds %struct.binding, %struct.binding* %7, i32 0, i32 0
  %8 = load i8*, i8** %name3, align 8
  %9 = load %struct.binding*, %struct.binding** %b.addr, align 8
  %opnum = getelementptr inbounds %struct.binding, %struct.binding* %9, i32 0, i32 1
  %10 = load i32, i32* %opnum, align 4
  %11 = load i32, i32* @arity, align 4
  %call4 = call %struct.operator* @newOperator(i8* %8, i32 %10, i32 %11)
  %12 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %12, i32 0, i32 2
  %op = bitcast %union.anon* %u to %struct.operator**
  store %struct.operator* %call4, %struct.operator** %op, align 8
  %13 = load i32, i32* @arity, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end
  %14 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u6 = getelementptr inbounds %struct.symbol, %struct.symbol* %14, i32 0, i32 2
  %op7 = bitcast %union.anon* %u6 to %struct.operator**
  %15 = load %struct.operator*, %struct.operator** %op7, align 8
  %16 = bitcast %struct.operator* %15 to i8*
  %17 = load %struct.list*, %struct.list** @leaves, align 8
  %call8 = call %struct.list* @newList(i8* %16, %struct.list* %17)
  store %struct.list* %call8, %struct.list** @leaves, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare %struct.operator* @newOperator(i8*, i32, i32) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

declare void @ZEROCOST(i16*) #1

declare %struct.rule* @newRule(i16*, i32, %struct.nonterminal*, %struct.pattern*) #1

; Function Attrs: nounwind uwtable
define internal %struct.nonterminal* @normalize(%struct.patternAST* %ast, %struct.nonterminal* %nt, %struct.pattern** %patt) #0 {
entry:
  %retval = alloca %struct.nonterminal*, align 8
  %ast.addr = alloca %struct.patternAST*, align 8
  %nt.addr = alloca %struct.nonterminal*, align 8
  %patt.addr = alloca %struct.pattern**, align 8
  %s = alloca %struct.symbol*, align 8
  %new = alloca i32, align 4
  %dummy = alloca %struct.pattern*, align 8
  store %struct.patternAST* %ast, %struct.patternAST** %ast.addr, align 8
  store %struct.nonterminal* %nt, %struct.nonterminal** %nt.addr, align 8
  store %struct.pattern** %patt, %struct.pattern*** %patt.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %op = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i32 0, i32 1
  %1 = load i8*, i8** %op, align 8
  %call = call %struct.symbol* @enter(i8* %1, i32* %new)
  store %struct.symbol* %call, %struct.symbol** %s, align 8
  %2 = load %struct.symbol*, %struct.symbol** %s, align 8
  %3 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym = getelementptr inbounds %struct.patternAST, %struct.patternAST* %3, i32 0, i32 0
  store %struct.symbol* %2, %struct.symbol** %sym, align 8
  %4 = load i32, i32* %new, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i8* %7)
  call void @exit(i32 1) #5
  unreachable

if.else:                                          ; preds = %entry
  %8 = load %struct.symbol*, %struct.symbol** %s, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 1
  %9 = load i32, i32* %tag, align 4
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then.2, label %if.else.12

if.then.2:                                        ; preds = %if.else
  %10 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %10, i32 0, i32 2
  %11 = load %struct.list*, %struct.list** %children, align 8
  %tobool3 = icmp ne %struct.list* %11, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then.2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name5 = getelementptr inbounds %struct.symbol, %struct.symbol* %13, i32 0, i32 0
  %14 = load i8*, i8** %name5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i32 0, i32 0), i8* %14)
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %if.then.2
  %call7 = call %struct.pattern* @newPattern(%struct.operator* null)
  %15 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  store %struct.pattern* %call7, %struct.pattern** %15, align 8
  %16 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 2
  %nt8 = bitcast %union.anon* %u to %struct.nonterminal**
  %17 = load %struct.nonterminal*, %struct.nonterminal** %nt8, align 8
  %18 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %19 = load %struct.pattern*, %struct.pattern** %18, align 8
  %children9 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children9, i32 0, i64 0
  store %struct.nonterminal* %17, %struct.nonterminal** %arrayidx, align 8
  %20 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u10 = getelementptr inbounds %struct.symbol, %struct.symbol* %20, i32 0, i32 2
  %nt11 = bitcast %union.anon* %u10 to %struct.nonterminal**
  %21 = load %struct.nonterminal*, %struct.nonterminal** %nt11, align 8
  store %struct.nonterminal* %21, %struct.nonterminal** %retval
  br label %return

if.else.12:                                       ; preds = %if.else
  %22 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u13 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 2
  %op14 = bitcast %union.anon* %u13 to %struct.operator**
  %23 = load %struct.operator*, %struct.operator** %op14, align 8
  %ref = getelementptr inbounds %struct.operator, %struct.operator* %23, i32 0, i32 1
  %bf.load = load i8, i8* %ref, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %ref, align 8
  %24 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u15 = getelementptr inbounds %struct.symbol, %struct.symbol* %24, i32 0, i32 2
  %op16 = bitcast %union.anon* %u15 to %struct.operator**
  %25 = load %struct.operator*, %struct.operator** %op16, align 8
  %call17 = call %struct.pattern* @newPattern(%struct.operator* %25)
  %26 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  store %struct.pattern* %call17, %struct.pattern** %26, align 8
  %27 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u18 = getelementptr inbounds %struct.symbol, %struct.symbol* %27, i32 0, i32 2
  %op19 = bitcast %union.anon* %u18 to %struct.operator**
  %28 = load %struct.operator*, %struct.operator** %op19, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %28, i32 0, i32 5
  %29 = load i32, i32* %arity, align 4
  %cmp20 = icmp eq i32 %29, -1
  br i1 %cmp20, label %if.then.21, label %if.end.62

if.then.21:                                       ; preds = %if.else.12
  %30 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children22 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %30, i32 0, i32 2
  %31 = load %struct.list*, %struct.list** %children22, align 8
  %tobool23 = icmp ne %struct.list* %31, null
  br i1 %tobool23, label %if.else.31, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  %32 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u25 = getelementptr inbounds %struct.symbol, %struct.symbol* %32, i32 0, i32 2
  %op26 = bitcast %union.anon* %u25 to %struct.operator**
  %33 = load %struct.operator*, %struct.operator** %op26, align 8
  %arity27 = getelementptr inbounds %struct.operator, %struct.operator* %33, i32 0, i32 5
  store i32 0, i32* %arity27, align 4
  %34 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u28 = getelementptr inbounds %struct.symbol, %struct.symbol* %34, i32 0, i32 2
  %op29 = bitcast %union.anon* %u28 to %struct.operator**
  %35 = load %struct.operator*, %struct.operator** %op29, align 8
  %36 = bitcast %struct.operator* %35 to i8*
  %37 = load %struct.list*, %struct.list** @leaves, align 8
  %call30 = call %struct.list* @newList(i8* %36, %struct.list* %37)
  store %struct.list* %call30, %struct.list** @leaves, align 8
  br label %if.end.52

if.else.31:                                       ; preds = %if.then.21
  %38 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children32 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %38, i32 0, i32 2
  %39 = load %struct.list*, %struct.list** %children32, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %39, i32 0, i32 1
  %40 = load %struct.list*, %struct.list** %next, align 8
  %tobool33 = icmp ne %struct.list* %40, null
  br i1 %tobool33, label %if.else.38, label %if.then.34

if.then.34:                                       ; preds = %if.else.31
  %41 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u35 = getelementptr inbounds %struct.symbol, %struct.symbol* %41, i32 0, i32 2
  %op36 = bitcast %union.anon* %u35 to %struct.operator**
  %42 = load %struct.operator*, %struct.operator** %op36, align 8
  %arity37 = getelementptr inbounds %struct.operator, %struct.operator* %42, i32 0, i32 5
  store i32 1, i32* %arity37, align 4
  br label %if.end.51

if.else.38:                                       ; preds = %if.else.31
  %43 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children39 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %43, i32 0, i32 2
  %44 = load %struct.list*, %struct.list** %children39, align 8
  %next40 = getelementptr inbounds %struct.list, %struct.list* %44, i32 0, i32 1
  %45 = load %struct.list*, %struct.list** %next40, align 8
  %next41 = getelementptr inbounds %struct.list, %struct.list* %45, i32 0, i32 1
  %46 = load %struct.list*, %struct.list** %next41, align 8
  %tobool42 = icmp ne %struct.list* %46, null
  br i1 %tobool42, label %if.else.47, label %if.then.43

if.then.43:                                       ; preds = %if.else.38
  %47 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u44 = getelementptr inbounds %struct.symbol, %struct.symbol* %47, i32 0, i32 2
  %op45 = bitcast %union.anon* %u44 to %struct.operator**
  %48 = load %struct.operator*, %struct.operator** %op45, align 8
  %arity46 = getelementptr inbounds %struct.operator, %struct.operator* %48, i32 0, i32 5
  store i32 2, i32* %arity46, align 4
  br label %if.end.50

if.else.47:                                       ; preds = %if.else.38
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %50 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name48 = getelementptr inbounds %struct.symbol, %struct.symbol* %50, i32 0, i32 0
  %51 = load i8*, i8** %name48, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i32 0, i32 0), i8* %51)
  call void @exit(i32 1) #5
  unreachable

if.end.50:                                        ; preds = %if.then.43
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.34
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.24
  %52 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u53 = getelementptr inbounds %struct.symbol, %struct.symbol* %52, i32 0, i32 2
  %op54 = bitcast %union.anon* %u53 to %struct.operator**
  %53 = load %struct.operator*, %struct.operator** %op54, align 8
  %arity55 = getelementptr inbounds %struct.operator, %struct.operator* %53, i32 0, i32 5
  %54 = load i32, i32* %arity55, align 4
  %55 = load i32, i32* @max_arity, align 4
  %cmp56 = icmp sgt i32 %54, %55
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.52
  %56 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u58 = getelementptr inbounds %struct.symbol, %struct.symbol* %56, i32 0, i32 2
  %op59 = bitcast %union.anon* %u58 to %struct.operator**
  %57 = load %struct.operator*, %struct.operator** %op59, align 8
  %arity60 = getelementptr inbounds %struct.operator, %struct.operator* %57, i32 0, i32 5
  %58 = load i32, i32* %arity60, align 4
  store i32 %58, i32* @max_arity, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.else.12
  %59 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u63 = getelementptr inbounds %struct.symbol, %struct.symbol* %59, i32 0, i32 2
  %op64 = bitcast %union.anon* %u63 to %struct.operator**
  %60 = load %struct.operator*, %struct.operator** %op64, align 8
  %arity65 = getelementptr inbounds %struct.operator, %struct.operator* %60, i32 0, i32 5
  %61 = load i32, i32* %arity65, align 4
  switch i32 %61, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.72
    i32 2, label %sw.bb.86
  ]

sw.default:                                       ; preds = %if.end.62
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.62
  %62 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children66 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %62, i32 0, i32 2
  %63 = load %struct.list*, %struct.list** %children66, align 8
  %tobool67 = icmp ne %struct.list* %63, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %sw.bb
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %65 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name69 = getelementptr inbounds %struct.symbol, %struct.symbol* %65, i32 0, i32 0
  %66 = load i8*, i8** %name69, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i32 0, i32 0), i8* %66)
  call void @exit(i32 1) #5
  unreachable

if.end.71:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.72:                                         ; preds = %if.end.62
  %67 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children73 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %67, i32 0, i32 2
  %68 = load %struct.list*, %struct.list** %children73, align 8
  %tobool74 = icmp ne %struct.list* %68, null
  br i1 %tobool74, label %lor.lhs.false, label %if.then.78

lor.lhs.false:                                    ; preds = %sw.bb.72
  %69 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children75 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %69, i32 0, i32 2
  %70 = load %struct.list*, %struct.list** %children75, align 8
  %next76 = getelementptr inbounds %struct.list, %struct.list* %70, i32 0, i32 1
  %71 = load %struct.list*, %struct.list** %next76, align 8
  %tobool77 = icmp ne %struct.list* %71, null
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %lor.lhs.false, %sw.bb.72
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name79 = getelementptr inbounds %struct.symbol, %struct.symbol* %73, i32 0, i32 0
  %74 = load i8*, i8** %name79, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.24, i32 0, i32 0), i8* %74)
  call void @exit(i32 1) #5
  unreachable

if.end.81:                                        ; preds = %lor.lhs.false
  %75 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children82 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %75, i32 0, i32 2
  %76 = load %struct.list*, %struct.list** %children82, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %76, i32 0, i32 0
  %77 = load i8*, i8** %x, align 8
  %78 = bitcast i8* %77 to %struct.patternAST*
  %call83 = call %struct.nonterminal* @normalize(%struct.patternAST* %78, %struct.nonterminal* null, %struct.pattern** %dummy)
  %79 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %80 = load %struct.pattern*, %struct.pattern** %79, align 8
  %children84 = getelementptr inbounds %struct.pattern, %struct.pattern* %80, i32 0, i32 2
  %arrayidx85 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children84, i32 0, i64 0
  store %struct.nonterminal* %call83, %struct.nonterminal** %arrayidx85, align 8
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.end.62
  %81 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children87 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %81, i32 0, i32 2
  %82 = load %struct.list*, %struct.list** %children87, align 8
  %tobool88 = icmp ne %struct.list* %82, null
  br i1 %tobool88, label %lor.lhs.false.89, label %if.then.93

lor.lhs.false.89:                                 ; preds = %sw.bb.86
  %83 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children90 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %83, i32 0, i32 2
  %84 = load %struct.list*, %struct.list** %children90, align 8
  %next91 = getelementptr inbounds %struct.list, %struct.list* %84, i32 0, i32 1
  %85 = load %struct.list*, %struct.list** %next91, align 8
  %tobool92 = icmp ne %struct.list* %85, null
  br i1 %tobool92, label %if.end.96, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false.89, %sw.bb.86
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = load %struct.symbol*, %struct.symbol** %s, align 8
  %name94 = getelementptr inbounds %struct.symbol, %struct.symbol* %87, i32 0, i32 0
  %88 = load i8*, i8** %name94, align 8
  %call95 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.25, i32 0, i32 0), i8* %88)
  call void @exit(i32 1) #5
  unreachable

if.end.96:                                        ; preds = %lor.lhs.false.89
  %89 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children97 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %89, i32 0, i32 2
  %90 = load %struct.list*, %struct.list** %children97, align 8
  %x98 = getelementptr inbounds %struct.list, %struct.list* %90, i32 0, i32 0
  %91 = load i8*, i8** %x98, align 8
  %92 = bitcast i8* %91 to %struct.patternAST*
  %call99 = call %struct.nonterminal* @normalize(%struct.patternAST* %92, %struct.nonterminal* null, %struct.pattern** %dummy)
  %93 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %94 = load %struct.pattern*, %struct.pattern** %93, align 8
  %children100 = getelementptr inbounds %struct.pattern, %struct.pattern* %94, i32 0, i32 2
  %arrayidx101 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children100, i32 0, i64 0
  store %struct.nonterminal* %call99, %struct.nonterminal** %arrayidx101, align 8
  %95 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children102 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %95, i32 0, i32 2
  %96 = load %struct.list*, %struct.list** %children102, align 8
  %next103 = getelementptr inbounds %struct.list, %struct.list* %96, i32 0, i32 1
  %97 = load %struct.list*, %struct.list** %next103, align 8
  %x104 = getelementptr inbounds %struct.list, %struct.list* %97, i32 0, i32 0
  %98 = load i8*, i8** %x104, align 8
  %99 = bitcast i8* %98 to %struct.patternAST*
  %call105 = call %struct.nonterminal* @normalize(%struct.patternAST* %99, %struct.nonterminal* null, %struct.pattern** %dummy)
  %100 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %101 = load %struct.pattern*, %struct.pattern** %100, align 8
  %children106 = getelementptr inbounds %struct.pattern, %struct.pattern* %101, i32 0, i32 2
  %arrayidx107 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children106, i32 0, i64 1
  store %struct.nonterminal* %call105, %struct.nonterminal** %arrayidx107, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.96, %if.end.81, %if.end.71, %sw.default
  %102 = load %struct.nonterminal*, %struct.nonterminal** %nt.addr, align 8
  %tobool108 = icmp ne %struct.nonterminal* %102, null
  br i1 %tobool108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %sw.epilog
  %103 = load %struct.nonterminal*, %struct.nonterminal** %nt.addr, align 8
  %104 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %105 = load %struct.pattern*, %struct.pattern** %104, align 8
  %normalizer = getelementptr inbounds %struct.pattern, %struct.pattern* %105, i32 0, i32 0
  store %struct.nonterminal* %103, %struct.nonterminal** %normalizer, align 8
  %106 = load %struct.nonterminal*, %struct.nonterminal** %nt.addr, align 8
  store %struct.nonterminal* %106, %struct.nonterminal** %retval
  br label %return

if.else.110:                                      ; preds = %sw.epilog
  %107 = load %struct.pattern**, %struct.pattern*** %patt.addr, align 8
  %108 = load %struct.pattern*, %struct.pattern** %107, align 8
  %call111 = call %struct.nonterminal* @lookup(%struct.pattern* %108)
  store %struct.nonterminal* %call111, %struct.nonterminal** %retval
  br label %return

return:                                           ; preds = %if.else.110, %if.then.109, %if.end
  %109 = load %struct.nonterminal*, %struct.nonterminal** %retval
  ret %struct.nonterminal* %109
}

declare %struct.pattern* @newPattern(%struct.operator*) #1

; Function Attrs: nounwind uwtable
define internal %struct.nonterminal* @lookup(%struct.pattern* %p) #0 {
entry:
  %retval = alloca %struct.nonterminal*, align 8
  %p.addr = alloca %struct.pattern*, align 8
  %buf = alloca [10 x i8], align 1
  %s = alloca i8*, align 8
  %l = alloca %struct.list*, align 8
  %n = alloca %struct.nonterminal*, align 8
  %dummy = alloca [4 x i16], align 2
  %x = alloca %struct.pattern*, align 8
  store %struct.pattern* %p, %struct.pattern** %p.addr, align 8
  %0 = load %struct.list*, %struct.list** @xpatterns, align 8
  store %struct.list* %0, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %l, align 8
  %x1 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x1, align 8
  %4 = bitcast i8* %3 to %struct.pattern*
  store %struct.pattern* %4, %struct.pattern** %x, align 8
  %5 = load %struct.pattern*, %struct.pattern** %x, align 8
  %op = getelementptr inbounds %struct.pattern, %struct.pattern* %5, i32 0, i32 1
  %6 = load %struct.operator*, %struct.operator** %op, align 8
  %7 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %op2 = getelementptr inbounds %struct.pattern, %struct.pattern* %7, i32 0, i32 1
  %8 = load %struct.operator*, %struct.operator** %op2, align 8
  %cmp = icmp eq %struct.operator* %6, %8
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.pattern*, %struct.pattern** %x, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %10 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %11 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %children3 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children3, i32 0, i64 0
  %12 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx4, align 8
  %cmp5 = icmp eq %struct.nonterminal* %10, %12
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %13 = load %struct.pattern*, %struct.pattern** %x, align 8
  %children7 = getelementptr inbounds %struct.pattern, %struct.pattern* %13, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children7, i32 0, i64 1
  %14 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx8, align 8
  %15 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %children9 = getelementptr inbounds %struct.pattern, %struct.pattern* %15, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children9, i32 0, i64 1
  %16 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx10, align 8
  %cmp11 = icmp eq %struct.nonterminal* %14, %16
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  %17 = load %struct.pattern*, %struct.pattern** %x, align 8
  %normalizer = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 0
  %18 = load %struct.nonterminal*, %struct.nonterminal** %normalizer, align 8
  store %struct.nonterminal* %18, %struct.nonterminal** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %19, i32 0, i32 1
  %20 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %20, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %21 = load i32, i32* @tcount, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @tcount, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 %21) #6
  %arraydecay12 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #7
  %add = add i64 %call13, 1
  %conv = trunc i64 %add to i32
  %call14 = call i8* @zalloc(i32 %conv)
  store i8* %call14, i8** %s, align 8
  %22 = load i8*, i8** %s, align 8
  %arraydecay15 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %call16 = call i8* @strcpy(i8* %22, i8* %arraydecay15) #6
  %23 = load i8*, i8** %s, align 8
  %call17 = call %struct.nonterminal* @newNonTerminal(i8* %23)
  store %struct.nonterminal* %call17, %struct.nonterminal** %n, align 8
  %24 = load %struct.nonterminal*, %struct.nonterminal** %n, align 8
  %25 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %normalizer18 = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 0
  store %struct.nonterminal* %24, %struct.nonterminal** %normalizer18, align 8
  %26 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %27 = bitcast %struct.pattern* %26 to i8*
  %28 = load %struct.list*, %struct.list** @xpatterns, align 8
  %call19 = call %struct.list* @newList(i8* %27, %struct.list* %28)
  store %struct.list* %call19, %struct.list** @xpatterns, align 8
  %arraydecay20 = getelementptr inbounds [4 x i16], [4 x i16]* %dummy, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay20)
  %arraydecay21 = getelementptr inbounds [4 x i16], [4 x i16]* %dummy, i32 0, i32 0
  %29 = load %struct.nonterminal*, %struct.nonterminal** %n, align 8
  %30 = load %struct.pattern*, %struct.pattern** %p.addr, align 8
  %call22 = call %struct.rule* @newRule(i16* %arraydecay21, i32 0, %struct.nonterminal* %29, %struct.pattern* %30)
  %31 = load %struct.nonterminal*, %struct.nonterminal** %n, align 8
  store %struct.nonterminal* %31, %struct.nonterminal** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %32 = load %struct.nonterminal*, %struct.nonterminal** %retval
  ret %struct.nonterminal* %32
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare %struct.table* @newTable(%struct.operator*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
