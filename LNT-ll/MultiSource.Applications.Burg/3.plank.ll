; ModuleID = './MultiSource.Applications.Burg/3.plank.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.list = type { i8*, %struct.list* }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stateMapTable = type { %struct.list* }
%struct.except = type { i16, i16 }

@rcsid_plank = global [49 x i8] c"$Id: plank.c 231944 2015-03-11 17:29:03Z matze $\00", align 16
@speedflag = global i32 0, align 4
@exceptionTolerance = global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"dump Sorted States: \00", align 1
@globalMap = external global %struct.mapping*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@sortedStates = common global %struct.item_set** null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"dump Sorted Rules: \00", align 1
@max_ruleAST = external global i32, align 4
@sortedRules = common global %struct.ruleAST** null, align 8
@count = internal global i32 0, align 4
@ruleASTs = external global %struct.list*, align 8
@operators = external global %struct.list*, align 8
@max_nonterminal = external global i32, align 4
@ntVector = internal global %struct.nonterminal** null, align 8
@nonterminals = external global %struct.list*, align 8
@outfile = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"static unsigned %s %s_%s_transition[%d][%d] = {\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@prefix = external global i8*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\0A{\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\09/* row %d, cols %d-%d*/\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"}\09/* row %d */\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@smt = internal global %struct.stateMapTable zeroinitializer, align 8
@newStateMap.num = internal global i32 0, align 4
@.str.13 = private unnamed_addr constant [4 x i8] c"f%d\00", align 1
@last_user_nonterminal = external global i32, align 4
@plankSize = internal global i32 32, align 4
@newPlank.num = internal global i32 0, align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"%s_plank_%d\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"static struct {\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\09unsigned int %s:%d;\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"} %s[] = {\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%4d,\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"},\09/* row %d */\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"static short %s_eruleMap[] = {\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"\09/* %d-%d */\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"#ifdef __STDC__\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"int %s_rule(int state, int goalnt) {\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.27 = private unnamed_addr constant [53 x i8] c"int %s_rule(state, goalnt) int state; int goalnt; {\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.29 = private unnamed_addr constant [93 x i8] c"\09%s_assert(state >= 0 && state < %d, %s_PANIC(\22Bad state %%d passed to %s_rule\5Cn\22, state));\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"\09switch(goalnt) {\0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"\09case %d:\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"\09\09return %s_%s_rule(state);\0A\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"\09default:\0A\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"\09\09%s_PANIC(\22Unknown nonterminal %%d in %s_rule;\5Cn\22, goalnt);\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"\09\09abort();\0A\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"\09\09return 0;\0A\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"#define %s_%s_rule(state)\09\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"%s_eruleMap[\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"((state) == %d ? %d :\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"%s[state].%s\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c" +%d]\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"int %s_TEMP;\0A\00", align 1
@max_arity = external global i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [33 x i8] c"ERROR: no terminals in grammar.\0A\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"int %s_state(int op) {\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"int %s_state(op) int op; {\0A\00", align 1
@.str.50 = private unnamed_addr constant [31 x i8] c"int %s_state(int op, int l) {\0A\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"int %s_state(op, l) int op; int l; {\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"int %s_state(int op, int l, int r) {\0A\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"int %s_state(op, l, r) int op; int l; int r; {\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"\09register int %s_TEMP;\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"#ifndef NDEBUG\0A\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"\09switch (op) {\0A\00", align 1
@.str.57 = private unnamed_addr constant [83 x i8] c"\09\09%s_assert(r >= 0 && r < %d, %s_PANIC(\22Bad state %%d passed to %s_state\5Cn\22, r));\0A\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"\09\09/*FALLTHROUGH*/\0A\00", align 1
@.str.59 = private unnamed_addr constant [83 x i8] c"\09\09%s_assert(l >= 0 && l < %d, %s_PANIC(\22Bad state %%d passed to %s_state\5Cn\22, l));\0A\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"\09\09break;\0A\00", align 1
@.str.61 = private unnamed_addr constant [76 x i8] c"\09default: %s_PANIC(\22Unknown op %%d in %s_state\5Cn\22, op); abort(); return 0;\0A\00", align 1
@.str.62 = private unnamed_addr constant [23 x i8] c"#define %s_%s_state\090\0A\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"#define %s_%s_state\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"\09%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"#define %s_%s_state(l)\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"\09\09switch (l) {\0A\00", align 1
@.str.67 = private unnamed_addr constant [23 x i8] c"\09\09case %d: return %d;\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"\09\09}\0A\00", align 1
@.str.69 = private unnamed_addr constant [20 x i8] c"\09( %s[l].%s + %d )\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"\09( (%s_TEMP = %s[l].%s) ? %s_TEMP + %d : 0 )\0A\00", align 1
@.str.71 = private unnamed_addr constant [25 x i8] c"#define %s_%s_state(l,r)\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"\09\09return %d;\0A\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"\09\09switch (r) {\0A\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"\09\09state = %s[r].%s; offset = %d;\0A\00", align 1
@.str.75 = private unnamed_addr constant [34 x i8] c"\09\09state = %s[l].%s; offset = %d;\0A\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"\09( %s_%s_transition[%s[l].%s][%s[r].%s] + %d)\0A\00", align 1
@.str.77 = private unnamed_addr constant [55 x i8] c"\09( (%s_TEMP = %s_%s_transition[%s[l].%s][%s[r].%s]) ? \00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"%s_TEMP + %d : 0 )\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"\09\09return %s_%s_state;\0A\00", align 1
@.str.80 = private unnamed_addr constant [26 x i8] c"\09\09return %s_%s_state(l);\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"\09\09return %s_%s_state(l,r);\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @dumpSortedStates() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %4, i64 %idxprom
  %5 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %5, i32 0, i32 0
  %6 = load i32, i32* %num, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpSortedRules() #0 {
entry:
  %i = alloca i32, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_ruleAST, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %3, i64 %idxprom
  %4 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %4, i32 0, i32 4
  %5 = load %struct.rule*, %struct.rule** %rule, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 1
  %6 = load i32, i32* %erulenum, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makePlanks() #0 {
entry:
  %planks = alloca %struct.list*, align 8
  call void @renumber()
  call void @makePmaps()
  %call = call %struct.list* @assemblePlanks()
  store %struct.list* %call, %struct.list** %planks, align 8
  %0 = load %struct.list*, %struct.list** %planks, align 8
  call void @purgePlanks(%struct.list* %0)
  call void @inToEx()
  call void @makePlankRule()
  call void @makePlankState()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @renumber() #0 {
entry:
  %i = alloca i32, align 4
  %previousOp = alloca %struct.operator*, align 8
  %previousLHS = alloca %struct.nonterminal*, align 8
  %base_counter = alloca i32, align 4
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %2 = bitcast i8* %call to %struct.item_set**
  store %struct.item_set** %2, %struct.item_set*** @sortedStates, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count2 = getelementptr inbounds %struct.mapping, %struct.mapping* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %7, i32 0, i32 4
  %8 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %8, i64 %idxprom
  %9 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %10, 1
  %idxprom4 = sext i32 %sub to i64
  %11 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx5 = getelementptr inbounds %struct.item_set*, %struct.item_set** %11, i64 %idxprom4
  store %struct.item_set* %9, %struct.item_set** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %14 = bitcast %struct.item_set** %13 to i8*
  %15 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count6 = getelementptr inbounds %struct.mapping, %struct.mapping* %15, i32 0, i32 3
  %16 = load i32, i32* %count6, align 4
  %sub7 = sub nsw i32 %16, 1
  %conv8 = sext i32 %sub7 to i64
  call void @qsort(i8* %14, i64 %conv8, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.item_set**, %struct.item_set**)* @stateCompare to i32 (i8*, i8*)*))
  store %struct.operator* null, %struct.operator** %previousOp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.31, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count10 = getelementptr inbounds %struct.mapping, %struct.mapping* %18, i32 0, i32 3
  %19 = load i32, i32* %count10, align 4
  %sub11 = sub nsw i32 %19, 1
  %cmp12 = icmp slt i32 %17, %sub11
  br i1 %cmp12, label %for.body.14, label %for.end.33

for.body.14:                                      ; preds = %for.cond.9
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx16 = getelementptr inbounds %struct.item_set*, %struct.item_set** %22, i64 %idxprom15
  %23 = load %struct.item_set*, %struct.item_set** %arrayidx16, align 8
  %newNum = getelementptr inbounds %struct.item_set, %struct.item_set* %23, i32 0, i32 1
  store i32 %20, i32* %newNum, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %24 to i64
  %25 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx18 = getelementptr inbounds %struct.item_set*, %struct.item_set** %25, i64 %idxprom17
  %26 = load %struct.item_set*, %struct.item_set** %arrayidx18, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %26, i32 0, i32 2
  %27 = load %struct.operator*, %struct.operator** %op, align 8
  %stateCount = getelementptr inbounds %struct.operator, %struct.operator* %27, i32 0, i32 4
  %28 = load i32, i32* %stateCount, align 4
  %inc19 = add nsw i32 %28, 1
  store i32 %inc19, i32* %stateCount, align 4
  %29 = load %struct.operator*, %struct.operator** %previousOp, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %30 to i64
  %31 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx21 = getelementptr inbounds %struct.item_set*, %struct.item_set** %31, i64 %idxprom20
  %32 = load %struct.item_set*, %struct.item_set** %arrayidx21, align 8
  %op22 = getelementptr inbounds %struct.item_set, %struct.item_set* %32, i32 0, i32 2
  %33 = load %struct.operator*, %struct.operator** %op22, align 8
  %cmp23 = icmp ne %struct.operator* %29, %33
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx26 = getelementptr inbounds %struct.item_set*, %struct.item_set** %36, i64 %idxprom25
  %37 = load %struct.item_set*, %struct.item_set** %arrayidx26, align 8
  %op27 = getelementptr inbounds %struct.item_set, %struct.item_set* %37, i32 0, i32 2
  %38 = load %struct.operator*, %struct.operator** %op27, align 8
  %baseNum = getelementptr inbounds %struct.operator, %struct.operator* %38, i32 0, i32 3
  store i32 %34, i32* %baseNum, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %39 to i64
  %40 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx29 = getelementptr inbounds %struct.item_set*, %struct.item_set** %40, i64 %idxprom28
  %41 = load %struct.item_set*, %struct.item_set** %arrayidx29, align 8
  %op30 = getelementptr inbounds %struct.item_set, %struct.item_set* %41, i32 0, i32 2
  %42 = load %struct.operator*, %struct.operator** %op30, align 8
  store %struct.operator* %42, %struct.operator** %previousOp, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %43, 1
  store i32 %inc32, i32* %i, align 4
  br label %for.cond.9

for.end.33:                                       ; preds = %for.cond.9
  %44 = load i32, i32* @max_ruleAST, align 4
  %conv34 = sext i32 %44 to i64
  %mul35 = mul i64 %conv34, 8
  %conv36 = trunc i64 %mul35 to i32
  %call37 = call i8* @zalloc(i32 %conv36)
  %45 = bitcast i8* %call37 to %struct.ruleAST**
  store %struct.ruleAST** %45, %struct.ruleAST*** @sortedRules, align 8
  store i32 0, i32* @count, align 4
  %46 = load %struct.list*, %struct.list** @ruleASTs, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.ruleAST*)* @assignRules to i8* (i8*)*), %struct.list* %46)
  %47 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %48 = bitcast %struct.ruleAST** %47 to i8*
  %49 = load i32, i32* @max_ruleAST, align 4
  %conv38 = sext i32 %49 to i64
  call void @qsort(i8* %48, i64 %conv38, i64 8, i32 (i8*, i8*)* bitcast (i32 (%struct.ruleAST**, %struct.ruleAST**)* @ruleCompare to i32 (i8*, i8*)*))
  store %struct.nonterminal* null, %struct.nonterminal** %previousLHS, align 8
  store i32 0, i32* %base_counter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.76, %for.end.33
  %50 = load i32, i32* %i, align 4
  %51 = load i32, i32* @max_ruleAST, align 4
  %cmp40 = icmp slt i32 %50, %51
  br i1 %cmp40, label %for.body.42, label %for.end.78

for.body.42:                                      ; preds = %for.cond.39
  %52 = load %struct.nonterminal*, %struct.nonterminal** %previousLHS, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %53 to i64
  %54 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx44 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %54, i64 %idxprom43
  %55 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx44, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %55, i32 0, i32 4
  %56 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %56, i32 0, i32 4
  %57 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %cmp45 = icmp ne %struct.nonterminal* %52, %57
  br i1 %cmp45, label %if.then.47, label %if.end.58

if.then.47:                                       ; preds = %for.body.42
  %58 = load i32, i32* %base_counter, align 4
  %59 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %59 to i64
  %60 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx49 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %60, i64 %idxprom48
  %61 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx49, align 8
  %rule50 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %61, i32 0, i32 4
  %62 = load %struct.rule*, %struct.rule** %rule50, align 8
  %lhs51 = getelementptr inbounds %struct.rule, %struct.rule* %62, i32 0, i32 4
  %63 = load %struct.nonterminal*, %struct.nonterminal** %lhs51, align 8
  %baseNum52 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %63, i32 0, i32 2
  store i32 %58, i32* %baseNum52, align 4
  %64 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %64 to i64
  %65 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx54 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %65, i64 %idxprom53
  %66 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx54, align 8
  %rule55 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %66, i32 0, i32 4
  %67 = load %struct.rule*, %struct.rule** %rule55, align 8
  %lhs56 = getelementptr inbounds %struct.rule, %struct.rule* %67, i32 0, i32 4
  %68 = load %struct.nonterminal*, %struct.nonterminal** %lhs56, align 8
  store %struct.nonterminal* %68, %struct.nonterminal** %previousLHS, align 8
  %69 = load i32, i32* %base_counter, align 4
  %inc57 = add nsw i32 %69, 1
  store i32 %inc57, i32* %base_counter, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.47, %for.body.42
  %70 = load i32, i32* %base_counter, align 4
  %71 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %71 to i64
  %72 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx60 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %72, i64 %idxprom59
  %73 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx60, align 8
  %rule61 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %73, i32 0, i32 4
  %74 = load %struct.rule*, %struct.rule** %rule61, align 8
  %newNum62 = getelementptr inbounds %struct.rule, %struct.rule* %74, i32 0, i32 3
  store i32 %70, i32* %newNum62, align 4
  %75 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %75 to i64
  %76 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx64 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %76, i64 %idxprom63
  %77 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx64, align 8
  %rule65 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %77, i32 0, i32 4
  %78 = load %struct.rule*, %struct.rule** %rule65, align 8
  %lhs66 = getelementptr inbounds %struct.rule, %struct.rule* %78, i32 0, i32 4
  %79 = load %struct.nonterminal*, %struct.nonterminal** %lhs66, align 8
  %ruleCount = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %79, i32 0, i32 3
  %80 = load i32, i32* %ruleCount, align 4
  %inc67 = add nsw i32 %80, 1
  store i32 %inc67, i32* %ruleCount, align 4
  %81 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx69 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %82, i64 %idxprom68
  %83 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx69, align 8
  %rule70 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %83, i32 0, i32 4
  %84 = load %struct.rule*, %struct.rule** %rule70, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %85 to i64
  %86 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx72 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %86, i64 %idxprom71
  %87 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx72, align 8
  %rule73 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %87, i32 0, i32 4
  %88 = load %struct.rule*, %struct.rule** %rule73, align 8
  %lhs74 = getelementptr inbounds %struct.rule, %struct.rule* %88, i32 0, i32 4
  %89 = load %struct.nonterminal*, %struct.nonterminal** %lhs74, align 8
  %sampleRule = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %89, i32 0, i32 5
  store %struct.rule* %84, %struct.rule** %sampleRule, align 8
  %90 = load i32, i32* %base_counter, align 4
  %inc75 = add nsw i32 %90, 1
  store i32 %inc75, i32* %base_counter, align 4
  br label %for.inc.76

