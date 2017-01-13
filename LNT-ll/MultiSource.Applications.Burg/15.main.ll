; ModuleID = './MultiSource.Applications.Burg/15.main.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.list = type { i8*, %struct.list* }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
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

@rcsid_main = global [49 x i8] c"$Id: main.c 96860 2010-02-23 02:09:27Z ddunbar $\00", align 16
@debugTables = global i32 0, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@version = internal global [18 x i8] c"BURG, Version 1.0\00", align 16
@prefix = external global i8*, align 8
@outFileName = internal global i8* null, align 8
@internals = internal global i32 0, align 4
@simpleTables = internal global i32 0, align 4
@lexical = external global i32, align 4
@principleCost = external global i32, align 4
@prevent_divergence = external global i32, align 4
@exceptionTolerance = external global i32, align 4
@diagnostics = internal global i32 0, align 4
@speedflag = external global i32, align 4
@trimflag = external global i32, align 4
@grammarflag = external global i32, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Bad option (%s)\0A\00", align 1
@inFileName = internal global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Unexpected Filename (%s) after (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Expection argument after %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Failed opening (%s)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@outfile = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@rules = external global %struct.list*, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"ERROR: No rules present\0A\00", align 1
@operators = external global %struct.list*, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"---final set of states ---\0A\00", align 1
@globalMap = external global %struct.mapping*, align 8

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %needStr = alloca i8**, align 8
  %needInt = alloca i32*, align 8
  %v = alloca i8*, align 8
  %opt = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i8** null, i8*** %needStr, align 8
  store i32* null, i32** %needInt, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 %idxprom1
  %5 = load i8*, i8** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 45
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %8, i64 %idxprom5
  %9 = load i8*, i8** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i8, i8* %9, i64 1
  %10 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  switch i32 %conv8, label %sw.default [
    i32 86, label %sw.bb
    i32 112, label %sw.bb.9
    i32 111, label %sw.bb.10
    i32 73, label %sw.bb.11
    i32 84, label %sw.bb.12
    i32 61, label %sw.bb.13
    i32 79, label %sw.bb.14
    i32 99, label %sw.bb.15
    i32 101, label %sw.bb.16
    i32 100, label %sw.bb.17
    i32 83, label %sw.bb.18
    i32 116, label %sw.bb.19
    i32 71, label %sw.bb.20
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @version, i32 0, i32 0))
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  store i8** @prefix, i8*** %needStr, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  store i8** @outFileName, i8*** %needStr, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  store i32 1, i32* @internals, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then
  store i32 1, i32* @simpleTables, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  store i32 1, i32* @lexical, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.then
  store i32* @principleCost, i32** %needInt, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then
  store i32* @prevent_divergence, i32** %needInt, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.then
  store i32* @exceptionTolerance, i32** %needInt, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.then
  store i32 1, i32* @diagnostics, align 4
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.then
  store i32 1, i32* @speedflag, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then
  store i32 1, i32* @trimflag, align 4
  br label %sw.epilog

sw.bb.20:                                         ; preds = %if.then
  store i32 1, i32* @grammarflag, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %13 to i64
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %14, i64 %idxprom21
  %15 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i8* %15)
  call void @exit(i32 1) #3
  unreachable

sw.epilog:                                        ; preds = %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %16 = load i8*, i8** @inFileName, align 8
  %tobool24 = icmp ne i8* %16, null
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.else
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %18 to i64
  %19 = load i8**, i8*** %argv.addr, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %19, i64 %idxprom26
  %20 = load i8*, i8** %arrayidx27, align 8
  %21 = load i8*, i8** @inFileName, align 8
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i8* %20, i8* %21)
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %if.else
  %22 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %22 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %23, i64 %idxprom29
  %24 = load i8*, i8** %arrayidx30, align 8
  store i8* %24, i8** @inFileName, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %sw.epilog
  %25 = load i32*, i32** %needInt, align 8
  %tobool32 = icmp ne i32* %25, null
  br i1 %tobool32, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %26 = load i8**, i8*** %needStr, align 8
  %tobool33 = icmp ne i8** %26, null
  br i1 %tobool33, label %if.then.34, label %if.end.61

