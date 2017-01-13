; ModuleID = './MultiSource.Applications.d/1.gram.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.EnumStr = type { i32, i8* }
%struct.Production = type { i8*, i32, %struct.anon, i32, i8, %struct.Rule*, [8 x %struct.Production*], [8 x %struct.Declaration*], %struct.State*, %struct.Elem*, %struct.Term*, %struct.Production* }
%struct.anon = type { i32, i32, %struct.Rule**, [3 x %struct.Rule*] }
%struct.Rule = type { i32, %struct.Production*, i32, i32, i32, i32, %struct.anon.0, %struct.Elem*, %struct.Code, %struct.Code, %struct.anon.1, i32, %struct.Rule* }
%struct.anon.0 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.Code = type { i8*, i32 }
%struct.anon.1 = type { i32, i32, %struct.Code**, [3 x %struct.Code*] }
%struct.Declaration = type { %struct.Elem*, i32, i32 }
%struct.State = type { i32, i64, %struct.anon.2, %struct.anon.3, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, i8*, i32, %struct.State*, %struct.State*, %struct.Rule*, %struct.Rule* }
%struct.anon.2 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.3 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.VecGoto = type { i32, i32, %struct.Goto**, [3 x %struct.Goto*] }
%struct.Goto = type { %struct.Elem*, %struct.State* }
%struct.VecAction = type { i32, i32, %struct.Action**, [3 x %struct.Action*] }
%struct.Action = type { i32, %struct.Term*, %struct.Rule*, %struct.State*, i32, i8* }
%struct.VecHint = type { i32, i32, %struct.Hint**, [3 x %struct.Hint*] }
%struct.Hint = type { i32, %struct.State*, %struct.Rule* }
%struct.Scanner = type { %struct.VecScanState, %struct.VecScanStateTransition }
%struct.VecScanState = type { i32, i32, %struct.ScanState**, [3 x %struct.ScanState*] }
%struct.ScanState = type { i32, [256 x %struct.ScanState*], %struct.VecAction, %struct.VecAction, [256 x %struct.ScanStateTransition*] }
%struct.ScanStateTransition = type { i32, %struct.VecAction, %struct.VecAction }
%struct.VecScanStateTransition = type { i32, i32, %struct.ScanStateTransition**, [3 x %struct.ScanStateTransition*] }
%struct.Elem = type { i32, i32, %struct.Rule*, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { i8*, i32 }
%struct.Term = type { i32, i32, i32, i32, i32, i8*, i32, i8, %struct.Production* }
%struct.Grammar = type { i8*, %struct.anon.4, %struct.anon.5, %struct.anon.6, %struct.Code, %struct.Code*, i32, %struct.anon.7, %struct.anon.8, i8*, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, %struct.Production*, %struct.Rule*, %struct.Elem*, i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, %struct.Production**, [3 x %struct.Production*] }
%struct.anon.5 = type { i32, i32, %struct.Term**, [3 x %struct.Term*] }
%struct.anon.6 = type { i32, i32, %struct.State**, [3 x %struct.State*] }
%struct.anon.7 = type { i32, i32, %struct.Declaration**, [3 x %struct.Declaration*] }
%struct.anon.8 = type { i32, i32, %struct.D_Pass**, [3 x %struct.D_Pass*] }
%struct.D_Pass = type { i8*, i32, i32, i32 }
%struct.EqState = type { %struct.State*, %struct.Rule*, %struct.State* }
%struct.D_ParserTables = type { i32, %struct.D_State*, i16*, i32, i32, %struct.D_Symbol*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i32, %struct.D_Pass*, i32 }
%struct.D_State = type { i8*, i32, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.D_Shift**, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i8*, i8, i8, i8, i8*, %struct.D_Shift***, i32 }
%struct.anon.9 = type { i32, %struct.D_Reduction** }
%struct.D_Reduction = type { i16, i16, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i16, i16, i32, i32, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** }
%struct.D_Parser = type { i8*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, %struct.D_Scope*, void (%struct.D_Parser*)*, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)*, void (%struct.D_ParseNode*)*, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.D_Scope = type { i8, %struct.D_Sym*, %struct.D_SymHash*, %struct.D_Sym*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope* }
%struct.D_SymHash = type opaque
%struct.D_Sym = type { i8*, i32, i32, %struct.D_Sym*, %struct.D_Sym*, i32 }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, i8*, i8*, %struct.D_Scope*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i8*, i8* }
%struct.d_loc_t = type { i8*, i8*, i32, i32, i32 }
%struct.anon.10 = type { i32, %struct.D_RightEpsilonHint* }
%struct.D_RightEpsilonHint = type { i16, i16, %struct.D_Reduction* }
%struct.anon.11 = type { i32, %struct.D_ErrorRecoveryHint* }
%struct.D_ErrorRecoveryHint = type { i16, i16, i8* }
%struct.D_Shift = type { i16, i8, i8, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* }
%struct.D_Symbol = type { i32, i8*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [34 x i8] c"declare expects argument, line %d\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"declare does not expect argument, line %d\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"duplicate pass '%s' line %d\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"unknown pass '%s' line %d\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c" _synthetic\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"0 Start\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1 Start\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"<EOF> \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"string(\22%s\22) \00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"regex(\22%s\22) \00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"code(\22%s\22) \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"token(\22%s\22) \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"unknown token kind\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"$none\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"$left\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"$right\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"$unary_left\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"$unary_right\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"$binary_left\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"$binary_right\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"$noassoc\00", align 1
@assoc_strings = global [8 x %struct.EnumStr] [%struct.EnumStr { i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0) }, %struct.EnumStr { i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0) }, %struct.EnumStr { i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0) }, %struct.EnumStr { i32 9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0) }, %struct.EnumStr { i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0) }, %struct.EnumStr { i32 17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0) }, %struct.EnumStr { i32 18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0) }, %struct.EnumStr { i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0) }], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"SPECULATIVE_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"FINAL_CODE\0A%s\0AEND CODE\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"PRODUCTIONS\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"%s (%d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"\09: \00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"\09| \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"op %d \00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"rule %d \00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\09;\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"TERMINALS\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"(%d)\0A\00", align 1
@verbose_level = external global i32, align 4
@.str.37 = private unnamed_addr constant [10 x i8] c"eq %d %d \00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"diff state (%d %d) \00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"diff rule \00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"][ \00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"reduces_to %d %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.45 = private unnamed_addr constant [55 x i8] c"%d productions %d terminals %d states %d declarations\0A\00", align 1
@.str.46 = private unnamed_addr constant [50 x i8] c"encountered an escaped NULL while processing '%s'\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"empty string after unescape '%s'\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"STATE %d (%d ITEMS)%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" ACCEPT\00", align 1
@.str.50 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"  GOTO\0A\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c" : %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"  ACTION\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"\09%s\09\00", align 1
@action_types = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0)], align 16
@.str.55 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"reduce/reduce\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"shift/reduce\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"\09%s: \00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"SHIFT\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"REDUCE\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"  CONFLICT (before precedence and associativity)\0A\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"\09%s conflict \00", align 1
@.str.65 = private unnamed_addr constant [26 x i8] c"duplicate production '%s'\00", align 1
@.str.66 = private unnamed_addr constant [28 x i8] c"unresolved identifier: '%s'\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"circular regex production '%s'\00", align 1
@.str.68 = private unnamed_addr constant [69 x i8] c"final and/or multi-rule code not permitted in regex productions '%s'\00", align 1
@.str.69 = private unnamed_addr constant [62 x i8] c"regex production '%s' cannot invoke non-regex production '%s'\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"code not permitted in rule %d of regex productions '%s'\00", align 1
@.str.71 = private unnamed_addr constant [56 x i8] c"regex production '%s' cannot include scanners or tokens\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"unable to resolve circular regex production: '%s'\00", align 1
@.str.73 = private unnamed_addr constant [28 x i8] c"unresolved declaration '%s'\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"shared tokenize subtrees\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"number of rules in default action != 1\00", align 1

; Function Attrs: nounwind uwtable
define %struct.Production* @new_production(%struct.Grammar* %g, i8* %name) #0 {
entry:
  %retval = alloca %struct.Production*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %2) #6
  %conv = trunc i64 %call to i32
  %call1 = call %struct.Production* @lookup_production(%struct.Grammar* %0, i8* %1, i32 %conv)
  store %struct.Production* %call1, %struct.Production** %p, align 8
  %tobool = icmp ne %struct.Production* %call1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Production*, %struct.Production** %p, align 8
  store %struct.Production* %3, %struct.Production** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 232) #3
  %4 = bitcast i8* %call2 to %struct.Production*
  store %struct.Production* %4, %struct.Production** %p, align 8
  %5 = load %struct.Production*, %struct.Production** %p, align 8
  %6 = bitcast %struct.Production* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 232, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 2
  %8 = load %struct.Production**, %struct.Production*** %v, align 8
  %tobool3 = icmp ne %struct.Production** %8, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %9 = load %struct.Production*, %struct.Production** %p, align 8
  %10 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %10, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions5, i32 0, i32 0
  %11 = load i32, i32* %n, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 1
  %e = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Production*], [3 x %struct.Production*]* %e, i32 0, i32 0
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 1
  %v8 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions7, i32 0, i32 2
  store %struct.Production** %arraydecay, %struct.Production*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %arraydecay, i64 %idxprom
  store %struct.Production* %9, %struct.Production** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %14 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions9 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 1
  %v10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions9, i32 0, i32 2
  %15 = load %struct.Production**, %struct.Production*** %v10, align 8
  %16 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions11 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %16, i32 0, i32 1
  %e12 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.Production*], [3 x %struct.Production*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.Production** %15, %arraydecay13
  br i1 %cmp, label %if.then.15, label %if.else.29

if.then.15:                                       ; preds = %if.else
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 1
  %n17 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions16, i32 0, i32 0
  %18 = load i32, i32* %n17, align 4
  %cmp18 = icmp ult i32 %18, 3
  br i1 %cmp18, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.then.15
  %19 = load %struct.Production*, %struct.Production** %p, align 8
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions21 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 1
  %n22 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions21, i32 0, i32 0
  %21 = load i32, i32* %n22, align 4
  %inc23 = add i32 %21, 1
  store i32 %inc23, i32* %n22, align 4
  %idxprom24 = zext i32 %21 to i64
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions25 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 1
  %v26 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions25, i32 0, i32 2
  %23 = load %struct.Production**, %struct.Production*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.Production*, %struct.Production** %23, i64 %idxprom24
  store %struct.Production* %19, %struct.Production** %arrayidx27, align 8
  br label %do.end

if.end.28:                                        ; preds = %if.then.15
  br label %if.end.42

if.else.29:                                       ; preds = %if.else
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions30 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 1
  %n31 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions30, i32 0, i32 0
  %25 = load i32, i32* %n31, align 4
  %and = and i32 %25, 7
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %if.else.29
  %26 = load %struct.Production*, %struct.Production** %p, align 8
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions34 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 1
  %n35 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions34, i32 0, i32 0
  %28 = load i32, i32* %n35, align 4
  %inc36 = add i32 %28, 1
  store i32 %inc36, i32* %n35, align 4
  %idxprom37 = zext i32 %28 to i64
  %29 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions38 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %29, i32 0, i32 1
  %v39 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions38, i32 0, i32 2
  %30 = load %struct.Production**, %struct.Production*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Production*, %struct.Production** %30, i64 %idxprom37
  store %struct.Production* %26, %struct.Production** %arrayidx40, align 8
  br label %do.end

if.end.41:                                        ; preds = %if.else.29
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.28
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  %31 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions44 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 1
  %32 = bitcast %struct.anon.4* %productions44 to i8*
  %33 = load %struct.Production*, %struct.Production** %p, align 8
  %34 = bitcast %struct.Production* %33 to i8*
  call void @vec_add_internal(i8* %32, i8* %34)
  br label %do.end

do.end:                                           ; preds = %if.end.43, %if.then.33, %if.then.20, %if.then.4
  %35 = load i8*, i8** %name.addr, align 8
  %36 = load %struct.Production*, %struct.Production** %p, align 8
  %name45 = getelementptr inbounds %struct.Production, %struct.Production* %36, i32 0, i32 0
  store i8* %35, i8** %name45, align 8
  %37 = load i8*, i8** %name.addr, align 8
  %call46 = call i64 @strlen(i8* %37) #6
  %conv47 = trunc i64 %call46 to i32
  %38 = load %struct.Production*, %struct.Production** %p, align 8
  %name_len = getelementptr inbounds %struct.Production, %struct.Production* %38, i32 0, i32 1
  store i32 %conv47, i32* %name_len, align 4
  %39 = load %struct.Production*, %struct.Production** %p, align 8
  store %struct.Production* %39, %struct.Production** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %40 = load %struct.Production*, %struct.Production** %retval
  ret %struct.Production* %40
}

; Function Attrs: nounwind uwtable
define %struct.Production* @lookup_production(%struct.Grammar* %g, i8* %name, i32 %l) #0 {
entry:
  %retval = alloca %struct.Production*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %name.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pp = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %5 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %5, i64 %idxprom
  %6 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %6, %struct.Production** %pp, align 8
  %7 = load %struct.Production*, %struct.Production** %pp, align 8
  %name_len = getelementptr inbounds %struct.Production, %struct.Production* %7, i32 0, i32 1
  %8 = load i32, i32* %name_len, align 4
  %9 = load i32, i32* %l.addr, align 4
  %cmp2 = icmp ne i32 %8, %9
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %10 = load %struct.Production*, %struct.Production** %pp, align 8
  %name3 = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 0
  %11 = load i8*, i8** %name3, align 8
  %12 = load i8*, i8** %name.addr, align 8
  %13 = load i32, i32* %l.addr, align 4
  %conv = sext i32 %13 to i64
  %call = call i32 @strncmp(i8* %11, i8* %12, i64 %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %14 = load %struct.Production*, %struct.Production** %pp, align 8
  store %struct.Production* %14, %struct.Production** %retval
  br label %return

for.inc:                                          ; preds = %if.then
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.Production* null, %struct.Production** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %16 = load %struct.Production*, %struct.Production** %retval
  ret %struct.Production* %16
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @vec_add_internal(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define %struct.Rule* @new_rule(%struct.Grammar* %g, %struct.Production* %p) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %p.addr = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  %call = call noalias i8* @malloc(i64 168) #3
  %0 = bitcast i8* %call to %struct.Rule*
  store %struct.Rule* %0, %struct.Rule** %r, align 8
  %1 = load %struct.Rule*, %struct.Rule** %r, align 8
  %2 = bitcast %struct.Rule* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 168, i32 8, i1 false)
  %3 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 1
  store %struct.Production* %3, %struct.Production** %prod, align 8
  %call1 = call %struct.Elem* @new_elem()
  %5 = load %struct.Rule*, %struct.Rule** %r, align 8
  %end = getelementptr inbounds %struct.Rule, %struct.Rule* %5, i32 0, i32 7
  store %struct.Elem* %call1, %struct.Elem** %end, align 8
  %6 = load %struct.Rule*, %struct.Rule** %r, align 8
  %end2 = getelementptr inbounds %struct.Rule, %struct.Rule* %6, i32 0, i32 7
  %7 = load %struct.Elem*, %struct.Elem** %end2, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %7, i32 0, i32 0
  store i32 3, i32* %kind, align 4
  %8 = load %struct.Rule*, %struct.Rule** %r, align 8
  %9 = load %struct.Rule*, %struct.Rule** %r, align 8
  %end3 = getelementptr inbounds %struct.Rule, %struct.Rule* %9, i32 0, i32 7
  %10 = load %struct.Elem*, %struct.Elem** %end3, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %10, i32 0, i32 2
  store %struct.Rule* %8, %struct.Rule** %rule, align 8
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %action_index = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 26
  %12 = load i32, i32* %action_index, align 4
  %13 = load %struct.Rule*, %struct.Rule** %r, align 8
  %action_index4 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 11
  store i32 %12, i32* %action_index4, align 4
  %14 = load %struct.Rule*, %struct.Rule** %r, align 8
  ret %struct.Rule* %14
}

; Function Attrs: nounwind uwtable
define %struct.Elem* @new_elem_nterm(%struct.Production* %p, %struct.Rule* %r) #0 {
entry:
  %p.addr = alloca %struct.Production*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call %struct.Elem* @new_elem()
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  %0 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 0
  store i32 0, i32* %kind, align 4
  %1 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %2 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e1 = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 3
  %nterm = bitcast %union.anon* %e1 to %struct.Production**
  store %struct.Production* %1, %struct.Production** %nterm, align 8
  %3 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %4 = load %struct.Elem*, %struct.Elem** %e, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 2
  store %struct.Rule* %3, %struct.Rule** %rule, align 8
  %5 = load %struct.Elem*, %struct.Elem** %e, align 8
  ret %struct.Elem* %5
}

; Function Attrs: nounwind uwtable
define i8* @escape_string_for_regex(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %sss = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %add = add i64 %call, 1
  %mul = mul i64 %add, 2
  %call1 = call noalias i8* @malloc(i64 %mul) #3
  store i8* %call1, i8** %ss, align 8
  %1 = load i8*, i8** %ss, align 8
  store i8* %1, i8** %sss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 40, label %sw.bb
    i32 41, label %sw.bb
    i32 91, label %sw.bb
    i32 93, label %sw.bb
    i32 45, label %sw.bb
    i32 94, label %sw.bb
    i32 42, label %sw.bb
    i32 63, label %sw.bb
    i32 43, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %6 = load i8*, i8** %ss, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %ss, align 8
  store i8 92, i8* %6, align 1
  br label %sw.default

sw.default:                                       ; preds = %for.body, %sw.bb
  %7 = load i8*, i8** %s.addr, align 8
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** %ss, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr2, i8** %ss, align 8
  store i8 %8, i8* %9, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %10 = load i8*, i8** %s.addr, align 8
  %incdec.ptr3 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr3, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8*, i8** %ss, align 8
  store i8 0, i8* %11, align 1
  %12 = load i8*, i8** %sss, align 8
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define %struct.Elem* @new_string(%struct.Grammar* %g, i8* %s, i8* %e, %struct.Rule* %r) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %x = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 1
  %2 = load i8*, i8** %e.addr, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 -1
  %3 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %call = call %struct.Elem* @new_term_string(%struct.Grammar* %0, i8* %add.ptr, i8* %add.ptr1, %struct.Rule* %3)
  store %struct.Elem* %call, %struct.Elem** %x, align 8
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 34
  %cond = select i1 %cmp, i32 1, i32 0
  %6 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e3 = getelementptr inbounds %struct.Elem, %struct.Elem* %6, i32 0, i32 3
  %term = bitcast %union.anon* %e3 to %struct.Term**
  %7 = load %struct.Term*, %struct.Term** %term, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %7, i32 0, i32 0
  store i32 %cond, i32* %kind, align 4
  %8 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e4 = getelementptr inbounds %struct.Elem, %struct.Elem* %8, i32 0, i32 3
  %term5 = bitcast %union.anon* %e4 to %struct.Term**
  %9 = load %struct.Term*, %struct.Term** %term5, align 8
  call void @unescape_term_string(%struct.Term* %9)
  %10 = load %struct.Elem*, %struct.Elem** %x, align 8
  ret %struct.Elem* %10
}

; Function Attrs: nounwind uwtable
define internal %struct.Elem* @new_term_string(%struct.Grammar* %g, i8* %s, i8* %e, %struct.Rule* %r) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %t = alloca %struct.Term*, align 8
  %elem = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call %struct.Term* @new_term()
  store %struct.Term* %call, %struct.Term** %t, align 8
  %0 = load i8*, i8** %e.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call1 = call noalias i8* @malloc(i64 %add) #3
  %2 = load %struct.Term*, %struct.Term** %t, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %2, i32 0, i32 5
  store i8* %call1, i8** %string, align 8
  %3 = load %struct.Term*, %struct.Term** %t, align 8
  %string2 = getelementptr inbounds %struct.Term, %struct.Term* %3, i32 0, i32 5
  %4 = load i8*, i8** %string2, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %e.addr, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %7 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %sub.ptr.sub5, i32 1, i1 false)
  %8 = load i8*, i8** %e.addr, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %9 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %10 = load %struct.Term*, %struct.Term** %t, align 8
  %string9 = getelementptr inbounds %struct.Term, %struct.Term* %10, i32 0, i32 5
  %11 = load i8*, i8** %string9, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub.ptr.sub8
  store i8 0, i8* %arrayidx, align 1
  %12 = load i8*, i8** %e.addr, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %13 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv = trunc i64 %sub.ptr.sub12 to i32
  %14 = load %struct.Term*, %struct.Term** %t, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %14, i32 0, i32 6
  store i32 %conv, i32* %string_len, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 2
  %16 = load %struct.Term**, %struct.Term*** %v, align 8
  %tobool = icmp ne %struct.Term** %16, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %17 = load %struct.Term*, %struct.Term** %t, align 8
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals13 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals13, i32 0, i32 0
  %19 = load i32, i32* %n, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals14 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 2
  %e15 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e15, i32 0, i32 0
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals16, i32 0, i32 2
  store %struct.Term** %arraydecay, %struct.Term*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Term*, %struct.Term** %arraydecay, i64 %idxprom
  store %struct.Term* %17, %struct.Term** %arrayidx18, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 2
  %v20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals19, i32 0, i32 2
  %23 = load %struct.Term**, %struct.Term*** %v20, align 8
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals21 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 2
  %e22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals21, i32 0, i32 3
  %arraydecay23 = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e22, i32 0, i32 0
  %cmp = icmp eq %struct.Term** %23, %arraydecay23
  br i1 %cmp, label %if.then.25, label %if.else.38

if.then.25:                                       ; preds = %if.else
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals26 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 2
  %n27 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals26, i32 0, i32 0
  %26 = load i32, i32* %n27, align 4
  %cmp28 = icmp ult i32 %26, 3
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.25
  %27 = load %struct.Term*, %struct.Term** %t, align 8
  %28 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals31 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals31, i32 0, i32 0
  %29 = load i32, i32* %n32, align 4
  %inc33 = add i32 %29, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %29 to i64
  %30 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %30, i32 0, i32 2
  %v36 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals35, i32 0, i32 2
  %31 = load %struct.Term**, %struct.Term*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Term*, %struct.Term** %31, i64 %idxprom34
  store %struct.Term* %27, %struct.Term** %arrayidx37, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.25
  br label %if.end.51

if.else.38:                                       ; preds = %if.else
  %32 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals39 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %32, i32 0, i32 2
  %n40 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals39, i32 0, i32 0
  %33 = load i32, i32* %n40, align 4
  %and = and i32 %33, 7
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.else.38
  %34 = load %struct.Term*, %struct.Term** %t, align 8
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals43 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 2
  %n44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals43, i32 0, i32 0
  %36 = load i32, i32* %n44, align 4
  %inc45 = add i32 %36, 1
  store i32 %inc45, i32* %n44, align 4
  %idxprom46 = zext i32 %36 to i64
  %37 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals47 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %37, i32 0, i32 2
  %v48 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals47, i32 0, i32 2
  %38 = load %struct.Term**, %struct.Term*** %v48, align 8
  %arrayidx49 = getelementptr inbounds %struct.Term*, %struct.Term** %38, i64 %idxprom46
  store %struct.Term* %34, %struct.Term** %arrayidx49, align 8
  br label %do.end

if.end.50:                                        ; preds = %if.else.38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  %39 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals53 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %39, i32 0, i32 2
  %40 = bitcast %struct.anon.5* %terminals53 to i8*
  %41 = load %struct.Term*, %struct.Term** %t, align 8
  %42 = bitcast %struct.Term* %41 to i8*
  call void @vec_add_internal(i8* %40, i8* %42)
  br label %do.end

do.end:                                           ; preds = %if.end.52, %if.then.42, %if.then.30, %if.then
  %43 = load %struct.Term*, %struct.Term** %t, align 8
  %44 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %call54 = call %struct.Elem* @new_elem_term(%struct.Term* %43, %struct.Rule* %44)
  store %struct.Elem* %call54, %struct.Elem** %elem, align 8
  %45 = load %struct.Elem*, %struct.Elem** %elem, align 8
  ret %struct.Elem* %45
}

; Function Attrs: nounwind uwtable
define internal void @unescape_term_string(%struct.Term* %t) #0 {
entry:
  %t.addr = alloca %struct.Term*, align 8
  %s = alloca i8*, align 8
  %start = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %length = alloca i32, align 4
  %base = alloca i32, align 4
  %saved_c = alloca i8, align 1
  store %struct.Term* %t, %struct.Term** %t.addr, align 8
  store i8* null, i8** %start, align 8
  store i32 0, i32* %base, align 4
  %0 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %0, i32 0, i32 5
  %1 = load i8*, i8** %string, align 8
  store i8* %1, i8** %s, align 8
  store i8* %1, i8** %ss, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %s, align 8
  %3 = load i8, i8* %2, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %s, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp eq i32 %conv, 92
  br i1 %cmp, label %if.then, label %if.else.176

if.then:                                          ; preds = %for.body
  %6 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 1
  %7 = load i8, i8* %arrayidx, align 1
  %conv2 = sext i8 %7 to i32
  switch i32 %conv2, label %sw.default [
    i32 98, label %sw.bb
    i32 102, label %sw.bb.3
    i32 110, label %sw.bb.5
    i32 114, label %sw.bb.7
    i32 116, label %sw.bb.9
    i32 118, label %sw.bb.11
    i32 97, label %sw.bb.13
    i32 99, label %sw.bb.15
    i32 34, label %sw.bb.16
    i32 39, label %sw.bb.21
    i32 120, label %sw.bb.28
    i32 100, label %sw.bb.47
    i32 48, label %sw.bb.108
    i32 49, label %sw.bb.108
    i32 50, label %sw.bb.108
    i32 51, label %sw.bb.108
    i32 52, label %sw.bb.108
    i32 53, label %sw.bb.108
    i32 54, label %sw.bb.108
    i32 55, label %sw.bb.108
  ]

sw.bb:                                            ; preds = %if.then
  %8 = load i8*, i8** %ss, align 8
  store i8 8, i8* %8, align 1
  %9 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  %10 = load i8*, i8** %ss, align 8
  store i8 12, i8* %10, align 1
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr4, i8** %s, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %12 = load i8*, i8** %ss, align 8
  store i8 10, i8* %12, align 1
  %13 = load i8*, i8** %s, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr6, i8** %s, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %14 = load i8*, i8** %ss, align 8
  store i8 13, i8* %14, align 1
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr8, i8** %s, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.then
  %16 = load i8*, i8** %ss, align 8
  store i8 9, i8* %16, align 1
  %17 = load i8*, i8** %s, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr10, i8** %s, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then
  %18 = load i8*, i8** %ss, align 8
  store i8 11, i8* %18, align 1
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr12, i8** %s, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then
  %20 = load i8*, i8** %ss, align 8
  store i8 7, i8* %20, align 1
  %21 = load i8*, i8** %s, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr14, i8** %s, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.then
  %22 = load i8*, i8** %ss, align 8
  store i8 0, i8* %22, align 1
  br label %if.end.187

sw.bb.16:                                         ; preds = %if.then
  %23 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %23, i32 0, i32 0
  %24 = load i32, i32* %kind, align 4
  %cmp17 = icmp eq i32 %24, 1
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %sw.bb.16
  %25 = load i8*, i8** %ss, align 8
  store i8 34, i8* %25, align 1
  %26 = load i8*, i8** %s, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %s, align 8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb.16
  br label %Ldefault

sw.bb.21:                                         ; preds = %if.then
  %27 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind22 = getelementptr inbounds %struct.Term, %struct.Term* %27, i32 0, i32 0
  %28 = load i32, i32* %kind22, align 4
  %cmp23 = icmp eq i32 %28, 0
  br i1 %cmp23, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %sw.bb.21
  %29 = load i8*, i8** %ss, align 8
  store i8 39, i8* %29, align 1
  %30 = load i8*, i8** %s, align 8
  %incdec.ptr26 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr26, i8** %s, align 8
  br label %sw.epilog

if.else.27:                                       ; preds = %sw.bb.21
  br label %Ldefault

sw.bb.28:                                         ; preds = %if.then
  store i32 0, i32* %length, align 4
  %31 = load i8*, i8** %s, align 8
  %arrayidx29 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %32 to i32
  %idxprom = sext i32 %conv30 to i64
  %call = call i16** @__ctype_b_loc() #7
  %33 = load i16*, i16** %call, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %33, i64 %idxprom
  %34 = load i16, i16* %arrayidx31, align 2
  %conv32 = zext i16 %34 to i32
  %and = and i32 %conv32, 4096
  %tobool33 = icmp ne i32 %and, 0
  br i1 %tobool33, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %sw.bb.28
  store i32 16, i32* %base, align 4
  %35 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %35, i64 2
  store i8* %add.ptr, i8** %start, align 8
  %36 = load i32, i32* %length, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %length, align 4
  %37 = load i8*, i8** %s, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %37, i64 3
  %38 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %38 to i32
  %idxprom37 = sext i32 %conv36 to i64
  %call38 = call i16** @__ctype_b_loc() #7
  %39 = load i16*, i16** %call38, align 8
  %arrayidx39 = getelementptr inbounds i16, i16* %39, i64 %idxprom37
  %40 = load i16, i16* %arrayidx39, align 2
  %conv40 = zext i16 %40 to i32
  %and41 = and i32 %conv40, 4096
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.then.34
  %41 = load i32, i32* %length, align 4
  %inc44 = add nsw i32 %41, 1
  store i32 %inc44, i32* %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.then.34
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %sw.bb.28
  %42 = load i32, i32* %length, align 4
  %add = add nsw i32 %42, 1
  %43 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %add to i64
  %add.ptr46 = getelementptr inbounds i8, i8* %43, i64 %idx.ext
  store i8* %add.ptr46, i8** %s, align 8
  br label %Lncont

sw.bb.47:                                         ; preds = %if.then
  store i32 0, i32* %length, align 4
  %44 = load i8*, i8** %s, align 8
  %arrayidx48 = getelementptr inbounds i8, i8* %44, i64 2
  %45 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %45 to i32
  %idxprom50 = sext i32 %conv49 to i64
  %call51 = call i16** @__ctype_b_loc() #7
  %46 = load i16*, i16** %call51, align 8
  %arrayidx52 = getelementptr inbounds i16, i16* %46, i64 %idxprom50
  %47 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %47 to i32
  %and54 = and i32 %conv53, 2048
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.104

if.then.56:                                       ; preds = %sw.bb.47
  store i32 10, i32* %base, align 4
  %48 = load i8*, i8** %s, align 8
  %add.ptr57 = getelementptr inbounds i8, i8* %48, i64 2
  store i8* %add.ptr57, i8** %start, align 8
  %49 = load i32, i32* %length, align 4
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %length, align 4
  %50 = load i8*, i8** %s, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %50, i64 3
  %51 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %51 to i32
  %idxprom61 = sext i32 %conv60 to i64
  %call62 = call i16** @__ctype_b_loc() #7
  %52 = load i16*, i16** %call62, align 8
  %arrayidx63 = getelementptr inbounds i16, i16* %52, i64 %idxprom61
  %53 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %53 to i32
  %and65 = and i32 %conv64, 2048
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.103

if.then.67:                                       ; preds = %if.then.56
  %54 = load i32, i32* %length, align 4
  %inc68 = add nsw i32 %54, 1
  store i32 %inc68, i32* %length, align 4
  %55 = load i8*, i8** %s, align 8
  %arrayidx69 = getelementptr inbounds i8, i8* %55, i64 4
  %56 = load i8, i8* %arrayidx69, align 1
  %conv70 = sext i8 %56 to i32
  %idxprom71 = sext i32 %conv70 to i64
  %call72 = call i16** @__ctype_b_loc() #7
  %57 = load i16*, i16** %call72, align 8
  %arrayidx73 = getelementptr inbounds i16, i16* %57, i64 %idxprom71
  %58 = load i16, i16* %arrayidx73, align 2
  %conv74 = zext i16 %58 to i32
  %and75 = and i32 %conv74, 2048
  %tobool76 = icmp ne i32 %and75, 0
  br i1 %tobool76, label %land.lhs.true, label %if.end.102

land.lhs.true:                                    ; preds = %if.then.67
  %59 = load i8*, i8** %s, align 8
  %arrayidx77 = getelementptr inbounds i8, i8* %59, i64 2
  %60 = load i8, i8* %arrayidx77, align 1
  %conv78 = sext i8 %60 to i32
  %cmp79 = icmp slt i32 %conv78, 50
  br i1 %cmp79, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %61 = load i8*, i8** %s, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %61, i64 2
  %62 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %62 to i32
  %cmp83 = icmp eq i32 %conv82, 50
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.102

land.lhs.true.85:                                 ; preds = %lor.lhs.false
  %63 = load i8*, i8** %s, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %63, i64 3
  %64 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %64 to i32
  %cmp88 = icmp slt i32 %conv87, 53
  br i1 %cmp88, label %if.then.100, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %land.lhs.true.85
  %65 = load i8*, i8** %s, align 8
  %arrayidx91 = getelementptr inbounds i8, i8* %65, i64 3
  %66 = load i8, i8* %arrayidx91, align 1
  %conv92 = sext i8 %66 to i32
  %cmp93 = icmp eq i32 %conv92, 53
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.102

land.lhs.true.95:                                 ; preds = %lor.lhs.false.90
  %67 = load i8*, i8** %s, align 8
  %arrayidx96 = getelementptr inbounds i8, i8* %67, i64 4
  %68 = load i8, i8* %arrayidx96, align 1
  %conv97 = sext i8 %68 to i32
  %cmp98 = icmp slt i32 %conv97, 54
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %land.lhs.true.95, %land.lhs.true.85, %land.lhs.true
  %69 = load i32, i32* %length, align 4
  %inc101 = add nsw i32 %69, 1
  store i32 %inc101, i32* %length, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %land.lhs.true.95, %lor.lhs.false.90, %lor.lhs.false, %if.then.67
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.then.56
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %sw.bb.47
  %70 = load i32, i32* %length, align 4
  %add105 = add nsw i32 %70, 1
  %71 = load i8*, i8** %s, align 8
  %idx.ext106 = sext i32 %add105 to i64
  %add.ptr107 = getelementptr inbounds i8, i8* %71, i64 %idx.ext106
  store i8* %add.ptr107, i8** %s, align 8
  br label %Lncont

sw.bb.108:                                        ; preds = %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then, %if.then
  store i32 1, i32* %length, align 4
  store i32 8, i32* %base, align 4
  %72 = load i8*, i8** %s, align 8
  %add.ptr109 = getelementptr inbounds i8, i8* %72, i64 1
  store i8* %add.ptr109, i8** %start, align 8
  %73 = load i8*, i8** %s, align 8
  %arrayidx110 = getelementptr inbounds i8, i8* %73, i64 2
  %74 = load i8, i8* %arrayidx110, align 1
  %conv111 = sext i8 %74 to i32
  %idxprom112 = sext i32 %conv111 to i64
  %call113 = call i16** @__ctype_b_loc() #7
  %75 = load i16*, i16** %call113, align 8
  %arrayidx114 = getelementptr inbounds i16, i16* %75, i64 %idxprom112
  %76 = load i16, i16* %arrayidx114, align 2
  %conv115 = zext i16 %76 to i32
  %and116 = and i32 %conv115, 2048
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %land.lhs.true.118, label %if.end.151

land.lhs.true.118:                                ; preds = %sw.bb.108
  %77 = load i8*, i8** %s, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %77, i64 2
  %78 = load i8, i8* %arrayidx119, align 1
  %conv120 = sext i8 %78 to i32
  %cmp121 = icmp ne i32 %conv120, 56
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.151

land.lhs.true.123:                                ; preds = %land.lhs.true.118
  %79 = load i8*, i8** %s, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %79, i64 2
  %80 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %80 to i32
  %cmp126 = icmp ne i32 %conv125, 57
  br i1 %cmp126, label %if.then.128, label %if.end.151

if.then.128:                                      ; preds = %land.lhs.true.123
  %81 = load i32, i32* %length, align 4
  %inc129 = add nsw i32 %81, 1
  store i32 %inc129, i32* %length, align 4
  %82 = load i8*, i8** %s, align 8
  %arrayidx130 = getelementptr inbounds i8, i8* %82, i64 3
  %83 = load i8, i8* %arrayidx130, align 1
  %conv131 = sext i8 %83 to i32
  %idxprom132 = sext i32 %conv131 to i64
  %call133 = call i16** @__ctype_b_loc() #7
  %84 = load i16*, i16** %call133, align 8
  %arrayidx134 = getelementptr inbounds i16, i16* %84, i64 %idxprom132
  %85 = load i16, i16* %arrayidx134, align 2
  %conv135 = zext i16 %85 to i32
  %and136 = and i32 %conv135, 2048
  %tobool137 = icmp ne i32 %and136, 0
  br i1 %tobool137, label %land.lhs.true.138, label %if.end.150

land.lhs.true.138:                                ; preds = %if.then.128
  %86 = load i8*, i8** %s, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %86, i64 3
  %87 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %87 to i32
  %cmp141 = icmp ne i32 %conv140, 56
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %land.lhs.true.138
  %88 = load i8*, i8** %s, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %89 to i32
  %cmp146 = icmp ne i32 %conv145, 57
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %land.lhs.true.143
  %90 = load i32, i32* %length, align 4
  %inc149 = add nsw i32 %90, 1
  store i32 %inc149, i32* %length, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %land.lhs.true.143, %land.lhs.true.138, %if.then.128
  br label %if.end.151

if.end.151:                                       ; preds = %if.end.150, %land.lhs.true.123, %land.lhs.true.118, %sw.bb.108
  %91 = load i32, i32* %length, align 4
  %92 = load i8*, i8** %s, align 8
  %idx.ext152 = sext i32 %91 to i64
  %add.ptr153 = getelementptr inbounds i8, i8* %92, i64 %idx.ext152
  store i8* %add.ptr153, i8** %s, align 8
  br label %Lncont

Lncont:                                           ; preds = %if.end.151, %if.end.104, %if.end.45
  %93 = load i32, i32* %length, align 4
  %cmp154 = icmp sgt i32 %93, 0
  br i1 %cmp154, label %if.then.156, label %if.else.171

if.then.156:                                      ; preds = %Lncont
  %94 = load i32, i32* %length, align 4
  %idxprom157 = sext i32 %94 to i64
  %95 = load i8*, i8** %start, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %95, i64 %idxprom157
  %96 = load i8, i8* %arrayidx158, align 1
  store i8 %96, i8* %saved_c, align 1
  %97 = load i32, i32* %length, align 4
  %idxprom159 = sext i32 %97 to i64
  %98 = load i8*, i8** %start, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %98, i64 %idxprom159
  store i8 0, i8* %arrayidx160, align 1
  %99 = load i8*, i8** %start, align 8
  %100 = load i32, i32* %base, align 4
  %call161 = call i64 @strtol(i8* %99, i8** null, i32 %100) #3
  %conv162 = trunc i64 %call161 to i8
  %101 = load i8*, i8** %ss, align 8
  store i8 %conv162, i8* %101, align 1
  %102 = load i8, i8* %saved_c, align 1
  %103 = load i32, i32* %length, align 4
  %idxprom163 = sext i32 %103 to i64
  %104 = load i8*, i8** %start, align 8
  %arrayidx164 = getelementptr inbounds i8, i8* %104, i64 %idxprom163
  store i8 %102, i8* %arrayidx164, align 1
  %105 = load i8*, i8** %s, align 8
  %106 = load i8, i8* %105, align 1
  %conv165 = sext i8 %106 to i32
  %cmp166 = icmp sgt i32 %conv165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %if.then.156
  br label %sw.epilog

if.end.169:                                       ; preds = %if.then.156
  %107 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string170 = getelementptr inbounds %struct.Term, %struct.Term* %107, i32 0, i32 5
  %108 = load i8*, i8** %string170, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.46, i32 0, i32 0), i8* %108)
  br label %if.end.172

if.else.171:                                      ; preds = %Lncont
  br label %next

if.end.172:                                       ; preds = %if.end.169
  br label %Ldefault

Ldefault:                                         ; preds = %if.end.172, %if.else.27, %if.else
  br label %sw.default

sw.default:                                       ; preds = %if.then, %Ldefault
  %109 = load i8*, i8** %s, align 8
  %110 = load i8, i8* %109, align 1
  %111 = load i8*, i8** %ss, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %incdec.ptr173, i8** %ss, align 8
  store i8 %110, i8* %111, align 1
  %112 = load i8*, i8** %s, align 8
  %arrayidx174 = getelementptr inbounds i8, i8* %112, i64 1
  %113 = load i8, i8* %arrayidx174, align 1
  %114 = load i8*, i8** %ss, align 8
  store i8 %113, i8* %114, align 1
  %115 = load i8*, i8** %s, align 8
  %incdec.ptr175 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr175, i8** %s, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.168, %if.then.25, %if.then.19, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  br label %if.end.177

if.else.176:                                      ; preds = %for.body
  %116 = load i8*, i8** %s, align 8
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** %ss, align 8
  store i8 %117, i8* %118, align 1
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %sw.epilog
  %119 = load i8*, i8** %ss, align 8
  %incdec.ptr178 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr178, i8** %ss, align 8
  br label %next

next:                                             ; preds = %if.end.177, %if.else.171
  br label %for.inc

for.inc:                                          ; preds = %next
  %120 = load i8*, i8** %s, align 8
  %incdec.ptr179 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr179, i8** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %121 = load i8*, i8** %ss, align 8
  store i8 0, i8* %121, align 1
  %122 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string180 = getelementptr inbounds %struct.Term, %struct.Term* %122, i32 0, i32 5
  %123 = load i8*, i8** %string180, align 8
  %call181 = call i64 @strlen(i8* %123) #6
  %conv182 = trunc i64 %call181 to i32
  %124 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %124, i32 0, i32 6
  store i32 %conv182, i32* %string_len, align 4
  %125 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string_len183 = getelementptr inbounds %struct.Term, %struct.Term* %125, i32 0, i32 6
  %126 = load i32, i32* %string_len183, align 4
  %tobool184 = icmp ne i32 %126, 0
  br i1 %tobool184, label %if.end.187, label %if.then.185

if.then.185:                                      ; preds = %for.end
  %127 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string186 = getelementptr inbounds %struct.Term, %struct.Term* %127, i32 0, i32 5
  %128 = load i8*, i8** %string186, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0), i8* %128)
  br label %if.end.187

if.end.187:                                       ; preds = %sw.bb.15, %if.then.185, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Elem* @new_ident(i8* %s, i8* %e, %struct.Rule* %r) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %x = alloca %struct.Elem*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call %struct.Elem* @new_elem()
  store %struct.Elem* %call, %struct.Elem** %x, align 8
  %0 = load %struct.Elem*, %struct.Elem** %x, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 0
  store i32 2, i32* %kind, align 4
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %e.addr, align 8
  %call1 = call i8* @dup_str(i8* %1, i8* %2)
  %3 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e2 = getelementptr inbounds %struct.Elem, %struct.Elem* %3, i32 0, i32 3
  %unresolved = bitcast %union.anon* %e2 to %struct.Unresolved*
  %string = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved, i32 0, i32 0
  store i8* %call1, i8** %string, align 8
  %4 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e3 = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 3
  %unresolved4 = bitcast %union.anon* %e3 to %struct.Unresolved*
  %string5 = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved4, i32 0, i32 0
  %5 = load i8*, i8** %string5, align 8
  %call6 = call i64 @strlen(i8* %5) #6
  %conv = trunc i64 %call6 to i32
  %6 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e7 = getelementptr inbounds %struct.Elem, %struct.Elem* %6, i32 0, i32 3
  %unresolved8 = bitcast %union.anon* %e7 to %struct.Unresolved*
  %len = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved8, i32 0, i32 1
  store i32 %conv, i32* %len, align 4
  %7 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %8 = load %struct.Elem*, %struct.Elem** %x, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %8, i32 0, i32 2
  store %struct.Rule* %7, %struct.Rule** %rule, align 8
  %9 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %tobool = icmp ne %struct.Rule* %9, null
  br i1 %tobool, label %if.then, label %if.end.51

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %10 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %10, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %11 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool9 = icmp ne %struct.Elem** %11, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %do.body
  %12 = load %struct.Elem*, %struct.Elem** %x, align 8
  %13 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems11 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems11, i32 0, i32 0
  %14 = load i32, i32* %n, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems12 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %e13 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e13, i32 0, i32 0
  %16 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems14 = getelementptr inbounds %struct.Rule, %struct.Rule* %16, i32 0, i32 6
  %v15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems14, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v15, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %12, %struct.Elem** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %17 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems16 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 6
  %v17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems16, i32 0, i32 2
  %18 = load %struct.Elem**, %struct.Elem*** %v17, align 8
  %19 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems18 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %e19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems18, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e19, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %18, %arraydecay20
  br i1 %cmp, label %if.then.22, label %if.else.35

if.then.22:                                       ; preds = %if.else
  %20 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems23 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 6
  %n24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems23, i32 0, i32 0
  %21 = load i32, i32* %n24, align 4
  %cmp25 = icmp ult i32 %21, 3
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then.22
  %22 = load %struct.Elem*, %struct.Elem** %x, align 8
  %23 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems28 = getelementptr inbounds %struct.Rule, %struct.Rule* %23, i32 0, i32 6
  %n29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems28, i32 0, i32 0
  %24 = load i32, i32* %n29, align 4
  %inc30 = add i32 %24, 1
  store i32 %inc30, i32* %n29, align 4
  %idxprom31 = zext i32 %24 to i64
  %25 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems32 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %v33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems32, i32 0, i32 2
  %26 = load %struct.Elem**, %struct.Elem*** %v33, align 8
  %arrayidx34 = getelementptr inbounds %struct.Elem*, %struct.Elem** %26, i64 %idxprom31
  store %struct.Elem* %22, %struct.Elem** %arrayidx34, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.22
  br label %if.end.48

if.else.35:                                       ; preds = %if.else
  %27 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems36 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 6
  %n37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems36, i32 0, i32 0
  %28 = load i32, i32* %n37, align 4
  %and = and i32 %28, 7
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.else.35
  %29 = load %struct.Elem*, %struct.Elem** %x, align 8
  %30 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems40 = getelementptr inbounds %struct.Rule, %struct.Rule* %30, i32 0, i32 6
  %n41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems40, i32 0, i32 0
  %31 = load i32, i32* %n41, align 4
  %inc42 = add i32 %31, 1
  store i32 %inc42, i32* %n41, align 4
  %idxprom43 = zext i32 %31 to i64
  %32 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems44 = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 6
  %v45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems44, i32 0, i32 2
  %33 = load %struct.Elem**, %struct.Elem*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Elem*, %struct.Elem** %33, i64 %idxprom43
  store %struct.Elem* %29, %struct.Elem** %arrayidx46, align 8
  br label %do.end

if.end.47:                                        ; preds = %if.else.35
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %34 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems50 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 6
  %35 = bitcast %struct.anon.0* %elems50 to i8*
  %36 = load %struct.Elem*, %struct.Elem** %x, align 8
  %37 = bitcast %struct.Elem* %36 to i8*
  call void @vec_add_internal(i8* %35, i8* %37)
  br label %do.end

do.end:                                           ; preds = %if.end.49, %if.then.39, %if.then.27, %if.then.10
  br label %if.end.51

if.end.51:                                        ; preds = %do.end, %entry
  %38 = load %struct.Elem*, %struct.Elem** %x, align 8
  ret %struct.Elem* %38
}

declare i8* @dup_str(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define void @new_token(%struct.Grammar* %g, i8* %s, i8* %e) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %t = alloca %struct.Term*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  %call = call %struct.Term* @new_term()
  store %struct.Term* %call, %struct.Term** %t, align 8
  %0 = load i8*, i8** %e.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %0 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %add = add nsw i64 %sub.ptr.sub, 1
  %call1 = call noalias i8* @malloc(i64 %add) #3
  %2 = load %struct.Term*, %struct.Term** %t, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %2, i32 0, i32 5
  store i8* %call1, i8** %string, align 8
  %3 = load %struct.Term*, %struct.Term** %t, align 8
  %string2 = getelementptr inbounds %struct.Term, %struct.Term* %3, i32 0, i32 5
  %4 = load i8*, i8** %string2, align 8
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8*, i8** %e.addr, align 8
  %7 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast3 = ptrtoint i8* %6 to i64
  %sub.ptr.rhs.cast4 = ptrtoint i8* %7 to i64
  %sub.ptr.sub5 = sub i64 %sub.ptr.lhs.cast3, %sub.ptr.rhs.cast4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 %sub.ptr.sub5, i32 1, i1 false)
  %8 = load i8*, i8** %e.addr, align 8
  %9 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast6 = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast7 = ptrtoint i8* %9 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %10 = load %struct.Term*, %struct.Term** %t, align 8
  %string9 = getelementptr inbounds %struct.Term, %struct.Term* %10, i32 0, i32 5
  %11 = load i8*, i8** %string9, align 8
  %arrayidx = getelementptr inbounds i8, i8* %11, i64 %sub.ptr.sub8
  store i8 0, i8* %arrayidx, align 1
  %12 = load i8*, i8** %e.addr, align 8
  %13 = load i8*, i8** %s.addr, align 8
  %sub.ptr.lhs.cast10 = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast11 = ptrtoint i8* %13 to i64
  %sub.ptr.sub12 = sub i64 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast11
  %conv = trunc i64 %sub.ptr.sub12 to i32
  %14 = load %struct.Term*, %struct.Term** %t, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %14, i32 0, i32 6
  store i32 %conv, i32* %string_len, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 2
  %16 = load %struct.Term**, %struct.Term*** %v, align 8
  %tobool = icmp ne %struct.Term** %16, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %17 = load %struct.Term*, %struct.Term** %t, align 8
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals13 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals13, i32 0, i32 0
  %19 = load i32, i32* %n, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals14 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 2
  %e15 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e15, i32 0, i32 0
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals16, i32 0, i32 2
  store %struct.Term** %arraydecay, %struct.Term*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Term*, %struct.Term** %arraydecay, i64 %idxprom
  store %struct.Term* %17, %struct.Term** %arrayidx18, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 2
  %v20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals19, i32 0, i32 2
  %23 = load %struct.Term**, %struct.Term*** %v20, align 8
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals21 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 2
  %e22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals21, i32 0, i32 3
  %arraydecay23 = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e22, i32 0, i32 0
  %cmp = icmp eq %struct.Term** %23, %arraydecay23
  br i1 %cmp, label %if.then.25, label %if.else.38

if.then.25:                                       ; preds = %if.else
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals26 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 2
  %n27 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals26, i32 0, i32 0
  %26 = load i32, i32* %n27, align 4
  %cmp28 = icmp ult i32 %26, 3
  br i1 %cmp28, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.25
  %27 = load %struct.Term*, %struct.Term** %t, align 8
  %28 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals31 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals31, i32 0, i32 0
  %29 = load i32, i32* %n32, align 4
  %inc33 = add i32 %29, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %29 to i64
  %30 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %30, i32 0, i32 2
  %v36 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals35, i32 0, i32 2
  %31 = load %struct.Term**, %struct.Term*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Term*, %struct.Term** %31, i64 %idxprom34
  store %struct.Term* %27, %struct.Term** %arrayidx37, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.25
  br label %if.end.51

if.else.38:                                       ; preds = %if.else
  %32 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals39 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %32, i32 0, i32 2
  %n40 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals39, i32 0, i32 0
  %33 = load i32, i32* %n40, align 4
  %and = and i32 %33, 7
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then.42, label %if.end.50

if.then.42:                                       ; preds = %if.else.38
  %34 = load %struct.Term*, %struct.Term** %t, align 8
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals43 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 2
  %n44 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals43, i32 0, i32 0
  %36 = load i32, i32* %n44, align 4
  %inc45 = add i32 %36, 1
  store i32 %inc45, i32* %n44, align 4
  %idxprom46 = zext i32 %36 to i64
  %37 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals47 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %37, i32 0, i32 2
  %v48 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals47, i32 0, i32 2
  %38 = load %struct.Term**, %struct.Term*** %v48, align 8
  %arrayidx49 = getelementptr inbounds %struct.Term*, %struct.Term** %38, i64 %idxprom46
  store %struct.Term* %34, %struct.Term** %arrayidx49, align 8
  br label %do.end

if.end.50:                                        ; preds = %if.else.38
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51
  %39 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals53 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %39, i32 0, i32 2
  %40 = bitcast %struct.anon.5* %terminals53 to i8*
  %41 = load %struct.Term*, %struct.Term** %t, align 8
  %42 = bitcast %struct.Term* %41 to i8*
  call void @vec_add_internal(i8* %40, i8* %42)
  br label %do.end

do.end:                                           ; preds = %if.end.52, %if.then.42, %if.then.30, %if.then
  %43 = load %struct.Term*, %struct.Term** %t, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %43, i32 0, i32 0
  store i32 3, i32* %kind, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define %struct.Elem* @new_code(%struct.Grammar* %g, i8* %s, i8* %e, %struct.Rule* %r) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %x = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %2 = load i8*, i8** %e.addr, align 8
  %3 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %call = call %struct.Elem* @new_term_string(%struct.Grammar* %0, i8* %1, i8* %2, %struct.Rule* %3)
  store %struct.Elem* %call, %struct.Elem** %x, align 8
  %4 = load %struct.Elem*, %struct.Elem** %x, align 8
  %e1 = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 3
  %term = bitcast %union.anon* %e1 to %struct.Term**
  %5 = load %struct.Term*, %struct.Term** %term, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %5, i32 0, i32 0
  store i32 2, i32* %kind, align 4
  %6 = load %struct.Elem*, %struct.Elem** %x, align 8
  ret %struct.Elem* %6
}

; Function Attrs: nounwind uwtable
define %struct.Elem* @dup_elem(%struct.Elem* %e, %struct.Rule* %r) #0 {
entry:
  %e.addr = alloca %struct.Elem*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %ee = alloca %struct.Elem*, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call noalias i8* @malloc(i64 32) #3
  %0 = bitcast i8* %call to %struct.Elem*
  store %struct.Elem* %0, %struct.Elem** %ee, align 8
  %1 = load %struct.Elem*, %struct.Elem** %ee, align 8
  %2 = bitcast %struct.Elem* %1 to i8*
  %3 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %4 = bitcast %struct.Elem* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %4, i64 32, i32 8, i1 false)
  %5 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %6 = load %struct.Elem*, %struct.Elem** %ee, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %6, i32 0, i32 2
  store %struct.Rule* %5, %struct.Rule** %rule, align 8
  %7 = load %struct.Elem*, %struct.Elem** %ee, align 8
  ret %struct.Elem* %7
}

; Function Attrs: nounwind uwtable
define void @add_global_code(%struct.Grammar* %g, i8* %start, i8* %end, i32 %line) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 5
  %1 = load %struct.Code*, %struct.Code** %code, align 8
  %tobool = icmp ne %struct.Code* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 64) #3
  %2 = bitcast i8* %call to %struct.Code*
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 5
  store %struct.Code* %2, %struct.Code** %code1, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 6
  %5 = load i32, i32* %ncode, align 4
  %add = add nsw i32 %5, 1
  %and = and i32 %add, 4
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 5
  %7 = load %struct.Code*, %struct.Code** %code4, align 8
  %8 = bitcast %struct.Code* %7 to i8*
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 6
  %10 = load i32, i32* %ncode5, align 4
  %add6 = add nsw i32 %10, 4
  %conv = sext i32 %add6 to i64
  %mul = mul i64 16, %conv
  %call7 = call i8* @realloc(i8* %8, i64 %mul) #3
  %11 = bitcast i8* %call7 to %struct.Code*
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 5
  store %struct.Code* %11, %struct.Code** %code8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %13 = load i8*, i8** %start.addr, align 8
  %14 = load i8*, i8** %end.addr, align 8
  %call10 = call i8* @dup_str(i8* %13, i8* %14)
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode11 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 6
  %16 = load i32, i32* %ncode11, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 5
  %18 = load %struct.Code*, %struct.Code** %code12, align 8
  %arrayidx = getelementptr inbounds %struct.Code, %struct.Code* %18, i64 %idxprom
  %code13 = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx, i32 0, i32 0
  store i8* %call10, i8** %code13, align 8
  %19 = load i32, i32* %line.addr, align 4
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode14 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 6
  %21 = load i32, i32* %ncode14, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %code16 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 5
  %23 = load %struct.Code*, %struct.Code** %code16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Code, %struct.Code* %23, i64 %idxprom15
  %line18 = getelementptr inbounds %struct.Code, %struct.Code* %arrayidx17, i32 0, i32 1
  store i32 %19, i32* %line18, align 4
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %ncode19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 6
  %25 = load i32, i32* %ncode19, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %ncode19, align 4
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @new_declaration(%struct.Grammar* %g, %struct.Elem* %e, i32 %kind) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %e.addr = alloca %struct.Elem*, align 8
  %kind.addr = alloca i32, align 4
  %d = alloca %struct.Declaration*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Elem* %e, %struct.Elem** %e.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  %call = call noalias i8* @malloc(i64 16) #3
  %0 = bitcast i8* %call to %struct.Declaration*
  store %struct.Declaration* %0, %struct.Declaration** %d, align 8
  %1 = load %struct.Elem*, %struct.Elem** %e.addr, align 8
  %2 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %elem = getelementptr inbounds %struct.Declaration, %struct.Declaration* %2, i32 0, i32 0
  store %struct.Elem* %1, %struct.Elem** %elem, align 8
  %3 = load i32, i32* %kind.addr, align 4
  %4 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %kind1 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %4, i32 0, i32 1
  store i32 %3, i32* %kind1, align 4
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 7
  %n = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations, i32 0, i32 0
  %6 = load i32, i32* %n, align 4
  %7 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %index = getelementptr inbounds %struct.Declaration, %struct.Declaration* %7, i32 0, i32 2
  store i32 %6, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations2 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 7
  %v = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations2, i32 0, i32 2
  %9 = load %struct.Declaration**, %struct.Declaration*** %v, align 8
  %tobool = icmp ne %struct.Declaration** %9, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %10 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 7
  %n4 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations3, i32 0, i32 0
  %12 = load i32, i32* %n4, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %n4, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 7
  %e6 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Declaration*], [3 x %struct.Declaration*]* %e6, i32 0, i32 0
  %14 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 7
  %v8 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations7, i32 0, i32 2
  store %struct.Declaration** %arraydecay, %struct.Declaration*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %arraydecay, i64 %idxprom
  store %struct.Declaration* %10, %struct.Declaration** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations9 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 7
  %v10 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations9, i32 0, i32 2
  %16 = load %struct.Declaration**, %struct.Declaration*** %v10, align 8
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations11 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 7
  %e12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.Declaration*], [3 x %struct.Declaration*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.Declaration** %16, %arraydecay13
  br i1 %cmp, label %if.then.14, label %if.else.26

if.then.14:                                       ; preds = %if.else
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 7
  %n16 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations15, i32 0, i32 0
  %19 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %19, 3
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.14
  %20 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 7
  %n20 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations19, i32 0, i32 0
  %22 = load i32, i32* %n20, align 4
  %inc21 = add i32 %22, 1
  store i32 %inc21, i32* %n20, align 4
  %idxprom22 = zext i32 %22 to i64
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 7
  %v24 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations23, i32 0, i32 2
  %24 = load %struct.Declaration**, %struct.Declaration*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %24, i64 %idxprom22
  store %struct.Declaration* %20, %struct.Declaration** %arrayidx25, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.14
  br label %if.end.39

if.else.26:                                       ; preds = %if.else
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations27 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 7
  %n28 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations27, i32 0, i32 0
  %26 = load i32, i32* %n28, align 4
  %and = and i32 %26, 7
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.else.26
  %27 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %28 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations31 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 7
  %n32 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations31, i32 0, i32 0
  %29 = load i32, i32* %n32, align 4
  %inc33 = add i32 %29, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %29 to i64
  %30 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %30, i32 0, i32 7
  %v36 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations35, i32 0, i32 2
  %31 = load %struct.Declaration**, %struct.Declaration*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %31, i64 %idxprom34
  store %struct.Declaration* %27, %struct.Declaration** %arrayidx37, align 8
  br label %do.end

if.end.38:                                        ; preds = %if.else.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  %32 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations41 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %32, i32 0, i32 7
  %33 = bitcast %struct.anon.7* %declarations41 to i8*
  %34 = load %struct.Declaration*, %struct.Declaration** %d, align 8
  %35 = bitcast %struct.Declaration* %34 to i8*
  call void @vec_add_internal(i8* %33, i8* %35)
  br label %do.end

do.end:                                           ; preds = %if.end.40, %if.then.30, %if.then.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_declaration(%struct.Grammar* %g, i8* %start, i8* %end, i32 %kind, i32 %line) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %start.addr, align 8
  %1 = load i8*, i8** %end.addr, align 8
  %cmp = icmp eq i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %kind.addr, align 4
  switch i32 %2, label %sw.default [
    i32 3, label %sw.bb
    i32 4, label %sw.bb.1
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
    i32 0, label %sw.bb.5
    i32 7, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.then
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %set_op_priority_from_rule = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 10
  store i32 1, i32* %set_op_priority_from_rule, align 4
  br label %sw.epilog.11

sw.bb.1:                                          ; preds = %if.then
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states_for_all_nterms = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 13
  store i32 1, i32* %states_for_all_nterms, align 4
  br label %sw.epilog.11

sw.bb.2:                                          ; preds = %if.then
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %longest_match = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 15
  store i32 1, i32* %longest_match, align 4
  br label %sw.epilog.11

sw.bb.3:                                          ; preds = %if.then
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %longest_match4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 15
  store i32 0, i32* %longest_match4, align 4
  br label %sw.epilog.11

sw.bb.5:                                          ; preds = %if.then
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %tokenizer = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 14
  store i32 1, i32* %tokenizer, align 4
  br label %sw.epilog.11

sw.bb.6:                                          ; preds = %if.then
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %save_parse_tree = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 16
  store i32 1, i32* %save_parse_tree, align 4
  br label %sw.epilog.11

sw.default:                                       ; preds = %if.then
  %9 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %9)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  %10 = load i32, i32* %kind.addr, align 4
  switch i32 %10, label %sw.default.9 [
    i32 6, label %sw.bb.7
    i32 3, label %sw.bb.8
  ]

sw.bb.7:                                          ; preds = %if.end
  %11 = load i8*, i8** %start.addr, align 8
  %12 = load i8*, i8** %end.addr, align 8
  %call = call i8* @dup_str(i8* %11, i8* %12)
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %default_white_space = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 9
  store i8* %call, i8** %default_white_space, align 8
  br label %sw.epilog.11

sw.bb.8:                                          ; preds = %if.end
  %14 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0), i32 %14)
  br label %sw.default.9

sw.default.9:                                     ; preds = %if.end, %sw.bb.8
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %16 = load i8*, i8** %start.addr, align 8
  %17 = load i8*, i8** %end.addr, align 8
  %call10 = call %struct.Elem* @new_ident(i8* %16, i8* %17, %struct.Rule* null)
  %18 = load i32, i32* %kind.addr, align 4
  call void @new_declaration(%struct.Grammar* %15, %struct.Elem* %call10, i32 %18)
  br label %sw.epilog.11

sw.epilog.11:                                     ; preds = %sw.bb, %sw.bb.1, %sw.bb.2, %sw.bb.3, %sw.bb.5, %sw.bb.6, %sw.bb.7, %sw.default.9
  ret void
}

declare void @d_fail(i8*, ...) #4

; Function Attrs: nounwind uwtable
define %struct.D_Pass* @find_pass(%struct.Grammar* %g, i8* %start, i8* %end) #0 {
entry:
  %retval = alloca %struct.D_Pass*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %start.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %start.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %idxprom = sext i32 %conv1 to i64
  %call = call i16** @__ctype_b_loc() #7
  %4 = load i16*, i16** %call, align 8
  %arrayidx = getelementptr inbounds i16, i16* %4, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv2 = zext i16 %5 to i32
  %and = and i32 %conv2, 8192
  %tobool3 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i8*, i8** %start.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %start.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i8*, i8** %end.addr, align 8
  %9 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %8 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv4 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv4, i32* %l, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 8
  %n = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes, i32 0, i32 0
  %12 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %l, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 8
  %v = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes7, i32 0, i32 2
  %16 = load %struct.D_Pass**, %struct.D_Pass*** %v, align 8
  %arrayidx8 = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %16, i64 %idxprom6
  %17 = load %struct.D_Pass*, %struct.D_Pass** %arrayidx8, align 8
  %name_len = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %17, i32 0, i32 1
  %18 = load i32, i32* %name_len, align 4
  %cmp9 = icmp eq i32 %13, %18
  br i1 %cmp9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 8
  %v13 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes12, i32 0, i32 2
  %21 = load %struct.D_Pass**, %struct.D_Pass*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %21, i64 %idxprom11
  %22 = load %struct.D_Pass*, %struct.D_Pass** %arrayidx14, align 8
  %name = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %22, i32 0, i32 0
  %23 = load i8*, i8** %name, align 8
  %24 = load i8*, i8** %start.addr, align 8
  %25 = load i32, i32* %l, align 4
  %conv15 = sext i32 %25 to i64
  %call16 = call i32 @strncmp(i8* %23, i8* %24, i64 %conv15) #6
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 8
  %v20 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes19, i32 0, i32 2
  %28 = load %struct.D_Pass**, %struct.D_Pass*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %28, i64 %idxprom18
  %29 = load %struct.D_Pass*, %struct.D_Pass** %arrayidx21, align 8
  store %struct.D_Pass* %29, %struct.D_Pass** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.D_Pass* null, %struct.D_Pass** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %31 = load %struct.D_Pass*, %struct.D_Pass** %retval
  ret %struct.D_Pass* %31
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @add_pass(%struct.Grammar* %g, i8* %start, i8* %end, i32 %kind, i32 %line) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %kind.addr = alloca i32, align 4
  %line.addr = alloca i32, align 4
  %p = alloca %struct.D_Pass*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end, i8** %end.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = load i8*, i8** %end.addr, align 8
  %call = call %struct.D_Pass* @find_pass(%struct.Grammar* %0, i8* %1, i8* %2)
  %tobool = icmp ne %struct.D_Pass* %call, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %start.addr, align 8
  %4 = load i8*, i8** %end.addr, align 8
  %call1 = call i8* @dup_str(i8* %3, i8* %4)
  %5 = load i32, i32* %line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* %call1, i32 %5)
  br label %if.end.48

if.else:                                          ; preds = %entry
  %call2 = call noalias i8* @malloc(i64 24) #3
  %6 = bitcast i8* %call2 to %struct.D_Pass*
  store %struct.D_Pass* %6, %struct.D_Pass** %p, align 8
  %7 = load i8*, i8** %start.addr, align 8
  %8 = load i8*, i8** %end.addr, align 8
  %call3 = call i8* @dup_str(i8* %7, i8* %8)
  %9 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %name = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %9, i32 0, i32 0
  store i8* %call3, i8** %name, align 8
  %10 = load i8*, i8** %end.addr, align 8
  %11 = load i8*, i8** %start.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %12 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %name_len = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %12, i32 0, i32 1
  store i32 %conv, i32* %name_len, align 4
  %13 = load i32, i32* %kind.addr, align 4
  %14 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %kind4 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %14, i32 0, i32 2
  store i32 %13, i32* %kind4, align 4
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pass_index = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 28
  %16 = load i32, i32* %pass_index, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %pass_index, align 4
  %17 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %17, i32 0, i32 3
  store i32 %16, i32* %index, align 4
  br label %do.body

do.body:                                          ; preds = %if.else
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 8
  %v = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes, i32 0, i32 2
  %19 = load %struct.D_Pass**, %struct.D_Pass*** %v, align 8
  %tobool5 = icmp ne %struct.D_Pass** %19, null
  br i1 %tobool5, label %if.else.12, label %if.then.6

if.then.6:                                        ; preds = %do.body
  %20 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 8
  %n = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes7, i32 0, i32 0
  %22 = load i32, i32* %n, align 4
  %inc8 = add i32 %22, 1
  store i32 %inc8, i32* %n, align 4
  %idxprom = zext i32 %22 to i64
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes9 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 8
  %e = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes9, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.D_Pass*], [3 x %struct.D_Pass*]* %e, i32 0, i32 0
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes10 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 8
  %v11 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes10, i32 0, i32 2
  store %struct.D_Pass** %arraydecay, %struct.D_Pass*** %v11, align 8
  %arrayidx = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %arraydecay, i64 %idxprom
  store %struct.D_Pass* %20, %struct.D_Pass** %arrayidx, align 8
  br label %do.end

if.else.12:                                       ; preds = %do.body
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes13 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 8
  %v14 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes13, i32 0, i32 2
  %26 = load %struct.D_Pass**, %struct.D_Pass*** %v14, align 8
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 8
  %e16 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes15, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [3 x %struct.D_Pass*], [3 x %struct.D_Pass*]* %e16, i32 0, i32 0
  %cmp = icmp eq %struct.D_Pass** %26, %arraydecay17
  br i1 %cmp, label %if.then.19, label %if.else.32

if.then.19:                                       ; preds = %if.else.12
  %28 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes20 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 8
  %n21 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes20, i32 0, i32 0
  %29 = load i32, i32* %n21, align 4
  %cmp22 = icmp ult i32 %29, 3
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %if.then.19
  %30 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %31 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes25 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 8
  %n26 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes25, i32 0, i32 0
  %32 = load i32, i32* %n26, align 4
  %inc27 = add i32 %32, 1
  store i32 %inc27, i32* %n26, align 4
  %idxprom28 = zext i32 %32 to i64
  %33 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes29 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %33, i32 0, i32 8
  %v30 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes29, i32 0, i32 2
  %34 = load %struct.D_Pass**, %struct.D_Pass*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %34, i64 %idxprom28
  store %struct.D_Pass* %30, %struct.D_Pass** %arrayidx31, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.19
  br label %if.end.45

if.else.32:                                       ; preds = %if.else.12
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes33 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 8
  %n34 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes33, i32 0, i32 0
  %36 = load i32, i32* %n34, align 4
  %and = and i32 %36, 7
  %tobool35 = icmp ne i32 %and, 0
  br i1 %tobool35, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.else.32
  %37 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %38 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes37 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %38, i32 0, i32 8
  %n38 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes37, i32 0, i32 0
  %39 = load i32, i32* %n38, align 4
  %inc39 = add i32 %39, 1
  store i32 %inc39, i32* %n38, align 4
  %idxprom40 = zext i32 %39 to i64
  %40 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes41 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %40, i32 0, i32 8
  %v42 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %passes41, i32 0, i32 2
  %41 = load %struct.D_Pass**, %struct.D_Pass*** %v42, align 8
  %arrayidx43 = getelementptr inbounds %struct.D_Pass*, %struct.D_Pass** %41, i64 %idxprom40
  store %struct.D_Pass* %37, %struct.D_Pass** %arrayidx43, align 8
  br label %do.end

if.end.44:                                        ; preds = %if.else.32
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45
  %42 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %passes47 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %42, i32 0, i32 8
  %43 = bitcast %struct.anon.8* %passes47 to i8*
  %44 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %45 = bitcast %struct.D_Pass* %44 to i8*
  call void @vec_add_internal(i8* %43, i8* %45)
  br label %do.end

do.end:                                           ; preds = %if.end.46, %if.then.36, %if.then.24, %if.then.6
  br label %if.end.48

if.end.48:                                        ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_pass_code(%struct.Grammar* %g, %struct.Rule* %r, i8* %pass_start, i8* %pass_end, i8* %code_start, i8* %code_end, i32 %pass_line, i32 %code_line) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %pass_start.addr = alloca i8*, align 8
  %pass_end.addr = alloca i8*, align 8
  %code_start.addr = alloca i8*, align 8
  %code_end.addr = alloca i8*, align 8
  %pass_line.addr = alloca i32, align 4
  %code_line.addr = alloca i32, align 4
  %p = alloca %struct.D_Pass*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  store i8* %pass_start, i8** %pass_start.addr, align 8
  store i8* %pass_end, i8** %pass_end.addr, align 8
  store i8* %code_start, i8** %code_start.addr, align 8
  store i8* %code_end, i8** %code_end.addr, align 8
  store i32 %pass_line, i32* %pass_line.addr, align 4
  store i32 %code_line, i32* %code_line.addr, align 4
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load i8*, i8** %pass_start.addr, align 8
  %2 = load i8*, i8** %pass_end.addr, align 8
  %call = call %struct.D_Pass* @find_pass(%struct.Grammar* %0, i8* %1, i8* %2)
  store %struct.D_Pass* %call, %struct.D_Pass** %p, align 8
  %3 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %tobool = icmp ne %struct.D_Pass* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %pass_start.addr, align 8
  %5 = load i8*, i8** %pass_end.addr, align 8
  %call1 = call i8* @dup_str(i8* %4, i8* %5)
  %6 = load i32, i32* %pass_line.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %call1, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %7 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code = getelementptr inbounds %struct.Rule, %struct.Rule* %7, i32 0, i32 10
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code, i32 0, i32 0
  %8 = load i32, i32* %n, align 4
  %9 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %9, i32 0, i32 3
  %10 = load i32, i32* %index, align 4
  %cmp = icmp ule i32 %8, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %11 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code2 = getelementptr inbounds %struct.Rule, %struct.Rule* %11, i32 0, i32 10
  %v = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code2, i32 0, i32 2
  %12 = load %struct.Code**, %struct.Code*** %v, align 8
  %tobool3 = icmp ne %struct.Code** %12, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %13 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code5 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 10
  %n6 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code5, i32 0, i32 0
  %14 = load i32, i32* %n6, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %n6, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code7 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 10
  %e = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Code*], [3 x %struct.Code*]* %e, i32 0, i32 0
  %16 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code8 = getelementptr inbounds %struct.Rule, %struct.Rule* %16, i32 0, i32 10
  %v9 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code8, i32 0, i32 2
  store %struct.Code** %arraydecay, %struct.Code*** %v9, align 8
  %arrayidx = getelementptr inbounds %struct.Code*, %struct.Code** %arraydecay, i64 %idxprom
  store %struct.Code* null, %struct.Code** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %17 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code10 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 10
  %v11 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code10, i32 0, i32 2
  %18 = load %struct.Code**, %struct.Code*** %v11, align 8
  %19 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code12 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 10
  %e13 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code12, i32 0, i32 3
  %arraydecay14 = getelementptr inbounds [3 x %struct.Code*], [3 x %struct.Code*]* %e13, i32 0, i32 0
  %cmp15 = icmp eq %struct.Code** %18, %arraydecay14
  br i1 %cmp15, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %if.else
  %20 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code17 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 10
  %n18 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code17, i32 0, i32 0
  %21 = load i32, i32* %n18, align 4
  %cmp19 = icmp ult i32 %21, 3
  br i1 %cmp19, label %if.then.20, label %if.end.28

if.then.20:                                       ; preds = %if.then.16
  %22 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code21 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 10
  %n22 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code21, i32 0, i32 0
  %23 = load i32, i32* %n22, align 4
  %inc23 = add i32 %23, 1
  store i32 %inc23, i32* %n22, align 4
  %idxprom24 = zext i32 %23 to i64
  %24 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code25 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 10
  %v26 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code25, i32 0, i32 2
  %25 = load %struct.Code**, %struct.Code*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.Code*, %struct.Code** %25, i64 %idxprom24
  store %struct.Code* null, %struct.Code** %arrayidx27, align 8
  br label %do.end

if.end.28:                                        ; preds = %if.then.16
  br label %if.end.42

if.else.29:                                       ; preds = %if.else
  %26 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code30 = getelementptr inbounds %struct.Rule, %struct.Rule* %26, i32 0, i32 10
  %n31 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code30, i32 0, i32 0
  %27 = load i32, i32* %n31, align 4
  %and = and i32 %27, 7
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.41

if.then.33:                                       ; preds = %if.else.29
  %28 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code34 = getelementptr inbounds %struct.Rule, %struct.Rule* %28, i32 0, i32 10
  %n35 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code34, i32 0, i32 0
  %29 = load i32, i32* %n35, align 4
  %inc36 = add i32 %29, 1
  store i32 %inc36, i32* %n35, align 4
  %idxprom37 = zext i32 %29 to i64
  %30 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code38 = getelementptr inbounds %struct.Rule, %struct.Rule* %30, i32 0, i32 10
  %v39 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code38, i32 0, i32 2
  %31 = load %struct.Code**, %struct.Code*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Code*, %struct.Code** %31, i64 %idxprom37
  store %struct.Code* null, %struct.Code** %arrayidx40, align 8
  br label %do.end

if.end.41:                                        ; preds = %if.else.29
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.28
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42
  %32 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code44 = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 10
  %33 = bitcast %struct.anon.1* %pass_code44 to i8*
  call void @vec_add_internal(i8* %33, i8* null)
  br label %do.end

do.end:                                           ; preds = %if.end.43, %if.then.33, %if.then.20, %if.then.4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call45 = call noalias i8* @malloc(i64 16) #3
  %34 = bitcast i8* %call45 to %struct.Code*
  %35 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index46 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %35, i32 0, i32 3
  %36 = load i32, i32* %index46, align 4
  %idxprom47 = zext i32 %36 to i64
  %37 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code48 = getelementptr inbounds %struct.Rule, %struct.Rule* %37, i32 0, i32 10
  %v49 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code48, i32 0, i32 2
  %38 = load %struct.Code**, %struct.Code*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Code*, %struct.Code** %38, i64 %idxprom47
  store %struct.Code* %34, %struct.Code** %arrayidx50, align 8
  %39 = load i8*, i8** %code_start.addr, align 8
  %40 = load i8*, i8** %code_end.addr, align 8
  %call51 = call i8* @dup_str(i8* %39, i8* %40)
  %41 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index52 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %41, i32 0, i32 3
  %42 = load i32, i32* %index52, align 4
  %idxprom53 = zext i32 %42 to i64
  %43 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code54 = getelementptr inbounds %struct.Rule, %struct.Rule* %43, i32 0, i32 10
  %v55 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code54, i32 0, i32 2
  %44 = load %struct.Code**, %struct.Code*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.Code*, %struct.Code** %44, i64 %idxprom53
  %45 = load %struct.Code*, %struct.Code** %arrayidx56, align 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %45, i32 0, i32 0
  store i8* %call51, i8** %code, align 8
  %46 = load i32, i32* %code_line.addr, align 4
  %47 = load %struct.D_Pass*, %struct.D_Pass** %p, align 8
  %index57 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %47, i32 0, i32 3
  %48 = load i32, i32* %index57, align 4
  %idxprom58 = zext i32 %48 to i64
  %49 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %pass_code59 = getelementptr inbounds %struct.Rule, %struct.Rule* %49, i32 0, i32 10
  %v60 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %pass_code59, i32 0, i32 2
  %50 = load %struct.Code**, %struct.Code*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.Code*, %struct.Code** %50, i64 %idxprom58
  %51 = load %struct.Code*, %struct.Code** %arrayidx61, align 8
  %line = getelementptr inbounds %struct.Code, %struct.Code* %51, i32 0, i32 1
  store i32 %46, i32* %line, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Production* @new_internal_production(%struct.Grammar* %g, %struct.Production* %p) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %p.addr = alloca %struct.Production*, align 8
  %n = alloca i8*, align 8
  %name1 = alloca i8*, align 8
  %pp = alloca %struct.Production*, align 8
  %tp = alloca %struct.Production*, align 8
  %ttp = alloca %struct.Production*, align 8
  %i = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  %0 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %tobool = icmp ne %struct.Production* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %2, %cond.true ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %n, align 8
  %3 = load i8*, i8** %n, align 8
  %call = call i64 @strlen(i8* %3) #6
  %add = add i64 %call, 20
  %call2 = call noalias i8* @malloc(i64 %add) #3
  store i8* %call2, i8** %name1, align 8
  store %struct.Production* null, %struct.Production** %pp, align 8
  store %struct.Production* null, %struct.Production** %tp, align 8
  store i32 0, i32* %found, align 4
  %4 = load i8*, i8** %name1, align 8
  %5 = load i8*, i8** %n, align 8
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 1
  %n3 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %7 = load i32, i32* %n3, align 4
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* %5, i32 %7) #3
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %9 = load i8*, i8** %name1, align 8
  %call5 = call %struct.Production* @new_production(%struct.Grammar* %8, i8* %9)
  store %struct.Production* %call5, %struct.Production** %pp, align 8
  %10 = load %struct.Production*, %struct.Production** %pp, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.clear = and i8 %bf.load, -29
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %internal, align 4
  %11 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %tobool6 = icmp ne %struct.Production* %11, null
  br i1 %tobool6, label %cond.true.7, label %cond.false.10

cond.true.7:                                      ; preds = %cond.end
  %12 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex = getelementptr inbounds %struct.Production, %struct.Production* %12, i32 0, i32 4
  %bf.load8 = load i8, i8* %regex, align 4
  %bf.clear9 = and i8 %bf.load8, 1
  %bf.cast = zext i8 %bf.clear9 to i32
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.7
  %cond12 = phi i32 [ %bf.cast, %cond.true.7 ], [ 0, %cond.false.10 ]
  %13 = load %struct.Production*, %struct.Production** %pp, align 8
  %regex13 = getelementptr inbounds %struct.Production, %struct.Production* %13, i32 0, i32 4
  %14 = trunc i32 %cond12 to i8
  %bf.load14 = load i8, i8* %regex13, align 4
  %bf.value = and i8 %14, 1
  %bf.clear15 = and i8 %bf.load14, -2
  %bf.set16 = or i8 %bf.clear15, %bf.value
  store i8 %bf.set16, i8* %regex13, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %15 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %tobool17 = icmp ne %struct.Production* %15, null
  br i1 %tobool17, label %if.then, label %if.end.45

if.then:                                          ; preds = %cond.end.11
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions18 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 1
  %n19 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions18, i32 0, i32 0
  %18 = load i32, i32* %n19, align 4
  %cmp = icmp ult i32 %16, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %found, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions22 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions22, i32 0, i32 2
  %22 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %22, i64 %idxprom
  %23 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %23, %struct.Production** %ttp, align 8
  %24 = load %struct.Production*, %struct.Production** %tp, align 8
  %25 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %25 to i64
  %26 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions24 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %26, i32 0, i32 1
  %v25 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions24, i32 0, i32 2
  %27 = load %struct.Production**, %struct.Production*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Production*, %struct.Production** %27, i64 %idxprom23
  store %struct.Production* %24, %struct.Production** %arrayidx26, align 8
  %28 = load %struct.Production*, %struct.Production** %ttp, align 8
  store %struct.Production* %28, %struct.Production** %tp, align 8
  br label %if.end.43

if.else:                                          ; preds = %for.body
  %29 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %30 to i64
  %31 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions28 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 1
  %v29 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions28, i32 0, i32 2
  %32 = load %struct.Production**, %struct.Production*** %v29, align 8
  %arrayidx30 = getelementptr inbounds %struct.Production*, %struct.Production** %32, i64 %idxprom27
  %33 = load %struct.Production*, %struct.Production** %arrayidx30, align 8
  %cmp31 = icmp eq %struct.Production* %29, %33
  br i1 %cmp31, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.else
  store i32 1, i32* %found, align 4
  %34 = load i32, i32* %i, align 4
  %add33 = add nsw i32 %34, 1
  %idxprom34 = sext i32 %add33 to i64
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 1
  %v36 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions35, i32 0, i32 2
  %36 = load %struct.Production**, %struct.Production*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Production*, %struct.Production** %36, i64 %idxprom34
  %37 = load %struct.Production*, %struct.Production** %arrayidx37, align 8
  store %struct.Production* %37, %struct.Production** %tp, align 8
  %38 = load %struct.Production*, %struct.Production** %pp, align 8
  %39 = load i32, i32* %i, align 4
  %add38 = add nsw i32 %39, 1
  %idxprom39 = sext i32 %add38 to i64
  %40 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions40 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %40, i32 0, i32 1
  %v41 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions40, i32 0, i32 2
  %41 = load %struct.Production**, %struct.Production*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Production*, %struct.Production** %41, i64 %idxprom39
  store %struct.Production* %38, %struct.Production** %arrayidx42, align 8
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %if.then.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %43 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %43, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %cond.end.11
  %44 = load %struct.Production*, %struct.Production** %pp, align 8
  ret %struct.Production* %44
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @conditional_EBNF(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pp = alloca %struct.Production*, align 8
  %rr = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 23
  %2 = load %struct.Production*, %struct.Production** %p, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %0, %struct.Production* %2)
  store %struct.Production* %call, %struct.Production** %pp, align 8
  %3 = load %struct.Production*, %struct.Production** %pp, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.clear = and i8 %bf.load, -29
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %internal, align 4
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %5 = load %struct.Production*, %struct.Production** %pp, align 8
  %call1 = call %struct.Rule* @new_rule(%struct.Grammar* %4, %struct.Production* %5)
  store %struct.Rule* %call1, %struct.Rule** %rr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %6, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %7 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool = icmp ne %struct.Elem** %7, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 24
  %9 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems2 = getelementptr inbounds %struct.Rule, %struct.Rule* %9, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems2, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %sub = sub i32 %10, 1
  %idxprom = zext i32 %sub to i64
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 24
  %12 = load %struct.Rule*, %struct.Rule** %r3, align 8
  %elems4 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 6
  %v5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems4, i32 0, i32 2
  %13 = load %struct.Elem**, %struct.Elem*** %v5, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %13, i64 %idxprom
  %14 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  %15 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems6 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %n7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems6, i32 0, i32 0
  %16 = load i32, i32* %n7, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %n7, align 4
  %idxprom8 = zext i32 %16 to i64
  %17 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems9 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 6
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems9, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %18 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems10 = getelementptr inbounds %struct.Rule, %struct.Rule* %18, i32 0, i32 6
  %v11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems10, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom8
  store %struct.Elem* %14, %struct.Elem** %arrayidx12, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %19 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems13 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %v14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems13, i32 0, i32 2
  %20 = load %struct.Elem**, %struct.Elem*** %v14, align 8
  %21 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems15 = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 6
  %e16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems15, i32 0, i32 3
  %arraydecay17 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e16, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %20, %arraydecay17
  br i1 %cmp, label %if.then.18, label %if.else.39

if.then.18:                                       ; preds = %if.else
  %22 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems19 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 6
  %n20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems19, i32 0, i32 0
  %23 = load i32, i32* %n20, align 4
  %cmp21 = icmp ult i32 %23, 3
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.18
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 24
  %25 = load %struct.Rule*, %struct.Rule** %r23, align 8
  %elems24 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %n25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems24, i32 0, i32 0
  %26 = load i32, i32* %n25, align 4
  %sub26 = sub i32 %26, 1
  %idxprom27 = zext i32 %sub26 to i64
  %27 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r28 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 24
  %28 = load %struct.Rule*, %struct.Rule** %r28, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %28, i32 0, i32 6
  %v30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems29, i32 0, i32 2
  %29 = load %struct.Elem**, %struct.Elem*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Elem*, %struct.Elem** %29, i64 %idxprom27
  %30 = load %struct.Elem*, %struct.Elem** %arrayidx31, align 8
  %31 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems32 = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 6
  %n33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems32, i32 0, i32 0
  %32 = load i32, i32* %n33, align 4
  %inc34 = add i32 %32, 1
  store i32 %inc34, i32* %n33, align 4
  %idxprom35 = zext i32 %32 to i64
  %33 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems36 = getelementptr inbounds %struct.Rule, %struct.Rule* %33, i32 0, i32 6
  %v37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems36, i32 0, i32 2
  %34 = load %struct.Elem**, %struct.Elem*** %v37, align 8
  %arrayidx38 = getelementptr inbounds %struct.Elem*, %struct.Elem** %34, i64 %idxprom35
  store %struct.Elem* %30, %struct.Elem** %arrayidx38, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.18
  br label %if.end.61

if.else.39:                                       ; preds = %if.else
  %35 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems40 = getelementptr inbounds %struct.Rule, %struct.Rule* %35, i32 0, i32 6
  %n41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems40, i32 0, i32 0
  %36 = load i32, i32* %n41, align 4
  %and = and i32 %36, 7
  %tobool42 = icmp ne i32 %and, 0
  br i1 %tobool42, label %if.then.43, label %if.end.60

if.then.43:                                       ; preds = %if.else.39
  %37 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r44 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %37, i32 0, i32 24
  %38 = load %struct.Rule*, %struct.Rule** %r44, align 8
  %elems45 = getelementptr inbounds %struct.Rule, %struct.Rule* %38, i32 0, i32 6
  %n46 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems45, i32 0, i32 0
  %39 = load i32, i32* %n46, align 4
  %sub47 = sub i32 %39, 1
  %idxprom48 = zext i32 %sub47 to i64
  %40 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r49 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %40, i32 0, i32 24
  %41 = load %struct.Rule*, %struct.Rule** %r49, align 8
  %elems50 = getelementptr inbounds %struct.Rule, %struct.Rule* %41, i32 0, i32 6
  %v51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems50, i32 0, i32 2
  %42 = load %struct.Elem**, %struct.Elem*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.Elem*, %struct.Elem** %42, i64 %idxprom48
  %43 = load %struct.Elem*, %struct.Elem** %arrayidx52, align 8
  %44 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems53 = getelementptr inbounds %struct.Rule, %struct.Rule* %44, i32 0, i32 6
  %n54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems53, i32 0, i32 0
  %45 = load i32, i32* %n54, align 4
  %inc55 = add i32 %45, 1
  store i32 %inc55, i32* %n54, align 4
  %idxprom56 = zext i32 %45 to i64
  %46 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems57 = getelementptr inbounds %struct.Rule, %struct.Rule* %46, i32 0, i32 6
  %v58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems57, i32 0, i32 2
  %47 = load %struct.Elem**, %struct.Elem*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.Elem*, %struct.Elem** %47, i64 %idxprom56
  store %struct.Elem* %43, %struct.Elem** %arrayidx59, align 8
  br label %do.end

if.end.60:                                        ; preds = %if.else.39
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  %48 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems63 = getelementptr inbounds %struct.Rule, %struct.Rule* %48, i32 0, i32 6
  %49 = bitcast %struct.anon.0* %elems63 to i8*
  %50 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r64 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %50, i32 0, i32 24
  %51 = load %struct.Rule*, %struct.Rule** %r64, align 8
  %elems65 = getelementptr inbounds %struct.Rule, %struct.Rule* %51, i32 0, i32 6
  %n66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems65, i32 0, i32 0
  %52 = load i32, i32* %n66, align 4
  %sub67 = sub i32 %52, 1
  %idxprom68 = zext i32 %sub67 to i64
  %53 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r69 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %53, i32 0, i32 24
  %54 = load %struct.Rule*, %struct.Rule** %r69, align 8
  %elems70 = getelementptr inbounds %struct.Rule, %struct.Rule* %54, i32 0, i32 6
  %v71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems70, i32 0, i32 2
  %55 = load %struct.Elem**, %struct.Elem*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.Elem*, %struct.Elem** %55, i64 %idxprom68
  %56 = load %struct.Elem*, %struct.Elem** %arrayidx72, align 8
  %57 = bitcast %struct.Elem* %56 to i8*
  call void @vec_add_internal(i8* %49, i8* %57)
  br label %do.end

do.end:                                           ; preds = %if.end.62, %if.then.43, %if.then.22, %if.then
  %58 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %59 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r73 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %59, i32 0, i32 24
  %60 = load %struct.Rule*, %struct.Rule** %r73, align 8
  %elems74 = getelementptr inbounds %struct.Rule, %struct.Rule* %60, i32 0, i32 6
  %n75 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems74, i32 0, i32 0
  %61 = load i32, i32* %n75, align 4
  %sub76 = sub i32 %61, 1
  %idxprom77 = zext i32 %sub76 to i64
  %62 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r78 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %62, i32 0, i32 24
  %63 = load %struct.Rule*, %struct.Rule** %r78, align 8
  %elems79 = getelementptr inbounds %struct.Rule, %struct.Rule* %63, i32 0, i32 6
  %v80 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems79, i32 0, i32 2
  %64 = load %struct.Elem**, %struct.Elem*** %v80, align 8
  %arrayidx81 = getelementptr inbounds %struct.Elem*, %struct.Elem** %64, i64 %idxprom77
  %65 = load %struct.Elem*, %struct.Elem** %arrayidx81, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %65, i32 0, i32 2
  store %struct.Rule* %58, %struct.Rule** %rule, align 8
  %66 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %67 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems82 = getelementptr inbounds %struct.Rule, %struct.Rule* %67, i32 0, i32 6
  %n83 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems82, i32 0, i32 0
  %68 = load i32, i32* %n83, align 4
  %sub84 = sub i32 %68, 1
  %idxprom85 = zext i32 %sub84 to i64
  %69 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems86 = getelementptr inbounds %struct.Rule, %struct.Rule* %69, i32 0, i32 6
  %v87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems86, i32 0, i32 2
  %70 = load %struct.Elem**, %struct.Elem*** %v87, align 8
  %arrayidx88 = getelementptr inbounds %struct.Elem*, %struct.Elem** %70, i64 %idxprom85
  %71 = load %struct.Elem*, %struct.Elem** %arrayidx88, align 8
  %rule89 = getelementptr inbounds %struct.Elem, %struct.Elem* %71, i32 0, i32 2
  store %struct.Rule* %66, %struct.Rule** %rule89, align 8
  br label %do.body.90

do.body.90:                                       ; preds = %do.end
  %72 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %72, i32 0, i32 2
  %v91 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %73 = load %struct.Rule**, %struct.Rule*** %v91, align 8
  %tobool92 = icmp ne %struct.Rule** %73, null
  br i1 %tobool92, label %if.else.104, label %if.then.93

if.then.93:                                       ; preds = %do.body.90
  %74 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %75 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules94 = getelementptr inbounds %struct.Production, %struct.Production* %75, i32 0, i32 2
  %n95 = getelementptr inbounds %struct.anon, %struct.anon* %rules94, i32 0, i32 0
  %76 = load i32, i32* %n95, align 4
  %inc96 = add i32 %76, 1
  store i32 %inc96, i32* %n95, align 4
  %idxprom97 = zext i32 %76 to i64
  %77 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules98 = getelementptr inbounds %struct.Production, %struct.Production* %77, i32 0, i32 2
  %e99 = getelementptr inbounds %struct.anon, %struct.anon* %rules98, i32 0, i32 3
  %arraydecay100 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e99, i32 0, i32 0
  %78 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules101 = getelementptr inbounds %struct.Production, %struct.Production* %78, i32 0, i32 2
  %v102 = getelementptr inbounds %struct.anon, %struct.anon* %rules101, i32 0, i32 2
  store %struct.Rule** %arraydecay100, %struct.Rule*** %v102, align 8
  %arrayidx103 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay100, i64 %idxprom97
  store %struct.Rule* %74, %struct.Rule** %arrayidx103, align 8
  br label %do.end.141

if.else.104:                                      ; preds = %do.body.90
  %79 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules105 = getelementptr inbounds %struct.Production, %struct.Production* %79, i32 0, i32 2
  %v106 = getelementptr inbounds %struct.anon, %struct.anon* %rules105, i32 0, i32 2
  %80 = load %struct.Rule**, %struct.Rule*** %v106, align 8
  %81 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules107 = getelementptr inbounds %struct.Production, %struct.Production* %81, i32 0, i32 2
  %e108 = getelementptr inbounds %struct.anon, %struct.anon* %rules107, i32 0, i32 3
  %arraydecay109 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e108, i32 0, i32 0
  %cmp110 = icmp eq %struct.Rule** %80, %arraydecay109
  br i1 %cmp110, label %if.then.111, label %if.else.124

if.then.111:                                      ; preds = %if.else.104
  %82 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules112 = getelementptr inbounds %struct.Production, %struct.Production* %82, i32 0, i32 2
  %n113 = getelementptr inbounds %struct.anon, %struct.anon* %rules112, i32 0, i32 0
  %83 = load i32, i32* %n113, align 4
  %cmp114 = icmp ult i32 %83, 3
  br i1 %cmp114, label %if.then.115, label %if.end.123

if.then.115:                                      ; preds = %if.then.111
  %84 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %85 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules116 = getelementptr inbounds %struct.Production, %struct.Production* %85, i32 0, i32 2
  %n117 = getelementptr inbounds %struct.anon, %struct.anon* %rules116, i32 0, i32 0
  %86 = load i32, i32* %n117, align 4
  %inc118 = add i32 %86, 1
  store i32 %inc118, i32* %n117, align 4
  %idxprom119 = zext i32 %86 to i64
  %87 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules120 = getelementptr inbounds %struct.Production, %struct.Production* %87, i32 0, i32 2
  %v121 = getelementptr inbounds %struct.anon, %struct.anon* %rules120, i32 0, i32 2
  %88 = load %struct.Rule**, %struct.Rule*** %v121, align 8
  %arrayidx122 = getelementptr inbounds %struct.Rule*, %struct.Rule** %88, i64 %idxprom119
  store %struct.Rule* %84, %struct.Rule** %arrayidx122, align 8
  br label %do.end.141

if.end.123:                                       ; preds = %if.then.111
  br label %if.end.138

if.else.124:                                      ; preds = %if.else.104
  %89 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules125 = getelementptr inbounds %struct.Production, %struct.Production* %89, i32 0, i32 2
  %n126 = getelementptr inbounds %struct.anon, %struct.anon* %rules125, i32 0, i32 0
  %90 = load i32, i32* %n126, align 4
  %and127 = and i32 %90, 7
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.137

if.then.129:                                      ; preds = %if.else.124
  %91 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %92 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules130 = getelementptr inbounds %struct.Production, %struct.Production* %92, i32 0, i32 2
  %n131 = getelementptr inbounds %struct.anon, %struct.anon* %rules130, i32 0, i32 0
  %93 = load i32, i32* %n131, align 4
  %inc132 = add i32 %93, 1
  store i32 %inc132, i32* %n131, align 4
  %idxprom133 = zext i32 %93 to i64
  %94 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules134 = getelementptr inbounds %struct.Production, %struct.Production* %94, i32 0, i32 2
  %v135 = getelementptr inbounds %struct.anon, %struct.anon* %rules134, i32 0, i32 2
  %95 = load %struct.Rule**, %struct.Rule*** %v135, align 8
  %arrayidx136 = getelementptr inbounds %struct.Rule*, %struct.Rule** %95, i64 %idxprom133
  store %struct.Rule* %91, %struct.Rule** %arrayidx136, align 8
  br label %do.end.141

if.end.137:                                       ; preds = %if.else.124
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.end.123
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138
  %96 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules140 = getelementptr inbounds %struct.Production, %struct.Production* %96, i32 0, i32 2
  %97 = bitcast %struct.anon* %rules140 to i8*
  %98 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %99 = bitcast %struct.Rule* %98 to i8*
  call void @vec_add_internal(i8* %97, i8* %99)
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.139, %if.then.129, %if.then.115, %if.then.93
  br label %do.body.142

do.body.142:                                      ; preds = %do.end.141
  %100 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules143 = getelementptr inbounds %struct.Production, %struct.Production* %100, i32 0, i32 2
  %v144 = getelementptr inbounds %struct.anon, %struct.anon* %rules143, i32 0, i32 2
  %101 = load %struct.Rule**, %struct.Rule*** %v144, align 8
  %tobool145 = icmp ne %struct.Rule** %101, null
  br i1 %tobool145, label %if.else.158, label %if.then.146

if.then.146:                                      ; preds = %do.body.142
  %102 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %103 = load %struct.Production*, %struct.Production** %pp, align 8
  %call147 = call %struct.Rule* @new_rule(%struct.Grammar* %102, %struct.Production* %103)
  %104 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules148 = getelementptr inbounds %struct.Production, %struct.Production* %104, i32 0, i32 2
  %n149 = getelementptr inbounds %struct.anon, %struct.anon* %rules148, i32 0, i32 0
  %105 = load i32, i32* %n149, align 4
  %inc150 = add i32 %105, 1
  store i32 %inc150, i32* %n149, align 4
  %idxprom151 = zext i32 %105 to i64
  %106 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules152 = getelementptr inbounds %struct.Production, %struct.Production* %106, i32 0, i32 2
  %e153 = getelementptr inbounds %struct.anon, %struct.anon* %rules152, i32 0, i32 3
  %arraydecay154 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e153, i32 0, i32 0
  %107 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules155 = getelementptr inbounds %struct.Production, %struct.Production* %107, i32 0, i32 2
  %v156 = getelementptr inbounds %struct.anon, %struct.anon* %rules155, i32 0, i32 2
  store %struct.Rule** %arraydecay154, %struct.Rule*** %v156, align 8
  %arrayidx157 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay154, i64 %idxprom151
  store %struct.Rule* %call147, %struct.Rule** %arrayidx157, align 8
  br label %do.end.198

if.else.158:                                      ; preds = %do.body.142
  %108 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules159 = getelementptr inbounds %struct.Production, %struct.Production* %108, i32 0, i32 2
  %v160 = getelementptr inbounds %struct.anon, %struct.anon* %rules159, i32 0, i32 2
  %109 = load %struct.Rule**, %struct.Rule*** %v160, align 8
  %110 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules161 = getelementptr inbounds %struct.Production, %struct.Production* %110, i32 0, i32 2
  %e162 = getelementptr inbounds %struct.anon, %struct.anon* %rules161, i32 0, i32 3
  %arraydecay163 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e162, i32 0, i32 0
  %cmp164 = icmp eq %struct.Rule** %109, %arraydecay163
  br i1 %cmp164, label %if.then.165, label %if.else.179

if.then.165:                                      ; preds = %if.else.158
  %111 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules166 = getelementptr inbounds %struct.Production, %struct.Production* %111, i32 0, i32 2
  %n167 = getelementptr inbounds %struct.anon, %struct.anon* %rules166, i32 0, i32 0
  %112 = load i32, i32* %n167, align 4
  %cmp168 = icmp ult i32 %112, 3
  br i1 %cmp168, label %if.then.169, label %if.end.178

if.then.169:                                      ; preds = %if.then.165
  %113 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %114 = load %struct.Production*, %struct.Production** %pp, align 8
  %call170 = call %struct.Rule* @new_rule(%struct.Grammar* %113, %struct.Production* %114)
  %115 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules171 = getelementptr inbounds %struct.Production, %struct.Production* %115, i32 0, i32 2
  %n172 = getelementptr inbounds %struct.anon, %struct.anon* %rules171, i32 0, i32 0
  %116 = load i32, i32* %n172, align 4
  %inc173 = add i32 %116, 1
  store i32 %inc173, i32* %n172, align 4
  %idxprom174 = zext i32 %116 to i64
  %117 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules175 = getelementptr inbounds %struct.Production, %struct.Production* %117, i32 0, i32 2
  %v176 = getelementptr inbounds %struct.anon, %struct.anon* %rules175, i32 0, i32 2
  %118 = load %struct.Rule**, %struct.Rule*** %v176, align 8
  %arrayidx177 = getelementptr inbounds %struct.Rule*, %struct.Rule** %118, i64 %idxprom174
  store %struct.Rule* %call170, %struct.Rule** %arrayidx177, align 8
  br label %do.end.198

if.end.178:                                       ; preds = %if.then.165
  br label %if.end.194

if.else.179:                                      ; preds = %if.else.158
  %119 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules180 = getelementptr inbounds %struct.Production, %struct.Production* %119, i32 0, i32 2
  %n181 = getelementptr inbounds %struct.anon, %struct.anon* %rules180, i32 0, i32 0
  %120 = load i32, i32* %n181, align 4
  %and182 = and i32 %120, 7
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.193

if.then.184:                                      ; preds = %if.else.179
  %121 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %122 = load %struct.Production*, %struct.Production** %pp, align 8
  %call185 = call %struct.Rule* @new_rule(%struct.Grammar* %121, %struct.Production* %122)
  %123 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules186 = getelementptr inbounds %struct.Production, %struct.Production* %123, i32 0, i32 2
  %n187 = getelementptr inbounds %struct.anon, %struct.anon* %rules186, i32 0, i32 0
  %124 = load i32, i32* %n187, align 4
  %inc188 = add i32 %124, 1
  store i32 %inc188, i32* %n187, align 4
  %idxprom189 = zext i32 %124 to i64
  %125 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules190 = getelementptr inbounds %struct.Production, %struct.Production* %125, i32 0, i32 2
  %v191 = getelementptr inbounds %struct.anon, %struct.anon* %rules190, i32 0, i32 2
  %126 = load %struct.Rule**, %struct.Rule*** %v191, align 8
  %arrayidx192 = getelementptr inbounds %struct.Rule*, %struct.Rule** %126, i64 %idxprom189
  store %struct.Rule* %call185, %struct.Rule** %arrayidx192, align 8
  br label %do.end.198

if.end.193:                                       ; preds = %if.else.179
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.178
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194
  %127 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules196 = getelementptr inbounds %struct.Production, %struct.Production* %127, i32 0, i32 2
  %128 = bitcast %struct.anon* %rules196 to i8*
  %129 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %130 = load %struct.Production*, %struct.Production** %pp, align 8
  %call197 = call %struct.Rule* @new_rule(%struct.Grammar* %129, %struct.Production* %130)
  %131 = bitcast %struct.Rule* %call197 to i8*
  call void @vec_add_internal(i8* %128, i8* %131)
  br label %do.end.198

do.end.198:                                       ; preds = %if.end.195, %if.then.184, %if.then.169, %if.then.146
  %132 = load %struct.Production*, %struct.Production** %pp, align 8
  %133 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r199 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %133, i32 0, i32 24
  %134 = load %struct.Rule*, %struct.Rule** %r199, align 8
  %call200 = call %struct.Elem* @new_elem_nterm(%struct.Production* %132, %struct.Rule* %134)
  %135 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r201 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %135, i32 0, i32 24
  %136 = load %struct.Rule*, %struct.Rule** %r201, align 8
  %elems202 = getelementptr inbounds %struct.Rule, %struct.Rule* %136, i32 0, i32 6
  %n203 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems202, i32 0, i32 0
  %137 = load i32, i32* %n203, align 4
  %sub204 = sub i32 %137, 1
  %idxprom205 = zext i32 %sub204 to i64
  %138 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r206 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %138, i32 0, i32 24
  %139 = load %struct.Rule*, %struct.Rule** %r206, align 8
  %elems207 = getelementptr inbounds %struct.Rule, %struct.Rule* %139, i32 0, i32 6
  %v208 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems207, i32 0, i32 2
  %140 = load %struct.Elem**, %struct.Elem*** %v208, align 8
  %arrayidx209 = getelementptr inbounds %struct.Elem*, %struct.Elem** %140, i64 %idxprom205
  store %struct.Elem* %call200, %struct.Elem** %arrayidx209, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @star_EBNF(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pp = alloca %struct.Production*, align 8
  %rr = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 23
  %2 = load %struct.Production*, %struct.Production** %p, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %0, %struct.Production* %2)
  store %struct.Production* %call, %struct.Production** %pp, align 8
  %3 = load %struct.Production*, %struct.Production** %pp, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.clear = and i8 %bf.load, -29
  %bf.set = or i8 %bf.clear, 12
  store i8 %bf.set, i8* %internal, align 4
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %5 = load %struct.Production*, %struct.Production** %pp, align 8
  %call1 = call %struct.Rule* @new_rule(%struct.Grammar* %4, %struct.Production* %5)
  store %struct.Rule* %call1, %struct.Rule** %rr, align 8
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %right_recursive_BNF = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 11
  %7 = load i32, i32* %right_recursive_BNF, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else.150, label %if.then

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %8 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %8, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %9 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool2 = icmp ne %struct.Elem** %9, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.body
  %10 = load %struct.Production*, %struct.Production** %pp, align 8
  %11 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call4 = call %struct.Elem* @new_elem_nterm(%struct.Production* %10, %struct.Rule* %11)
  %12 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems5 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems5, i32 0, i32 0
  %13 = load i32, i32* %n, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems6 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 6
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %15 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems7 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %v8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems7, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %call4, %struct.Elem** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %16 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems9 = getelementptr inbounds %struct.Rule, %struct.Rule* %16, i32 0, i32 6
  %v10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems9, i32 0, i32 2
  %17 = load %struct.Elem**, %struct.Elem*** %v10, align 8
  %18 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems11 = getelementptr inbounds %struct.Rule, %struct.Rule* %18, i32 0, i32 6
  %e12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %17, %arraydecay13
  br i1 %cmp, label %if.then.14, label %if.else.27

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems15 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %n16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems15, i32 0, i32 0
  %20 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %20, 3
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.14
  %21 = load %struct.Production*, %struct.Production** %pp, align 8
  %22 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call19 = call %struct.Elem* @new_elem_nterm(%struct.Production* %21, %struct.Rule* %22)
  %23 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems20 = getelementptr inbounds %struct.Rule, %struct.Rule* %23, i32 0, i32 6
  %n21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems20, i32 0, i32 0
  %24 = load i32, i32* %n21, align 4
  %inc22 = add i32 %24, 1
  store i32 %inc22, i32* %n21, align 4
  %idxprom23 = zext i32 %24 to i64
  %25 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems24 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %v25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems24, i32 0, i32 2
  %26 = load %struct.Elem**, %struct.Elem*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Elem*, %struct.Elem** %26, i64 %idxprom23
  store %struct.Elem* %call19, %struct.Elem** %arrayidx26, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.14
  br label %if.end.41

if.else.27:                                       ; preds = %if.else
  %27 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems28 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 6
  %n29 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems28, i32 0, i32 0
  %28 = load i32, i32* %n29, align 4
  %and = and i32 %28, 7
  %tobool30 = icmp ne i32 %and, 0
  br i1 %tobool30, label %if.then.31, label %if.end.40

if.then.31:                                       ; preds = %if.else.27
  %29 = load %struct.Production*, %struct.Production** %pp, align 8
  %30 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call32 = call %struct.Elem* @new_elem_nterm(%struct.Production* %29, %struct.Rule* %30)
  %31 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems33 = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 6
  %n34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems33, i32 0, i32 0
  %32 = load i32, i32* %n34, align 4
  %inc35 = add i32 %32, 1
  store i32 %inc35, i32* %n34, align 4
  %idxprom36 = zext i32 %32 to i64
  %33 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems37 = getelementptr inbounds %struct.Rule, %struct.Rule* %33, i32 0, i32 6
  %v38 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems37, i32 0, i32 2
  %34 = load %struct.Elem**, %struct.Elem*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Elem*, %struct.Elem** %34, i64 %idxprom36
  store %struct.Elem* %call32, %struct.Elem** %arrayidx39, align 8
  br label %do.end

if.end.40:                                        ; preds = %if.else.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41
  %35 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems43 = getelementptr inbounds %struct.Rule, %struct.Rule* %35, i32 0, i32 6
  %36 = bitcast %struct.anon.0* %elems43 to i8*
  %37 = load %struct.Production*, %struct.Production** %pp, align 8
  %38 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call44 = call %struct.Elem* @new_elem_nterm(%struct.Production* %37, %struct.Rule* %38)
  %39 = bitcast %struct.Elem* %call44 to i8*
  call void @vec_add_internal(i8* %36, i8* %39)
  br label %do.end

do.end:                                           ; preds = %if.end.42, %if.then.31, %if.then.18, %if.then.3
  br label %do.body.45

do.body.45:                                       ; preds = %do.end
  %40 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems46 = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 6
  %v47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems46, i32 0, i32 2
  %41 = load %struct.Elem**, %struct.Elem*** %v47, align 8
  %tobool48 = icmp ne %struct.Elem** %41, null
  br i1 %tobool48, label %if.else.67, label %if.then.49

if.then.49:                                       ; preds = %do.body.45
  %42 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %42, i32 0, i32 24
  %43 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems50 = getelementptr inbounds %struct.Rule, %struct.Rule* %43, i32 0, i32 6
  %n51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems50, i32 0, i32 0
  %44 = load i32, i32* %n51, align 4
  %sub = sub i32 %44, 1
  %idxprom52 = zext i32 %sub to i64
  %45 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r53 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %45, i32 0, i32 24
  %46 = load %struct.Rule*, %struct.Rule** %r53, align 8
  %elems54 = getelementptr inbounds %struct.Rule, %struct.Rule* %46, i32 0, i32 6
  %v55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems54, i32 0, i32 2
  %47 = load %struct.Elem**, %struct.Elem*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.Elem*, %struct.Elem** %47, i64 %idxprom52
  %48 = load %struct.Elem*, %struct.Elem** %arrayidx56, align 8
  %49 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems57 = getelementptr inbounds %struct.Rule, %struct.Rule* %49, i32 0, i32 6
  %n58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems57, i32 0, i32 0
  %50 = load i32, i32* %n58, align 4
  %inc59 = add i32 %50, 1
  store i32 %inc59, i32* %n58, align 4
  %idxprom60 = zext i32 %50 to i64
  %51 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems61 = getelementptr inbounds %struct.Rule, %struct.Rule* %51, i32 0, i32 6
  %e62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems61, i32 0, i32 3
  %arraydecay63 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e62, i32 0, i32 0
  %52 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems64 = getelementptr inbounds %struct.Rule, %struct.Rule* %52, i32 0, i32 6
  %v65 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems64, i32 0, i32 2
  store %struct.Elem** %arraydecay63, %struct.Elem*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay63, i64 %idxprom60
  store %struct.Elem* %48, %struct.Elem** %arrayidx66, align 8
  br label %do.end.131

if.else.67:                                       ; preds = %do.body.45
  %53 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems68 = getelementptr inbounds %struct.Rule, %struct.Rule* %53, i32 0, i32 6
  %v69 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems68, i32 0, i32 2
  %54 = load %struct.Elem**, %struct.Elem*** %v69, align 8
  %55 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems70 = getelementptr inbounds %struct.Rule, %struct.Rule* %55, i32 0, i32 6
  %e71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems70, i32 0, i32 3
  %arraydecay72 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e71, i32 0, i32 0
  %cmp73 = icmp eq %struct.Elem** %54, %arraydecay72
  br i1 %cmp73, label %if.then.74, label %if.else.96

if.then.74:                                       ; preds = %if.else.67
  %56 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems75 = getelementptr inbounds %struct.Rule, %struct.Rule* %56, i32 0, i32 6
  %n76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems75, i32 0, i32 0
  %57 = load i32, i32* %n76, align 4
  %cmp77 = icmp ult i32 %57, 3
  br i1 %cmp77, label %if.then.78, label %if.end.95

if.then.78:                                       ; preds = %if.then.74
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r79 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 24
  %59 = load %struct.Rule*, %struct.Rule** %r79, align 8
  %elems80 = getelementptr inbounds %struct.Rule, %struct.Rule* %59, i32 0, i32 6
  %n81 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems80, i32 0, i32 0
  %60 = load i32, i32* %n81, align 4
  %sub82 = sub i32 %60, 1
  %idxprom83 = zext i32 %sub82 to i64
  %61 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r84 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %61, i32 0, i32 24
  %62 = load %struct.Rule*, %struct.Rule** %r84, align 8
  %elems85 = getelementptr inbounds %struct.Rule, %struct.Rule* %62, i32 0, i32 6
  %v86 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems85, i32 0, i32 2
  %63 = load %struct.Elem**, %struct.Elem*** %v86, align 8
  %arrayidx87 = getelementptr inbounds %struct.Elem*, %struct.Elem** %63, i64 %idxprom83
  %64 = load %struct.Elem*, %struct.Elem** %arrayidx87, align 8
  %65 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems88 = getelementptr inbounds %struct.Rule, %struct.Rule* %65, i32 0, i32 6
  %n89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems88, i32 0, i32 0
  %66 = load i32, i32* %n89, align 4
  %inc90 = add i32 %66, 1
  store i32 %inc90, i32* %n89, align 4
  %idxprom91 = zext i32 %66 to i64
  %67 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems92 = getelementptr inbounds %struct.Rule, %struct.Rule* %67, i32 0, i32 6
  %v93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems92, i32 0, i32 2
  %68 = load %struct.Elem**, %struct.Elem*** %v93, align 8
  %arrayidx94 = getelementptr inbounds %struct.Elem*, %struct.Elem** %68, i64 %idxprom91
  store %struct.Elem* %64, %struct.Elem** %arrayidx94, align 8
  br label %do.end.131

if.end.95:                                        ; preds = %if.then.74
  br label %if.end.119

if.else.96:                                       ; preds = %if.else.67
  %69 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems97 = getelementptr inbounds %struct.Rule, %struct.Rule* %69, i32 0, i32 6
  %n98 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems97, i32 0, i32 0
  %70 = load i32, i32* %n98, align 4
  %and99 = and i32 %70, 7
  %tobool100 = icmp ne i32 %and99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.118

if.then.101:                                      ; preds = %if.else.96
  %71 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r102 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %71, i32 0, i32 24
  %72 = load %struct.Rule*, %struct.Rule** %r102, align 8
  %elems103 = getelementptr inbounds %struct.Rule, %struct.Rule* %72, i32 0, i32 6
  %n104 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems103, i32 0, i32 0
  %73 = load i32, i32* %n104, align 4
  %sub105 = sub i32 %73, 1
  %idxprom106 = zext i32 %sub105 to i64
  %74 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r107 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %74, i32 0, i32 24
  %75 = load %struct.Rule*, %struct.Rule** %r107, align 8
  %elems108 = getelementptr inbounds %struct.Rule, %struct.Rule* %75, i32 0, i32 6
  %v109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems108, i32 0, i32 2
  %76 = load %struct.Elem**, %struct.Elem*** %v109, align 8
  %arrayidx110 = getelementptr inbounds %struct.Elem*, %struct.Elem** %76, i64 %idxprom106
  %77 = load %struct.Elem*, %struct.Elem** %arrayidx110, align 8
  %78 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems111 = getelementptr inbounds %struct.Rule, %struct.Rule* %78, i32 0, i32 6
  %n112 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems111, i32 0, i32 0
  %79 = load i32, i32* %n112, align 4
  %inc113 = add i32 %79, 1
  store i32 %inc113, i32* %n112, align 4
  %idxprom114 = zext i32 %79 to i64
  %80 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems115 = getelementptr inbounds %struct.Rule, %struct.Rule* %80, i32 0, i32 6
  %v116 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems115, i32 0, i32 2
  %81 = load %struct.Elem**, %struct.Elem*** %v116, align 8
  %arrayidx117 = getelementptr inbounds %struct.Elem*, %struct.Elem** %81, i64 %idxprom114
  store %struct.Elem* %77, %struct.Elem** %arrayidx117, align 8
  br label %do.end.131

if.end.118:                                       ; preds = %if.else.96
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.95
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119
  %82 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems121 = getelementptr inbounds %struct.Rule, %struct.Rule* %82, i32 0, i32 6
  %83 = bitcast %struct.anon.0* %elems121 to i8*
  %84 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r122 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %84, i32 0, i32 24
  %85 = load %struct.Rule*, %struct.Rule** %r122, align 8
  %elems123 = getelementptr inbounds %struct.Rule, %struct.Rule* %85, i32 0, i32 6
  %n124 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems123, i32 0, i32 0
  %86 = load i32, i32* %n124, align 4
  %sub125 = sub i32 %86, 1
  %idxprom126 = zext i32 %sub125 to i64
  %87 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r127 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %87, i32 0, i32 24
  %88 = load %struct.Rule*, %struct.Rule** %r127, align 8
  %elems128 = getelementptr inbounds %struct.Rule, %struct.Rule* %88, i32 0, i32 6
  %v129 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems128, i32 0, i32 2
  %89 = load %struct.Elem**, %struct.Elem*** %v129, align 8
  %arrayidx130 = getelementptr inbounds %struct.Elem*, %struct.Elem** %89, i64 %idxprom126
  %90 = load %struct.Elem*, %struct.Elem** %arrayidx130, align 8
  %91 = bitcast %struct.Elem* %90 to i8*
  call void @vec_add_internal(i8* %83, i8* %91)
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.120, %if.then.101, %if.then.78, %if.then.49
  %92 = load %struct.Production*, %struct.Production** %pp, align 8
  %93 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r132 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %93, i32 0, i32 24
  %94 = load %struct.Rule*, %struct.Rule** %r132, align 8
  %call133 = call %struct.Elem* @new_elem_nterm(%struct.Production* %92, %struct.Rule* %94)
  %95 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r134 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %95, i32 0, i32 24
  %96 = load %struct.Rule*, %struct.Rule** %r134, align 8
  %elems135 = getelementptr inbounds %struct.Rule, %struct.Rule* %96, i32 0, i32 6
  %n136 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems135, i32 0, i32 0
  %97 = load i32, i32* %n136, align 4
  %sub137 = sub i32 %97, 1
  %idxprom138 = zext i32 %sub137 to i64
  %98 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r139 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %98, i32 0, i32 24
  %99 = load %struct.Rule*, %struct.Rule** %r139, align 8
  %elems140 = getelementptr inbounds %struct.Rule, %struct.Rule* %99, i32 0, i32 6
  %v141 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems140, i32 0, i32 2
  %100 = load %struct.Elem**, %struct.Elem*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Elem*, %struct.Elem** %100, i64 %idxprom138
  store %struct.Elem* %call133, %struct.Elem** %arrayidx142, align 8
  %101 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %102 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems143 = getelementptr inbounds %struct.Rule, %struct.Rule* %102, i32 0, i32 6
  %n144 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems143, i32 0, i32 0
  %103 = load i32, i32* %n144, align 4
  %sub145 = sub i32 %103, 1
  %idxprom146 = zext i32 %sub145 to i64
  %104 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems147 = getelementptr inbounds %struct.Rule, %struct.Rule* %104, i32 0, i32 6
  %v148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems147, i32 0, i32 2
  %105 = load %struct.Elem**, %struct.Elem*** %v148, align 8
  %arrayidx149 = getelementptr inbounds %struct.Elem*, %struct.Elem** %105, i64 %idxprom146
  %106 = load %struct.Elem*, %struct.Elem** %arrayidx149, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %106, i32 0, i32 2
  store %struct.Rule* %101, %struct.Rule** %rule, align 8
  br label %if.end.316

if.else.150:                                      ; preds = %entry
  br label %do.body.151

do.body.151:                                      ; preds = %if.else.150
  %107 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems152 = getelementptr inbounds %struct.Rule, %struct.Rule* %107, i32 0, i32 6
  %v153 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems152, i32 0, i32 2
  %108 = load %struct.Elem**, %struct.Elem*** %v153, align 8
  %tobool154 = icmp ne %struct.Elem** %108, null
  br i1 %tobool154, label %if.else.175, label %if.then.155

if.then.155:                                      ; preds = %do.body.151
  %109 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r156 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %109, i32 0, i32 24
  %110 = load %struct.Rule*, %struct.Rule** %r156, align 8
  %elems157 = getelementptr inbounds %struct.Rule, %struct.Rule* %110, i32 0, i32 6
  %n158 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems157, i32 0, i32 0
  %111 = load i32, i32* %n158, align 4
  %sub159 = sub i32 %111, 1
  %idxprom160 = zext i32 %sub159 to i64
  %112 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r161 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %112, i32 0, i32 24
  %113 = load %struct.Rule*, %struct.Rule** %r161, align 8
  %elems162 = getelementptr inbounds %struct.Rule, %struct.Rule* %113, i32 0, i32 6
  %v163 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems162, i32 0, i32 2
  %114 = load %struct.Elem**, %struct.Elem*** %v163, align 8
  %arrayidx164 = getelementptr inbounds %struct.Elem*, %struct.Elem** %114, i64 %idxprom160
  %115 = load %struct.Elem*, %struct.Elem** %arrayidx164, align 8
  %116 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems165 = getelementptr inbounds %struct.Rule, %struct.Rule* %116, i32 0, i32 6
  %n166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems165, i32 0, i32 0
  %117 = load i32, i32* %n166, align 4
  %inc167 = add i32 %117, 1
  store i32 %inc167, i32* %n166, align 4
  %idxprom168 = zext i32 %117 to i64
  %118 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems169 = getelementptr inbounds %struct.Rule, %struct.Rule* %118, i32 0, i32 6
  %e170 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems169, i32 0, i32 3
  %arraydecay171 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e170, i32 0, i32 0
  %119 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems172 = getelementptr inbounds %struct.Rule, %struct.Rule* %119, i32 0, i32 6
  %v173 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems172, i32 0, i32 2
  store %struct.Elem** %arraydecay171, %struct.Elem*** %v173, align 8
  %arrayidx174 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay171, i64 %idxprom168
  store %struct.Elem* %115, %struct.Elem** %arrayidx174, align 8
  br label %do.end.239

if.else.175:                                      ; preds = %do.body.151
  %120 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems176 = getelementptr inbounds %struct.Rule, %struct.Rule* %120, i32 0, i32 6
  %v177 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems176, i32 0, i32 2
  %121 = load %struct.Elem**, %struct.Elem*** %v177, align 8
  %122 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems178 = getelementptr inbounds %struct.Rule, %struct.Rule* %122, i32 0, i32 6
  %e179 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems178, i32 0, i32 3
  %arraydecay180 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e179, i32 0, i32 0
  %cmp181 = icmp eq %struct.Elem** %121, %arraydecay180
  br i1 %cmp181, label %if.then.182, label %if.else.204

if.then.182:                                      ; preds = %if.else.175
  %123 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems183 = getelementptr inbounds %struct.Rule, %struct.Rule* %123, i32 0, i32 6
  %n184 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems183, i32 0, i32 0
  %124 = load i32, i32* %n184, align 4
  %cmp185 = icmp ult i32 %124, 3
  br i1 %cmp185, label %if.then.186, label %if.end.203

if.then.186:                                      ; preds = %if.then.182
  %125 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r187 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %125, i32 0, i32 24
  %126 = load %struct.Rule*, %struct.Rule** %r187, align 8
  %elems188 = getelementptr inbounds %struct.Rule, %struct.Rule* %126, i32 0, i32 6
  %n189 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems188, i32 0, i32 0
  %127 = load i32, i32* %n189, align 4
  %sub190 = sub i32 %127, 1
  %idxprom191 = zext i32 %sub190 to i64
  %128 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r192 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %128, i32 0, i32 24
  %129 = load %struct.Rule*, %struct.Rule** %r192, align 8
  %elems193 = getelementptr inbounds %struct.Rule, %struct.Rule* %129, i32 0, i32 6
  %v194 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems193, i32 0, i32 2
  %130 = load %struct.Elem**, %struct.Elem*** %v194, align 8
  %arrayidx195 = getelementptr inbounds %struct.Elem*, %struct.Elem** %130, i64 %idxprom191
  %131 = load %struct.Elem*, %struct.Elem** %arrayidx195, align 8
  %132 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems196 = getelementptr inbounds %struct.Rule, %struct.Rule* %132, i32 0, i32 6
  %n197 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems196, i32 0, i32 0
  %133 = load i32, i32* %n197, align 4
  %inc198 = add i32 %133, 1
  store i32 %inc198, i32* %n197, align 4
  %idxprom199 = zext i32 %133 to i64
  %134 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems200 = getelementptr inbounds %struct.Rule, %struct.Rule* %134, i32 0, i32 6
  %v201 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems200, i32 0, i32 2
  %135 = load %struct.Elem**, %struct.Elem*** %v201, align 8
  %arrayidx202 = getelementptr inbounds %struct.Elem*, %struct.Elem** %135, i64 %idxprom199
  store %struct.Elem* %131, %struct.Elem** %arrayidx202, align 8
  br label %do.end.239

if.end.203:                                       ; preds = %if.then.182
  br label %if.end.227

if.else.204:                                      ; preds = %if.else.175
  %136 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems205 = getelementptr inbounds %struct.Rule, %struct.Rule* %136, i32 0, i32 6
  %n206 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems205, i32 0, i32 0
  %137 = load i32, i32* %n206, align 4
  %and207 = and i32 %137, 7
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %if.then.209, label %if.end.226

if.then.209:                                      ; preds = %if.else.204
  %138 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r210 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %138, i32 0, i32 24
  %139 = load %struct.Rule*, %struct.Rule** %r210, align 8
  %elems211 = getelementptr inbounds %struct.Rule, %struct.Rule* %139, i32 0, i32 6
  %n212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems211, i32 0, i32 0
  %140 = load i32, i32* %n212, align 4
  %sub213 = sub i32 %140, 1
  %idxprom214 = zext i32 %sub213 to i64
  %141 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r215 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %141, i32 0, i32 24
  %142 = load %struct.Rule*, %struct.Rule** %r215, align 8
  %elems216 = getelementptr inbounds %struct.Rule, %struct.Rule* %142, i32 0, i32 6
  %v217 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems216, i32 0, i32 2
  %143 = load %struct.Elem**, %struct.Elem*** %v217, align 8
  %arrayidx218 = getelementptr inbounds %struct.Elem*, %struct.Elem** %143, i64 %idxprom214
  %144 = load %struct.Elem*, %struct.Elem** %arrayidx218, align 8
  %145 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems219 = getelementptr inbounds %struct.Rule, %struct.Rule* %145, i32 0, i32 6
  %n220 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems219, i32 0, i32 0
  %146 = load i32, i32* %n220, align 4
  %inc221 = add i32 %146, 1
  store i32 %inc221, i32* %n220, align 4
  %idxprom222 = zext i32 %146 to i64
  %147 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems223 = getelementptr inbounds %struct.Rule, %struct.Rule* %147, i32 0, i32 6
  %v224 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems223, i32 0, i32 2
  %148 = load %struct.Elem**, %struct.Elem*** %v224, align 8
  %arrayidx225 = getelementptr inbounds %struct.Elem*, %struct.Elem** %148, i64 %idxprom222
  store %struct.Elem* %144, %struct.Elem** %arrayidx225, align 8
  br label %do.end.239

if.end.226:                                       ; preds = %if.else.204
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %if.end.203
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227
  %149 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems229 = getelementptr inbounds %struct.Rule, %struct.Rule* %149, i32 0, i32 6
  %150 = bitcast %struct.anon.0* %elems229 to i8*
  %151 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r230 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %151, i32 0, i32 24
  %152 = load %struct.Rule*, %struct.Rule** %r230, align 8
  %elems231 = getelementptr inbounds %struct.Rule, %struct.Rule* %152, i32 0, i32 6
  %n232 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems231, i32 0, i32 0
  %153 = load i32, i32* %n232, align 4
  %sub233 = sub i32 %153, 1
  %idxprom234 = zext i32 %sub233 to i64
  %154 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r235 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %154, i32 0, i32 24
  %155 = load %struct.Rule*, %struct.Rule** %r235, align 8
  %elems236 = getelementptr inbounds %struct.Rule, %struct.Rule* %155, i32 0, i32 6
  %v237 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems236, i32 0, i32 2
  %156 = load %struct.Elem**, %struct.Elem*** %v237, align 8
  %arrayidx238 = getelementptr inbounds %struct.Elem*, %struct.Elem** %156, i64 %idxprom234
  %157 = load %struct.Elem*, %struct.Elem** %arrayidx238, align 8
  %158 = bitcast %struct.Elem* %157 to i8*
  call void @vec_add_internal(i8* %150, i8* %158)
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.228, %if.then.209, %if.then.186, %if.then.155
  %159 = load %struct.Production*, %struct.Production** %pp, align 8
  %160 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r240 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %160, i32 0, i32 24
  %161 = load %struct.Rule*, %struct.Rule** %r240, align 8
  %call241 = call %struct.Elem* @new_elem_nterm(%struct.Production* %159, %struct.Rule* %161)
  %162 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r242 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %162, i32 0, i32 24
  %163 = load %struct.Rule*, %struct.Rule** %r242, align 8
  %elems243 = getelementptr inbounds %struct.Rule, %struct.Rule* %163, i32 0, i32 6
  %n244 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems243, i32 0, i32 0
  %164 = load i32, i32* %n244, align 4
  %sub245 = sub i32 %164, 1
  %idxprom246 = zext i32 %sub245 to i64
  %165 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r247 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %165, i32 0, i32 24
  %166 = load %struct.Rule*, %struct.Rule** %r247, align 8
  %elems248 = getelementptr inbounds %struct.Rule, %struct.Rule* %166, i32 0, i32 6
  %v249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems248, i32 0, i32 2
  %167 = load %struct.Elem**, %struct.Elem*** %v249, align 8
  %arrayidx250 = getelementptr inbounds %struct.Elem*, %struct.Elem** %167, i64 %idxprom246
  store %struct.Elem* %call241, %struct.Elem** %arrayidx250, align 8
  %168 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %169 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems251 = getelementptr inbounds %struct.Rule, %struct.Rule* %169, i32 0, i32 6
  %n252 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems251, i32 0, i32 0
  %170 = load i32, i32* %n252, align 4
  %sub253 = sub i32 %170, 1
  %idxprom254 = zext i32 %sub253 to i64
  %171 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems255 = getelementptr inbounds %struct.Rule, %struct.Rule* %171, i32 0, i32 6
  %v256 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems255, i32 0, i32 2
  %172 = load %struct.Elem**, %struct.Elem*** %v256, align 8
  %arrayidx257 = getelementptr inbounds %struct.Elem*, %struct.Elem** %172, i64 %idxprom254
  %173 = load %struct.Elem*, %struct.Elem** %arrayidx257, align 8
  %rule258 = getelementptr inbounds %struct.Elem, %struct.Elem* %173, i32 0, i32 2
  store %struct.Rule* %168, %struct.Rule** %rule258, align 8
  br label %do.body.259

do.body.259:                                      ; preds = %do.end.239
  %174 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems260 = getelementptr inbounds %struct.Rule, %struct.Rule* %174, i32 0, i32 6
  %v261 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems260, i32 0, i32 2
  %175 = load %struct.Elem**, %struct.Elem*** %v261, align 8
  %tobool262 = icmp ne %struct.Elem** %175, null
  br i1 %tobool262, label %if.else.275, label %if.then.263

if.then.263:                                      ; preds = %do.body.259
  %176 = load %struct.Production*, %struct.Production** %pp, align 8
  %177 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call264 = call %struct.Elem* @new_elem_nterm(%struct.Production* %176, %struct.Rule* %177)
  %178 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems265 = getelementptr inbounds %struct.Rule, %struct.Rule* %178, i32 0, i32 6
  %n266 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems265, i32 0, i32 0
  %179 = load i32, i32* %n266, align 4
  %inc267 = add i32 %179, 1
  store i32 %inc267, i32* %n266, align 4
  %idxprom268 = zext i32 %179 to i64
  %180 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems269 = getelementptr inbounds %struct.Rule, %struct.Rule* %180, i32 0, i32 6
  %e270 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems269, i32 0, i32 3
  %arraydecay271 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e270, i32 0, i32 0
  %181 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems272 = getelementptr inbounds %struct.Rule, %struct.Rule* %181, i32 0, i32 6
  %v273 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems272, i32 0, i32 2
  store %struct.Elem** %arraydecay271, %struct.Elem*** %v273, align 8
  %arrayidx274 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay271, i64 %idxprom268
  store %struct.Elem* %call264, %struct.Elem** %arrayidx274, align 8
  br label %do.end.315

if.else.275:                                      ; preds = %do.body.259
  %182 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems276 = getelementptr inbounds %struct.Rule, %struct.Rule* %182, i32 0, i32 6
  %v277 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems276, i32 0, i32 2
  %183 = load %struct.Elem**, %struct.Elem*** %v277, align 8
  %184 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems278 = getelementptr inbounds %struct.Rule, %struct.Rule* %184, i32 0, i32 6
  %e279 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems278, i32 0, i32 3
  %arraydecay280 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e279, i32 0, i32 0
  %cmp281 = icmp eq %struct.Elem** %183, %arraydecay280
  br i1 %cmp281, label %if.then.282, label %if.else.296

if.then.282:                                      ; preds = %if.else.275
  %185 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems283 = getelementptr inbounds %struct.Rule, %struct.Rule* %185, i32 0, i32 6
  %n284 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems283, i32 0, i32 0
  %186 = load i32, i32* %n284, align 4
  %cmp285 = icmp ult i32 %186, 3
  br i1 %cmp285, label %if.then.286, label %if.end.295

if.then.286:                                      ; preds = %if.then.282
  %187 = load %struct.Production*, %struct.Production** %pp, align 8
  %188 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call287 = call %struct.Elem* @new_elem_nterm(%struct.Production* %187, %struct.Rule* %188)
  %189 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems288 = getelementptr inbounds %struct.Rule, %struct.Rule* %189, i32 0, i32 6
  %n289 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems288, i32 0, i32 0
  %190 = load i32, i32* %n289, align 4
  %inc290 = add i32 %190, 1
  store i32 %inc290, i32* %n289, align 4
  %idxprom291 = zext i32 %190 to i64
  %191 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems292 = getelementptr inbounds %struct.Rule, %struct.Rule* %191, i32 0, i32 6
  %v293 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems292, i32 0, i32 2
  %192 = load %struct.Elem**, %struct.Elem*** %v293, align 8
  %arrayidx294 = getelementptr inbounds %struct.Elem*, %struct.Elem** %192, i64 %idxprom291
  store %struct.Elem* %call287, %struct.Elem** %arrayidx294, align 8
  br label %do.end.315

if.end.295:                                       ; preds = %if.then.282
  br label %if.end.311

if.else.296:                                      ; preds = %if.else.275
  %193 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems297 = getelementptr inbounds %struct.Rule, %struct.Rule* %193, i32 0, i32 6
  %n298 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems297, i32 0, i32 0
  %194 = load i32, i32* %n298, align 4
  %and299 = and i32 %194, 7
  %tobool300 = icmp ne i32 %and299, 0
  br i1 %tobool300, label %if.then.301, label %if.end.310

if.then.301:                                      ; preds = %if.else.296
  %195 = load %struct.Production*, %struct.Production** %pp, align 8
  %196 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call302 = call %struct.Elem* @new_elem_nterm(%struct.Production* %195, %struct.Rule* %196)
  %197 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems303 = getelementptr inbounds %struct.Rule, %struct.Rule* %197, i32 0, i32 6
  %n304 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems303, i32 0, i32 0
  %198 = load i32, i32* %n304, align 4
  %inc305 = add i32 %198, 1
  store i32 %inc305, i32* %n304, align 4
  %idxprom306 = zext i32 %198 to i64
  %199 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems307 = getelementptr inbounds %struct.Rule, %struct.Rule* %199, i32 0, i32 6
  %v308 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems307, i32 0, i32 2
  %200 = load %struct.Elem**, %struct.Elem*** %v308, align 8
  %arrayidx309 = getelementptr inbounds %struct.Elem*, %struct.Elem** %200, i64 %idxprom306
  store %struct.Elem* %call302, %struct.Elem** %arrayidx309, align 8
  br label %do.end.315

if.end.310:                                       ; preds = %if.else.296
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.295
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311
  %201 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems313 = getelementptr inbounds %struct.Rule, %struct.Rule* %201, i32 0, i32 6
  %202 = bitcast %struct.anon.0* %elems313 to i8*
  %203 = load %struct.Production*, %struct.Production** %pp, align 8
  %204 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call314 = call %struct.Elem* @new_elem_nterm(%struct.Production* %203, %struct.Rule* %204)
  %205 = bitcast %struct.Elem* %call314 to i8*
  call void @vec_add_internal(i8* %202, i8* %205)
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.312, %if.then.301, %if.then.286, %if.then.263
  br label %if.end.316

if.end.316:                                       ; preds = %do.end.315, %do.end.131
  br label %do.body.317

do.body.317:                                      ; preds = %if.end.316
  %206 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %206, i32 0, i32 2
  %v318 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %207 = load %struct.Rule**, %struct.Rule*** %v318, align 8
  %tobool319 = icmp ne %struct.Rule** %207, null
  br i1 %tobool319, label %if.else.331, label %if.then.320

if.then.320:                                      ; preds = %do.body.317
  %208 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %209 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules321 = getelementptr inbounds %struct.Production, %struct.Production* %209, i32 0, i32 2
  %n322 = getelementptr inbounds %struct.anon, %struct.anon* %rules321, i32 0, i32 0
  %210 = load i32, i32* %n322, align 4
  %inc323 = add i32 %210, 1
  store i32 %inc323, i32* %n322, align 4
  %idxprom324 = zext i32 %210 to i64
  %211 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules325 = getelementptr inbounds %struct.Production, %struct.Production* %211, i32 0, i32 2
  %e326 = getelementptr inbounds %struct.anon, %struct.anon* %rules325, i32 0, i32 3
  %arraydecay327 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e326, i32 0, i32 0
  %212 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules328 = getelementptr inbounds %struct.Production, %struct.Production* %212, i32 0, i32 2
  %v329 = getelementptr inbounds %struct.anon, %struct.anon* %rules328, i32 0, i32 2
  store %struct.Rule** %arraydecay327, %struct.Rule*** %v329, align 8
  %arrayidx330 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay327, i64 %idxprom324
  store %struct.Rule* %208, %struct.Rule** %arrayidx330, align 8
  br label %do.end.368

if.else.331:                                      ; preds = %do.body.317
  %213 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules332 = getelementptr inbounds %struct.Production, %struct.Production* %213, i32 0, i32 2
  %v333 = getelementptr inbounds %struct.anon, %struct.anon* %rules332, i32 0, i32 2
  %214 = load %struct.Rule**, %struct.Rule*** %v333, align 8
  %215 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules334 = getelementptr inbounds %struct.Production, %struct.Production* %215, i32 0, i32 2
  %e335 = getelementptr inbounds %struct.anon, %struct.anon* %rules334, i32 0, i32 3
  %arraydecay336 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e335, i32 0, i32 0
  %cmp337 = icmp eq %struct.Rule** %214, %arraydecay336
  br i1 %cmp337, label %if.then.338, label %if.else.351

if.then.338:                                      ; preds = %if.else.331
  %216 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules339 = getelementptr inbounds %struct.Production, %struct.Production* %216, i32 0, i32 2
  %n340 = getelementptr inbounds %struct.anon, %struct.anon* %rules339, i32 0, i32 0
  %217 = load i32, i32* %n340, align 4
  %cmp341 = icmp ult i32 %217, 3
  br i1 %cmp341, label %if.then.342, label %if.end.350

if.then.342:                                      ; preds = %if.then.338
  %218 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %219 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules343 = getelementptr inbounds %struct.Production, %struct.Production* %219, i32 0, i32 2
  %n344 = getelementptr inbounds %struct.anon, %struct.anon* %rules343, i32 0, i32 0
  %220 = load i32, i32* %n344, align 4
  %inc345 = add i32 %220, 1
  store i32 %inc345, i32* %n344, align 4
  %idxprom346 = zext i32 %220 to i64
  %221 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules347 = getelementptr inbounds %struct.Production, %struct.Production* %221, i32 0, i32 2
  %v348 = getelementptr inbounds %struct.anon, %struct.anon* %rules347, i32 0, i32 2
  %222 = load %struct.Rule**, %struct.Rule*** %v348, align 8
  %arrayidx349 = getelementptr inbounds %struct.Rule*, %struct.Rule** %222, i64 %idxprom346
  store %struct.Rule* %218, %struct.Rule** %arrayidx349, align 8
  br label %do.end.368

if.end.350:                                       ; preds = %if.then.338
  br label %if.end.365

if.else.351:                                      ; preds = %if.else.331
  %223 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules352 = getelementptr inbounds %struct.Production, %struct.Production* %223, i32 0, i32 2
  %n353 = getelementptr inbounds %struct.anon, %struct.anon* %rules352, i32 0, i32 0
  %224 = load i32, i32* %n353, align 4
  %and354 = and i32 %224, 7
  %tobool355 = icmp ne i32 %and354, 0
  br i1 %tobool355, label %if.then.356, label %if.end.364

if.then.356:                                      ; preds = %if.else.351
  %225 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %226 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules357 = getelementptr inbounds %struct.Production, %struct.Production* %226, i32 0, i32 2
  %n358 = getelementptr inbounds %struct.anon, %struct.anon* %rules357, i32 0, i32 0
  %227 = load i32, i32* %n358, align 4
  %inc359 = add i32 %227, 1
  store i32 %inc359, i32* %n358, align 4
  %idxprom360 = zext i32 %227 to i64
  %228 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules361 = getelementptr inbounds %struct.Production, %struct.Production* %228, i32 0, i32 2
  %v362 = getelementptr inbounds %struct.anon, %struct.anon* %rules361, i32 0, i32 2
  %229 = load %struct.Rule**, %struct.Rule*** %v362, align 8
  %arrayidx363 = getelementptr inbounds %struct.Rule*, %struct.Rule** %229, i64 %idxprom360
  store %struct.Rule* %225, %struct.Rule** %arrayidx363, align 8
  br label %do.end.368

if.end.364:                                       ; preds = %if.else.351
  br label %if.end.365

if.end.365:                                       ; preds = %if.end.364, %if.end.350
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365
  %230 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules367 = getelementptr inbounds %struct.Production, %struct.Production* %230, i32 0, i32 2
  %231 = bitcast %struct.anon* %rules367 to i8*
  %232 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %233 = bitcast %struct.Rule* %232 to i8*
  call void @vec_add_internal(i8* %231, i8* %233)
  br label %do.end.368

do.end.368:                                       ; preds = %if.end.366, %if.then.356, %if.then.342, %if.then.320
  br label %do.body.369

do.body.369:                                      ; preds = %do.end.368
  %234 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules370 = getelementptr inbounds %struct.Production, %struct.Production* %234, i32 0, i32 2
  %v371 = getelementptr inbounds %struct.anon, %struct.anon* %rules370, i32 0, i32 2
  %235 = load %struct.Rule**, %struct.Rule*** %v371, align 8
  %tobool372 = icmp ne %struct.Rule** %235, null
  br i1 %tobool372, label %if.else.385, label %if.then.373

if.then.373:                                      ; preds = %do.body.369
  %236 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %237 = load %struct.Production*, %struct.Production** %pp, align 8
  %call374 = call %struct.Rule* @new_rule(%struct.Grammar* %236, %struct.Production* %237)
  %238 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules375 = getelementptr inbounds %struct.Production, %struct.Production* %238, i32 0, i32 2
  %n376 = getelementptr inbounds %struct.anon, %struct.anon* %rules375, i32 0, i32 0
  %239 = load i32, i32* %n376, align 4
  %inc377 = add i32 %239, 1
  store i32 %inc377, i32* %n376, align 4
  %idxprom378 = zext i32 %239 to i64
  %240 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules379 = getelementptr inbounds %struct.Production, %struct.Production* %240, i32 0, i32 2
  %e380 = getelementptr inbounds %struct.anon, %struct.anon* %rules379, i32 0, i32 3
  %arraydecay381 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e380, i32 0, i32 0
  %241 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules382 = getelementptr inbounds %struct.Production, %struct.Production* %241, i32 0, i32 2
  %v383 = getelementptr inbounds %struct.anon, %struct.anon* %rules382, i32 0, i32 2
  store %struct.Rule** %arraydecay381, %struct.Rule*** %v383, align 8
  %arrayidx384 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay381, i64 %idxprom378
  store %struct.Rule* %call374, %struct.Rule** %arrayidx384, align 8
  br label %do.end.425

if.else.385:                                      ; preds = %do.body.369
  %242 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules386 = getelementptr inbounds %struct.Production, %struct.Production* %242, i32 0, i32 2
  %v387 = getelementptr inbounds %struct.anon, %struct.anon* %rules386, i32 0, i32 2
  %243 = load %struct.Rule**, %struct.Rule*** %v387, align 8
  %244 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules388 = getelementptr inbounds %struct.Production, %struct.Production* %244, i32 0, i32 2
  %e389 = getelementptr inbounds %struct.anon, %struct.anon* %rules388, i32 0, i32 3
  %arraydecay390 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e389, i32 0, i32 0
  %cmp391 = icmp eq %struct.Rule** %243, %arraydecay390
  br i1 %cmp391, label %if.then.392, label %if.else.406

if.then.392:                                      ; preds = %if.else.385
  %245 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules393 = getelementptr inbounds %struct.Production, %struct.Production* %245, i32 0, i32 2
  %n394 = getelementptr inbounds %struct.anon, %struct.anon* %rules393, i32 0, i32 0
  %246 = load i32, i32* %n394, align 4
  %cmp395 = icmp ult i32 %246, 3
  br i1 %cmp395, label %if.then.396, label %if.end.405

if.then.396:                                      ; preds = %if.then.392
  %247 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %248 = load %struct.Production*, %struct.Production** %pp, align 8
  %call397 = call %struct.Rule* @new_rule(%struct.Grammar* %247, %struct.Production* %248)
  %249 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules398 = getelementptr inbounds %struct.Production, %struct.Production* %249, i32 0, i32 2
  %n399 = getelementptr inbounds %struct.anon, %struct.anon* %rules398, i32 0, i32 0
  %250 = load i32, i32* %n399, align 4
  %inc400 = add i32 %250, 1
  store i32 %inc400, i32* %n399, align 4
  %idxprom401 = zext i32 %250 to i64
  %251 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules402 = getelementptr inbounds %struct.Production, %struct.Production* %251, i32 0, i32 2
  %v403 = getelementptr inbounds %struct.anon, %struct.anon* %rules402, i32 0, i32 2
  %252 = load %struct.Rule**, %struct.Rule*** %v403, align 8
  %arrayidx404 = getelementptr inbounds %struct.Rule*, %struct.Rule** %252, i64 %idxprom401
  store %struct.Rule* %call397, %struct.Rule** %arrayidx404, align 8
  br label %do.end.425

if.end.405:                                       ; preds = %if.then.392
  br label %if.end.421

if.else.406:                                      ; preds = %if.else.385
  %253 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules407 = getelementptr inbounds %struct.Production, %struct.Production* %253, i32 0, i32 2
  %n408 = getelementptr inbounds %struct.anon, %struct.anon* %rules407, i32 0, i32 0
  %254 = load i32, i32* %n408, align 4
  %and409 = and i32 %254, 7
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.then.411, label %if.end.420

if.then.411:                                      ; preds = %if.else.406
  %255 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %256 = load %struct.Production*, %struct.Production** %pp, align 8
  %call412 = call %struct.Rule* @new_rule(%struct.Grammar* %255, %struct.Production* %256)
  %257 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules413 = getelementptr inbounds %struct.Production, %struct.Production* %257, i32 0, i32 2
  %n414 = getelementptr inbounds %struct.anon, %struct.anon* %rules413, i32 0, i32 0
  %258 = load i32, i32* %n414, align 4
  %inc415 = add i32 %258, 1
  store i32 %inc415, i32* %n414, align 4
  %idxprom416 = zext i32 %258 to i64
  %259 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules417 = getelementptr inbounds %struct.Production, %struct.Production* %259, i32 0, i32 2
  %v418 = getelementptr inbounds %struct.anon, %struct.anon* %rules417, i32 0, i32 2
  %260 = load %struct.Rule**, %struct.Rule*** %v418, align 8
  %arrayidx419 = getelementptr inbounds %struct.Rule*, %struct.Rule** %260, i64 %idxprom416
  store %struct.Rule* %call412, %struct.Rule** %arrayidx419, align 8
  br label %do.end.425

if.end.420:                                       ; preds = %if.else.406
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.end.405
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421
  %261 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules423 = getelementptr inbounds %struct.Production, %struct.Production* %261, i32 0, i32 2
  %262 = bitcast %struct.anon* %rules423 to i8*
  %263 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %264 = load %struct.Production*, %struct.Production** %pp, align 8
  %call424 = call %struct.Rule* @new_rule(%struct.Grammar* %263, %struct.Production* %264)
  %265 = bitcast %struct.Rule* %call424 to i8*
  call void @vec_add_internal(i8* %262, i8* %265)
  br label %do.end.425

do.end.425:                                       ; preds = %if.end.422, %if.then.411, %if.then.396, %if.then.373
  ret void
}

; Function Attrs: nounwind uwtable
define void @plus_EBNF(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pp = alloca %struct.Production*, align 8
  %rr = alloca %struct.Rule*, align 8
  %elem = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 23
  %2 = load %struct.Production*, %struct.Production** %p, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %0, %struct.Production* %2)
  store %struct.Production* %call, %struct.Production** %pp, align 8
  %3 = load %struct.Production*, %struct.Production** %pp, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.clear = and i8 %bf.load, -29
  %bf.set = or i8 %bf.clear, 16
  store i8 %bf.set, i8* %internal, align 4
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %5 = load %struct.Production*, %struct.Production** %pp, align 8
  %call1 = call %struct.Rule* @new_rule(%struct.Grammar* %4, %struct.Production* %5)
  store %struct.Rule* %call1, %struct.Rule** %rr, align 8
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %right_recursive_BNF = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 11
  %7 = load i32, i32* %right_recursive_BNF, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.else.120, label %if.then

if.then:                                          ; preds = %entry
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 24
  %9 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %9, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %sub = sub i32 %10, 1
  %idxprom = zext i32 %sub to i64
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r2 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 24
  %12 = load %struct.Rule*, %struct.Rule** %r2, align 8
  %elems3 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems3, i32 0, i32 2
  %13 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %13, i64 %idxprom
  %14 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  store %struct.Elem* %14, %struct.Elem** %elem, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %15 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems4 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %v5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems4, i32 0, i32 2
  %16 = load %struct.Elem**, %struct.Elem*** %v5, align 8
  %tobool6 = icmp ne %struct.Elem** %16, null
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %do.body
  %17 = load %struct.Production*, %struct.Production** %pp, align 8
  %18 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call8 = call %struct.Elem* @new_elem_nterm(%struct.Production* %17, %struct.Rule* %18)
  %19 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems9 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %n10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems9, i32 0, i32 0
  %20 = load i32, i32* %n10, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %n10, align 4
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems12 = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 6
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %22 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems13 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 6
  %v14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems13, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom11
  store %struct.Elem* %call8, %struct.Elem** %arrayidx15, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %23 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems16 = getelementptr inbounds %struct.Rule, %struct.Rule* %23, i32 0, i32 6
  %v17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems16, i32 0, i32 2
  %24 = load %struct.Elem**, %struct.Elem*** %v17, align 8
  %25 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems18 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %e19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems18, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e19, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %24, %arraydecay20
  br i1 %cmp, label %if.then.21, label %if.else.34

if.then.21:                                       ; preds = %if.else
  %26 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems22 = getelementptr inbounds %struct.Rule, %struct.Rule* %26, i32 0, i32 6
  %n23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems22, i32 0, i32 0
  %27 = load i32, i32* %n23, align 4
  %cmp24 = icmp ult i32 %27, 3
  br i1 %cmp24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.21
  %28 = load %struct.Production*, %struct.Production** %pp, align 8
  %29 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call26 = call %struct.Elem* @new_elem_nterm(%struct.Production* %28, %struct.Rule* %29)
  %30 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems27 = getelementptr inbounds %struct.Rule, %struct.Rule* %30, i32 0, i32 6
  %n28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems27, i32 0, i32 0
  %31 = load i32, i32* %n28, align 4
  %inc29 = add i32 %31, 1
  store i32 %inc29, i32* %n28, align 4
  %idxprom30 = zext i32 %31 to i64
  %32 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems31 = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 6
  %v32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems31, i32 0, i32 2
  %33 = load %struct.Elem**, %struct.Elem*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.Elem*, %struct.Elem** %33, i64 %idxprom30
  store %struct.Elem* %call26, %struct.Elem** %arrayidx33, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.21
  br label %if.end.48

if.else.34:                                       ; preds = %if.else
  %34 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems35 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 6
  %n36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems35, i32 0, i32 0
  %35 = load i32, i32* %n36, align 4
  %and = and i32 %35, 7
  %tobool37 = icmp ne i32 %and, 0
  br i1 %tobool37, label %if.then.38, label %if.end.47

if.then.38:                                       ; preds = %if.else.34
  %36 = load %struct.Production*, %struct.Production** %pp, align 8
  %37 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call39 = call %struct.Elem* @new_elem_nterm(%struct.Production* %36, %struct.Rule* %37)
  %38 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems40 = getelementptr inbounds %struct.Rule, %struct.Rule* %38, i32 0, i32 6
  %n41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems40, i32 0, i32 0
  %39 = load i32, i32* %n41, align 4
  %inc42 = add i32 %39, 1
  store i32 %inc42, i32* %n41, align 4
  %idxprom43 = zext i32 %39 to i64
  %40 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems44 = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 6
  %v45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems44, i32 0, i32 2
  %41 = load %struct.Elem**, %struct.Elem*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Elem*, %struct.Elem** %41, i64 %idxprom43
  store %struct.Elem* %call39, %struct.Elem** %arrayidx46, align 8
  br label %do.end

if.end.47:                                        ; preds = %if.else.34
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48
  %42 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems50 = getelementptr inbounds %struct.Rule, %struct.Rule* %42, i32 0, i32 6
  %43 = bitcast %struct.anon.0* %elems50 to i8*
  %44 = load %struct.Production*, %struct.Production** %pp, align 8
  %45 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call51 = call %struct.Elem* @new_elem_nterm(%struct.Production* %44, %struct.Rule* %45)
  %46 = bitcast %struct.Elem* %call51 to i8*
  call void @vec_add_internal(i8* %43, i8* %46)
  br label %do.end

do.end:                                           ; preds = %if.end.49, %if.then.38, %if.then.25, %if.then.7
  br label %do.body.52

do.body.52:                                       ; preds = %do.end
  %47 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems53 = getelementptr inbounds %struct.Rule, %struct.Rule* %47, i32 0, i32 6
  %v54 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems53, i32 0, i32 2
  %48 = load %struct.Elem**, %struct.Elem*** %v54, align 8
  %tobool55 = icmp ne %struct.Elem** %48, null
  br i1 %tobool55, label %if.else.68, label %if.then.56

if.then.56:                                       ; preds = %do.body.52
  %49 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %50 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call57 = call %struct.Elem* @dup_elem(%struct.Elem* %49, %struct.Rule* %50)
  %51 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems58 = getelementptr inbounds %struct.Rule, %struct.Rule* %51, i32 0, i32 6
  %n59 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems58, i32 0, i32 0
  %52 = load i32, i32* %n59, align 4
  %inc60 = add i32 %52, 1
  store i32 %inc60, i32* %n59, align 4
  %idxprom61 = zext i32 %52 to i64
  %53 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems62 = getelementptr inbounds %struct.Rule, %struct.Rule* %53, i32 0, i32 6
  %e63 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems62, i32 0, i32 3
  %arraydecay64 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e63, i32 0, i32 0
  %54 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems65 = getelementptr inbounds %struct.Rule, %struct.Rule* %54, i32 0, i32 6
  %v66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems65, i32 0, i32 2
  store %struct.Elem** %arraydecay64, %struct.Elem*** %v66, align 8
  %arrayidx67 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay64, i64 %idxprom61
  store %struct.Elem* %call57, %struct.Elem** %arrayidx67, align 8
  br label %do.end.108

if.else.68:                                       ; preds = %do.body.52
  %55 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems69 = getelementptr inbounds %struct.Rule, %struct.Rule* %55, i32 0, i32 6
  %v70 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems69, i32 0, i32 2
  %56 = load %struct.Elem**, %struct.Elem*** %v70, align 8
  %57 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems71 = getelementptr inbounds %struct.Rule, %struct.Rule* %57, i32 0, i32 6
  %e72 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems71, i32 0, i32 3
  %arraydecay73 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e72, i32 0, i32 0
  %cmp74 = icmp eq %struct.Elem** %56, %arraydecay73
  br i1 %cmp74, label %if.then.75, label %if.else.89

if.then.75:                                       ; preds = %if.else.68
  %58 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems76 = getelementptr inbounds %struct.Rule, %struct.Rule* %58, i32 0, i32 6
  %n77 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems76, i32 0, i32 0
  %59 = load i32, i32* %n77, align 4
  %cmp78 = icmp ult i32 %59, 3
  br i1 %cmp78, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %if.then.75
  %60 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %61 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call80 = call %struct.Elem* @dup_elem(%struct.Elem* %60, %struct.Rule* %61)
  %62 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems81 = getelementptr inbounds %struct.Rule, %struct.Rule* %62, i32 0, i32 6
  %n82 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems81, i32 0, i32 0
  %63 = load i32, i32* %n82, align 4
  %inc83 = add i32 %63, 1
  store i32 %inc83, i32* %n82, align 4
  %idxprom84 = zext i32 %63 to i64
  %64 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems85 = getelementptr inbounds %struct.Rule, %struct.Rule* %64, i32 0, i32 6
  %v86 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems85, i32 0, i32 2
  %65 = load %struct.Elem**, %struct.Elem*** %v86, align 8
  %arrayidx87 = getelementptr inbounds %struct.Elem*, %struct.Elem** %65, i64 %idxprom84
  store %struct.Elem* %call80, %struct.Elem** %arrayidx87, align 8
  br label %do.end.108

if.end.88:                                        ; preds = %if.then.75
  br label %if.end.104

if.else.89:                                       ; preds = %if.else.68
  %66 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems90 = getelementptr inbounds %struct.Rule, %struct.Rule* %66, i32 0, i32 6
  %n91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems90, i32 0, i32 0
  %67 = load i32, i32* %n91, align 4
  %and92 = and i32 %67, 7
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %if.else.89
  %68 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %69 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call95 = call %struct.Elem* @dup_elem(%struct.Elem* %68, %struct.Rule* %69)
  %70 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems96 = getelementptr inbounds %struct.Rule, %struct.Rule* %70, i32 0, i32 6
  %n97 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems96, i32 0, i32 0
  %71 = load i32, i32* %n97, align 4
  %inc98 = add i32 %71, 1
  store i32 %inc98, i32* %n97, align 4
  %idxprom99 = zext i32 %71 to i64
  %72 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems100 = getelementptr inbounds %struct.Rule, %struct.Rule* %72, i32 0, i32 6
  %v101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems100, i32 0, i32 2
  %73 = load %struct.Elem**, %struct.Elem*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.Elem*, %struct.Elem** %73, i64 %idxprom99
  store %struct.Elem* %call95, %struct.Elem** %arrayidx102, align 8
  br label %do.end.108

if.end.103:                                       ; preds = %if.else.89
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %if.end.88
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104
  %74 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems106 = getelementptr inbounds %struct.Rule, %struct.Rule* %74, i32 0, i32 6
  %75 = bitcast %struct.anon.0* %elems106 to i8*
  %76 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %77 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call107 = call %struct.Elem* @dup_elem(%struct.Elem* %76, %struct.Rule* %77)
  %78 = bitcast %struct.Elem* %call107 to i8*
  call void @vec_add_internal(i8* %75, i8* %78)
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.105, %if.then.94, %if.then.79, %if.then.56
  %79 = load %struct.Production*, %struct.Production** %pp, align 8
  %80 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r109 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %80, i32 0, i32 24
  %81 = load %struct.Rule*, %struct.Rule** %r109, align 8
  %call110 = call %struct.Elem* @new_elem_nterm(%struct.Production* %79, %struct.Rule* %81)
  %82 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r111 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %82, i32 0, i32 24
  %83 = load %struct.Rule*, %struct.Rule** %r111, align 8
  %elems112 = getelementptr inbounds %struct.Rule, %struct.Rule* %83, i32 0, i32 6
  %n113 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems112, i32 0, i32 0
  %84 = load i32, i32* %n113, align 4
  %sub114 = sub i32 %84, 1
  %idxprom115 = zext i32 %sub114 to i64
  %85 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r116 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %85, i32 0, i32 24
  %86 = load %struct.Rule*, %struct.Rule** %r116, align 8
  %elems117 = getelementptr inbounds %struct.Rule, %struct.Rule* %86, i32 0, i32 6
  %v118 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems117, i32 0, i32 2
  %87 = load %struct.Elem**, %struct.Elem*** %v118, align 8
  %arrayidx119 = getelementptr inbounds %struct.Elem*, %struct.Elem** %87, i64 %idxprom115
  store %struct.Elem* %call110, %struct.Elem** %arrayidx119, align 8
  br label %if.end.255

if.else.120:                                      ; preds = %entry
  %88 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r121 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %88, i32 0, i32 24
  %89 = load %struct.Rule*, %struct.Rule** %r121, align 8
  %elems122 = getelementptr inbounds %struct.Rule, %struct.Rule* %89, i32 0, i32 6
  %n123 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems122, i32 0, i32 0
  %90 = load i32, i32* %n123, align 4
  %sub124 = sub i32 %90, 1
  %idxprom125 = zext i32 %sub124 to i64
  %91 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r126 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %91, i32 0, i32 24
  %92 = load %struct.Rule*, %struct.Rule** %r126, align 8
  %elems127 = getelementptr inbounds %struct.Rule, %struct.Rule* %92, i32 0, i32 6
  %v128 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems127, i32 0, i32 2
  %93 = load %struct.Elem**, %struct.Elem*** %v128, align 8
  %arrayidx129 = getelementptr inbounds %struct.Elem*, %struct.Elem** %93, i64 %idxprom125
  %94 = load %struct.Elem*, %struct.Elem** %arrayidx129, align 8
  store %struct.Elem* %94, %struct.Elem** %elem, align 8
  br label %do.body.130

do.body.130:                                      ; preds = %if.else.120
  %95 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems131 = getelementptr inbounds %struct.Rule, %struct.Rule* %95, i32 0, i32 6
  %v132 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems131, i32 0, i32 2
  %96 = load %struct.Elem**, %struct.Elem*** %v132, align 8
  %tobool133 = icmp ne %struct.Elem** %96, null
  br i1 %tobool133, label %if.else.146, label %if.then.134

if.then.134:                                      ; preds = %do.body.130
  %97 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %98 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call135 = call %struct.Elem* @dup_elem(%struct.Elem* %97, %struct.Rule* %98)
  %99 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems136 = getelementptr inbounds %struct.Rule, %struct.Rule* %99, i32 0, i32 6
  %n137 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems136, i32 0, i32 0
  %100 = load i32, i32* %n137, align 4
  %inc138 = add i32 %100, 1
  store i32 %inc138, i32* %n137, align 4
  %idxprom139 = zext i32 %100 to i64
  %101 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems140 = getelementptr inbounds %struct.Rule, %struct.Rule* %101, i32 0, i32 6
  %e141 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems140, i32 0, i32 3
  %arraydecay142 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e141, i32 0, i32 0
  %102 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems143 = getelementptr inbounds %struct.Rule, %struct.Rule* %102, i32 0, i32 6
  %v144 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems143, i32 0, i32 2
  store %struct.Elem** %arraydecay142, %struct.Elem*** %v144, align 8
  %arrayidx145 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay142, i64 %idxprom139
  store %struct.Elem* %call135, %struct.Elem** %arrayidx145, align 8
  br label %do.end.186

if.else.146:                                      ; preds = %do.body.130
  %103 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems147 = getelementptr inbounds %struct.Rule, %struct.Rule* %103, i32 0, i32 6
  %v148 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems147, i32 0, i32 2
  %104 = load %struct.Elem**, %struct.Elem*** %v148, align 8
  %105 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems149 = getelementptr inbounds %struct.Rule, %struct.Rule* %105, i32 0, i32 6
  %e150 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems149, i32 0, i32 3
  %arraydecay151 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e150, i32 0, i32 0
  %cmp152 = icmp eq %struct.Elem** %104, %arraydecay151
  br i1 %cmp152, label %if.then.153, label %if.else.167

if.then.153:                                      ; preds = %if.else.146
  %106 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems154 = getelementptr inbounds %struct.Rule, %struct.Rule* %106, i32 0, i32 6
  %n155 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems154, i32 0, i32 0
  %107 = load i32, i32* %n155, align 4
  %cmp156 = icmp ult i32 %107, 3
  br i1 %cmp156, label %if.then.157, label %if.end.166

if.then.157:                                      ; preds = %if.then.153
  %108 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %109 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call158 = call %struct.Elem* @dup_elem(%struct.Elem* %108, %struct.Rule* %109)
  %110 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems159 = getelementptr inbounds %struct.Rule, %struct.Rule* %110, i32 0, i32 6
  %n160 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems159, i32 0, i32 0
  %111 = load i32, i32* %n160, align 4
  %inc161 = add i32 %111, 1
  store i32 %inc161, i32* %n160, align 4
  %idxprom162 = zext i32 %111 to i64
  %112 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems163 = getelementptr inbounds %struct.Rule, %struct.Rule* %112, i32 0, i32 6
  %v164 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems163, i32 0, i32 2
  %113 = load %struct.Elem**, %struct.Elem*** %v164, align 8
  %arrayidx165 = getelementptr inbounds %struct.Elem*, %struct.Elem** %113, i64 %idxprom162
  store %struct.Elem* %call158, %struct.Elem** %arrayidx165, align 8
  br label %do.end.186

if.end.166:                                       ; preds = %if.then.153
  br label %if.end.182

if.else.167:                                      ; preds = %if.else.146
  %114 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems168 = getelementptr inbounds %struct.Rule, %struct.Rule* %114, i32 0, i32 6
  %n169 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems168, i32 0, i32 0
  %115 = load i32, i32* %n169, align 4
  %and170 = and i32 %115, 7
  %tobool171 = icmp ne i32 %and170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.181

if.then.172:                                      ; preds = %if.else.167
  %116 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %117 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call173 = call %struct.Elem* @dup_elem(%struct.Elem* %116, %struct.Rule* %117)
  %118 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems174 = getelementptr inbounds %struct.Rule, %struct.Rule* %118, i32 0, i32 6
  %n175 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems174, i32 0, i32 0
  %119 = load i32, i32* %n175, align 4
  %inc176 = add i32 %119, 1
  store i32 %inc176, i32* %n175, align 4
  %idxprom177 = zext i32 %119 to i64
  %120 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems178 = getelementptr inbounds %struct.Rule, %struct.Rule* %120, i32 0, i32 6
  %v179 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems178, i32 0, i32 2
  %121 = load %struct.Elem**, %struct.Elem*** %v179, align 8
  %arrayidx180 = getelementptr inbounds %struct.Elem*, %struct.Elem** %121, i64 %idxprom177
  store %struct.Elem* %call173, %struct.Elem** %arrayidx180, align 8
  br label %do.end.186

if.end.181:                                       ; preds = %if.else.167
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.end.166
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182
  %122 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems184 = getelementptr inbounds %struct.Rule, %struct.Rule* %122, i32 0, i32 6
  %123 = bitcast %struct.anon.0* %elems184 to i8*
  %124 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %125 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call185 = call %struct.Elem* @dup_elem(%struct.Elem* %124, %struct.Rule* %125)
  %126 = bitcast %struct.Elem* %call185 to i8*
  call void @vec_add_internal(i8* %123, i8* %126)
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.183, %if.then.172, %if.then.157, %if.then.134
  %127 = load %struct.Production*, %struct.Production** %pp, align 8
  %128 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r187 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %128, i32 0, i32 24
  %129 = load %struct.Rule*, %struct.Rule** %r187, align 8
  %call188 = call %struct.Elem* @new_elem_nterm(%struct.Production* %127, %struct.Rule* %129)
  %130 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r189 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %130, i32 0, i32 24
  %131 = load %struct.Rule*, %struct.Rule** %r189, align 8
  %elems190 = getelementptr inbounds %struct.Rule, %struct.Rule* %131, i32 0, i32 6
  %n191 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems190, i32 0, i32 0
  %132 = load i32, i32* %n191, align 4
  %sub192 = sub i32 %132, 1
  %idxprom193 = zext i32 %sub192 to i64
  %133 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %r194 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %133, i32 0, i32 24
  %134 = load %struct.Rule*, %struct.Rule** %r194, align 8
  %elems195 = getelementptr inbounds %struct.Rule, %struct.Rule* %134, i32 0, i32 6
  %v196 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems195, i32 0, i32 2
  %135 = load %struct.Elem**, %struct.Elem*** %v196, align 8
  %arrayidx197 = getelementptr inbounds %struct.Elem*, %struct.Elem** %135, i64 %idxprom193
  store %struct.Elem* %call188, %struct.Elem** %arrayidx197, align 8
  br label %do.body.198

do.body.198:                                      ; preds = %do.end.186
  %136 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems199 = getelementptr inbounds %struct.Rule, %struct.Rule* %136, i32 0, i32 6
  %v200 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems199, i32 0, i32 2
  %137 = load %struct.Elem**, %struct.Elem*** %v200, align 8
  %tobool201 = icmp ne %struct.Elem** %137, null
  br i1 %tobool201, label %if.else.214, label %if.then.202

if.then.202:                                      ; preds = %do.body.198
  %138 = load %struct.Production*, %struct.Production** %pp, align 8
  %139 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call203 = call %struct.Elem* @new_elem_nterm(%struct.Production* %138, %struct.Rule* %139)
  %140 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems204 = getelementptr inbounds %struct.Rule, %struct.Rule* %140, i32 0, i32 6
  %n205 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems204, i32 0, i32 0
  %141 = load i32, i32* %n205, align 4
  %inc206 = add i32 %141, 1
  store i32 %inc206, i32* %n205, align 4
  %idxprom207 = zext i32 %141 to i64
  %142 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems208 = getelementptr inbounds %struct.Rule, %struct.Rule* %142, i32 0, i32 6
  %e209 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems208, i32 0, i32 3
  %arraydecay210 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e209, i32 0, i32 0
  %143 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems211 = getelementptr inbounds %struct.Rule, %struct.Rule* %143, i32 0, i32 6
  %v212 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems211, i32 0, i32 2
  store %struct.Elem** %arraydecay210, %struct.Elem*** %v212, align 8
  %arrayidx213 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay210, i64 %idxprom207
  store %struct.Elem* %call203, %struct.Elem** %arrayidx213, align 8
  br label %do.end.254

if.else.214:                                      ; preds = %do.body.198
  %144 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems215 = getelementptr inbounds %struct.Rule, %struct.Rule* %144, i32 0, i32 6
  %v216 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems215, i32 0, i32 2
  %145 = load %struct.Elem**, %struct.Elem*** %v216, align 8
  %146 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems217 = getelementptr inbounds %struct.Rule, %struct.Rule* %146, i32 0, i32 6
  %e218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems217, i32 0, i32 3
  %arraydecay219 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e218, i32 0, i32 0
  %cmp220 = icmp eq %struct.Elem** %145, %arraydecay219
  br i1 %cmp220, label %if.then.221, label %if.else.235

if.then.221:                                      ; preds = %if.else.214
  %147 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems222 = getelementptr inbounds %struct.Rule, %struct.Rule* %147, i32 0, i32 6
  %n223 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems222, i32 0, i32 0
  %148 = load i32, i32* %n223, align 4
  %cmp224 = icmp ult i32 %148, 3
  br i1 %cmp224, label %if.then.225, label %if.end.234

if.then.225:                                      ; preds = %if.then.221
  %149 = load %struct.Production*, %struct.Production** %pp, align 8
  %150 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call226 = call %struct.Elem* @new_elem_nterm(%struct.Production* %149, %struct.Rule* %150)
  %151 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems227 = getelementptr inbounds %struct.Rule, %struct.Rule* %151, i32 0, i32 6
  %n228 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems227, i32 0, i32 0
  %152 = load i32, i32* %n228, align 4
  %inc229 = add i32 %152, 1
  store i32 %inc229, i32* %n228, align 4
  %idxprom230 = zext i32 %152 to i64
  %153 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems231 = getelementptr inbounds %struct.Rule, %struct.Rule* %153, i32 0, i32 6
  %v232 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems231, i32 0, i32 2
  %154 = load %struct.Elem**, %struct.Elem*** %v232, align 8
  %arrayidx233 = getelementptr inbounds %struct.Elem*, %struct.Elem** %154, i64 %idxprom230
  store %struct.Elem* %call226, %struct.Elem** %arrayidx233, align 8
  br label %do.end.254

if.end.234:                                       ; preds = %if.then.221
  br label %if.end.250

if.else.235:                                      ; preds = %if.else.214
  %155 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems236 = getelementptr inbounds %struct.Rule, %struct.Rule* %155, i32 0, i32 6
  %n237 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems236, i32 0, i32 0
  %156 = load i32, i32* %n237, align 4
  %and238 = and i32 %156, 7
  %tobool239 = icmp ne i32 %and238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.249

if.then.240:                                      ; preds = %if.else.235
  %157 = load %struct.Production*, %struct.Production** %pp, align 8
  %158 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call241 = call %struct.Elem* @new_elem_nterm(%struct.Production* %157, %struct.Rule* %158)
  %159 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems242 = getelementptr inbounds %struct.Rule, %struct.Rule* %159, i32 0, i32 6
  %n243 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems242, i32 0, i32 0
  %160 = load i32, i32* %n243, align 4
  %inc244 = add i32 %160, 1
  store i32 %inc244, i32* %n243, align 4
  %idxprom245 = zext i32 %160 to i64
  %161 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems246 = getelementptr inbounds %struct.Rule, %struct.Rule* %161, i32 0, i32 6
  %v247 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems246, i32 0, i32 2
  %162 = load %struct.Elem**, %struct.Elem*** %v247, align 8
  %arrayidx248 = getelementptr inbounds %struct.Elem*, %struct.Elem** %162, i64 %idxprom245
  store %struct.Elem* %call241, %struct.Elem** %arrayidx248, align 8
  br label %do.end.254

if.end.249:                                       ; preds = %if.else.235
  br label %if.end.250

if.end.250:                                       ; preds = %if.end.249, %if.end.234
  br label %if.end.251

if.end.251:                                       ; preds = %if.end.250
  %163 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems252 = getelementptr inbounds %struct.Rule, %struct.Rule* %163, i32 0, i32 6
  %164 = bitcast %struct.anon.0* %elems252 to i8*
  %165 = load %struct.Production*, %struct.Production** %pp, align 8
  %166 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call253 = call %struct.Elem* @new_elem_nterm(%struct.Production* %165, %struct.Rule* %166)
  %167 = bitcast %struct.Elem* %call253 to i8*
  call void @vec_add_internal(i8* %164, i8* %167)
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.251, %if.then.240, %if.then.225, %if.then.202
  br label %if.end.255

if.end.255:                                       ; preds = %do.end.254, %do.end.108
  br label %do.body.256

do.body.256:                                      ; preds = %if.end.255
  %168 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %168, i32 0, i32 2
  %v257 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %169 = load %struct.Rule**, %struct.Rule*** %v257, align 8
  %tobool258 = icmp ne %struct.Rule** %169, null
  br i1 %tobool258, label %if.else.270, label %if.then.259

if.then.259:                                      ; preds = %do.body.256
  %170 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %171 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules260 = getelementptr inbounds %struct.Production, %struct.Production* %171, i32 0, i32 2
  %n261 = getelementptr inbounds %struct.anon, %struct.anon* %rules260, i32 0, i32 0
  %172 = load i32, i32* %n261, align 4
  %inc262 = add i32 %172, 1
  store i32 %inc262, i32* %n261, align 4
  %idxprom263 = zext i32 %172 to i64
  %173 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules264 = getelementptr inbounds %struct.Production, %struct.Production* %173, i32 0, i32 2
  %e265 = getelementptr inbounds %struct.anon, %struct.anon* %rules264, i32 0, i32 3
  %arraydecay266 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e265, i32 0, i32 0
  %174 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules267 = getelementptr inbounds %struct.Production, %struct.Production* %174, i32 0, i32 2
  %v268 = getelementptr inbounds %struct.anon, %struct.anon* %rules267, i32 0, i32 2
  store %struct.Rule** %arraydecay266, %struct.Rule*** %v268, align 8
  %arrayidx269 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay266, i64 %idxprom263
  store %struct.Rule* %170, %struct.Rule** %arrayidx269, align 8
  br label %do.end.307

if.else.270:                                      ; preds = %do.body.256
  %175 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules271 = getelementptr inbounds %struct.Production, %struct.Production* %175, i32 0, i32 2
  %v272 = getelementptr inbounds %struct.anon, %struct.anon* %rules271, i32 0, i32 2
  %176 = load %struct.Rule**, %struct.Rule*** %v272, align 8
  %177 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules273 = getelementptr inbounds %struct.Production, %struct.Production* %177, i32 0, i32 2
  %e274 = getelementptr inbounds %struct.anon, %struct.anon* %rules273, i32 0, i32 3
  %arraydecay275 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e274, i32 0, i32 0
  %cmp276 = icmp eq %struct.Rule** %176, %arraydecay275
  br i1 %cmp276, label %if.then.277, label %if.else.290

if.then.277:                                      ; preds = %if.else.270
  %178 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules278 = getelementptr inbounds %struct.Production, %struct.Production* %178, i32 0, i32 2
  %n279 = getelementptr inbounds %struct.anon, %struct.anon* %rules278, i32 0, i32 0
  %179 = load i32, i32* %n279, align 4
  %cmp280 = icmp ult i32 %179, 3
  br i1 %cmp280, label %if.then.281, label %if.end.289

if.then.281:                                      ; preds = %if.then.277
  %180 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %181 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules282 = getelementptr inbounds %struct.Production, %struct.Production* %181, i32 0, i32 2
  %n283 = getelementptr inbounds %struct.anon, %struct.anon* %rules282, i32 0, i32 0
  %182 = load i32, i32* %n283, align 4
  %inc284 = add i32 %182, 1
  store i32 %inc284, i32* %n283, align 4
  %idxprom285 = zext i32 %182 to i64
  %183 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules286 = getelementptr inbounds %struct.Production, %struct.Production* %183, i32 0, i32 2
  %v287 = getelementptr inbounds %struct.anon, %struct.anon* %rules286, i32 0, i32 2
  %184 = load %struct.Rule**, %struct.Rule*** %v287, align 8
  %arrayidx288 = getelementptr inbounds %struct.Rule*, %struct.Rule** %184, i64 %idxprom285
  store %struct.Rule* %180, %struct.Rule** %arrayidx288, align 8
  br label %do.end.307

if.end.289:                                       ; preds = %if.then.277
  br label %if.end.304

if.else.290:                                      ; preds = %if.else.270
  %185 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules291 = getelementptr inbounds %struct.Production, %struct.Production* %185, i32 0, i32 2
  %n292 = getelementptr inbounds %struct.anon, %struct.anon* %rules291, i32 0, i32 0
  %186 = load i32, i32* %n292, align 4
  %and293 = and i32 %186, 7
  %tobool294 = icmp ne i32 %and293, 0
  br i1 %tobool294, label %if.then.295, label %if.end.303

if.then.295:                                      ; preds = %if.else.290
  %187 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %188 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules296 = getelementptr inbounds %struct.Production, %struct.Production* %188, i32 0, i32 2
  %n297 = getelementptr inbounds %struct.anon, %struct.anon* %rules296, i32 0, i32 0
  %189 = load i32, i32* %n297, align 4
  %inc298 = add i32 %189, 1
  store i32 %inc298, i32* %n297, align 4
  %idxprom299 = zext i32 %189 to i64
  %190 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules300 = getelementptr inbounds %struct.Production, %struct.Production* %190, i32 0, i32 2
  %v301 = getelementptr inbounds %struct.anon, %struct.anon* %rules300, i32 0, i32 2
  %191 = load %struct.Rule**, %struct.Rule*** %v301, align 8
  %arrayidx302 = getelementptr inbounds %struct.Rule*, %struct.Rule** %191, i64 %idxprom299
  store %struct.Rule* %187, %struct.Rule** %arrayidx302, align 8
  br label %do.end.307

if.end.303:                                       ; preds = %if.else.290
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %if.end.289
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304
  %192 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules306 = getelementptr inbounds %struct.Production, %struct.Production* %192, i32 0, i32 2
  %193 = bitcast %struct.anon* %rules306 to i8*
  %194 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %195 = bitcast %struct.Rule* %194 to i8*
  call void @vec_add_internal(i8* %193, i8* %195)
  br label %do.end.307

do.end.307:                                       ; preds = %if.end.305, %if.then.295, %if.then.281, %if.then.259
  %196 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %197 = load %struct.Production*, %struct.Production** %pp, align 8
  %call308 = call %struct.Rule* @new_rule(%struct.Grammar* %196, %struct.Production* %197)
  store %struct.Rule* %call308, %struct.Rule** %rr, align 8
  br label %do.body.309

do.body.309:                                      ; preds = %do.end.307
  %198 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems310 = getelementptr inbounds %struct.Rule, %struct.Rule* %198, i32 0, i32 6
  %v311 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems310, i32 0, i32 2
  %199 = load %struct.Elem**, %struct.Elem*** %v311, align 8
  %tobool312 = icmp ne %struct.Elem** %199, null
  br i1 %tobool312, label %if.else.324, label %if.then.313

if.then.313:                                      ; preds = %do.body.309
  %200 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %201 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems314 = getelementptr inbounds %struct.Rule, %struct.Rule* %201, i32 0, i32 6
  %n315 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems314, i32 0, i32 0
  %202 = load i32, i32* %n315, align 4
  %inc316 = add i32 %202, 1
  store i32 %inc316, i32* %n315, align 4
  %idxprom317 = zext i32 %202 to i64
  %203 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems318 = getelementptr inbounds %struct.Rule, %struct.Rule* %203, i32 0, i32 6
  %e319 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems318, i32 0, i32 3
  %arraydecay320 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e319, i32 0, i32 0
  %204 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems321 = getelementptr inbounds %struct.Rule, %struct.Rule* %204, i32 0, i32 6
  %v322 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems321, i32 0, i32 2
  store %struct.Elem** %arraydecay320, %struct.Elem*** %v322, align 8
  %arrayidx323 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay320, i64 %idxprom317
  store %struct.Elem* %200, %struct.Elem** %arrayidx323, align 8
  br label %do.end.361

if.else.324:                                      ; preds = %do.body.309
  %205 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems325 = getelementptr inbounds %struct.Rule, %struct.Rule* %205, i32 0, i32 6
  %v326 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems325, i32 0, i32 2
  %206 = load %struct.Elem**, %struct.Elem*** %v326, align 8
  %207 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems327 = getelementptr inbounds %struct.Rule, %struct.Rule* %207, i32 0, i32 6
  %e328 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems327, i32 0, i32 3
  %arraydecay329 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e328, i32 0, i32 0
  %cmp330 = icmp eq %struct.Elem** %206, %arraydecay329
  br i1 %cmp330, label %if.then.331, label %if.else.344

if.then.331:                                      ; preds = %if.else.324
  %208 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems332 = getelementptr inbounds %struct.Rule, %struct.Rule* %208, i32 0, i32 6
  %n333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems332, i32 0, i32 0
  %209 = load i32, i32* %n333, align 4
  %cmp334 = icmp ult i32 %209, 3
  br i1 %cmp334, label %if.then.335, label %if.end.343

if.then.335:                                      ; preds = %if.then.331
  %210 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %211 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems336 = getelementptr inbounds %struct.Rule, %struct.Rule* %211, i32 0, i32 6
  %n337 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems336, i32 0, i32 0
  %212 = load i32, i32* %n337, align 4
  %inc338 = add i32 %212, 1
  store i32 %inc338, i32* %n337, align 4
  %idxprom339 = zext i32 %212 to i64
  %213 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems340 = getelementptr inbounds %struct.Rule, %struct.Rule* %213, i32 0, i32 6
  %v341 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems340, i32 0, i32 2
  %214 = load %struct.Elem**, %struct.Elem*** %v341, align 8
  %arrayidx342 = getelementptr inbounds %struct.Elem*, %struct.Elem** %214, i64 %idxprom339
  store %struct.Elem* %210, %struct.Elem** %arrayidx342, align 8
  br label %do.end.361

if.end.343:                                       ; preds = %if.then.331
  br label %if.end.358

if.else.344:                                      ; preds = %if.else.324
  %215 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems345 = getelementptr inbounds %struct.Rule, %struct.Rule* %215, i32 0, i32 6
  %n346 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems345, i32 0, i32 0
  %216 = load i32, i32* %n346, align 4
  %and347 = and i32 %216, 7
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %if.then.349, label %if.end.357

if.then.349:                                      ; preds = %if.else.344
  %217 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %218 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems350 = getelementptr inbounds %struct.Rule, %struct.Rule* %218, i32 0, i32 6
  %n351 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems350, i32 0, i32 0
  %219 = load i32, i32* %n351, align 4
  %inc352 = add i32 %219, 1
  store i32 %inc352, i32* %n351, align 4
  %idxprom353 = zext i32 %219 to i64
  %220 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems354 = getelementptr inbounds %struct.Rule, %struct.Rule* %220, i32 0, i32 6
  %v355 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems354, i32 0, i32 2
  %221 = load %struct.Elem**, %struct.Elem*** %v355, align 8
  %arrayidx356 = getelementptr inbounds %struct.Elem*, %struct.Elem** %221, i64 %idxprom353
  store %struct.Elem* %217, %struct.Elem** %arrayidx356, align 8
  br label %do.end.361

if.end.357:                                       ; preds = %if.else.344
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %if.end.343
  br label %if.end.359

if.end.359:                                       ; preds = %if.end.358
  %222 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems360 = getelementptr inbounds %struct.Rule, %struct.Rule* %222, i32 0, i32 6
  %223 = bitcast %struct.anon.0* %elems360 to i8*
  %224 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %225 = bitcast %struct.Elem* %224 to i8*
  call void @vec_add_internal(i8* %223, i8* %225)
  br label %do.end.361

do.end.361:                                       ; preds = %if.end.359, %if.then.349, %if.then.335, %if.then.313
  %226 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %227 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %227, i32 0, i32 2
  store %struct.Rule* %226, %struct.Rule** %rule, align 8
  br label %do.body.362

do.body.362:                                      ; preds = %do.end.361
  %228 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules363 = getelementptr inbounds %struct.Production, %struct.Production* %228, i32 0, i32 2
  %v364 = getelementptr inbounds %struct.anon, %struct.anon* %rules363, i32 0, i32 2
  %229 = load %struct.Rule**, %struct.Rule*** %v364, align 8
  %tobool365 = icmp ne %struct.Rule** %229, null
  br i1 %tobool365, label %if.else.377, label %if.then.366

if.then.366:                                      ; preds = %do.body.362
  %230 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %231 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules367 = getelementptr inbounds %struct.Production, %struct.Production* %231, i32 0, i32 2
  %n368 = getelementptr inbounds %struct.anon, %struct.anon* %rules367, i32 0, i32 0
  %232 = load i32, i32* %n368, align 4
  %inc369 = add i32 %232, 1
  store i32 %inc369, i32* %n368, align 4
  %idxprom370 = zext i32 %232 to i64
  %233 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules371 = getelementptr inbounds %struct.Production, %struct.Production* %233, i32 0, i32 2
  %e372 = getelementptr inbounds %struct.anon, %struct.anon* %rules371, i32 0, i32 3
  %arraydecay373 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e372, i32 0, i32 0
  %234 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules374 = getelementptr inbounds %struct.Production, %struct.Production* %234, i32 0, i32 2
  %v375 = getelementptr inbounds %struct.anon, %struct.anon* %rules374, i32 0, i32 2
  store %struct.Rule** %arraydecay373, %struct.Rule*** %v375, align 8
  %arrayidx376 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay373, i64 %idxprom370
  store %struct.Rule* %230, %struct.Rule** %arrayidx376, align 8
  br label %do.end.414

if.else.377:                                      ; preds = %do.body.362
  %235 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules378 = getelementptr inbounds %struct.Production, %struct.Production* %235, i32 0, i32 2
  %v379 = getelementptr inbounds %struct.anon, %struct.anon* %rules378, i32 0, i32 2
  %236 = load %struct.Rule**, %struct.Rule*** %v379, align 8
  %237 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules380 = getelementptr inbounds %struct.Production, %struct.Production* %237, i32 0, i32 2
  %e381 = getelementptr inbounds %struct.anon, %struct.anon* %rules380, i32 0, i32 3
  %arraydecay382 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e381, i32 0, i32 0
  %cmp383 = icmp eq %struct.Rule** %236, %arraydecay382
  br i1 %cmp383, label %if.then.384, label %if.else.397

if.then.384:                                      ; preds = %if.else.377
  %238 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules385 = getelementptr inbounds %struct.Production, %struct.Production* %238, i32 0, i32 2
  %n386 = getelementptr inbounds %struct.anon, %struct.anon* %rules385, i32 0, i32 0
  %239 = load i32, i32* %n386, align 4
  %cmp387 = icmp ult i32 %239, 3
  br i1 %cmp387, label %if.then.388, label %if.end.396

if.then.388:                                      ; preds = %if.then.384
  %240 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %241 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules389 = getelementptr inbounds %struct.Production, %struct.Production* %241, i32 0, i32 2
  %n390 = getelementptr inbounds %struct.anon, %struct.anon* %rules389, i32 0, i32 0
  %242 = load i32, i32* %n390, align 4
  %inc391 = add i32 %242, 1
  store i32 %inc391, i32* %n390, align 4
  %idxprom392 = zext i32 %242 to i64
  %243 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules393 = getelementptr inbounds %struct.Production, %struct.Production* %243, i32 0, i32 2
  %v394 = getelementptr inbounds %struct.anon, %struct.anon* %rules393, i32 0, i32 2
  %244 = load %struct.Rule**, %struct.Rule*** %v394, align 8
  %arrayidx395 = getelementptr inbounds %struct.Rule*, %struct.Rule** %244, i64 %idxprom392
  store %struct.Rule* %240, %struct.Rule** %arrayidx395, align 8
  br label %do.end.414

if.end.396:                                       ; preds = %if.then.384
  br label %if.end.411

if.else.397:                                      ; preds = %if.else.377
  %245 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules398 = getelementptr inbounds %struct.Production, %struct.Production* %245, i32 0, i32 2
  %n399 = getelementptr inbounds %struct.anon, %struct.anon* %rules398, i32 0, i32 0
  %246 = load i32, i32* %n399, align 4
  %and400 = and i32 %246, 7
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %if.then.402, label %if.end.410

if.then.402:                                      ; preds = %if.else.397
  %247 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %248 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules403 = getelementptr inbounds %struct.Production, %struct.Production* %248, i32 0, i32 2
  %n404 = getelementptr inbounds %struct.anon, %struct.anon* %rules403, i32 0, i32 0
  %249 = load i32, i32* %n404, align 4
  %inc405 = add i32 %249, 1
  store i32 %inc405, i32* %n404, align 4
  %idxprom406 = zext i32 %249 to i64
  %250 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules407 = getelementptr inbounds %struct.Production, %struct.Production* %250, i32 0, i32 2
  %v408 = getelementptr inbounds %struct.anon, %struct.anon* %rules407, i32 0, i32 2
  %251 = load %struct.Rule**, %struct.Rule*** %v408, align 8
  %arrayidx409 = getelementptr inbounds %struct.Rule*, %struct.Rule** %251, i64 %idxprom406
  store %struct.Rule* %247, %struct.Rule** %arrayidx409, align 8
  br label %do.end.414

if.end.410:                                       ; preds = %if.else.397
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.end.396
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411
  %252 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules413 = getelementptr inbounds %struct.Production, %struct.Production* %252, i32 0, i32 2
  %253 = bitcast %struct.anon* %rules413 to i8*
  %254 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %255 = bitcast %struct.Rule* %254 to i8*
  call void @vec_add_internal(i8* %253, i8* %255)
  br label %do.end.414

do.end.414:                                       ; preds = %if.end.412, %if.then.402, %if.then.388, %if.then.366
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_productions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pp = alloca %struct.Production*, align 8
  %ppp = alloca %struct.Production*, align 8
  %rrr = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call = call noalias i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)) #3
  %call1 = call %struct.Production* @new_production(%struct.Grammar* %0, i8* %call)
  store %struct.Production* %call1, %struct.Production** %ppp, align 8
  %1 = load %struct.Production*, %struct.Production** %ppp, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %1, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.clear = and i8 %bf.load, -29
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %internal, align 4
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %3 = load %struct.Production*, %struct.Production** %ppp, align 8
  %call2 = call %struct.Rule* @new_rule(%struct.Grammar* %2, %struct.Production* %3)
  store %struct.Rule* %call2, %struct.Rule** %rrr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %5 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool = icmp ne %struct.Elem** %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %call3 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %6)
  %7 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems4 = getelementptr inbounds %struct.Rule, %struct.Rule* %7, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems4, i32 0, i32 0
  %8 = load i32, i32* %n, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems5 = getelementptr inbounds %struct.Rule, %struct.Rule* %9, i32 0, i32 6
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %10 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems6 = getelementptr inbounds %struct.Rule, %struct.Rule* %10, i32 0, i32 6
  %v7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems6, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v7, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %call3, %struct.Elem** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %11 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems8 = getelementptr inbounds %struct.Rule, %struct.Rule* %11, i32 0, i32 6
  %v9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems8, i32 0, i32 2
  %12 = load %struct.Elem**, %struct.Elem*** %v9, align 8
  %13 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems10 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 6
  %e11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems10, i32 0, i32 3
  %arraydecay12 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e11, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %12, %arraydecay12
  br i1 %cmp, label %if.then.13, label %if.else.26

if.then.13:                                       ; preds = %if.else
  %14 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems14 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 6
  %n15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems14, i32 0, i32 0
  %15 = load i32, i32* %n15, align 4
  %cmp16 = icmp ult i32 %15, 3
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.13
  %16 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %call18 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %16)
  %17 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems19 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 6
  %n20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems19, i32 0, i32 0
  %18 = load i32, i32* %n20, align 4
  %inc21 = add i32 %18, 1
  store i32 %inc21, i32* %n20, align 4
  %idxprom22 = zext i32 %18 to i64
  %19 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems23 = getelementptr inbounds %struct.Rule, %struct.Rule* %19, i32 0, i32 6
  %v24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems23, i32 0, i32 2
  %20 = load %struct.Elem**, %struct.Elem*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Elem*, %struct.Elem** %20, i64 %idxprom22
  store %struct.Elem* %call18, %struct.Elem** %arrayidx25, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.13
  br label %if.end.40

if.else.26:                                       ; preds = %if.else
  %21 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems27 = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 6
  %n28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems27, i32 0, i32 0
  %22 = load i32, i32* %n28, align 4
  %and = and i32 %22, 7
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.else.26
  %23 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %call31 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %23)
  %24 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems32 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 6
  %n33 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems32, i32 0, i32 0
  %25 = load i32, i32* %n33, align 4
  %inc34 = add i32 %25, 1
  store i32 %inc34, i32* %n33, align 4
  %idxprom35 = zext i32 %25 to i64
  %26 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems36 = getelementptr inbounds %struct.Rule, %struct.Rule* %26, i32 0, i32 6
  %v37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems36, i32 0, i32 2
  %27 = load %struct.Elem**, %struct.Elem*** %v37, align 8
  %arrayidx38 = getelementptr inbounds %struct.Elem*, %struct.Elem** %27, i64 %idxprom35
  store %struct.Elem* %call31, %struct.Elem** %arrayidx38, align 8
  br label %do.end

if.end.39:                                        ; preds = %if.else.26
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  %28 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems42 = getelementptr inbounds %struct.Rule, %struct.Rule* %28, i32 0, i32 6
  %29 = bitcast %struct.anon.0* %elems42 to i8*
  %30 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %call43 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %30)
  %31 = bitcast %struct.Elem* %call43 to i8*
  call void @vec_add_internal(i8* %29, i8* %31)
  br label %do.end

do.end:                                           ; preds = %if.end.41, %if.then.30, %if.then.17, %if.then
  br label %do.body.44

do.body.44:                                       ; preds = %do.end
  %32 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %32, i32 0, i32 2
  %v45 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %33 = load %struct.Rule**, %struct.Rule*** %v45, align 8
  %tobool46 = icmp ne %struct.Rule** %33, null
  br i1 %tobool46, label %if.else.58, label %if.then.47

if.then.47:                                       ; preds = %do.body.44
  %34 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %35 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules48 = getelementptr inbounds %struct.Production, %struct.Production* %35, i32 0, i32 2
  %n49 = getelementptr inbounds %struct.anon, %struct.anon* %rules48, i32 0, i32 0
  %36 = load i32, i32* %n49, align 4
  %inc50 = add i32 %36, 1
  store i32 %inc50, i32* %n49, align 4
  %idxprom51 = zext i32 %36 to i64
  %37 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules52 = getelementptr inbounds %struct.Production, %struct.Production* %37, i32 0, i32 2
  %e53 = getelementptr inbounds %struct.anon, %struct.anon* %rules52, i32 0, i32 3
  %arraydecay54 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e53, i32 0, i32 0
  %38 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules55 = getelementptr inbounds %struct.Production, %struct.Production* %38, i32 0, i32 2
  %v56 = getelementptr inbounds %struct.anon, %struct.anon* %rules55, i32 0, i32 2
  store %struct.Rule** %arraydecay54, %struct.Rule*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay54, i64 %idxprom51
  store %struct.Rule* %34, %struct.Rule** %arrayidx57, align 8
  br label %do.end.95

if.else.58:                                       ; preds = %do.body.44
  %39 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules59 = getelementptr inbounds %struct.Production, %struct.Production* %39, i32 0, i32 2
  %v60 = getelementptr inbounds %struct.anon, %struct.anon* %rules59, i32 0, i32 2
  %40 = load %struct.Rule**, %struct.Rule*** %v60, align 8
  %41 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules61 = getelementptr inbounds %struct.Production, %struct.Production* %41, i32 0, i32 2
  %e62 = getelementptr inbounds %struct.anon, %struct.anon* %rules61, i32 0, i32 3
  %arraydecay63 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e62, i32 0, i32 0
  %cmp64 = icmp eq %struct.Rule** %40, %arraydecay63
  br i1 %cmp64, label %if.then.65, label %if.else.78

if.then.65:                                       ; preds = %if.else.58
  %42 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules66 = getelementptr inbounds %struct.Production, %struct.Production* %42, i32 0, i32 2
  %n67 = getelementptr inbounds %struct.anon, %struct.anon* %rules66, i32 0, i32 0
  %43 = load i32, i32* %n67, align 4
  %cmp68 = icmp ult i32 %43, 3
  br i1 %cmp68, label %if.then.69, label %if.end.77

if.then.69:                                       ; preds = %if.then.65
  %44 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %45 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules70 = getelementptr inbounds %struct.Production, %struct.Production* %45, i32 0, i32 2
  %n71 = getelementptr inbounds %struct.anon, %struct.anon* %rules70, i32 0, i32 0
  %46 = load i32, i32* %n71, align 4
  %inc72 = add i32 %46, 1
  store i32 %inc72, i32* %n71, align 4
  %idxprom73 = zext i32 %46 to i64
  %47 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules74 = getelementptr inbounds %struct.Production, %struct.Production* %47, i32 0, i32 2
  %v75 = getelementptr inbounds %struct.anon, %struct.anon* %rules74, i32 0, i32 2
  %48 = load %struct.Rule**, %struct.Rule*** %v75, align 8
  %arrayidx76 = getelementptr inbounds %struct.Rule*, %struct.Rule** %48, i64 %idxprom73
  store %struct.Rule* %44, %struct.Rule** %arrayidx76, align 8
  br label %do.end.95

if.end.77:                                        ; preds = %if.then.65
  br label %if.end.92

if.else.78:                                       ; preds = %if.else.58
  %49 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules79 = getelementptr inbounds %struct.Production, %struct.Production* %49, i32 0, i32 2
  %n80 = getelementptr inbounds %struct.anon, %struct.anon* %rules79, i32 0, i32 0
  %50 = load i32, i32* %n80, align 4
  %and81 = and i32 %50, 7
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.91

if.then.83:                                       ; preds = %if.else.78
  %51 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %52 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules84 = getelementptr inbounds %struct.Production, %struct.Production* %52, i32 0, i32 2
  %n85 = getelementptr inbounds %struct.anon, %struct.anon* %rules84, i32 0, i32 0
  %53 = load i32, i32* %n85, align 4
  %inc86 = add i32 %53, 1
  store i32 %inc86, i32* %n85, align 4
  %idxprom87 = zext i32 %53 to i64
  %54 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules88 = getelementptr inbounds %struct.Production, %struct.Production* %54, i32 0, i32 2
  %v89 = getelementptr inbounds %struct.anon, %struct.anon* %rules88, i32 0, i32 2
  %55 = load %struct.Rule**, %struct.Rule*** %v89, align 8
  %arrayidx90 = getelementptr inbounds %struct.Rule*, %struct.Rule** %55, i64 %idxprom87
  store %struct.Rule* %51, %struct.Rule** %arrayidx90, align 8
  br label %do.end.95

if.end.91:                                        ; preds = %if.else.78
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.77
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92
  %56 = load %struct.Production*, %struct.Production** %ppp, align 8
  %rules94 = getelementptr inbounds %struct.Production, %struct.Production* %56, i32 0, i32 2
  %57 = bitcast %struct.anon* %rules94 to i8*
  %58 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %59 = bitcast %struct.Rule* %58 to i8*
  call void @vec_add_internal(i8* %57, i8* %59)
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.93, %if.then.83, %if.then.69, %if.then.47
  %60 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call96 = call noalias i8* @strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0)) #3
  %call97 = call %struct.Production* @new_production(%struct.Grammar* %60, i8* %call96)
  store %struct.Production* %call97, %struct.Production** %pp, align 8
  %61 = load %struct.Production*, %struct.Production** %pp, align 8
  %internal98 = getelementptr inbounds %struct.Production, %struct.Production* %61, i32 0, i32 4
  %bf.load99 = load i8, i8* %internal98, align 4
  %bf.clear100 = and i8 %bf.load99, -29
  %bf.set101 = or i8 %bf.clear100, 4
  store i8 %bf.set101, i8* %internal98, align 4
  %62 = load %struct.Production*, %struct.Production** %pp, align 8
  %63 = load %struct.Rule*, %struct.Rule** %rrr, align 8
  %elems102 = getelementptr inbounds %struct.Rule, %struct.Rule* %63, i32 0, i32 6
  %v103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems102, i32 0, i32 2
  %64 = load %struct.Elem**, %struct.Elem*** %v103, align 8
  %arrayidx104 = getelementptr inbounds %struct.Elem*, %struct.Elem** %64, i64 0
  %65 = load %struct.Elem*, %struct.Elem** %arrayidx104, align 8
  %e105 = getelementptr inbounds %struct.Elem, %struct.Elem* %65, i32 0, i32 3
  %nterm = bitcast %union.anon* %e105 to %struct.Production**
  store %struct.Production* %62, %struct.Production** %nterm, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @finish_productions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pp = alloca %struct.Production*, align 8
  %rr = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 2
  %1 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %1, i64 1
  %2 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %2, %struct.Production** %pp, align 8
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %v2 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %5 = load %struct.Production**, %struct.Production*** %v2, align 8
  %arrayidx3 = getelementptr inbounds %struct.Production*, %struct.Production** %5, i64 1
  %6 = load %struct.Production*, %struct.Production** %arrayidx3, align 8
  %call = call %struct.Rule* @new_rule(%struct.Grammar* %3, %struct.Production* %6)
  store %struct.Rule* %call, %struct.Rule** %rr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %7, i32 0, i32 6
  %v4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %8 = load %struct.Elem**, %struct.Elem*** %v4, align 8
  %tobool = icmp ne %struct.Elem** %8, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %9 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call5 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %9)
  %10 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems6 = getelementptr inbounds %struct.Rule, %struct.Rule* %10, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems6, i32 0, i32 0
  %11 = load i32, i32* %n, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems7 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 6
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems7, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e, i32 0, i32 0
  %13 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems8 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 6
  %v9 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems8, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %call5, %struct.Elem** %arrayidx10, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %14 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems11 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 6
  %v12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems11, i32 0, i32 2
  %15 = load %struct.Elem**, %struct.Elem*** %v12, align 8
  %16 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems13 = getelementptr inbounds %struct.Rule, %struct.Rule* %16, i32 0, i32 6
  %e14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems13, i32 0, i32 3
  %arraydecay15 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e14, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %15, %arraydecay15
  br i1 %cmp, label %if.then.16, label %if.else.29

if.then.16:                                       ; preds = %if.else
  %17 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems17 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 6
  %n18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems17, i32 0, i32 0
  %18 = load i32, i32* %n18, align 4
  %cmp19 = icmp ult i32 %18, 3
  br i1 %cmp19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then.16
  %19 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call21 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %19)
  %20 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems22 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 6
  %n23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems22, i32 0, i32 0
  %21 = load i32, i32* %n23, align 4
  %inc24 = add i32 %21, 1
  store i32 %inc24, i32* %n23, align 4
  %idxprom25 = zext i32 %21 to i64
  %22 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems26 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 6
  %v27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems26, i32 0, i32 2
  %23 = load %struct.Elem**, %struct.Elem*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Elem*, %struct.Elem** %23, i64 %idxprom25
  store %struct.Elem* %call21, %struct.Elem** %arrayidx28, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.16
  br label %if.end.43

if.else.29:                                       ; preds = %if.else
  %24 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems30 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 6
  %n31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems30, i32 0, i32 0
  %25 = load i32, i32* %n31, align 4
  %and = and i32 %25, 7
  %tobool32 = icmp ne i32 %and, 0
  br i1 %tobool32, label %if.then.33, label %if.end.42

if.then.33:                                       ; preds = %if.else.29
  %26 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call34 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %26)
  %27 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems35 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 6
  %n36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems35, i32 0, i32 0
  %28 = load i32, i32* %n36, align 4
  %inc37 = add i32 %28, 1
  store i32 %inc37, i32* %n36, align 4
  %idxprom38 = zext i32 %28 to i64
  %29 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems39 = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 6
  %v40 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems39, i32 0, i32 2
  %30 = load %struct.Elem**, %struct.Elem*** %v40, align 8
  %arrayidx41 = getelementptr inbounds %struct.Elem*, %struct.Elem** %30, i64 %idxprom38
  store %struct.Elem* %call34, %struct.Elem** %arrayidx41, align 8
  br label %do.end

if.end.42:                                        ; preds = %if.else.29
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43
  %31 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems45 = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 6
  %32 = bitcast %struct.anon.0* %elems45 to i8*
  %33 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %call46 = call %struct.Elem* @new_elem_nterm(%struct.Production* null, %struct.Rule* %33)
  %34 = bitcast %struct.Elem* %call46 to i8*
  call void @vec_add_internal(i8* %32, i8* %34)
  br label %do.end

do.end:                                           ; preds = %if.end.44, %if.then.33, %if.then.20, %if.then
  br label %do.body.47

do.body.47:                                       ; preds = %do.end
  %35 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %35, i32 0, i32 2
  %v48 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 2
  %36 = load %struct.Rule**, %struct.Rule*** %v48, align 8
  %tobool49 = icmp ne %struct.Rule** %36, null
  br i1 %tobool49, label %if.else.61, label %if.then.50

if.then.50:                                       ; preds = %do.body.47
  %37 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %38 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules51 = getelementptr inbounds %struct.Production, %struct.Production* %38, i32 0, i32 2
  %n52 = getelementptr inbounds %struct.anon, %struct.anon* %rules51, i32 0, i32 0
  %39 = load i32, i32* %n52, align 4
  %inc53 = add i32 %39, 1
  store i32 %inc53, i32* %n52, align 4
  %idxprom54 = zext i32 %39 to i64
  %40 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules55 = getelementptr inbounds %struct.Production, %struct.Production* %40, i32 0, i32 2
  %e56 = getelementptr inbounds %struct.anon, %struct.anon* %rules55, i32 0, i32 3
  %arraydecay57 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e56, i32 0, i32 0
  %41 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules58 = getelementptr inbounds %struct.Production, %struct.Production* %41, i32 0, i32 2
  %v59 = getelementptr inbounds %struct.anon, %struct.anon* %rules58, i32 0, i32 2
  store %struct.Rule** %arraydecay57, %struct.Rule*** %v59, align 8
  %arrayidx60 = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay57, i64 %idxprom54
  store %struct.Rule* %37, %struct.Rule** %arrayidx60, align 8
  br label %do.end.98

if.else.61:                                       ; preds = %do.body.47
  %42 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules62 = getelementptr inbounds %struct.Production, %struct.Production* %42, i32 0, i32 2
  %v63 = getelementptr inbounds %struct.anon, %struct.anon* %rules62, i32 0, i32 2
  %43 = load %struct.Rule**, %struct.Rule*** %v63, align 8
  %44 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules64 = getelementptr inbounds %struct.Production, %struct.Production* %44, i32 0, i32 2
  %e65 = getelementptr inbounds %struct.anon, %struct.anon* %rules64, i32 0, i32 3
  %arraydecay66 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e65, i32 0, i32 0
  %cmp67 = icmp eq %struct.Rule** %43, %arraydecay66
  br i1 %cmp67, label %if.then.68, label %if.else.81

if.then.68:                                       ; preds = %if.else.61
  %45 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules69 = getelementptr inbounds %struct.Production, %struct.Production* %45, i32 0, i32 2
  %n70 = getelementptr inbounds %struct.anon, %struct.anon* %rules69, i32 0, i32 0
  %46 = load i32, i32* %n70, align 4
  %cmp71 = icmp ult i32 %46, 3
  br i1 %cmp71, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.then.68
  %47 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %48 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules73 = getelementptr inbounds %struct.Production, %struct.Production* %48, i32 0, i32 2
  %n74 = getelementptr inbounds %struct.anon, %struct.anon* %rules73, i32 0, i32 0
  %49 = load i32, i32* %n74, align 4
  %inc75 = add i32 %49, 1
  store i32 %inc75, i32* %n74, align 4
  %idxprom76 = zext i32 %49 to i64
  %50 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules77 = getelementptr inbounds %struct.Production, %struct.Production* %50, i32 0, i32 2
  %v78 = getelementptr inbounds %struct.anon, %struct.anon* %rules77, i32 0, i32 2
  %51 = load %struct.Rule**, %struct.Rule*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Rule*, %struct.Rule** %51, i64 %idxprom76
  store %struct.Rule* %47, %struct.Rule** %arrayidx79, align 8
  br label %do.end.98

if.end.80:                                        ; preds = %if.then.68
  br label %if.end.95

if.else.81:                                       ; preds = %if.else.61
  %52 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules82 = getelementptr inbounds %struct.Production, %struct.Production* %52, i32 0, i32 2
  %n83 = getelementptr inbounds %struct.anon, %struct.anon* %rules82, i32 0, i32 0
  %53 = load i32, i32* %n83, align 4
  %and84 = and i32 %53, 7
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.94

if.then.86:                                       ; preds = %if.else.81
  %54 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %55 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules87 = getelementptr inbounds %struct.Production, %struct.Production* %55, i32 0, i32 2
  %n88 = getelementptr inbounds %struct.anon, %struct.anon* %rules87, i32 0, i32 0
  %56 = load i32, i32* %n88, align 4
  %inc89 = add i32 %56, 1
  store i32 %inc89, i32* %n88, align 4
  %idxprom90 = zext i32 %56 to i64
  %57 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules91 = getelementptr inbounds %struct.Production, %struct.Production* %57, i32 0, i32 2
  %v92 = getelementptr inbounds %struct.anon, %struct.anon* %rules91, i32 0, i32 2
  %58 = load %struct.Rule**, %struct.Rule*** %v92, align 8
  %arrayidx93 = getelementptr inbounds %struct.Rule*, %struct.Rule** %58, i64 %idxprom90
  store %struct.Rule* %54, %struct.Rule** %arrayidx93, align 8
  br label %do.end.98

if.end.94:                                        ; preds = %if.else.81
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.80
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95
  %59 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules97 = getelementptr inbounds %struct.Production, %struct.Production* %59, i32 0, i32 2
  %60 = bitcast %struct.anon* %rules97 to i8*
  %61 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %62 = bitcast %struct.Rule* %61 to i8*
  call void @vec_add_internal(i8* %60, i8* %62)
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.96, %if.then.86, %if.then.72, %if.then.50
  %63 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions99 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 1
  %v100 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions99, i32 0, i32 2
  %64 = load %struct.Production**, %struct.Production*** %v100, align 8
  %arrayidx101 = getelementptr inbounds %struct.Production*, %struct.Production** %64, i64 2
  %65 = load %struct.Production*, %struct.Production** %arrayidx101, align 8
  %66 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems102 = getelementptr inbounds %struct.Rule, %struct.Rule* %66, i32 0, i32 6
  %v103 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems102, i32 0, i32 2
  %67 = load %struct.Elem**, %struct.Elem*** %v103, align 8
  %arrayidx104 = getelementptr inbounds %struct.Elem*, %struct.Elem** %67, i64 0
  %68 = load %struct.Elem*, %struct.Elem** %arrayidx104, align 8
  %e105 = getelementptr inbounds %struct.Elem, %struct.Elem* %68, i32 0, i32 3
  %nterm = bitcast %union.anon* %e105 to %struct.Production**
  store %struct.Production* %65, %struct.Production** %nterm, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_term(%struct.Term* %t) #0 {
entry:
  %t.addr = alloca %struct.Term*, align 8
  %s = alloca i8*, align 8
  store %struct.Term* %t, %struct.Term** %t.addr, align 8
  %0 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %0, i32 0, i32 5
  %1 = load i8*, i8** %string, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string1 = getelementptr inbounds %struct.Term, %struct.Term* %2, i32 0, i32 5
  %3 = load i8*, i8** %string1, align 8
  %call = call i8* @escape_string(i8* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ]
  store i8* %cond, i8** %s, align 8
  %4 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %4, i32 0, i32 0
  %5 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else.9

if.then:                                          ; preds = %cond.end
  %6 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string2 = getelementptr inbounds %struct.Term, %struct.Term* %6, i32 0, i32 5
  %7 = load i8*, i8** %string2, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %lor.lhs.false, label %if.then.6

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string4 = getelementptr inbounds %struct.Term, %struct.Term* %8, i32 0, i32 5
  %9 = load i8*, i8** %string4, align 8
  %10 = load i8, i8* %9, align 1
  %tobool5 = icmp ne i8 %10, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %lor.lhs.false, %if.then
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %11 = load i8*, i8** %s, align 8
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.28

if.else.9:                                        ; preds = %cond.end
  %12 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind10 = getelementptr inbounds %struct.Term, %struct.Term* %12, i32 0, i32 0
  %13 = load i32, i32* %kind10, align 4
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.9
  %14 = load i8*, i8** %s, align 8
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* %14)
  br label %if.end.27

if.else.14:                                       ; preds = %if.else.9
  %15 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind15 = getelementptr inbounds %struct.Term, %struct.Term* %15, i32 0, i32 0
  %16 = load i32, i32* %kind15, align 4
  %cmp16 = icmp eq i32 %16, 2
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.else.14
  %17 = load i8*, i8** %s, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* %17)
  br label %if.end.26

if.else.19:                                       ; preds = %if.else.14
  %18 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind20 = getelementptr inbounds %struct.Term, %struct.Term* %18, i32 0, i32 0
  %19 = load i32, i32* %kind20, align 4
  %cmp21 = icmp eq i32 %19, 3
  br i1 %cmp21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else.19
  %20 = load i8*, i8** %s, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* %20)
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.19
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.17
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.12
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end
  %21 = load i8*, i8** %s, align 8
  %tobool29 = icmp ne i8* %21, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.28
  %22 = load i8*, i8** %s, align 8
  call void @free(i8* %22) #3
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.end.28
  ret void
}

declare i8* @escape_string(i8*) #4

declare i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @print_elem(%struct.Elem* %ee) #0 {
entry:
  %ee.addr = alloca %struct.Elem*, align 8
  store %struct.Elem* %ee, %struct.Elem** %ee.addr, align 8
  %0 = load %struct.Elem*, %struct.Elem** %ee.addr, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Elem*, %struct.Elem** %ee.addr, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %3 = load %struct.Term*, %struct.Term** %term, align 8
  call void @print_term(%struct.Term* %3)
  br label %if.end.8

if.else:                                          ; preds = %entry
  %4 = load %struct.Elem*, %struct.Elem** %ee.addr, align 8
  %kind1 = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 0
  %5 = load i32, i32* %kind1, align 4
  %cmp2 = icmp eq i32 %5, 2
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %6 = load %struct.Elem*, %struct.Elem** %ee.addr, align 8
  %e4 = getelementptr inbounds %struct.Elem, %struct.Elem* %6, i32 0, i32 3
  %unresolved = bitcast %union.anon* %e4 to %struct.Unresolved*
  %string = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved, i32 0, i32 0
  %7 = load i8*, i8** %string, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %7)
  br label %if.end

if.else.5:                                        ; preds = %if.else
  %8 = load %struct.Elem*, %struct.Elem** %ee.addr, align 8
  %e6 = getelementptr inbounds %struct.Elem, %struct.Elem* %8, i32 0, i32 3
  %nterm = bitcast %union.anon* %e6 to %struct.Production**
  %9 = load %struct.Production*, %struct.Production** %nterm, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.3
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_rule(%struct.Rule* %r) #0 {
entry:
  %r.addr = alloca %struct.Rule*, align 8
  %k = alloca i32, align 4
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %0 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %0, i32 0, i32 1
  %1 = load %struct.Production*, %struct.Production** %prod, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %2)
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %k, align 4
  %4 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems1 = getelementptr inbounds %struct.Rule, %struct.Rule* %7, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems1, i32 0, i32 2
  %8 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %8, i64 %idxprom
  %9 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  call void @print_elem(%struct.Elem* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %k, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %speculative_code = getelementptr inbounds %struct.Rule, %struct.Rule* %11, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code, i32 0, i32 0
  %12 = load i8*, i8** %code, align 8
  %tobool = icmp ne i8* %12, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %13 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %speculative_code2 = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 8
  %code3 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code2, i32 0, i32 0
  %14 = load i8*, i8** %code3, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %15 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %final_code = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 9
  %code5 = getelementptr inbounds %struct.Code, %struct.Code* %final_code, i32 0, i32 0
  %16 = load i8*, i8** %code5, align 8
  %tobool6 = icmp ne i8* %16, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %17 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %final_code8 = getelementptr inbounds %struct.Rule, %struct.Rule* %17, i32 0, i32 9
  %code9 = getelementptr inbounds %struct.Code, %struct.Code* %final_code8, i32 0, i32 0
  %18 = load i8*, i8** %code9, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* %18)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_grammar(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %pp = alloca %struct.Production*, align 8
  %rr = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.26, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.67, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 1
  %n2 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 0
  %4 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions3, i32 0, i32 2
  %7 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %7, i64 %idxprom
  %8 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %8, %struct.Production** %pp, align 8
  %9 = load %struct.Production*, %struct.Production** %pp, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %i, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* %10, i32 %11)
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.62, %for.body
  %12 = load i32, i32* %j, align 4
  %13 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %13, i32 0, i32 2
  %n6 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %14 = load i32, i32* %n6, align 4
  %cmp7 = icmp ult i32 %12, %14
  br i1 %cmp7, label %for.body.8, label %for.end.64

for.body.8:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %j, align 4
  %idxprom9 = zext i32 %15 to i64
  %16 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules10 = getelementptr inbounds %struct.Production, %struct.Production* %16, i32 0, i32 2
  %v11 = getelementptr inbounds %struct.anon, %struct.anon* %rules10, i32 0, i32 2
  %17 = load %struct.Rule**, %struct.Rule*** %v11, align 8
  %arrayidx12 = getelementptr inbounds %struct.Rule*, %struct.Rule** %17, i64 %idxprom9
  %18 = load %struct.Rule*, %struct.Rule** %arrayidx12, align 8
  store %struct.Rule* %18, %struct.Rule** %rr, align 8
  %19 = load i32, i32* %j, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %for.body.8
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.17

if.else:                                          ; preds = %for.body.8
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.14
  store i32 0, i32* %k, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.end.17
  %20 = load i32, i32* %k, align 4
  %21 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %21, i32 0, i32 6
  %n19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %22 = load i32, i32* %n19, align 4
  %cmp20 = icmp ult i32 %20, %22
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %23 = load i32, i32* %k, align 4
  %idxprom22 = zext i32 %23 to i64
  %24 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems23 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 6
  %v24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems23, i32 0, i32 2
  %25 = load %struct.Elem**, %struct.Elem*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Elem*, %struct.Elem** %25, i64 %idxprom22
  %26 = load %struct.Elem*, %struct.Elem** %arrayidx25, align 8
  call void @print_elem(%struct.Elem* %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %27 = load i32, i32* %k, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %28 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %op_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %28, i32 0, i32 2
  %29 = load i32, i32* %op_priority, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %for.end
  %30 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %op_priority28 = getelementptr inbounds %struct.Rule, %struct.Rule* %30, i32 0, i32 2
  %31 = load i32, i32* %op_priority28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i32 %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %for.end
  %32 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 3
  %33 = load i32, i32* %op_assoc, align 4
  %tobool31 = icmp ne i32 %33, 0
  br i1 %tobool31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.30
  %34 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %op_assoc33 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 3
  %35 = load i32, i32* %op_assoc33, align 4
  %call34 = call i8* @assoc_str(i32 %35)
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %call34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.30
  %36 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %rule_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %36, i32 0, i32 4
  %37 = load i32, i32* %rule_priority, align 4
  %tobool37 = icmp ne i32 %37, 0
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.end.36
  %38 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %rule_priority39 = getelementptr inbounds %struct.Rule, %struct.Rule* %38, i32 0, i32 4
  %39 = load i32, i32* %rule_priority39, align 4
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 %39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.end.36
  %40 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 5
  %41 = load i32, i32* %rule_assoc, align 4
  %tobool42 = icmp ne i32 %41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.41
  %42 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %rule_assoc44 = getelementptr inbounds %struct.Rule, %struct.Rule* %42, i32 0, i32 5
  %43 = load i32, i32* %rule_assoc44, align 4
  %call45 = call i8* @assoc_str(i32 %43)
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %call45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.41
  %44 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %speculative_code = getelementptr inbounds %struct.Rule, %struct.Rule* %44, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code, i32 0, i32 0
  %45 = load i8*, i8** %code, align 8
  %tobool48 = icmp ne i8* %45, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %if.end.47
  %46 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %speculative_code50 = getelementptr inbounds %struct.Rule, %struct.Rule* %46, i32 0, i32 8
  %code51 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code50, i32 0, i32 0
  %47 = load i8*, i8** %code51, align 8
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %47)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %if.end.47
  %48 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %final_code = getelementptr inbounds %struct.Rule, %struct.Rule* %48, i32 0, i32 9
  %code54 = getelementptr inbounds %struct.Code, %struct.Code* %final_code, i32 0, i32 0
  %49 = load i8*, i8** %code54, align 8
  %tobool55 = icmp ne i8* %49, null
  br i1 %tobool55, label %if.then.56, label %if.end.60

if.then.56:                                       ; preds = %if.end.53
  %50 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %final_code57 = getelementptr inbounds %struct.Rule, %struct.Rule* %50, i32 0, i32 9
  %code58 = getelementptr inbounds %struct.Code, %struct.Code* %final_code57, i32 0, i32 0
  %51 = load i8*, i8** %code58, align 8
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i8* %51)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.56, %if.end.53
  %call61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.60
  %52 = load i32, i32* %j, align 4
  %inc63 = add i32 %52, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.5

for.end.64:                                       ; preds = %for.cond.5
  %call65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  %call66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.64
  %53 = load i32, i32* %i, align 4
  %inc68 = add i32 %53, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.83, %for.end.69
  %54 = load i32, i32* %i, align 4
  %55 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %55, i32 0, i32 2
  %n72 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %56 = load i32, i32* %n72, align 4
  %cmp73 = icmp ult i32 %54, %56
  br i1 %cmp73, label %for.body.74, label %for.end.85

for.body.74:                                      ; preds = %for.cond.71
  %call75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %57 = load i32, i32* %i, align 4
  %idxprom76 = zext i32 %57 to i64
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 2
  %v78 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals77, i32 0, i32 2
  %59 = load %struct.Term**, %struct.Term*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Term*, %struct.Term** %59, i64 %idxprom76
  %60 = load %struct.Term*, %struct.Term** %arrayidx79, align 8
  call void @print_term(%struct.Term* %60)
  %61 = load i32, i32* %i, align 4
  %62 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions80 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %62, i32 0, i32 1
  %n81 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions80, i32 0, i32 0
  %63 = load i32, i32* %n81, align 4
  %add = add i32 %61, %63
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %add)
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.74
  %64 = load i32, i32* %i, align 4
  %inc84 = add i32 %64, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.71

for.end.85:                                       ; preds = %for.cond.71
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end.85, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @assoc_str(i32 %e) #0 {
entry:
  %retval = alloca i8*, align 8
  %e.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %e, i32* %e.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %e.addr, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.EnumStr], [8 x %struct.EnumStr]* @assoc_strings, i32 0, i64 %idxprom
  %e2 = getelementptr inbounds %struct.EnumStr, %struct.EnumStr* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %e2, align 4
  %cmp3 = icmp eq i32 %1, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [8 x %struct.EnumStr], [8 x %struct.EnumStr]* @assoc_strings, i32 0, i64 %idxprom5
  %s = getelementptr inbounds %struct.EnumStr, %struct.EnumStr* %arrayidx6, i32 0, i32 1
  %5 = load i8*, i8** %s, align 8
  store i8* %5, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i8*, i8** getelementptr inbounds ([8 x %struct.EnumStr], [8 x %struct.EnumStr]* @assoc_strings, i32 0, i64 0, i32 1), align 8
  store i8* %7, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define void @print_states(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  call void @print_state(%struct.State* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_state(%struct.State* %s) #0 {
entry:
  %s.addr = alloca %struct.State*, align 8
  %j = alloca i32, align 4
  %conflict = alloca i32, align 4
  %a = alloca %struct.Action*, align 8
  %a46 = alloca %struct.Action*, align 8
  store %struct.State* %s, %struct.State** %s.addr, align 8
  store i32 0, i32* %conflict, align 4
  %0 = load %struct.State*, %struct.State** %s.addr, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 0
  %1 = load i32, i32* %index, align 4
  %2 = load %struct.State*, %struct.State** %s.addr, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %2, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %4 = load %struct.State*, %struct.State** %s.addr, align 8
  %accept = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 10
  %bf.load = load i8, i8* %accept, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.50, i32 0, i32 0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i32 %1, i32 %3, i8* %cond)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %j, align 4
  %6 = load %struct.State*, %struct.State** %s.addr, align 8
  %items1 = getelementptr inbounds %struct.State, %struct.State* %6, i32 0, i32 2
  %n2 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items1, i32 0, i32 0
  %7 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.State*, %struct.State** %s.addr, align 8
  %items3 = getelementptr inbounds %struct.State, %struct.State* %9, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items3, i32 0, i32 2
  %10 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %10, i64 %idxprom
  %11 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  call void @print_item(%struct.Elem* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %13, i32 0, i32 4
  %n4 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %14 = load i32, i32* %n4, align 4
  %tobool5 = icmp ne i32 %14, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.23, %if.end
  %15 = load i32, i32* %j, align 4
  %16 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos8 = getelementptr inbounds %struct.State, %struct.State* %16, i32 0, i32 4
  %n9 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos8, i32 0, i32 0
  %17 = load i32, i32* %n9, align 4
  %cmp10 = icmp ult i32 %15, %17
  br i1 %cmp10, label %for.body.11, label %for.end.25

for.body.11:                                      ; preds = %for.cond.7
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %18 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos14 = getelementptr inbounds %struct.State, %struct.State* %19, i32 0, i32 4
  %v15 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos14, i32 0, i32 2
  %20 = load %struct.Goto**, %struct.Goto*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.Goto*, %struct.Goto** %20, i64 %idxprom13
  %21 = load %struct.Goto*, %struct.Goto** %arrayidx16, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %21, i32 0, i32 0
  %22 = load %struct.Elem*, %struct.Elem** %elem, align 8
  call void @print_elem(%struct.Elem* %22)
  %23 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load %struct.State*, %struct.State** %s.addr, align 8
  %gotos18 = getelementptr inbounds %struct.State, %struct.State* %24, i32 0, i32 4
  %v19 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos18, i32 0, i32 2
  %25 = load %struct.Goto**, %struct.Goto*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.Goto*, %struct.Goto** %25, i64 %idxprom17
  %26 = load %struct.Goto*, %struct.Goto** %arrayidx20, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %26, i32 0, i32 1
  %27 = load %struct.State*, %struct.State** %state, align 8
  %index21 = getelementptr inbounds %struct.State, %struct.State* %27, i32 0, i32 0
  %28 = load i32, i32* %index21, align 4
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 %28)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.11
  %29 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond.7

for.end.25:                                       ; preds = %for.cond.7
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.39, %for.end.25
  %30 = load i32, i32* %j, align 4
  %31 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %31, i32 0, i32 6
  %n28 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions, i32 0, i32 0
  %32 = load i32, i32* %n28, align 4
  %cmp29 = icmp ult i32 %30, %32
  br i1 %cmp29, label %for.body.30, label %for.end.41

for.body.30:                                      ; preds = %for.cond.27
  %33 = load i32, i32* %j, align 4
  %idxprom31 = sext i32 %33 to i64
  %34 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions32 = getelementptr inbounds %struct.State, %struct.State* %34, i32 0, i32 6
  %v33 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions32, i32 0, i32 2
  %35 = load %struct.Action**, %struct.Action*** %v33, align 8
  %arrayidx34 = getelementptr inbounds %struct.Action*, %struct.Action** %35, i64 %idxprom31
  %36 = load %struct.Action*, %struct.Action** %arrayidx34, align 8
  store %struct.Action* %36, %struct.Action** %a, align 8
  %37 = load %struct.Action*, %struct.Action** %a, align 8
  %kind = getelementptr inbounds %struct.Action, %struct.Action* %37, i32 0, i32 0
  %38 = load i32, i32* %kind, align 4
  %idxprom35 = zext i32 %38 to i64
  %arrayidx36 = getelementptr inbounds [3 x i8*], [3 x i8*]* @action_types, i32 0, i64 %idxprom35
  %39 = load i8*, i8** %arrayidx36, align 8
  %call37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* %39)
  %40 = load %struct.Action*, %struct.Action** %a, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %40, i32 0, i32 2
  %41 = load %struct.Rule*, %struct.Rule** %rule, align 8
  call void @print_rule(%struct.Rule* %41)
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.30
  %42 = load i32, i32* %j, align 4
  %inc40 = add nsw i32 %42, 1
  store i32 %inc40, i32* %j, align 4
  br label %for.cond.27

for.end.41:                                       ; preds = %for.cond.27
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.63, %for.end.41
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %44, i32 0, i32 5
  %n43 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %45 = load i32, i32* %n43, align 4
  %cmp44 = icmp ult i32 %43, %45
  br i1 %cmp44, label %for.body.45, label %for.end.65

for.body.45:                                      ; preds = %for.cond.42
  %46 = load i32, i32* %j, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions48 = getelementptr inbounds %struct.State, %struct.State* %47, i32 0, i32 5
  %v49 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions48, i32 0, i32 2
  %48 = load %struct.Action**, %struct.Action*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Action*, %struct.Action** %48, i64 %idxprom47
  %49 = load %struct.Action*, %struct.Action** %arrayidx50, align 8
  store %struct.Action* %49, %struct.Action** %a46, align 8
  %50 = load %struct.Action*, %struct.Action** %a46, align 8
  %kind51 = getelementptr inbounds %struct.Action, %struct.Action* %50, i32 0, i32 0
  %51 = load i32, i32* %kind51, align 4
  %idxprom52 = zext i32 %51 to i64
  %arrayidx53 = getelementptr inbounds [3 x i8*], [3 x i8*]* @action_types, i32 0, i64 %idxprom52
  %52 = load i8*, i8** %arrayidx53, align 8
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* %52)
  %53 = load %struct.Action*, %struct.Action** %a46, align 8
  %kind55 = getelementptr inbounds %struct.Action, %struct.Action* %53, i32 0, i32 0
  %54 = load i32, i32* %kind55, align 4
  %cmp56 = icmp eq i32 %54, 1
  br i1 %cmp56, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %for.body.45
  %55 = load %struct.Action*, %struct.Action** %a46, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %55, i32 0, i32 1
  %56 = load %struct.Term*, %struct.Term** %term, align 8
  call void @print_term(%struct.Term* %56)
  %57 = load %struct.Action*, %struct.Action** %a46, align 8
  %state58 = getelementptr inbounds %struct.Action, %struct.Action* %57, i32 0, i32 3
  %58 = load %struct.State*, %struct.State** %state58, align 8
  %index59 = getelementptr inbounds %struct.State, %struct.State* %58, i32 0, i32 0
  %59 = load i32, i32* %index59, align 4
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i32 0, i32 0), i32 %59)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %for.body.45
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.61
  %60 = load i32, i32* %j, align 4
  %inc64 = add nsw i32 %60, 1
  store i32 %inc64, i32* %j, align 4
  br label %for.cond.42

for.end.65:                                       ; preds = %for.cond.42
  %61 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions66 = getelementptr inbounds %struct.State, %struct.State* %61, i32 0, i32 6
  %n67 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions66, i32 0, i32 0
  %62 = load i32, i32* %n67, align 4
  %cmp68 = icmp ugt i32 %62, 1
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.end.65
  call void @print_conflict(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32* %conflict)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %for.end.65
  %63 = load %struct.State*, %struct.State** %s.addr, align 8
  %reduce_actions71 = getelementptr inbounds %struct.State, %struct.State* %63, i32 0, i32 6
  %n72 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions71, i32 0, i32 0
  %64 = load i32, i32* %n72, align 4
  %tobool73 = icmp ne i32 %64, 0
  br i1 %tobool73, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %if.end.70
  %65 = load %struct.State*, %struct.State** %s.addr, align 8
  %shift_actions74 = getelementptr inbounds %struct.State, %struct.State* %65, i32 0, i32 5
  %n75 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions74, i32 0, i32 0
  %66 = load i32, i32* %n75, align 4
  %tobool76 = icmp ne i32 %66, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %land.lhs.true
  call void @print_conflict(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i32* %conflict)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.77, %land.lhs.true, %if.end.70
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @state_for_declaration(%struct.Grammar* %g, i32 %iproduction) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.Grammar*, align 8
  %iproduction.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 %iproduction, i32* %iproduction.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 7
  %n = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 7
  %v = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations1, i32 0, i32 2
  %5 = load %struct.Declaration**, %struct.Declaration*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %5, i64 %idxprom
  %6 = load %struct.Declaration*, %struct.Declaration** %arrayidx, align 8
  %kind = getelementptr inbounds %struct.Declaration, %struct.Declaration* %6, i32 0, i32 1
  %7 = load i32, i32* %kind, align 4
  %cmp2 = icmp eq i32 %7, 5
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 7
  %v5 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations4, i32 0, i32 2
  %10 = load %struct.Declaration**, %struct.Declaration*** %v5, align 8
  %arrayidx6 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %10, i64 %idxprom3
  %11 = load %struct.Declaration*, %struct.Declaration** %arrayidx6, align 8
  %elem = getelementptr inbounds %struct.Declaration, %struct.Declaration* %11, i32 0, i32 0
  %12 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %12, i32 0, i32 3
  %nterm = bitcast %union.anon* %e to %struct.Production**
  %13 = load %struct.Production*, %struct.Production** %nterm, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %13, i32 0, i32 3
  %14 = load i32, i32* %index, align 4
  %15 = load i32, i32* %iproduction.addr, align 4
  %cmp7 = icmp eq i32 %14, %15
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @build_eq(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %changed = alloca i32, align 4
  %x = alloca i32, align 4
  %xx = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  %ss = alloca %struct.State*, align 8
  %eq = alloca %struct.EqState*, align 8
  %e = alloca %struct.EqState*, align 8
  %ee = alloca %struct.EqState*, align 8
  %ge = alloca %struct.EqState*, align 8
  %gee = alloca %struct.EqState*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 1, i32* %changed, align 4
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %conv = zext i32 %1 to i64
  %mul = mul i64 24, %conv
  %call = call noalias i8* @malloc(i64 %mul) #3
  %2 = bitcast i8* %call to %struct.EqState*
  store %struct.EqState* %2, %struct.EqState** %eq, align 8
  %3 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %4 = bitcast %struct.EqState* %3 to i8*
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 3
  %n2 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 0
  %6 = load i32, i32* %n2, align 4
  %conv3 = zext i32 %6 to i64
  %mul4 = mul i64 24, %conv3
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %mul4, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %for.end.259, %entry
  %7 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.257, %while.body
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 3
  %n6 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states5, i32 0, i32 0
  %10 = load i32, i32* %n6, align 4
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %for.body, label %for.end.259

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states8, i32 0, i32 2
  %13 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %13, i64 %idxprom
  %14 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %14, %struct.State** %s, align 8
  %15 = load %struct.State*, %struct.State** %s, align 8
  %index = getelementptr inbounds %struct.State, %struct.State* %15, i32 0, i32 0
  %16 = load i32, i32* %index, align 4
  %idxprom9 = zext i32 %16 to i64
  %17 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx10 = getelementptr inbounds %struct.EqState, %struct.EqState* %17, i64 %idxprom9
  store %struct.EqState* %arrayidx10, %struct.EqState** %e, align 8
  %18 = load i32, i32* %i, align 4
  %add = add nsw i32 %18, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.254, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 3
  %n13 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states12, i32 0, i32 0
  %21 = load i32, i32* %n13, align 4
  %cmp14 = icmp ult i32 %19, %21
  br i1 %cmp14, label %for.body.16, label %for.end.256

for.body.16:                                      ; preds = %for.cond.11
  %22 = load i32, i32* %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states18 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 3
  %v19 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states18, i32 0, i32 2
  %24 = load %struct.State**, %struct.State*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.State*, %struct.State** %24, i64 %idxprom17
  %25 = load %struct.State*, %struct.State** %arrayidx20, align 8
  store %struct.State* %25, %struct.State** %ss, align 8
  %26 = load %struct.State*, %struct.State** %ss, align 8
  %index21 = getelementptr inbounds %struct.State, %struct.State* %26, i32 0, i32 0
  %27 = load i32, i32* %index21, align 4
  %idxprom22 = zext i32 %27 to i64
  %28 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx23 = getelementptr inbounds %struct.EqState, %struct.EqState* %28, i64 %idxprom22
  store %struct.EqState* %arrayidx23, %struct.EqState** %ee, align 8
  %29 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq24 = getelementptr inbounds %struct.EqState, %struct.EqState* %29, i32 0, i32 0
  %30 = load %struct.State*, %struct.State** %eq24, align 8
  %tobool25 = icmp ne %struct.State* %30, null
  br i1 %tobool25, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.16
  %31 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %eq26 = getelementptr inbounds %struct.EqState, %struct.EqState* %31, i32 0, i32 0
  %32 = load %struct.State*, %struct.State** %eq26, align 8
  %tobool27 = icmp ne %struct.State* %32, null
  br i1 %tobool27, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.16
  br label %for.inc.254

if.end:                                           ; preds = %lor.lhs.false
  %33 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 13
  %34 = load %struct.State*, %struct.State** %same_shifts, align 8
  %35 = load %struct.State*, %struct.State** %ss, align 8
  %same_shifts28 = getelementptr inbounds %struct.State, %struct.State* %35, i32 0, i32 13
  %36 = load %struct.State*, %struct.State** %same_shifts28, align 8
  %cmp29 = icmp ne %struct.State* %34, %36
  br i1 %cmp29, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.end
  %37 = load %struct.State*, %struct.State** %ss, align 8
  %same_shifts31 = getelementptr inbounds %struct.State, %struct.State* %37, i32 0, i32 13
  %38 = load %struct.State*, %struct.State** %same_shifts31, align 8
  %39 = load %struct.State*, %struct.State** %s, align 8
  %cmp32 = icmp ne %struct.State* %38, %39
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true
  br label %for.inc.254

if.end.35:                                        ; preds = %land.lhs.true, %if.end
  %40 = load %struct.State*, %struct.State** %s, align 8
  %gotos = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 4
  %n36 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos, i32 0, i32 0
  %41 = load i32, i32* %n36, align 4
  %42 = load %struct.State*, %struct.State** %ss, align 8
  %gotos37 = getelementptr inbounds %struct.State, %struct.State* %42, i32 0, i32 4
  %n38 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos37, i32 0, i32 0
  %43 = load i32, i32* %n38, align 4
  %cmp39 = icmp ne i32 %41, %43
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.end.35
  br label %for.inc.254

if.end.42:                                        ; preds = %if.end.35
  store i32 0, i32* %k, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc, %if.end.42
  %44 = load i32, i32* %k, align 4
  %45 = load %struct.State*, %struct.State** %s, align 8
  %gotos44 = getelementptr inbounds %struct.State, %struct.State* %45, i32 0, i32 4
  %n45 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos44, i32 0, i32 0
  %46 = load i32, i32* %n45, align 4
  %cmp46 = icmp ult i32 %44, %46
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.43
  %47 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %48 = load i32, i32* %k, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load %struct.State*, %struct.State** %s, align 8
  %gotos50 = getelementptr inbounds %struct.State, %struct.State* %49, i32 0, i32 4
  %v51 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos50, i32 0, i32 2
  %50 = load %struct.Goto**, %struct.Goto*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.Goto*, %struct.Goto** %50, i64 %idxprom49
  %51 = load %struct.Goto*, %struct.Goto** %arrayidx52, align 8
  %elem = getelementptr inbounds %struct.Goto, %struct.Goto* %51, i32 0, i32 0
  %52 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %call53 = call i32 @elem_symbol(%struct.Grammar* %47, %struct.Elem* %52)
  %53 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %54 = load i32, i32* %k, align 4
  %idxprom54 = sext i32 %54 to i64
  %55 = load %struct.State*, %struct.State** %ss, align 8
  %gotos55 = getelementptr inbounds %struct.State, %struct.State* %55, i32 0, i32 4
  %v56 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos55, i32 0, i32 2
  %56 = load %struct.Goto**, %struct.Goto*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.Goto*, %struct.Goto** %56, i64 %idxprom54
  %57 = load %struct.Goto*, %struct.Goto** %arrayidx57, align 8
  %elem58 = getelementptr inbounds %struct.Goto, %struct.Goto* %57, i32 0, i32 0
  %58 = load %struct.Elem*, %struct.Elem** %elem58, align 8
  %call59 = call i32 @elem_symbol(%struct.Grammar* %53, %struct.Elem* %58)
  %cmp60 = icmp ne i32 %call53, %call59
  br i1 %cmp60, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %for.body.48
  br label %Lcontinue

if.end.63:                                        ; preds = %for.body.48
  %59 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %59 to i64
  %60 = load %struct.State*, %struct.State** %s, align 8
  %gotos65 = getelementptr inbounds %struct.State, %struct.State* %60, i32 0, i32 4
  %v66 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos65, i32 0, i32 2
  %61 = load %struct.Goto**, %struct.Goto*** %v66, align 8
  %arrayidx67 = getelementptr inbounds %struct.Goto*, %struct.Goto** %61, i64 %idxprom64
  %62 = load %struct.Goto*, %struct.Goto** %arrayidx67, align 8
  %state = getelementptr inbounds %struct.Goto, %struct.Goto* %62, i32 0, i32 1
  %63 = load %struct.State*, %struct.State** %state, align 8
  %64 = load i32, i32* %k, align 4
  %idxprom68 = sext i32 %64 to i64
  %65 = load %struct.State*, %struct.State** %ss, align 8
  %gotos69 = getelementptr inbounds %struct.State, %struct.State* %65, i32 0, i32 4
  %v70 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos69, i32 0, i32 2
  %66 = load %struct.Goto**, %struct.Goto*** %v70, align 8
  %arrayidx71 = getelementptr inbounds %struct.Goto*, %struct.Goto** %66, i64 %idxprom68
  %67 = load %struct.Goto*, %struct.Goto** %arrayidx71, align 8
  %state72 = getelementptr inbounds %struct.Goto, %struct.Goto* %67, i32 0, i32 1
  %68 = load %struct.State*, %struct.State** %state72, align 8
  %cmp73 = icmp ne %struct.State* %63, %68
  br i1 %cmp73, label %if.then.75, label %if.end.155

if.then.75:                                       ; preds = %if.end.63
  %69 = load i32, i32* %k, align 4
  %idxprom76 = sext i32 %69 to i64
  %70 = load %struct.State*, %struct.State** %s, align 8
  %gotos77 = getelementptr inbounds %struct.State, %struct.State* %70, i32 0, i32 4
  %v78 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos77, i32 0, i32 2
  %71 = load %struct.Goto**, %struct.Goto*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.Goto*, %struct.Goto** %71, i64 %idxprom76
  %72 = load %struct.Goto*, %struct.Goto** %arrayidx79, align 8
  %state80 = getelementptr inbounds %struct.Goto, %struct.Goto* %72, i32 0, i32 1
  %73 = load %struct.State*, %struct.State** %state80, align 8
  %index81 = getelementptr inbounds %struct.State, %struct.State* %73, i32 0, i32 0
  %74 = load i32, i32* %index81, align 4
  %idxprom82 = zext i32 %74 to i64
  %75 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx83 = getelementptr inbounds %struct.EqState, %struct.EqState* %75, i64 %idxprom82
  store %struct.EqState* %arrayidx83, %struct.EqState** %ge, align 8
  %76 = load i32, i32* %k, align 4
  %idxprom84 = sext i32 %76 to i64
  %77 = load %struct.State*, %struct.State** %ss, align 8
  %gotos85 = getelementptr inbounds %struct.State, %struct.State* %77, i32 0, i32 4
  %v86 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos85, i32 0, i32 2
  %78 = load %struct.Goto**, %struct.Goto*** %v86, align 8
  %arrayidx87 = getelementptr inbounds %struct.Goto*, %struct.Goto** %78, i64 %idxprom84
  %79 = load %struct.Goto*, %struct.Goto** %arrayidx87, align 8
  %state88 = getelementptr inbounds %struct.Goto, %struct.Goto* %79, i32 0, i32 1
  %80 = load %struct.State*, %struct.State** %state88, align 8
  %index89 = getelementptr inbounds %struct.State, %struct.State* %80, i32 0, i32 0
  %81 = load i32, i32* %index89, align 4
  %idxprom90 = zext i32 %81 to i64
  %82 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx91 = getelementptr inbounds %struct.EqState, %struct.EqState* %82, i64 %idxprom90
  store %struct.EqState* %arrayidx91, %struct.EqState** %gee, align 8
  %83 = load %struct.EqState*, %struct.EqState** %ge, align 8
  %eq92 = getelementptr inbounds %struct.EqState, %struct.EqState* %83, i32 0, i32 0
  %84 = load %struct.State*, %struct.State** %eq92, align 8
  %85 = load i32, i32* %k, align 4
  %idxprom93 = sext i32 %85 to i64
  %86 = load %struct.State*, %struct.State** %ss, align 8
  %gotos94 = getelementptr inbounds %struct.State, %struct.State* %86, i32 0, i32 4
  %v95 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos94, i32 0, i32 2
  %87 = load %struct.Goto**, %struct.Goto*** %v95, align 8
  %arrayidx96 = getelementptr inbounds %struct.Goto*, %struct.Goto** %87, i64 %idxprom93
  %88 = load %struct.Goto*, %struct.Goto** %arrayidx96, align 8
  %state97 = getelementptr inbounds %struct.Goto, %struct.Goto* %88, i32 0, i32 1
  %89 = load %struct.State*, %struct.State** %state97, align 8
  %cmp98 = icmp ne %struct.State* %84, %89
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.110

land.lhs.true.100:                                ; preds = %if.then.75
  %90 = load %struct.EqState*, %struct.EqState** %gee, align 8
  %eq101 = getelementptr inbounds %struct.EqState, %struct.EqState* %90, i32 0, i32 0
  %91 = load %struct.State*, %struct.State** %eq101, align 8
  %92 = load i32, i32* %k, align 4
  %idxprom102 = sext i32 %92 to i64
  %93 = load %struct.State*, %struct.State** %s, align 8
  %gotos103 = getelementptr inbounds %struct.State, %struct.State* %93, i32 0, i32 4
  %v104 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos103, i32 0, i32 2
  %94 = load %struct.Goto**, %struct.Goto*** %v104, align 8
  %arrayidx105 = getelementptr inbounds %struct.Goto*, %struct.Goto** %94, i64 %idxprom102
  %95 = load %struct.Goto*, %struct.Goto** %arrayidx105, align 8
  %state106 = getelementptr inbounds %struct.Goto, %struct.Goto* %95, i32 0, i32 1
  %96 = load %struct.State*, %struct.State** %state106, align 8
  %cmp107 = icmp ne %struct.State* %91, %96
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.100
  br label %Lcontinue

if.end.110:                                       ; preds = %land.lhs.true.100, %if.then.75
  %97 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_state = getelementptr inbounds %struct.EqState, %struct.EqState* %97, i32 0, i32 2
  %98 = load %struct.State*, %struct.State** %diff_state, align 8
  %tobool111 = icmp ne %struct.State* %98, null
  br i1 %tobool111, label %land.lhs.true.112, label %lor.lhs.false.125

land.lhs.true.112:                                ; preds = %if.end.110
  %99 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_state113 = getelementptr inbounds %struct.EqState, %struct.EqState* %99, i32 0, i32 2
  %100 = load %struct.State*, %struct.State** %diff_state113, align 8
  %101 = load i32, i32* %k, align 4
  %idxprom114 = sext i32 %101 to i64
  %102 = load %struct.State*, %struct.State** %ss, align 8
  %gotos115 = getelementptr inbounds %struct.State, %struct.State* %102, i32 0, i32 4
  %v116 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos115, i32 0, i32 2
  %103 = load %struct.Goto**, %struct.Goto*** %v116, align 8
  %arrayidx117 = getelementptr inbounds %struct.Goto*, %struct.Goto** %103, i64 %idxprom114
  %104 = load %struct.Goto*, %struct.Goto** %arrayidx117, align 8
  %state118 = getelementptr inbounds %struct.Goto, %struct.Goto* %104, i32 0, i32 1
  %105 = load %struct.State*, %struct.State** %state118, align 8
  %index119 = getelementptr inbounds %struct.State, %struct.State* %105, i32 0, i32 0
  %106 = load i32, i32* %index119, align 4
  %idxprom120 = zext i32 %106 to i64
  %107 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx121 = getelementptr inbounds %struct.EqState, %struct.EqState* %107, i64 %idxprom120
  %eq122 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx121, i32 0, i32 0
  %108 = load %struct.State*, %struct.State** %eq122, align 8
  %cmp123 = icmp ne %struct.State* %100, %108
  br i1 %cmp123, label %if.then.141, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %land.lhs.true.112, %if.end.110
  %109 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state126 = getelementptr inbounds %struct.EqState, %struct.EqState* %109, i32 0, i32 2
  %110 = load %struct.State*, %struct.State** %diff_state126, align 8
  %tobool127 = icmp ne %struct.State* %110, null
  br i1 %tobool127, label %land.lhs.true.128, label %if.end.142

land.lhs.true.128:                                ; preds = %lor.lhs.false.125
  %111 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state129 = getelementptr inbounds %struct.EqState, %struct.EqState* %111, i32 0, i32 2
  %112 = load %struct.State*, %struct.State** %diff_state129, align 8
  %113 = load i32, i32* %k, align 4
  %idxprom130 = sext i32 %113 to i64
  %114 = load %struct.State*, %struct.State** %s, align 8
  %gotos131 = getelementptr inbounds %struct.State, %struct.State* %114, i32 0, i32 4
  %v132 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos131, i32 0, i32 2
  %115 = load %struct.Goto**, %struct.Goto*** %v132, align 8
  %arrayidx133 = getelementptr inbounds %struct.Goto*, %struct.Goto** %115, i64 %idxprom130
  %116 = load %struct.Goto*, %struct.Goto** %arrayidx133, align 8
  %state134 = getelementptr inbounds %struct.Goto, %struct.Goto* %116, i32 0, i32 1
  %117 = load %struct.State*, %struct.State** %state134, align 8
  %index135 = getelementptr inbounds %struct.State, %struct.State* %117, i32 0, i32 0
  %118 = load i32, i32* %index135, align 4
  %idxprom136 = zext i32 %118 to i64
  %119 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx137 = getelementptr inbounds %struct.EqState, %struct.EqState* %119, i64 %idxprom136
  %eq138 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx137, i32 0, i32 0
  %120 = load %struct.State*, %struct.State** %eq138, align 8
  %cmp139 = icmp ne %struct.State* %112, %120
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %land.lhs.true.128, %land.lhs.true.112
  br label %Lcontinue

if.end.142:                                       ; preds = %land.lhs.true.128, %lor.lhs.false.125
  %121 = load i32, i32* %k, align 4
  %idxprom143 = sext i32 %121 to i64
  %122 = load %struct.State*, %struct.State** %ss, align 8
  %gotos144 = getelementptr inbounds %struct.State, %struct.State* %122, i32 0, i32 4
  %v145 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos144, i32 0, i32 2
  %123 = load %struct.Goto**, %struct.Goto*** %v145, align 8
  %arrayidx146 = getelementptr inbounds %struct.Goto*, %struct.Goto** %123, i64 %idxprom143
  %124 = load %struct.Goto*, %struct.Goto** %arrayidx146, align 8
  %state147 = getelementptr inbounds %struct.Goto, %struct.Goto* %124, i32 0, i32 1
  %125 = load %struct.State*, %struct.State** %state147, align 8
  %126 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_state148 = getelementptr inbounds %struct.EqState, %struct.EqState* %126, i32 0, i32 2
  store %struct.State* %125, %struct.State** %diff_state148, align 8
  %127 = load i32, i32* %k, align 4
  %idxprom149 = sext i32 %127 to i64
  %128 = load %struct.State*, %struct.State** %s, align 8
  %gotos150 = getelementptr inbounds %struct.State, %struct.State* %128, i32 0, i32 4
  %v151 = getelementptr inbounds %struct.VecGoto, %struct.VecGoto* %gotos150, i32 0, i32 2
  %129 = load %struct.Goto**, %struct.Goto*** %v151, align 8
  %arrayidx152 = getelementptr inbounds %struct.Goto*, %struct.Goto** %129, i64 %idxprom149
  %130 = load %struct.Goto*, %struct.Goto** %arrayidx152, align 8
  %state153 = getelementptr inbounds %struct.Goto, %struct.Goto* %130, i32 0, i32 1
  %131 = load %struct.State*, %struct.State** %state153, align 8
  %132 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state154 = getelementptr inbounds %struct.EqState, %struct.EqState* %132, i32 0, i32 2
  store %struct.State* %131, %struct.State** %diff_state154, align 8
  br label %if.end.155

if.end.155:                                       ; preds = %if.end.142, %if.end.63
  br label %for.inc

for.inc:                                          ; preds = %if.end.155
  %133 = load i32, i32* %k, align 4
  %inc = add nsw i32 %133, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.43

for.end:                                          ; preds = %for.cond.43
  %134 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions = getelementptr inbounds %struct.State, %struct.State* %134, i32 0, i32 6
  %n156 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions, i32 0, i32 0
  %135 = load i32, i32* %n156, align 4
  %136 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions157 = getelementptr inbounds %struct.State, %struct.State* %136, i32 0, i32 6
  %n158 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions157, i32 0, i32 0
  %137 = load i32, i32* %n158, align 4
  %cmp159 = icmp ne i32 %135, %137
  br i1 %cmp159, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %for.end
  br label %for.inc.254

if.end.162:                                       ; preds = %for.end
  store i32 0, i32* %k, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.250, %if.end.162
  %138 = load i32, i32* %k, align 4
  %139 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions164 = getelementptr inbounds %struct.State, %struct.State* %139, i32 0, i32 6
  %n165 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions164, i32 0, i32 0
  %140 = load i32, i32* %n165, align 4
  %cmp166 = icmp ult i32 %138, %140
  br i1 %cmp166, label %for.body.168, label %for.end.252

for.body.168:                                     ; preds = %for.cond.163
  %141 = load i32, i32* %k, align 4
  %idxprom169 = sext i32 %141 to i64
  %142 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions170 = getelementptr inbounds %struct.State, %struct.State* %142, i32 0, i32 6
  %v171 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions170, i32 0, i32 2
  %143 = load %struct.Action**, %struct.Action*** %v171, align 8
  %arrayidx172 = getelementptr inbounds %struct.Action*, %struct.Action** %143, i64 %idxprom169
  %144 = load %struct.Action*, %struct.Action** %arrayidx172, align 8
  %rule = getelementptr inbounds %struct.Action, %struct.Action* %144, i32 0, i32 2
  %145 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %146 = load i32, i32* %k, align 4
  %idxprom173 = sext i32 %146 to i64
  %147 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions174 = getelementptr inbounds %struct.State, %struct.State* %147, i32 0, i32 6
  %v175 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions174, i32 0, i32 2
  %148 = load %struct.Action**, %struct.Action*** %v175, align 8
  %arrayidx176 = getelementptr inbounds %struct.Action*, %struct.Action** %148, i64 %idxprom173
  %149 = load %struct.Action*, %struct.Action** %arrayidx176, align 8
  %rule177 = getelementptr inbounds %struct.Action, %struct.Action* %149, i32 0, i32 2
  %150 = load %struct.Rule*, %struct.Rule** %rule177, align 8
  %cmp178 = icmp eq %struct.Rule* %145, %150
  br i1 %cmp178, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.168
  br label %for.inc.250

if.end.181:                                       ; preds = %for.body.168
  %151 = load i32, i32* %k, align 4
  %idxprom182 = sext i32 %151 to i64
  %152 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions183 = getelementptr inbounds %struct.State, %struct.State* %152, i32 0, i32 6
  %v184 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions183, i32 0, i32 2
  %153 = load %struct.Action**, %struct.Action*** %v184, align 8
  %arrayidx185 = getelementptr inbounds %struct.Action*, %struct.Action** %153, i64 %idxprom182
  %154 = load %struct.Action*, %struct.Action** %arrayidx185, align 8
  %rule186 = getelementptr inbounds %struct.Action, %struct.Action* %154, i32 0, i32 2
  %155 = load %struct.Rule*, %struct.Rule** %rule186, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %155, i32 0, i32 1
  %156 = load %struct.Production*, %struct.Production** %prod, align 8
  %157 = load i32, i32* %k, align 4
  %idxprom187 = sext i32 %157 to i64
  %158 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions188 = getelementptr inbounds %struct.State, %struct.State* %158, i32 0, i32 6
  %v189 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions188, i32 0, i32 2
  %159 = load %struct.Action**, %struct.Action*** %v189, align 8
  %arrayidx190 = getelementptr inbounds %struct.Action*, %struct.Action** %159, i64 %idxprom187
  %160 = load %struct.Action*, %struct.Action** %arrayidx190, align 8
  %rule191 = getelementptr inbounds %struct.Action, %struct.Action* %160, i32 0, i32 2
  %161 = load %struct.Rule*, %struct.Rule** %rule191, align 8
  %prod192 = getelementptr inbounds %struct.Rule, %struct.Rule* %161, i32 0, i32 1
  %162 = load %struct.Production*, %struct.Production** %prod192, align 8
  %cmp193 = icmp ne %struct.Production* %156, %162
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.end.181
  br label %Lcontinue

if.end.196:                                       ; preds = %if.end.181
  %163 = load i32, i32* %k, align 4
  %idxprom197 = sext i32 %163 to i64
  %164 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions198 = getelementptr inbounds %struct.State, %struct.State* %164, i32 0, i32 6
  %v199 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions198, i32 0, i32 2
  %165 = load %struct.Action**, %struct.Action*** %v199, align 8
  %arrayidx200 = getelementptr inbounds %struct.Action*, %struct.Action** %165, i64 %idxprom197
  %166 = load %struct.Action*, %struct.Action** %arrayidx200, align 8
  %rule201 = getelementptr inbounds %struct.Action, %struct.Action* %166, i32 0, i32 2
  %167 = load %struct.Rule*, %struct.Rule** %rule201, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %167, i32 0, i32 6
  %n202 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %168 = load i32, i32* %n202, align 4
  store i32 %168, i32* %x, align 4
  %169 = load i32, i32* %k, align 4
  %idxprom203 = sext i32 %169 to i64
  %170 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions204 = getelementptr inbounds %struct.State, %struct.State* %170, i32 0, i32 6
  %v205 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions204, i32 0, i32 2
  %171 = load %struct.Action**, %struct.Action*** %v205, align 8
  %arrayidx206 = getelementptr inbounds %struct.Action*, %struct.Action** %171, i64 %idxprom203
  %172 = load %struct.Action*, %struct.Action** %arrayidx206, align 8
  %rule207 = getelementptr inbounds %struct.Action, %struct.Action* %172, i32 0, i32 2
  %173 = load %struct.Rule*, %struct.Rule** %rule207, align 8
  %elems208 = getelementptr inbounds %struct.Rule, %struct.Rule* %173, i32 0, i32 6
  %n209 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems208, i32 0, i32 0
  %174 = load i32, i32* %n209, align 4
  store i32 %174, i32* %xx, align 4
  %cmp210 = icmp ne i32 %168, %174
  br i1 %cmp210, label %if.then.212, label %if.end.249

if.then.212:                                      ; preds = %if.end.196
  %175 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_rule = getelementptr inbounds %struct.EqState, %struct.EqState* %175, i32 0, i32 1
  %176 = load %struct.Rule*, %struct.Rule** %diff_rule, align 8
  %tobool213 = icmp ne %struct.Rule* %176, null
  br i1 %tobool213, label %land.lhs.true.214, label %lor.lhs.false.223

land.lhs.true.214:                                ; preds = %if.then.212
  %177 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_rule215 = getelementptr inbounds %struct.EqState, %struct.EqState* %177, i32 0, i32 1
  %178 = load %struct.Rule*, %struct.Rule** %diff_rule215, align 8
  %179 = load i32, i32* %k, align 4
  %idxprom216 = sext i32 %179 to i64
  %180 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions217 = getelementptr inbounds %struct.State, %struct.State* %180, i32 0, i32 6
  %v218 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions217, i32 0, i32 2
  %181 = load %struct.Action**, %struct.Action*** %v218, align 8
  %arrayidx219 = getelementptr inbounds %struct.Action*, %struct.Action** %181, i64 %idxprom216
  %182 = load %struct.Action*, %struct.Action** %arrayidx219, align 8
  %rule220 = getelementptr inbounds %struct.Action, %struct.Action* %182, i32 0, i32 2
  %183 = load %struct.Rule*, %struct.Rule** %rule220, align 8
  %cmp221 = icmp ne %struct.Rule* %178, %183
  br i1 %cmp221, label %if.then.235, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %land.lhs.true.214, %if.then.212
  %184 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule224 = getelementptr inbounds %struct.EqState, %struct.EqState* %184, i32 0, i32 1
  %185 = load %struct.Rule*, %struct.Rule** %diff_rule224, align 8
  %tobool225 = icmp ne %struct.Rule* %185, null
  br i1 %tobool225, label %land.lhs.true.226, label %if.end.236

land.lhs.true.226:                                ; preds = %lor.lhs.false.223
  %186 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule227 = getelementptr inbounds %struct.EqState, %struct.EqState* %186, i32 0, i32 1
  %187 = load %struct.Rule*, %struct.Rule** %diff_rule227, align 8
  %188 = load i32, i32* %k, align 4
  %idxprom228 = sext i32 %188 to i64
  %189 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions229 = getelementptr inbounds %struct.State, %struct.State* %189, i32 0, i32 6
  %v230 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions229, i32 0, i32 2
  %190 = load %struct.Action**, %struct.Action*** %v230, align 8
  %arrayidx231 = getelementptr inbounds %struct.Action*, %struct.Action** %190, i64 %idxprom228
  %191 = load %struct.Action*, %struct.Action** %arrayidx231, align 8
  %rule232 = getelementptr inbounds %struct.Action, %struct.Action* %191, i32 0, i32 2
  %192 = load %struct.Rule*, %struct.Rule** %rule232, align 8
  %cmp233 = icmp ne %struct.Rule* %187, %192
  br i1 %cmp233, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %land.lhs.true.226, %land.lhs.true.214
  br label %Lcontinue

if.end.236:                                       ; preds = %land.lhs.true.226, %lor.lhs.false.223
  %193 = load i32, i32* %k, align 4
  %idxprom237 = sext i32 %193 to i64
  %194 = load %struct.State*, %struct.State** %ss, align 8
  %reduce_actions238 = getelementptr inbounds %struct.State, %struct.State* %194, i32 0, i32 6
  %v239 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions238, i32 0, i32 2
  %195 = load %struct.Action**, %struct.Action*** %v239, align 8
  %arrayidx240 = getelementptr inbounds %struct.Action*, %struct.Action** %195, i64 %idxprom237
  %196 = load %struct.Action*, %struct.Action** %arrayidx240, align 8
  %rule241 = getelementptr inbounds %struct.Action, %struct.Action* %196, i32 0, i32 2
  %197 = load %struct.Rule*, %struct.Rule** %rule241, align 8
  %198 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %diff_rule242 = getelementptr inbounds %struct.EqState, %struct.EqState* %198, i32 0, i32 1
  store %struct.Rule* %197, %struct.Rule** %diff_rule242, align 8
  %199 = load i32, i32* %k, align 4
  %idxprom243 = sext i32 %199 to i64
  %200 = load %struct.State*, %struct.State** %s, align 8
  %reduce_actions244 = getelementptr inbounds %struct.State, %struct.State* %200, i32 0, i32 6
  %v245 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %reduce_actions244, i32 0, i32 2
  %201 = load %struct.Action**, %struct.Action*** %v245, align 8
  %arrayidx246 = getelementptr inbounds %struct.Action*, %struct.Action** %201, i64 %idxprom243
  %202 = load %struct.Action*, %struct.Action** %arrayidx246, align 8
  %rule247 = getelementptr inbounds %struct.Action, %struct.Action* %202, i32 0, i32 2
  %203 = load %struct.Rule*, %struct.Rule** %rule247, align 8
  %204 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule248 = getelementptr inbounds %struct.EqState, %struct.EqState* %204, i32 0, i32 1
  store %struct.Rule* %203, %struct.Rule** %diff_rule248, align 8
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.236, %if.end.196
  br label %for.inc.250

for.inc.250:                                      ; preds = %if.end.249, %if.then.180
  %205 = load i32, i32* %k, align 4
  %inc251 = add nsw i32 %205, 1
  store i32 %inc251, i32* %k, align 4
  br label %for.cond.163

for.end.252:                                      ; preds = %for.cond.163
  %206 = load %struct.State*, %struct.State** %s, align 8
  %207 = load %struct.EqState*, %struct.EqState** %ee, align 8
  %eq253 = getelementptr inbounds %struct.EqState, %struct.EqState* %207, i32 0, i32 0
  store %struct.State* %206, %struct.State** %eq253, align 8
  store i32 1, i32* %changed, align 4
  br label %Lcontinue

Lcontinue:                                        ; preds = %for.end.252, %if.then.235, %if.then.195, %if.then.141, %if.then.109, %if.then.62
  br label %for.inc.254

for.inc.254:                                      ; preds = %Lcontinue, %if.then.161, %if.then.41, %if.then.34, %if.then
  %208 = load i32, i32* %j, align 4
  %inc255 = add nsw i32 %208, 1
  store i32 %inc255, i32* %j, align 4
  br label %for.cond.11

for.end.256:                                      ; preds = %for.cond.11
  br label %for.inc.257

for.inc.257:                                      ; preds = %for.end.256
  %209 = load i32, i32* %i, align 4
  %inc258 = add nsw i32 %209, 1
  store i32 %inc258, i32* %i, align 4
  br label %for.cond

for.end.259:                                      ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.260

for.cond.260:                                     ; preds = %for.inc.313, %while.end
  %210 = load i32, i32* %i, align 4
  %211 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states261 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %211, i32 0, i32 3
  %n262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states261, i32 0, i32 0
  %212 = load i32, i32* %n262, align 4
  %cmp263 = icmp ult i32 %210, %212
  br i1 %cmp263, label %for.body.265, label %for.end.315

for.body.265:                                     ; preds = %for.cond.260
  %213 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %213 to i64
  %214 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states267 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %214, i32 0, i32 3
  %v268 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states267, i32 0, i32 2
  %215 = load %struct.State**, %struct.State*** %v268, align 8
  %arrayidx269 = getelementptr inbounds %struct.State*, %struct.State** %215, i64 %idxprom266
  %216 = load %struct.State*, %struct.State** %arrayidx269, align 8
  store %struct.State* %216, %struct.State** %s, align 8
  %217 = load %struct.State*, %struct.State** %s, align 8
  %index270 = getelementptr inbounds %struct.State, %struct.State* %217, i32 0, i32 0
  %218 = load i32, i32* %index270, align 4
  %idxprom271 = zext i32 %218 to i64
  %219 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx272 = getelementptr inbounds %struct.EqState, %struct.EqState* %219, i64 %idxprom271
  store %struct.EqState* %arrayidx272, %struct.EqState** %e, align 8
  %220 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq273 = getelementptr inbounds %struct.EqState, %struct.EqState* %220, i32 0, i32 0
  %221 = load %struct.State*, %struct.State** %eq273, align 8
  %tobool274 = icmp ne %struct.State* %221, null
  br i1 %tobool274, label %if.then.275, label %if.end.312

if.then.275:                                      ; preds = %for.body.265
  %222 = load i32, i32* @verbose_level, align 4
  %cmp276 = icmp sgt i32 %222, 2
  br i1 %cmp276, label %if.then.278, label %if.end.311

if.then.278:                                      ; preds = %if.then.275
  %223 = load %struct.State*, %struct.State** %s, align 8
  %index279 = getelementptr inbounds %struct.State, %struct.State* %223, i32 0, i32 0
  %224 = load i32, i32* %index279, align 4
  %225 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq280 = getelementptr inbounds %struct.EqState, %struct.EqState* %225, i32 0, i32 0
  %226 = load %struct.State*, %struct.State** %eq280, align 8
  %index281 = getelementptr inbounds %struct.State, %struct.State* %226, i32 0, i32 0
  %227 = load i32, i32* %index281, align 4
  %call282 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %224, i32 %227)
  %228 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state283 = getelementptr inbounds %struct.EqState, %struct.EqState* %228, i32 0, i32 2
  %229 = load %struct.State*, %struct.State** %diff_state283, align 8
  %tobool284 = icmp ne %struct.State* %229, null
  br i1 %tobool284, label %if.then.285, label %if.end.295

if.then.285:                                      ; preds = %if.then.278
  %230 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state286 = getelementptr inbounds %struct.EqState, %struct.EqState* %230, i32 0, i32 2
  %231 = load %struct.State*, %struct.State** %diff_state286, align 8
  %index287 = getelementptr inbounds %struct.State, %struct.State* %231, i32 0, i32 0
  %232 = load i32, i32* %index287, align 4
  %233 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq288 = getelementptr inbounds %struct.EqState, %struct.EqState* %233, i32 0, i32 0
  %234 = load %struct.State*, %struct.State** %eq288, align 8
  %index289 = getelementptr inbounds %struct.State, %struct.State* %234, i32 0, i32 0
  %235 = load i32, i32* %index289, align 4
  %idxprom290 = zext i32 %235 to i64
  %236 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx291 = getelementptr inbounds %struct.EqState, %struct.EqState* %236, i64 %idxprom290
  %diff_state292 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx291, i32 0, i32 2
  %237 = load %struct.State*, %struct.State** %diff_state292, align 8
  %index293 = getelementptr inbounds %struct.State, %struct.State* %237, i32 0, i32 0
  %238 = load i32, i32* %index293, align 4
  %call294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i32 0, i32 0), i32 %232, i32 %238)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.285, %if.then.278
  %239 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule296 = getelementptr inbounds %struct.EqState, %struct.EqState* %239, i32 0, i32 1
  %240 = load %struct.Rule*, %struct.Rule** %diff_rule296, align 8
  %tobool297 = icmp ne %struct.Rule* %240, null
  br i1 %tobool297, label %if.then.298, label %if.end.309

if.then.298:                                      ; preds = %if.end.295
  %call299 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0))
  %call300 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  %241 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule301 = getelementptr inbounds %struct.EqState, %struct.EqState* %241, i32 0, i32 1
  %242 = load %struct.Rule*, %struct.Rule** %diff_rule301, align 8
  call void @print_rule(%struct.Rule* %242)
  %call302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0))
  %243 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq303 = getelementptr inbounds %struct.EqState, %struct.EqState* %243, i32 0, i32 0
  %244 = load %struct.State*, %struct.State** %eq303, align 8
  %index304 = getelementptr inbounds %struct.State, %struct.State* %244, i32 0, i32 0
  %245 = load i32, i32* %index304, align 4
  %idxprom305 = zext i32 %245 to i64
  %246 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx306 = getelementptr inbounds %struct.EqState, %struct.EqState* %246, i64 %idxprom305
  %diff_rule307 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx306, i32 0, i32 1
  %247 = load %struct.Rule*, %struct.Rule** %diff_rule307, align 8
  call void @print_rule(%struct.Rule* %247)
  %call308 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.298, %if.end.295
  %call310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.309, %if.then.275
  br label %if.end.312

if.end.312:                                       ; preds = %if.end.311, %for.body.265
  br label %for.inc.313

for.inc.313:                                      ; preds = %if.end.312
  %248 = load i32, i32* %i, align 4
  %inc314 = add nsw i32 %248, 1
  store i32 %inc314, i32* %i, align 4
  br label %for.cond.260

for.end.315:                                      ; preds = %for.cond.260
  store i32 0, i32* %i, align 4
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.397, %for.end.315
  %249 = load i32, i32* %i, align 4
  %250 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states317 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %250, i32 0, i32 3
  %n318 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states317, i32 0, i32 0
  %251 = load i32, i32* %n318, align 4
  %cmp319 = icmp ult i32 %249, %251
  br i1 %cmp319, label %for.body.321, label %for.end.399

for.body.321:                                     ; preds = %for.cond.316
  %252 = load i32, i32* %i, align 4
  %idxprom322 = sext i32 %252 to i64
  %253 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states323 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %253, i32 0, i32 3
  %v324 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states323, i32 0, i32 2
  %254 = load %struct.State**, %struct.State*** %v324, align 8
  %arrayidx325 = getelementptr inbounds %struct.State*, %struct.State** %254, i64 %idxprom322
  %255 = load %struct.State*, %struct.State** %arrayidx325, align 8
  store %struct.State* %255, %struct.State** %s, align 8
  %256 = load %struct.State*, %struct.State** %s, align 8
  %index326 = getelementptr inbounds %struct.State, %struct.State* %256, i32 0, i32 0
  %257 = load i32, i32* %index326, align 4
  %idxprom327 = zext i32 %257 to i64
  %258 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx328 = getelementptr inbounds %struct.EqState, %struct.EqState* %258, i64 %idxprom327
  store %struct.EqState* %arrayidx328, %struct.EqState** %e, align 8
  %259 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq329 = getelementptr inbounds %struct.EqState, %struct.EqState* %259, i32 0, i32 0
  %260 = load %struct.State*, %struct.State** %eq329, align 8
  %tobool330 = icmp ne %struct.State* %260, null
  br i1 %tobool330, label %land.lhs.true.331, label %if.end.396

land.lhs.true.331:                                ; preds = %for.body.321
  %261 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state332 = getelementptr inbounds %struct.EqState, %struct.EqState* %261, i32 0, i32 2
  %262 = load %struct.State*, %struct.State** %diff_state332, align 8
  %tobool333 = icmp ne %struct.State* %262, null
  br i1 %tobool333, label %if.then.334, label %if.end.396

if.then.334:                                      ; preds = %land.lhs.true.331
  %263 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state335 = getelementptr inbounds %struct.EqState, %struct.EqState* %263, i32 0, i32 2
  %264 = load %struct.State*, %struct.State** %diff_state335, align 8
  %index336 = getelementptr inbounds %struct.State, %struct.State* %264, i32 0, i32 0
  %265 = load i32, i32* %index336, align 4
  %idxprom337 = zext i32 %265 to i64
  %266 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx338 = getelementptr inbounds %struct.EqState, %struct.EqState* %266, i64 %idxprom337
  %diff_rule339 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx338, i32 0, i32 1
  %267 = load %struct.Rule*, %struct.Rule** %diff_rule339, align 8
  %tobool340 = icmp ne %struct.Rule* %267, null
  br i1 %tobool340, label %land.lhs.true.341, label %if.else

land.lhs.true.341:                                ; preds = %if.then.334
  %268 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_state342 = getelementptr inbounds %struct.EqState, %struct.EqState* %268, i32 0, i32 2
  %269 = load %struct.State*, %struct.State** %diff_state342, align 8
  %index343 = getelementptr inbounds %struct.State, %struct.State* %269, i32 0, i32 0
  %270 = load i32, i32* %index343, align 4
  %idxprom344 = zext i32 %270 to i64
  %271 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx345 = getelementptr inbounds %struct.EqState, %struct.EqState* %271, i64 %idxprom344
  %diff_rule346 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx345, i32 0, i32 1
  %272 = load %struct.Rule*, %struct.Rule** %diff_rule346, align 8
  %elems347 = getelementptr inbounds %struct.Rule, %struct.Rule* %272, i32 0, i32 6
  %n348 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems347, i32 0, i32 0
  %273 = load i32, i32* %n348, align 4
  %cmp349 = icmp eq i32 %273, 2
  br i1 %cmp349, label %if.then.351, label %if.else

if.then.351:                                      ; preds = %land.lhs.true.341
  %274 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq352 = getelementptr inbounds %struct.EqState, %struct.EqState* %274, i32 0, i32 0
  %275 = load %struct.State*, %struct.State** %eq352, align 8
  %276 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to = getelementptr inbounds %struct.State, %struct.State* %276, i32 0, i32 14
  store %struct.State* %275, %struct.State** %reduces_to, align 8
  %277 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq353 = getelementptr inbounds %struct.EqState, %struct.EqState* %277, i32 0, i32 0
  %278 = load %struct.State*, %struct.State** %eq353, align 8
  %index354 = getelementptr inbounds %struct.State, %struct.State* %278, i32 0, i32 0
  %279 = load i32, i32* %index354, align 4
  %idxprom355 = zext i32 %279 to i64
  %280 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx356 = getelementptr inbounds %struct.EqState, %struct.EqState* %280, i64 %idxprom355
  %diff_rule357 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx356, i32 0, i32 1
  %281 = load %struct.Rule*, %struct.Rule** %diff_rule357, align 8
  %282 = load %struct.State*, %struct.State** %s, align 8
  %reduces_with = getelementptr inbounds %struct.State, %struct.State* %282, i32 0, i32 15
  store %struct.Rule* %281, %struct.Rule** %reduces_with, align 8
  %283 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule358 = getelementptr inbounds %struct.EqState, %struct.EqState* %283, i32 0, i32 1
  %284 = load %struct.Rule*, %struct.Rule** %diff_rule358, align 8
  %285 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to_then_with = getelementptr inbounds %struct.State, %struct.State* %285, i32 0, i32 16
  store %struct.Rule* %284, %struct.Rule** %reduces_to_then_with, align 8
  br label %if.end.395

if.else:                                          ; preds = %land.lhs.true.341, %if.then.334
  %286 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq359 = getelementptr inbounds %struct.EqState, %struct.EqState* %286, i32 0, i32 0
  %287 = load %struct.State*, %struct.State** %eq359, align 8
  %index360 = getelementptr inbounds %struct.State, %struct.State* %287, i32 0, i32 0
  %288 = load i32, i32* %index360, align 4
  %idxprom361 = zext i32 %288 to i64
  %289 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx362 = getelementptr inbounds %struct.EqState, %struct.EqState* %289, i64 %idxprom361
  %diff_state363 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx362, i32 0, i32 2
  %290 = load %struct.State*, %struct.State** %diff_state363, align 8
  %index364 = getelementptr inbounds %struct.State, %struct.State* %290, i32 0, i32 0
  %291 = load i32, i32* %index364, align 4
  %idxprom365 = zext i32 %291 to i64
  %292 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx366 = getelementptr inbounds %struct.EqState, %struct.EqState* %292, i64 %idxprom365
  %diff_rule367 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx366, i32 0, i32 1
  %293 = load %struct.Rule*, %struct.Rule** %diff_rule367, align 8
  %tobool368 = icmp ne %struct.Rule* %293, null
  br i1 %tobool368, label %land.lhs.true.369, label %if.end.394

land.lhs.true.369:                                ; preds = %if.else
  %294 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq370 = getelementptr inbounds %struct.EqState, %struct.EqState* %294, i32 0, i32 0
  %295 = load %struct.State*, %struct.State** %eq370, align 8
  %index371 = getelementptr inbounds %struct.State, %struct.State* %295, i32 0, i32 0
  %296 = load i32, i32* %index371, align 4
  %idxprom372 = zext i32 %296 to i64
  %297 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx373 = getelementptr inbounds %struct.EqState, %struct.EqState* %297, i64 %idxprom372
  %diff_state374 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx373, i32 0, i32 2
  %298 = load %struct.State*, %struct.State** %diff_state374, align 8
  %index375 = getelementptr inbounds %struct.State, %struct.State* %298, i32 0, i32 0
  %299 = load i32, i32* %index375, align 4
  %idxprom376 = zext i32 %299 to i64
  %300 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx377 = getelementptr inbounds %struct.EqState, %struct.EqState* %300, i64 %idxprom376
  %diff_rule378 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx377, i32 0, i32 1
  %301 = load %struct.Rule*, %struct.Rule** %diff_rule378, align 8
  %elems379 = getelementptr inbounds %struct.Rule, %struct.Rule* %301, i32 0, i32 6
  %n380 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems379, i32 0, i32 0
  %302 = load i32, i32* %n380, align 4
  %cmp381 = icmp eq i32 %302, 2
  br i1 %cmp381, label %if.then.383, label %if.end.394

if.then.383:                                      ; preds = %land.lhs.true.369
  %303 = load %struct.State*, %struct.State** %s, align 8
  %304 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq384 = getelementptr inbounds %struct.EqState, %struct.EqState* %304, i32 0, i32 0
  %305 = load %struct.State*, %struct.State** %eq384, align 8
  %reduces_to385 = getelementptr inbounds %struct.State, %struct.State* %305, i32 0, i32 14
  store %struct.State* %303, %struct.State** %reduces_to385, align 8
  %306 = load %struct.EqState*, %struct.EqState** %e, align 8
  %diff_rule386 = getelementptr inbounds %struct.EqState, %struct.EqState* %306, i32 0, i32 1
  %307 = load %struct.Rule*, %struct.Rule** %diff_rule386, align 8
  %308 = load %struct.State*, %struct.State** %s, align 8
  %reduces_with387 = getelementptr inbounds %struct.State, %struct.State* %308, i32 0, i32 15
  store %struct.Rule* %307, %struct.Rule** %reduces_with387, align 8
  %309 = load %struct.EqState*, %struct.EqState** %e, align 8
  %eq388 = getelementptr inbounds %struct.EqState, %struct.EqState* %309, i32 0, i32 0
  %310 = load %struct.State*, %struct.State** %eq388, align 8
  %index389 = getelementptr inbounds %struct.State, %struct.State* %310, i32 0, i32 0
  %311 = load i32, i32* %index389, align 4
  %idxprom390 = zext i32 %311 to i64
  %312 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %arrayidx391 = getelementptr inbounds %struct.EqState, %struct.EqState* %312, i64 %idxprom390
  %diff_rule392 = getelementptr inbounds %struct.EqState, %struct.EqState* %arrayidx391, i32 0, i32 1
  %313 = load %struct.Rule*, %struct.Rule** %diff_rule392, align 8
  %314 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to_then_with393 = getelementptr inbounds %struct.State, %struct.State* %314, i32 0, i32 16
  store %struct.Rule* %313, %struct.Rule** %reduces_to_then_with393, align 8
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.383, %land.lhs.true.369, %if.else
  br label %if.end.395

if.end.395:                                       ; preds = %if.end.394, %if.then.351
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %land.lhs.true.331, %for.body.321
  br label %for.inc.397

for.inc.397:                                      ; preds = %if.end.396
  %315 = load i32, i32* %i, align 4
  %inc398 = add nsw i32 %315, 1
  store i32 %inc398, i32* %i, align 4
  br label %for.cond.316

for.end.399:                                      ; preds = %for.cond.316
  store i32 0, i32* %i, align 4
  br label %for.cond.400

for.cond.400:                                     ; preds = %for.inc.421, %for.end.399
  %316 = load i32, i32* %i, align 4
  %317 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states401 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %317, i32 0, i32 3
  %n402 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states401, i32 0, i32 0
  %318 = load i32, i32* %n402, align 4
  %cmp403 = icmp ult i32 %316, %318
  br i1 %cmp403, label %for.body.405, label %for.end.423

for.body.405:                                     ; preds = %for.cond.400
  %319 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %319 to i64
  %320 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states407 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %320, i32 0, i32 3
  %v408 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states407, i32 0, i32 2
  %321 = load %struct.State**, %struct.State*** %v408, align 8
  %arrayidx409 = getelementptr inbounds %struct.State*, %struct.State** %321, i64 %idxprom406
  %322 = load %struct.State*, %struct.State** %arrayidx409, align 8
  store %struct.State* %322, %struct.State** %s, align 8
  %323 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to410 = getelementptr inbounds %struct.State, %struct.State* %323, i32 0, i32 14
  %324 = load %struct.State*, %struct.State** %reduces_to410, align 8
  %tobool411 = icmp ne %struct.State* %324, null
  br i1 %tobool411, label %if.then.412, label %if.end.420

if.then.412:                                      ; preds = %for.body.405
  %325 = load i32, i32* @verbose_level, align 4
  %tobool413 = icmp ne i32 %325, 0
  br i1 %tobool413, label %if.then.414, label %if.end.419

if.then.414:                                      ; preds = %if.then.412
  %326 = load %struct.State*, %struct.State** %s, align 8
  %index415 = getelementptr inbounds %struct.State, %struct.State* %326, i32 0, i32 0
  %327 = load i32, i32* %index415, align 4
  %328 = load %struct.State*, %struct.State** %s, align 8
  %reduces_to416 = getelementptr inbounds %struct.State, %struct.State* %328, i32 0, i32 14
  %329 = load %struct.State*, %struct.State** %reduces_to416, align 8
  %index417 = getelementptr inbounds %struct.State, %struct.State* %329, i32 0, i32 0
  %330 = load i32, i32* %index417, align 4
  %call418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i32 %327, i32 %330)
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.414, %if.then.412
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %for.body.405
  br label %for.inc.421

for.inc.421:                                      ; preds = %if.end.420
  %331 = load i32, i32* %i, align 4
  %inc422 = add nsw i32 %331, 1
  store i32 %inc422, i32* %i, align 4
  br label %for.cond.400

for.end.423:                                      ; preds = %for.cond.400
  %332 = load %struct.EqState*, %struct.EqState** %eq, align 8
  %333 = bitcast %struct.EqState* %332 to i8*
  call void @free(i8* %333) #3
  ret void
}

declare i32 @elem_symbol(%struct.Grammar*, %struct.Elem*) #4

; Function Attrs: nounwind uwtable
define %struct.Grammar* @new_D_Grammar(i8* %pathname) #0 {
entry:
  %pathname.addr = alloca i8*, align 8
  %g = alloca %struct.Grammar*, align 8
  store i8* %pathname, i8** %pathname.addr, align 8
  %call = call noalias i8* @malloc(i64 592) #3
  %0 = bitcast i8* %call to %struct.Grammar*
  store %struct.Grammar* %0, %struct.Grammar** %g, align 8
  %1 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %2 = bitcast %struct.Grammar* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 592, i32 8, i1 false)
  %3 = load i8*, i8** %pathname.addr, align 8
  %4 = load i8*, i8** %pathname.addr, align 8
  %5 = load i8*, i8** %pathname.addr, align 8
  %call1 = call i64 @strlen(i8* %5) #6
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call1
  %call2 = call i8* @dup_str(i8* %3, i8* %add.ptr)
  %6 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %pathname3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 0
  store i8* %call2, i8** %pathname3, align 8
  %7 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  ret %struct.Grammar* %7
}

; Function Attrs: nounwind uwtable
define void @free_D_Grammar(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 0
  %1 = load i8*, i8** %pathname, align 8
  call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @parse_grammar(%struct.Grammar* %g, %struct.D_ParserTables* %t, i32 %sizeof_ParseNode_User) #0 {
entry:
  %retval = alloca i32, align 4
  %g.addr = alloca %struct.Grammar*, align 8
  %t.addr = alloca %struct.D_ParserTables*, align 8
  %sizeof_ParseNode_User.addr = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %s = alloca i8*, align 8
  %p = alloca %struct.D_Parser*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.D_ParserTables* %t, %struct.D_ParserTables** %t.addr, align 8
  store i32 %sizeof_ParseNode_User, i32* %sizeof_ParseNode_User.addr, align 4
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 0
  %1 = load i8*, i8** %pathname, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 0
  %4 = load i8*, i8** %pathname1, align 8
  %call2 = call i8* @sbuf_read(i8* %4)
  store i8* %call2, i8** %s, align 8
  %tobool3 = icmp ne i8* %call2, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @initialize_productions(%struct.Grammar* %5)
  %6 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t.addr, align 8
  %7 = load i32, i32* %sizeof_ParseNode_User.addr, align 4
  %call6 = call %struct.D_Parser* @new_D_Parser(%struct.D_ParserTables* %6, i32 %7)
  store %struct.D_Parser* %call6, %struct.D_Parser** %p, align 8
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %9 = bitcast %struct.Grammar* %8 to i8*
  %10 = load %struct.D_Parser*, %struct.D_Parser** %p, align 8
  %initial_globals = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %10, i32 0, i32 0
  store i8* %9, i8** %initial_globals, align 8
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %pathname7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 0
  %12 = load i8*, i8** %pathname7, align 8
  %13 = load %struct.D_Parser*, %struct.D_Parser** %p, align 8
  %loc = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %13, i32 0, i32 6
  %pathname8 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 1
  store i8* %12, i8** %pathname8, align 8
  %14 = load %struct.D_Parser*, %struct.D_Parser** %p, align 8
  %15 = load i8*, i8** %s, align 8
  %16 = load i8*, i8** %s, align 8
  %call9 = call i64 @strlen(i8* %16) #6
  %conv = trunc i64 %call9 to i32
  %call10 = call %struct.D_ParseNode* @dparse(%struct.D_Parser* %14, i8* %15, i32 %conv)
  %tobool11 = icmp ne %struct.D_ParseNode* %call10, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.5
  %17 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %18 = load i32, i32* %n, align 4
  %cmp = icmp ugt i32 %18, 2
  br i1 %cmp, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.12
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @finish_productions(%struct.Grammar* %19)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.12
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.5
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.end.15, %if.then.4, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i8* @sbuf_read(i8*) #4

declare %struct.D_Parser* @new_D_Parser(%struct.D_ParserTables*, i32) #4

declare %struct.D_ParseNode* @dparse(%struct.D_Parser*, i8*, i32) #4

; Function Attrs: nounwind uwtable
define i32 @build_grammar(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @resolve_grammar(%struct.Grammar* %0)
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @convert_regex_productions(%struct.Grammar* %1)
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @propogate_declarations(%struct.Grammar* %2)
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @merge_identical_terminals(%struct.Grammar* %3)
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @make_elems_for_productions(%struct.Grammar* %4)
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @check_default_actions(%struct.Grammar* %5)
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_LR_tables(%struct.Grammar* %6)
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @map_declarations_to_states(%struct.Grammar* %7)
  %8 = load i32, i32* @verbose_level, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 2
  %n1 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %12 = load i32, i32* %n1, align 4
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 3
  %n2 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %14 = load i32, i32* %n2, align 4
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 7
  %n3 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations, i32 0, i32 0
  %16 = load i32, i32* %n3, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.45, i32 0, i32 0), i32 %10, i32 %12, i32 %14, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %17 = load i32, i32* @verbose_level, align 4
  %cmp = icmp sgt i32 %17, 1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @print_grammar(%struct.Grammar* %18)
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @print_states(%struct.Grammar* %19)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_scanners(%struct.Grammar* %20)
  %21 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @build_eq(%struct.Grammar* %21)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @resolve_grammar(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %pp = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  %last_term = alloca %struct.Term*, align 8
  %t = alloca %struct.Term*, align 8
  %str = alloca [256 x i8], align 16
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %rule_index = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 29
  store i32 0, i32* %rule_index, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %2, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %6 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %6, i64 %idxprom
  %7 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %7, %struct.Production** %p, align 8
  %8 = load %struct.Production*, %struct.Production** %p, align 8
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %10 = load %struct.Production*, %struct.Production** %p, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct.Production*, %struct.Production** %p, align 8
  %name_len = getelementptr inbounds %struct.Production, %struct.Production* %12, i32 0, i32 1
  %13 = load i32, i32* %name_len, align 4
  %call = call %struct.Production* @lookup_production(%struct.Grammar* %9, i8* %11, i32 %13)
  %cmp2 = icmp ne %struct.Production* %8, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load %struct.Production*, %struct.Production** %p, align 8
  %name3 = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 0
  %15 = load i8*, i8** %name3, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.65, i32 0, i32 0), i8* %15)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.Production*, %struct.Production** %p, align 8
  %index = getelementptr inbounds %struct.Production, %struct.Production* %17, i32 0, i32 3
  store i32 %16, i32* %index, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.72, %if.end
  %18 = load i32, i32* %j, align 4
  %19 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 2
  %n5 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %20 = load i32, i32* %n5, align 4
  %cmp6 = icmp ult i32 %18, %20
  br i1 %cmp6, label %for.body.7, label %for.end.74

for.body.7:                                       ; preds = %for.cond.4
  %21 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %21 to i64
  %22 = load %struct.Production*, %struct.Production** %p, align 8
  %rules9 = getelementptr inbounds %struct.Production, %struct.Production* %22, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon, %struct.anon* %rules9, i32 0, i32 2
  %23 = load %struct.Rule**, %struct.Rule*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.Rule*, %struct.Rule** %23, i64 %idxprom8
  %24 = load %struct.Rule*, %struct.Rule** %arrayidx11, align 8
  store %struct.Rule* %24, %struct.Rule** %r, align 8
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %rule_index12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 29
  %26 = load i32, i32* %rule_index12, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %rule_index12, align 4
  %27 = load %struct.Rule*, %struct.Rule** %r, align 8
  %index13 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 0
  store i32 %26, i32* %index13, align 4
  store %struct.Term* null, %struct.Term** %last_term, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %for.body.7
  %28 = load i32, i32* %k, align 4
  %29 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 6
  %n15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %30 = load i32, i32* %n15, align 4
  %cmp16 = icmp ult i32 %28, %30
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %31 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems19 = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 6
  %v20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems19, i32 0, i32 2
  %33 = load %struct.Elem**, %struct.Elem*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Elem*, %struct.Elem** %33, i64 %idxprom18
  %34 = load %struct.Elem*, %struct.Elem** %arrayidx21, align 8
  store %struct.Elem* %34, %struct.Elem** %e, align 8
  %35 = load i32, i32* %k, align 4
  %36 = load %struct.Elem*, %struct.Elem** %e, align 8
  %index22 = getelementptr inbounds %struct.Elem, %struct.Elem* %36, i32 0, i32 1
  store i32 %35, i32* %index22, align 4
  %37 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %37, i32 0, i32 0
  %38 = load i32, i32* %kind, align 4
  %cmp23 = icmp eq i32 %38, 2
  br i1 %cmp23, label %if.then.24, label %if.end.52

if.then.24:                                       ; preds = %for.body.17
  %39 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e25 = getelementptr inbounds %struct.Elem, %struct.Elem* %39, i32 0, i32 3
  %unresolved = bitcast %union.anon* %e25 to %struct.Unresolved*
  %len = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved, i32 0, i32 1
  %40 = load i32, i32* %len, align 4
  store i32 %40, i32* %l, align 4
  %41 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %42 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e26 = getelementptr inbounds %struct.Elem, %struct.Elem* %42, i32 0, i32 3
  %unresolved27 = bitcast %union.anon* %e26 to %struct.Unresolved*
  %string = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved27, i32 0, i32 0
  %43 = load i8*, i8** %string, align 8
  %44 = load i32, i32* %l, align 4
  %call28 = call %struct.Production* @lookup_production(%struct.Grammar* %41, i8* %43, i32 %44)
  store %struct.Production* %call28, %struct.Production** %pp, align 8
  %tobool = icmp ne %struct.Production* %call28, null
  br i1 %tobool, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.24
  %45 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind30 = getelementptr inbounds %struct.Elem, %struct.Elem* %45, i32 0, i32 0
  store i32 0, i32* %kind30, align 4
  %46 = load %struct.Production*, %struct.Production** %pp, align 8
  %47 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e31 = getelementptr inbounds %struct.Elem, %struct.Elem* %47, i32 0, i32 3
  %nterm = bitcast %union.anon* %e31 to %struct.Production**
  store %struct.Production* %46, %struct.Production** %nterm, align 8
  br label %if.end.51

if.else:                                          ; preds = %if.then.24
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %49 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e32 = getelementptr inbounds %struct.Elem, %struct.Elem* %49, i32 0, i32 3
  %unresolved33 = bitcast %union.anon* %e32 to %struct.Unresolved*
  %string34 = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved33, i32 0, i32 0
  %50 = load i8*, i8** %string34, align 8
  %51 = load i32, i32* %l, align 4
  %call35 = call %struct.Term* @lookup_token(%struct.Grammar* %48, i8* %50, i32 %51)
  store %struct.Term* %call35, %struct.Term** %t, align 8
  %tobool36 = icmp ne %struct.Term* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else
  %52 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind38 = getelementptr inbounds %struct.Elem, %struct.Elem* %52, i32 0, i32 0
  store i32 1, i32* %kind38, align 4
  %53 = load %struct.Term*, %struct.Term** %t, align 8
  %54 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e39 = getelementptr inbounds %struct.Elem, %struct.Elem* %54, i32 0, i32 3
  %term = bitcast %union.anon* %e39 to %struct.Term**
  store %struct.Term* %53, %struct.Term** %term, align 8
  br label %if.end.50

if.else.40:                                       ; preds = %if.else
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  %55 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e41 = getelementptr inbounds %struct.Elem, %struct.Elem* %55, i32 0, i32 3
  %unresolved42 = bitcast %union.anon* %e41 to %struct.Unresolved*
  %string43 = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved42, i32 0, i32 0
  %56 = load i8*, i8** %string43, align 8
  %57 = load i32, i32* %l, align 4
  %conv = sext i32 %57 to i64
  %call44 = call i8* @strncpy(i8* %arraydecay, i8* %56, i64 %conv) #3
  %58 = load i32, i32* %l, align 4
  %cmp45 = icmp slt i32 %58, 255
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.40
  %59 = load i32, i32* %l, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else.40
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ 255, %cond.false ]
  %idxprom47 = sext i32 %cond to i64
  %arrayidx48 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i64 %idxprom47
  store i8 0, i8* %arrayidx48, align 1
  %arraydecay49 = getelementptr inbounds [256 x i8], [256 x i8]* %str, i32 0, i32 0
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.66, i32 0, i32 0), i8* %arraydecay49)
  br label %if.end.50

if.end.50:                                        ; preds = %cond.end, %if.then.37
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.29
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body.17
  %60 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind53 = getelementptr inbounds %struct.Elem, %struct.Elem* %60, i32 0, i32 0
  %61 = load i32, i32* %kind53, align 4
  %cmp54 = icmp eq i32 %61, 1
  br i1 %cmp54, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %if.end.52
  %62 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e57 = getelementptr inbounds %struct.Elem, %struct.Elem* %62, i32 0, i32 3
  %term58 = bitcast %union.anon* %e57 to %struct.Term**
  %63 = load %struct.Term*, %struct.Term** %term58, align 8
  store %struct.Term* %63, %struct.Term** %last_term, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %if.end.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %64 = load i32, i32* %k, align 4
  %inc60 = add nsw i32 %64, 1
  store i32 %inc60, i32* %k, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  %65 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems61 = getelementptr inbounds %struct.Rule, %struct.Rule* %65, i32 0, i32 6
  %n62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems61, i32 0, i32 0
  %66 = load i32, i32* %n62, align 4
  %67 = load %struct.Rule*, %struct.Rule** %r, align 8
  %end = getelementptr inbounds %struct.Rule, %struct.Rule* %67, i32 0, i32 7
  %68 = load %struct.Elem*, %struct.Elem** %end, align 8
  %index63 = getelementptr inbounds %struct.Elem, %struct.Elem* %68, i32 0, i32 1
  store i32 %66, i32* %index63, align 4
  %69 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %set_op_priority_from_rule = getelementptr inbounds %struct.Grammar, %struct.Grammar* %69, i32 0, i32 10
  %70 = load i32, i32* %set_op_priority_from_rule, align 4
  %tobool64 = icmp ne i32 %70, 0
  br i1 %tobool64, label %if.then.65, label %if.end.71

if.then.65:                                       ; preds = %for.end
  %71 = load %struct.Term*, %struct.Term** %last_term, align 8
  %tobool66 = icmp ne %struct.Term* %71, null
  br i1 %tobool66, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %if.then.65
  %72 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %72, i32 0, i32 5
  %73 = load i32, i32* %rule_assoc, align 4
  %tobool67 = icmp ne i32 %73, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true
  %74 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc69 = getelementptr inbounds %struct.Rule, %struct.Rule* %74, i32 0, i32 5
  %75 = load i32, i32* %rule_assoc69, align 4
  %76 = load %struct.Term*, %struct.Term** %last_term, align 8
  %op_assoc = getelementptr inbounds %struct.Term, %struct.Term* %76, i32 0, i32 3
  store i32 %75, i32* %op_assoc, align 4
  %77 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %77, i32 0, i32 4
  %78 = load i32, i32* %rule_priority, align 4
  %79 = load %struct.Term*, %struct.Term** %last_term, align 8
  %op_priority = getelementptr inbounds %struct.Term, %struct.Term* %79, i32 0, i32 4
  store i32 %78, i32* %op_priority, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %land.lhs.true, %if.then.65
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %for.end
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %80 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %80, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.4

for.end.74:                                       ; preds = %for.cond.4
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.end.74
  %81 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %81, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.88, %for.end.77
  %82 = load i32, i32* %i, align 4
  %83 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %83, i32 0, i32 2
  %n79 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %84 = load i32, i32* %n79, align 4
  %cmp80 = icmp ult i32 %82, %84
  br i1 %cmp80, label %for.body.82, label %for.end.90

for.body.82:                                      ; preds = %for.cond.78
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %86 to i64
  %87 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals84 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %87, i32 0, i32 2
  %v85 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals84, i32 0, i32 2
  %88 = load %struct.Term**, %struct.Term*** %v85, align 8
  %arrayidx86 = getelementptr inbounds %struct.Term*, %struct.Term** %88, i64 %idxprom83
  %89 = load %struct.Term*, %struct.Term** %arrayidx86, align 8
  %index87 = getelementptr inbounds %struct.Term, %struct.Term* %89, i32 0, i32 1
  store i32 %85, i32* %index87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.82
  %90 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %90, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.78

for.end.90:                                       ; preds = %for.cond.78
  %91 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  call void @compute_nullable(%struct.Grammar* %91)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @convert_regex_productions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %5 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %5, i64 %idxprom
  %6 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %6, %struct.Production** %p, align 8
  %7 = load %struct.Production*, %struct.Production** %p, align 8
  %regex = getelementptr inbounds %struct.Production, %struct.Production* %7, i32 0, i32 4
  %bf.load = load i8, i8* %regex, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %9 = load %struct.Production*, %struct.Production** %p, align 8
  call void @convert_regex_production_one(%struct.Grammar* %8, %struct.Production* %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.58, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 1
  %n4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions3, i32 0, i32 0
  %13 = load i32, i32* %n4, align 4
  %cmp5 = icmp ult i32 %11, %13
  br i1 %cmp5, label %for.body.6, label %for.end.60

for.body.6:                                       ; preds = %for.cond.2
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 1
  %v9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions8, i32 0, i32 2
  %16 = load %struct.Production**, %struct.Production*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Production*, %struct.Production** %16, i64 %idxprom7
  %17 = load %struct.Production*, %struct.Production** %arrayidx10, align 8
  store %struct.Production* %17, %struct.Production** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.55, %for.body.6
  %18 = load i32, i32* %j, align 4
  %19 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 2
  %n12 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %20 = load i32, i32* %n12, align 4
  %cmp13 = icmp ult i32 %18, %20
  br i1 %cmp13, label %for.body.14, label %for.end.57

for.body.14:                                      ; preds = %for.cond.11
  %21 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.Production*, %struct.Production** %p, align 8
  %rules16 = getelementptr inbounds %struct.Production, %struct.Production* %22, i32 0, i32 2
  %v17 = getelementptr inbounds %struct.anon, %struct.anon* %rules16, i32 0, i32 2
  %23 = load %struct.Rule**, %struct.Rule*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.Rule*, %struct.Rule** %23, i64 %idxprom15
  %24 = load %struct.Rule*, %struct.Rule** %arrayidx18, align 8
  store %struct.Rule* %24, %struct.Rule** %r, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.52, %for.body.14
  %25 = load i32, i32* %k, align 4
  %26 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %26, i32 0, i32 6
  %n20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %27 = load i32, i32* %n20, align 4
  %cmp21 = icmp ult i32 %25, %27
  br i1 %cmp21, label %for.body.22, label %for.end.54

for.body.22:                                      ; preds = %for.cond.19
  %28 = load i32, i32* %k, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems24 = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 6
  %v25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems24, i32 0, i32 2
  %30 = load %struct.Elem**, %struct.Elem*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Elem*, %struct.Elem** %30, i64 %idxprom23
  %31 = load %struct.Elem*, %struct.Elem** %arrayidx26, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %31, i32 0, i32 0
  %32 = load i32, i32* %kind, align 4
  %cmp27 = icmp eq i32 %32, 0
  br i1 %cmp27, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %for.body.22
  %33 = load i32, i32* %k, align 4
  %idxprom28 = sext i32 %33 to i64
  %34 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 6
  %v30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems29, i32 0, i32 2
  %35 = load %struct.Elem**, %struct.Elem*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Elem*, %struct.Elem** %35, i64 %idxprom28
  %36 = load %struct.Elem*, %struct.Elem** %arrayidx31, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %36, i32 0, i32 3
  %nterm = bitcast %union.anon* %e to %struct.Production**
  %37 = load %struct.Production*, %struct.Production** %nterm, align 8
  %regex_term = getelementptr inbounds %struct.Production, %struct.Production* %37, i32 0, i32 10
  %38 = load %struct.Term*, %struct.Term** %regex_term, align 8
  %tobool32 = icmp ne %struct.Term* %38, null
  br i1 %tobool32, label %if.then.33, label %if.end.51

if.then.33:                                       ; preds = %land.lhs.true
  %39 = load i32, i32* %k, align 4
  %idxprom34 = sext i32 %39 to i64
  %40 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems35 = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 6
  %v36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems35, i32 0, i32 2
  %41 = load %struct.Elem**, %struct.Elem*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Elem*, %struct.Elem** %41, i64 %idxprom34
  %42 = load %struct.Elem*, %struct.Elem** %arrayidx37, align 8
  %e38 = getelementptr inbounds %struct.Elem, %struct.Elem* %42, i32 0, i32 3
  %nterm39 = bitcast %union.anon* %e38 to %struct.Production**
  %43 = load %struct.Production*, %struct.Production** %nterm39, align 8
  %regex_term40 = getelementptr inbounds %struct.Production, %struct.Production* %43, i32 0, i32 10
  %44 = load %struct.Term*, %struct.Term** %regex_term40, align 8
  %45 = load i32, i32* %k, align 4
  %idxprom41 = sext i32 %45 to i64
  %46 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems42 = getelementptr inbounds %struct.Rule, %struct.Rule* %46, i32 0, i32 6
  %v43 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems42, i32 0, i32 2
  %47 = load %struct.Elem**, %struct.Elem*** %v43, align 8
  %arrayidx44 = getelementptr inbounds %struct.Elem*, %struct.Elem** %47, i64 %idxprom41
  %48 = load %struct.Elem*, %struct.Elem** %arrayidx44, align 8
  %e45 = getelementptr inbounds %struct.Elem, %struct.Elem* %48, i32 0, i32 3
  %term = bitcast %union.anon* %e45 to %struct.Term**
  store %struct.Term* %44, %struct.Term** %term, align 8
  %49 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %49 to i64
  %50 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems47 = getelementptr inbounds %struct.Rule, %struct.Rule* %50, i32 0, i32 6
  %v48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems47, i32 0, i32 2
  %51 = load %struct.Elem**, %struct.Elem*** %v48, align 8
  %arrayidx49 = getelementptr inbounds %struct.Elem*, %struct.Elem** %51, i64 %idxprom46
  %52 = load %struct.Elem*, %struct.Elem** %arrayidx49, align 8
  %kind50 = getelementptr inbounds %struct.Elem, %struct.Elem* %52, i32 0, i32 0
  store i32 1, i32* %kind50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.33, %land.lhs.true, %for.body.22
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %53 = load i32, i32* %k, align 4
  %inc53 = add nsw i32 %53, 1
  store i32 %inc53, i32* %k, align 4
  br label %for.cond.19

for.end.54:                                       ; preds = %for.cond.19
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.end.54
  %54 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %j, align 4
  br label %for.cond.11

for.end.57:                                       ; preds = %for.cond.11
  br label %for.inc.58

for.inc.58:                                       ; preds = %for.end.57
  %55 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %55, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.2

for.end.60:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propogate_declarations(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %tokenizer = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 14
  %1 = load i32, i32* %tokenizer, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %3 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 2
  %4 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %4, i64 0
  %5 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %call = call %struct.Elem* @new_elem_nterm(%struct.Production* %5, %struct.Rule* null)
  call void @new_declaration(%struct.Grammar* %2, %struct.Elem* %call, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %longest_match = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 15
  %7 = load i32, i32* %longest_match, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %9 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions3 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 1
  %v4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions3, i32 0, i32 2
  %10 = load %struct.Production**, %struct.Production*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.Production*, %struct.Production** %10, i64 0
  %11 = load %struct.Production*, %struct.Production** %arrayidx5, align 8
  %call6 = call %struct.Elem* @new_elem_nterm(%struct.Production* %11, %struct.Rule* null)
  call void @new_declaration(%struct.Grammar* %8, %struct.Elem* %call6, i32 1)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %12 = load i32, i32* %i, align 4
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 7
  %n = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations, i32 0, i32 0
  %14 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %12, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %16, i32 0, i32 7
  %v9 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations8, i32 0, i32 2
  %17 = load %struct.Declaration**, %struct.Declaration*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %17, i64 %idxprom
  %18 = load %struct.Declaration*, %struct.Declaration** %arrayidx10, align 8
  %elem = getelementptr inbounds %struct.Declaration, %struct.Declaration* %18, i32 0, i32 0
  %19 = load %struct.Elem*, %struct.Elem** %elem, align 8
  store %struct.Elem* %19, %struct.Elem** %e, align 8
  %20 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %20, i32 0, i32 0
  %21 = load i32, i32* %kind, align 4
  %cmp11 = icmp eq i32 %21, 2
  br i1 %cmp11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %for.body
  %22 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %23 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e13 = getelementptr inbounds %struct.Elem, %struct.Elem* %23, i32 0, i32 3
  %unresolved = bitcast %union.anon* %e13 to %struct.Unresolved*
  %string = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved, i32 0, i32 0
  %24 = load i8*, i8** %string, align 8
  %25 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e14 = getelementptr inbounds %struct.Elem, %struct.Elem* %25, i32 0, i32 3
  %unresolved15 = bitcast %union.anon* %e14 to %struct.Unresolved*
  %len = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved15, i32 0, i32 1
  %26 = load i32, i32* %len, align 4
  %call16 = call %struct.Production* @lookup_production(%struct.Grammar* %22, i8* %24, i32 %26)
  store %struct.Production* %call16, %struct.Production** %p, align 8
  %tobool17 = icmp ne %struct.Production* %call16, null
  br i1 %tobool17, label %if.end.22, label %if.then.18

if.then.18:                                       ; preds = %if.then.12
  %27 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e19 = getelementptr inbounds %struct.Elem, %struct.Elem* %27, i32 0, i32 3
  %unresolved20 = bitcast %union.anon* %e19 to %struct.Unresolved*
  %string21 = getelementptr inbounds %struct.Unresolved, %struct.Unresolved* %unresolved20, i32 0, i32 0
  %28 = load i8*, i8** %string21, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.73, i32 0, i32 0), i8* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.then.12
  %29 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind23 = getelementptr inbounds %struct.Elem, %struct.Elem* %29, i32 0, i32 0
  store i32 0, i32* %kind23, align 4
  %30 = load %struct.Production*, %struct.Production** %p, align 8
  %31 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e24 = getelementptr inbounds %struct.Elem, %struct.Elem* %31, i32 0, i32 3
  %nterm = bitcast %union.anon* %e24 to %struct.Production**
  store %struct.Production* %30, %struct.Production** %nterm, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.50, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations27 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %34, i32 0, i32 7
  %n28 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations27, i32 0, i32 0
  %35 = load i32, i32* %n28, align 4
  %cmp29 = icmp ult i32 %33, %35
  br i1 %cmp29, label %for.body.30, label %for.end.52

for.body.30:                                      ; preds = %for.cond.26
  %36 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations32 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %37, i32 0, i32 7
  %v33 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations32, i32 0, i32 2
  %38 = load %struct.Declaration**, %struct.Declaration*** %v33, align 8
  %arrayidx34 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %38, i64 %idxprom31
  %39 = load %struct.Declaration*, %struct.Declaration** %arrayidx34, align 8
  %call35 = call i32 @scanner_declaration(%struct.Declaration* %39)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.49

if.then.37:                                       ; preds = %for.body.30
  %40 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %40 to i64
  %41 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations39 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 7
  %v40 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations39, i32 0, i32 2
  %42 = load %struct.Declaration**, %struct.Declaration*** %v40, align 8
  %arrayidx41 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %42, i64 %idxprom38
  %43 = load %struct.Declaration*, %struct.Declaration** %arrayidx41, align 8
  %elem42 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %43, i32 0, i32 0
  %44 = load %struct.Elem*, %struct.Elem** %elem42, align 8
  %e43 = getelementptr inbounds %struct.Elem, %struct.Elem* %44, i32 0, i32 3
  %nterm44 = bitcast %union.anon* %e43 to %struct.Production**
  %45 = load %struct.Production*, %struct.Production** %nterm44, align 8
  store %struct.Production* %45, %struct.Production** %p, align 8
  %46 = load %struct.Production*, %struct.Production** %p, align 8
  %47 = load %struct.Production*, %struct.Production** %p, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %48 to i64
  %49 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations46 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %49, i32 0, i32 7
  %v47 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations46, i32 0, i32 2
  %50 = load %struct.Declaration**, %struct.Declaration*** %v47, align 8
  %arrayidx48 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %50, i64 %idxprom45
  %51 = load %struct.Declaration*, %struct.Declaration** %arrayidx48, align 8
  call void @set_declaration_group(%struct.Production* %46, %struct.Production* %47, %struct.Declaration* %51)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.37, %for.body.30
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %52 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.26

for.end.52:                                       ; preds = %for.cond.26
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.145, %for.end.52
  %53 = load i32, i32* %i, align 4
  %54 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions54 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %54, i32 0, i32 1
  %n55 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions54, i32 0, i32 0
  %55 = load i32, i32* %n55, align 4
  %cmp56 = icmp ult i32 %53, %55
  br i1 %cmp56, label %for.body.57, label %for.end.147

for.body.57:                                      ; preds = %for.cond.53
  %56 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions59 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %57, i32 0, i32 1
  %v60 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions59, i32 0, i32 2
  %58 = load %struct.Production**, %struct.Production*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.Production*, %struct.Production** %58, i64 %idxprom58
  %59 = load %struct.Production*, %struct.Production** %arrayidx61, align 8
  store %struct.Production* %59, %struct.Production** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.142, %for.body.57
  %60 = load i32, i32* %j, align 4
  %61 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %61, i32 0, i32 2
  %n63 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %62 = load i32, i32* %n63, align 4
  %cmp64 = icmp ult i32 %60, %62
  br i1 %cmp64, label %for.body.65, label %for.end.144

for.body.65:                                      ; preds = %for.cond.62
  %63 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %63 to i64
  %64 = load %struct.Production*, %struct.Production** %p, align 8
  %rules67 = getelementptr inbounds %struct.Production, %struct.Production* %64, i32 0, i32 2
  %v68 = getelementptr inbounds %struct.anon, %struct.anon* %rules67, i32 0, i32 2
  %65 = load %struct.Rule**, %struct.Rule*** %v68, align 8
  %arrayidx69 = getelementptr inbounds %struct.Rule*, %struct.Rule** %65, i64 %idxprom66
  %66 = load %struct.Rule*, %struct.Rule** %arrayidx69, align 8
  store %struct.Rule* %66, %struct.Rule** %r, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.139, %for.body.65
  %67 = load i32, i32* %k, align 4
  %68 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %68, i32 0, i32 6
  %n71 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %69 = load i32, i32* %n71, align 4
  %cmp72 = icmp ult i32 %67, %69
  br i1 %cmp72, label %for.body.73, label %for.end.141

for.body.73:                                      ; preds = %for.cond.70
  %70 = load i32, i32* %k, align 4
  %idxprom74 = sext i32 %70 to i64
  %71 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems75 = getelementptr inbounds %struct.Rule, %struct.Rule* %71, i32 0, i32 6
  %v76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems75, i32 0, i32 2
  %72 = load %struct.Elem**, %struct.Elem*** %v76, align 8
  %arrayidx77 = getelementptr inbounds %struct.Elem*, %struct.Elem** %72, i64 %idxprom74
  %73 = load %struct.Elem*, %struct.Elem** %arrayidx77, align 8
  store %struct.Elem* %73, %struct.Elem** %e, align 8
  %74 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind78 = getelementptr inbounds %struct.Elem, %struct.Elem* %74, i32 0, i32 0
  %75 = load i32, i32* %kind78, align 4
  %cmp79 = icmp eq i32 %75, 1
  br i1 %cmp79, label %if.then.80, label %if.end.138

if.then.80:                                       ; preds = %for.body.73
  %76 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group = getelementptr inbounds %struct.Production, %struct.Production* %76, i32 0, i32 6
  %arrayidx81 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group, i32 0, i64 1
  %77 = load %struct.Production*, %struct.Production** %arrayidx81, align 8
  %tobool82 = icmp ne %struct.Production* %77, null
  br i1 %tobool82, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.80
  %78 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group83 = getelementptr inbounds %struct.Production, %struct.Production* %78, i32 0, i32 6
  %arrayidx84 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group83, i32 0, i64 2
  %79 = load %struct.Production*, %struct.Production** %arrayidx84, align 8
  %tobool85 = icmp ne %struct.Production* %79, null
  br i1 %tobool85, label %if.else, label %if.then.86

if.then.86:                                       ; preds = %land.lhs.true
  %80 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e87 = getelementptr inbounds %struct.Elem, %struct.Elem* %80, i32 0, i32 3
  %term = bitcast %union.anon* %e87 to %struct.Term**
  %81 = load %struct.Term*, %struct.Term** %term, align 8
  %scan_kind = getelementptr inbounds %struct.Term, %struct.Term* %81, i32 0, i32 7
  %bf.load = load i8, i8* %scan_kind, align 4
  %bf.clear = and i8 %bf.load, -8
  store i8 %bf.clear, i8* %scan_kind, align 4
  br label %if.end.137

if.else:                                          ; preds = %land.lhs.true, %if.then.80
  %82 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group88 = getelementptr inbounds %struct.Production, %struct.Production* %82, i32 0, i32 6
  %arrayidx89 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group88, i32 0, i64 1
  %83 = load %struct.Production*, %struct.Production** %arrayidx89, align 8
  %tobool90 = icmp ne %struct.Production* %83, null
  br i1 %tobool90, label %land.lhs.true.91, label %if.else.101

land.lhs.true.91:                                 ; preds = %if.else
  %84 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group92 = getelementptr inbounds %struct.Production, %struct.Production* %84, i32 0, i32 6
  %arrayidx93 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group92, i32 0, i64 2
  %85 = load %struct.Production*, %struct.Production** %arrayidx93, align 8
  %tobool94 = icmp ne %struct.Production* %85, null
  br i1 %tobool94, label %if.else.101, label %if.then.95

if.then.95:                                       ; preds = %land.lhs.true.91
  %86 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e96 = getelementptr inbounds %struct.Elem, %struct.Elem* %86, i32 0, i32 3
  %term97 = bitcast %union.anon* %e96 to %struct.Term**
  %87 = load %struct.Term*, %struct.Term** %term97, align 8
  %scan_kind98 = getelementptr inbounds %struct.Term, %struct.Term* %87, i32 0, i32 7
  %bf.load99 = load i8, i8* %scan_kind98, align 4
  %bf.clear100 = and i8 %bf.load99, -8
  %bf.set = or i8 %bf.clear100, 1
  store i8 %bf.set, i8* %scan_kind98, align 4
  br label %if.end.136

if.else.101:                                      ; preds = %land.lhs.true.91, %if.else
  %88 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group102 = getelementptr inbounds %struct.Production, %struct.Production* %88, i32 0, i32 6
  %arrayidx103 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group102, i32 0, i64 1
  %89 = load %struct.Production*, %struct.Production** %arrayidx103, align 8
  %tobool104 = icmp ne %struct.Production* %89, null
  br i1 %tobool104, label %if.else.115, label %land.lhs.true.105

land.lhs.true.105:                                ; preds = %if.else.101
  %90 = load %struct.Production*, %struct.Production** %p, align 8
  %declaration_group106 = getelementptr inbounds %struct.Production, %struct.Production* %90, i32 0, i32 6
  %arrayidx107 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group106, i32 0, i64 2
  %91 = load %struct.Production*, %struct.Production** %arrayidx107, align 8
  %tobool108 = icmp ne %struct.Production* %91, null
  br i1 %tobool108, label %if.then.109, label %if.else.115

if.then.109:                                      ; preds = %land.lhs.true.105
  %92 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e110 = getelementptr inbounds %struct.Elem, %struct.Elem* %92, i32 0, i32 3
  %term111 = bitcast %union.anon* %e110 to %struct.Term**
  %93 = load %struct.Term*, %struct.Term** %term111, align 8
  %scan_kind112 = getelementptr inbounds %struct.Term, %struct.Term* %93, i32 0, i32 7
  %bf.load113 = load i8, i8* %scan_kind112, align 4
  %bf.clear114 = and i8 %bf.load113, -8
  store i8 %bf.clear114, i8* %scan_kind112, align 4
  br label %if.end.135

if.else.115:                                      ; preds = %land.lhs.true.105, %if.else.101
  %94 = load %struct.Production*, %struct.Production** %p, align 8
  %last_declaration = getelementptr inbounds %struct.Production, %struct.Production* %94, i32 0, i32 7
  %arrayidx116 = getelementptr inbounds [8 x %struct.Declaration*], [8 x %struct.Declaration*]* %last_declaration, i32 0, i64 1
  %95 = load %struct.Declaration*, %struct.Declaration** %arrayidx116, align 8
  %index = getelementptr inbounds %struct.Declaration, %struct.Declaration* %95, i32 0, i32 2
  %96 = load i32, i32* %index, align 4
  %97 = load %struct.Production*, %struct.Production** %p, align 8
  %last_declaration117 = getelementptr inbounds %struct.Production, %struct.Production* %97, i32 0, i32 7
  %arrayidx118 = getelementptr inbounds [8 x %struct.Declaration*], [8 x %struct.Declaration*]* %last_declaration117, i32 0, i64 2
  %98 = load %struct.Declaration*, %struct.Declaration** %arrayidx118, align 8
  %index119 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %98, i32 0, i32 2
  %99 = load i32, i32* %index119, align 4
  %cmp120 = icmp ugt i32 %96, %99
  br i1 %cmp120, label %if.then.121, label %if.else.128

if.then.121:                                      ; preds = %if.else.115
  %100 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e122 = getelementptr inbounds %struct.Elem, %struct.Elem* %100, i32 0, i32 3
  %term123 = bitcast %union.anon* %e122 to %struct.Term**
  %101 = load %struct.Term*, %struct.Term** %term123, align 8
  %scan_kind124 = getelementptr inbounds %struct.Term, %struct.Term* %101, i32 0, i32 7
  %bf.load125 = load i8, i8* %scan_kind124, align 4
  %bf.clear126 = and i8 %bf.load125, -8
  %bf.set127 = or i8 %bf.clear126, 1
  store i8 %bf.set127, i8* %scan_kind124, align 4
  br label %if.end.134

if.else.128:                                      ; preds = %if.else.115
  %102 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e129 = getelementptr inbounds %struct.Elem, %struct.Elem* %102, i32 0, i32 3
  %term130 = bitcast %union.anon* %e129 to %struct.Term**
  %103 = load %struct.Term*, %struct.Term** %term130, align 8
  %scan_kind131 = getelementptr inbounds %struct.Term, %struct.Term* %103, i32 0, i32 7
  %bf.load132 = load i8, i8* %scan_kind131, align 4
  %bf.clear133 = and i8 %bf.load132, -8
  store i8 %bf.clear133, i8* %scan_kind131, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.128, %if.then.121
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.109
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.then.95
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.86
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.body.73
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %104 = load i32, i32* %k, align 4
  %inc140 = add nsw i32 %104, 1
  store i32 %inc140, i32* %k, align 4
  br label %for.cond.70

for.end.141:                                      ; preds = %for.cond.70
  br label %for.inc.142

for.inc.142:                                      ; preds = %for.end.141
  %105 = load i32, i32* %j, align 4
  %inc143 = add nsw i32 %105, 1
  store i32 %inc143, i32* %j, align 4
  br label %for.cond.62

for.end.144:                                      ; preds = %for.cond.62
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.end.144
  %106 = load i32, i32* %i, align 4
  %inc146 = add nsw i32 %106, 1
  store i32 %inc146, i32* %i, align 4
  br label %for.cond.53

for.end.147:                                      ; preds = %for.cond.53
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_identical_terminals(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %p = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 2
  %5 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %5, i64 %idxprom
  %6 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %6, %struct.Production** %p, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.22, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %8, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %9 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body.5, label %for.end.24

for.body.5:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.Production*, %struct.Production** %p, align 8
  %rules7 = getelementptr inbounds %struct.Production, %struct.Production* %11, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon, %struct.anon* %rules7, i32 0, i32 2
  %12 = load %struct.Rule**, %struct.Rule*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Rule*, %struct.Rule** %12, i64 %idxprom6
  %13 = load %struct.Rule*, %struct.Rule** %arrayidx9, align 8
  store %struct.Rule* %13, %struct.Rule** %r, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body.5
  %14 = load i32, i32* %k, align 4
  %15 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %n11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %16 = load i32, i32* %n11, align 4
  %cmp12 = icmp ult i32 %14, %16
  br i1 %cmp12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %17 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems15 = getelementptr inbounds %struct.Rule, %struct.Rule* %18, i32 0, i32 6
  %v16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems15, i32 0, i32 2
  %19 = load %struct.Elem**, %struct.Elem*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Elem*, %struct.Elem** %19, i64 %idxprom14
  %20 = load %struct.Elem*, %struct.Elem** %arrayidx17, align 8
  store %struct.Elem* %20, %struct.Elem** %e, align 8
  %21 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %21, i32 0, i32 0
  %22 = load i32, i32* %kind, align 4
  %cmp18 = icmp eq i32 %22, 1
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.13
  %23 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %24 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e19 = getelementptr inbounds %struct.Elem, %struct.Elem* %24, i32 0, i32 3
  %term = bitcast %union.anon* %e19 to %struct.Term**
  %25 = load %struct.Term*, %struct.Term** %term, align 8
  %call = call %struct.Term* @unique_term(%struct.Grammar* %23, %struct.Term* %25)
  %26 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e20 = getelementptr inbounds %struct.Elem, %struct.Elem* %26, i32 0, i32 3
  %term21 = bitcast %union.anon* %e20 to %struct.Term**
  store %struct.Term* %call, %struct.Term** %term21, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %k, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %28 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %28, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond.2

for.end.24:                                       ; preds = %for.cond.2
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %29 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %29, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_elems_for_productions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %rr = alloca %struct.Rule*, align 8
  %pp = alloca %struct.Production*, align 8
  %ppp = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %0, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 2
  %1 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %1, i64 0
  %2 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  store %struct.Production* %2, %struct.Production** %pp, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions1, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end.83

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions2 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 1
  %v3 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions2, i32 0, i32 2
  %8 = load %struct.Production**, %struct.Production*** %v3, align 8
  %arrayidx4 = getelementptr inbounds %struct.Production*, %struct.Production** %8, i64 %idxprom
  %9 = load %struct.Production*, %struct.Production** %arrayidx4, align 8
  %internal = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 4
  %bf.load = load i8, i8* %internal, align 4
  %bf.lshr = lshr i8 %bf.load, 2
  %bf.clear = and i8 %bf.lshr, 7
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end.80, label %if.then

if.then:                                          ; preds = %for.body
  %10 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states_for_all_nterms = getelementptr inbounds %struct.Grammar, %struct.Grammar* %10, i32 0, i32 13
  %11 = load i32, i32* %states_for_all_nterms, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %12 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %13 = load i32, i32* %i, align 4
  %call = call i32 @state_for_declaration(%struct.Grammar* %12, i32 %13)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end.79

if.then.7:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.54, %if.then.7
  %14 = load i32, i32* %j, align 4
  %15 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions9 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %15, i32 0, i32 1
  %n10 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions9, i32 0, i32 0
  %16 = load i32, i32* %n10, align 4
  %cmp11 = icmp ult i32 %14, %16
  br i1 %cmp11, label %for.body.12, label %for.end.56

for.body.12:                                      ; preds = %for.cond.8
  store i32 0, i32* %k, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.51, %for.body.12
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %j, align 4
  %idxprom14 = sext i32 %18 to i64
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %19, i32 0, i32 1
  %v16 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions15, i32 0, i32 2
  %20 = load %struct.Production**, %struct.Production*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Production*, %struct.Production** %20, i64 %idxprom14
  %21 = load %struct.Production*, %struct.Production** %arrayidx17, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %21, i32 0, i32 2
  %n18 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %22 = load i32, i32* %n18, align 4
  %cmp19 = icmp ult i32 %17, %22
  br i1 %cmp19, label %for.body.20, label %for.end.53

for.body.20:                                      ; preds = %for.cond.13
  %23 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %24 to i64
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 1
  %v24 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions23, i32 0, i32 2
  %26 = load %struct.Production**, %struct.Production*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Production*, %struct.Production** %26, i64 %idxprom22
  %27 = load %struct.Production*, %struct.Production** %arrayidx25, align 8
  %rules26 = getelementptr inbounds %struct.Production, %struct.Production* %27, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon, %struct.anon* %rules26, i32 0, i32 2
  %28 = load %struct.Rule**, %struct.Rule*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Rule*, %struct.Rule** %28, i64 %idxprom21
  %29 = load %struct.Rule*, %struct.Rule** %arrayidx28, align 8
  store %struct.Rule* %29, %struct.Rule** %rr, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %for.body.20
  %30 = load i32, i32* %l, align 4
  %31 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %31, i32 0, i32 6
  %n30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %32 = load i32, i32* %n30, align 4
  %cmp31 = icmp ult i32 %30, %32
  br i1 %cmp31, label %for.body.32, label %for.end

for.body.32:                                      ; preds = %for.cond.29
  %33 = load i32, i32* %l, align 4
  %idxprom33 = sext i32 %33 to i64
  %34 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems34 = getelementptr inbounds %struct.Rule, %struct.Rule* %34, i32 0, i32 6
  %v35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems34, i32 0, i32 2
  %35 = load %struct.Elem**, %struct.Elem*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.Elem*, %struct.Elem** %35, i64 %idxprom33
  %36 = load %struct.Elem*, %struct.Elem** %arrayidx36, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %36, i32 0, i32 3
  %term_or_nterm = bitcast %union.anon* %e to i8**
  %37 = load i8*, i8** %term_or_nterm, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %38 to i64
  %39 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions38 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %39, i32 0, i32 1
  %v39 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions38, i32 0, i32 2
  %40 = load %struct.Production**, %struct.Production*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.Production*, %struct.Production** %40, i64 %idxprom37
  %41 = load %struct.Production*, %struct.Production** %arrayidx40, align 8
  %42 = bitcast %struct.Production* %41 to i8*
  %cmp41 = icmp eq i8* %37, %42
  br i1 %cmp41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %for.body.32
  %43 = load i32, i32* %l, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems44 = getelementptr inbounds %struct.Rule, %struct.Rule* %44, i32 0, i32 6
  %v45 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems44, i32 0, i32 2
  %45 = load %struct.Elem**, %struct.Elem*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.Elem*, %struct.Elem** %45, i64 %idxprom43
  %46 = load %struct.Elem*, %struct.Elem** %arrayidx46, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %47 to i64
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions48 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %48, i32 0, i32 1
  %v49 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions48, i32 0, i32 2
  %49 = load %struct.Production**, %struct.Production*** %v49, align 8
  %arrayidx50 = getelementptr inbounds %struct.Production*, %struct.Production** %49, i64 %idxprom47
  %50 = load %struct.Production*, %struct.Production** %arrayidx50, align 8
  %elem = getelementptr inbounds %struct.Production, %struct.Production* %50, i32 0, i32 9
  store %struct.Elem* %46, %struct.Elem** %elem, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.32
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %51 = load i32, i32* %l, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.29

for.end:                                          ; preds = %if.then.42, %for.cond.29
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.end
  %52 = load i32, i32* %k, align 4
  %inc52 = add nsw i32 %52, 1
  store i32 %inc52, i32* %k, align 4
  br label %for.cond.13

for.end.53:                                       ; preds = %for.cond.13
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %53 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %53, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.8

for.end.56:                                       ; preds = %for.cond.8
  %54 = load i32, i32* %j, align 4
  %55 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions57 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %55, i32 0, i32 1
  %n58 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions57, i32 0, i32 0
  %56 = load i32, i32* %n58, align 4
  %cmp59 = icmp uge i32 %54, %56
  br i1 %cmp59, label %if.then.60, label %if.end.78

if.then.60:                                       ; preds = %for.end.56
  %57 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %57 to i64
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions62 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 1
  %v63 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions62, i32 0, i32 2
  %59 = load %struct.Production**, %struct.Production*** %v63, align 8
  %arrayidx64 = getelementptr inbounds %struct.Production*, %struct.Production** %59, i64 %idxprom61
  %60 = load %struct.Production*, %struct.Production** %arrayidx64, align 8
  %61 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %62 = load %struct.Production*, %struct.Production** %pp, align 8
  %call65 = call %struct.Rule* @new_rule(%struct.Grammar* %61, %struct.Production* %62)
  %call66 = call %struct.Elem* @new_elem_nterm(%struct.Production* %60, %struct.Rule* %call65)
  %63 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %63 to i64
  %64 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions68 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %64, i32 0, i32 1
  %v69 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions68, i32 0, i32 2
  %65 = load %struct.Production**, %struct.Production*** %v69, align 8
  %arrayidx70 = getelementptr inbounds %struct.Production*, %struct.Production** %65, i64 %idxprom67
  %66 = load %struct.Production*, %struct.Production** %arrayidx70, align 8
  %elem71 = getelementptr inbounds %struct.Production, %struct.Production* %66, i32 0, i32 9
  store %struct.Elem* %call66, %struct.Elem** %elem71, align 8
  %67 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %rule_index = getelementptr inbounds %struct.Grammar, %struct.Grammar* %67, i32 0, i32 29
  %68 = load i32, i32* %rule_index, align 4
  %inc72 = add nsw i32 %68, 1
  store i32 %inc72, i32* %rule_index, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %69 to i64
  %70 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions74 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %70, i32 0, i32 1
  %v75 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions74, i32 0, i32 2
  %71 = load %struct.Production**, %struct.Production*** %v75, align 8
  %arrayidx76 = getelementptr inbounds %struct.Production*, %struct.Production** %71, i64 %idxprom73
  %72 = load %struct.Production*, %struct.Production** %arrayidx76, align 8
  %elem77 = getelementptr inbounds %struct.Production, %struct.Production* %72, i32 0, i32 9
  %73 = load %struct.Elem*, %struct.Elem** %elem77, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %73, i32 0, i32 2
  %74 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %index = getelementptr inbounds %struct.Rule, %struct.Rule* %74, i32 0, i32 0
  store i32 %68, i32* %index, align 4
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.60, %for.end.56
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %lor.lhs.false
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %for.body
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %75 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %75, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond

for.end.83:                                       ; preds = %for.cond
  %76 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states_for_all_nterms84 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %76, i32 0, i32 13
  %77 = load i32, i32* %states_for_all_nterms84, align 4
  %tobool85 = icmp ne i32 %77, 0
  br i1 %tobool85, label %if.end.99, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.83
  %78 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states_for_whitespace = getelementptr inbounds %struct.Grammar, %struct.Grammar* %78, i32 0, i32 12
  %79 = load i32, i32* %states_for_whitespace, align 4
  %tobool86 = icmp ne i32 %79, 0
  br i1 %tobool86, label %land.lhs.true.87, label %if.end.99

land.lhs.true.87:                                 ; preds = %land.lhs.true
  %80 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call88 = call %struct.Production* @lookup_production(%struct.Grammar* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i32 10)
  store %struct.Production* %call88, %struct.Production** %ppp, align 8
  %tobool89 = icmp ne %struct.Production* %call88, null
  br i1 %tobool89, label %if.then.90, label %if.end.99

if.then.90:                                       ; preds = %land.lhs.true.87
  %81 = load %struct.Production*, %struct.Production** %ppp, align 8
  %82 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %83 = load %struct.Production*, %struct.Production** %pp, align 8
  %call91 = call %struct.Rule* @new_rule(%struct.Grammar* %82, %struct.Production* %83)
  %call92 = call %struct.Elem* @new_elem_nterm(%struct.Production* %81, %struct.Rule* %call91)
  %84 = load %struct.Production*, %struct.Production** %ppp, align 8
  %elem93 = getelementptr inbounds %struct.Production, %struct.Production* %84, i32 0, i32 9
  store %struct.Elem* %call92, %struct.Elem** %elem93, align 8
  %85 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %rule_index94 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %85, i32 0, i32 29
  %86 = load i32, i32* %rule_index94, align 4
  %inc95 = add nsw i32 %86, 1
  store i32 %inc95, i32* %rule_index94, align 4
  %87 = load %struct.Production*, %struct.Production** %ppp, align 8
  %elem96 = getelementptr inbounds %struct.Production, %struct.Production* %87, i32 0, i32 9
  %88 = load %struct.Elem*, %struct.Elem** %elem96, align 8
  %rule97 = getelementptr inbounds %struct.Elem, %struct.Elem* %88, i32 0, i32 2
  %89 = load %struct.Rule*, %struct.Rule** %rule97, align 8
  %index98 = getelementptr inbounds %struct.Rule, %struct.Rule* %89, i32 0, i32 0
  store i32 %86, i32* %index98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.90, %land.lhs.true.87, %land.lhs.true, %for.end.83
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @check_default_actions(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %pdefault = alloca %struct.Production*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  %0 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %call = call %struct.Production* @lookup_production(%struct.Grammar* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.76, i32 0, i32 0), i32 1)
  store %struct.Production* %call, %struct.Production** %pdefault, align 8
  %1 = load %struct.Production*, %struct.Production** %pdefault, align 8
  %tobool = icmp ne %struct.Production* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.Production*, %struct.Production** %pdefault, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %2, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.77, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare void @build_LR_tables(%struct.Grammar*) #4

; Function Attrs: nounwind uwtable
define internal void @map_declarations_to_states(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.State*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %5 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %5, i64 %idxprom
  %6 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %6, %struct.State** %s, align 8
  %7 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind = getelementptr inbounds %struct.State, %struct.State* %7, i32 0, i32 10
  %bf.load = load i8, i8* %scan_kind, align 8
  %bf.clear = and i8 %bf.load, -25
  %bf.set = or i8 %bf.clear, 24
  store i8 %bf.set, i8* %scan_kind, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.18, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations = getelementptr inbounds %struct.Grammar, %struct.Grammar* %10, i32 0, i32 7
  %n3 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations, i32 0, i32 0
  %11 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %9, %11
  br i1 %cmp4, label %for.body.5, label %for.end.20

for.body.5:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 7
  %v8 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations7, i32 0, i32 2
  %14 = load %struct.Declaration**, %struct.Declaration*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %14, i64 %idxprom6
  %15 = load %struct.Declaration*, %struct.Declaration** %arrayidx9, align 8
  %call = call i32 @scanner_declaration(%struct.Declaration* %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  %16 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations11 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 7
  %v12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations11, i32 0, i32 2
  %19 = load %struct.Declaration**, %struct.Declaration*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %19, i64 %idxprom10
  %20 = load %struct.Declaration*, %struct.Declaration** %arrayidx13, align 8
  %elem = getelementptr inbounds %struct.Declaration, %struct.Declaration* %20, i32 0, i32 0
  %21 = load %struct.Elem*, %struct.Elem** %elem, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %21, i32 0, i32 3
  %nterm = bitcast %union.anon* %e to %struct.Production**
  %22 = load %struct.Production*, %struct.Production** %nterm, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %23 to i64
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %declarations15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 7
  %v16 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %declarations15, i32 0, i32 2
  %25 = load %struct.Declaration**, %struct.Declaration*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Declaration*, %struct.Declaration** %25, i64 %idxprom14
  %26 = load %struct.Declaration*, %struct.Declaration** %arrayidx17, align 8
  call void @compute_declaration_states(%struct.Grammar* %16, %struct.Production* %22, %struct.Declaration* %26)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %27, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.2

for.end.20:                                       ; preds = %for.cond.2
  store i32 0, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.39, %for.end.20
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states22 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %29, i32 0, i32 3
  %n23 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states22, i32 0, i32 0
  %30 = load i32, i32* %n23, align 4
  %cmp24 = icmp ult i32 %28, %30
  br i1 %cmp24, label %for.body.25, label %for.end.41

for.body.25:                                      ; preds = %for.cond.21
  %31 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %31 to i64
  %32 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states27 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %32, i32 0, i32 3
  %v28 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states27, i32 0, i32 2
  %33 = load %struct.State**, %struct.State*** %v28, align 8
  %arrayidx29 = getelementptr inbounds %struct.State*, %struct.State** %33, i64 %idxprom26
  %34 = load %struct.State*, %struct.State** %arrayidx29, align 8
  store %struct.State* %34, %struct.State** %s, align 8
  %35 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind30 = getelementptr inbounds %struct.State, %struct.State* %35, i32 0, i32 10
  %bf.load31 = load i8, i8* %scan_kind30, align 8
  %bf.lshr = lshr i8 %bf.load31, 3
  %bf.clear32 = and i8 %bf.lshr, 3
  %bf.cast = zext i8 %bf.clear32 to i32
  %cmp33 = icmp eq i32 %bf.cast, 3
  br i1 %cmp33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %for.body.25
  %36 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind35 = getelementptr inbounds %struct.State, %struct.State* %36, i32 0, i32 10
  %bf.load36 = load i8, i8* %scan_kind35, align 8
  %bf.clear37 = and i8 %bf.load36, -25
  store i8 %bf.clear37, i8* %scan_kind35, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %for.body.25
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %37 = load i32, i32* %i, align 4
  %inc40 = add nsw i32 %37, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.21

for.end.41:                                       ; preds = %for.cond.21
  ret void
}

declare void @build_scanners(%struct.Grammar*) #4

; Function Attrs: nounwind uwtable
define internal %struct.Elem* @new_elem() #0 {
entry:
  %e = alloca %struct.Elem*, align 8
  %call = call noalias i8* @malloc(i64 32) #3
  %0 = bitcast i8* %call to %struct.Elem*
  store %struct.Elem* %0, %struct.Elem** %e, align 8
  %1 = load %struct.Elem*, %struct.Elem** %e, align 8
  %2 = bitcast %struct.Elem* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 32, i32 8, i1 false)
  %3 = load %struct.Elem*, %struct.Elem** %e, align 8
  ret %struct.Elem* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.Elem* @new_elem_term(%struct.Term* %t, %struct.Rule* %r) #0 {
entry:
  %t.addr = alloca %struct.Term*, align 8
  %r.addr = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  store %struct.Term* %t, %struct.Term** %t.addr, align 8
  store %struct.Rule* %r, %struct.Rule** %r.addr, align 8
  %call = call %struct.Elem* @new_elem()
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  %0 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 0
  store i32 1, i32* %kind, align 4
  %1 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %2 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e1 = getelementptr inbounds %struct.Elem, %struct.Elem* %2, i32 0, i32 3
  %term = bitcast %union.anon* %e1 to %struct.Term**
  store %struct.Term* %1, %struct.Term** %term, align 8
  %3 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %4 = load %struct.Elem*, %struct.Elem** %e, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 2
  store %struct.Rule* %3, %struct.Rule** %rule, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %5, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 2
  %6 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool = icmp ne %struct.Elem** %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load %struct.Elem*, %struct.Elem** %e, align 8
  %8 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems2 = getelementptr inbounds %struct.Rule, %struct.Rule* %8, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems2, i32 0, i32 0
  %9 = load i32, i32* %n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems3 = getelementptr inbounds %struct.Rule, %struct.Rule* %10, i32 0, i32 6
  %e4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e4, i32 0, i32 0
  %11 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems5 = getelementptr inbounds %struct.Rule, %struct.Rule* %11, i32 0, i32 6
  %v6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems5, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v6, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %7, %struct.Elem** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %12 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems7 = getelementptr inbounds %struct.Rule, %struct.Rule* %12, i32 0, i32 6
  %v8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems7, i32 0, i32 2
  %13 = load %struct.Elem**, %struct.Elem*** %v8, align 8
  %14 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems9 = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 6
  %e10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems9, i32 0, i32 3
  %arraydecay11 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e10, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %13, %arraydecay11
  br i1 %cmp, label %if.then.12, label %if.else.24

if.then.12:                                       ; preds = %if.else
  %15 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems13 = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %n14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems13, i32 0, i32 0
  %16 = load i32, i32* %n14, align 4
  %cmp15 = icmp ult i32 %16, 3
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.12
  %17 = load %struct.Elem*, %struct.Elem** %e, align 8
  %18 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems17 = getelementptr inbounds %struct.Rule, %struct.Rule* %18, i32 0, i32 6
  %n18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems17, i32 0, i32 0
  %19 = load i32, i32* %n18, align 4
  %inc19 = add i32 %19, 1
  store i32 %inc19, i32* %n18, align 4
  %idxprom20 = zext i32 %19 to i64
  %20 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems21 = getelementptr inbounds %struct.Rule, %struct.Rule* %20, i32 0, i32 6
  %v22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems21, i32 0, i32 2
  %21 = load %struct.Elem**, %struct.Elem*** %v22, align 8
  %arrayidx23 = getelementptr inbounds %struct.Elem*, %struct.Elem** %21, i64 %idxprom20
  store %struct.Elem* %17, %struct.Elem** %arrayidx23, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.12
  br label %if.end.37

if.else.24:                                       ; preds = %if.else
  %22 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems25 = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 6
  %n26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems25, i32 0, i32 0
  %23 = load i32, i32* %n26, align 4
  %and = and i32 %23, 7
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %if.else.24
  %24 = load %struct.Elem*, %struct.Elem** %e, align 8
  %25 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %n30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems29, i32 0, i32 0
  %26 = load i32, i32* %n30, align 4
  %inc31 = add i32 %26, 1
  store i32 %inc31, i32* %n30, align 4
  %idxprom32 = zext i32 %26 to i64
  %27 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems33 = getelementptr inbounds %struct.Rule, %struct.Rule* %27, i32 0, i32 6
  %v34 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems33, i32 0, i32 2
  %28 = load %struct.Elem**, %struct.Elem*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.Elem*, %struct.Elem** %28, i64 %idxprom32
  store %struct.Elem* %24, %struct.Elem** %arrayidx35, align 8
  br label %do.end

if.end.36:                                        ; preds = %if.else.24
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37
  %29 = load %struct.Rule*, %struct.Rule** %r.addr, align 8
  %elems39 = getelementptr inbounds %struct.Rule, %struct.Rule* %29, i32 0, i32 6
  %30 = bitcast %struct.anon.0* %elems39 to i8*
  %31 = load %struct.Elem*, %struct.Elem** %e, align 8
  %32 = bitcast %struct.Elem* %31 to i8*
  call void @vec_add_internal(i8* %30, i8* %32)
  br label %do.end

do.end:                                           ; preds = %if.end.38, %if.then.28, %if.then.16, %if.then
  %33 = load %struct.Elem*, %struct.Elem** %e, align 8
  ret %struct.Elem* %33
}

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.Term* @new_term() #0 {
entry:
  %term = alloca %struct.Term*, align 8
  %call = call noalias i8* @malloc(i64 48) #3
  %0 = bitcast i8* %call to %struct.Term*
  store %struct.Term* %0, %struct.Term** %term, align 8
  %1 = load %struct.Term*, %struct.Term** %term, align 8
  %2 = bitcast %struct.Term* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 48, i32 8, i1 false)
  %3 = load %struct.Term*, %struct.Term** %term, align 8
  ret %struct.Term* %3
}

; Function Attrs: nounwind uwtable
define internal void @print_item(%struct.Elem* %i) #0 {
entry:
  %i.addr = alloca %struct.Elem*, align 8
  %j = alloca i32, align 4
  %end = alloca i32, align 4
  %e = alloca %struct.Elem*, align 8
  store %struct.Elem* %i, %struct.Elem** %i.addr, align 8
  store i32 1, i32* %end, align 4
  %0 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule = getelementptr inbounds %struct.Elem, %struct.Elem* %0, i32 0, i32 2
  %1 = load %struct.Rule*, %struct.Rule** %rule, align 8
  %prod = getelementptr inbounds %struct.Rule, %struct.Rule* %1, i32 0, i32 1
  %2 = load %struct.Production*, %struct.Production** %prod, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %3)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule1 = getelementptr inbounds %struct.Elem, %struct.Elem* %5, i32 0, i32 2
  %6 = load %struct.Rule*, %struct.Rule** %rule1, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %6, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %4, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %j, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %rule2 = getelementptr inbounds %struct.Elem, %struct.Elem* %9, i32 0, i32 2
  %10 = load %struct.Rule*, %struct.Rule** %rule2, align 8
  %elems3 = getelementptr inbounds %struct.Rule, %struct.Rule* %10, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems3, i32 0, i32 2
  %11 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Elem*, %struct.Elem** %11, i64 %idxprom
  %12 = load %struct.Elem*, %struct.Elem** %arrayidx, align 8
  store %struct.Elem* %12, %struct.Elem** %e, align 8
  %13 = load %struct.Elem*, %struct.Elem** %i.addr, align 8
  %14 = load %struct.Elem*, %struct.Elem** %e, align 8
  %cmp4 = icmp eq %struct.Elem* %13, %14
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  store i32 0, i32* %end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load %struct.Elem*, %struct.Elem** %e, align 8
  call void @print_elem(%struct.Elem* %15)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %end, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.end
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %for.end
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @print_conflict(i8* %kind, i32* %conflict) #0 {
entry:
  %kind.addr = alloca i8*, align 8
  %conflict.addr = alloca i32*, align 8
  store i8* %kind, i8** %kind.addr, align 8
  store i32* %conflict, i32** %conflict.addr, align 8
  %0 = load i32*, i32** %conflict.addr, align 8
  %1 = load i32, i32* %0, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.63, i32 0, i32 0))
  %2 = load i32*, i32** %conflict.addr, align 8
  store i32 1, i32* %2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %kind.addr, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.64, i32 0, i32 0), i8* %3)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Term* @lookup_token(%struct.Grammar* %g, i8* %name, i32 %l) #0 {
entry:
  %retval = alloca %struct.Term*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %name.addr = alloca i8*, align 8
  %l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca %struct.Term*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %l, i32* %l.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals1, i32 0, i32 2
  %5 = load %struct.Term**, %struct.Term*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Term*, %struct.Term** %5, i64 %idxprom
  %6 = load %struct.Term*, %struct.Term** %arrayidx, align 8
  store %struct.Term* %6, %struct.Term** %t, align 8
  %7 = load %struct.Term*, %struct.Term** %t, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %7, i32 0, i32 0
  %8 = load i32, i32* %kind, align 4
  %cmp2 = icmp ne i32 %8, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.Term*, %struct.Term** %t, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %9, i32 0, i32 6
  %10 = load i32, i32* %string_len, align 4
  %11 = load i32, i32* %l.addr, align 4
  %cmp3 = icmp ne i32 %10, %11
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %12 = load %struct.Term*, %struct.Term** %t, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %12, i32 0, i32 5
  %13 = load i8*, i8** %string, align 8
  %14 = load i8*, i8** %name.addr, align 8
  %15 = load i32, i32* %l.addr, align 4
  %conv = sext i32 %15 to i64
  %call = call i32 @strncmp(i8* %13, i8* %14, i64 %conv) #6
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false.4
  %16 = load %struct.Term*, %struct.Term** %t, align 8
  store %struct.Term* %16, %struct.Term** %retval
  br label %return

for.inc:                                          ; preds = %if.then
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.Term* null, %struct.Term** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %18 = load %struct.Term*, %struct.Term** %retval
  ret %struct.Term* %18
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @compute_nullable(%struct.Grammar* %g) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %changed = alloca i32, align 4
  %e = alloca %struct.Elem*, align 8
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store i32 1, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 1
  %n = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions2 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 1
  %v = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions2, i32 0, i32 2
  %6 = load %struct.Production**, %struct.Production*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Production*, %struct.Production** %6, i64 %idxprom
  %7 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %7, i32 0, i32 2
  %n3 = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %8 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %3, %8
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %j, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %10 to i64
  %11 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions8 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 1
  %v9 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions8, i32 0, i32 2
  %12 = load %struct.Production**, %struct.Production*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Production*, %struct.Production** %12, i64 %idxprom7
  %13 = load %struct.Production*, %struct.Production** %arrayidx10, align 8
  %rules11 = getelementptr inbounds %struct.Production, %struct.Production* %13, i32 0, i32 2
  %v12 = getelementptr inbounds %struct.anon, %struct.anon* %rules11, i32 0, i32 2
  %14 = load %struct.Rule**, %struct.Rule*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.Rule*, %struct.Rule** %14, i64 %idxprom6
  %15 = load %struct.Rule*, %struct.Rule** %arrayidx13, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 6
  %n14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %16 = load i32, i32* %n14, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.5
  %17 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions17 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %19, i32 0, i32 1
  %v18 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions17, i32 0, i32 2
  %20 = load %struct.Production**, %struct.Production*** %v18, align 8
  %arrayidx19 = getelementptr inbounds %struct.Production*, %struct.Production** %20, i64 %idxprom16
  %21 = load %struct.Production*, %struct.Production** %arrayidx19, align 8
  %rules20 = getelementptr inbounds %struct.Production, %struct.Production* %21, i32 0, i32 2
  %v21 = getelementptr inbounds %struct.anon, %struct.anon* %rules20, i32 0, i32 2
  %22 = load %struct.Rule**, %struct.Rule*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.Rule*, %struct.Rule** %22, i64 %idxprom15
  %23 = load %struct.Rule*, %struct.Rule** %arrayidx22, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %24 to i64
  %25 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions24 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 1
  %v25 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions24, i32 0, i32 2
  %26 = load %struct.Production**, %struct.Production*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.Production*, %struct.Production** %26, i64 %idxprom23
  %27 = load %struct.Production*, %struct.Production** %arrayidx26, align 8
  %nullable = getelementptr inbounds %struct.Production, %struct.Production* %27, i32 0, i32 5
  store %struct.Rule* %23, %struct.Rule** %nullable, align 8
  br label %for.end

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.105, %for.end.29
  %30 = load i32, i32* %changed, align 4
  %tobool30 = icmp ne i32 %30, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.103, %while.body
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions32 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %32, i32 0, i32 1
  %n33 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions32, i32 0, i32 0
  %33 = load i32, i32* %n33, align 4
  %cmp34 = icmp ult i32 %31, %33
  br i1 %cmp34, label %for.body.35, label %for.end.105

for.body.35:                                      ; preds = %for.cond.31
  %34 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %34 to i64
  %35 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions37 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 1
  %v38 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions37, i32 0, i32 2
  %36 = load %struct.Production**, %struct.Production*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Production*, %struct.Production** %36, i64 %idxprom36
  %37 = load %struct.Production*, %struct.Production** %arrayidx39, align 8
  %nullable40 = getelementptr inbounds %struct.Production, %struct.Production* %37, i32 0, i32 5
  %38 = load %struct.Rule*, %struct.Rule** %nullable40, align 8
  %tobool41 = icmp ne %struct.Rule* %38, null
  br i1 %tobool41, label %if.end.102, label %if.then.42

if.then.42:                                       ; preds = %for.body.35
  store i32 0, i32* %j, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.99, %if.then.42
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %40 to i64
  %41 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions45 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 1
  %v46 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions45, i32 0, i32 2
  %42 = load %struct.Production**, %struct.Production*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.Production*, %struct.Production** %42, i64 %idxprom44
  %43 = load %struct.Production*, %struct.Production** %arrayidx47, align 8
  %rules48 = getelementptr inbounds %struct.Production, %struct.Production* %43, i32 0, i32 2
  %n49 = getelementptr inbounds %struct.anon, %struct.anon* %rules48, i32 0, i32 0
  %44 = load i32, i32* %n49, align 4
  %cmp50 = icmp ult i32 %39, %44
  br i1 %cmp50, label %for.body.51, label %for.end.101

for.body.51:                                      ; preds = %for.cond.43
  store i32 0, i32* %k, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.83, %for.body.51
  %45 = load i32, i32* %k, align 4
  %46 = load i32, i32* %j, align 4
  %idxprom53 = sext i32 %46 to i64
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions55 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %48, i32 0, i32 1
  %v56 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions55, i32 0, i32 2
  %49 = load %struct.Production**, %struct.Production*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.Production*, %struct.Production** %49, i64 %idxprom54
  %50 = load %struct.Production*, %struct.Production** %arrayidx57, align 8
  %rules58 = getelementptr inbounds %struct.Production, %struct.Production* %50, i32 0, i32 2
  %v59 = getelementptr inbounds %struct.anon, %struct.anon* %rules58, i32 0, i32 2
  %51 = load %struct.Rule**, %struct.Rule*** %v59, align 8
  %arrayidx60 = getelementptr inbounds %struct.Rule*, %struct.Rule** %51, i64 %idxprom53
  %52 = load %struct.Rule*, %struct.Rule** %arrayidx60, align 8
  %elems61 = getelementptr inbounds %struct.Rule, %struct.Rule* %52, i32 0, i32 6
  %n62 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems61, i32 0, i32 0
  %53 = load i32, i32* %n62, align 4
  %cmp63 = icmp ult i32 %45, %53
  br i1 %cmp63, label %for.body.64, label %for.end.85

for.body.64:                                      ; preds = %for.cond.52
  %54 = load i32, i32* %k, align 4
  %idxprom65 = sext i32 %54 to i64
  %55 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %55 to i64
  %56 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %56 to i64
  %57 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions68 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %57, i32 0, i32 1
  %v69 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions68, i32 0, i32 2
  %58 = load %struct.Production**, %struct.Production*** %v69, align 8
  %arrayidx70 = getelementptr inbounds %struct.Production*, %struct.Production** %58, i64 %idxprom67
  %59 = load %struct.Production*, %struct.Production** %arrayidx70, align 8
  %rules71 = getelementptr inbounds %struct.Production, %struct.Production* %59, i32 0, i32 2
  %v72 = getelementptr inbounds %struct.anon, %struct.anon* %rules71, i32 0, i32 2
  %60 = load %struct.Rule**, %struct.Rule*** %v72, align 8
  %arrayidx73 = getelementptr inbounds %struct.Rule*, %struct.Rule** %60, i64 %idxprom66
  %61 = load %struct.Rule*, %struct.Rule** %arrayidx73, align 8
  %elems74 = getelementptr inbounds %struct.Rule, %struct.Rule* %61, i32 0, i32 6
  %v75 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems74, i32 0, i32 2
  %62 = load %struct.Elem**, %struct.Elem*** %v75, align 8
  %arrayidx76 = getelementptr inbounds %struct.Elem*, %struct.Elem** %62, i64 %idxprom65
  %63 = load %struct.Elem*, %struct.Elem** %arrayidx76, align 8
  store %struct.Elem* %63, %struct.Elem** %e, align 8
  %64 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %64, i32 0, i32 0
  %65 = load i32, i32* %kind, align 4
  %cmp77 = icmp ne i32 %65, 0
  br i1 %cmp77, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.64
  %66 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e78 = getelementptr inbounds %struct.Elem, %struct.Elem* %66, i32 0, i32 3
  %nterm = bitcast %union.anon* %e78 to %struct.Production**
  %67 = load %struct.Production*, %struct.Production** %nterm, align 8
  %nullable79 = getelementptr inbounds %struct.Production, %struct.Production* %67, i32 0, i32 5
  %68 = load %struct.Rule*, %struct.Rule** %nullable79, align 8
  %tobool80 = icmp ne %struct.Rule* %68, null
  br i1 %tobool80, label %if.end.82, label %if.then.81

if.then.81:                                       ; preds = %lor.lhs.false, %for.body.64
  br label %Lnot_nullable

if.end.82:                                        ; preds = %lor.lhs.false
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %69 = load i32, i32* %k, align 4
  %inc84 = add nsw i32 %69, 1
  store i32 %inc84, i32* %k, align 4
  br label %for.cond.52

for.end.85:                                       ; preds = %for.cond.52
  store i32 1, i32* %changed, align 4
  %70 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %71 to i64
  %72 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions88 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %72, i32 0, i32 1
  %v89 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions88, i32 0, i32 2
  %73 = load %struct.Production**, %struct.Production*** %v89, align 8
  %arrayidx90 = getelementptr inbounds %struct.Production*, %struct.Production** %73, i64 %idxprom87
  %74 = load %struct.Production*, %struct.Production** %arrayidx90, align 8
  %rules91 = getelementptr inbounds %struct.Production, %struct.Production* %74, i32 0, i32 2
  %v92 = getelementptr inbounds %struct.anon, %struct.anon* %rules91, i32 0, i32 2
  %75 = load %struct.Rule**, %struct.Rule*** %v92, align 8
  %arrayidx93 = getelementptr inbounds %struct.Rule*, %struct.Rule** %75, i64 %idxprom86
  %76 = load %struct.Rule*, %struct.Rule** %arrayidx93, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %77 to i64
  %78 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %productions95 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %78, i32 0, i32 1
  %v96 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %productions95, i32 0, i32 2
  %79 = load %struct.Production**, %struct.Production*** %v96, align 8
  %arrayidx97 = getelementptr inbounds %struct.Production*, %struct.Production** %79, i64 %idxprom94
  %80 = load %struct.Production*, %struct.Production** %arrayidx97, align 8
  %nullable98 = getelementptr inbounds %struct.Production, %struct.Production* %80, i32 0, i32 5
  store %struct.Rule* %76, %struct.Rule** %nullable98, align 8
  br label %for.end.101

for.inc.99:                                       ; No predecessors!
  %81 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %81, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.43

for.end.101:                                      ; preds = %for.end.85, %for.cond.43
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %for.body.35
  br label %Lnot_nullable

Lnot_nullable:                                    ; preds = %if.end.102, %if.then.81
  br label %for.inc.103

for.inc.103:                                      ; preds = %Lnot_nullable
  %82 = load i32, i32* %i, align 4
  %inc104 = add nsw i32 %82, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.31

for.end.105:                                      ; preds = %for.cond.31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @convert_regex_production_one(%struct.Grammar* %g, %struct.Production* %p) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %p.addr = alloca %struct.Production*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %pp = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  %rr = alloca %struct.Rule*, align 8
  %e = alloca %struct.Elem*, align 8
  %t = alloca %struct.Term*, align 8
  %circular = alloca i32, align 4
  %buf = alloca i8*, align 8
  %b = alloca i8*, align 8
  %s = alloca i8*, align 8
  %buf_len = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  store i32 0, i32* %circular, align 4
  store i8* null, i8** %buf, align 8
  store i32 0, i32* %buf_len, align 4
  %0 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term = getelementptr inbounds %struct.Production, %struct.Production* %0, i32 0, i32 10
  %1 = load %struct.Term*, %struct.Term** %regex_term, align 8
  %tobool = icmp ne %struct.Term* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %in_regex = getelementptr inbounds %struct.Production, %struct.Production* %2, i32 0, i32 4
  %bf.load = load i8, i8* %in_regex, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name = getelementptr inbounds %struct.Production, %struct.Production* %3, i32 0, i32 0
  %4 = load i8*, i8** %name, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i32 0, i32 0), i8* %4)
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %in_regex4 = getelementptr inbounds %struct.Production, %struct.Production* %5, i32 0, i32 4
  %bf.load5 = load i8, i8* %in_regex4, align 4
  %bf.clear6 = and i8 %bf.load5, -3
  %bf.set = or i8 %bf.clear6, 2
  store i8 %bf.set, i8* %in_regex4, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.89, %if.end.3
  %6 = load i32, i32* %j, align 4
  %7 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %7, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %8 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.91

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules7 = getelementptr inbounds %struct.Production, %struct.Production* %10, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %rules7, i32 0, i32 2
  %11 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Rule*, %struct.Rule** %11, i64 %idxprom
  %12 = load %struct.Rule*, %struct.Rule** %arrayidx, align 8
  store %struct.Rule* %12, %struct.Rule** %r, align 8
  %13 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code = getelementptr inbounds %struct.Rule, %struct.Rule* %13, i32 0, i32 9
  %code = getelementptr inbounds %struct.Code, %struct.Code* %final_code, i32 0, i32 0
  %14 = load i8*, i8** %code, align 8
  %tobool8 = icmp ne i8* %14, null
  br i1 %tobool8, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %15 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 8
  %code9 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code, i32 0, i32 0
  %16 = load i8*, i8** %code9, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules11 = getelementptr inbounds %struct.Production, %struct.Production* %17, i32 0, i32 2
  %n12 = getelementptr inbounds %struct.anon, %struct.anon* %rules11, i32 0, i32 0
  %18 = load i32, i32* %n12, align 4
  %cmp13 = icmp ugt i32 %18, 1
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %land.lhs.true, %for.body
  %19 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name15 = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 0
  %20 = load i8*, i8** %name15, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.68, i32 0, i32 0), i8* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %land.lhs.true, %lor.lhs.false
  store i32 0, i32* %k, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.86, %if.end.16
  %21 = load i32, i32* %k, align 4
  %22 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %22, i32 0, i32 6
  %n18 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %23 = load i32, i32* %n18, align 4
  %cmp19 = icmp ult i32 %21, %23
  br i1 %cmp19, label %for.body.20, label %for.end.88

for.body.20:                                      ; preds = %for.cond.17
  %24 = load i32, i32* %k, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems22 = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 6
  %v23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems22, i32 0, i32 2
  %26 = load %struct.Elem**, %struct.Elem*** %v23, align 8
  %arrayidx24 = getelementptr inbounds %struct.Elem*, %struct.Elem** %26, i64 %idxprom21
  %27 = load %struct.Elem*, %struct.Elem** %arrayidx24, align 8
  store %struct.Elem* %27, %struct.Elem** %e, align 8
  %28 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %28, i32 0, i32 0
  %29 = load i32, i32* %kind, align 4
  %cmp25 = icmp eq i32 %29, 0
  br i1 %cmp25, label %if.then.26, label %if.else.69

if.then.26:                                       ; preds = %for.body.20
  %30 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e27 = getelementptr inbounds %struct.Elem, %struct.Elem* %30, i32 0, i32 3
  %nterm = bitcast %union.anon* %e27 to %struct.Production**
  %31 = load %struct.Production*, %struct.Production** %nterm, align 8
  %regex = getelementptr inbounds %struct.Production, %struct.Production* %31, i32 0, i32 4
  %bf.load28 = load i8, i8* %regex, align 4
  %bf.clear29 = and i8 %bf.load28, 1
  %bf.cast30 = zext i8 %bf.clear29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.end.37, label %if.then.32

if.then.32:                                       ; preds = %if.then.26
  %32 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name33 = getelementptr inbounds %struct.Production, %struct.Production* %32, i32 0, i32 0
  %33 = load i8*, i8** %name33, align 8
  %34 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e34 = getelementptr inbounds %struct.Elem, %struct.Elem* %34, i32 0, i32 3
  %nterm35 = bitcast %union.anon* %e34 to %struct.Production**
  %35 = load %struct.Production*, %struct.Production** %nterm35, align 8
  %name36 = getelementptr inbounds %struct.Production, %struct.Production* %35, i32 0, i32 0
  %36 = load i8*, i8** %name36, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.69, i32 0, i32 0), i8* %33, i8* %36)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.32, %if.then.26
  %37 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e38 = getelementptr inbounds %struct.Elem, %struct.Elem* %37, i32 0, i32 3
  %nterm39 = bitcast %union.anon* %e38 to %struct.Production**
  %38 = load %struct.Production*, %struct.Production** %nterm39, align 8
  store %struct.Production* %38, %struct.Production** %pp, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc, %if.end.37
  %39 = load i32, i32* %l, align 4
  %40 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules41 = getelementptr inbounds %struct.Production, %struct.Production* %40, i32 0, i32 2
  %n42 = getelementptr inbounds %struct.anon, %struct.anon* %rules41, i32 0, i32 0
  %41 = load i32, i32* %n42, align 4
  %cmp43 = icmp ult i32 %39, %41
  br i1 %cmp43, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.40
  %42 = load i32, i32* %l, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules46 = getelementptr inbounds %struct.Production, %struct.Production* %43, i32 0, i32 2
  %v47 = getelementptr inbounds %struct.anon, %struct.anon* %rules46, i32 0, i32 2
  %44 = load %struct.Rule**, %struct.Rule*** %v47, align 8
  %arrayidx48 = getelementptr inbounds %struct.Rule*, %struct.Rule** %44, i64 %idxprom45
  %45 = load %struct.Rule*, %struct.Rule** %arrayidx48, align 8
  %speculative_code49 = getelementptr inbounds %struct.Rule, %struct.Rule* %45, i32 0, i32 8
  %code50 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code49, i32 0, i32 0
  %46 = load i8*, i8** %code50, align 8
  %tobool51 = icmp ne i8* %46, null
  br i1 %tobool51, label %if.then.60, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %for.body.44
  %47 = load i32, i32* %l, align 4
  %idxprom53 = sext i32 %47 to i64
  %48 = load %struct.Production*, %struct.Production** %pp, align 8
  %rules54 = getelementptr inbounds %struct.Production, %struct.Production* %48, i32 0, i32 2
  %v55 = getelementptr inbounds %struct.anon, %struct.anon* %rules54, i32 0, i32 2
  %49 = load %struct.Rule**, %struct.Rule*** %v55, align 8
  %arrayidx56 = getelementptr inbounds %struct.Rule*, %struct.Rule** %49, i64 %idxprom53
  %50 = load %struct.Rule*, %struct.Rule** %arrayidx56, align 8
  %final_code57 = getelementptr inbounds %struct.Rule, %struct.Rule* %50, i32 0, i32 9
  %code58 = getelementptr inbounds %struct.Code, %struct.Code* %final_code57, i32 0, i32 0
  %51 = load i8*, i8** %code58, align 8
  %tobool59 = icmp ne i8* %51, null
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %lor.lhs.false.52, %for.body.44
  %52 = load i32, i32* %l, align 4
  %53 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name61 = getelementptr inbounds %struct.Production, %struct.Production* %53, i32 0, i32 0
  %54 = load i8*, i8** %name61, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.70, i32 0, i32 0), i32 %52, i8* %54)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %lor.lhs.false.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %55 = load i32, i32* %l, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond.40

for.end:                                          ; preds = %for.cond.40
  %56 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %57 = load %struct.Production*, %struct.Production** %pp, align 8
  %cmp63 = icmp ne %struct.Production* %56, %57
  br i1 %cmp63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %for.end
  %58 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %59 = load %struct.Production*, %struct.Production** %pp, align 8
  call void @convert_regex_production_one(%struct.Grammar* %58, %struct.Production* %59)
  %60 = load %struct.Production*, %struct.Production** %pp, align 8
  %regex_term65 = getelementptr inbounds %struct.Production, %struct.Production* %60, i32 0, i32 10
  %61 = load %struct.Term*, %struct.Term** %regex_term65, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %61, i32 0, i32 6
  %62 = load i32, i32* %string_len, align 4
  %add = add nsw i32 %62, 5
  %63 = load i32, i32* %buf_len, align 4
  %add66 = add nsw i32 %63, %add
  store i32 %add66, i32* %buf_len, align 4
  br label %if.end.68

if.else:                                          ; preds = %for.end
  store i32 1, i32* %circular, align 4
  %64 = load i32, i32* %buf_len, align 4
  %add67 = add nsw i32 %64, 5
  store i32 %add67, i32* %buf_len, align 4
  br label %if.end.68

if.end.68:                                        ; preds = %if.else, %if.then.64
  br label %if.end.85

if.else.69:                                       ; preds = %for.body.20
  %65 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e70 = getelementptr inbounds %struct.Elem, %struct.Elem* %65, i32 0, i32 3
  %term = bitcast %union.anon* %e70 to %struct.Term**
  %66 = load %struct.Term*, %struct.Term** %term, align 8
  %kind71 = getelementptr inbounds %struct.Term, %struct.Term* %66, i32 0, i32 0
  %67 = load i32, i32* %kind71, align 4
  %cmp72 = icmp eq i32 %67, 2
  br i1 %cmp72, label %if.then.78, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.else.69
  %68 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e74 = getelementptr inbounds %struct.Elem, %struct.Elem* %68, i32 0, i32 3
  %term75 = bitcast %union.anon* %e74 to %struct.Term**
  %69 = load %struct.Term*, %struct.Term** %term75, align 8
  %kind76 = getelementptr inbounds %struct.Term, %struct.Term* %69, i32 0, i32 0
  %70 = load i32, i32* %kind76, align 4
  %cmp77 = icmp eq i32 %70, 3
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.73, %if.else.69
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %lor.lhs.false.73
  %71 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e80 = getelementptr inbounds %struct.Elem, %struct.Elem* %71, i32 0, i32 3
  %term81 = bitcast %union.anon* %e80 to %struct.Term**
  %72 = load %struct.Term*, %struct.Term** %term81, align 8
  %string_len82 = getelementptr inbounds %struct.Term, %struct.Term* %72, i32 0, i32 6
  %73 = load i32, i32* %string_len82, align 4
  %add83 = add nsw i32 %73, 5
  %74 = load i32, i32* %buf_len, align 4
  %add84 = add nsw i32 %74, %add83
  store i32 %add84, i32* %buf_len, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.79, %if.end.68
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %75 = load i32, i32* %k, align 4
  %inc87 = add nsw i32 %75, 1
  store i32 %inc87, i32* %k, align 4
  br label %for.cond.17

for.end.88:                                       ; preds = %for.cond.17
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end.88
  %76 = load i32, i32* %j, align 4
  %inc90 = add nsw i32 %76, 1
  store i32 %inc90, i32* %j, align 4
  br label %for.cond

for.end.91:                                       ; preds = %for.cond
  %77 = load i32, i32* %buf_len, align 4
  %add92 = add nsw i32 %77, 1
  %conv = sext i32 %add92 to i64
  %call = call noalias i8* @malloc(i64 %conv) #3
  store i8* %call, i8** %buf, align 8
  store i8* %call, i8** %b, align 8
  %call93 = call %struct.Term* @new_term()
  store %struct.Term* %call93, %struct.Term** %t, align 8
  %78 = load %struct.Term*, %struct.Term** %t, align 8
  %kind94 = getelementptr inbounds %struct.Term, %struct.Term* %78, i32 0, i32 0
  store i32 1, i32* %kind94, align 4
  %79 = load i8*, i8** %buf, align 8
  %80 = load %struct.Term*, %struct.Term** %t, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %80, i32 0, i32 5
  store i8* %79, i8** %string, align 8
  %81 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %81, i32 0, i32 2
  %n95 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %82 = load i32, i32* %n95, align 4
  %83 = load %struct.Term*, %struct.Term** %t, align 8
  %index = getelementptr inbounds %struct.Term, %struct.Term* %83, i32 0, i32 1
  store i32 %82, i32* %index, align 4
  %84 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %85 = load %struct.Term*, %struct.Term** %t, align 8
  %regex_production = getelementptr inbounds %struct.Term, %struct.Term* %85, i32 0, i32 8
  store %struct.Production* %84, %struct.Production** %regex_production, align 8
  br label %do.body

do.body:                                          ; preds = %for.end.91
  %86 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals96 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %86, i32 0, i32 2
  %v97 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals96, i32 0, i32 2
  %87 = load %struct.Term**, %struct.Term*** %v97, align 8
  %tobool98 = icmp ne %struct.Term** %87, null
  br i1 %tobool98, label %if.else.109, label %if.then.99

if.then.99:                                       ; preds = %do.body
  %88 = load %struct.Term*, %struct.Term** %t, align 8
  %89 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals100 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %89, i32 0, i32 2
  %n101 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals100, i32 0, i32 0
  %90 = load i32, i32* %n101, align 4
  %inc102 = add i32 %90, 1
  store i32 %inc102, i32* %n101, align 4
  %idxprom103 = zext i32 %90 to i64
  %91 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals104 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %91, i32 0, i32 2
  %e105 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals104, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e105, i32 0, i32 0
  %92 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals106 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %92, i32 0, i32 2
  %v107 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals106, i32 0, i32 2
  store %struct.Term** %arraydecay, %struct.Term*** %v107, align 8
  %arrayidx108 = getelementptr inbounds %struct.Term*, %struct.Term** %arraydecay, i64 %idxprom103
  store %struct.Term* %88, %struct.Term** %arrayidx108, align 8
  br label %do.end

if.else.109:                                      ; preds = %do.body
  %93 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals110 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %93, i32 0, i32 2
  %v111 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals110, i32 0, i32 2
  %94 = load %struct.Term**, %struct.Term*** %v111, align 8
  %95 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals112 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %95, i32 0, i32 2
  %e113 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals112, i32 0, i32 3
  %arraydecay114 = getelementptr inbounds [3 x %struct.Term*], [3 x %struct.Term*]* %e113, i32 0, i32 0
  %cmp115 = icmp eq %struct.Term** %94, %arraydecay114
  br i1 %cmp115, label %if.then.117, label %if.else.131

if.then.117:                                      ; preds = %if.else.109
  %96 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals118 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %96, i32 0, i32 2
  %n119 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals118, i32 0, i32 0
  %97 = load i32, i32* %n119, align 4
  %cmp120 = icmp ult i32 %97, 3
  br i1 %cmp120, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %if.then.117
  %98 = load %struct.Term*, %struct.Term** %t, align 8
  %99 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals123 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %99, i32 0, i32 2
  %n124 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals123, i32 0, i32 0
  %100 = load i32, i32* %n124, align 4
  %inc125 = add i32 %100, 1
  store i32 %inc125, i32* %n124, align 4
  %idxprom126 = zext i32 %100 to i64
  %101 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals127 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %101, i32 0, i32 2
  %v128 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals127, i32 0, i32 2
  %102 = load %struct.Term**, %struct.Term*** %v128, align 8
  %arrayidx129 = getelementptr inbounds %struct.Term*, %struct.Term** %102, i64 %idxprom126
  store %struct.Term* %98, %struct.Term** %arrayidx129, align 8
  br label %do.end

if.end.130:                                       ; preds = %if.then.117
  br label %if.end.144

if.else.131:                                      ; preds = %if.else.109
  %103 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals132 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %103, i32 0, i32 2
  %n133 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals132, i32 0, i32 0
  %104 = load i32, i32* %n133, align 4
  %and = and i32 %104, 7
  %tobool134 = icmp ne i32 %and, 0
  br i1 %tobool134, label %if.then.135, label %if.end.143

if.then.135:                                      ; preds = %if.else.131
  %105 = load %struct.Term*, %struct.Term** %t, align 8
  %106 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals136 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %106, i32 0, i32 2
  %n137 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals136, i32 0, i32 0
  %107 = load i32, i32* %n137, align 4
  %inc138 = add i32 %107, 1
  store i32 %inc138, i32* %n137, align 4
  %idxprom139 = zext i32 %107 to i64
  %108 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals140 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %108, i32 0, i32 2
  %v141 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals140, i32 0, i32 2
  %109 = load %struct.Term**, %struct.Term*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Term*, %struct.Term** %109, i64 %idxprom139
  store %struct.Term* %105, %struct.Term** %arrayidx142, align 8
  br label %do.end

if.end.143:                                       ; preds = %if.else.131
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.130
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144
  %110 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals146 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %110, i32 0, i32 2
  %111 = bitcast %struct.anon.5* %terminals146 to i8*
  %112 = load %struct.Term*, %struct.Term** %t, align 8
  %113 = bitcast %struct.Term* %112 to i8*
  call void @vec_add_internal(i8* %111, i8* %113)
  br label %do.end

do.end:                                           ; preds = %if.end.145, %if.then.135, %if.then.122, %if.then.99
  %114 = load %struct.Term*, %struct.Term** %t, align 8
  %115 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term147 = getelementptr inbounds %struct.Production, %struct.Production* %115, i32 0, i32 10
  store %struct.Term* %114, %struct.Term** %regex_term147, align 8
  %116 = load i32, i32* %circular, align 4
  %tobool148 = icmp ne i32 %116, 0
  br i1 %tobool148, label %if.then.149, label %if.else.311

if.then.149:                                      ; preds = %do.end
  %117 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules150 = getelementptr inbounds %struct.Production, %struct.Production* %117, i32 0, i32 2
  %n151 = getelementptr inbounds %struct.anon, %struct.anon* %rules150, i32 0, i32 0
  %118 = load i32, i32* %n151, align 4
  %cmp152 = icmp ne i32 %118, 2
  br i1 %cmp152, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.then.149
  br label %Lfail

Lfail:                                            ; preds = %if.else.309, %if.then.265, %if.then.234, %if.then.189, %if.then.154
  %119 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %name155 = getelementptr inbounds %struct.Production, %struct.Production* %119, i32 0, i32 0
  %120 = load i8*, i8** %name155, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.72, i32 0, i32 0), i8* %120)
  br label %if.end.156

if.end.156:                                       ; preds = %Lfail, %if.then.149
  %121 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules157 = getelementptr inbounds %struct.Production, %struct.Production* %121, i32 0, i32 2
  %v158 = getelementptr inbounds %struct.anon, %struct.anon* %rules157, i32 0, i32 2
  %122 = load %struct.Rule**, %struct.Rule*** %v158, align 8
  %arrayidx159 = getelementptr inbounds %struct.Rule*, %struct.Rule** %122, i64 0
  %123 = load %struct.Rule*, %struct.Rule** %arrayidx159, align 8
  %elems160 = getelementptr inbounds %struct.Rule, %struct.Rule* %123, i32 0, i32 6
  %n161 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems160, i32 0, i32 0
  %124 = load i32, i32* %n161, align 4
  %125 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules162 = getelementptr inbounds %struct.Production, %struct.Production* %125, i32 0, i32 2
  %v163 = getelementptr inbounds %struct.anon, %struct.anon* %rules162, i32 0, i32 2
  %126 = load %struct.Rule**, %struct.Rule*** %v163, align 8
  %arrayidx164 = getelementptr inbounds %struct.Rule*, %struct.Rule** %126, i64 1
  %127 = load %struct.Rule*, %struct.Rule** %arrayidx164, align 8
  %elems165 = getelementptr inbounds %struct.Rule, %struct.Rule* %127, i32 0, i32 6
  %n166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems165, i32 0, i32 0
  %128 = load i32, i32* %n166, align 4
  %add167 = add i32 %124, %128
  store i32 %add167, i32* %l, align 4
  %129 = load i32, i32* %l, align 4
  %cmp168 = icmp eq i32 %129, 2
  br i1 %cmp168, label %if.then.173, label %lor.lhs.false.170

lor.lhs.false.170:                                ; preds = %if.end.156
  %130 = load i32, i32* %l, align 4
  %cmp171 = icmp eq i32 %130, 3
  br i1 %cmp171, label %if.then.173, label %if.else.309

if.then.173:                                      ; preds = %lor.lhs.false.170, %if.end.156
  %131 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules174 = getelementptr inbounds %struct.Production, %struct.Production* %131, i32 0, i32 2
  %v175 = getelementptr inbounds %struct.anon, %struct.anon* %rules174, i32 0, i32 2
  %132 = load %struct.Rule**, %struct.Rule*** %v175, align 8
  %arrayidx176 = getelementptr inbounds %struct.Rule*, %struct.Rule** %132, i64 0
  %133 = load %struct.Rule*, %struct.Rule** %arrayidx176, align 8
  %elems177 = getelementptr inbounds %struct.Rule, %struct.Rule* %133, i32 0, i32 6
  %n178 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems177, i32 0, i32 0
  %134 = load i32, i32* %n178, align 4
  %cmp179 = icmp ne i32 %134, 2
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.190

land.lhs.true.181:                                ; preds = %if.then.173
  %135 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules182 = getelementptr inbounds %struct.Production, %struct.Production* %135, i32 0, i32 2
  %v183 = getelementptr inbounds %struct.anon, %struct.anon* %rules182, i32 0, i32 2
  %136 = load %struct.Rule**, %struct.Rule*** %v183, align 8
  %arrayidx184 = getelementptr inbounds %struct.Rule*, %struct.Rule** %136, i64 1
  %137 = load %struct.Rule*, %struct.Rule** %arrayidx184, align 8
  %elems185 = getelementptr inbounds %struct.Rule, %struct.Rule* %137, i32 0, i32 6
  %n186 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems185, i32 0, i32 0
  %138 = load i32, i32* %n186, align 4
  %cmp187 = icmp ne i32 %138, 2
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %land.lhs.true.181
  br label %Lfail

if.end.190:                                       ; preds = %land.lhs.true.181, %if.then.173
  %139 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules191 = getelementptr inbounds %struct.Production, %struct.Production* %139, i32 0, i32 2
  %v192 = getelementptr inbounds %struct.anon, %struct.anon* %rules191, i32 0, i32 2
  %140 = load %struct.Rule**, %struct.Rule*** %v192, align 8
  %arrayidx193 = getelementptr inbounds %struct.Rule*, %struct.Rule** %140, i64 0
  %141 = load %struct.Rule*, %struct.Rule** %arrayidx193, align 8
  %elems194 = getelementptr inbounds %struct.Rule, %struct.Rule* %141, i32 0, i32 6
  %n195 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems194, i32 0, i32 0
  %142 = load i32, i32* %n195, align 4
  %cmp196 = icmp eq i32 %142, 2
  br i1 %cmp196, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.190
  %143 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules198 = getelementptr inbounds %struct.Production, %struct.Production* %143, i32 0, i32 2
  %v199 = getelementptr inbounds %struct.anon, %struct.anon* %rules198, i32 0, i32 2
  %144 = load %struct.Rule**, %struct.Rule*** %v199, align 8
  %arrayidx200 = getelementptr inbounds %struct.Rule*, %struct.Rule** %144, i64 0
  %145 = load %struct.Rule*, %struct.Rule** %arrayidx200, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.190
  %146 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules201 = getelementptr inbounds %struct.Production, %struct.Production* %146, i32 0, i32 2
  %v202 = getelementptr inbounds %struct.anon, %struct.anon* %rules201, i32 0, i32 2
  %147 = load %struct.Rule**, %struct.Rule*** %v202, align 8
  %arrayidx203 = getelementptr inbounds %struct.Rule*, %struct.Rule** %147, i64 1
  %148 = load %struct.Rule*, %struct.Rule** %arrayidx203, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.Rule* [ %145, %cond.true ], [ %148, %cond.false ]
  store %struct.Rule* %cond, %struct.Rule** %r, align 8
  %149 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules204 = getelementptr inbounds %struct.Production, %struct.Production* %149, i32 0, i32 2
  %v205 = getelementptr inbounds %struct.anon, %struct.anon* %rules204, i32 0, i32 2
  %150 = load %struct.Rule**, %struct.Rule*** %v205, align 8
  %arrayidx206 = getelementptr inbounds %struct.Rule*, %struct.Rule** %150, i64 0
  %151 = load %struct.Rule*, %struct.Rule** %arrayidx206, align 8
  %152 = load %struct.Rule*, %struct.Rule** %r, align 8
  %cmp207 = icmp eq %struct.Rule* %151, %152
  br i1 %cmp207, label %cond.true.209, label %cond.false.213

cond.true.209:                                    ; preds = %cond.end
  %153 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules210 = getelementptr inbounds %struct.Production, %struct.Production* %153, i32 0, i32 2
  %v211 = getelementptr inbounds %struct.anon, %struct.anon* %rules210, i32 0, i32 2
  %154 = load %struct.Rule**, %struct.Rule*** %v211, align 8
  %arrayidx212 = getelementptr inbounds %struct.Rule*, %struct.Rule** %154, i64 1
  %155 = load %struct.Rule*, %struct.Rule** %arrayidx212, align 8
  br label %cond.end.217

cond.false.213:                                   ; preds = %cond.end
  %156 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules214 = getelementptr inbounds %struct.Production, %struct.Production* %156, i32 0, i32 2
  %v215 = getelementptr inbounds %struct.anon, %struct.anon* %rules214, i32 0, i32 2
  %157 = load %struct.Rule**, %struct.Rule*** %v215, align 8
  %arrayidx216 = getelementptr inbounds %struct.Rule*, %struct.Rule** %157, i64 0
  %158 = load %struct.Rule*, %struct.Rule** %arrayidx216, align 8
  br label %cond.end.217

cond.end.217:                                     ; preds = %cond.false.213, %cond.true.209
  %cond218 = phi %struct.Rule* [ %155, %cond.true.209 ], [ %158, %cond.false.213 ]
  store %struct.Rule* %cond218, %struct.Rule** %rr, align 8
  %159 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems219 = getelementptr inbounds %struct.Rule, %struct.Rule* %159, i32 0, i32 6
  %v220 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems219, i32 0, i32 2
  %160 = load %struct.Elem**, %struct.Elem*** %v220, align 8
  %arrayidx221 = getelementptr inbounds %struct.Elem*, %struct.Elem** %160, i64 0
  %161 = load %struct.Elem*, %struct.Elem** %arrayidx221, align 8
  %e222 = getelementptr inbounds %struct.Elem, %struct.Elem* %161, i32 0, i32 3
  %nterm223 = bitcast %union.anon* %e222 to %struct.Production**
  %162 = load %struct.Production*, %struct.Production** %nterm223, align 8
  %163 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %cmp224 = icmp ne %struct.Production* %162, %163
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.235

land.lhs.true.226:                                ; preds = %cond.end.217
  %164 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems227 = getelementptr inbounds %struct.Rule, %struct.Rule* %164, i32 0, i32 6
  %v228 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems227, i32 0, i32 2
  %165 = load %struct.Elem**, %struct.Elem*** %v228, align 8
  %arrayidx229 = getelementptr inbounds %struct.Elem*, %struct.Elem** %165, i64 1
  %166 = load %struct.Elem*, %struct.Elem** %arrayidx229, align 8
  %e230 = getelementptr inbounds %struct.Elem, %struct.Elem* %166, i32 0, i32 3
  %nterm231 = bitcast %union.anon* %e230 to %struct.Production**
  %167 = load %struct.Production*, %struct.Production** %nterm231, align 8
  %168 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %cmp232 = icmp ne %struct.Production* %167, %168
  br i1 %cmp232, label %if.then.234, label %if.end.235

if.then.234:                                      ; preds = %land.lhs.true.226
  br label %Lfail

if.end.235:                                       ; preds = %land.lhs.true.226, %cond.end.217
  %169 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems236 = getelementptr inbounds %struct.Rule, %struct.Rule* %169, i32 0, i32 6
  %v237 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems236, i32 0, i32 2
  %170 = load %struct.Elem**, %struct.Elem*** %v237, align 8
  %arrayidx238 = getelementptr inbounds %struct.Elem*, %struct.Elem** %170, i64 0
  %171 = load %struct.Elem*, %struct.Elem** %arrayidx238, align 8
  %e239 = getelementptr inbounds %struct.Elem, %struct.Elem* %171, i32 0, i32 3
  %nterm240 = bitcast %union.anon* %e239 to %struct.Production**
  %172 = load %struct.Production*, %struct.Production** %nterm240, align 8
  %173 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %cmp241 = icmp eq %struct.Production* %172, %173
  br i1 %cmp241, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %if.end.235
  %174 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems244 = getelementptr inbounds %struct.Rule, %struct.Rule* %174, i32 0, i32 6
  %v245 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems244, i32 0, i32 2
  %175 = load %struct.Elem**, %struct.Elem*** %v245, align 8
  %arrayidx246 = getelementptr inbounds %struct.Elem*, %struct.Elem** %175, i64 1
  %176 = load %struct.Elem*, %struct.Elem** %arrayidx246, align 8
  br label %cond.end.251

cond.false.247:                                   ; preds = %if.end.235
  %177 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems248 = getelementptr inbounds %struct.Rule, %struct.Rule* %177, i32 0, i32 6
  %v249 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems248, i32 0, i32 2
  %178 = load %struct.Elem**, %struct.Elem*** %v249, align 8
  %arrayidx250 = getelementptr inbounds %struct.Elem*, %struct.Elem** %178, i64 1
  %179 = load %struct.Elem*, %struct.Elem** %arrayidx250, align 8
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.false.247, %cond.true.243
  %cond252 = phi %struct.Elem* [ %176, %cond.true.243 ], [ %179, %cond.false.247 ]
  store %struct.Elem* %cond252, %struct.Elem** %e, align 8
  %180 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems253 = getelementptr inbounds %struct.Rule, %struct.Rule* %180, i32 0, i32 6
  %n254 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems253, i32 0, i32 0
  %181 = load i32, i32* %n254, align 4
  %tobool255 = icmp ne i32 %181, 0
  br i1 %tobool255, label %land.lhs.true.256, label %if.end.266

land.lhs.true.256:                                ; preds = %cond.end.251
  %182 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e257 = getelementptr inbounds %struct.Elem, %struct.Elem* %182, i32 0, i32 3
  %term_or_nterm = bitcast %union.anon* %e257 to i8**
  %183 = load i8*, i8** %term_or_nterm, align 8
  %184 = load %struct.Rule*, %struct.Rule** %rr, align 8
  %elems258 = getelementptr inbounds %struct.Rule, %struct.Rule* %184, i32 0, i32 6
  %v259 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems258, i32 0, i32 2
  %185 = load %struct.Elem**, %struct.Elem*** %v259, align 8
  %arrayidx260 = getelementptr inbounds %struct.Elem*, %struct.Elem** %185, i64 0
  %186 = load %struct.Elem*, %struct.Elem** %arrayidx260, align 8
  %e261 = getelementptr inbounds %struct.Elem, %struct.Elem* %186, i32 0, i32 3
  %term_or_nterm262 = bitcast %union.anon* %e261 to i8**
  %187 = load i8*, i8** %term_or_nterm262, align 8
  %cmp263 = icmp ne i8* %183, %187
  br i1 %cmp263, label %if.then.265, label %if.end.266

if.then.265:                                      ; preds = %land.lhs.true.256
  br label %Lfail

if.end.266:                                       ; preds = %land.lhs.true.256, %cond.end.251
  %188 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind267 = getelementptr inbounds %struct.Elem, %struct.Elem* %188, i32 0, i32 0
  %189 = load i32, i32* %kind267, align 4
  %cmp268 = icmp eq i32 %189, 1
  br i1 %cmp268, label %cond.true.270, label %cond.false.273

cond.true.270:                                    ; preds = %if.end.266
  %190 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e271 = getelementptr inbounds %struct.Elem, %struct.Elem* %190, i32 0, i32 3
  %term272 = bitcast %union.anon* %e271 to %struct.Term**
  %191 = load %struct.Term*, %struct.Term** %term272, align 8
  br label %cond.end.277

cond.false.273:                                   ; preds = %if.end.266
  %192 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e274 = getelementptr inbounds %struct.Elem, %struct.Elem* %192, i32 0, i32 3
  %nterm275 = bitcast %union.anon* %e274 to %struct.Production**
  %193 = load %struct.Production*, %struct.Production** %nterm275, align 8
  %regex_term276 = getelementptr inbounds %struct.Production, %struct.Production* %193, i32 0, i32 10
  %194 = load %struct.Term*, %struct.Term** %regex_term276, align 8
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.273, %cond.true.270
  %cond278 = phi %struct.Term* [ %191, %cond.true.270 ], [ %194, %cond.false.273 ]
  store %struct.Term* %cond278, %struct.Term** %t, align 8
  %195 = load i8*, i8** %b, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %incdec.ptr, i8** %b, align 8
  store i8 40, i8* %195, align 1
  %196 = load %struct.Term*, %struct.Term** %t, align 8
  %kind279 = getelementptr inbounds %struct.Term, %struct.Term* %196, i32 0, i32 0
  %197 = load i32, i32* %kind279, align 4
  %cmp280 = icmp eq i32 %197, 0
  br i1 %cmp280, label %if.then.282, label %if.else.285

if.then.282:                                      ; preds = %cond.end.277
  %198 = load %struct.Term*, %struct.Term** %t, align 8
  %string283 = getelementptr inbounds %struct.Term, %struct.Term* %198, i32 0, i32 5
  %199 = load i8*, i8** %string283, align 8
  %call284 = call i8* @escape_string_for_regex(i8* %199)
  store i8* %call284, i8** %s, align 8
  br label %if.end.287

if.else.285:                                      ; preds = %cond.end.277
  %200 = load %struct.Term*, %struct.Term** %t, align 8
  %string286 = getelementptr inbounds %struct.Term, %struct.Term* %200, i32 0, i32 5
  %201 = load i8*, i8** %string286, align 8
  store i8* %201, i8** %s, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %if.else.285, %if.then.282
  %202 = load i8*, i8** %b, align 8
  %203 = load i8*, i8** %s, align 8
  %204 = load i8*, i8** %s, align 8
  %call288 = call i64 @strlen(i8* %204) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %202, i8* %203, i64 %call288, i32 1, i1 false)
  %205 = load i8*, i8** %s, align 8
  %call289 = call i64 @strlen(i8* %205) #6
  %206 = load i8*, i8** %b, align 8
  %add.ptr = getelementptr inbounds i8, i8* %206, i64 %call289
  store i8* %add.ptr, i8** %b, align 8
  %207 = load %struct.Term*, %struct.Term** %t, align 8
  %kind290 = getelementptr inbounds %struct.Term, %struct.Term* %207, i32 0, i32 0
  %208 = load i32, i32* %kind290, align 4
  %cmp291 = icmp eq i32 %208, 0
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %if.end.287
  %209 = load i8*, i8** %s, align 8
  call void @free(i8* %209) #3
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.293, %if.end.287
  %210 = load i8*, i8** %b, align 8
  %incdec.ptr295 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr295, i8** %b, align 8
  store i8 41, i8* %210, align 1
  %211 = load i32, i32* %l, align 4
  %cmp296 = icmp eq i32 %211, 2
  br i1 %cmp296, label %if.then.298, label %if.else.300

if.then.298:                                      ; preds = %if.end.294
  %212 = load i8*, i8** %b, align 8
  %incdec.ptr299 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %incdec.ptr299, i8** %b, align 8
  store i8 42, i8* %212, align 1
  br label %if.end.302

if.else.300:                                      ; preds = %if.end.294
  %213 = load i8*, i8** %b, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr301, i8** %b, align 8
  store i8 43, i8* %213, align 1
  br label %if.end.302

if.end.302:                                       ; preds = %if.else.300, %if.then.298
  %214 = load i8*, i8** %b, align 8
  store i8 0, i8* %214, align 1
  %215 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term303 = getelementptr inbounds %struct.Production, %struct.Production* %215, i32 0, i32 10
  %216 = load %struct.Term*, %struct.Term** %regex_term303, align 8
  %string304 = getelementptr inbounds %struct.Term, %struct.Term* %216, i32 0, i32 5
  %217 = load i8*, i8** %string304, align 8
  %call305 = call i64 @strlen(i8* %217) #6
  %conv306 = trunc i64 %call305 to i32
  %218 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term307 = getelementptr inbounds %struct.Production, %struct.Production* %218, i32 0, i32 10
  %219 = load %struct.Term*, %struct.Term** %regex_term307, align 8
  %string_len308 = getelementptr inbounds %struct.Term, %struct.Term* %219, i32 0, i32 6
  store i32 %conv306, i32* %string_len308, align 4
  br label %if.end.310

if.else.309:                                      ; preds = %lor.lhs.false.170
  br label %Lfail

if.end.310:                                       ; preds = %if.end.302
  br label %if.end.408

if.else.311:                                      ; preds = %do.end
  %220 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules312 = getelementptr inbounds %struct.Production, %struct.Production* %220, i32 0, i32 2
  %n313 = getelementptr inbounds %struct.anon, %struct.anon* %rules312, i32 0, i32 0
  %221 = load i32, i32* %n313, align 4
  %cmp314 = icmp ugt i32 %221, 1
  br i1 %cmp314, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.else.311
  %222 = load i8*, i8** %b, align 8
  %incdec.ptr317 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr317, i8** %b, align 8
  store i8 40, i8* %222, align 1
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.316, %if.else.311
  store i32 0, i32* %j, align 4
  br label %for.cond.319

for.cond.319:                                     ; preds = %for.inc.392, %if.end.318
  %223 = load i32, i32* %j, align 4
  %224 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules320 = getelementptr inbounds %struct.Production, %struct.Production* %224, i32 0, i32 2
  %n321 = getelementptr inbounds %struct.anon, %struct.anon* %rules320, i32 0, i32 0
  %225 = load i32, i32* %n321, align 4
  %cmp322 = icmp ult i32 %223, %225
  br i1 %cmp322, label %for.body.324, label %for.end.394

for.body.324:                                     ; preds = %for.cond.319
  %226 = load i32, i32* %j, align 4
  %idxprom325 = sext i32 %226 to i64
  %227 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules326 = getelementptr inbounds %struct.Production, %struct.Production* %227, i32 0, i32 2
  %v327 = getelementptr inbounds %struct.anon, %struct.anon* %rules326, i32 0, i32 2
  %228 = load %struct.Rule**, %struct.Rule*** %v327, align 8
  %arrayidx328 = getelementptr inbounds %struct.Rule*, %struct.Rule** %228, i64 %idxprom325
  %229 = load %struct.Rule*, %struct.Rule** %arrayidx328, align 8
  store %struct.Rule* %229, %struct.Rule** %r, align 8
  %230 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems329 = getelementptr inbounds %struct.Rule, %struct.Rule* %230, i32 0, i32 6
  %n330 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems329, i32 0, i32 0
  %231 = load i32, i32* %n330, align 4
  %cmp331 = icmp ugt i32 %231, 1
  br i1 %cmp331, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %for.body.324
  %232 = load i8*, i8** %b, align 8
  %incdec.ptr334 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr334, i8** %b, align 8
  store i8 40, i8* %232, align 1
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %for.body.324
  store i32 0, i32* %k, align 4
  br label %for.cond.336

for.cond.336:                                     ; preds = %for.inc.375, %if.end.335
  %233 = load i32, i32* %k, align 4
  %234 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems337 = getelementptr inbounds %struct.Rule, %struct.Rule* %234, i32 0, i32 6
  %n338 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems337, i32 0, i32 0
  %235 = load i32, i32* %n338, align 4
  %cmp339 = icmp ult i32 %233, %235
  br i1 %cmp339, label %for.body.341, label %for.end.377

for.body.341:                                     ; preds = %for.cond.336
  %236 = load i32, i32* %k, align 4
  %idxprom342 = sext i32 %236 to i64
  %237 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems343 = getelementptr inbounds %struct.Rule, %struct.Rule* %237, i32 0, i32 6
  %v344 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems343, i32 0, i32 2
  %238 = load %struct.Elem**, %struct.Elem*** %v344, align 8
  %arrayidx345 = getelementptr inbounds %struct.Elem*, %struct.Elem** %238, i64 %idxprom342
  %239 = load %struct.Elem*, %struct.Elem** %arrayidx345, align 8
  store %struct.Elem* %239, %struct.Elem** %e, align 8
  %240 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind346 = getelementptr inbounds %struct.Elem, %struct.Elem* %240, i32 0, i32 0
  %241 = load i32, i32* %kind346, align 4
  %cmp347 = icmp eq i32 %241, 1
  br i1 %cmp347, label %cond.true.349, label %cond.false.352

cond.true.349:                                    ; preds = %for.body.341
  %242 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e350 = getelementptr inbounds %struct.Elem, %struct.Elem* %242, i32 0, i32 3
  %term351 = bitcast %union.anon* %e350 to %struct.Term**
  %243 = load %struct.Term*, %struct.Term** %term351, align 8
  br label %cond.end.356

cond.false.352:                                   ; preds = %for.body.341
  %244 = load %struct.Elem*, %struct.Elem** %e, align 8
  %e353 = getelementptr inbounds %struct.Elem, %struct.Elem* %244, i32 0, i32 3
  %nterm354 = bitcast %union.anon* %e353 to %struct.Production**
  %245 = load %struct.Production*, %struct.Production** %nterm354, align 8
  %regex_term355 = getelementptr inbounds %struct.Production, %struct.Production* %245, i32 0, i32 10
  %246 = load %struct.Term*, %struct.Term** %regex_term355, align 8
  br label %cond.end.356

cond.end.356:                                     ; preds = %cond.false.352, %cond.true.349
  %cond357 = phi %struct.Term* [ %243, %cond.true.349 ], [ %246, %cond.false.352 ]
  store %struct.Term* %cond357, %struct.Term** %t, align 8
  %247 = load %struct.Term*, %struct.Term** %t, align 8
  %kind358 = getelementptr inbounds %struct.Term, %struct.Term* %247, i32 0, i32 0
  %248 = load i32, i32* %kind358, align 4
  %cmp359 = icmp eq i32 %248, 0
  br i1 %cmp359, label %if.then.361, label %if.else.364

if.then.361:                                      ; preds = %cond.end.356
  %249 = load %struct.Term*, %struct.Term** %t, align 8
  %string362 = getelementptr inbounds %struct.Term, %struct.Term* %249, i32 0, i32 5
  %250 = load i8*, i8** %string362, align 8
  %call363 = call i8* @escape_string_for_regex(i8* %250)
  store i8* %call363, i8** %s, align 8
  br label %if.end.366

if.else.364:                                      ; preds = %cond.end.356
  %251 = load %struct.Term*, %struct.Term** %t, align 8
  %string365 = getelementptr inbounds %struct.Term, %struct.Term* %251, i32 0, i32 5
  %252 = load i8*, i8** %string365, align 8
  store i8* %252, i8** %s, align 8
  br label %if.end.366

if.end.366:                                       ; preds = %if.else.364, %if.then.361
  %253 = load i8*, i8** %b, align 8
  %254 = load i8*, i8** %s, align 8
  %255 = load i8*, i8** %s, align 8
  %call367 = call i64 @strlen(i8* %255) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %253, i8* %254, i64 %call367, i32 1, i1 false)
  %256 = load i8*, i8** %s, align 8
  %call368 = call i64 @strlen(i8* %256) #6
  %257 = load i8*, i8** %b, align 8
  %add.ptr369 = getelementptr inbounds i8, i8* %257, i64 %call368
  store i8* %add.ptr369, i8** %b, align 8
  %258 = load %struct.Term*, %struct.Term** %t, align 8
  %kind370 = getelementptr inbounds %struct.Term, %struct.Term* %258, i32 0, i32 0
  %259 = load i32, i32* %kind370, align 4
  %cmp371 = icmp eq i32 %259, 0
  br i1 %cmp371, label %if.then.373, label %if.end.374

if.then.373:                                      ; preds = %if.end.366
  %260 = load i8*, i8** %s, align 8
  call void @free(i8* %260) #3
  br label %if.end.374

if.end.374:                                       ; preds = %if.then.373, %if.end.366
  br label %for.inc.375

for.inc.375:                                      ; preds = %if.end.374
  %261 = load i32, i32* %k, align 4
  %inc376 = add nsw i32 %261, 1
  store i32 %inc376, i32* %k, align 4
  br label %for.cond.336

for.end.377:                                      ; preds = %for.cond.336
  %262 = load %struct.Rule*, %struct.Rule** %r, align 8
  %elems378 = getelementptr inbounds %struct.Rule, %struct.Rule* %262, i32 0, i32 6
  %n379 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems378, i32 0, i32 0
  %263 = load i32, i32* %n379, align 4
  %cmp380 = icmp ugt i32 %263, 1
  br i1 %cmp380, label %if.then.382, label %if.end.384

if.then.382:                                      ; preds = %for.end.377
  %264 = load i8*, i8** %b, align 8
  %incdec.ptr383 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr383, i8** %b, align 8
  store i8 41, i8* %264, align 1
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.382, %for.end.377
  %265 = load i32, i32* %j, align 4
  %266 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules385 = getelementptr inbounds %struct.Production, %struct.Production* %266, i32 0, i32 2
  %n386 = getelementptr inbounds %struct.anon, %struct.anon* %rules385, i32 0, i32 0
  %267 = load i32, i32* %n386, align 4
  %sub = sub i32 %267, 1
  %cmp387 = icmp ne i32 %265, %sub
  br i1 %cmp387, label %if.then.389, label %if.end.391

if.then.389:                                      ; preds = %if.end.384
  %268 = load i8*, i8** %b, align 8
  %incdec.ptr390 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr390, i8** %b, align 8
  store i8 124, i8* %268, align 1
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.389, %if.end.384
  br label %for.inc.392

for.inc.392:                                      ; preds = %if.end.391
  %269 = load i32, i32* %j, align 4
  %inc393 = add nsw i32 %269, 1
  store i32 %inc393, i32* %j, align 4
  br label %for.cond.319

for.end.394:                                      ; preds = %for.cond.319
  %270 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules395 = getelementptr inbounds %struct.Production, %struct.Production* %270, i32 0, i32 2
  %n396 = getelementptr inbounds %struct.anon, %struct.anon* %rules395, i32 0, i32 0
  %271 = load i32, i32* %n396, align 4
  %cmp397 = icmp ugt i32 %271, 1
  br i1 %cmp397, label %if.then.399, label %if.end.401

if.then.399:                                      ; preds = %for.end.394
  %272 = load i8*, i8** %b, align 8
  %incdec.ptr400 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %incdec.ptr400, i8** %b, align 8
  store i8 41, i8* %272, align 1
  br label %if.end.401

if.end.401:                                       ; preds = %if.then.399, %for.end.394
  %273 = load i8*, i8** %b, align 8
  store i8 0, i8* %273, align 1
  %274 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term402 = getelementptr inbounds %struct.Production, %struct.Production* %274, i32 0, i32 10
  %275 = load %struct.Term*, %struct.Term** %regex_term402, align 8
  %string403 = getelementptr inbounds %struct.Term, %struct.Term* %275, i32 0, i32 5
  %276 = load i8*, i8** %string403, align 8
  %call404 = call i64 @strlen(i8* %276) #6
  %conv405 = trunc i64 %call404 to i32
  %277 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %regex_term406 = getelementptr inbounds %struct.Production, %struct.Production* %277, i32 0, i32 10
  %278 = load %struct.Term*, %struct.Term** %regex_term406, align 8
  %string_len407 = getelementptr inbounds %struct.Term, %struct.Term* %278, i32 0, i32 6
  store i32 %conv405, i32* %string_len407, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.401, %if.end.310
  %279 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %in_regex409 = getelementptr inbounds %struct.Production, %struct.Production* %279, i32 0, i32 4
  %bf.load410 = load i8, i8* %in_regex409, align 4
  %bf.clear411 = and i8 %bf.load410, -3
  store i8 %bf.clear411, i8* %in_regex409, align 4
  br label %return

return:                                           ; preds = %if.end.408, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @scanner_declaration(%struct.Declaration* %d) #0 {
entry:
  %retval = alloca i32, align 4
  %d.addr = alloca %struct.Declaration*, align 8
  store %struct.Declaration* %d, %struct.Declaration** %d.addr, align 8
  %0 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind = getelementptr inbounds %struct.Declaration, %struct.Declaration* %0, i32 0, i32 1
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal void @set_declaration_group(%struct.Production* %p, %struct.Production* %root, %struct.Declaration* %d) #0 {
entry:
  %p.addr = alloca %struct.Production*, align 8
  %root.addr = alloca %struct.Production*, align 8
  %d.addr = alloca %struct.Declaration*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  store %struct.Production* %root, %struct.Production** %root.addr, align 8
  store %struct.Declaration* %d, %struct.Declaration** %d.addr, align 8
  %0 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind = getelementptr inbounds %struct.Declaration, %struct.Declaration* %0, i32 0, i32 1
  %1 = load i32, i32* %kind, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %declaration_group = getelementptr inbounds %struct.Production, %struct.Production* %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group, i32 0, i64 %idxprom
  %3 = load %struct.Production*, %struct.Production** %arrayidx, align 8
  %4 = load %struct.Production*, %struct.Production** %root.addr, align 8
  %cmp = icmp eq %struct.Production* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.46

if.end:                                           ; preds = %entry
  %5 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind1 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %5, i32 0, i32 1
  %6 = load i32, i32* %kind1, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind3 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %7, i32 0, i32 1
  %8 = load i32, i32* %kind3, align 4
  %idxprom4 = zext i32 %8 to i64
  %9 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %declaration_group5 = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group5, i32 0, i64 %idxprom4
  %10 = load %struct.Production*, %struct.Production** %arrayidx6, align 8
  %tobool = icmp ne %struct.Production* %10, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.74, i32 0, i32 0))
  br label %for.end.46

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %11 = load %struct.Production*, %struct.Production** %root.addr, align 8
  %12 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind9 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %12, i32 0, i32 1
  %13 = load i32, i32* %kind9, align 4
  %idxprom10 = zext i32 %13 to i64
  %14 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %declaration_group11 = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [8 x %struct.Production*], [8 x %struct.Production*]* %declaration_group11, i32 0, i64 %idxprom10
  store %struct.Production* %11, %struct.Production** %arrayidx12, align 8
  %15 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %16 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind13 = getelementptr inbounds %struct.Declaration, %struct.Declaration* %16, i32 0, i32 1
  %17 = load i32, i32* %kind13, align 4
  %idxprom14 = zext i32 %17 to i64
  %18 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %last_declaration = getelementptr inbounds %struct.Production, %struct.Production* %18, i32 0, i32 7
  %arrayidx15 = getelementptr inbounds [8 x %struct.Declaration*], [8 x %struct.Declaration*]* %last_declaration, i32 0, i64 %idxprom14
  store %struct.Declaration* %15, %struct.Declaration** %arrayidx15, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end.8
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %20, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %rules, i32 0, i32 0
  %21 = load i32, i32* %n, align 4
  %cmp16 = icmp ult i32 %19, %21
  br i1 %cmp16, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %23 to i64
  %24 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules19 = getelementptr inbounds %struct.Production, %struct.Production* %24, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %rules19, i32 0, i32 2
  %25 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %arrayidx20 = getelementptr inbounds %struct.Rule*, %struct.Rule** %25, i64 %idxprom18
  %26 = load %struct.Rule*, %struct.Rule** %arrayidx20, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %26, i32 0, i32 6
  %n21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems, i32 0, i32 0
  %27 = load i32, i32* %n21, align 4
  %cmp22 = icmp ult i32 %22, %27
  br i1 %cmp22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.17
  %28 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %28 to i64
  %29 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules26 = getelementptr inbounds %struct.Production, %struct.Production* %30, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon, %struct.anon* %rules26, i32 0, i32 2
  %31 = load %struct.Rule**, %struct.Rule*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Rule*, %struct.Rule** %31, i64 %idxprom25
  %32 = load %struct.Rule*, %struct.Rule** %arrayidx28, align 8
  %elems29 = getelementptr inbounds %struct.Rule, %struct.Rule* %32, i32 0, i32 6
  %v30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems29, i32 0, i32 2
  %33 = load %struct.Elem**, %struct.Elem*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Elem*, %struct.Elem** %33, i64 %idxprom24
  %34 = load %struct.Elem*, %struct.Elem** %arrayidx31, align 8
  %kind32 = getelementptr inbounds %struct.Elem, %struct.Elem* %34, i32 0, i32 0
  %35 = load i32, i32* %kind32, align 4
  %cmp33 = icmp eq i32 %35, 0
  br i1 %cmp33, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %for.body.23
  %36 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %36 to i64
  %37 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %37 to i64
  %38 = load %struct.Production*, %struct.Production** %p.addr, align 8
  %rules37 = getelementptr inbounds %struct.Production, %struct.Production* %38, i32 0, i32 2
  %v38 = getelementptr inbounds %struct.anon, %struct.anon* %rules37, i32 0, i32 2
  %39 = load %struct.Rule**, %struct.Rule*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.Rule*, %struct.Rule** %39, i64 %idxprom36
  %40 = load %struct.Rule*, %struct.Rule** %arrayidx39, align 8
  %elems40 = getelementptr inbounds %struct.Rule, %struct.Rule* %40, i32 0, i32 6
  %v41 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %elems40, i32 0, i32 2
  %41 = load %struct.Elem**, %struct.Elem*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Elem*, %struct.Elem** %41, i64 %idxprom35
  %42 = load %struct.Elem*, %struct.Elem** %arrayidx42, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %42, i32 0, i32 3
  %nterm = bitcast %union.anon* %e to %struct.Production**
  %43 = load %struct.Production*, %struct.Production** %nterm, align 8
  %44 = load %struct.Production*, %struct.Production** %root.addr, align 8
  %45 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  call void @set_declaration_group(%struct.Production* %43, %struct.Production* %44, %struct.Declaration* %45)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.34, %for.body.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %46 = load i32, i32* %j, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %47 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %47, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end.46:                                       ; preds = %if.then, %if.then.7, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Term* @unique_term(%struct.Grammar* %g, %struct.Term* %t) #0 {
entry:
  %retval = alloca %struct.Term*, align 8
  %g.addr = alloca %struct.Grammar*, align 8
  %t.addr = alloca %struct.Term*, align 8
  %i = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Term* %t, %struct.Term** %t.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals = getelementptr inbounds %struct.Grammar, %struct.Grammar* %1, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %kind = getelementptr inbounds %struct.Term, %struct.Term* %3, i32 0, i32 0
  %4 = load i32, i32* %kind, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals1, i32 0, i32 2
  %7 = load %struct.Term**, %struct.Term*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Term*, %struct.Term** %7, i64 %idxprom
  %8 = load %struct.Term*, %struct.Term** %arrayidx, align 8
  %kind2 = getelementptr inbounds %struct.Term, %struct.Term* %8, i32 0, i32 0
  %9 = load i32, i32* %kind2, align 4
  %cmp3 = icmp eq i32 %4, %9
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string_len = getelementptr inbounds %struct.Term, %struct.Term* %10, i32 0, i32 6
  %11 = load i32, i32* %string_len, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals5 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 2
  %v6 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals5, i32 0, i32 2
  %14 = load %struct.Term**, %struct.Term*** %v6, align 8
  %arrayidx7 = getelementptr inbounds %struct.Term*, %struct.Term** %14, i64 %idxprom4
  %15 = load %struct.Term*, %struct.Term** %arrayidx7, align 8
  %string_len8 = getelementptr inbounds %struct.Term, %struct.Term* %15, i32 0, i32 6
  %16 = load i32, i32* %string_len8, align 4
  %cmp9 = icmp eq i32 %11, %16
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %17 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %term_priority = getelementptr inbounds %struct.Term, %struct.Term* %17, i32 0, i32 2
  %18 = load i32, i32* %term_priority, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 2
  %v13 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals12, i32 0, i32 2
  %21 = load %struct.Term**, %struct.Term*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.Term*, %struct.Term** %21, i64 %idxprom11
  %22 = load %struct.Term*, %struct.Term** %arrayidx14, align 8
  %term_priority15 = getelementptr inbounds %struct.Term, %struct.Term* %22, i32 0, i32 2
  %23 = load i32, i32* %term_priority15, align 4
  %cmp16 = icmp eq i32 %18, %23
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.10
  %24 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %set_op_priority_from_rule = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 10
  %25 = load i32, i32* %set_op_priority_from_rule, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.31

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %26 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %op_assoc = getelementptr inbounds %struct.Term, %struct.Term* %26, i32 0, i32 3
  %27 = load i32, i32* %op_assoc, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %28 to i64
  %29 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals19 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %29, i32 0, i32 2
  %v20 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals19, i32 0, i32 2
  %30 = load %struct.Term**, %struct.Term*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Term*, %struct.Term** %30, i64 %idxprom18
  %31 = load %struct.Term*, %struct.Term** %arrayidx21, align 8
  %op_assoc22 = getelementptr inbounds %struct.Term, %struct.Term* %31, i32 0, i32 3
  %32 = load i32, i32* %op_assoc22, align 4
  %cmp23 = icmp eq i32 %27, %32
  br i1 %cmp23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %lor.lhs.false
  %33 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %op_priority = getelementptr inbounds %struct.Term, %struct.Term* %33, i32 0, i32 4
  %34 = load i32, i32* %op_priority, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %35 to i64
  %36 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals26 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %36, i32 0, i32 2
  %v27 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals26, i32 0, i32 2
  %37 = load %struct.Term**, %struct.Term*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.Term*, %struct.Term** %37, i64 %idxprom25
  %38 = load %struct.Term*, %struct.Term** %arrayidx28, align 8
  %op_priority29 = getelementptr inbounds %struct.Term, %struct.Term* %38, i32 0, i32 4
  %39 = load i32, i32* %op_priority29, align 4
  %cmp30 = icmp eq i32 %34, %39
  br i1 %cmp30, label %land.lhs.true.31, label %if.end

land.lhs.true.31:                                 ; preds = %land.lhs.true.24, %land.lhs.true.17
  %40 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string = getelementptr inbounds %struct.Term, %struct.Term* %40, i32 0, i32 5
  %41 = load i8*, i8** %string, align 8
  %42 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals33 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %43, i32 0, i32 2
  %v34 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals33, i32 0, i32 2
  %44 = load %struct.Term**, %struct.Term*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.Term*, %struct.Term** %44, i64 %idxprom32
  %45 = load %struct.Term*, %struct.Term** %arrayidx35, align 8
  %string36 = getelementptr inbounds %struct.Term, %struct.Term* %45, i32 0, i32 5
  %46 = load i8*, i8** %string36, align 8
  %47 = load %struct.Term*, %struct.Term** %t.addr, align 8
  %string_len37 = getelementptr inbounds %struct.Term, %struct.Term* %47, i32 0, i32 6
  %48 = load i32, i32* %string_len37, align 4
  %conv = sext i32 %48 to i64
  %call = call i32 @strncmp(i8* %41, i8* %46, i64 %conv) #6
  %tobool38 = icmp ne i32 %call, 0
  br i1 %tobool38, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.31
  %49 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %49 to i64
  %50 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %terminals40 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %50, i32 0, i32 2
  %v41 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %terminals40, i32 0, i32 2
  %51 = load %struct.Term**, %struct.Term*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Term*, %struct.Term** %51, i64 %idxprom39
  %52 = load %struct.Term*, %struct.Term** %arrayidx42, align 8
  store %struct.Term* %52, %struct.Term** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.31, %land.lhs.true.24, %lor.lhs.false, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %53 = load i32, i32* %i, align 4
  %inc = add nsw i32 %53, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct.Term*, %struct.Term** %t.addr, align 8
  store %struct.Term* %54, %struct.Term** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %55 = load %struct.Term*, %struct.Term** %retval
  ret %struct.Term* %55
}

; Function Attrs: nounwind uwtable
define internal void @compute_declaration_states(%struct.Grammar* %g, %struct.Production* %p, %struct.Declaration* %d) #0 {
entry:
  %g.addr = alloca %struct.Grammar*, align 8
  %p.addr = alloca %struct.Production*, align 8
  %d.addr = alloca %struct.Declaration*, align 8
  %s = alloca %struct.State*, align 8
  %base_s = alloca %struct.State*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %scanner = alloca i32, align 4
  store %struct.Grammar* %g, %struct.Grammar** %g.addr, align 8
  store %struct.Production* %p, %struct.Production** %p.addr, align 8
  store %struct.Declaration* %d, %struct.Declaration** %d.addr, align 8
  store %struct.State* null, %struct.State** %base_s, align 8
  %0 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %call = call i32 @scanner_declaration(%struct.Declaration* %0)
  store i32 %call, i32* %scanner, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.69, %entry
  %1 = load i32, i32* %j, align 4
  %2 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states = getelementptr inbounds %struct.Grammar, %struct.Grammar* %2, i32 0, i32 3
  %n = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end.71

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.Grammar*, %struct.Grammar** %g.addr, align 8
  %states1 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %5, i32 0, i32 3
  %v = getelementptr inbounds %struct.anon.6, %struct.anon.6* %states1, i32 0, i32 2
  %6 = load %struct.State**, %struct.State*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.State*, %struct.State** %6, i64 %idxprom
  %7 = load %struct.State*, %struct.State** %arrayidx, align 8
  store %struct.State* %7, %struct.State** %s, align 8
  %8 = load %struct.Declaration*, %struct.Declaration** %d.addr, align 8
  %kind = getelementptr inbounds %struct.Declaration, %struct.Declaration* %8, i32 0, i32 1
  %9 = load i32, i32* %kind, align 4
  %cmp2 = icmp eq i32 %9, 0
  br i1 %cmp2, label %if.then, label %if.end.4

if.then:                                          ; preds = %for.body
  %10 = load %struct.State*, %struct.State** %base_s, align 8
  %tobool = icmp ne %struct.State* %10, null
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %11 = load %struct.State*, %struct.State** %s, align 8
  store %struct.State* %11, %struct.State** %base_s, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %struct.State*, %struct.State** %base_s, align 8
  %13 = load %struct.State*, %struct.State** %s, align 8
  %same_shifts = getelementptr inbounds %struct.State, %struct.State* %13, i32 0, i32 13
  store %struct.State* %12, %struct.State** %same_shifts, align 8
  %14 = load %struct.State*, %struct.State** %base_s, align 8
  %15 = load %struct.State*, %struct.State** %s, align 8
  call void @merge_shift_actions(%struct.State* %14, %struct.State* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %for.body
  %16 = load i32, i32* %scanner, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.end.68

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %17 = load i32, i32* %k, align 4
  %18 = load %struct.State*, %struct.State** %s, align 8
  %items = getelementptr inbounds %struct.State, %struct.State* %18, i32 0, i32 2
  %n8 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items, i32 0, i32 0
  %19 = load i32, i32* %n8, align 4
  %cmp9 = icmp ult i32 %17, %19
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  %20 = load i32, i32* %k, align 4
  %idxprom11 = sext i32 %20 to i64
  %21 = load %struct.State*, %struct.State** %s, align 8
  %items12 = getelementptr inbounds %struct.State, %struct.State* %21, i32 0, i32 2
  %v13 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items12, i32 0, i32 2
  %22 = load %struct.Elem**, %struct.Elem*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.Elem*, %struct.Elem** %22, i64 %idxprom11
  %23 = load %struct.Elem*, %struct.Elem** %arrayidx14, align 8
  %kind15 = getelementptr inbounds %struct.Elem, %struct.Elem* %23, i32 0, i32 0
  %24 = load i32, i32* %kind15, align 4
  %cmp16 = icmp eq i32 %24, 1
  br i1 %cmp16, label %if.then.17, label %if.end.67

if.then.17:                                       ; preds = %for.body.10
  %25 = load i32, i32* %k, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load %struct.State*, %struct.State** %s, align 8
  %items19 = getelementptr inbounds %struct.State, %struct.State* %26, i32 0, i32 2
  %v20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %items19, i32 0, i32 2
  %27 = load %struct.Elem**, %struct.Elem*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.Elem*, %struct.Elem** %27, i64 %idxprom18
  %28 = load %struct.Elem*, %struct.Elem** %arrayidx21, align 8
  %e = getelementptr inbounds %struct.Elem, %struct.Elem* %28, i32 0, i32 3
  %term = bitcast %union.anon* %e to %struct.Term**
  %29 = load %struct.Term*, %struct.Term** %term, align 8
  %scan_kind = getelementptr inbounds %struct.Term, %struct.Term* %29, i32 0, i32 7
  %bf.load = load i8, i8* %scan_kind, align 4
  %bf.clear = and i8 %bf.load, 7
  %bf.cast = zext i8 %bf.clear to i32
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.then.17
  %30 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind22 = getelementptr inbounds %struct.State, %struct.State* %30, i32 0, i32 10
  %bf.load23 = load i8, i8* %scan_kind22, align 8
  %bf.lshr = lshr i8 %bf.load23, 3
  %bf.clear24 = and i8 %bf.lshr, 3
  %bf.cast25 = zext i8 %bf.clear24 to i32
  %cmp26 = icmp eq i32 %bf.cast25, 3
  br i1 %cmp26, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %31 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind27 = getelementptr inbounds %struct.State, %struct.State* %31, i32 0, i32 10
  %bf.load28 = load i8, i8* %scan_kind27, align 8
  %bf.lshr29 = lshr i8 %bf.load28, 3
  %bf.clear30 = and i8 %bf.lshr29, 3
  %bf.cast31 = zext i8 %bf.clear30 to i32
  %cmp32 = icmp eq i32 %bf.cast31, 1
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %lor.lhs.false, %sw.bb
  %32 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind34 = getelementptr inbounds %struct.State, %struct.State* %32, i32 0, i32 10
  %bf.load35 = load i8, i8* %scan_kind34, align 8
  %bf.clear36 = and i8 %bf.load35, -25
  %bf.set = or i8 %bf.clear36, 8
  store i8 %bf.set, i8* %scan_kind34, align 8
  br label %if.end.42

if.else.37:                                       ; preds = %lor.lhs.false
  %33 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind38 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 10
  %bf.load39 = load i8, i8* %scan_kind38, align 8
  %bf.clear40 = and i8 %bf.load39, -25
  %bf.set41 = or i8 %bf.clear40, 16
  store i8 %bf.set41, i8* %scan_kind38, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.37, %if.then.33
  br label %sw.epilog

sw.bb.43:                                         ; preds = %if.then.17
  %34 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind44 = getelementptr inbounds %struct.State, %struct.State* %34, i32 0, i32 10
  %bf.load45 = load i8, i8* %scan_kind44, align 8
  %bf.lshr46 = lshr i8 %bf.load45, 3
  %bf.clear47 = and i8 %bf.lshr46, 3
  %bf.cast48 = zext i8 %bf.clear47 to i32
  %cmp49 = icmp eq i32 %bf.cast48, 3
  br i1 %cmp49, label %if.then.57, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %sw.bb.43
  %35 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind51 = getelementptr inbounds %struct.State, %struct.State* %35, i32 0, i32 10
  %bf.load52 = load i8, i8* %scan_kind51, align 8
  %bf.lshr53 = lshr i8 %bf.load52, 3
  %bf.clear54 = and i8 %bf.lshr53, 3
  %bf.cast55 = zext i8 %bf.clear54 to i32
  %cmp56 = icmp eq i32 %bf.cast55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.61

if.then.57:                                       ; preds = %lor.lhs.false.50, %sw.bb.43
  %36 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind58 = getelementptr inbounds %struct.State, %struct.State* %36, i32 0, i32 10
  %bf.load59 = load i8, i8* %scan_kind58, align 8
  %bf.clear60 = and i8 %bf.load59, -25
  store i8 %bf.clear60, i8* %scan_kind58, align 8
  br label %if.end.66

if.else.61:                                       ; preds = %lor.lhs.false.50
  %37 = load %struct.State*, %struct.State** %s, align 8
  %scan_kind62 = getelementptr inbounds %struct.State, %struct.State* %37, i32 0, i32 10
  %bf.load63 = load i8, i8* %scan_kind62, align 8
  %bf.clear64 = and i8 %bf.load63, -25
  %bf.set65 = or i8 %bf.clear64, 16
  store i8 %bf.set65, i8* %scan_kind62, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.61, %if.then.57
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.17
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.66, %if.end.42
  br label %if.end.67

if.end.67:                                        ; preds = %sw.epilog, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.67
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.end.4
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %39 = load i32, i32* %j, align 4
  %inc70 = add nsw i32 %39, 1
  store i32 %inc70, i32* %j, align 4
  br label %for.cond

for.end.71:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_shift_actions(%struct.State* %to, %struct.State* %from) #0 {
entry:
  %to.addr = alloca %struct.State*, align 8
  %from.addr = alloca %struct.State*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.State* %to, %struct.State** %to.addr, align 8
  store %struct.State* %from, %struct.State** %from.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions = getelementptr inbounds %struct.State, %struct.State* %1, i32 0, i32 5
  %n = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions2 = getelementptr inbounds %struct.State, %struct.State* %4, i32 0, i32 5
  %n3 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions2, i32 0, i32 0
  %5 = load i32, i32* %n3, align 4
  %cmp4 = icmp ult i32 %3, %5
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions6 = getelementptr inbounds %struct.State, %struct.State* %7, i32 0, i32 5
  %v = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions6, i32 0, i32 2
  %8 = load %struct.Action**, %struct.Action*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.Action*, %struct.Action** %8, i64 %idxprom
  %9 = load %struct.Action*, %struct.Action** %arrayidx, align 8
  %term = getelementptr inbounds %struct.Action, %struct.Action* %9, i32 0, i32 1
  %10 = load %struct.Term*, %struct.Term** %term, align 8
  %11 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions8 = getelementptr inbounds %struct.State, %struct.State* %12, i32 0, i32 5
  %v9 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions8, i32 0, i32 2
  %13 = load %struct.Action**, %struct.Action*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.Action*, %struct.Action** %13, i64 %idxprom7
  %14 = load %struct.Action*, %struct.Action** %arrayidx10, align 8
  %term11 = getelementptr inbounds %struct.Action, %struct.Action* %14, i32 0, i32 1
  %15 = load %struct.Term*, %struct.Term** %term11, align 8
  %cmp12 = icmp eq %struct.Term* %10, %15
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.5
  br label %Lnext

if.end:                                           ; preds = %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %do.body

do.body:                                          ; preds = %for.end
  %17 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions13 = getelementptr inbounds %struct.State, %struct.State* %17, i32 0, i32 5
  %v14 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions13, i32 0, i32 2
  %18 = load %struct.Action**, %struct.Action*** %v14, align 8
  %tobool = icmp ne %struct.Action** %18, null
  br i1 %tobool, label %if.else, label %if.then.15

if.then.15:                                       ; preds = %do.body
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %20 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions17 = getelementptr inbounds %struct.State, %struct.State* %20, i32 0, i32 5
  %v18 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions17, i32 0, i32 2
  %21 = load %struct.Action**, %struct.Action*** %v18, align 8
  %arrayidx19 = getelementptr inbounds %struct.Action*, %struct.Action** %21, i64 %idxprom16
  %22 = load %struct.Action*, %struct.Action** %arrayidx19, align 8
  %23 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions20 = getelementptr inbounds %struct.State, %struct.State* %23, i32 0, i32 5
  %n21 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions20, i32 0, i32 0
  %24 = load i32, i32* %n21, align 4
  %inc22 = add i32 %24, 1
  store i32 %inc22, i32* %n21, align 4
  %idxprom23 = zext i32 %24 to i64
  %25 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions24 = getelementptr inbounds %struct.State, %struct.State* %25, i32 0, i32 5
  %e = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions24, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e, i32 0, i32 0
  %26 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions25 = getelementptr inbounds %struct.State, %struct.State* %26, i32 0, i32 5
  %v26 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions25, i32 0, i32 2
  store %struct.Action** %arraydecay, %struct.Action*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.Action*, %struct.Action** %arraydecay, i64 %idxprom23
  store %struct.Action* %22, %struct.Action** %arrayidx27, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %27 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions28 = getelementptr inbounds %struct.State, %struct.State* %27, i32 0, i32 5
  %v29 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions28, i32 0, i32 2
  %28 = load %struct.Action**, %struct.Action*** %v29, align 8
  %29 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions30 = getelementptr inbounds %struct.State, %struct.State* %29, i32 0, i32 5
  %e31 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions30, i32 0, i32 3
  %arraydecay32 = getelementptr inbounds [3 x %struct.Action*], [3 x %struct.Action*]* %e31, i32 0, i32 0
  %cmp33 = icmp eq %struct.Action** %28, %arraydecay32
  br i1 %cmp33, label %if.then.34, label %if.else.51

if.then.34:                                       ; preds = %if.else
  %30 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions35 = getelementptr inbounds %struct.State, %struct.State* %30, i32 0, i32 5
  %n36 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions35, i32 0, i32 0
  %31 = load i32, i32* %n36, align 4
  %cmp37 = icmp ult i32 %31, 3
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %if.then.34
  %32 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %32 to i64
  %33 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions40 = getelementptr inbounds %struct.State, %struct.State* %33, i32 0, i32 5
  %v41 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions40, i32 0, i32 2
  %34 = load %struct.Action**, %struct.Action*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.Action*, %struct.Action** %34, i64 %idxprom39
  %35 = load %struct.Action*, %struct.Action** %arrayidx42, align 8
  %36 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions43 = getelementptr inbounds %struct.State, %struct.State* %36, i32 0, i32 5
  %n44 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions43, i32 0, i32 0
  %37 = load i32, i32* %n44, align 4
  %inc45 = add i32 %37, 1
  store i32 %inc45, i32* %n44, align 4
  %idxprom46 = zext i32 %37 to i64
  %38 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions47 = getelementptr inbounds %struct.State, %struct.State* %38, i32 0, i32 5
  %v48 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions47, i32 0, i32 2
  %39 = load %struct.Action**, %struct.Action*** %v48, align 8
  %arrayidx49 = getelementptr inbounds %struct.Action*, %struct.Action** %39, i64 %idxprom46
  store %struct.Action* %35, %struct.Action** %arrayidx49, align 8
  br label %do.end

if.end.50:                                        ; preds = %if.then.34
  br label %if.end.68

if.else.51:                                       ; preds = %if.else
  %40 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions52 = getelementptr inbounds %struct.State, %struct.State* %40, i32 0, i32 5
  %n53 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions52, i32 0, i32 0
  %41 = load i32, i32* %n53, align 4
  %and = and i32 %41, 7
  %tobool54 = icmp ne i32 %and, 0
  br i1 %tobool54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %if.else.51
  %42 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %42 to i64
  %43 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions57 = getelementptr inbounds %struct.State, %struct.State* %43, i32 0, i32 5
  %v58 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions57, i32 0, i32 2
  %44 = load %struct.Action**, %struct.Action*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.Action*, %struct.Action** %44, i64 %idxprom56
  %45 = load %struct.Action*, %struct.Action** %arrayidx59, align 8
  %46 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions60 = getelementptr inbounds %struct.State, %struct.State* %46, i32 0, i32 5
  %n61 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions60, i32 0, i32 0
  %47 = load i32, i32* %n61, align 4
  %inc62 = add i32 %47, 1
  store i32 %inc62, i32* %n61, align 4
  %idxprom63 = zext i32 %47 to i64
  %48 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions64 = getelementptr inbounds %struct.State, %struct.State* %48, i32 0, i32 5
  %v65 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions64, i32 0, i32 2
  %49 = load %struct.Action**, %struct.Action*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.Action*, %struct.Action** %49, i64 %idxprom63
  store %struct.Action* %45, %struct.Action** %arrayidx66, align 8
  br label %do.end

if.end.67:                                        ; preds = %if.else.51
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.50
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  %50 = load %struct.State*, %struct.State** %to.addr, align 8
  %shift_actions70 = getelementptr inbounds %struct.State, %struct.State* %50, i32 0, i32 5
  %51 = bitcast %struct.VecAction* %shift_actions70 to i8*
  %52 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %52 to i64
  %53 = load %struct.State*, %struct.State** %from.addr, align 8
  %shift_actions72 = getelementptr inbounds %struct.State, %struct.State* %53, i32 0, i32 5
  %v73 = getelementptr inbounds %struct.VecAction, %struct.VecAction* %shift_actions72, i32 0, i32 2
  %54 = load %struct.Action**, %struct.Action*** %v73, align 8
  %arrayidx74 = getelementptr inbounds %struct.Action*, %struct.Action** %54, i64 %idxprom71
  %55 = load %struct.Action*, %struct.Action** %arrayidx74, align 8
  %56 = bitcast %struct.Action* %55 to i8*
  call void @vec_add_internal(i8* %51, i8* %56)
  br label %do.end

do.end:                                           ; preds = %if.end.69, %if.then.55, %if.then.38, %if.then.15
  br label %Lnext

Lnext:                                            ; preds = %do.end, %if.then
  br label %for.inc.75

for.inc.75:                                       ; preds = %Lnext
  %57 = load i32, i32* %i, align 4
  %inc76 = add nsw i32 %57, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