for.inc.76:                                       ; preds = %if.end.58
  %91 = load i32, i32* %i, align 4
  %inc77 = add nsw i32 %91, 1
  store i32 %inc77, i32* %i, align 4
  br label %for.cond.39

for.end.78:                                       ; preds = %for.cond.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makePmaps() #0 {
entry:
  %0 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doDimPmaps to i8* (i8*)*), %struct.list* %0)
  %1 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %2 = bitcast i8* %call to %struct.nonterminal**
  store %struct.nonterminal** %2, %struct.nonterminal*** @ntVector, align 8
  %3 = load %struct.list*, %struct.list** @nonterminals, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.nonterminal*)* @doNonTermPmaps to i8* (i8*)*), %struct.list* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.list* @assemblePlanks() #0 {
entry:
  %planks = alloca %struct.list*, align 8
  %pl = alloca %struct.plank*, align 8
  %p = alloca %struct.list*, align 8
  %s = alloca %struct.list*, align 8
  %sm = alloca %struct.stateMap*, align 8
  store %struct.list* null, %struct.list** %planks, align 8
  %0 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.stateMapTable, %struct.stateMapTable* @smt, i32 0, i32 0), align 8
  store %struct.list* %0, %struct.list** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %1 = load %struct.list*, %struct.list** %s, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %s, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.stateMap*
  store %struct.stateMap* %4, %struct.stateMap** %sm, align 8
  %5 = load %struct.list*, %struct.list** %planks, align 8
  store %struct.list* %5, %struct.list** %p, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.list*, %struct.list** %p, align 8
  %tobool2 = icmp ne %struct.list* %6, null
  br i1 %tobool2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load %struct.list*, %struct.list** %p, align 8
  %x4 = getelementptr inbounds %struct.list, %struct.list* %7, i32 0, i32 0
  %8 = load i8*, i8** %x4, align 8
  %9 = bitcast i8* %8 to %struct.plank*
  store %struct.plank* %9, %struct.plank** %pl, align 8
  %10 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width = getelementptr inbounds %struct.stateMap, %struct.stateMap* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %12 = load i32, i32* @plankSize, align 4
  %13 = load %struct.plank*, %struct.plank** %pl, align 8
  %width5 = getelementptr inbounds %struct.plank, %struct.plank* %13, i32 0, i32 2
  %14 = load i32, i32* %width5, align 4
  %sub = sub nsw i32 %12, %14
  %cmp = icmp sle i32 %11, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %15 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width6 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %15, i32 0, i32 2
  %16 = load i32, i32* %width6, align 4
  %17 = load %struct.plank*, %struct.plank** %pl, align 8
  %width7 = getelementptr inbounds %struct.plank, %struct.plank* %17, i32 0, i32 2
  %18 = load i32, i32* %width7, align 4
  %add = add nsw i32 %18, %16
  store i32 %add, i32* %width7, align 4
  %19 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %20 = bitcast %struct.stateMap* %19 to i8*
  %21 = load %struct.plank*, %struct.plank** %pl, align 8
  %fields = getelementptr inbounds %struct.plank, %struct.plank* %21, i32 0, i32 1
  %22 = load %struct.list*, %struct.list** %fields, align 8
  %call = call %struct.list* @newList(i8* %20, %struct.list* %22)
  %23 = load %struct.plank*, %struct.plank** %pl, align 8
  %fields8 = getelementptr inbounds %struct.plank, %struct.plank* %23, i32 0, i32 1
  store %struct.list* %call, %struct.list** %fields8, align 8
  %24 = load %struct.plank*, %struct.plank** %pl, align 8
  %25 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %plank = getelementptr inbounds %struct.stateMap, %struct.stateMap* %25, i32 0, i32 1
  store %struct.plank* %24, %struct.plank** %plank, align 8
  br label %next.16

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.list*, %struct.list** %p, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %26, i32 0, i32 1
  %27 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %27, %struct.list** %p, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %call9 = call %struct.plank* @newPlank()
  store %struct.plank* %call9, %struct.plank** %pl, align 8
  %28 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width10 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %28, i32 0, i32 2
  %29 = load i32, i32* %width10, align 4
  %30 = load %struct.plank*, %struct.plank** %pl, align 8
  %width11 = getelementptr inbounds %struct.plank, %struct.plank* %30, i32 0, i32 2
  store i32 %29, i32* %width11, align 4
  %31 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %32 = bitcast %struct.stateMap* %31 to i8*
  %call12 = call %struct.list* @newList(i8* %32, %struct.list* null)
  %33 = load %struct.plank*, %struct.plank** %pl, align 8
  %fields13 = getelementptr inbounds %struct.plank, %struct.plank* %33, i32 0, i32 1
  store %struct.list* %call12, %struct.list** %fields13, align 8
  %34 = load %struct.plank*, %struct.plank** %pl, align 8
  %35 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %plank14 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %35, i32 0, i32 1
  store %struct.plank* %34, %struct.plank** %plank14, align 8
  %36 = load %struct.plank*, %struct.plank** %pl, align 8
  %37 = bitcast %struct.plank* %36 to i8*
  %38 = load %struct.list*, %struct.list** %planks, align 8
  %call15 = call %struct.list* @appendList(i8* %37, %struct.list* %38)
  store %struct.list* %call15, %struct.list** %planks, align 8
  br label %next.16

next.16:                                          ; preds = %for.end, %if.then
  br label %for.inc.17

for.inc.17:                                       ; preds = %next.16
  %39 = load %struct.list*, %struct.list** %s, align 8
  %next18 = getelementptr inbounds %struct.list, %struct.list* %39, i32 0, i32 1
  %40 = load %struct.list*, %struct.list** %next18, align 8
  store %struct.list* %40, %struct.list** %s, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %41 = load %struct.list*, %struct.list** %planks, align 8
  ret %struct.list* %41
}

; Function Attrs: nounwind uwtable
define internal void @purgePlanks(%struct.list* %planks) #0 {
entry:
  %planks.addr = alloca %struct.list*, align 8
  %p = alloca %struct.list*, align 8
  %x = alloca %struct.plank*, align 8
  store %struct.list* %planks, %struct.list** %planks.addr, align 8
  %0 = load %struct.list*, %struct.list** %planks.addr, align 8
  store %struct.list* %0, %struct.list** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %p, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %p, align 8
  %x1 = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x1, align 8
  %4 = bitcast i8* %3 to %struct.plank*
  store %struct.plank* %4, %struct.plank** %x, align 8
  %5 = load %struct.plank*, %struct.plank** %x, align 8
  call void @outPlank(%struct.plank* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.list*, %struct.list** %p, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 1
  %7 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %7, %struct.list** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @inToEx() #0 {
entry:
  %i = alloca i32, align 4
  %counter = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), i8* %1)
  store i32 0, i32* %counter, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @max_ruleAST, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %counter, align 4
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp1, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %6 = load i32, i32* %counter, align 4
  %rem = srem i32 %6, 10
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load i32, i32* %counter, align 4
  %sub = sub nsw i32 %8, 10
  %9 = load i32, i32* %counter, align 4
  %sub5 = sub nsw i32 %9, 1
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 %sub, i32 %sub5)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.body
  %10 = load i32, i32* %counter, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %12, i64 %idxprom
  %13 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %13, i32 0, i32 4
  %14 = load %struct.rule*, %struct.rule** %rule, align 8
  %newNum = getelementptr inbounds %struct.rule, %struct.rule* %14, i32 0, i32 3
  %15 = load i32, i32* %newNum, align 4
  %cmp8 = icmp slt i32 %10, %15
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %if.end.7
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 0)
  %17 = load i32, i32* %counter, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %counter, align 4
  %18 = load i32, i32* %counter, align 4
  %cmp11 = icmp sgt i32 %18, 0
  br i1 %cmp11, label %if.then.12, label %if.end.21

if.then.12:                                       ; preds = %if.then.9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %20 = load i32, i32* %counter, align 4
  %rem14 = srem i32 %20, 10
  %cmp15 = icmp eq i32 %rem14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.then.12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load i32, i32* %counter, align 4
  %sub17 = sub nsw i32 %22, 10
  %23 = load i32, i32* %counter, align 4
  %sub18 = sub nsw i32 %23, 1
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 %sub17, i32 %sub18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx24 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %26, i64 %idxprom23
  %27 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx24, align 8
  %rule25 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %27, i32 0, i32 4
  %28 = load %struct.rule*, %struct.rule** %rule25, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %28, i32 0, i32 1
  %29 = load i32, i32* %erulenum, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %29)
  %30 = load i32, i32* %counter, align 4
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %counter, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %31 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makePlankRule() #0 {
entry:
  %i = alloca i32, align 4
  call void @makePlankRuleMacros()
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.27, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load i8*, i8** @prefix, align 8
  %9 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %11 = load i8*, i8** @prefix, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.29, i32 0, i32 0), i8* %8, i32 %10, i8* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp slt i32 %14, %15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i32, i32* %i, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %19 = load i8*, i8** @prefix, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.nonterminal**, %struct.nonterminal*** @ntVector, align 8
  %arrayidx = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %21, i64 %idxprom
  %22 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %22, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0), i8* %19, i8* %23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %27 = load i8*, i8** @prefix, align 8
  %28 = load i8*, i8** @prefix, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i32 0, i32 0), i8* %27, i8* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i32 0, i32 0))
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0))
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makePlankState() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i32 0, i32 0), i8* %2)
  %3 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doPlankLabelMacrosSafely to i8* (i8*)*), %struct.list* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  %6 = load i32, i32* @max_arity, align 4
  switch i32 %6, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.5
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.48, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i8* %12)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.50, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.51, i32 0, i32 0), i8* %17)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %19 = load i8*, i8** @prefix, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i32 0, i32 0), i8* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0))
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load i8*, i8** @prefix, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.53, i32 0, i32 0), i8* %22)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.13, %sw.bb.9, %sw.bb.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %25 = load i8*, i8** @prefix, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0), i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0))
  %call21 = call i32 @opsOfArity(i32 2)
  %28 = load i32, i32* @max_arity, align 4
  %cmp = icmp sge i32 %28, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %30 = load i8*, i8** @prefix, align 8
  %31 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %31, i32 0, i32 3
  %32 = load i32, i32* %count, align 4
  %33 = load i8*, i8** @prefix, align 8
  %34 = load i8*, i8** @prefix, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.57, i32 0, i32 0), i8* %30, i32 %32, i8* %33, i8* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %call24 = call i32 @opsOfArity(i32 1)
  %36 = load i32, i32* @max_arity, align 4
  %cmp25 = icmp sgt i32 %36, 1
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %38 = load i8*, i8** @prefix, align 8
  %39 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count27 = getelementptr inbounds %struct.mapping, %struct.mapping* %39, i32 0, i32 3
  %40 = load i32, i32* %count27, align 4
  %41 = load i8*, i8** @prefix, align 8
  %42 = load i8*, i8** @prefix, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.59, i32 0, i32 0), i8* %38, i32 %40, i8* %41, i8* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end
  %call31 = call i32 @opsOfArity(i32 0)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0))
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %49 = load i8*, i8** @prefix, align 8
  %50 = load i8*, i8** @prefix, align 8
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.61, i32 0, i32 0), i8* %49, i8* %50)
  %51 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doPlankLabelSafely to i8* (i8*)*), %struct.list* %51)
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0))
  ret void
}