if.then.34:                                       ; preds = %lor.lhs.false, %if.end.31
  %27 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %27 to i64
  %28 = load i8**, i8*** %argv.addr, align 8
  %arrayidx36 = getelementptr inbounds i8*, i8** %28, i64 %idxprom35
  %29 = load i8*, i8** %arrayidx36, align 8
  store i8* %29, i8** %opt, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %30 to i64
  %31 = load i8**, i8*** %argv.addr, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %31, i64 %idxprom37
  %32 = load i8*, i8** %arrayidx38, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %32, i64 2
  %33 = load i8, i8* %arrayidx39, align 1
  %tobool40 = icmp ne i8 %33, 0
  br i1 %tobool40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %if.then.34
  %34 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %34 to i64
  %35 = load i8**, i8*** %argv.addr, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %35, i64 %idxprom42
  %36 = load i8*, i8** %arrayidx43, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %arrayidx44, i8** %v, align 8
  br label %if.end.52

if.else.45:                                       ; preds = %if.then.34
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  %idxprom46 = sext i32 %inc to i64
  %38 = load i8**, i8*** %argv.addr, align 8
  %arrayidx47 = getelementptr inbounds i8*, i8** %38, i64 %idxprom46
  %39 = load i8*, i8** %arrayidx47, align 8
  store i8* %39, i8** %v, align 8
  %40 = load i8*, i8** %v, align 8
  %tobool48 = icmp ne i8* %40, null
  br i1 %tobool48, label %if.end.51, label %if.then.49

if.then.49:                                       ; preds = %if.else.45
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i8*, i8** %opt, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i8* %42)
  call void @exit(i32 1) #3
  unreachable

if.end.51:                                        ; preds = %if.else.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.41
  %43 = load i32*, i32** %needInt, align 8
  %tobool53 = icmp ne i32* %43, null
  br i1 %tobool53, label %if.then.54, label %if.else.56

if.then.54:                                       ; preds = %if.end.52
  %44 = load i8*, i8** %v, align 8
  %call55 = call i32 @atoi(i8* %44)
  %45 = load i32*, i32** %needInt, align 8
  store i32 %call55, i32* %45, align 4
  br label %if.end.60

if.else.56:                                       ; preds = %if.end.52
  %46 = load i8**, i8*** %needStr, align 8
  %tobool57 = icmp ne i8** %46, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else.56
  %47 = load i8*, i8** %v, align 8
  %48 = load i8**, i8*** %needStr, align 8
  store i8* %47, i8** %48, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.else.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %49 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %49, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i8*, i8** @inFileName, align 8
  %tobool63 = icmp ne i8* %50, null
  br i1 %tobool63, label %if.then.64, label %if.end.71

if.then.64:                                       ; preds = %for.end
  %51 = load i8*, i8** @inFileName, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %call65 = call %struct._IO_FILE* @freopen(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %52)
  %cmp66 = icmp eq %struct._IO_FILE* %call65, null
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.64
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = load i8*, i8** @inFileName, align 8
  %call69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %54)
  call void @exit(i32 1) #3
  unreachable

if.end.70:                                        ; preds = %if.then.64
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.end
  %55 = load i8*, i8** @outFileName, align 8
  %tobool72 = icmp ne i8* %55, null
  br i1 %tobool72, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %if.end.71
  %56 = load i8*, i8** @outFileName, align 8
  %call74 = call %struct._IO_FILE* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call74, %struct._IO_FILE** @outfile, align 8
  %cmp75 = icmp eq %struct._IO_FILE* %call74, null
  br i1 %cmp75, label %if.then.77, label %if.end.79