declare i8* @zalloc(i32) #1

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @stateCompare(%struct.item_set** %s, %struct.item_set** %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.item_set**, align 8
  %t.addr = alloca %struct.item_set**, align 8
  %res = alloca i32, align 4
  store %struct.item_set** %s, %struct.item_set*** %s.addr, align 8
  store %struct.item_set** %t, %struct.item_set*** %t.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct.item_set**, %struct.item_set*** %s.addr, align 8
  %1 = load %struct.item_set*, %struct.item_set** %0, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %1, i32 0, i32 2
  %2 = load %struct.operator*, %struct.operator** %op, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load %struct.item_set**, %struct.item_set*** %t.addr, align 8
  %5 = load %struct.item_set*, %struct.item_set** %4, align 8
  %op1 = getelementptr inbounds %struct.item_set, %struct.item_set* %5, i32 0, i32 2
  %6 = load %struct.operator*, %struct.operator** %op1, align 8
  %name2 = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 0
  %7 = load i8*, i8** %name2, align 8
  %call = call i32 @strcmp(i8* %3, i8* %7) #6
  store i32 %call, i32* %res, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %res, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.item_set**, %struct.item_set*** %s.addr, align 8
  %10 = load %struct.item_set*, %struct.item_set** %9, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %10, i32 0, i32 0
  %11 = load i32, i32* %num, align 4
  %12 = load %struct.item_set**, %struct.item_set*** %t.addr, align 8
  %13 = load %struct.item_set*, %struct.item_set** %12, align 8
  %num3 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i32 0, i32 0
  %14 = load i32, i32* %num3, align 4
  %cmp4 = icmp slt i32 %11, %14
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %15 = load %struct.item_set**, %struct.item_set*** %s.addr, align 8
  %16 = load %struct.item_set*, %struct.item_set** %15, align 8
  %num7 = getelementptr inbounds %struct.item_set, %struct.item_set* %16, i32 0, i32 0
  %17 = load i32, i32* %num7, align 4
  %18 = load %struct.item_set**, %struct.item_set*** %t.addr, align 8
  %19 = load %struct.item_set*, %struct.item_set** %18, align 8
  %num8 = getelementptr inbounds %struct.item_set, %struct.item_set* %19, i32 0, i32 0
  %20 = load i32, i32* %num8, align 4
  %cmp9 = icmp sgt i32 %17, %20
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %21 = load %struct.item_set**, %struct.item_set*** %s.addr, align 8
  %22 = load %struct.item_set*, %struct.item_set** %21, align 8
  %newNum = getelementptr inbounds %struct.item_set, %struct.item_set* %22, i32 0, i32 1
  %23 = load i32, i32* %newNum, align 4
  %24 = load %struct.item_set**, %struct.item_set*** %t.addr, align 8
  %25 = load %struct.item_set*, %struct.item_set** %24, align 8
  %newNum12 = getelementptr inbounds %struct.item_set, %struct.item_set* %25, i32 0, i32 1
  %26 = load i32, i32* %newNum12, align 4
  %cmp13 = icmp slt i32 %23, %26
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  %27 = load %struct.item_set**, %struct.item_set*** %s.addr, align 8
  %28 = load %struct.item_set*, %struct.item_set** %27, align 8
  %newNum16 = getelementptr inbounds %struct.item_set, %struct.item_set* %28, i32 0, i32 1
  %29 = load i32, i32* %newNum16, align 4
  %30 = load %struct.item_set**, %struct.item_set*** %t.addr, align 8
  %31 = load %struct.item_set*, %struct.item_set** %30, align 8
  %newNum17 = getelementptr inbounds %struct.item_set, %struct.item_set* %31, i32 0, i32 1
  %32 = load i32, i32* %newNum17, align 4
  %cmp18 = icmp sgt i32 %29, %32
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.14, %if.then.10, %if.then.5, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @assignRules(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %1 = load i32, i32* @count, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @count, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.ruleAST**, %struct.ruleAST*** @sortedRules, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %2, i64 %idxprom
  store %struct.ruleAST* %0, %struct.ruleAST** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @ruleCompare(%struct.ruleAST** %s, %struct.ruleAST** %t) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca %struct.ruleAST**, align 8
  %t.addr = alloca %struct.ruleAST**, align 8
  %res = alloca i32, align 4
  store %struct.ruleAST** %s, %struct.ruleAST*** %s.addr, align 8
  store %struct.ruleAST** %t, %struct.ruleAST*** %t.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct.ruleAST**, %struct.ruleAST*** %s.addr, align 8
  %1 = load %struct.ruleAST*, %struct.ruleAST** %0, align 8
  %lhs = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %1, i32 0, i32 0
  %2 = load i8*, i8** %lhs, align 8
  %3 = load %struct.ruleAST**, %struct.ruleAST*** %t.addr, align 8
  %4 = load %struct.ruleAST*, %struct.ruleAST** %3, align 8
  %lhs1 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %4, i32 0, i32 0
  %5 = load i8*, i8** %lhs1, align 8
  %call = call i32 @strcmp(i8* %2, i8* %5) #6
  store i32 %call, i32* %res, align 4
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %res, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.ruleAST**, %struct.ruleAST*** %s.addr, align 8
  %8 = load %struct.ruleAST*, %struct.ruleAST** %7, align 8
  %erulenum = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %8, i32 0, i32 2
  %9 = load i32, i32* %erulenum, align 4
  %10 = load %struct.ruleAST**, %struct.ruleAST*** %t.addr, align 8
  %11 = load %struct.ruleAST*, %struct.ruleAST** %10, align 8
  %erulenum2 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %11, i32 0, i32 2
  %12 = load i32, i32* %erulenum2, align 4
  %cmp3 = icmp slt i32 %9, %12
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.ruleAST**, %struct.ruleAST*** %s.addr, align 8
  %14 = load %struct.ruleAST*, %struct.ruleAST** %13, align 8
  %erulenum6 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %14, i32 0, i32 2
  %15 = load i32, i32* %erulenum6, align 4
  %16 = load %struct.ruleAST**, %struct.ruleAST*** %t.addr, align 8
  %17 = load %struct.ruleAST*, %struct.ruleAST** %16, align 8
  %erulenum7 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %17, i32 0, i32 2
  %18 = load i32, i32* %erulenum7, align 4
  %cmp8 = icmp sgt i32 %15, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then.4, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @doDimPmaps(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca %struct.dimension*, align 8
  %v = alloca i16*, align 8
  %im = alloca %struct.plankMap*, align 8
  %new = alloca i32, align 4
  %index = alloca i32, align 4
  %ts = alloca %struct.item_set**, align 8
  %index77 = alloca i32, align 4
  %ts93 = alloca %struct.item_set**, align 8
  %index137 = alloca i32, align 4
  %ts153 = alloca %struct.item_set**, align 8
  %ts230 = alloca %struct.item_set**, align 8
  %diff = alloca i16, align 2
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %0, i32 0, i32 6
  %1 = load %struct.table*, %struct.table** %table, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 1
  %2 = load %struct.list*, %struct.list** %rules, align 8
  %tobool = icmp ne %struct.list* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %3 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %3, i32 0, i32 5
  %4 = load i32, i32* %arity, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  %5 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table2 = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 6
  %6 = load %struct.table*, %struct.table** %table2, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %7 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  store %struct.dimension* %7, %struct.dimension** %d, align 8
  %8 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %8, i32 0, i32 2
  %9 = load %struct.mapping*, %struct.mapping** %map, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %9, i32 0, i32 3
  %10 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %10, 1
  br i1 %cmp, label %if.then.3, label %if.end.32

if.then.3:                                        ; preds = %sw.bb.1
  %call = call i16* @newVector()
  store i16* %call, i16** %v, align 8
  %11 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum = getelementptr inbounds %struct.operator, %struct.operator* %11, i32 0, i32 3
  %12 = load i32, i32* %baseNum, align 4
  %call4 = call %struct.plankMap* @newPlankMap(i32 %12)
  store %struct.plankMap* %call4, %struct.plankMap** %im, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count5 = getelementptr inbounds %struct.mapping, %struct.mapping* %14, i32 0, i32 3
  %15 = load i32, i32* %count5, align 4
  %sub = sub nsw i32 %15, 1
  %cmp6 = icmp slt i32 %13, %sub
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx7 = getelementptr inbounds %struct.item_set*, %struct.item_set** %17, i64 %idxprom
  %18 = load %struct.item_set*, %struct.item_set** %arrayidx7, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %18, i32 0, i32 0
  %19 = load i32, i32* %num, align 4
  %idxprom8 = sext i32 %19 to i64
  %20 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %20, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 1
  %21 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx9 = getelementptr inbounds %struct.item_set*, %struct.item_set** %21, i64 %idxprom8
  %22 = load %struct.item_set*, %struct.item_set** %arrayidx9, align 8
  %num10 = getelementptr inbounds %struct.item_set, %struct.item_set* %22, i32 0, i32 0
  %23 = load i32, i32* %num10, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map12 = getelementptr inbounds %struct.dimension, %struct.dimension* %24, i32 0, i32 2
  %25 = load %struct.mapping*, %struct.mapping** %map12, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %25, i32 0, i32 4
  %26 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx13 = getelementptr inbounds %struct.item_set*, %struct.item_set** %26, i64 %idxprom11
  %27 = load %struct.item_set*, %struct.item_set** %arrayidx13, align 8
  %num14 = getelementptr inbounds %struct.item_set, %struct.item_set* %27, i32 0, i32 0
  %28 = load i32, i32* %num14, align 4
  store i32 %28, i32* %index, align 4
  %29 = load i32, i32* %index, align 4
  %tobool15 = icmp ne i32 %29, 0
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %for.body
  %30 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table17 = getelementptr inbounds %struct.operator, %struct.operator* %30, i32 0, i32 6
  %31 = load %struct.table*, %struct.table** %table17, align 8
  %32 = load i32, i32* %index, align 4
  %call18 = call %struct.item_set** @transLval(%struct.table* %31, i32 %32, i32 0)
  store %struct.item_set** %call18, %struct.item_set*** %ts, align 8
  %33 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %34 = load %struct.item_set*, %struct.item_set** %33, align 8
  %newNum = getelementptr inbounds %struct.item_set, %struct.item_set* %34, i32 0, i32 1
  %35 = load i32, i32* %newNum, align 4
  %36 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum19 = getelementptr inbounds %struct.operator, %struct.operator* %36, i32 0, i32 3
  %37 = load i32, i32* %baseNum19, align 4
  %sub20 = sub nsw i32 %35, %37
  %add = add nsw i32 %sub20, 1
  %conv = trunc i32 %add to i16
  %38 = load i32, i32* %i, align 4
  %add21 = add nsw i32 %38, 1
  %idxprom22 = sext i32 %add21 to i64
  %39 = load i16*, i16** %v, align 8
  %arrayidx23 = getelementptr inbounds i16, i16* %39, i64 %idxprom22
  store i16 %conv, i16* %arrayidx23, align 2
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %42 = load i16*, i16** %v, align 8
  %43 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map25 = getelementptr inbounds %struct.dimension, %struct.dimension* %43, i32 0, i32 2
  %44 = load %struct.mapping*, %struct.mapping** %map25, align 8
  %count26 = getelementptr inbounds %struct.mapping, %struct.mapping* %44, i32 0, i32 3
  %45 = load i32, i32* %count26, align 4
  %sub27 = sub nsw i32 %45, 1
  %call28 = call i32 @width(i32 %sub27)
  call void @enterStateMap(%struct.plankMap* %41, i16* %42, i32 %call28, i32* %new)
  %46 = load i32, i32* %new, align 4
  %tobool29 = icmp ne i32 %46, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %for.end
  %47 = load i16*, i16** %v, align 8
  %48 = bitcast i16* %47 to i8*
  call void @zfree(i8* %48)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %for.end
  %49 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %50 = load %struct.dimension*, %struct.dimension** %d, align 8
  %pmap = getelementptr inbounds %struct.dimension, %struct.dimension* %50, i32 0, i32 4
  store %struct.plankMap* %49, %struct.plankMap** %pmap, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %sw.bb.1
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end
  %51 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table34 = getelementptr inbounds %struct.operator, %struct.operator* %51, i32 0, i32 6
  %52 = load %struct.table*, %struct.table** %table34, align 8
  %dimen35 = getelementptr inbounds %struct.table, %struct.table* %52, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen35, i32 0, i64 0
  %53 = load %struct.dimension*, %struct.dimension** %arrayidx36, align 8
  %map37 = getelementptr inbounds %struct.dimension, %struct.dimension* %53, i32 0, i32 2
  %54 = load %struct.mapping*, %struct.mapping** %map37, align 8
  %count38 = getelementptr inbounds %struct.mapping, %struct.mapping* %54, i32 0, i32 3
  %55 = load i32, i32* %count38, align 4
  %cmp39 = icmp eq i32 %55, 1
  br i1 %cmp39, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb.33
  %56 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table41 = getelementptr inbounds %struct.operator, %struct.operator* %56, i32 0, i32 6
  %57 = load %struct.table*, %struct.table** %table41, align 8
  %dimen42 = getelementptr inbounds %struct.table, %struct.table* %57, i32 0, i32 3
  %arrayidx43 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen42, i32 0, i64 1
  %58 = load %struct.dimension*, %struct.dimension** %arrayidx43, align 8
  %map44 = getelementptr inbounds %struct.dimension, %struct.dimension* %58, i32 0, i32 2
  %59 = load %struct.mapping*, %struct.mapping** %map44, align 8
  %count45 = getelementptr inbounds %struct.mapping, %struct.mapping* %59, i32 0, i32 3
  %60 = load i32, i32* %count45, align 4
  %cmp46 = icmp eq i32 %60, 1
  br i1 %cmp46, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %land.lhs.true
  %61 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table49 = getelementptr inbounds %struct.operator, %struct.operator* %61, i32 0, i32 6
  %62 = load %struct.table*, %struct.table** %table49, align 8
  %dimen50 = getelementptr inbounds %struct.table, %struct.table* %62, i32 0, i32 3
  %arrayidx51 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen50, i32 0, i64 0
  %63 = load %struct.dimension*, %struct.dimension** %arrayidx51, align 8
  %pmap52 = getelementptr inbounds %struct.dimension, %struct.dimension* %63, i32 0, i32 4
  store %struct.plankMap* null, %struct.plankMap** %pmap52, align 8
  %64 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table53 = getelementptr inbounds %struct.operator, %struct.operator* %64, i32 0, i32 6
  %65 = load %struct.table*, %struct.table** %table53, align 8
  %dimen54 = getelementptr inbounds %struct.table, %struct.table* %65, i32 0, i32 3
  %arrayidx55 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen54, i32 0, i64 1
  %66 = load %struct.dimension*, %struct.dimension** %arrayidx55, align 8
  %pmap56 = getelementptr inbounds %struct.dimension, %struct.dimension* %66, i32 0, i32 4
  store %struct.plankMap* null, %struct.plankMap** %pmap56, align 8
  br label %if.end.268

if.else:                                          ; preds = %land.lhs.true, %sw.bb.33
  %67 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table57 = getelementptr inbounds %struct.operator, %struct.operator* %67, i32 0, i32 6
  %68 = load %struct.table*, %struct.table** %table57, align 8
  %dimen58 = getelementptr inbounds %struct.table, %struct.table* %68, i32 0, i32 3
  %arrayidx59 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen58, i32 0, i64 0
  %69 = load %struct.dimension*, %struct.dimension** %arrayidx59, align 8
  %map60 = getelementptr inbounds %struct.dimension, %struct.dimension* %69, i32 0, i32 2
  %70 = load %struct.mapping*, %struct.mapping** %map60, align 8
  %count61 = getelementptr inbounds %struct.mapping, %struct.mapping* %70, i32 0, i32 3
  %71 = load i32, i32* %count61, align 4
  %cmp62 = icmp eq i32 %71, 1
  br i1 %cmp62, label %if.then.64, label %if.else.116

if.then.64:                                       ; preds = %if.else
  %call65 = call i16* @newVector()
  store i16* %call65, i16** %v, align 8
  %72 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum66 = getelementptr inbounds %struct.operator, %struct.operator* %72, i32 0, i32 3
  %73 = load i32, i32* %baseNum66, align 4
  %call67 = call %struct.plankMap* @newPlankMap(i32 %73)
  store %struct.plankMap* %call67, %struct.plankMap** %im, align 8
  %74 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table68 = getelementptr inbounds %struct.operator, %struct.operator* %74, i32 0, i32 6
  %75 = load %struct.table*, %struct.table** %table68, align 8
  %dimen69 = getelementptr inbounds %struct.table, %struct.table* %75, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen69, i32 0, i64 1
  %76 = load %struct.dimension*, %struct.dimension** %arrayidx70, align 8
  store %struct.dimension* %76, %struct.dimension** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.105, %if.then.64
  %77 = load i32, i32* %i, align 4
  %78 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count72 = getelementptr inbounds %struct.mapping, %struct.mapping* %78, i32 0, i32 3
  %79 = load i32, i32* %count72, align 4
  %sub73 = sub nsw i32 %79, 1
  %cmp74 = icmp slt i32 %77, %sub73
  br i1 %cmp74, label %for.body.76, label %for.end.107

for.body.76:                                      ; preds = %for.cond.71
  %80 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %80 to i64
  %81 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx79 = getelementptr inbounds %struct.item_set*, %struct.item_set** %81, i64 %idxprom78
  %82 = load %struct.item_set*, %struct.item_set** %arrayidx79, align 8
  %num80 = getelementptr inbounds %struct.item_set, %struct.item_set* %82, i32 0, i32 0
  %83 = load i32, i32* %num80, align 4
  %idxprom81 = sext i32 %83 to i64
  %84 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map82 = getelementptr inbounds %struct.dimension, %struct.dimension* %84, i32 0, i32 1
  %class83 = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map82, i32 0, i32 1
  %85 = load %struct.item_set**, %struct.item_set*** %class83, align 8
  %arrayidx84 = getelementptr inbounds %struct.item_set*, %struct.item_set** %85, i64 %idxprom81
  %86 = load %struct.item_set*, %struct.item_set** %arrayidx84, align 8
  %num85 = getelementptr inbounds %struct.item_set, %struct.item_set* %86, i32 0, i32 0
  %87 = load i32, i32* %num85, align 4
  %idxprom86 = sext i32 %87 to i64
  %88 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map87 = getelementptr inbounds %struct.dimension, %struct.dimension* %88, i32 0, i32 2
  %89 = load %struct.mapping*, %struct.mapping** %map87, align 8
  %set88 = getelementptr inbounds %struct.mapping, %struct.mapping* %89, i32 0, i32 4
  %90 = load %struct.item_set**, %struct.item_set*** %set88, align 8
  %arrayidx89 = getelementptr inbounds %struct.item_set*, %struct.item_set** %90, i64 %idxprom86
  %91 = load %struct.item_set*, %struct.item_set** %arrayidx89, align 8
  %num90 = getelementptr inbounds %struct.item_set, %struct.item_set* %91, i32 0, i32 0
  %92 = load i32, i32* %num90, align 4
  store i32 %92, i32* %index77, align 4
  %93 = load i32, i32* %index77, align 4
  %tobool91 = icmp ne i32 %93, 0
  br i1 %tobool91, label %if.then.92, label %if.end.104

if.then.92:                                       ; preds = %for.body.76
  %94 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table94 = getelementptr inbounds %struct.operator, %struct.operator* %94, i32 0, i32 6
  %95 = load %struct.table*, %struct.table** %table94, align 8
  %96 = load i32, i32* %index77, align 4
  %call95 = call %struct.item_set** @transLval(%struct.table* %95, i32 1, i32 %96)
  store %struct.item_set** %call95, %struct.item_set*** %ts93, align 8
  %97 = load %struct.item_set**, %struct.item_set*** %ts93, align 8
  %98 = load %struct.item_set*, %struct.item_set** %97, align 8
  %newNum96 = getelementptr inbounds %struct.item_set, %struct.item_set* %98, i32 0, i32 1
  %99 = load i32, i32* %newNum96, align 4
  %100 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum97 = getelementptr inbounds %struct.operator, %struct.operator* %100, i32 0, i32 3
  %101 = load i32, i32* %baseNum97, align 4
  %sub98 = sub nsw i32 %99, %101
  %add99 = add nsw i32 %sub98, 1
  %conv100 = trunc i32 %add99 to i16
  %102 = load i32, i32* %i, align 4
  %add101 = add nsw i32 %102, 1
  %idxprom102 = sext i32 %add101 to i64
  %103 = load i16*, i16** %v, align 8
  %arrayidx103 = getelementptr inbounds i16, i16* %103, i64 %idxprom102
  store i16 %conv100, i16* %arrayidx103, align 2
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.92, %for.body.76
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %104 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %104, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.71

for.end.107:                                      ; preds = %for.cond.71
  %105 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %106 = load i16*, i16** %v, align 8
  %107 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map108 = getelementptr inbounds %struct.dimension, %struct.dimension* %107, i32 0, i32 2
  %108 = load %struct.mapping*, %struct.mapping** %map108, align 8
  %count109 = getelementptr inbounds %struct.mapping, %struct.mapping* %108, i32 0, i32 3
  %109 = load i32, i32* %count109, align 4
  %sub110 = sub nsw i32 %109, 1
  %call111 = call i32 @width(i32 %sub110)
  call void @enterStateMap(%struct.plankMap* %105, i16* %106, i32 %call111, i32* %new)
  %110 = load i32, i32* %new, align 4
  %tobool112 = icmp ne i32 %110, 0
  br i1 %tobool112, label %if.end.114, label %if.then.113

if.then.113:                                      ; preds = %for.end.107
  %111 = load i16*, i16** %v, align 8
  %112 = bitcast i16* %111 to i8*
  call void @zfree(i8* %112)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.113, %for.end.107
  %113 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %114 = load %struct.dimension*, %struct.dimension** %d, align 8
  %pmap115 = getelementptr inbounds %struct.dimension, %struct.dimension* %114, i32 0, i32 4
  store %struct.plankMap* %113, %struct.plankMap** %pmap115, align 8
  br label %if.end.267

if.else.116:                                      ; preds = %if.else
  %115 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table117 = getelementptr inbounds %struct.operator, %struct.operator* %115, i32 0, i32 6
  %116 = load %struct.table*, %struct.table** %table117, align 8
  %dimen118 = getelementptr inbounds %struct.table, %struct.table* %116, i32 0, i32 3
  %arrayidx119 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen118, i32 0, i64 1
  %117 = load %struct.dimension*, %struct.dimension** %arrayidx119, align 8
  %map120 = getelementptr inbounds %struct.dimension, %struct.dimension* %117, i32 0, i32 2
  %118 = load %struct.mapping*, %struct.mapping** %map120, align 8
  %count121 = getelementptr inbounds %struct.mapping, %struct.mapping* %118, i32 0, i32 3
  %119 = load i32, i32* %count121, align 4
  %cmp122 = icmp eq i32 %119, 1
  br i1 %cmp122, label %if.then.124, label %if.else.176

if.then.124:                                      ; preds = %if.else.116
  %call125 = call i16* @newVector()
  store i16* %call125, i16** %v, align 8
  %120 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum126 = getelementptr inbounds %struct.operator, %struct.operator* %120, i32 0, i32 3
  %121 = load i32, i32* %baseNum126, align 4
  %call127 = call %struct.plankMap* @newPlankMap(i32 %121)
  store %struct.plankMap* %call127, %struct.plankMap** %im, align 8
  %122 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table128 = getelementptr inbounds %struct.operator, %struct.operator* %122, i32 0, i32 6
  %123 = load %struct.table*, %struct.table** %table128, align 8
  %dimen129 = getelementptr inbounds %struct.table, %struct.table* %123, i32 0, i32 3
  %arrayidx130 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen129, i32 0, i64 0
  %124 = load %struct.dimension*, %struct.dimension** %arrayidx130, align 8
  store %struct.dimension* %124, %struct.dimension** %d, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.165, %if.then.124
  %125 = load i32, i32* %i, align 4
  %126 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count132 = getelementptr inbounds %struct.mapping, %struct.mapping* %126, i32 0, i32 3
  %127 = load i32, i32* %count132, align 4
  %sub133 = sub nsw i32 %127, 1
  %cmp134 = icmp slt i32 %125, %sub133
  br i1 %cmp134, label %for.body.136, label %for.end.167

for.body.136:                                     ; preds = %for.cond.131
  %128 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %128 to i64
  %129 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx139 = getelementptr inbounds %struct.item_set*, %struct.item_set** %129, i64 %idxprom138
  %130 = load %struct.item_set*, %struct.item_set** %arrayidx139, align 8
  %num140 = getelementptr inbounds %struct.item_set, %struct.item_set* %130, i32 0, i32 0
  %131 = load i32, i32* %num140, align 4
  %idxprom141 = sext i32 %131 to i64
  %132 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map142 = getelementptr inbounds %struct.dimension, %struct.dimension* %132, i32 0, i32 1
  %class143 = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map142, i32 0, i32 1
  %133 = load %struct.item_set**, %struct.item_set*** %class143, align 8
  %arrayidx144 = getelementptr inbounds %struct.item_set*, %struct.item_set** %133, i64 %idxprom141
  %134 = load %struct.item_set*, %struct.item_set** %arrayidx144, align 8
  %num145 = getelementptr inbounds %struct.item_set, %struct.item_set* %134, i32 0, i32 0
  %135 = load i32, i32* %num145, align 4
  %idxprom146 = sext i32 %135 to i64
  %136 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map147 = getelementptr inbounds %struct.dimension, %struct.dimension* %136, i32 0, i32 2
  %137 = load %struct.mapping*, %struct.mapping** %map147, align 8
  %set148 = getelementptr inbounds %struct.mapping, %struct.mapping* %137, i32 0, i32 4
  %138 = load %struct.item_set**, %struct.item_set*** %set148, align 8
  %arrayidx149 = getelementptr inbounds %struct.item_set*, %struct.item_set** %138, i64 %idxprom146
  %139 = load %struct.item_set*, %struct.item_set** %arrayidx149, align 8
  %num150 = getelementptr inbounds %struct.item_set, %struct.item_set* %139, i32 0, i32 0
  %140 = load i32, i32* %num150, align 4
  store i32 %140, i32* %index137, align 4
  %141 = load i32, i32* %index137, align 4
  %tobool151 = icmp ne i32 %141, 0
  br i1 %tobool151, label %if.then.152, label %if.end.164

if.then.152:                                      ; preds = %for.body.136
  %142 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table154 = getelementptr inbounds %struct.operator, %struct.operator* %142, i32 0, i32 6
  %143 = load %struct.table*, %struct.table** %table154, align 8
  %144 = load i32, i32* %index137, align 4
  %call155 = call %struct.item_set** @transLval(%struct.table* %143, i32 %144, i32 1)
  store %struct.item_set** %call155, %struct.item_set*** %ts153, align 8
  %145 = load %struct.item_set**, %struct.item_set*** %ts153, align 8
  %146 = load %struct.item_set*, %struct.item_set** %145, align 8
  %newNum156 = getelementptr inbounds %struct.item_set, %struct.item_set* %146, i32 0, i32 1
  %147 = load i32, i32* %newNum156, align 4
  %148 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum157 = getelementptr inbounds %struct.operator, %struct.operator* %148, i32 0, i32 3
  %149 = load i32, i32* %baseNum157, align 4
  %sub158 = sub nsw i32 %147, %149
  %add159 = add nsw i32 %sub158, 1
  %conv160 = trunc i32 %add159 to i16
  %150 = load i32, i32* %i, align 4
  %add161 = add nsw i32 %150, 1
  %idxprom162 = sext i32 %add161 to i64
  %151 = load i16*, i16** %v, align 8
  %arrayidx163 = getelementptr inbounds i16, i16* %151, i64 %idxprom162
  store i16 %conv160, i16* %arrayidx163, align 2
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.152, %for.body.136
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %152 = load i32, i32* %i, align 4
  %inc166 = add nsw i32 %152, 1
  store i32 %inc166, i32* %i, align 4
  br label %for.cond.131

for.end.167:                                      ; preds = %for.cond.131
  %153 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %154 = load i16*, i16** %v, align 8
  %155 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map168 = getelementptr inbounds %struct.dimension, %struct.dimension* %155, i32 0, i32 2
  %156 = load %struct.mapping*, %struct.mapping** %map168, align 8
  %count169 = getelementptr inbounds %struct.mapping, %struct.mapping* %156, i32 0, i32 3
  %157 = load i32, i32* %count169, align 4
  %sub170 = sub nsw i32 %157, 1
  %call171 = call i32 @width(i32 %sub170)
  call void @enterStateMap(%struct.plankMap* %153, i16* %154, i32 %call171, i32* %new)
  %158 = load i32, i32* %new, align 4
  %tobool172 = icmp ne i32 %158, 0
  br i1 %tobool172, label %if.end.174, label %if.then.173

if.then.173:                                      ; preds = %for.end.167
  %159 = load i16*, i16** %v, align 8
  %160 = bitcast i16* %159 to i8*
  call void @zfree(i8* %160)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.173, %for.end.167
  %161 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %162 = load %struct.dimension*, %struct.dimension** %d, align 8
  %pmap175 = getelementptr inbounds %struct.dimension, %struct.dimension* %162, i32 0, i32 4
  store %struct.plankMap* %161, %struct.plankMap** %pmap175, align 8
  br label %if.end.266

if.else.176:                                      ; preds = %if.else.116
  %163 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table177 = getelementptr inbounds %struct.operator, %struct.operator* %163, i32 0, i32 6
  %164 = load %struct.table*, %struct.table** %table177, align 8
  %dimen178 = getelementptr inbounds %struct.table, %struct.table* %164, i32 0, i32 3
  %arrayidx179 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen178, i32 0, i64 0
  %165 = load %struct.dimension*, %struct.dimension** %arrayidx179, align 8
  %call180 = call %struct.plankMap* @mapToPmap(%struct.dimension* %165)
  %166 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table181 = getelementptr inbounds %struct.operator, %struct.operator* %166, i32 0, i32 6
  %167 = load %struct.table*, %struct.table** %table181, align 8
  %dimen182 = getelementptr inbounds %struct.table, %struct.table* %167, i32 0, i32 3
  %arrayidx183 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen182, i32 0, i64 0
  %168 = load %struct.dimension*, %struct.dimension** %arrayidx183, align 8
  %pmap184 = getelementptr inbounds %struct.dimension, %struct.dimension* %168, i32 0, i32 4
  store %struct.plankMap* %call180, %struct.plankMap** %pmap184, align 8
  %169 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table185 = getelementptr inbounds %struct.operator, %struct.operator* %169, i32 0, i32 6
  %170 = load %struct.table*, %struct.table** %table185, align 8
  %dimen186 = getelementptr inbounds %struct.table, %struct.table* %170, i32 0, i32 3
  %arrayidx187 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen186, i32 0, i64 1
  %171 = load %struct.dimension*, %struct.dimension** %arrayidx187, align 8
  %call188 = call %struct.plankMap* @mapToPmap(%struct.dimension* %171)
  %172 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table189 = getelementptr inbounds %struct.operator, %struct.operator* %172, i32 0, i32 6
  %173 = load %struct.table*, %struct.table** %table189, align 8
  %dimen190 = getelementptr inbounds %struct.table, %struct.table* %173, i32 0, i32 3
  %arrayidx191 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen190, i32 0, i64 1
  %174 = load %struct.dimension*, %struct.dimension** %arrayidx191, align 8
  %pmap192 = getelementptr inbounds %struct.dimension, %struct.dimension* %174, i32 0, i32 4
  store %struct.plankMap* %call188, %struct.plankMap** %pmap192, align 8
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %176 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %stateCount = getelementptr inbounds %struct.operator, %struct.operator* %176, i32 0, i32 4
  %177 = load i32, i32* %stateCount, align 4
  %cmp193 = icmp sle i32 %177, 255
  %cond = select i1 %cmp193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0)
  %178 = load i8*, i8** @prefix, align 8
  %179 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %179, i32 0, i32 0
  %180 = load i8*, i8** %name, align 8
  %181 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table195 = getelementptr inbounds %struct.operator, %struct.operator* %181, i32 0, i32 6
  %182 = load %struct.table*, %struct.table** %table195, align 8
  %dimen196 = getelementptr inbounds %struct.table, %struct.table* %182, i32 0, i32 3
  %arrayidx197 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen196, i32 0, i64 0
  %183 = load %struct.dimension*, %struct.dimension** %arrayidx197, align 8
  %map198 = getelementptr inbounds %struct.dimension, %struct.dimension* %183, i32 0, i32 2
  %184 = load %struct.mapping*, %struct.mapping** %map198, align 8
  %count199 = getelementptr inbounds %struct.mapping, %struct.mapping* %184, i32 0, i32 3
  %185 = load i32, i32* %count199, align 4
  %186 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table200 = getelementptr inbounds %struct.operator, %struct.operator* %186, i32 0, i32 6
  %187 = load %struct.table*, %struct.table** %table200, align 8
  %dimen201 = getelementptr inbounds %struct.table, %struct.table* %187, i32 0, i32 3
  %arrayidx202 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen201, i32 0, i64 1
  %188 = load %struct.dimension*, %struct.dimension** %arrayidx202, align 8
  %map203 = getelementptr inbounds %struct.dimension, %struct.dimension* %188, i32 0, i32 2
  %189 = load %struct.mapping*, %struct.mapping** %map203, align 8
  %count204 = getelementptr inbounds %struct.mapping, %struct.mapping* %189, i32 0, i32 3
  %190 = load i32, i32* %count204, align 4
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0), i8* %cond, i8* %178, i8* %180, i32 %185, i32 %190)
  store i32 0, i32* %i, align 4
  br label %for.cond.206

for.cond.206:                                     ; preds = %for.inc.262, %if.else.176
  %191 = load i32, i32* %i, align 4
  %192 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table207 = getelementptr inbounds %struct.operator, %struct.operator* %192, i32 0, i32 6
  %193 = load %struct.table*, %struct.table** %table207, align 8
  %dimen208 = getelementptr inbounds %struct.table, %struct.table* %193, i32 0, i32 3
  %arrayidx209 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen208, i32 0, i64 0
  %194 = load %struct.dimension*, %struct.dimension** %arrayidx209, align 8
  %map210 = getelementptr inbounds %struct.dimension, %struct.dimension* %194, i32 0, i32 2
  %195 = load %struct.mapping*, %struct.mapping** %map210, align 8
  %count211 = getelementptr inbounds %struct.mapping, %struct.mapping* %195, i32 0, i32 3
  %196 = load i32, i32* %count211, align 4
  %cmp212 = icmp slt i32 %191, %196
  br i1 %cmp212, label %for.body.214, label %for.end.264

for.body.214:                                     ; preds = %for.cond.206
  %197 = load i32, i32* %i, align 4
  %cmp215 = icmp sgt i32 %197, 0
  br i1 %cmp215, label %if.then.217, label %if.end.219

if.then.217:                                      ; preds = %for.body.214
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %198, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.219