if.then.77:                                       ; preds = %if.then.73
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @outFileName, align 8
  %call78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0), i8* %58)
  call void @exit(i32 1) #3
  unreachable

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.71
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %59, %struct._IO_FILE** @outfile, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.end.79
  %call82 = call i32 @yyparse()
  %60 = load %struct.list*, %struct.list** @rules, align 8
  %tobool83 = icmp ne %struct.list* %60, null
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %if.end.81
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0))
  call void @exit(i32 1) #3
  unreachable

if.end.86:                                        ; preds = %if.end.81
  call void @findChainRules()
  call void @findAllPairs()
  call void (...) @doGrammarNts()
  call void @build()
  %62 = load i32, i32* @debugTables, align 4
  %tobool87 = icmp ne i32 %62, 0
  br i1 %tobool87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.end.86
  %63 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @dumpOperator_l to i8* (i8*)*), %struct.list* %63)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %if.end.86
  %64 = load i32, i32* @debugTables, align 4
  %tobool90 = icmp ne i32 %64, 0
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.end.89
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.end.89
  %65 = load i32, i32* @debugTables, align 4
  %tobool94 = icmp ne i32 %65, 0
  br i1 %tobool94, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.end.93
  %66 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  call void @dumpMapping(%struct.mapping* %66)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.end.93
  call void @startBurm()
  call void @makeNts()
  %67 = load i32, i32* @simpleTables, align 4
  %tobool97 = icmp ne i32 %67, 0
  br i1 %tobool97, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %if.end.96
  call void @makeSimple()
  br label %if.end.100

if.else.99:                                       ; preds = %if.end.96
  call void @makePlanks()
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.99, %if.then.98
  call void @startOptional()
  call void @makeLabel()
  call void @makeKids()
  %68 = load i32, i32* @internals, align 4
  %tobool101 = icmp ne i32 %68, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.100
  call void @makeChild()
  call void @makeOpLabel()
  call void @makeStateLabel()
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.100
  call void @endOptional()
  call void @makeOperatorVector()
  call void @makeNonterminals()
  %69 = load i32, i32* @internals, align 4
  %tobool104 = icmp ne i32 %69, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.103
  call void @makeOperators()
  call void @makeStringArray()
  call void (...) @makeRuleDescArray()
  call void @makeCostArray()
  call void (...) @makeDeltaCostArray()
  call void (...) @makeStateStringArray()
  call void @makeNonterminalArray()
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %if.end.103
  call void @makeClosureArray()
  %70 = load i32, i32* @diagnostics, align 4
  %tobool107 = icmp ne i32 %70, 0
  br i1 %tobool107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.106
  call void @reportDiagnostics()
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.108, %if.end.106
  call void @yypurge()
  call void @exit(i32 0) #3
  unreachable

return:                                           ; No predecessors!
  %71 = load i32, i32* %retval
  ret i32 %71
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #2

declare i32 @atoi(i8*) #1

declare %struct._IO_FILE* @freopen(i8*, i8*, %struct._IO_FILE*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @yyparse() #1

declare void @findChainRules() #1

declare void @findAllPairs() #1

declare void @doGrammarNts(...) #1

declare void @build() #1

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

declare void @dumpOperator_l(%struct.operator*) #1

declare i32 @printf(i8*, ...) #1

declare void @dumpMapping(%struct.mapping*) #1

declare void @startBurm() #1

declare void @makeNts() #1

declare void @makeSimple() #1

declare void @makePlanks() #1

declare void @startOptional() #1

declare void @makeLabel() #1

declare void @makeKids() #1

declare void @makeChild() #1

declare void @makeOpLabel() #1

declare void @makeStateLabel() #1

declare void @endOptional() #1

declare void @makeOperatorVector() #1

declare void @makeNonterminals() #1

declare void @makeOperators() #1

declare void @makeStringArray() #1

declare void @makeRuleDescArray(...) #1

declare void @makeCostArray() #1

declare void @makeDeltaCostArray(...) #1

declare void @makeStateStringArray(...) #1

declare void @makeNonterminalArray() #1

declare void @makeClosureArray() #1

declare void @reportDiagnostics() #1

declare void @yypurge() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