if.end.219:                                       ; preds = %if.then.217, %for.body.214
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.258, %if.end.219
  %200 = load i32, i32* %j, align 4
  %201 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table222 = getelementptr inbounds %struct.operator, %struct.operator* %201, i32 0, i32 6
  %202 = load %struct.table*, %struct.table** %table222, align 8
  %dimen223 = getelementptr inbounds %struct.table, %struct.table* %202, i32 0, i32 3
  %arrayidx224 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen223, i32 0, i64 1
  %203 = load %struct.dimension*, %struct.dimension** %arrayidx224, align 8
  %map225 = getelementptr inbounds %struct.dimension, %struct.dimension* %203, i32 0, i32 2
  %204 = load %struct.mapping*, %struct.mapping** %map225, align 8
  %count226 = getelementptr inbounds %struct.mapping, %struct.mapping* %204, i32 0, i32 3
  %205 = load i32, i32* %count226, align 4
  %cmp227 = icmp slt i32 %200, %205
  br i1 %cmp227, label %for.body.229, label %for.end.260

for.body.229:                                     ; preds = %for.cond.221
  %206 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table231 = getelementptr inbounds %struct.operator, %struct.operator* %206, i32 0, i32 6
  %207 = load %struct.table*, %struct.table** %table231, align 8
  %208 = load i32, i32* %i, align 4
  %209 = load i32, i32* %j, align 4
  %call232 = call %struct.item_set** @transLval(%struct.table* %207, i32 %208, i32 %209)
  store %struct.item_set** %call232, %struct.item_set*** %ts230, align 8
  %210 = load i32, i32* %j, align 4
  %cmp233 = icmp sgt i32 %210, 0
  br i1 %cmp233, label %if.then.235, label %if.end.244

if.then.235:                                      ; preds = %for.body.229
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %212 = load i32, i32* %j, align 4
  %rem = srem i32 %212, 10
  %cmp237 = icmp eq i32 %rem, 0
  br i1 %cmp237, label %if.then.239, label %if.end.243

if.then.239:                                      ; preds = %if.then.235
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %214 = load i32, i32* %i, align 4
  %215 = load i32, i32* %j, align 4
  %sub240 = sub nsw i32 %215, 10
  %216 = load i32, i32* %j, align 4
  %sub241 = sub nsw i32 %216, 1
  %call242 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 %214, i32 %sub240, i32 %sub241)
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.239, %if.then.235
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %for.body.229
  %217 = load %struct.item_set**, %struct.item_set*** %ts230, align 8
  %218 = load %struct.item_set*, %struct.item_set** %217, align 8
  %num245 = getelementptr inbounds %struct.item_set, %struct.item_set* %218, i32 0, i32 0
  %219 = load i32, i32* %num245, align 4
  %cmp246 = icmp sgt i32 %219, 0
  br i1 %cmp246, label %if.then.248, label %if.else.254

if.then.248:                                      ; preds = %if.end.244
  %220 = load %struct.item_set**, %struct.item_set*** %ts230, align 8
  %221 = load %struct.item_set*, %struct.item_set** %220, align 8
  %newNum249 = getelementptr inbounds %struct.item_set, %struct.item_set* %221, i32 0, i32 1
  %222 = load i32, i32* %newNum249, align 4
  %223 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum250 = getelementptr inbounds %struct.operator, %struct.operator* %223, i32 0, i32 3
  %224 = load i32, i32* %baseNum250, align 4
  %sub251 = sub nsw i32 %222, %224
  %add252 = add nsw i32 %sub251, 1
  %conv253 = trunc i32 %add252 to i16
  store i16 %conv253, i16* %diff, align 2
  br label %if.end.255

if.else.254:                                      ; preds = %if.end.244
  store i16 0, i16* %diff, align 2
  br label %if.end.255

if.end.255:                                       ; preds = %if.else.254, %if.then.248
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %226 = load i16, i16* %diff, align 2
  %conv256 = sext i16 %226 to i32
  %call257 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %conv256)
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.255
  %227 = load i32, i32* %j, align 4
  %inc259 = add nsw i32 %227, 1
  store i32 %inc259, i32* %j, align 4
  br label %for.cond.221

for.end.260:                                      ; preds = %for.cond.221
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %229 = load i32, i32* %i, align 4
  %call261 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %228, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 %229)
  br label %for.inc.262

for.inc.262:                                      ; preds = %for.end.260
  %230 = load i32, i32* %i, align 4
  %inc263 = add nsw i32 %230, 1
  store i32 %inc263, i32* %i, align 4
  br label %for.cond.206

for.end.264:                                      ; preds = %for.cond.206
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.266

if.end.266:                                       ; preds = %for.end.264, %if.end.174
  br label %if.end.267

if.end.267:                                       ; preds = %if.end.266, %if.end.114
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.48
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %if.end.268, %if.end.32, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doNonTermPmaps(%struct.nonterminal* %n) #0 {
entry:
  %n.addr = alloca %struct.nonterminal*, align 8
  %v = alloca i16*, align 8
  %im = alloca %struct.plankMap*, align 8
  %new = alloca i32, align 4
  %i = alloca i32, align 4
  %r = alloca %struct.rule*, align 8
  store %struct.nonterminal* %n, %struct.nonterminal** %n.addr, align 8
  %0 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %1 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %1, i32 0, i32 1
  %2 = load i32, i32* %num, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.nonterminal**, %struct.nonterminal*** @ntVector, align 8
  %arrayidx = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %3, i64 %idxprom
  store %struct.nonterminal* %0, %struct.nonterminal** %arrayidx, align 8
  %4 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %num1 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %4, i32 0, i32 1
  %5 = load i32, i32* %num1, align 4
  %6 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp sge i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %ruleCount = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %7, i32 0, i32 3
  %8 = load i32, i32* %ruleCount, align 4
  %cmp2 = icmp sle i32 %8, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %9 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %baseNum = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %9, i32 0, i32 2
  %10 = load i32, i32* %baseNum, align 4
  %call = call %struct.plankMap* @newPlankMap(i32 %10)
  store %struct.plankMap* %call, %struct.plankMap** %im, align 8
  %call5 = call i16* @newVector()
  store i16* %call5, i16** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %12, i32 0, i32 3
  %13 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %13, 1
  %cmp6 = icmp slt i32 %11, %sub
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %num7 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %14, i32 0, i32 1
  %15 = load i32, i32* %num7, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx10 = getelementptr inbounds %struct.item_set*, %struct.item_set** %17, i64 %idxprom9
  %18 = load %struct.item_set*, %struct.item_set** %arrayidx10, align 8
  %num11 = getelementptr inbounds %struct.item_set, %struct.item_set* %18, i32 0, i32 0
  %19 = load i32, i32* %num11, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %20, i32 0, i32 4
  %21 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx13 = getelementptr inbounds %struct.item_set*, %struct.item_set** %21, i64 %idxprom12
  %22 = load %struct.item_set*, %struct.item_set** %arrayidx13, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %22, i32 0, i32 7
  %23 = load %struct.item*, %struct.item** %closed, align 8
  %arrayidx14 = getelementptr inbounds %struct.item, %struct.item* %23, i64 %idxprom8
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx14, i32 0, i32 1
  %24 = load %struct.rule*, %struct.rule** %rule, align 8
  store %struct.rule* %24, %struct.rule** %r, align 8
  %25 = load %struct.rule*, %struct.rule** %r, align 8
  %tobool = icmp ne %struct.rule* %25, null
  br i1 %tobool, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %for.body
  %26 = load %struct.rule*, %struct.rule** %r, align 8
  %used = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 6
  %bf.load = load i8, i8* %used, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %used, align 8
  %27 = load %struct.rule*, %struct.rule** %r, align 8
  %newNum = getelementptr inbounds %struct.rule, %struct.rule* %27, i32 0, i32 3
  %28 = load i32, i32* %newNum, align 4
  %29 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %baseNum16 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %29, i32 0, i32 2
  %30 = load i32, i32* %baseNum16, align 4
  %sub17 = sub nsw i32 %28, %30
  %conv = trunc i32 %sub17 to i16
  %31 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, 1
  %idxprom18 = sext i32 %add to i64
  %32 = load i16*, i16** %v, align 8
  %arrayidx19 = getelementptr inbounds i16, i16* %32, i64 %idxprom18
  store i16 %conv, i16* %arrayidx19, align 2
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %35 = load i16*, i16** %v, align 8
  %36 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %ruleCount21 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %36, i32 0, i32 3
  %37 = load i32, i32* %ruleCount21, align 4
  %add22 = add nsw i32 %37, 1
  %call23 = call i32 @width(i32 %add22)
  call void @enterStateMap(%struct.plankMap* %34, i16* %35, i32 %call23, i32* %new)
  %38 = load i32, i32* %new, align 4
  %tobool24 = icmp ne i32 %38, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end
  %39 = load i16*, i16** %v, align 8
  %40 = bitcast i16* %39 to i8*
  call void @zfree(i8* %40)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.25, %for.end
  %41 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %42 = load %struct.nonterminal*, %struct.nonterminal** %n.addr, align 8
  %pmap = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %42, i32 0, i32 4
  store %struct.plankMap* %41, %struct.plankMap** %pmap, align 8
  br label %return

return:                                           ; preds = %if.end.26, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i16* @newVector() #0 {
entry:
  %p = alloca i16*, align 8
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %2 = bitcast i8* %call to i16*
  store i16* %2, i16** %p, align 8
  %3 = load i16*, i16** %p, align 8
  ret i16* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.plankMap* @newPlankMap(i32 %offset) #0 {
entry:
  %offset.addr = alloca i32, align 4
  %im = alloca %struct.plankMap*, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %call = call i8* @zalloc(i32 24)
  %0 = bitcast i8* %call to %struct.plankMap*
  store %struct.plankMap* %0, %struct.plankMap** %im, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %offset1 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %2, i32 0, i32 1
  store i32 %1, i32* %offset1, align 4
  %3 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  ret %struct.plankMap* %3
}

declare %struct.item_set** @transLval(%struct.table*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @enterStateMap(%struct.plankMap* %im, i16* %v, i32 %width, i32* %new) #0 {
entry:
  %im.addr = alloca %struct.plankMap*, align 8
  %v.addr = alloca i16*, align 8
  %width.addr = alloca i32, align 4
  %new.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %sm = alloca %struct.stateMap*, align 8
  %l = alloca %struct.list*, align 8
  %size = alloca i32, align 4
  %ecount = alloca i32, align 4
  store %struct.plankMap* %im, %struct.plankMap** %im.addr, align 8
  store i16* %v, i16** %v.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32* %new, i32** %new.addr, align 8
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  store i32 %1, i32* %size, align 4
  %2 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.stateMapTable, %struct.stateMapTable* @smt, i32 0, i32 0), align 8
  store %struct.list* %2, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.74, %entry
  %3 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %for.body, label %for.end.75

for.body:                                         ; preds = %for.cond
  %4 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  %5 = load i8*, i8** %x, align 8
  %6 = bitcast i8* %5 to %struct.stateMap*
  store %struct.stateMap* %6, %struct.stateMap** %sm, align 8
  store i32 0, i32* %ecount, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %7, %8
  br i1 %cmp, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i16*, i16** %v.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %10, i64 %idxprom
  %11 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %11 to i32
  %cmp3 = icmp ne i32 %conv, -1
  br i1 %cmp3, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %for.body.2
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value = getelementptr inbounds %struct.stateMap, %struct.stateMap* %13, i32 0, i32 3
  %14 = load i16*, i16** %value, align 8
  %arrayidx6 = getelementptr inbounds i16, i16* %14, i64 %idxprom5
  %15 = load i16, i16* %arrayidx6, align 2
  %conv7 = sext i16 %15 to i32
  %cmp8 = icmp ne i32 %conv7, -1
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.23

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load i16*, i16** %v.addr, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %17, i64 %idxprom11
  %18 = load i16, i16* %arrayidx12, align 2
  %conv13 = sext i16 %18 to i32
  %19 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value15 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %20, i32 0, i32 3
  %21 = load i16*, i16** %value15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %21, i64 %idxprom14
  %22 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %22 to i32
  %cmp18 = icmp ne i32 %conv13, %conv17
  br i1 %cmp18, label %if.then, label %if.end.23

if.then:                                          ; preds = %land.lhs.true.10
  %23 = load i32, i32* %ecount, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %ecount, align 4
  %24 = load i32, i32* @exceptionTolerance, align 4
  %cmp20 = icmp sgt i32 %inc, %24
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then
  br label %again

if.end:                                           ; preds = %if.then
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %land.lhs.true.10, %land.lhs.true, %for.body.2
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %25 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %25, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  store i32 0, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.65, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %size, align 4
  %cmp26 = icmp slt i32 %26, %27
  br i1 %cmp26, label %for.body.28, label %for.end.67

for.body.28:                                      ; preds = %for.cond.25
  %28 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %28 to i64
  %29 = load i16*, i16** %v.addr, align 8
  %arrayidx30 = getelementptr inbounds i16, i16* %29, i64 %idxprom29
  %30 = load i16, i16* %arrayidx30, align 2
  %conv31 = sext i16 %30 to i32
  %cmp32 = icmp eq i32 %conv31, -1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.28
  br label %for.inc.65

if.end.35:                                        ; preds = %for.body.28
  %31 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %31 to i64
  %32 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value37 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %32, i32 0, i32 3
  %33 = load i16*, i16** %value37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %33, i64 %idxprom36
  %34 = load i16, i16* %arrayidx38, align 2
  %conv39 = sext i16 %34 to i32
  %cmp40 = icmp eq i32 %conv39, -1
  br i1 %cmp40, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.35
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load i16*, i16** %v.addr, align 8
  %arrayidx44 = getelementptr inbounds i16, i16* %36, i64 %idxprom43
  %37 = load i16, i16* %arrayidx44, align 2
  %38 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %38 to i64
  %39 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value46 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %39, i32 0, i32 3
  %40 = load i16*, i16** %value46, align 8
  %arrayidx47 = getelementptr inbounds i16, i16* %40, i64 %idxprom45
  store i16 %37, i16* %arrayidx47, align 2
  br label %if.end.64

if.else:                                          ; preds = %if.end.35
  %41 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %41 to i64
  %42 = load i16*, i16** %v.addr, align 8
  %arrayidx49 = getelementptr inbounds i16, i16* %42, i64 %idxprom48
  %43 = load i16, i16* %arrayidx49, align 2
  %conv50 = sext i16 %43 to i32
  %44 = load i32, i32* %i, align 4
  %idxprom51 = sext i32 %44 to i64
  %45 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value52 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %45, i32 0, i32 3
  %46 = load i16*, i16** %value52, align 8
  %arrayidx53 = getelementptr inbounds i16, i16* %46, i64 %idxprom51
  %47 = load i16, i16* %arrayidx53, align 2
  %conv54 = sext i16 %47 to i32
  %cmp55 = icmp ne i32 %conv50, %conv54
  br i1 %cmp55, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %if.else
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %49 to i64
  %50 = load i16*, i16** %v.addr, align 8
  %arrayidx59 = getelementptr inbounds i16, i16* %50, i64 %idxprom58
  %51 = load i16, i16* %arrayidx59, align 2
  %conv60 = sext i16 %51 to i32
  %call = call %struct.except* @newException(i32 %48, i32 %conv60)
  %52 = bitcast %struct.except* %call to i8*
  %53 = load %struct.plankMap*, %struct.plankMap** %im.addr, align 8
  %exceptions = getelementptr inbounds %struct.plankMap, %struct.plankMap* %53, i32 0, i32 0
  %54 = load %struct.list*, %struct.list** %exceptions, align 8
  %call61 = call %struct.list* @newList(i8* %52, %struct.list* %54)
  %55 = load %struct.plankMap*, %struct.plankMap** %im.addr, align 8
  %exceptions62 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %55, i32 0, i32 0
  store %struct.list* %call61, %struct.list** %exceptions62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.57, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.42
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64, %if.then.34
  %56 = load i32, i32* %i, align 4
  %inc66 = add nsw i32 %56, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.25

for.end.67:                                       ; preds = %for.cond.25
  %57 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %58 = load %struct.plankMap*, %struct.plankMap** %im.addr, align 8
  %values = getelementptr inbounds %struct.plankMap, %struct.plankMap* %58, i32 0, i32 2
  store %struct.stateMap* %57, %struct.stateMap** %values, align 8
  %59 = load i32, i32* %width.addr, align 4
  %60 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width68 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %60, i32 0, i32 2
  %61 = load i32, i32* %width68, align 4
  %cmp69 = icmp sgt i32 %59, %61
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %for.end.67
  %62 = load i32, i32* %width.addr, align 4
  %63 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width72 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %63, i32 0, i32 2
  store i32 %62, i32* %width72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %for.end.67
  %64 = load i32*, i32** %new.addr, align 8
  store i32 0, i32* %64, align 4
  br label %return

again:                                            ; preds = %if.then.22
  br label %for.inc.74

for.inc.74:                                       ; preds = %again
  %65 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %65, i32 0, i32 1
  %66 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %66, %struct.list** %l, align 8
  br label %for.cond

for.end.75:                                       ; preds = %for.cond
  %call76 = call %struct.stateMap* @newStateMap()
  store %struct.stateMap* %call76, %struct.stateMap** %sm, align 8
  %67 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %68 = load %struct.plankMap*, %struct.plankMap** %im.addr, align 8
  %values77 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %68, i32 0, i32 2
  store %struct.stateMap* %67, %struct.stateMap** %values77, align 8
  %69 = load i16*, i16** %v.addr, align 8
  %70 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %value78 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %70, i32 0, i32 3
  store i16* %69, i16** %value78, align 8
  %71 = load i32, i32* %width.addr, align 4
  %72 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width79 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %72, i32 0, i32 2
  store i32 %71, i32* %width79, align 4
  %73 = load i32*, i32** %new.addr, align 8
  store i32 1, i32* %73, align 4
  %74 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %75 = bitcast %struct.stateMap* %74 to i8*
  %76 = load %struct.list*, %struct.list** getelementptr inbounds (%struct.stateMapTable, %struct.stateMapTable* @smt, i32 0, i32 0), align 8
  %call80 = call %struct.list* @newList(i8* %75, %struct.list* %76)
  store %struct.list* %call80, %struct.list** getelementptr inbounds (%struct.stateMapTable, %struct.stateMapTable* @smt, i32 0, i32 0), align 8
  br label %return

return:                                           ; preds = %for.end.75, %if.end.73
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @width(i32 %v) #0 {
entry:
  %v.addr = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %v, i32* %v.addr, align 4
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %v.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %c, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %v.addr, align 4
  %shr = ashr i32 %2, 1
  store i32 %shr, i32* %v.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %3 = load i32, i32* %c, align 4
  ret i32 %3
}

declare void @zfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.plankMap* @mapToPmap(%struct.dimension* %d) #0 {
entry:
  %retval = alloca %struct.plankMap*, align 8
  %d.addr = alloca %struct.dimension*, align 8
  %im = alloca %struct.plankMap*, align 8
  %v = alloca i16*, align 8
  %i = alloca i32, align 4
  %new = alloca i32, align 4
  %index = alloca i32, align 4
  store %struct.dimension* %d, %struct.dimension** %d.addr, align 8
  %0 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %0, i32 0, i32 2
  %1 = load %struct.mapping*, %struct.mapping** %map, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.plankMap* null, %struct.plankMap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call %struct.plankMap* @newPlankMap(i32 0)
  store %struct.plankMap* %call, %struct.plankMap** %im, align 8
  %call1 = call i16* @newVector()
  store i16* %call1, i16** %v, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count2 = getelementptr inbounds %struct.mapping, %struct.mapping* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %sub = sub nsw i32 %5, 1
  %cmp3 = icmp slt i32 %3, %sub
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %7, i64 %idxprom
  %8 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %8, i32 0, i32 0
  %9 = load i32, i32* %num, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %10, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 1
  %11 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx5 = getelementptr inbounds %struct.item_set*, %struct.item_set** %11, i64 %idxprom4
  %12 = load %struct.item_set*, %struct.item_set** %arrayidx5, align 8
  %num6 = getelementptr inbounds %struct.item_set, %struct.item_set* %12, i32 0, i32 0
  %13 = load i32, i32* %num6, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %map8 = getelementptr inbounds %struct.dimension, %struct.dimension* %14, i32 0, i32 2
  %15 = load %struct.mapping*, %struct.mapping** %map8, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %15, i32 0, i32 4
  %16 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx9 = getelementptr inbounds %struct.item_set*, %struct.item_set** %16, i64 %idxprom7
  %17 = load %struct.item_set*, %struct.item_set** %arrayidx9, align 8
  %num10 = getelementptr inbounds %struct.item_set, %struct.item_set* %17, i32 0, i32 0
  %18 = load i32, i32* %num10, align 4
  store i32 %18, i32* %index, align 4
  %19 = load i32, i32* %index, align 4
  %conv = trunc i32 %19 to i16
  %20 = load i32, i32* %i, align 4
  %add = add nsw i32 %20, 1
  %idxprom11 = sext i32 %add to i64
  %21 = load i16*, i16** %v, align 8
  %arrayidx12 = getelementptr inbounds i16, i16* %21, i64 %idxprom11
  store i16 %conv, i16* %arrayidx12, align 2
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i16*, i16** %v, align 8
  %arrayidx13 = getelementptr inbounds i16, i16* %23, i64 0
  store i16 0, i16* %arrayidx13, align 2
  %24 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %25 = load i16*, i16** %v, align 8
  %26 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %map14 = getelementptr inbounds %struct.dimension, %struct.dimension* %26, i32 0, i32 2
  %27 = load %struct.mapping*, %struct.mapping** %map14, align 8
  %count15 = getelementptr inbounds %struct.mapping, %struct.mapping* %27, i32 0, i32 3
  %28 = load i32, i32* %count15, align 4
  %call16 = call i32 @width(i32 %28)
  call void @enterStateMap(%struct.plankMap* %24, i16* %25, i32 %call16, i32* %new)
  %29 = load i32, i32* %new, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %for.end
  %30 = load i16*, i16** %v, align 8
  %31 = bitcast i16* %30 to i8*
  call void @zfree(i8* %31)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %for.end
  %32 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  store %struct.plankMap* %32, %struct.plankMap** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %33 = load %struct.plankMap*, %struct.plankMap** %retval
  ret %struct.plankMap* %33
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal %struct.except* @newException(i32 %index, i32 %value) #0 {
entry:
  %index.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %e = alloca %struct.except*, align 8
  store i32 %index, i32* %index.addr, align 4
  store i32 %value, i32* %value.addr, align 4
  %call = call i8* @zalloc(i32 4)
  %0 = bitcast i8* %call to %struct.except*
  store %struct.except* %0, %struct.except** %e, align 8
  %1 = load i32, i32* %index.addr, align 4
  %conv = trunc i32 %1 to i16
  %2 = load %struct.except*, %struct.except** %e, align 8
  %index1 = getelementptr inbounds %struct.except, %struct.except* %2, i32 0, i32 0
  store i16 %conv, i16* %index1, align 2
  %3 = load i32, i32* %value.addr, align 4
  %conv2 = trunc i32 %3 to i16
  %4 = load %struct.except*, %struct.except** %e, align 8
  %value3 = getelementptr inbounds %struct.except, %struct.except* %4, i32 0, i32 1
  store i16 %conv2, i16* %value3, align 2
  %5 = load %struct.except*, %struct.except** %e, align 8
  ret %struct.except* %5
}

; Function Attrs: nounwind uwtable
define internal %struct.stateMap* @newStateMap() #0 {
entry:
  %buf = alloca [50 x i8], align 16
  %sm = alloca %struct.stateMap*, align 8
  %call = call i8* @zalloc(i32 32)
  %0 = bitcast i8* %call to %struct.stateMap*
  store %struct.stateMap* %0, %struct.stateMap** %sm, align 8
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %1 = load i32, i32* @newStateMap.num, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @newStateMap.num, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 %1) #7
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #6
  %add = add i64 %call3, 1
  %conv = trunc i64 %add to i32
  %call4 = call i8* @zalloc(i32 %conv)
  %2 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %fieldname = getelementptr inbounds %struct.stateMap, %struct.stateMap* %2, i32 0, i32 0
  store i8* %call4, i8** %fieldname, align 8
  %3 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %fieldname5 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %3, i32 0, i32 0
  %4 = load i8*, i8** %fieldname5, align 8
  %arraydecay6 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call7 = call i8* @strcpy(i8* %4, i8* %arraydecay6) #7
  %5 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  ret %struct.stateMap* %5
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.plank* @newPlank() #0 {
entry:
  %p = alloca %struct.plank*, align 8
  %buf = alloca [50 x i8], align 16
  %call = call i8* @zalloc(i32 24)
  %0 = bitcast i8* %call to %struct.plank*
  store %struct.plank* %0, %struct.plank** %p, align 8
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %1 = load i8*, i8** @prefix, align 8
  %2 = load i32, i32* @newPlank.num, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* @newPlank.num, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i8* %1, i32 %2) #7
  %arraydecay2 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call3 = call i64 @strlen(i8* %arraydecay2) #6
  %add = add i64 %call3, 1
  %conv = trunc i64 %add to i32
  %call4 = call i8* @zalloc(i32 %conv)
  %3 = load %struct.plank*, %struct.plank** %p, align 8
  %name = getelementptr inbounds %struct.plank, %struct.plank* %3, i32 0, i32 0
  store i8* %call4, i8** %name, align 8
  %4 = load %struct.plank*, %struct.plank** %p, align 8
  %name5 = getelementptr inbounds %struct.plank, %struct.plank* %4, i32 0, i32 0
  %5 = load i8*, i8** %name5, align 8
  %arraydecay6 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call7 = call i8* @strcpy(i8* %5, i8* %arraydecay6) #7
  %6 = load %struct.plank*, %struct.plank** %p, align 8
  ret %struct.plank* %6
}

declare %struct.list* @appendList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @outPlank(%struct.plank* %p) #0 {
entry:
  %p.addr = alloca %struct.plank*, align 8
  %f = alloca %struct.list*, align 8
  %i = alloca i32, align 4
  %sm = alloca %struct.stateMap*, align 8
  %sm10 = alloca %struct.stateMap*, align 8
  store %struct.plank* %p, %struct.plank** %p.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0))
  %1 = load %struct.plank*, %struct.plank** %p.addr, align 8
  %fields = getelementptr inbounds %struct.plank, %struct.plank* %1, i32 0, i32 1
  %2 = load %struct.list*, %struct.list** %fields, align 8
  store %struct.list* %2, %struct.list** %f, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list*, %struct.list** %f, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.list*, %struct.list** %f, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  %5 = load i8*, i8** %x, align 8
  %6 = bitcast i8* %5 to %struct.stateMap*
  store %struct.stateMap* %6, %struct.stateMap** %sm, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %fieldname = getelementptr inbounds %struct.stateMap, %struct.stateMap* %8, i32 0, i32 0
  %9 = load i8*, i8** %fieldname, align 8
  %10 = load %struct.stateMap*, %struct.stateMap** %sm, align 8
  %width = getelementptr inbounds %struct.stateMap, %struct.stateMap* %10, i32 0, i32 2
  %11 = load i32, i32* %width, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* %9, i32 %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.list*, %struct.list** %f, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %13, %struct.list** %f, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %15 = load %struct.plank*, %struct.plank** %p.addr, align 8
  %name = getelementptr inbounds %struct.plank, %struct.plank* %15, i32 0, i32 0
  %16 = load i8*, i8** %name, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i8* %16)
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.23, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %18, i32 0, i32 3
  %19 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %17, %19
  br i1 %cmp, label %for.body.4, label %for.end.24

for.body.4:                                       ; preds = %for.cond.3
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0))
  %21 = load %struct.plank*, %struct.plank** %p.addr, align 8
  %fields6 = getelementptr inbounds %struct.plank, %struct.plank* %21, i32 0, i32 1
  %22 = load %struct.list*, %struct.list** %fields6, align 8
  store %struct.list* %22, %struct.list** %f, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.19, %for.body.4
  %23 = load %struct.list*, %struct.list** %f, align 8
  %tobool8 = icmp ne %struct.list* %23, null
  br i1 %tobool8, label %for.body.9, label %for.end.21

for.body.9:                                       ; preds = %for.cond.7
  %24 = load %struct.list*, %struct.list** %f, align 8
  %x11 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 0
  %25 = load i8*, i8** %x11, align 8
  %26 = bitcast i8* %25 to %struct.stateMap*
  store %struct.stateMap* %26, %struct.stateMap** %sm10, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load %struct.stateMap*, %struct.stateMap** %sm10, align 8
  %value = getelementptr inbounds %struct.stateMap, %struct.stateMap* %29, i32 0, i32 3
  %30 = load i16*, i16** %value, align 8
  %arrayidx = getelementptr inbounds i16, i16* %30, i64 %idxprom
  %31 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %31 to i32
  %cmp12 = icmp eq i32 %conv, -1
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.9
  br label %cond.end

cond.false:                                       ; preds = %for.body.9
  %32 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %32 to i64
  %33 = load %struct.stateMap*, %struct.stateMap** %sm10, align 8
  %value15 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %33, i32 0, i32 3
  %34 = load i16*, i16** %value15, align 8
  %arrayidx16 = getelementptr inbounds i16, i16* %34, i64 %idxprom14
  %35 = load i16, i16* %arrayidx16, align 2
  %conv17 = sext i16 %35 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv17, %cond.false ]
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 %cond)
  br label %for.inc.19

for.inc.19:                                       ; preds = %cond.end
  %36 = load %struct.list*, %struct.list** %f, align 8
  %next20 = getelementptr inbounds %struct.list, %struct.list* %36, i32 0, i32 1
  %37 = load %struct.list*, %struct.list** %next20, align 8
  store %struct.list* %37, %struct.list** %f, align 8
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %39 = load i32, i32* %i, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 %39)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.end.21
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.3

for.end.24:                                       ; preds = %for.cond.3
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makePlankRuleMacros() #0 {
entry:
  %i = alloca i32, align 4
  %es = alloca %struct.list*, align 8
  %im = alloca %struct.plankMap*, align 8
  %e = alloca %struct.except*, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.nonterminal**, %struct.nonterminal*** @ntVector, align 8
  %arrayidx = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %3, i64 %idxprom
  %4 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %pmap = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %4, i32 0, i32 4
  %5 = load %struct.plankMap*, %struct.plankMap** %pmap, align 8
  store %struct.plankMap* %5, %struct.plankMap** %im, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i8*, i8** @prefix, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %9 = load %struct.nonterminal**, %struct.nonterminal*** @ntVector, align 8
  %arrayidx2 = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %9, i64 %idxprom1
  %10 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx2, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0), i8* %7, i8* %11)
  %12 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %tobool = icmp ne %struct.plankMap* %12, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0), i8* %14)
  %15 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %exceptions = getelementptr inbounds %struct.plankMap, %struct.plankMap* %15, i32 0, i32 0
  %16 = load %struct.list*, %struct.list** %exceptions, align 8
  store %struct.list* %16, %struct.list** %es, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %17 = load %struct.list*, %struct.list** %es, align 8
  %tobool5 = icmp ne %struct.list* %17, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %18 = load %struct.list*, %struct.list** %es, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 0
  %19 = load i8*, i8** %x, align 8
  %20 = bitcast i8* %19 to %struct.except*
  store %struct.except* %20, %struct.except** %e, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load %struct.except*, %struct.except** %e, align 8
  %index = getelementptr inbounds %struct.except, %struct.except* %22, i32 0, i32 0
  %23 = load i16, i16* %index, align 2
  %conv = sext i16 %23 to i32
  %24 = load %struct.except*, %struct.except** %e, align 8
  %value = getelementptr inbounds %struct.except, %struct.except* %24, i32 0, i32 1
  %25 = load i16, i16* %value, align 2
  %conv7 = sext i16 %25 to i32
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i32 0, i32 0), i32 %conv, i32 %conv7)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %26 = load %struct.list*, %struct.list** %es, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %26, i32 0, i32 1
  %27 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %27, %struct.list** %es, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %29 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %values = getelementptr inbounds %struct.plankMap, %struct.plankMap* %29, i32 0, i32 2
  %30 = load %struct.stateMap*, %struct.stateMap** %values, align 8
  %plank = getelementptr inbounds %struct.stateMap, %struct.stateMap* %30, i32 0, i32 1
  %31 = load %struct.plank*, %struct.plank** %plank, align 8
  %name9 = getelementptr inbounds %struct.plank, %struct.plank* %31, i32 0, i32 0
  %32 = load i8*, i8** %name9, align 8
  %33 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %values10 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %33, i32 0, i32 2
  %34 = load %struct.stateMap*, %struct.stateMap** %values10, align 8
  %fieldname = getelementptr inbounds %struct.stateMap, %struct.stateMap* %34, i32 0, i32 0
  %35 = load i8*, i8** %fieldname, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0), i8* %32, i8* %35)
  %36 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %exceptions12 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %36, i32 0, i32 0
  %37 = load %struct.list*, %struct.list** %exceptions12, align 8
  store %struct.list* %37, %struct.list** %es, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.17, %for.end
  %38 = load %struct.list*, %struct.list** %es, align 8
  %tobool14 = icmp ne %struct.list* %38, null
  br i1 %tobool14, label %for.body.15, label %for.end.19

for.body.15:                                      ; preds = %for.cond.13
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0))
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.15
  %40 = load %struct.list*, %struct.list** %es, align 8
  %next18 = getelementptr inbounds %struct.list, %struct.list* %40, i32 0, i32 1
  %41 = load %struct.list*, %struct.list** %next18, align 8
  store %struct.list* %41, %struct.list** %es, align 8
  br label %for.cond.13

for.end.19:                                       ; preds = %for.cond.13
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %43 = load %struct.plankMap*, %struct.plankMap** %im, align 8
  %offset = getelementptr inbounds %struct.plankMap, %struct.plankMap* %43, i32 0, i32 1
  %44 = load i32, i32* %offset, align 4
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 %44)
  br label %if.end

if.else:                                          ; preds = %for.body
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end.19
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doPlankLabelMacrosSafely(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %im0 = alloca %struct.plankMap*, align 8
  %im1 = alloca %struct.plankMap*, align 8
  %es = alloca %struct.list*, align 8
  %e = alloca %struct.except*, align 8
  %ts = alloca %struct.item_set**, align 8
  %ts62 = alloca %struct.item_set**, align 8
  %es79 = alloca %struct.list*, align 8
  %e85 = alloca %struct.except*, align 8
  %es120 = alloca %struct.list*, align 8
  %e126 = alloca %struct.except*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %0, i32 0, i32 5
  %1 = load i32, i32* %arity, align 4
  switch i32 %1, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.62, i32 0, i32 0), i8* %3, i8* %5)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i8*, i8** @prefix, align 8
  %8 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name2 = getelementptr inbounds %struct.operator, %struct.operator* %8, i32 0, i32 0
  %9 = load i8*, i8** %name2, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i8* %7, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %11 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %11, i32 0, i32 6
  %12 = load %struct.table*, %struct.table** %table, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 4
  %13 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %13, i64 0
  %14 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %newNum = getelementptr inbounds %struct.item_set, %struct.item_set* %14, i32 0, i32 1
  %15 = load i32, i32* %newNum, align 4
  %add = add nsw i32 %15, 1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 %add)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %18 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name6 = getelementptr inbounds %struct.operator, %struct.operator* %18, i32 0, i32 0
  %19 = load i8*, i8** %name6, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i32 0, i32 0), i8* %17, i8* %19)
  %20 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table8 = getelementptr inbounds %struct.operator, %struct.operator* %20, i32 0, i32 6
  %21 = load %struct.table*, %struct.table** %table8, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %21, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %22 = load %struct.dimension*, %struct.dimension** %arrayidx9, align 8
  %pmap = getelementptr inbounds %struct.dimension, %struct.dimension* %22, i32 0, i32 4
  %23 = load %struct.plankMap*, %struct.plankMap** %pmap, align 8
  store %struct.plankMap* %23, %struct.plankMap** %im0, align 8
  %24 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %tobool = icmp ne %struct.plankMap* %24, null
  br i1 %tobool, label %if.then, label %if.else.36

if.then:                                          ; preds = %sw.bb.5
  %25 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %exceptions = getelementptr inbounds %struct.plankMap, %struct.plankMap* %25, i32 0, i32 0
  %26 = load %struct.list*, %struct.list** %exceptions, align 8
  %tobool10 = icmp ne %struct.list* %26, null
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %27 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %exceptions12 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %27, i32 0, i32 0
  %28 = load %struct.list*, %struct.list** %exceptions12, align 8
  store %struct.list* %28, %struct.list** %es, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %30 = load %struct.list*, %struct.list** %es, align 8
  %tobool14 = icmp ne %struct.list* %30, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct.list*, %struct.list** %es, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %31, i32 0, i32 0
  %32 = load i8*, i8** %x, align 8
  %33 = bitcast i8* %32 to %struct.except*
  store %struct.except* %33, %struct.except** %e, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %35 = load %struct.except*, %struct.except** %e, align 8
  %index = getelementptr inbounds %struct.except, %struct.except* %35, i32 0, i32 0
  %36 = load i16, i16* %index, align 2
  %conv = sext i16 %36 to i32
  %37 = load %struct.except*, %struct.except** %e, align 8
  %value = getelementptr inbounds %struct.except, %struct.except* %37, i32 0, i32 1
  %38 = load i16, i16* %value, align 2
  %conv15 = sext i16 %38 to i32
  %tobool16 = icmp ne i32 %conv15, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %39 = load %struct.except*, %struct.except** %e, align 8
  %value17 = getelementptr inbounds %struct.except, %struct.except* %39, i32 0, i32 1
  %40 = load i16, i16* %value17, align 2
  %conv18 = sext i16 %40 to i32
  %41 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %offset = getelementptr inbounds %struct.plankMap, %struct.plankMap* %41, i32 0, i32 1
  %42 = load i32, i32* %offset, align 4
  %add19 = add nsw i32 %conv18, %42
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add19, %cond.true ], [ 0, %cond.false ]
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i32 %conv, i32 %cond)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %43 = load %struct.list*, %struct.list** %es, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %43, i32 0, i32 1
  %44 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %44, %struct.list** %es, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %46 = load i32, i32* @speedflag, align 4
  %tobool22 = icmp ne i32 %46, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %48 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values = getelementptr inbounds %struct.plankMap, %struct.plankMap* %48, i32 0, i32 2
  %49 = load %struct.stateMap*, %struct.stateMap** %values, align 8
  %plank = getelementptr inbounds %struct.stateMap, %struct.stateMap* %49, i32 0, i32 1
  %50 = load %struct.plank*, %struct.plank** %plank, align 8
  %name24 = getelementptr inbounds %struct.plank, %struct.plank* %50, i32 0, i32 0
  %51 = load i8*, i8** %name24, align 8
  %52 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values25 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %52, i32 0, i32 2
  %53 = load %struct.stateMap*, %struct.stateMap** %values25, align 8
  %fieldname = getelementptr inbounds %struct.stateMap, %struct.stateMap* %53, i32 0, i32 0
  %54 = load i8*, i8** %fieldname, align 8
  %55 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %offset26 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %55, i32 0, i32 1
  %56 = load i32, i32* %offset26, align 4
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* %51, i8* %54, i32 %56)
  br label %if.end.35

if.else:                                          ; preds = %if.end
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %58 = load i8*, i8** @prefix, align 8
  %59 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values28 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %59, i32 0, i32 2
  %60 = load %struct.stateMap*, %struct.stateMap** %values28, align 8
  %plank29 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %60, i32 0, i32 1
  %61 = load %struct.plank*, %struct.plank** %plank29, align 8
  %name30 = getelementptr inbounds %struct.plank, %struct.plank* %61, i32 0, i32 0
  %62 = load i8*, i8** %name30, align 8
  %63 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values31 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %63, i32 0, i32 2
  %64 = load %struct.stateMap*, %struct.stateMap** %values31, align 8
  %fieldname32 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %64, i32 0, i32 0
  %65 = load i8*, i8** %fieldname32, align 8
  %66 = load i8*, i8** @prefix, align 8
  %67 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %offset33 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %67, i32 0, i32 1
  %68 = load i32, i32* %offset33, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.70, i32 0, i32 0), i8* %58, i8* %62, i8* %65, i8* %66, i32 %68)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.23
  br label %if.end.47

if.else.36:                                       ; preds = %sw.bb.5
  %69 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table37 = getelementptr inbounds %struct.operator, %struct.operator* %69, i32 0, i32 6
  %70 = load %struct.table*, %struct.table** %table37, align 8
  %call38 = call %struct.item_set** @transLval(%struct.table* %70, i32 1, i32 0)
  store %struct.item_set** %call38, %struct.item_set*** %ts, align 8
  %71 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %72 = load %struct.item_set*, %struct.item_set** %71, align 8
  %tobool39 = icmp ne %struct.item_set* %72, null
  br i1 %tobool39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.else.36
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %74 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %75 = load %struct.item_set*, %struct.item_set** %74, align 8
  %newNum41 = getelementptr inbounds %struct.item_set, %struct.item_set* %75, i32 0, i32 1
  %76 = load i32, i32* %newNum41, align 4
  %add42 = add nsw i32 %76, 1
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 %add42)
  br label %if.end.46

if.else.44:                                       ; preds = %if.else.36
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 0)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end.35
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %79 = load i8*, i8** @prefix, align 8
  %80 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name49 = getelementptr inbounds %struct.operator, %struct.operator* %80, i32 0, i32 0
  %81 = load i8*, i8** %name49, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.71, i32 0, i32 0), i8* %79, i8* %81)
  %82 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table51 = getelementptr inbounds %struct.operator, %struct.operator* %82, i32 0, i32 6
  %83 = load %struct.table*, %struct.table** %table51, align 8
  %dimen52 = getelementptr inbounds %struct.table, %struct.table* %83, i32 0, i32 3
  %arrayidx53 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen52, i32 0, i64 0
  %84 = load %struct.dimension*, %struct.dimension** %arrayidx53, align 8
  %pmap54 = getelementptr inbounds %struct.dimension, %struct.dimension* %84, i32 0, i32 4
  %85 = load %struct.plankMap*, %struct.plankMap** %pmap54, align 8
  store %struct.plankMap* %85, %struct.plankMap** %im0, align 8
  %86 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table55 = getelementptr inbounds %struct.operator, %struct.operator* %86, i32 0, i32 6
  %87 = load %struct.table*, %struct.table** %table55, align 8
  %dimen56 = getelementptr inbounds %struct.table, %struct.table* %87, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen56, i32 0, i64 1
  %88 = load %struct.dimension*, %struct.dimension** %arrayidx57, align 8
  %pmap58 = getelementptr inbounds %struct.dimension, %struct.dimension* %88, i32 0, i32 4
  %89 = load %struct.plankMap*, %struct.plankMap** %pmap58, align 8
  store %struct.plankMap* %89, %struct.plankMap** %im1, align 8
  %90 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %tobool59 = icmp ne %struct.plankMap* %90, null
  br i1 %tobool59, label %if.else.73, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.48
  %91 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %tobool60 = icmp ne %struct.plankMap* %91, null
  br i1 %tobool60, label %if.else.73, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true
  %92 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table63 = getelementptr inbounds %struct.operator, %struct.operator* %92, i32 0, i32 6
  %93 = load %struct.table*, %struct.table** %table63, align 8
  %call64 = call %struct.item_set** @transLval(%struct.table* %93, i32 1, i32 1)
  store %struct.item_set** %call64, %struct.item_set*** %ts62, align 8
  %94 = load %struct.item_set**, %struct.item_set*** %ts62, align 8
  %95 = load %struct.item_set*, %struct.item_set** %94, align 8
  %tobool65 = icmp ne %struct.item_set* %95, null
  br i1 %tobool65, label %if.then.66, label %if.else.70

if.then.66:                                       ; preds = %if.then.61
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %97 = load %struct.item_set**, %struct.item_set*** %ts62, align 8
  %98 = load %struct.item_set*, %struct.item_set** %97, align 8
  %newNum67 = getelementptr inbounds %struct.item_set, %struct.item_set* %98, i32 0, i32 1
  %99 = load i32, i32* %newNum67, align 4
  %add68 = add nsw i32 %99, 1
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i32 %add68)
  br label %if.end.72

if.else.70:                                       ; preds = %if.then.61
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i32 0)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.70, %if.then.66
  br label %if.end.188

if.else.73:                                       ; preds = %land.lhs.true, %sw.bb.48
  %101 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %tobool74 = icmp ne %struct.plankMap* %101, null
  br i1 %tobool74, label %if.else.114, label %if.then.75

if.then.75:                                       ; preds = %if.else.73
  %102 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %exceptions76 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %102, i32 0, i32 0
  %103 = load %struct.list*, %struct.list** %exceptions76, align 8
  %tobool77 = icmp ne %struct.list* %103, null
  br i1 %tobool77, label %if.then.78, label %if.end.105

if.then.78:                                       ; preds = %if.then.75
  %104 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %exceptions80 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %104, i32 0, i32 0
  %105 = load %struct.list*, %struct.list** %exceptions80, align 8
  store %struct.list* %105, %struct.list** %es79, align 8
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0))
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.101, %if.then.78
  %107 = load %struct.list*, %struct.list** %es79, align 8
  %tobool83 = icmp ne %struct.list* %107, null
  br i1 %tobool83, label %for.body.84, label %for.end.103

for.body.84:                                      ; preds = %for.cond.82
  %108 = load %struct.list*, %struct.list** %es79, align 8
  %x86 = getelementptr inbounds %struct.list, %struct.list* %108, i32 0, i32 0
  %109 = load i8*, i8** %x86, align 8
  %110 = bitcast i8* %109 to %struct.except*
  store %struct.except* %110, %struct.except** %e85, align 8
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %112 = load %struct.except*, %struct.except** %e85, align 8
  %index87 = getelementptr inbounds %struct.except, %struct.except* %112, i32 0, i32 0
  %113 = load i16, i16* %index87, align 2
  %conv88 = sext i16 %113 to i32
  %114 = load %struct.except*, %struct.except** %e85, align 8
  %value89 = getelementptr inbounds %struct.except, %struct.except* %114, i32 0, i32 1
  %115 = load i16, i16* %value89, align 2
  %conv90 = sext i16 %115 to i32
  %tobool91 = icmp ne i32 %conv90, 0
  br i1 %tobool91, label %cond.true.92, label %cond.false.97

cond.true.92:                                     ; preds = %for.body.84
  %116 = load %struct.except*, %struct.except** %e85, align 8
  %value93 = getelementptr inbounds %struct.except, %struct.except* %116, i32 0, i32 1
  %117 = load i16, i16* %value93, align 2
  %conv94 = sext i16 %117 to i32
  %118 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %offset95 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %118, i32 0, i32 1
  %119 = load i32, i32* %offset95, align 4
  %add96 = add nsw i32 %conv94, %119
  br label %cond.end.98

cond.false.97:                                    ; preds = %for.body.84
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.97, %cond.true.92
  %cond99 = phi i32 [ %add96, %cond.true.92 ], [ 0, %cond.false.97 ]
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i32 %conv88, i32 %cond99)
  br label %for.inc.101

for.inc.101:                                      ; preds = %cond.end.98
  %120 = load %struct.list*, %struct.list** %es79, align 8
  %next102 = getelementptr inbounds %struct.list, %struct.list* %120, i32 0, i32 1
  %121 = load %struct.list*, %struct.list** %next102, align 8
  store %struct.list* %121, %struct.list** %es79, align 8
  br label %for.cond.82

for.end.103:                                      ; preds = %for.cond.82
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.103, %if.then.75
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %124 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values106 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %124, i32 0, i32 2
  %125 = load %struct.stateMap*, %struct.stateMap** %values106, align 8
  %plank107 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %125, i32 0, i32 1
  %126 = load %struct.plank*, %struct.plank** %plank107, align 8
  %name108 = getelementptr inbounds %struct.plank, %struct.plank* %126, i32 0, i32 0
  %127 = load i8*, i8** %name108, align 8
  %128 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values109 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %128, i32 0, i32 2
  %129 = load %struct.stateMap*, %struct.stateMap** %values109, align 8
  %fieldname110 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %129, i32 0, i32 0
  %130 = load i8*, i8** %fieldname110, align 8
  %131 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %offset111 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %131, i32 0, i32 1
  %132 = load i32, i32* %offset111, align 4
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i32 0, i32 0), i8* %127, i8* %130, i32 %132)
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.187

if.else.114:                                      ; preds = %if.else.73
  %134 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %tobool115 = icmp ne %struct.plankMap* %134, null
  br i1 %tobool115, label %if.else.155, label %if.then.116

if.then.116:                                      ; preds = %if.else.114
  %135 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %exceptions117 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %135, i32 0, i32 0
  %136 = load %struct.list*, %struct.list** %exceptions117, align 8
  %tobool118 = icmp ne %struct.list* %136, null
  br i1 %tobool118, label %if.then.119, label %if.end.146

if.then.119:                                      ; preds = %if.then.116
  %137 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %exceptions121 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %137, i32 0, i32 0
  %138 = load %struct.list*, %struct.list** %exceptions121, align 8
  store %struct.list* %138, %struct.list** %es120, align 8
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0))
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.142, %if.then.119
  %140 = load %struct.list*, %struct.list** %es120, align 8
  %tobool124 = icmp ne %struct.list* %140, null
  br i1 %tobool124, label %for.body.125, label %for.end.144

for.body.125:                                     ; preds = %for.cond.123
  %141 = load %struct.list*, %struct.list** %es120, align 8
  %x127 = getelementptr inbounds %struct.list, %struct.list* %141, i32 0, i32 0
  %142 = load i8*, i8** %x127, align 8
  %143 = bitcast i8* %142 to %struct.except*
  store %struct.except* %143, %struct.except** %e126, align 8
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %145 = load %struct.except*, %struct.except** %e126, align 8
  %index128 = getelementptr inbounds %struct.except, %struct.except* %145, i32 0, i32 0
  %146 = load i16, i16* %index128, align 2
  %conv129 = sext i16 %146 to i32
  %147 = load %struct.except*, %struct.except** %e126, align 8
  %value130 = getelementptr inbounds %struct.except, %struct.except* %147, i32 0, i32 1
  %148 = load i16, i16* %value130, align 2
  %conv131 = sext i16 %148 to i32
  %tobool132 = icmp ne i32 %conv131, 0
  br i1 %tobool132, label %cond.true.133, label %cond.false.138

cond.true.133:                                    ; preds = %for.body.125
  %149 = load %struct.except*, %struct.except** %e126, align 8
  %value134 = getelementptr inbounds %struct.except, %struct.except* %149, i32 0, i32 1
  %150 = load i16, i16* %value134, align 2
  %conv135 = sext i16 %150 to i32
  %151 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %offset136 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %151, i32 0, i32 1
  %152 = load i32, i32* %offset136, align 4
  %add137 = add nsw i32 %conv135, %152
  br label %cond.end.139

cond.false.138:                                   ; preds = %for.body.125
  br label %cond.end.139

cond.end.139:                                     ; preds = %cond.false.138, %cond.true.133
  %cond140 = phi i32 [ %add137, %cond.true.133 ], [ 0, %cond.false.138 ]
  %call141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.67, i32 0, i32 0), i32 %conv129, i32 %cond140)
  br label %for.inc.142

for.inc.142:                                      ; preds = %cond.end.139
  %153 = load %struct.list*, %struct.list** %es120, align 8
  %next143 = getelementptr inbounds %struct.list, %struct.list* %153, i32 0, i32 1
  %154 = load %struct.list*, %struct.list** %next143, align 8
  store %struct.list* %154, %struct.list** %es120, align 8
  br label %for.cond.123

for.end.144:                                      ; preds = %for.cond.123
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.144, %if.then.116
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %157 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values147 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %157, i32 0, i32 2
  %158 = load %struct.stateMap*, %struct.stateMap** %values147, align 8
  %plank148 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %158, i32 0, i32 1
  %159 = load %struct.plank*, %struct.plank** %plank148, align 8
  %name149 = getelementptr inbounds %struct.plank, %struct.plank* %159, i32 0, i32 0
  %160 = load i8*, i8** %name149, align 8
  %161 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values150 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %161, i32 0, i32 2
  %162 = load %struct.stateMap*, %struct.stateMap** %values150, align 8
  %fieldname151 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %162, i32 0, i32 0
  %163 = load i8*, i8** %fieldname151, align 8
  %164 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %offset152 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %164, i32 0, i32 1
  %165 = load i32, i32* %offset152, align 4
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.75, i32 0, i32 0), i8* %160, i8* %163, i32 %165)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0))
  br label %if.end.186

if.else.155:                                      ; preds = %if.else.114
  %167 = load i32, i32* @speedflag, align 4
  %tobool156 = icmp ne i32 %167, 0
  br i1 %tobool156, label %if.then.157, label %if.else.170

if.then.157:                                      ; preds = %if.else.155
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %169 = load i8*, i8** @prefix, align 8
  %170 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name158 = getelementptr inbounds %struct.operator, %struct.operator* %170, i32 0, i32 0
  %171 = load i8*, i8** %name158, align 8
  %172 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values159 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %172, i32 0, i32 2
  %173 = load %struct.stateMap*, %struct.stateMap** %values159, align 8
  %plank160 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %173, i32 0, i32 1
  %174 = load %struct.plank*, %struct.plank** %plank160, align 8
  %name161 = getelementptr inbounds %struct.plank, %struct.plank* %174, i32 0, i32 0
  %175 = load i8*, i8** %name161, align 8
  %176 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values162 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %176, i32 0, i32 2
  %177 = load %struct.stateMap*, %struct.stateMap** %values162, align 8
  %fieldname163 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %177, i32 0, i32 0
  %178 = load i8*, i8** %fieldname163, align 8
  %179 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values164 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %179, i32 0, i32 2
  %180 = load %struct.stateMap*, %struct.stateMap** %values164, align 8
  %plank165 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %180, i32 0, i32 1
  %181 = load %struct.plank*, %struct.plank** %plank165, align 8
  %name166 = getelementptr inbounds %struct.plank, %struct.plank* %181, i32 0, i32 0
  %182 = load i8*, i8** %name166, align 8
  %183 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values167 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %183, i32 0, i32 2
  %184 = load %struct.stateMap*, %struct.stateMap** %values167, align 8
  %fieldname168 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %184, i32 0, i32 0
  %185 = load i8*, i8** %fieldname168, align 8
  %186 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum = getelementptr inbounds %struct.operator, %struct.operator* %186, i32 0, i32 3
  %187 = load i32, i32* %baseNum, align 4
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.76, i32 0, i32 0), i8* %169, i8* %171, i8* %175, i8* %178, i8* %182, i8* %185, i32 %187)
  br label %if.end.185

if.else.170:                                      ; preds = %if.else.155
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %189 = load i8*, i8** @prefix, align 8
  %190 = load i8*, i8** @prefix, align 8
  %191 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name171 = getelementptr inbounds %struct.operator, %struct.operator* %191, i32 0, i32 0
  %192 = load i8*, i8** %name171, align 8
  %193 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values172 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %193, i32 0, i32 2
  %194 = load %struct.stateMap*, %struct.stateMap** %values172, align 8
  %plank173 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %194, i32 0, i32 1
  %195 = load %struct.plank*, %struct.plank** %plank173, align 8
  %name174 = getelementptr inbounds %struct.plank, %struct.plank* %195, i32 0, i32 0
  %196 = load i8*, i8** %name174, align 8
  %197 = load %struct.plankMap*, %struct.plankMap** %im0, align 8
  %values175 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %197, i32 0, i32 2
  %198 = load %struct.stateMap*, %struct.stateMap** %values175, align 8
  %fieldname176 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %198, i32 0, i32 0
  %199 = load i8*, i8** %fieldname176, align 8
  %200 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values177 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %200, i32 0, i32 2
  %201 = load %struct.stateMap*, %struct.stateMap** %values177, align 8
  %plank178 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %201, i32 0, i32 1
  %202 = load %struct.plank*, %struct.plank** %plank178, align 8
  %name179 = getelementptr inbounds %struct.plank, %struct.plank* %202, i32 0, i32 0
  %203 = load i8*, i8** %name179, align 8
  %204 = load %struct.plankMap*, %struct.plankMap** %im1, align 8
  %values180 = getelementptr inbounds %struct.plankMap, %struct.plankMap* %204, i32 0, i32 2
  %205 = load %struct.stateMap*, %struct.stateMap** %values180, align 8
  %fieldname181 = getelementptr inbounds %struct.stateMap, %struct.stateMap* %205, i32 0, i32 0
  %206 = load i8*, i8** %fieldname181, align 8
  %call182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.77, i32 0, i32 0), i8* %189, i8* %190, i8* %192, i8* %196, i8* %199, i8* %203, i8* %206)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %208 = load i8*, i8** @prefix, align 8
  %209 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %baseNum183 = getelementptr inbounds %struct.operator, %struct.operator* %209, i32 0, i32 3
  %210 = load i32, i32* %baseNum183, align 4
  %call184 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %207, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.78, i32 0, i32 0), i8* %208, i32 %210)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.170, %if.then.157
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.146
  br label %if.end.187

if.end.187:                                       ; preds = %if.end.186, %if.end.105
  br label %if.end.188

if.end.188:                                       ; preds = %if.end.187, %if.end.72
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.188, %if.end.47, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @opsOfArity(i32) #1

; Function Attrs: nounwind uwtable
define internal void @doPlankLabelSafely(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %num = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 2
  %2 = load i32, i32* %num, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i32 %2)
  %3 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %3, i32 0, i32 5
  %4 = load i32, i32* %arity, align 4
  switch i32 %4, label %sw.default [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0))
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i8*, i8** @prefix, align 8
  %8 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %8, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i32 0, i32 0), i8* %7, i8* %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %11 = load i8*, i8** @prefix, align 8
  %12 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name5 = getelementptr inbounds %struct.operator, %struct.operator* %12, i32 0, i32 0
  %13 = load i8*, i8** %name5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.80, i32 0, i32 0), i8* %11, i8* %13)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %15 = load i8*, i8** @prefix, align 8
  %16 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name8 = getelementptr inbounds %struct.operator, %struct.operator* %16, i32 0, i32 0
  %17 = load i8*, i8** %name8, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i32 0, i32 0), i8* %15, i8* %17)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
