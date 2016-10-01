; ModuleID = './MultiSource.Applications.d/7.parse.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.VecZNode = type { i32, i32, %struct.ZNode**, [3 x %struct.ZNode*] }
%struct.ZNode = type { %struct.PNode*, %struct.VecSNode }
%struct.PNode = type { i32, i32, i32, i32, %struct.D_Reduction*, %struct.D_Shift*, i32, %struct.VecPNode, i32, i8, i8, %struct.PNode*, %struct.PNode*, %struct.PNode*, %struct.PNode*, i8*, i8*, %struct.D_Scope*, i8*, %struct.D_ParseNode }
%struct.D_Reduction = type { i16, i16, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i16, i16, i32, i32, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** }
%struct.D_Parser = type { i8*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, %struct.D_Scope*, void (%struct.D_Parser*)*, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)*, void (%struct.D_ParseNode*)*, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.d_loc_t = type { i8*, i8*, i32, i32, i32 }
%struct.D_Shift = type { i16, i8, i8, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* }
%struct.VecPNode = type { i32, i32, %struct.PNode**, [3 x %struct.PNode*] }
%struct.D_Scope = type { i8, %struct.D_Sym*, %struct.D_SymHash*, %struct.D_Sym*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope* }
%struct.D_SymHash = type opaque
%struct.D_Sym = type { i8*, i32, i32, %struct.D_Sym*, %struct.D_Sym*, i32 }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, i8*, i8*, %struct.D_Scope*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i8*, i8* }
%struct.VecSNode = type { i32, i32, %struct.SNode**, [3 x %struct.SNode*] }
%struct.SNode = type { %struct.D_State*, %struct.D_Scope*, i8*, %struct.d_loc_t, i32, %struct.PNode*, %struct.VecZNode, i32, %struct.SNode*, %struct.SNode* }
%struct.D_State = type { i8*, i32, %struct.anon, %struct.anon.0, %struct.anon.1, %struct.D_Shift**, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i8*, i8, i8, i8, i8*, %struct.D_Shift***, i32 }
%struct.anon = type { i32, %struct.D_Reduction** }
%struct.anon.0 = type { i32, %struct.D_RightEpsilonHint* }
%struct.D_RightEpsilonHint = type { i16, i16, %struct.D_Reduction* }
%struct.anon.1 = type { i32, %struct.D_ErrorRecoveryHint* }
%struct.D_ErrorRecoveryHint = type { i16, i16, i8* }
%struct.Parser = type { %struct.D_Parser, i8*, i8*, %struct.D_ParserTables*, i32, i32, i32, i32, i32, i32, i32, %struct.PNodeHash, %struct.SNodeHash, %struct.Reduction*, %struct.Shift*, %struct.D_Scope*, %struct.SNode*, i32, %struct.Reduction*, %struct.Shift*, i32, %struct.PNode*, %struct.SNode*, %struct.ZNode*, %struct.anon.2, %struct.ShiftResult*, %struct.D_Shift, %struct.Parser*, i8* }
%struct.D_ParserTables = type { i32, %struct.D_State*, i16*, i32, i32, %struct.D_Symbol*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i32, %struct.D_Pass*, i32 }
%struct.D_Symbol = type { i32, i8*, i32 }
%struct.D_Pass = type { i8*, i32, i32, i32 }
%struct.PNodeHash = type { %struct.PNode**, i32, i32, i32, %struct.PNode* }
%struct.SNodeHash = type { %struct.SNode**, i32, i32, i32, %struct.SNode*, %struct.SNode* }
%struct.Reduction = type { %struct.ZNode*, %struct.SNode*, %struct.D_Reduction*, %struct.SNode*, i32, %struct.Reduction* }
%struct.Shift = type { %struct.SNode*, %struct.Shift* }
%struct.anon.2 = type { i32, i32, %struct.D_Reduction**, [3 x %struct.D_Reduction*] }
%struct.ShiftResult = type { %struct.D_Shift*, %struct.d_loc_t }
%struct.VecVecZNode = type { i32, i32, %struct.VecZNode**, [3 x %struct.VecZNode*] }
%struct.StackPNode = type { %struct.PNode**, %struct.PNode**, %struct.PNode**, [8 x %struct.PNode*] }
%struct.StackInt = type { i32*, i32*, i32*, [8 x i32] }
%struct.AbstractStack = type { i8**, i8**, i8**, [8 x i8*] }
%struct.anon.3 = type { i32, i32, %struct.D_ParseNode**, [3 x %struct.D_ParseNode*] }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@prime2 = external global [0 x i32], align 4
@verbose_level = external global i32, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"unresolved ambiguity line %d file %s\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"bad pass number: %d\0A\00", align 1
@_wspace = global [256 x i8] c"\00\00\00\00\00\00\00\00\00\01\00\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.8 = private unnamed_addr constant [36 x i8] c"internal error: bad final reduction\00", align 1
@.str.9 = private unnamed_addr constant [71 x i8] c"%d states %d scans %d shifts %d reductions %d compares %d ambiguities\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"syntax error, '%s' line %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@child_table = internal global [4 x [3 x [6 x i32]]] [[3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 1, i32 1, i32 0, i32 0], [6 x i32] [i32 1, i32 1, i32 1, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 0, i32 666, i32 666, i32 1, i32 1]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 0, i32 0, i32 1, i32 1], [6 x i32] [i32 1, i32 0, i32 1, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 1, i32 666, i32 666, i32 1, i32 1]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 0, i32 666, i32 0, i32 666], [6 x i32] [i32 1, i32 0, i32 1, i32 666, i32 666, i32 666], [6 x i32] [i32 1, i32 1, i32 666, i32 666, i32 1, i32 666]], [3 x [6 x i32]] [[6 x i32] [i32 1, i32 0, i32 666, i32 0, i32 666, i32 0], [6 x i32] [i32 1, i32 1, i32 666, i32 1, i32 666, i32 666], [6 x i32] [i32 1, i32 0, i32 666, i32 666, i32 666, i32 1]]], align 16
@path1 = internal global %struct.VecZNode zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [48 x i8] c"circular parse: unable to fixup internal symbol\00", align 1

; Function Attrs: nounwind uwtable
define void @print_paren(%struct.PNode* %p) #0 {
entry:
  %p.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  store %struct.PNode* %p, %struct.PNode** %p.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %error_recovery = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 10
  %1 = load i8, i8* %error_recovery, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.34, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %n4 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 0
  %5 = load i32, i32* %n4, align 4
  %cmp = icmp ugt i32 %5, 1
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.2
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children6 = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 7
  %n7 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children6, i32 0, i32 0
  %8 = load i32, i32* %n7, align 4
  %cmp8 = icmp ult i32 %6, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children9 = getelementptr inbounds %struct.PNode, %struct.PNode* %10, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children9, i32 0, i32 2
  %11 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %11, i64 %idxprom
  %12 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  call void @print_paren(%struct.PNode* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children10 = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 7
  %n11 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children10, i32 0, i32 0
  %15 = load i32, i32* %n11, align 4
  %cmp12 = icmp ugt i32 %15, 1
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %for.end
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %for.end
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %16 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %17 = load i8*, i8** %s, align 8
  %18 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node16 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node16, i32 0, i32 3
  %19 = load i8*, i8** %end_skip, align 8
  %cmp17 = icmp ne i8* %17, %19
  br i1 %cmp17, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %if.else
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %20 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node20 = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 19
  %start_loc21 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node20, i32 0, i32 1
  %s22 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc21, i32 0, i32 0
  %21 = load i8*, i8** %s22, align 8
  store i8* %21, i8** %c, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.29, %if.then.18
  %22 = load i8*, i8** %c, align 8
  %23 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node24 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 19
  %end_skip25 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node24, i32 0, i32 3
  %24 = load i8*, i8** %end_skip25, align 8
  %cmp26 = icmp ult i8* %22, %24
  br i1 %cmp26, label %for.body.27, label %for.end.30

for.body.27:                                      ; preds = %for.cond.23
  %25 = load i8*, i8** %c, align 8
  %26 = load i8, i8* %25, align 1
  %conv = sext i8 %26 to i32
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %conv)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.27
  %27 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.30, %if.else
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.15
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %entry
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @xprint_paren(%struct.Parser* %pp, %struct.PNode* %p) #0 {
entry:
  %pp.addr = alloca %struct.Parser*, align 8
  %p.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  store %struct.Parser* %pp, %struct.Parser** %pp.addr, align 8
  store %struct.PNode* %p, %struct.PNode** %p.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %error_recovery = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 10
  %1 = load i8, i8* %error_recovery, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end.28, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 19
  %symbol = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 0
  %3 = load i32, i32* %symbol, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.Parser*, %struct.Parser** %pp.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 3
  %5 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %symbols = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %5, i32 0, i32 5
  %6 = load %struct.D_Symbol*, %struct.D_Symbol** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %6, i64 %idxprom
  %name = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %arrayidx, i32 0, i32 1
  %7 = load i8*, i8** %name, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* %7)
  %8 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %9 = load i32, i32* %n, align 4
  %tobool1 = icmp ne i32 %9, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children4 = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 7
  %n5 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children4, i32 0, i32 0
  %12 = load i32, i32* %n5, align 4
  %cmp = icmp ult i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.Parser*, %struct.Parser** %pp.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %children7 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children7, i32 0, i32 2
  %16 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx8 = getelementptr inbounds %struct.PNode*, %struct.PNode** %16, i64 %idxprom6
  %17 = load %struct.PNode*, %struct.PNode** %arrayidx8, align 8
  call void @xprint_paren(%struct.Parser* %13, %struct.PNode* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.27

if.else:                                          ; preds = %if.then
  %19 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node10 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node10, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %20 = load i8*, i8** %s, align 8
  %21 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node11 = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node11, i32 0, i32 3
  %22 = load i8*, i8** %end_skip, align 8
  %cmp12 = icmp ne i8* %20, %22
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %23 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node15 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 19
  %start_loc16 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node15, i32 0, i32 1
  %s17 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc16, i32 0, i32 0
  %24 = load i8*, i8** %s17, align 8
  store i8* %24, i8** %c, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %if.then.13
  %25 = load i8*, i8** %c, align 8
  %26 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  %parse_node19 = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 19
  %end_skip20 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node19, i32 0, i32 3
  %27 = load i8*, i8** %end_skip20, align 8
  %cmp21 = icmp ult i8* %25, %27
  br i1 %cmp21, label %for.body.22, label %for.end.25

for.body.22:                                      ; preds = %for.cond.18
  %28 = load i8*, i8** %c, align 8
  %29 = load i8, i8* %28, align 1
  %conv = sext i8 %29 to i32
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 %conv)
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.22
  %30 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %for.end.25, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %for.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @xpp(%struct.Parser* %pp, %struct.PNode* %p) #0 {
entry:
  %pp.addr = alloca %struct.Parser*, align 8
  %p.addr = alloca %struct.PNode*, align 8
  store %struct.Parser* %pp, %struct.Parser** %pp.addr, align 8
  store %struct.PNode* %p, %struct.PNode** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %pp.addr, align 8
  %1 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  call void @xprint_paren(%struct.Parser* %0, %struct.PNode* %1)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @pp(%struct.PNode* %p) #0 {
entry:
  %p.addr = alloca %struct.PNode*, align 8
  store %struct.PNode* %p, %struct.PNode** %p.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %p.addr, align 8
  call void @print_paren(%struct.PNode* %0)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_ParseNode* @d_get_child(%struct.D_ParseNode* %apn, i32 %child) #0 {
entry:
  %retval = alloca %struct.D_ParseNode*, align 8
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %child.addr = alloca i32, align 4
  %pn = alloca %struct.PNode*, align 8
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  store i32 %child, i32* %child.addr, align 4
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load i32, i32* %child.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %child.addr, align 4
  %6 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %cmp1 = icmp uge i32 %5, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.D_ParseNode* null, %struct.D_ParseNode** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load i32, i32* %child.addr, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children2 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children2, i32 0, i32 2
  %10 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %10, i64 %idxprom
  %11 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 19
  store %struct.D_ParseNode* %parse_node, %struct.D_ParseNode** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.D_ParseNode*, %struct.D_ParseNode** %retval
  ret %struct.D_ParseNode* %12
}

; Function Attrs: nounwind uwtable
define i32 @d_get_number_of_children(%struct.D_ParseNode* %apn) #0 {
entry:
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %pn = alloca %struct.PNode*, align 8
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.D_ParseNode* @d_find_in_tree(%struct.D_ParseNode* %apn, i32 %symbol) #0 {
entry:
  %retval = alloca %struct.D_ParseNode*, align 8
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %symbol.addr = alloca i32, align 4
  %pn = alloca %struct.PNode*, align 8
  %res = alloca %struct.D_ParseNode*, align 8
  %i = alloca i32, align 4
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 19
  %symbol1 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 0
  %5 = load i32, i32* %symbol1, align 4
  %6 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  store %struct.D_ParseNode* %7, %struct.D_ParseNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %10 = load i32, i32* %n, align 4
  %cmp2 = icmp ult i32 %8, %10
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 2
  %13 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %13, i64 %idxprom
  %14 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %parse_node4 = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 19
  %15 = load i32, i32* %symbol.addr, align 4
  %call = call %struct.D_ParseNode* @d_find_in_tree(%struct.D_ParseNode* %parse_node4, i32 %15)
  store %struct.D_ParseNode* %call, %struct.D_ParseNode** %res, align 8
  %tobool = icmp ne %struct.D_ParseNode* %call, null
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %for.body
  %16 = load %struct.D_ParseNode*, %struct.D_ParseNode** %res, align 8
  store %struct.D_ParseNode* %16, %struct.D_ParseNode** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.D_ParseNode* null, %struct.D_ParseNode** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %18 = load %struct.D_ParseNode*, %struct.D_ParseNode** %retval
  ret %struct.D_ParseNode* %18
}

; Function Attrs: nounwind uwtable
define i8* @d_ws_before(%struct.D_Parser* %ap, %struct.D_ParseNode* %apn) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %pn = alloca %struct.PNode*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %ws_before = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 15
  %5 = load i8*, i8** %ws_before, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i8* @d_ws_after(%struct.D_Parser* %ap, %struct.D_ParseNode* %apn) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %pn = alloca %struct.PNode*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %ws_after = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 16
  %5 = load i8*, i8** %ws_after, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define %struct.SNode* @find_SNode(%struct.Parser* %p, i32 %state, %struct.D_Scope* %sc, i8* %g) #0 {
entry:
  %retval = alloca %struct.SNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %state.addr = alloca i32, align 4
  %sc.addr = alloca %struct.D_Scope*, align 8
  %g.addr = alloca i8*, align 8
  %ph = alloca %struct.SNodeHash*, align 8
  %sn = alloca %struct.SNode*, align 8
  %h = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store %struct.D_Scope* %sc, %struct.D_Scope** %sc.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 12
  store %struct.SNodeHash* %snode_hash, %struct.SNodeHash** %ph, align 8
  %1 = load i32, i32* %state.addr, align 4
  %shl = shl i32 %1, 12
  %2 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %3 = ptrtoint %struct.D_Scope* %2 to i32
  %add = add i32 %shl, %3
  %4 = load i8*, i8** %g.addr, align 8
  %5 = ptrtoint i8* %4 to i32
  %add1 = add i32 %add, %5
  store i32 %add1, i32* %h, align 4
  %6 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %6, i32 0, i32 0
  %7 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %tobool = icmp ne %struct.SNode** %7, null
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %h, align 4
  %9 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %9, i32 0, i32 2
  %10 = load i32, i32* %m, align 4
  %rem = urem i32 %8, %10
  %idxprom = zext i32 %rem to i64
  %11 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v2 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %11, i32 0, i32 0
  %12 = load %struct.SNode**, %struct.SNode*** %v2, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %12, i64 %idxprom
  %13 = load %struct.SNode*, %struct.SNode** %arrayidx, align 8
  store %struct.SNode* %13, %struct.SNode** %sn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool3 = icmp ne %struct.SNode* %14, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state4 = getelementptr inbounds %struct.SNode, %struct.SNode* %15, i32 0, i32 0
  %16 = load %struct.D_State*, %struct.D_State** %state4, align 8
  %17 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %17, i32 0, i32 3
  %18 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state5 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %18, i32 0, i32 1
  %19 = load %struct.D_State*, %struct.D_State** %state5, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.D_State* %16 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.D_State* %19 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 120
  %20 = load i32, i32* %state.addr, align 4
  %conv = zext i32 %20 to i64
  %cmp = icmp eq i64 %sub.ptr.div, %conv
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %21 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_scope = getelementptr inbounds %struct.SNode, %struct.SNode* %21, i32 0, i32 1
  %22 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %23 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %cmp7 = icmp eq %struct.D_Scope* %22, %23
  br i1 %cmp7, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %24 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_globals = getelementptr inbounds %struct.SNode, %struct.SNode* %24, i32 0, i32 2
  %25 = load i8*, i8** %initial_globals, align 8
  %26 = load i8*, i8** %g.addr, align 8
  %cmp10 = icmp eq i8* %25, %26
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true.9
  %27 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %27, %struct.SNode** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %bucket_next = getelementptr inbounds %struct.SNode, %struct.SNode* %28, i32 0, i32 8
  %29 = load %struct.SNode*, %struct.SNode** %bucket_next, align 8
  store %struct.SNode* %29, %struct.SNode** %sn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %entry
  store %struct.SNode* null, %struct.SNode** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12
  %30 = load %struct.SNode*, %struct.SNode** %retval
  ret %struct.SNode* %30
}

; Function Attrs: nounwind uwtable
define void @insert_SNode_internal(%struct.Parser* %p, %struct.SNode* %sn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %sn.addr = alloca %struct.SNode*, align 8
  %ph = alloca %struct.SNodeHash*, align 8
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %t3 = alloca %struct.SNode*, align 8
  %v = alloca %struct.SNode**, align 8
  %m7 = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* %sn, %struct.SNode** %sn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 12
  store %struct.SNodeHash* %snode_hash, %struct.SNodeHash** %ph, align 8
  %1 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %state = getelementptr inbounds %struct.SNode, %struct.SNode* %1, i32 0, i32 0
  %2 = load %struct.D_State*, %struct.D_State** %state, align 8
  %3 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 3
  %4 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state1 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %4, i32 0, i32 1
  %5 = load %struct.D_State*, %struct.D_State** %state1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.D_State* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.D_State* %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 120
  %conv = trunc i64 %sub.ptr.div to i32
  %shl = shl i32 %conv, 12
  %6 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %initial_scope = getelementptr inbounds %struct.SNode, %struct.SNode* %6, i32 0, i32 1
  %7 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %8 = ptrtoint %struct.D_Scope* %7 to i32
  %add = add i32 %shl, %8
  %9 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %initial_globals = getelementptr inbounds %struct.SNode, %struct.SNode* %9, i32 0, i32 2
  %10 = load i8*, i8** %initial_globals, align 8
  %11 = ptrtoint i8* %10 to i32
  %add2 = add i32 %add, %11
  store i32 %add2, i32* %h, align 4
  %12 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %n = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %12, i32 0, i32 3
  %13 = load i32, i32* %n, align 4
  %add4 = add i32 %13, 1
  %14 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %14, i32 0, i32 2
  %15 = load i32, i32* %m, align 4
  %cmp = icmp ugt i32 %add4, %15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %16 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v6 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %16, i32 0, i32 0
  %17 = load %struct.SNode**, %struct.SNode*** %v6, align 8
  store %struct.SNode** %17, %struct.SNode*** %v, align 8
  %18 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m8 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %18, i32 0, i32 2
  %19 = load i32, i32* %m8, align 4
  store i32 %19, i32* %m7, align 4
  %20 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %i9 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %20, i32 0, i32 1
  %21 = load i32, i32* %i9, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i9, align 4
  %22 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %i10 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %22, i32 0, i32 1
  %23 = load i32, i32* %i10, align 4
  %idxprom = zext i32 %23 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @prime2, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx, align 4
  %25 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m11 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %25, i32 0, i32 2
  store i32 %24, i32* %m11, align 4
  %26 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m12 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %26, i32 0, i32 2
  %27 = load i32, i32* %m12, align 4
  %conv13 = zext i32 %27 to i64
  %mul = mul i64 %conv13, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %28 = bitcast i8* %call to %struct.SNode**
  %29 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v14 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %29, i32 0, i32 0
  store %struct.SNode** %28, %struct.SNode*** %v14, align 8
  %30 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v15 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %30, i32 0, i32 0
  %31 = load %struct.SNode**, %struct.SNode*** %v15, align 8
  %32 = bitcast %struct.SNode** %31 to i8*
  %33 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m16 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %33, i32 0, i32 2
  %34 = load i32, i32* %m16, align 4
  %conv17 = zext i32 %34 to i64
  %mul18 = mul i64 %conv17, 8
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 %mul18, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %m7, align 4
  %cmp19 = icmp ult i32 %35, %36
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %37 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %37 to i64
  %38 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx22 = getelementptr inbounds %struct.SNode*, %struct.SNode** %38, i64 %idxprom21
  %39 = load %struct.SNode*, %struct.SNode** %arrayidx22, align 8
  store %struct.SNode* %39, %struct.SNode** %t3, align 8
  %tobool = icmp ne %struct.SNode* %39, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %40 to i64
  %41 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx24 = getelementptr inbounds %struct.SNode*, %struct.SNode** %41, i64 %idxprom23
  %42 = load %struct.SNode*, %struct.SNode** %arrayidx24, align 8
  %bucket_next = getelementptr inbounds %struct.SNode, %struct.SNode* %42, i32 0, i32 8
  %43 = load %struct.SNode*, %struct.SNode** %bucket_next, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom25 = zext i32 %44 to i64
  %45 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx26 = getelementptr inbounds %struct.SNode*, %struct.SNode** %45, i64 %idxprom25
  store %struct.SNode* %43, %struct.SNode** %arrayidx26, align 8
  %46 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %47 = load %struct.SNode*, %struct.SNode** %t3, align 8
  call void @insert_SNode_internal(%struct.Parser* %46, %struct.SNode* %47)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %48 = load i32, i32* %i, align 4
  %inc27 = add i32 %48, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %50 = bitcast %struct.SNode** %49 to i8*
  call void @free(i8* %50) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %51 = load i32, i32* %h, align 4
  %52 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m28 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %52, i32 0, i32 2
  %53 = load i32, i32* %m28, align 4
  %rem = urem i32 %51, %53
  %idxprom29 = zext i32 %rem to i64
  %54 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v30 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %54, i32 0, i32 0
  %55 = load %struct.SNode**, %struct.SNode*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.SNode*, %struct.SNode** %55, i64 %idxprom29
  %56 = load %struct.SNode*, %struct.SNode** %arrayidx31, align 8
  %57 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %bucket_next32 = getelementptr inbounds %struct.SNode, %struct.SNode* %57, i32 0, i32 8
  store %struct.SNode* %56, %struct.SNode** %bucket_next32, align 8
  %58 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %59 = load i32, i32* %h, align 4
  %60 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %m33 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %60, i32 0, i32 2
  %61 = load i32, i32* %m33, align 4
  %rem34 = urem i32 %59, %61
  %idxprom35 = zext i32 %rem34 to i64
  %62 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %v36 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %62, i32 0, i32 0
  %63 = load %struct.SNode**, %struct.SNode*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.SNode*, %struct.SNode** %63, i64 %idxprom35
  store %struct.SNode* %58, %struct.SNode** %arrayidx37, align 8
  %64 = load %struct.SNodeHash*, %struct.SNodeHash** %ph, align 8
  %n38 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %64, i32 0, i32 3
  %65 = load i32, i32* %n38, align 4
  %inc39 = add i32 %65, 1
  store i32 %inc39, i32* %n38, align 4
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.PNode* @find_PNode(%struct.Parser* %p, i8* %start, i8* %end_skip, i32 %symbol, %struct.D_Scope* %sc, i8* %g) #0 {
entry:
  %retval = alloca %struct.PNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %start.addr = alloca i8*, align 8
  %end_skip.addr = alloca i8*, align 8
  %symbol.addr = alloca i32, align 4
  %sc.addr = alloca %struct.D_Scope*, align 8
  %g.addr = alloca i8*, align 8
  %ph = alloca %struct.PNodeHash*, align 8
  %pn = alloca %struct.PNode*, align 8
  %h = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store i8* %start, i8** %start.addr, align 8
  store i8* %end_skip, i8** %end_skip.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.D_Scope* %sc, %struct.D_Scope** %sc.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 11
  store %struct.PNodeHash* %pnode_hash, %struct.PNodeHash** %ph, align 8
  %1 = load i8*, i8** %start.addr, align 8
  %2 = ptrtoint i8* %1 to i32
  %shl = shl i32 %2, 8
  %3 = load i8*, i8** %end_skip.addr, align 8
  %4 = ptrtoint i8* %3 to i32
  %shl1 = shl i32 %4, 16
  %add = add i32 %shl, %shl1
  %5 = load i32, i32* %symbol.addr, align 4
  %add2 = add i32 %add, %5
  %6 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %7 = ptrtoint %struct.D_Scope* %6 to i32
  %add3 = add i32 %add2, %7
  %8 = load i8*, i8** %g.addr, align 8
  %9 = ptrtoint i8* %8 to i32
  %add4 = add i32 %add3, %9
  store i32 %add4, i32* %h, align 4
  %10 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %10, i32 0, i32 0
  %11 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %tobool = icmp ne %struct.PNode** %11, null
  br i1 %tobool, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %h, align 4
  %13 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %13, i32 0, i32 2
  %14 = load i32, i32* %m, align 4
  %rem = urem i32 %12, %14
  %idxprom = zext i32 %rem to i64
  %15 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v5 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %15, i32 0, i32 0
  %16 = load %struct.PNode**, %struct.PNode*** %v5, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %16, i64 %idxprom
  %17 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  store %struct.PNode* %17, %struct.PNode** %pn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %tobool6 = icmp ne %struct.PNode* %18, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 19
  %symbol7 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 0
  %20 = load i32, i32* %symbol7, align 4
  %21 = load i32, i32* %symbol.addr, align 4
  %cmp = icmp eq i32 %20, %21
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node8 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node8, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %23 = load i8*, i8** %s, align 8
  %24 = load i8*, i8** %start.addr, align 8
  %cmp9 = icmp eq i8* %23, %24
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %25 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node11 = getelementptr inbounds %struct.PNode, %struct.PNode* %25, i32 0, i32 19
  %end_skip12 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node11, i32 0, i32 3
  %26 = load i8*, i8** %end_skip12, align 8
  %27 = load i8*, i8** %end_skip.addr, align 8
  %cmp13 = icmp eq i8* %26, %27
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.10
  %28 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 17
  %29 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %30 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %cmp15 = icmp eq %struct.D_Scope* %29, %30
  br i1 %cmp15, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %31 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %31, i32 0, i32 18
  %32 = load i8*, i8** %initial_globals, align 8
  %33 = load i8*, i8** %g.addr, align 8
  %cmp17 = icmp eq i8* %32, %33
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true.16
  %34 = load %struct.PNode*, %struct.PNode** %pn, align 8
  store %struct.PNode* %34, %struct.PNode** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.16, %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %bucket_next = getelementptr inbounds %struct.PNode, %struct.PNode* %35, i32 0, i32 12
  %36 = load %struct.PNode*, %struct.PNode** %bucket_next, align 8
  store %struct.PNode* %36, %struct.PNode** %pn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %entry
  store %struct.PNode* null, %struct.PNode** %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.then.18
  %37 = load %struct.PNode*, %struct.PNode** %retval
  ret %struct.PNode* %37
}

; Function Attrs: nounwind uwtable
define void @insert_PNode_internal(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %ph = alloca %struct.PNodeHash*, align 8
  %h = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca %struct.PNode*, align 8
  %v = alloca %struct.PNode**, align 8
  %m9 = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 11
  store %struct.PNodeHash* %pnode_hash, %struct.PNodeHash** %ph, align 8
  %1 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %1, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %2 = load i8*, i8** %s, align 8
  %3 = ptrtoint i8* %2 to i32
  %shl = shl i32 %3, 8
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node1 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node1, i32 0, i32 3
  %5 = load i8*, i8** %end_skip, align 8
  %6 = ptrtoint i8* %5 to i32
  %shl2 = shl i32 %6, 16
  %add = add i32 %shl, %shl2
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node3 = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 19
  %symbol = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node3, i32 0, i32 0
  %8 = load i32, i32* %symbol, align 4
  %add4 = add i32 %add, %8
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 17
  %10 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %11 = ptrtoint %struct.D_Scope* %10 to i32
  %add5 = add i32 %add4, %11
  %12 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 18
  %13 = load i8*, i8** %initial_globals, align 8
  %14 = ptrtoint i8* %13 to i32
  %add6 = add i32 %add5, %14
  store i32 %add6, i32* %h, align 4
  %15 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %n = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %15, i32 0, i32 3
  %16 = load i32, i32* %n, align 4
  %add7 = add i32 %16, 1
  %17 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %17, i32 0, i32 2
  %18 = load i32, i32* %m, align 4
  %cmp = icmp ugt i32 %add7, %18
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %19 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v8 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %19, i32 0, i32 0
  %20 = load %struct.PNode**, %struct.PNode*** %v8, align 8
  store %struct.PNode** %20, %struct.PNode*** %v, align 8
  %21 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m10 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %21, i32 0, i32 2
  %22 = load i32, i32* %m10, align 4
  store i32 %22, i32* %m9, align 4
  %23 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %i11 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %23, i32 0, i32 1
  %24 = load i32, i32* %i11, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i11, align 4
  %25 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %i12 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %25, i32 0, i32 1
  %26 = load i32, i32* %i12, align 4
  %idxprom = zext i32 %26 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @prime2, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx, align 4
  %28 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m13 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %28, i32 0, i32 2
  store i32 %27, i32* %m13, align 4
  %29 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m14 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %29, i32 0, i32 2
  %30 = load i32, i32* %m14, align 4
  %conv = zext i32 %30 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %31 = bitcast i8* %call to %struct.PNode**
  %32 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v15 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %32, i32 0, i32 0
  store %struct.PNode** %31, %struct.PNode*** %v15, align 8
  %33 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v16 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %33, i32 0, i32 0
  %34 = load %struct.PNode**, %struct.PNode*** %v16, align 8
  %35 = bitcast %struct.PNode** %34 to i8*
  %36 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m17 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %36, i32 0, i32 2
  %37 = load i32, i32* %m17, align 4
  %conv18 = zext i32 %37 to i64
  %mul19 = mul i64 %conv18, 8
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 %mul19, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %m9, align 4
  %cmp20 = icmp ult i32 %38, %39
  br i1 %cmp20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %40 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %40 to i64
  %41 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx23 = getelementptr inbounds %struct.PNode*, %struct.PNode** %41, i64 %idxprom22
  %42 = load %struct.PNode*, %struct.PNode** %arrayidx23, align 8
  store %struct.PNode* %42, %struct.PNode** %t, align 8
  %tobool = icmp ne %struct.PNode* %42, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %43 to i64
  %44 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx25 = getelementptr inbounds %struct.PNode*, %struct.PNode** %44, i64 %idxprom24
  %45 = load %struct.PNode*, %struct.PNode** %arrayidx25, align 8
  %bucket_next = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 12
  %46 = load %struct.PNode*, %struct.PNode** %bucket_next, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %47 to i64
  %48 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx27 = getelementptr inbounds %struct.PNode*, %struct.PNode** %48, i64 %idxprom26
  store %struct.PNode* %46, %struct.PNode** %arrayidx27, align 8
  %49 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %50 = load %struct.PNode*, %struct.PNode** %t, align 8
  call void @insert_PNode_internal(%struct.Parser* %49, %struct.PNode* %50)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %51 = load i32, i32* %i, align 4
  %inc28 = add i32 %51, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %53 = bitcast %struct.PNode** %52 to i8*
  call void @free(i8* %53) #3
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %54 = load i32, i32* %h, align 4
  %55 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m29 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %55, i32 0, i32 2
  %56 = load i32, i32* %m29, align 4
  %rem = urem i32 %54, %56
  %idxprom30 = zext i32 %rem to i64
  %57 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v31 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %57, i32 0, i32 0
  %58 = load %struct.PNode**, %struct.PNode*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.PNode*, %struct.PNode** %58, i64 %idxprom30
  %59 = load %struct.PNode*, %struct.PNode** %arrayidx32, align 8
  %60 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %bucket_next33 = getelementptr inbounds %struct.PNode, %struct.PNode* %60, i32 0, i32 12
  store %struct.PNode* %59, %struct.PNode** %bucket_next33, align 8
  %61 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %62 = load i32, i32* %h, align 4
  %63 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %m34 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %63, i32 0, i32 2
  %64 = load i32, i32* %m34, align 4
  %rem35 = urem i32 %62, %64
  %idxprom36 = zext i32 %rem35 to i64
  %65 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %v37 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %65, i32 0, i32 0
  %66 = load %struct.PNode**, %struct.PNode*** %v37, align 8
  %arrayidx38 = getelementptr inbounds %struct.PNode*, %struct.PNode** %66, i64 %idxprom36
  store %struct.PNode* %61, %struct.PNode** %arrayidx38, align 8
  %67 = load %struct.PNodeHash*, %struct.PNodeHash** %ph, align 8
  %n39 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %67, i32 0, i32 3
  %68 = load i32, i32* %n39, align 4
  %inc40 = add i32 %68, 1
  store i32 %inc40, i32* %n39, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_D_ParseTreeBelow(%struct.D_Parser* %p, %struct.D_ParseNode* %dpn) #0 {
entry:
  %p.addr = alloca %struct.D_Parser*, align 8
  %dpn.addr = alloca %struct.D_ParseNode*, align 8
  store %struct.D_Parser* %p, %struct.D_Parser** %p.addr, align 8
  store %struct.D_ParseNode* %dpn, %struct.D_ParseNode** %dpn.addr, align 8
  %0 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %1 = bitcast %struct.D_Parser* %0 to %struct.Parser*
  %2 = load %struct.D_ParseNode*, %struct.D_ParseNode** %dpn.addr, align 8
  %3 = bitcast %struct.D_ParseNode* %2 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32) to i64))
  %4 = bitcast i8* %add.ptr to %struct.PNode*
  call void @free_ParseTreeBelow(%struct.Parser* %1, %struct.PNode* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_ParseTreeBelow(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %amb = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %1, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children1 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children1, i32 0, i32 2
  %5 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %5, i64 %idxprom
  %6 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 6
  %7 = load i32, i32* %refcount, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %10, i32 0, i32 7
  %v4 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 2
  %11 = load %struct.PNode**, %struct.PNode*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.PNode*, %struct.PNode** %11, i64 %idxprom2
  %12 = load %struct.PNode*, %struct.PNode** %arrayidx5, align 8
  call void @free_PNode(%struct.Parser* %8, %struct.PNode* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.6

do.body.6:                                        ; preds = %for.end
  %14 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children7 = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 7
  %v8 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children7, i32 0, i32 2
  %15 = load %struct.PNode**, %struct.PNode*** %v8, align 8
  %tobool9 = icmp ne %struct.PNode** %15, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %do.body.6
  %16 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children10 = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 7
  %v11 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children10, i32 0, i32 2
  %17 = load %struct.PNode**, %struct.PNode*** %v11, align 8
  %18 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children12 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 7
  %e = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children12, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e, i32 0, i32 0
  %cmp13 = icmp ne %struct.PNode** %17, %arraydecay
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children15 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 7
  %v16 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children15, i32 0, i32 2
  %20 = load %struct.PNode**, %struct.PNode*** %v16, align 8
  %21 = bitcast %struct.PNode** %20 to i8*
  call void @free(i8* %21) #3
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %land.lhs.true, %do.body.6
  br label %do.body.18

do.body.18:                                       ; preds = %if.end.17
  %22 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children19 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 7
  %n20 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children19, i32 0, i32 0
  store i32 0, i32* %n20, align 4
  %23 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children21 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 7
  %v22 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children21, i32 0, i32 2
  store %struct.PNode** null, %struct.PNode*** %v22, align 8
  br label %do.end.23

do.end.23:                                        ; preds = %do.body.18
  br label %do.end.24

do.end.24:                                        ; preds = %do.end.23
  %24 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 13
  %25 = load %struct.PNode*, %struct.PNode** %ambiguities, align 8
  store %struct.PNode* %25, %struct.PNode** %amb, align 8
  %tobool25 = icmp ne %struct.PNode* %25, null
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %do.end.24
  %26 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities27 = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 13
  store %struct.PNode* null, %struct.PNode** %ambiguities27, align 8
  %27 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %28 = load %struct.PNode*, %struct.PNode** %amb, align 8
  call void @free_PNode(%struct.Parser* %27, %struct.PNode* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %do.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_ParseNode* @ambiguity_count_fn(%struct.D_Parser* %pp, i32 %n, %struct.D_ParseNode** %v) #0 {
entry:
  %pp.addr = alloca %struct.D_Parser*, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca %struct.D_ParseNode**, align 8
  %p = alloca %struct.Parser*, align 8
  store %struct.D_Parser* %pp, %struct.D_Parser** %pp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.D_ParseNode** %v, %struct.D_ParseNode*** %v.addr, align 8
  %0 = load %struct.D_Parser*, %struct.D_Parser** %pp.addr, align 8
  %1 = bitcast %struct.D_Parser* %0 to %struct.Parser*
  store %struct.Parser* %1, %struct.Parser** %p, align 8
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %3 = load %struct.Parser*, %struct.Parser** %p, align 8
  %ambiguities = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 10
  %4 = load i32, i32* %ambiguities, align 4
  %add = add nsw i32 %4, %sub
  store i32 %add, i32* %ambiguities, align 4
  %5 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v.addr, align 8
  %arrayidx = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %5, i64 0
  %6 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx, align 8
  ret %struct.D_ParseNode* %6
}

; Function Attrs: nounwind uwtable
define %struct.D_ParseNode* @ambiguity_abort_fn(%struct.D_Parser* %pp, i32 %n, %struct.D_ParseNode** %v) #0 {
entry:
  %pp.addr = alloca %struct.D_Parser*, align 8
  %n.addr = alloca i32, align 4
  %v.addr = alloca %struct.D_ParseNode**, align 8
  %i = alloca i32, align 4
  store %struct.D_Parser* %pp, %struct.D_Parser** %pp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.D_ParseNode** %v, %struct.D_ParseNode*** %v.addr, align 8
  %0 = load i32, i32* @verbose_level, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v.addr, align 8
  %arrayidx = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %4, i64 %idxprom
  %5 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx, align 8
  %6 = bitcast %struct.D_ParseNode* %5 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %7 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %8 = bitcast %struct.D_ParseNode* %7 to %struct.PNode*
  call void @print_paren(%struct.PNode* %8)
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %10 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %10, i64 0
  %11 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx1, align 8
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %11, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 4
  %12 = load i32, i32* %line, align 4
  %13 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %13, i64 0
  %14 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx2, align 8
  %start_loc3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %14, i32 0, i32 1
  %pathname = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc3, i32 0, i32 1
  %15 = load i8*, i8** %pathname, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %12, i8* %15)
  %16 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %16, i64 0
  %17 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx4, align 8
  ret %struct.D_ParseNode* %17
}

declare void @d_fail(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @d_pass(%struct.D_Parser* %ap, %struct.D_ParseNode* %apn, i32 %pass_number) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %apn.addr = alloca %struct.D_ParseNode*, align 8
  %pass_number.addr = alloca i32, align 4
  %pn = alloca %struct.PNode*, align 8
  %p = alloca %struct.Parser*, align 8
  %pp = alloca %struct.D_Pass*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  store %struct.D_ParseNode* %apn, %struct.D_ParseNode** %apn.addr, align 8
  store i32 %pass_number, i32* %pass_number.addr, align 4
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %apn.addr, align 8
  %1 = bitcast %struct.D_ParseNode* %0 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %3 = bitcast %struct.D_ParseNode* %2 to %struct.PNode*
  store %struct.PNode* %3, %struct.PNode** %pn, align 8
  %4 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %5 = bitcast %struct.D_Parser* %4 to %struct.Parser*
  store %struct.Parser* %5, %struct.Parser** %p, align 8
  %6 = load i32, i32* %pass_number.addr, align 4
  %7 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 3
  %8 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %npasses = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %8, i32 0, i32 7
  %9 = load i32, i32* %npasses, align 4
  %cmp = icmp uge i32 %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %pass_number.addr, align 4
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %pass_number.addr, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t1 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 3
  %13 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t1, align 8
  %passes = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %13, i32 0, i32 8
  %14 = load %struct.D_Pass*, %struct.D_Pass** %passes, align 8
  %arrayidx = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %14, i64 %idxprom
  store %struct.D_Pass* %arrayidx, %struct.D_Pass** %pp, align 8
  %15 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %kind = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %15, i32 0, i32 2
  %16 = load i32, i32* %kind, align 4
  %and = and i32 %16, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %17 = load %struct.Parser*, %struct.Parser** %p, align 8
  %18 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %19 = load %struct.PNode*, %struct.PNode** %pn, align 8
  call void @pass_call(%struct.Parser* %17, %struct.D_Pass* %18, %struct.PNode* %19)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %20 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %kind3 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %20, i32 0, i32 2
  %21 = load i32, i32* %kind3, align 4
  %and4 = and i32 %21, 1
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  %22 = load %struct.Parser*, %struct.Parser** %p, align 8
  %23 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %24 = load %struct.PNode*, %struct.PNode** %pn, align 8
  call void @pass_preorder(%struct.Parser* %22, %struct.D_Pass* %23, %struct.PNode* %24)
  br label %if.end.13

if.else.7:                                        ; preds = %if.else
  %25 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %kind8 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %25, i32 0, i32 2
  %26 = load i32, i32* %kind8, align 4
  %and9 = and i32 %26, 2
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.7
  %27 = load %struct.Parser*, %struct.Parser** %p, align 8
  %28 = load %struct.D_Pass*, %struct.D_Pass** %pp, align 8
  %29 = load %struct.PNode*, %struct.PNode** %pn, align 8
  call void @pass_postorder(%struct.Parser* %27, %struct.D_Pass* %28, %struct.PNode* %29)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.else.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_call(%struct.Parser* %p, %struct.D_Pass* %pp, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pp.addr = alloca %struct.D_Pass*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.D_Pass* %pp, %struct.D_Pass** %pp.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 4
  %1 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool = icmp ne %struct.D_Reduction* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 4
  %3 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction1, align 8
  %npass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %3, i32 0, i32 9
  %4 = load i32, i32* %npass_code, align 4
  %5 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %5, i32 0, i32 3
  %6 = load i32, i32* %index, align 4
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index3 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %7, i32 0, i32 3
  %8 = load i32, i32* %index3, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction4 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 4
  %10 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction4, align 8
  %pass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %10, i32 0, i32 10
  %11 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)**, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*** %pass_code, align 8
  %arrayidx = getelementptr inbounds i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %11, i64 %idxprom
  %12 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %arrayidx, align 8
  %tobool5 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %12, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %13 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index6 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %13, i32 0, i32 3
  %14 = load i32, i32* %index6, align 4
  %idxprom7 = zext i32 %14 to i64
  %15 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction8 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 4
  %16 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction8, align 8
  %pass_code9 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %16, i32 0, i32 10
  %17 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)**, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*** %pass_code9, align 8
  %arrayidx10 = getelementptr inbounds i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %17, i64 %idxprom7
  %18 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %arrayidx10, align 8
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %20 = bitcast %struct.PNode* %19 to i8*
  %21 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 2
  %22 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx11 = getelementptr inbounds %struct.PNode*, %struct.PNode** %22, i64 0
  %23 = bitcast %struct.PNode** %arrayidx11 to i8**
  %24 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children12 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children12, i32 0, i32 0
  %25 = load i32, i32* %n, align 4
  %26 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %27 = bitcast %struct.Parser* %26 to %struct.D_Parser*
  %call = call i32 %18(i8* %20, i8** %23, i32 %25, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32), %struct.D_Parser* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_preorder(%struct.Parser* %p, %struct.D_Pass* %pp, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pp.addr = alloca %struct.D_Pass*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.D_Pass* %pp, %struct.D_Pass** %pp.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 4
  %1 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool = icmp ne %struct.D_Reduction* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 4
  %3 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction1, align 8
  %npass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %3, i32 0, i32 9
  %4 = load i32, i32* %npass_code, align 4
  %5 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %5, i32 0, i32 3
  %6 = load i32, i32* %index, align 4
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index2 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %7, i32 0, i32 3
  %8 = load i32, i32* %index2, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction3 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 4
  %10 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction3, align 8
  %pass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %10, i32 0, i32 10
  %11 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)**, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*** %pass_code, align 8
  %arrayidx = getelementptr inbounds i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %11, i64 %idxprom
  %12 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %arrayidx, align 8
  %tobool4 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %found, align 4
  %14 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %15 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %16 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  call void @pass_call(%struct.Parser* %14, %struct.D_Pass* %15, %struct.PNode* %16)
  %17 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %kind = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %17, i32 0, i32 2
  %18 = load i32, i32* %kind, align 4
  %and = and i32 %18, 8
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %19 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %kind6 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %19, i32 0, i32 2
  %20 = load i32, i32* %kind6, align 4
  %and7 = and i32 %20, 16
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %21 = load i32, i32* %found, align 4
  %tobool10 = icmp ne i32 %21, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.9, %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %24 = load i32, i32* %n, align 4
  %cmp11 = icmp ult i32 %22, %24
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %26 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %27 to i64
  %28 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children13 = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children13, i32 0, i32 2
  %29 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx14 = getelementptr inbounds %struct.PNode*, %struct.PNode** %29, i64 %idxprom12
  %30 = load %struct.PNode*, %struct.PNode** %arrayidx14, align 8
  call void @pass_preorder(%struct.Parser* %25, %struct.D_Pass* %26, %struct.PNode* %30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true.9, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_postorder(%struct.Parser* %p, %struct.D_Pass* %pp, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pp.addr = alloca %struct.D_Pass*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.D_Pass* %pp, %struct.D_Pass** %pp.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 4
  %1 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool = icmp ne %struct.D_Reduction* %1, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 4
  %3 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction1, align 8
  %npass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %3, i32 0, i32 9
  %4 = load i32, i32* %npass_code, align 4
  %5 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %5, i32 0, i32 3
  %6 = load i32, i32* %index, align 4
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %index2 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %7, i32 0, i32 3
  %8 = load i32, i32* %index2, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction3 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 4
  %10 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction3, align 8
  %pass_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %10, i32 0, i32 10
  %11 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)**, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*** %pass_code, align 8
  %arrayidx = getelementptr inbounds i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %11, i64 %idxprom
  %12 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %arrayidx, align 8
  %tobool4 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %12, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %13 to i32
  store i32 %land.ext, i32* %found, align 4
  %14 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %kind = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %14, i32 0, i32 2
  %15 = load i32, i32* %kind, align 4
  %and = and i32 %15, 8
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end
  %16 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %kind6 = getelementptr inbounds %struct.D_Pass, %struct.D_Pass* %16, i32 0, i32 2
  %17 = load i32, i32* %kind6, align 4
  %and7 = and i32 %17, 16
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %18 = load i32, i32* %found, align 4
  %tobool10 = icmp ne i32 %18, 0
  br i1 %tobool10, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.9, %land.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %21 = load i32, i32* %n, align 4
  %cmp11 = icmp ult i32 %19, %21
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %23 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children13 = getelementptr inbounds %struct.PNode, %struct.PNode* %25, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children13, i32 0, i32 2
  %26 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx14 = getelementptr inbounds %struct.PNode*, %struct.PNode** %26, i64 %idxprom12
  %27 = load %struct.PNode*, %struct.PNode** %arrayidx14, align 8
  call void @pass_postorder(%struct.Parser* %22, %struct.D_Pass* %23, %struct.PNode* %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true.9, %lor.lhs.false
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %30 = load %struct.D_Pass*, %struct.D_Pass** %pp.addr, align 8
  %31 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  call void @pass_call(%struct.Parser* %29, %struct.D_Pass* %30, %struct.PNode* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define void @null_white_space(%struct.D_Parser* %p, %struct.d_loc_t* %loc, i8** %p_globals) #0 {
entry:
  %p.addr = alloca %struct.D_Parser*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %p_globals.addr = alloca i8**, align 8
  store %struct.D_Parser* %p, %struct.D_Parser** %p.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store i8** %p_globals, i8*** %p_globals.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_Parser* @new_D_Parser(%struct.D_ParserTables* %t, i32 %sizeof_ParseNode_User) #0 {
entry:
  %t.addr = alloca %struct.D_ParserTables*, align 8
  %sizeof_ParseNode_User.addr = alloca i32, align 4
  %p = alloca %struct.Parser*, align 8
  store %struct.D_ParserTables* %t, %struct.D_ParserTables** %t.addr, align 8
  store i32 %sizeof_ParseNode_User, i32* %sizeof_ParseNode_User.addr, align 4
  %call = call noalias i8* @malloc(i64 432) #3
  %0 = bitcast i8* %call to %struct.Parser*
  store %struct.Parser* %0, %struct.Parser** %p, align 8
  %1 = load %struct.Parser*, %struct.Parser** %p, align 8
  %2 = bitcast %struct.Parser* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 432, i32 8, i1 false)
  %3 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t.addr, align 8
  %4 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t1 = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 3
  store %struct.D_ParserTables* %3, %struct.D_ParserTables** %t1, align 8
  %5 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 0
  %loc = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 6
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 4
  store i32 1, i32* %line, align 4
  %6 = load i32, i32* %sizeof_ParseNode_User.addr, align 4
  %7 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user2 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 0
  %sizeof_user_parse_node = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user2, i32 0, i32 8
  store i32 %6, i32* %sizeof_user_parse_node, align 4
  %8 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user3 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 0
  %commit_actions_interval = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user3, i32 0, i32 15
  store i32 100, i32* %commit_actions_interval, align 4
  %9 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user4 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 0
  %syntax_error_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user4, i32 0, i32 3
  store void (%struct.D_Parser*)* @syntax_error_report_fn, void (%struct.D_Parser*)** %syntax_error_fn, align 8
  %10 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user5 = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 0
  %ambiguity_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user5, i32 0, i32 4
  store %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)* @ambiguity_abort_fn, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)** %ambiguity_fn, align 8
  %11 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user6 = getelementptr inbounds %struct.Parser, %struct.Parser* %11, i32 0, i32 0
  %error_recovery = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user6, i32 0, i32 16
  store i32 1, i32* %error_recovery, align 4
  %12 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t.addr, align 8
  %save_parse_tree = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %12, i32 0, i32 9
  %13 = load i32, i32* %save_parse_tree, align 4
  %14 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user7 = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 0
  %save_parse_tree8 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user7, i32 0, i32 9
  store i32 %13, i32* %save_parse_tree8, align 4
  %15 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t9 = getelementptr inbounds %struct.Parser, %struct.Parser* %15, i32 0, i32 3
  %16 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t9, align 8
  %default_white_space = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %16, i32 0, i32 6
  %17 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %default_white_space, align 8
  %tobool = icmp ne void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %17, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %18 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t10 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 3
  %19 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t10, align 8
  %default_white_space11 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %19, i32 0, i32 6
  %20 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %default_white_space11, align 8
  %21 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user12 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 0
  %initial_white_space_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user12, i32 0, i32 1
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %20, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn, align 8
  br label %if.end.21

if.else:                                          ; preds = %entry
  %22 = load %struct.Parser*, %struct.Parser** %p, align 8
  %t13 = getelementptr inbounds %struct.Parser, %struct.Parser* %22, i32 0, i32 3
  %23 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t13, align 8
  %whitespace_state = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %23, i32 0, i32 3
  %24 = load i32, i32* %whitespace_state, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %if.then.15, label %if.else.18

if.then.15:                                       ; preds = %if.else
  %25 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user16 = getelementptr inbounds %struct.Parser, %struct.Parser* %25, i32 0, i32 0
  %initial_white_space_fn17 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user16, i32 0, i32 1
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* @parse_whitespace, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn17, align 8
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %26 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user19 = getelementptr inbounds %struct.Parser, %struct.Parser* %26, i32 0, i32 0
  %initial_white_space_fn20 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user19, i32 0, i32 1
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* @white_space, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn20, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.15
  br label %if.end.21

if.end.21:                                        ; preds = %if.end, %if.then
  %27 = load %struct.Parser*, %struct.Parser** %p, align 8
  %28 = bitcast %struct.Parser* %27 to %struct.D_Parser*
  ret %struct.D_Parser* %28
}

; Function Attrs: nounwind uwtable
define internal void @syntax_error_report_fn(%struct.D_Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.D_Parser*, align 8
  %fn = alloca i8*, align 8
  store %struct.D_Parser* %p, %struct.D_Parser** %p.addr, align 8
  %0 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %loc = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %0, i32 0, i32 6
  %pathname = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 1
  %1 = load i8*, i8** %pathname, align 8
  %call = call i8* @d_dup_pathname_str(i8* %1)
  store i8* %call, i8** %fn, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %3 = load i8*, i8** %fn, align 8
  %4 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %loc1 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %4, i32 0, i32 6
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc1, i32 0, i32 4
  %5 = load i32, i32* %line, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* %3, i32 %5)
  %6 = load i8*, i8** %fn, align 8
  call void @free(i8* %6) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parse_whitespace(%struct.D_Parser* %ap, %struct.d_loc_t* %loc, i8** %p_globals) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %p_globals.addr = alloca i8**, align 8
  %pp = alloca %struct.Parser*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store i8** %p_globals, i8*** %p_globals.addr, align 8
  %0 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %1 = bitcast %struct.D_Parser* %0 to %struct.Parser*
  %whitespace_parser = getelementptr inbounds %struct.Parser, %struct.Parser* %1, i32 0, i32 27
  %2 = load %struct.Parser*, %struct.Parser** %whitespace_parser, align 8
  store %struct.Parser* %2, %struct.Parser** %pp, align 8
  %3 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %3, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %5 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %start = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 1
  store i8* %4, i8** %start, align 8
  %6 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %7 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %8 = bitcast %struct.D_Parser* %7 to %struct.Parser*
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 3
  %9 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %whitespace_state = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %9, i32 0, i32 3
  %10 = load i32, i32* %whitespace_state, align 4
  %call = call i32 @exhaustive_parse(%struct.Parser* %6, i32 %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %accept = getelementptr inbounds %struct.Parser, %struct.Parser* %11, i32 0, i32 16
  %12 = load %struct.SNode*, %struct.SNode** %accept, align 8
  %tobool1 = icmp ne %struct.SNode* %12, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.then
  %13 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %14 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %accept3 = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 16
  %15 = load %struct.SNode*, %struct.SNode** %accept3, align 8
  %loc4 = getelementptr inbounds %struct.SNode, %struct.SNode* %15, i32 0, i32 3
  %16 = bitcast %struct.d_loc_t* %13 to i8*
  %17 = bitcast %struct.d_loc_t* %loc4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %18 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %accept5 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 16
  %19 = load %struct.SNode*, %struct.SNode** %accept5, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %19, i32 0, i32 7
  %20 = load i32, i32* %refcount, align 4
  %dec = add i32 %20, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool6 = icmp ne i32 %dec, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %do.body
  %21 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %22 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %accept8 = getelementptr inbounds %struct.Parser, %struct.Parser* %22, i32 0, i32 16
  %23 = load %struct.SNode*, %struct.SNode** %accept8, align 8
  call void @free_SNode(%struct.Parser* %21, %struct.SNode* %23)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %24 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %accept9 = getelementptr inbounds %struct.Parser, %struct.Parser* %24, i32 0, i32 16
  store %struct.SNode* null, %struct.SNode** %accept9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @white_space(%struct.D_Parser* %p, %struct.d_loc_t* %loc, i8** %p_user_globals) #0 {
entry:
  %p.addr = alloca %struct.D_Parser*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %p_user_globals.addr = alloca i8**, align 8
  %rec = alloca i32, align 4
  %s = alloca i8*, align 8
  %scol = alloca i8*, align 8
  %save = alloca i8*, align 8
  store %struct.D_Parser* %p, %struct.D_Parser** %p.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store i8** %p_user_globals, i8*** %p_user_globals.addr, align 8
  store i32 0, i32* %rec, align 4
  %0 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s1 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %0, i32 0, i32 0
  %1 = load i8*, i8** %s1, align 8
  store i8* %1, i8** %s, align 8
  %2 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %loc2 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %2, i32 0, i32 6
  %s3 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc2, i32 0, i32 0
  %3 = load i8*, i8** %s3, align 8
  %4 = load i8*, i8** %s, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %s, align 8
  store i8* %5, i8** %scol, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* null, i8** %scol, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv, 35
  br i1 %cmp4, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %previous_col = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %8, i32 0, i32 2
  %9 = load i32, i32* %previous_col, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then.8, label %if.end.68

if.then.8:                                        ; preds = %land.lhs.true
  br label %Ldirective

Ldirective:                                       ; preds = %if.then.86, %if.then.8
  %10 = load i8*, i8** %s, align 8
  store i8* %10, i8** %save, align 8
  %11 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Ldirective
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %idxprom = zext i8 %13 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @_wspace, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %15 = load i8*, i8** %s, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr9, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i8*, i8** %s, align 8
  %call = call i32 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* %16, i64 4) #6
  %tobool10 = icmp ne i32 %call, 0
  br i1 %tobool10, label %if.end.25, label %if.then.11

if.then.11:                                       ; preds = %while.end
  %17 = load i8*, i8** %s, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 4
  %18 = load i8, i8* %arrayidx12, align 1
  %idxprom13 = zext i8 %18 to i64
  %arrayidx14 = getelementptr inbounds [256 x i8], [256 x i8]* @_wspace, i32 0, i64 %idxprom13
  %19 = load i8, i8* %arrayidx14, align 1
  %tobool15 = icmp ne i8 %19, 0
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %if.then.11
  %20 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 5
  store i8* %add.ptr, i8** %s, align 8
  br label %while.cond.17

while.cond.17:                                    ; preds = %while.body.21, %if.then.16
  %21 = load i8*, i8** %s, align 8
  %22 = load i8, i8* %21, align 1
  %idxprom18 = zext i8 %22 to i64
  %arrayidx19 = getelementptr inbounds [256 x i8], [256 x i8]* @_wspace, i32 0, i64 %idxprom18
  %23 = load i8, i8* %arrayidx19, align 1
  %tobool20 = icmp ne i8 %23, 0
  br i1 %tobool20, label %while.body.21, label %while.end.23

while.body.21:                                    ; preds = %while.cond.17
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr22, i8** %s, align 8
  br label %while.cond.17

while.end.23:                                     ; preds = %while.cond.17
  br label %if.end.24

if.end.24:                                        ; preds = %while.end.23, %if.then.11
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %while.end
  %25 = load i8*, i8** %s, align 8
  %26 = load i8, i8* %25, align 1
  %conv26 = sext i8 %26 to i32
  %idxprom27 = sext i32 %conv26 to i64
  %call28 = call i16** @__ctype_b_loc() #7
  %27 = load i16*, i16** %call28, align 8
  %arrayidx29 = getelementptr inbounds i16, i16* %27, i64 %idxprom27
  %28 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %28 to i32
  %and = and i32 %conv30, 2048
  %tobool31 = icmp ne i32 %and, 0
  br i1 %tobool31, label %if.then.32, label %if.else.57

if.then.32:                                       ; preds = %if.end.25
  %29 = load i8*, i8** %s, align 8
  %call33 = call i32 @atoi(i8* %29) #6
  %sub = sub nsw i32 %call33, 1
  %30 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %30, i32 0, i32 4
  store i32 %sub, i32* %line, align 4
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.42, %if.then.32
  %31 = load i8*, i8** %s, align 8
  %32 = load i8, i8* %31, align 1
  %conv35 = sext i8 %32 to i32
  %idxprom36 = sext i32 %conv35 to i64
  %call37 = call i16** @__ctype_b_loc() #7
  %33 = load i16*, i16** %call37, align 8
  %arrayidx38 = getelementptr inbounds i16, i16* %33, i64 %idxprom36
  %34 = load i16, i16* %arrayidx38, align 2
  %conv39 = zext i16 %34 to i32
  %and40 = and i32 %conv39, 2048
  %tobool41 = icmp ne i32 %and40, 0
  br i1 %tobool41, label %while.body.42, label %while.end.44

while.body.42:                                    ; preds = %while.cond.34
  %35 = load i8*, i8** %s, align 8
  %incdec.ptr43 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr43, i8** %s, align 8
  br label %while.cond.34

while.end.44:                                     ; preds = %while.cond.34
  br label %while.cond.45

while.cond.45:                                    ; preds = %while.body.49, %while.end.44
  %36 = load i8*, i8** %s, align 8
  %37 = load i8, i8* %36, align 1
  %idxprom46 = zext i8 %37 to i64
  %arrayidx47 = getelementptr inbounds [256 x i8], [256 x i8]* @_wspace, i32 0, i64 %idxprom46
  %38 = load i8, i8* %arrayidx47, align 1
  %tobool48 = icmp ne i8 %38, 0
  br i1 %tobool48, label %while.body.49, label %while.end.51

while.body.49:                                    ; preds = %while.cond.45
  %39 = load i8*, i8** %s, align 8
  %incdec.ptr50 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr50, i8** %s, align 8
  br label %while.cond.45

while.end.51:                                     ; preds = %while.cond.45
  %40 = load i8*, i8** %s, align 8
  %41 = load i8, i8* %40, align 1
  %conv52 = sext i8 %41 to i32
  %cmp53 = icmp eq i32 %conv52, 34
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %while.end.51
  %42 = load i8*, i8** %s, align 8
  %43 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %pathname = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %43, i32 0, i32 1
  store i8* %42, i8** %pathname, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %while.end.51
  br label %if.end.58

if.else.57:                                       ; preds = %if.end.25
  %44 = load i8*, i8** %save, align 8
  store i8* %44, i8** %s, align 8
  br label %Ldone

if.end.58:                                        ; preds = %if.end.56
  br label %while.cond.59

while.cond.59:                                    ; preds = %while.body.65, %if.end.58
  %45 = load i8*, i8** %s, align 8
  %46 = load i8, i8* %45, align 1
  %conv60 = sext i8 %46 to i32
  %tobool61 = icmp ne i32 %conv60, 0
  br i1 %tobool61, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.59
  %47 = load i8*, i8** %s, align 8
  %48 = load i8, i8* %47, align 1
  %conv62 = sext i8 %48 to i32
  %cmp63 = icmp ne i32 %conv62, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.59
  %49 = phi i1 [ false, %while.cond.59 ], [ %cmp63, %land.rhs ]
  br i1 %49, label %while.body.65, label %while.end.67

while.body.65:                                    ; preds = %land.end
  %50 = load i8*, i8** %s, align 8
  %incdec.ptr66 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr66, i8** %s, align 8
  br label %while.cond.59

while.end.67:                                     ; preds = %land.end
  br label %if.end.68

if.end.68:                                        ; preds = %while.end.67, %land.lhs.true, %if.end
  br label %Lmore

Lmore:                                            ; preds = %if.then.136, %while.end.109, %if.else.87, %if.end.68
  br label %while.cond.69

while.cond.69:                                    ; preds = %while.body.73, %Lmore
  %51 = load i8*, i8** %s, align 8
  %52 = load i8, i8* %51, align 1
  %idxprom70 = zext i8 %52 to i64
  %arrayidx71 = getelementptr inbounds [256 x i8], [256 x i8]* @_wspace, i32 0, i64 %idxprom70
  %53 = load i8, i8* %arrayidx71, align 1
  %tobool72 = icmp ne i8 %53, 0
  br i1 %tobool72, label %while.body.73, label %while.end.75

while.body.73:                                    ; preds = %while.cond.69
  %54 = load i8*, i8** %s, align 8
  %incdec.ptr74 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr74, i8** %s, align 8
  br label %while.cond.69

while.end.75:                                     ; preds = %while.cond.69
  %55 = load i8*, i8** %s, align 8
  %56 = load i8, i8* %55, align 1
  %conv76 = sext i8 %56 to i32
  %cmp77 = icmp eq i32 %conv76, 10
  br i1 %cmp77, label %if.then.79, label %if.end.88

if.then.79:                                       ; preds = %while.end.75
  %57 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line80 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %57, i32 0, i32 4
  %58 = load i32, i32* %line80, align 4
  %inc = add nsw i32 %58, 1
  store i32 %inc, i32* %line80, align 4
  %59 = load i8*, i8** %s, align 8
  %add.ptr81 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %add.ptr81, i8** %scol, align 8
  %60 = load i8*, i8** %s, align 8
  %incdec.ptr82 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %incdec.ptr82, i8** %s, align 8
  %61 = load i8*, i8** %s, align 8
  %62 = load i8, i8* %61, align 1
  %conv83 = sext i8 %62 to i32
  %cmp84 = icmp eq i32 %conv83, 35
  br i1 %cmp84, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.then.79
  br label %Ldirective

if.else.87:                                       ; preds = %if.then.79
  br label %Lmore

if.end.88:                                        ; preds = %while.end.75
  %63 = load i8*, i8** %s, align 8
  %arrayidx89 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx89, align 1
  %conv90 = sext i8 %64 to i32
  %cmp91 = icmp eq i32 %conv90, 47
  br i1 %cmp91, label %if.then.93, label %if.end.162

if.then.93:                                       ; preds = %if.end.88
  %65 = load i8*, i8** %s, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %65, i64 1
  %66 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %66 to i32
  %cmp96 = icmp eq i32 %conv95, 47
  br i1 %cmp96, label %if.then.98, label %if.end.113

if.then.98:                                       ; preds = %if.then.93
  br label %while.cond.99

while.cond.99:                                    ; preds = %while.body.107, %if.then.98
  %67 = load i8*, i8** %s, align 8
  %68 = load i8, i8* %67, align 1
  %conv100 = sext i8 %68 to i32
  %tobool101 = icmp ne i32 %conv100, 0
  br i1 %tobool101, label %land.rhs.102, label %land.end.106

land.rhs.102:                                     ; preds = %while.cond.99
  %69 = load i8*, i8** %s, align 8
  %70 = load i8, i8* %69, align 1
  %conv103 = sext i8 %70 to i32
  %cmp104 = icmp ne i32 %conv103, 10
  br label %land.end.106

land.end.106:                                     ; preds = %land.rhs.102, %while.cond.99
  %71 = phi i1 [ false, %while.cond.99 ], [ %cmp104, %land.rhs.102 ]
  br i1 %71, label %while.body.107, label %while.end.109

while.body.107:                                   ; preds = %land.end.106
  %72 = load i8*, i8** %s, align 8
  %incdec.ptr108 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %incdec.ptr108, i8** %s, align 8
  br label %while.cond.99

while.end.109:                                    ; preds = %land.end.106
  %73 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line110 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %73, i32 0, i32 4
  %74 = load i32, i32* %line110, align 4
  %inc111 = add nsw i32 %74, 1
  store i32 %inc111, i32* %line110, align 4
  %75 = load i8*, i8** %s, align 8
  %incdec.ptr112 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr112, i8** %s, align 8
  br label %Lmore

if.end.113:                                       ; preds = %if.then.93
  %76 = load i8*, i8** %s, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %76, i64 1
  %77 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %77 to i32
  %cmp116 = icmp eq i32 %conv115, 42
  br i1 %cmp116, label %if.then.118, label %if.end.161

if.then.118:                                      ; preds = %if.end.113
  %78 = load i8*, i8** %s, align 8
  %add.ptr119 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %add.ptr119, i8** %s, align 8
  br label %LnestComment

LnestComment:                                     ; preds = %if.then.148, %if.then.118
  %79 = load i32, i32* %rec, align 4
  %inc120 = add nsw i32 %79, 1
  store i32 %inc120, i32* %rec, align 4
  br label %LmoreComment

LmoreComment:                                     ; preds = %if.end.137, %LnestComment
  br label %while.cond.121

while.cond.121:                                   ; preds = %if.end.158, %LmoreComment
  %80 = load i8*, i8** %s, align 8
  %81 = load i8, i8* %80, align 1
  %tobool122 = icmp ne i8 %81, 0
  br i1 %tobool122, label %while.body.123, label %while.end.160

while.body.123:                                   ; preds = %while.cond.121
  %82 = load i8*, i8** %s, align 8
  %arrayidx124 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %83 to i32
  %cmp126 = icmp eq i32 %conv125, 42
  br i1 %cmp126, label %land.lhs.true.128, label %if.end.138

land.lhs.true.128:                                ; preds = %while.body.123
  %84 = load i8*, i8** %s, align 8
  %arrayidx129 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx129, align 1
  %conv130 = sext i8 %85 to i32
  %cmp131 = icmp eq i32 %conv130, 47
  br i1 %cmp131, label %if.then.133, label %if.end.138

if.then.133:                                      ; preds = %land.lhs.true.128
  %86 = load i8*, i8** %s, align 8
  %add.ptr134 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %add.ptr134, i8** %s, align 8
  %87 = load i32, i32* %rec, align 4
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %rec, align 4
  %88 = load i32, i32* %rec, align 4
  %tobool135 = icmp ne i32 %88, 0
  br i1 %tobool135, label %if.end.137, label %if.then.136

if.then.136:                                      ; preds = %if.then.133
  br label %Lmore

if.end.137:                                       ; preds = %if.then.133
  br label %LmoreComment

if.end.138:                                       ; preds = %land.lhs.true.128, %while.body.123
  %89 = load i8*, i8** %s, align 8
  %arrayidx139 = getelementptr inbounds i8, i8* %89, i64 0
  %90 = load i8, i8* %arrayidx139, align 1
  %conv140 = sext i8 %90 to i32
  %cmp141 = icmp eq i32 %conv140, 47
  br i1 %cmp141, label %land.lhs.true.143, label %if.end.150

land.lhs.true.143:                                ; preds = %if.end.138
  %91 = load i8*, i8** %s, align 8
  %arrayidx144 = getelementptr inbounds i8, i8* %91, i64 1
  %92 = load i8, i8* %arrayidx144, align 1
  %conv145 = sext i8 %92 to i32
  %cmp146 = icmp eq i32 %conv145, 42
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %land.lhs.true.143
  %93 = load i8*, i8** %s, align 8
  %add.ptr149 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %add.ptr149, i8** %s, align 8
  br label %LnestComment

if.end.150:                                       ; preds = %land.lhs.true.143, %if.end.138
  %94 = load i8*, i8** %s, align 8
  %95 = load i8, i8* %94, align 1
  %conv151 = sext i8 %95 to i32
  %cmp152 = icmp eq i32 %conv151, 10
  br i1 %cmp152, label %if.then.154, label %if.end.158

if.then.154:                                      ; preds = %if.end.150
  %96 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %line155 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %96, i32 0, i32 4
  %97 = load i32, i32* %line155, align 4
  %inc156 = add nsw i32 %97, 1
  store i32 %inc156, i32* %line155, align 4
  %98 = load i8*, i8** %s, align 8
  %add.ptr157 = getelementptr inbounds i8, i8* %98, i64 1
  store i8* %add.ptr157, i8** %scol, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.154, %if.end.150
  %99 = load i8*, i8** %s, align 8
  %incdec.ptr159 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %incdec.ptr159, i8** %s, align 8
  br label %while.cond.121

while.end.160:                                    ; preds = %while.cond.121
  br label %if.end.161

if.end.161:                                       ; preds = %while.end.160, %if.end.113
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.end.88
  br label %Ldone

Ldone:                                            ; preds = %if.end.162, %if.else.57
  %100 = load i8*, i8** %scol, align 8
  %tobool163 = icmp ne i8* %100, null
  br i1 %tobool163, label %if.then.164, label %if.else.166

if.then.164:                                      ; preds = %Ldone
  %101 = load i8*, i8** %s, align 8
  %102 = load i8*, i8** %scol, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %101 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %102 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv165 = trunc i64 %sub.ptr.sub to i32
  %103 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %col = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %103, i32 0, i32 3
  store i32 %conv165, i32* %col, align 4
  br label %if.end.168

if.else.166:                                      ; preds = %Ldone
  %104 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %col167 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %104, i32 0, i32 3
  store i32 -1, i32* %col167, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.166, %if.then.164
  %105 = load i8*, i8** %s, align 8
  %106 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %s169 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %106, i32 0, i32 0
  store i8* %105, i8** %s169, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_D_Parser(%struct.D_Parser* %ap) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %p = alloca %struct.Parser*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  %0 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %1 = bitcast %struct.D_Parser* %0 to %struct.Parser*
  store %struct.Parser* %1, %struct.Parser** %p, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 15
  %3 = load %struct.D_Scope*, %struct.D_Scope** %top_scope, align 8
  %tobool = icmp ne %struct.D_Scope* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 0
  %initial_scope = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 2
  %5 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %tobool1 = icmp ne %struct.D_Scope* %5, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope2 = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 15
  %7 = load %struct.D_Scope*, %struct.D_Scope** %top_scope2, align 8
  call void @free_D_Scope(%struct.D_Scope* %7, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.Parser*, %struct.Parser** %p, align 8
  %whitespace_parser = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 27
  %9 = load %struct.Parser*, %struct.Parser** %whitespace_parser, align 8
  %tobool3 = icmp ne %struct.Parser* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %10 = load %struct.Parser*, %struct.Parser** %p, align 8
  %whitespace_parser5 = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 27
  %11 = load %struct.Parser*, %struct.Parser** %whitespace_parser5, align 8
  %12 = bitcast %struct.Parser* %11 to %struct.D_Parser*
  call void @free_D_Parser(%struct.D_Parser* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %13 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %14 = bitcast %struct.D_Parser* %13 to i8*
  call void @free(i8* %14) #3
  ret void
}

declare void @free_D_Scope(%struct.D_Scope*, i32) #1

; Function Attrs: nounwind uwtable
define void @free_D_ParseNode(%struct.D_Parser* %p, %struct.D_ParseNode* %dpn) #0 {
entry:
  %p.addr = alloca %struct.D_Parser*, align 8
  %dpn.addr = alloca %struct.D_ParseNode*, align 8
  store %struct.D_Parser* %p, %struct.D_Parser** %p.addr, align 8
  store %struct.D_ParseNode* %dpn, %struct.D_ParseNode** %dpn.addr, align 8
  %0 = load %struct.D_ParseNode*, %struct.D_ParseNode** %dpn.addr, align 8
  %cmp = icmp ne %struct.D_ParseNode* %0, inttoptr (i64 1 to %struct.D_ParseNode*)
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.D_ParseNode*, %struct.D_ParseNode** %dpn.addr, align 8
  %2 = bitcast %struct.D_ParseNode* %1 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32) to i64))
  %3 = bitcast i8* %add.ptr to %struct.PNode*
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %3, i32 0, i32 6
  %4 = load i32, i32* %refcount, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then.1

if.then.1:                                        ; preds = %do.body
  %5 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %6 = bitcast %struct.D_Parser* %5 to %struct.Parser*
  %7 = load %struct.D_ParseNode*, %struct.D_ParseNode** %dpn.addr, align 8
  %8 = bitcast %struct.D_ParseNode* %7 to i8*
  %add.ptr2 = getelementptr inbounds i8, i8* %8, i64 sub (i64 0, i64 sext (i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32) to i64))
  %9 = bitcast i8* %add.ptr2 to %struct.PNode*
  call void @free_PNode(%struct.Parser* %6, %struct.PNode* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.1, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct.D_Parser*, %struct.D_Parser** %p.addr, align 8
  %11 = bitcast %struct.D_Parser* %10 to %struct.Parser*
  call void @free_parser_working_data(%struct.Parser* %11)
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_PNode(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %amb = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 0
  %free_node_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 5
  %1 = load void (%struct.D_ParseNode*)*, void (%struct.D_ParseNode*)** %free_node_fn, align 8
  %tobool = icmp ne void (%struct.D_ParseNode*)* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user1 = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 0
  %free_node_fn2 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user1, i32 0, i32 5
  %3 = load void (%struct.D_ParseNode*)*, void (%struct.D_ParseNode*)** %free_node_fn2, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 19
  call void %3(%struct.D_ParseNode* %parse_node)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 2
  %10 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %10, i64 %idxprom
  %11 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 6
  %12 = load i32, i32* %refcount, align 4
  %dec = add i32 %12, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool4 = icmp ne i32 %dec, 0
  br i1 %tobool4, label %if.end.10, label %if.then.5

if.then.5:                                        ; preds = %do.body
  %13 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children7 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 7
  %v8 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children7, i32 0, i32 2
  %16 = load %struct.PNode**, %struct.PNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.PNode*, %struct.PNode** %16, i64 %idxprom6
  %17 = load %struct.PNode*, %struct.PNode** %arrayidx9, align 8
  call void @free_PNode(%struct.Parser* %13, %struct.PNode* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.11

do.body.11:                                       ; preds = %for.end
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children12 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 7
  %v13 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children12, i32 0, i32 2
  %20 = load %struct.PNode**, %struct.PNode*** %v13, align 8
  %tobool14 = icmp ne %struct.PNode** %20, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %do.body.11
  %21 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children15 = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 7
  %v16 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children15, i32 0, i32 2
  %22 = load %struct.PNode**, %struct.PNode*** %v16, align 8
  %23 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children17 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 7
  %e = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children17, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e, i32 0, i32 0
  %cmp18 = icmp ne %struct.PNode** %22, %arraydecay
  br i1 %cmp18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %land.lhs.true
  %24 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children20 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 7
  %v21 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children20, i32 0, i32 2
  %25 = load %struct.PNode**, %struct.PNode*** %v21, align 8
  %26 = bitcast %struct.PNode** %25 to i8*
  call void @free(i8* %26) #3
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %land.lhs.true, %do.body.11
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %27 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children24 = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 7
  %n25 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children24, i32 0, i32 0
  store i32 0, i32* %n25, align 4
  %28 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children26 = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 7
  %v27 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children26, i32 0, i32 2
  store %struct.PNode** null, %struct.PNode*** %v27, align 8
  br label %do.end.28

do.end.28:                                        ; preds = %do.body.23
  br label %do.end.29

do.end.29:                                        ; preds = %do.end.28
  %29 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 13
  %30 = load %struct.PNode*, %struct.PNode** %ambiguities, align 8
  store %struct.PNode* %30, %struct.PNode** %amb, align 8
  %tobool30 = icmp ne %struct.PNode* %30, null
  br i1 %tobool30, label %if.then.31, label %if.end.33

if.then.31:                                       ; preds = %do.end.29
  %31 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities32 = getelementptr inbounds %struct.PNode, %struct.PNode* %31, i32 0, i32 13
  store %struct.PNode* null, %struct.PNode** %ambiguities32, align 8
  %32 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %33 = load %struct.PNode*, %struct.PNode** %amb, align 8
  call void @free_PNode(%struct.Parser* %32, %struct.PNode* %33)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.end.29
  %34 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %34, i32 0, i32 14
  %35 = load %struct.PNode*, %struct.PNode** %latest, align 8
  %36 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %cmp34 = icmp ne %struct.PNode* %35, %36
  br i1 %cmp34, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %if.end.33
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %37 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %latest37 = getelementptr inbounds %struct.PNode, %struct.PNode* %37, i32 0, i32 14
  %38 = load %struct.PNode*, %struct.PNode** %latest37, align 8
  %refcount38 = getelementptr inbounds %struct.PNode, %struct.PNode* %38, i32 0, i32 6
  %39 = load i32, i32* %refcount38, align 4
  %dec39 = add i32 %39, -1
  store i32 %dec39, i32* %refcount38, align 4
  %tobool40 = icmp ne i32 %dec39, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %do.body.36
  %40 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %41 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %latest42 = getelementptr inbounds %struct.PNode, %struct.PNode* %41, i32 0, i32 14
  %42 = load %struct.PNode*, %struct.PNode** %latest42, align 8
  call void @free_PNode(%struct.Parser* %40, %struct.PNode* %42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.body.36
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %if.end.33
  %43 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes = getelementptr inbounds %struct.Parser, %struct.Parser* %43, i32 0, i32 21
  %44 = load %struct.PNode*, %struct.PNode** %free_pnodes, align 8
  %45 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %all_next = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 11
  store %struct.PNode* %44, %struct.PNode** %all_next, align 8
  %46 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %47 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes46 = getelementptr inbounds %struct.Parser, %struct.Parser* %47, i32 0, i32 21
  store %struct.PNode* %46, %struct.PNode** %free_pnodes46, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_parser_working_data(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %i = alloca i32, align 4
  %r = alloca %struct.Reduction*, align 8
  %s = alloca %struct.Shift*, align 8
  %r42 = alloca %struct.Reduction*, align 8
  %s52 = alloca %struct.Shift*, align 8
  %pn = alloca %struct.PNode*, align 8
  %zn = alloca %struct.ZNode*, align 8
  %sn = alloca %struct.SNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @free_old_nodes(%struct.Parser* %0)
  %1 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @free_old_nodes(%struct.Parser* %1)
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 11
  %v = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash, i32 0, i32 0
  %3 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %tobool = icmp ne %struct.PNode** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash1 = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 11
  %v2 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash1, i32 0, i32 0
  %5 = load %struct.PNode**, %struct.PNode*** %v2, align 8
  %6 = bitcast %struct.PNode** %5 to i8*
  call void @free(i8* %6) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 12
  %v3 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash, i32 0, i32 0
  %8 = load %struct.SNode**, %struct.SNode*** %v3, align 8
  %tobool4 = icmp ne %struct.SNode** %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash6 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 12
  %v7 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash6, i32 0, i32 0
  %10 = load %struct.SNode**, %struct.SNode*** %v7, align 8
  %11 = bitcast %struct.SNode** %10 to i8*
  call void @free(i8* %11) #3
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %12 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash9 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 11
  %13 = bitcast %struct.PNodeHash* %pnode_hash9 to i8*
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 32, i32 8, i1 false)
  %14 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash10 = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 12
  %15 = bitcast %struct.SNodeHash* %snode_hash10 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 40, i32 8, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end.8
  %16 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %16, i32 0, i32 13
  %17 = load %struct.Reduction*, %struct.Reduction** %reductions_todo, align 8
  %tobool11 = icmp ne %struct.Reduction* %17, null
  br i1 %tobool11, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 18
  %19 = load %struct.Reduction*, %struct.Reduction** %free_reductions, align 8
  %next = getelementptr inbounds %struct.Reduction, %struct.Reduction* %19, i32 0, i32 5
  %20 = load %struct.Reduction*, %struct.Reduction** %next, align 8
  store %struct.Reduction* %20, %struct.Reduction** %r, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %21 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo12 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 13
  %22 = load %struct.Reduction*, %struct.Reduction** %reductions_todo12, align 8
  %snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %22, i32 0, i32 1
  %23 = load %struct.SNode*, %struct.SNode** %snode, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %23, i32 0, i32 7
  %24 = load i32, i32* %refcount, align 4
  %dec = add i32 %24, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool13 = icmp ne i32 %dec, 0
  br i1 %tobool13, label %if.end.17, label %if.then.14

if.then.14:                                       ; preds = %do.body
  %25 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %26 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo15 = getelementptr inbounds %struct.Parser, %struct.Parser* %26, i32 0, i32 13
  %27 = load %struct.Reduction*, %struct.Reduction** %reductions_todo15, align 8
  %snode16 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %27, i32 0, i32 1
  %28 = load %struct.SNode*, %struct.SNode** %snode16, align 8
  call void @free_SNode(%struct.Parser* %25, %struct.SNode* %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions18 = getelementptr inbounds %struct.Parser, %struct.Parser* %29, i32 0, i32 18
  %30 = load %struct.Reduction*, %struct.Reduction** %free_reductions18, align 8
  %31 = bitcast %struct.Reduction* %30 to i8*
  call void @free(i8* %31) #3
  %32 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %33 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions19 = getelementptr inbounds %struct.Parser, %struct.Parser* %33, i32 0, i32 18
  store %struct.Reduction* %32, %struct.Reduction** %free_reductions19, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.20

while.cond.20:                                    ; preds = %do.end.34, %while.end
  %34 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %34, i32 0, i32 14
  %35 = load %struct.Shift*, %struct.Shift** %shifts_todo, align 8
  %tobool21 = icmp ne %struct.Shift* %35, null
  br i1 %tobool21, label %while.body.22, label %while.end.37

while.body.22:                                    ; preds = %while.cond.20
  %36 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts = getelementptr inbounds %struct.Parser, %struct.Parser* %36, i32 0, i32 19
  %37 = load %struct.Shift*, %struct.Shift** %free_shifts, align 8
  %next23 = getelementptr inbounds %struct.Shift, %struct.Shift* %37, i32 0, i32 1
  %38 = load %struct.Shift*, %struct.Shift** %next23, align 8
  store %struct.Shift* %38, %struct.Shift** %s, align 8
  br label %do.body.24

do.body.24:                                       ; preds = %while.body.22
  %39 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo25 = getelementptr inbounds %struct.Parser, %struct.Parser* %39, i32 0, i32 14
  %40 = load %struct.Shift*, %struct.Shift** %shifts_todo25, align 8
  %snode26 = getelementptr inbounds %struct.Shift, %struct.Shift* %40, i32 0, i32 0
  %41 = load %struct.SNode*, %struct.SNode** %snode26, align 8
  %refcount27 = getelementptr inbounds %struct.SNode, %struct.SNode* %41, i32 0, i32 7
  %42 = load i32, i32* %refcount27, align 4
  %dec28 = add i32 %42, -1
  store i32 %dec28, i32* %refcount27, align 4
  %tobool29 = icmp ne i32 %dec28, 0
  br i1 %tobool29, label %if.end.33, label %if.then.30

if.then.30:                                       ; preds = %do.body.24
  %43 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %44 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo31 = getelementptr inbounds %struct.Parser, %struct.Parser* %44, i32 0, i32 14
  %45 = load %struct.Shift*, %struct.Shift** %shifts_todo31, align 8
  %snode32 = getelementptr inbounds %struct.Shift, %struct.Shift* %45, i32 0, i32 0
  %46 = load %struct.SNode*, %struct.SNode** %snode32, align 8
  call void @free_SNode(%struct.Parser* %43, %struct.SNode* %46)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %do.body.24
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %47 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts35 = getelementptr inbounds %struct.Parser, %struct.Parser* %47, i32 0, i32 19
  %48 = load %struct.Shift*, %struct.Shift** %free_shifts35, align 8
  %49 = bitcast %struct.Shift* %48 to i8*
  call void @free(i8* %49) #3
  %50 = load %struct.Shift*, %struct.Shift** %s, align 8
  %51 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts36 = getelementptr inbounds %struct.Parser, %struct.Parser* %51, i32 0, i32 19
  store %struct.Shift* %50, %struct.Shift** %free_shifts36, align 8
  br label %while.cond.20

while.end.37:                                     ; preds = %while.cond.20
  br label %while.cond.38

while.cond.38:                                    ; preds = %while.body.41, %while.end.37
  %52 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions39 = getelementptr inbounds %struct.Parser, %struct.Parser* %52, i32 0, i32 18
  %53 = load %struct.Reduction*, %struct.Reduction** %free_reductions39, align 8
  %tobool40 = icmp ne %struct.Reduction* %53, null
  br i1 %tobool40, label %while.body.41, label %while.end.47

while.body.41:                                    ; preds = %while.cond.38
  %54 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions43 = getelementptr inbounds %struct.Parser, %struct.Parser* %54, i32 0, i32 18
  %55 = load %struct.Reduction*, %struct.Reduction** %free_reductions43, align 8
  %next44 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %55, i32 0, i32 5
  %56 = load %struct.Reduction*, %struct.Reduction** %next44, align 8
  store %struct.Reduction* %56, %struct.Reduction** %r42, align 8
  %57 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions45 = getelementptr inbounds %struct.Parser, %struct.Parser* %57, i32 0, i32 18
  %58 = load %struct.Reduction*, %struct.Reduction** %free_reductions45, align 8
  %59 = bitcast %struct.Reduction* %58 to i8*
  call void @free(i8* %59) #3
  %60 = load %struct.Reduction*, %struct.Reduction** %r42, align 8
  %61 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions46 = getelementptr inbounds %struct.Parser, %struct.Parser* %61, i32 0, i32 18
  store %struct.Reduction* %60, %struct.Reduction** %free_reductions46, align 8
  br label %while.cond.38

while.end.47:                                     ; preds = %while.cond.38
  br label %while.cond.48

while.cond.48:                                    ; preds = %while.body.51, %while.end.47
  %62 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts49 = getelementptr inbounds %struct.Parser, %struct.Parser* %62, i32 0, i32 19
  %63 = load %struct.Shift*, %struct.Shift** %free_shifts49, align 8
  %tobool50 = icmp ne %struct.Shift* %63, null
  br i1 %tobool50, label %while.body.51, label %while.end.57

while.body.51:                                    ; preds = %while.cond.48
  %64 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts53 = getelementptr inbounds %struct.Parser, %struct.Parser* %64, i32 0, i32 19
  %65 = load %struct.Shift*, %struct.Shift** %free_shifts53, align 8
  %next54 = getelementptr inbounds %struct.Shift, %struct.Shift* %65, i32 0, i32 1
  %66 = load %struct.Shift*, %struct.Shift** %next54, align 8
  store %struct.Shift* %66, %struct.Shift** %s52, align 8
  %67 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts55 = getelementptr inbounds %struct.Parser, %struct.Parser* %67, i32 0, i32 19
  %68 = load %struct.Shift*, %struct.Shift** %free_shifts55, align 8
  %69 = bitcast %struct.Shift* %68 to i8*
  call void @free(i8* %69) #3
  %70 = load %struct.Shift*, %struct.Shift** %s52, align 8
  %71 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts56 = getelementptr inbounds %struct.Parser, %struct.Parser* %71, i32 0, i32 19
  store %struct.Shift* %70, %struct.Shift** %free_shifts56, align 8
  br label %while.cond.48

while.end.57:                                     ; preds = %while.cond.48
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.60, %while.end.57
  %72 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes = getelementptr inbounds %struct.Parser, %struct.Parser* %72, i32 0, i32 21
  %73 = load %struct.PNode*, %struct.PNode** %free_pnodes, align 8
  %tobool59 = icmp ne %struct.PNode* %73, null
  br i1 %tobool59, label %while.body.60, label %while.end.64

while.body.60:                                    ; preds = %while.cond.58
  %74 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes61 = getelementptr inbounds %struct.Parser, %struct.Parser* %74, i32 0, i32 21
  %75 = load %struct.PNode*, %struct.PNode** %free_pnodes61, align 8
  %all_next = getelementptr inbounds %struct.PNode, %struct.PNode* %75, i32 0, i32 11
  %76 = load %struct.PNode*, %struct.PNode** %all_next, align 8
  store %struct.PNode* %76, %struct.PNode** %pn, align 8
  %77 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes62 = getelementptr inbounds %struct.Parser, %struct.Parser* %77, i32 0, i32 21
  %78 = load %struct.PNode*, %struct.PNode** %free_pnodes62, align 8
  %79 = bitcast %struct.PNode* %78 to i8*
  call void @free(i8* %79) #3
  %80 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %81 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes63 = getelementptr inbounds %struct.Parser, %struct.Parser* %81, i32 0, i32 21
  store %struct.PNode* %80, %struct.PNode** %free_pnodes63, align 8
  br label %while.cond.58

while.end.64:                                     ; preds = %while.cond.58
  br label %while.cond.65

while.cond.65:                                    ; preds = %while.body.67, %while.end.64
  %82 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes = getelementptr inbounds %struct.Parser, %struct.Parser* %82, i32 0, i32 23
  %83 = load %struct.ZNode*, %struct.ZNode** %free_znodes, align 8
  %tobool66 = icmp ne %struct.ZNode* %83, null
  br i1 %tobool66, label %while.body.67, label %while.end.72

while.body.67:                                    ; preds = %while.cond.65
  %84 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes68 = getelementptr inbounds %struct.Parser, %struct.Parser* %84, i32 0, i32 23
  %85 = load %struct.ZNode*, %struct.ZNode** %free_znodes68, align 8
  %pn69 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %85, i32 0, i32 0
  %86 = bitcast %struct.PNode** %pn69 to %struct.ZNode**
  %87 = load %struct.ZNode*, %struct.ZNode** %86, align 8
  store %struct.ZNode* %87, %struct.ZNode** %zn, align 8
  %88 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes70 = getelementptr inbounds %struct.Parser, %struct.Parser* %88, i32 0, i32 23
  %89 = load %struct.ZNode*, %struct.ZNode** %free_znodes70, align 8
  %90 = bitcast %struct.ZNode* %89 to i8*
  call void @free(i8* %90) #3
  %91 = load %struct.ZNode*, %struct.ZNode** %zn, align 8
  %92 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes71 = getelementptr inbounds %struct.Parser, %struct.Parser* %92, i32 0, i32 23
  store %struct.ZNode* %91, %struct.ZNode** %free_znodes71, align 8
  br label %while.cond.65

while.end.72:                                     ; preds = %while.cond.65
  br label %while.cond.73

while.cond.73:                                    ; preds = %while.body.75, %while.end.72
  %93 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes = getelementptr inbounds %struct.Parser, %struct.Parser* %93, i32 0, i32 22
  %94 = load %struct.SNode*, %struct.SNode** %free_snodes, align 8
  %tobool74 = icmp ne %struct.SNode* %94, null
  br i1 %tobool74, label %while.body.75, label %while.end.80

while.body.75:                                    ; preds = %while.cond.73
  %95 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes76 = getelementptr inbounds %struct.Parser, %struct.Parser* %95, i32 0, i32 22
  %96 = load %struct.SNode*, %struct.SNode** %free_snodes76, align 8
  %all_next77 = getelementptr inbounds %struct.SNode, %struct.SNode* %96, i32 0, i32 9
  %97 = load %struct.SNode*, %struct.SNode** %all_next77, align 8
  store %struct.SNode* %97, %struct.SNode** %sn, align 8
  %98 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes78 = getelementptr inbounds %struct.Parser, %struct.Parser* %98, i32 0, i32 22
  %99 = load %struct.SNode*, %struct.SNode** %free_snodes78, align 8
  %100 = bitcast %struct.SNode* %99 to i8*
  call void @free(i8* %100) #3
  %101 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %102 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes79 = getelementptr inbounds %struct.Parser, %struct.Parser* %102, i32 0, i32 22
  store %struct.SNode* %101, %struct.SNode** %free_snodes79, align 8
  br label %while.cond.73

while.end.80:                                     ; preds = %while.cond.73
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.80
  %103 = load i32, i32* %i, align 4
  %104 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %104, i32 0, i32 24
  %n = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions, i32 0, i32 0
  %105 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %103, %105
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %106 = load i32, i32* %i, align 4
  %idxprom = sext i32 %106 to i64
  %107 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions81 = getelementptr inbounds %struct.Parser, %struct.Parser* %107, i32 0, i32 24
  %v82 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions81, i32 0, i32 2
  %108 = load %struct.D_Reduction**, %struct.D_Reduction*** %v82, align 8
  %arrayidx = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %108, i64 %idxprom
  %109 = load %struct.D_Reduction*, %struct.D_Reduction** %arrayidx, align 8
  %110 = bitcast %struct.D_Reduction* %109 to i8*
  call void @free(i8* %110) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %111 = load i32, i32* %i, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.83

do.body.83:                                       ; preds = %for.end
  %112 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions84 = getelementptr inbounds %struct.Parser, %struct.Parser* %112, i32 0, i32 24
  %v85 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions84, i32 0, i32 2
  %113 = load %struct.D_Reduction**, %struct.D_Reduction*** %v85, align 8
  %tobool86 = icmp ne %struct.D_Reduction** %113, null
  br i1 %tobool86, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %do.body.83
  %114 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions87 = getelementptr inbounds %struct.Parser, %struct.Parser* %114, i32 0, i32 24
  %v88 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions87, i32 0, i32 2
  %115 = load %struct.D_Reduction**, %struct.D_Reduction*** %v88, align 8
  %116 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions89 = getelementptr inbounds %struct.Parser, %struct.Parser* %116, i32 0, i32 24
  %e = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions89, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.D_Reduction*], [3 x %struct.D_Reduction*]* %e, i32 0, i32 0
  %cmp90 = icmp ne %struct.D_Reduction** %115, %arraydecay
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %land.lhs.true
  %117 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions92 = getelementptr inbounds %struct.Parser, %struct.Parser* %117, i32 0, i32 24
  %v93 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions92, i32 0, i32 2
  %118 = load %struct.D_Reduction**, %struct.D_Reduction*** %v93, align 8
  %119 = bitcast %struct.D_Reduction** %118 to i8*
  call void @free(i8* %119) #3
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %land.lhs.true, %do.body.83
  br label %do.body.95

do.body.95:                                       ; preds = %if.end.94
  %120 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions96 = getelementptr inbounds %struct.Parser, %struct.Parser* %120, i32 0, i32 24
  %n97 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions96, i32 0, i32 0
  store i32 0, i32* %n97, align 4
  %121 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions98 = getelementptr inbounds %struct.Parser, %struct.Parser* %121, i32 0, i32 24
  %v99 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions98, i32 0, i32 2
  store %struct.D_Reduction** null, %struct.D_Reduction*** %v99, align 8
  br label %do.end.100

do.end.100:                                       ; preds = %do.body.95
  br label %do.end.101

do.end.101:                                       ; preds = %do.end.100
  %122 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser = getelementptr inbounds %struct.Parser, %struct.Parser* %122, i32 0, i32 27
  %123 = load %struct.Parser*, %struct.Parser** %whitespace_parser, align 8
  %tobool102 = icmp ne %struct.Parser* %123, null
  br i1 %tobool102, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %do.end.101
  %124 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser104 = getelementptr inbounds %struct.Parser, %struct.Parser* %124, i32 0, i32 27
  %125 = load %struct.Parser*, %struct.Parser** %whitespace_parser104, align 8
  call void @free_parser_working_data(%struct.Parser* %125)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %do.end.101
  %126 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results = getelementptr inbounds %struct.Parser, %struct.Parser* %126, i32 0, i32 25
  %127 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results, align 8
  %128 = bitcast %struct.ShiftResult* %127 to i8*
  call void @free(i8* %128) #3
  %129 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results106 = getelementptr inbounds %struct.Parser, %struct.Parser* %129, i32 0, i32 25
  store %struct.ShiftResult* null, %struct.ShiftResult** %shift_results106, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Parser* @new_subparser(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pp = alloca %struct.Parser*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 3
  %1 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 0
  %sizeof_user_parse_node = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 8
  %3 = load i32, i32* %sizeof_user_parse_node, align 4
  %call = call %struct.D_Parser* @new_D_Parser(%struct.D_ParserTables* %1, i32 %3)
  %4 = bitcast %struct.D_Parser* %call to %struct.Parser*
  store %struct.Parser* %4, %struct.Parser** %pp, align 8
  %5 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %end = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 2
  %6 = load i8*, i8** %end, align 8
  %7 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %end1 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 2
  store i8* %6, i8** %end1, align 8
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pinterface1 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 28
  %9 = load i8*, i8** %pinterface1, align 8
  %10 = load %struct.Parser*, %struct.Parser** %pp, align 8
  %pinterface12 = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 28
  store i8* %9, i8** %pinterface12, align 8
  %11 = load %struct.Parser*, %struct.Parser** %pp, align 8
  call void @alloc_parser_working_data(%struct.Parser* %11)
  %12 = load %struct.Parser*, %struct.Parser** %pp, align 8
  ret %struct.Parser* %12
}

; Function Attrs: nounwind uwtable
define internal void @alloc_parser_working_data(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 11
  %i = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash, i32 0, i32 1
  store i32 10, i32* %i, align 4
  %1 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash1 = getelementptr inbounds %struct.Parser, %struct.Parser* %1, i32 0, i32 11
  %i2 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash1, i32 0, i32 1
  %2 = load i32, i32* %i2, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @prime2, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash3 = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 11
  %m = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash3, i32 0, i32 2
  store i32 %3, i32* %m, align 4
  %5 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash4 = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 11
  %m5 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash4, i32 0, i32 2
  %6 = load i32, i32* %m5, align 4
  %conv = zext i32 %6 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %7 = bitcast i8* %call to %struct.PNode**
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash6 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 11
  %v = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash6, i32 0, i32 0
  store %struct.PNode** %7, %struct.PNode*** %v, align 8
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash7 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 11
  %v8 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash7, i32 0, i32 0
  %10 = load %struct.PNode**, %struct.PNode*** %v8, align 8
  %11 = bitcast %struct.PNode** %10 to i8*
  %12 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash9 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 11
  %m10 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash9, i32 0, i32 2
  %13 = load i32, i32* %m10, align 4
  %conv11 = zext i32 %13 to i64
  %mul12 = mul i64 %conv11, 8
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 %mul12, i32 8, i1 false)
  %14 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 12
  %i13 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash, i32 0, i32 1
  store i32 8, i32* %i13, align 4
  %15 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash14 = getelementptr inbounds %struct.Parser, %struct.Parser* %15, i32 0, i32 12
  %i15 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash14, i32 0, i32 1
  %16 = load i32, i32* %i15, align 4
  %idxprom16 = zext i32 %16 to i64
  %arrayidx17 = getelementptr inbounds [0 x i32], [0 x i32]* @prime2, i32 0, i64 %idxprom16
  %17 = load i32, i32* %arrayidx17, align 4
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash18 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 12
  %m19 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash18, i32 0, i32 2
  store i32 %17, i32* %m19, align 4
  %19 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash20 = getelementptr inbounds %struct.Parser, %struct.Parser* %19, i32 0, i32 12
  %m21 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash20, i32 0, i32 2
  %20 = load i32, i32* %m21, align 4
  %conv22 = zext i32 %20 to i64
  %mul23 = mul i64 %conv22, 8
  %call24 = call noalias i8* @malloc(i64 %mul23) #3
  %21 = bitcast i8* %call24 to %struct.SNode**
  %22 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash25 = getelementptr inbounds %struct.Parser, %struct.Parser* %22, i32 0, i32 12
  %v26 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash25, i32 0, i32 0
  store %struct.SNode** %21, %struct.SNode*** %v26, align 8
  %23 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash27 = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 12
  %v28 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash27, i32 0, i32 0
  %24 = load %struct.SNode**, %struct.SNode*** %v28, align 8
  %25 = bitcast %struct.SNode** %24 to i8*
  %26 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash29 = getelementptr inbounds %struct.Parser, %struct.Parser* %26, i32 0, i32 12
  %m30 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash29, i32 0, i32 2
  %27 = load i32, i32* %m30, align 4
  %conv31 = zext i32 %27 to i64
  %mul32 = mul i64 %conv31, 8
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 %mul32, i32 8, i1 false)
  %28 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %28, i32 0, i32 3
  %29 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %nsymbols = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %29, i32 0, i32 4
  %30 = load i32, i32* %nsymbols, align 4
  %conv33 = zext i32 %30 to i64
  %mul34 = mul i64 %conv33, 40
  %call35 = call noalias i8* @malloc(i64 %mul34) #3
  %31 = bitcast i8* %call35 to %struct.ShiftResult*
  %32 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results = getelementptr inbounds %struct.Parser, %struct.Parser* %32, i32 0, i32 25
  store %struct.ShiftResult* %31, %struct.ShiftResult** %shift_results, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.D_ParseNode* @dparse(%struct.D_Parser* %ap, i8* %buf, i32 %buf_len) #0 {
entry:
  %ap.addr = alloca %struct.D_Parser*, align 8
  %buf.addr = alloca i8*, align 8
  %buf_len.addr = alloca i32, align 4
  %r = alloca i32, align 4
  %p = alloca %struct.Parser*, align 8
  %ps = alloca %struct.SNode*, align 8
  %pn = alloca %struct.PNode*, align 8
  %res = alloca %struct.D_ParseNode*, align 8
  store %struct.D_Parser* %ap, %struct.D_Parser** %ap.addr, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %buf_len, i32* %buf_len.addr, align 4
  %0 = load %struct.D_Parser*, %struct.D_Parser** %ap.addr, align 8
  %1 = bitcast %struct.D_Parser* %0 to %struct.Parser*
  store %struct.Parser* %1, %struct.Parser** %p, align 8
  store %struct.D_ParseNode* null, %struct.D_ParseNode** %res, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p, align 8
  %compares = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 9
  store i32 0, i32* %compares, align 4
  %3 = load %struct.Parser*, %struct.Parser** %p, align 8
  %reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 8
  store i32 0, i32* %reductions, align 4
  %4 = load %struct.Parser*, %struct.Parser** %p, align 8
  %shifts = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 7
  store i32 0, i32* %shifts, align 4
  %5 = load %struct.Parser*, %struct.Parser** %p, align 8
  %scans = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 6
  store i32 0, i32* %scans, align 4
  %6 = load %struct.Parser*, %struct.Parser** %p, align 8
  %states = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 4
  store i32 0, i32* %states, align 4
  %7 = load i8*, i8** %buf.addr, align 8
  %8 = load %struct.Parser*, %struct.Parser** %p, align 8
  %start = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 1
  store i8* %7, i8** %start, align 8
  %9 = load i8*, i8** %buf.addr, align 8
  %10 = load i32, i32* %buf_len.addr, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  %11 = load %struct.Parser*, %struct.Parser** %p, align 8
  %end = getelementptr inbounds %struct.Parser, %struct.Parser* %11, i32 0, i32 2
  store i8* %add.ptr, i8** %end, align 8
  %12 = load %struct.Parser*, %struct.Parser** %p, align 8
  call void @initialize_whitespace_parser(%struct.Parser* %12)
  %13 = load %struct.Parser*, %struct.Parser** %p, align 8
  call void @alloc_parser_working_data(%struct.Parser* %13)
  %14 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 0
  %initial_scope = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 2
  %15 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %tobool = icmp ne %struct.D_Scope* %15, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %16 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user1 = getelementptr inbounds %struct.Parser, %struct.Parser* %16, i32 0, i32 0
  %initial_scope2 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user1, i32 0, i32 2
  %17 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope2, align 8
  %18 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 15
  store %struct.D_Scope* %17, %struct.D_Scope** %top_scope, align 8
  br label %if.end.9

if.else:                                          ; preds = %entry
  %19 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope3 = getelementptr inbounds %struct.Parser, %struct.Parser* %19, i32 0, i32 15
  %20 = load %struct.D_Scope*, %struct.D_Scope** %top_scope3, align 8
  %tobool4 = icmp ne %struct.D_Scope* %20, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %21 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope6 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 15
  %22 = load %struct.D_Scope*, %struct.D_Scope** %top_scope6, align 8
  call void @free_D_Scope(%struct.D_Scope* %22, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  %call = call %struct.D_Scope* @new_D_Scope(%struct.D_Scope* null)
  %23 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope7 = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 15
  store %struct.D_Scope* %call, %struct.D_Scope** %top_scope7, align 8
  %24 = load %struct.Parser*, %struct.Parser** %p, align 8
  %top_scope8 = getelementptr inbounds %struct.Parser, %struct.Parser* %24, i32 0, i32 15
  %25 = load %struct.D_Scope*, %struct.D_Scope** %top_scope8, align 8
  %26 = bitcast %struct.D_Scope* %25 to i8*
  %bf.load = load i8, i8* %26, align 8
  %bf.clear = and i8 %bf.load, -7
  %bf.set = or i8 %bf.clear, 6
  store i8 %bf.set, i8* %26, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  %27 = load %struct.Parser*, %struct.Parser** %p, align 8
  %28 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user10 = getelementptr inbounds %struct.Parser, %struct.Parser* %28, i32 0, i32 0
  %start_state = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user10, i32 0, i32 7
  %29 = load i32, i32* %start_state, align 4
  %call11 = call i32 @exhaustive_parse(%struct.Parser* %27, i32 %29)
  store i32 %call11, i32* %r, align 4
  %30 = load i32, i32* %r, align 4
  %tobool12 = icmp ne i32 %30, 0
  br i1 %tobool12, label %if.else.61, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  %31 = load %struct.Parser*, %struct.Parser** %p, align 8
  %accept = getelementptr inbounds %struct.Parser, %struct.Parser* %31, i32 0, i32 16
  %32 = load %struct.SNode*, %struct.SNode** %accept, align 8
  store %struct.SNode* %32, %struct.SNode** %ps, align 8
  %33 = load %struct.SNode*, %struct.SNode** %ps, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %33, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %34 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %34, 1
  br i1 %cmp, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.13
  %35 = load %struct.SNode*, %struct.SNode** %ps, align 8
  %zns14 = getelementptr inbounds %struct.SNode, %struct.SNode* %35, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns14, i32 0, i32 2
  %36 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %36, i64 0
  %37 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %pn15 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %37, i32 0, i32 0
  %38 = load %struct.PNode*, %struct.PNode** %pn15, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %38, i32 0, i32 7
  %n16 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %39 = load i32, i32* %n16, align 4
  %cmp17 = icmp ne i32 %39, 1
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.then.13
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %lor.lhs.false
  %40 = load %struct.SNode*, %struct.SNode** %ps, align 8
  %zns20 = getelementptr inbounds %struct.SNode, %struct.SNode* %40, i32 0, i32 6
  %v21 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns20, i32 0, i32 2
  %41 = load %struct.ZNode**, %struct.ZNode*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %41, i64 0
  %42 = load %struct.ZNode*, %struct.ZNode** %arrayidx22, align 8
  %pn23 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %42, i32 0, i32 0
  %43 = load %struct.PNode*, %struct.PNode** %pn23, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %43, i32 0, i32 14
  %44 = load %struct.PNode*, %struct.PNode** %latest, align 8
  %children24 = getelementptr inbounds %struct.PNode, %struct.PNode* %44, i32 0, i32 7
  %v25 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children24, i32 0, i32 2
  %45 = load %struct.PNode**, %struct.PNode*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.PNode*, %struct.PNode** %45, i64 0
  %46 = load %struct.PNode*, %struct.PNode** %arrayidx26, align 8
  store %struct.PNode* %46, %struct.PNode** %pn, align 8
  %47 = load %struct.Parser*, %struct.Parser** %p, align 8
  %48 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %call27 = call %struct.PNode* @commit_tree(%struct.Parser* %47, %struct.PNode* %48)
  store %struct.PNode* %call27, %struct.PNode** %pn, align 8
  %49 = load i32, i32* @verbose_level, align 4
  %tobool28 = icmp ne i32 %49, 0
  br i1 %tobool28, label %if.then.29, label %if.end.45

if.then.29:                                       ; preds = %if.end.19
  %50 = load %struct.Parser*, %struct.Parser** %p, align 8
  %states30 = getelementptr inbounds %struct.Parser, %struct.Parser* %50, i32 0, i32 4
  %51 = load i32, i32* %states30, align 4
  %52 = load %struct.Parser*, %struct.Parser** %p, align 8
  %scans31 = getelementptr inbounds %struct.Parser, %struct.Parser* %52, i32 0, i32 6
  %53 = load i32, i32* %scans31, align 4
  %54 = load %struct.Parser*, %struct.Parser** %p, align 8
  %shifts32 = getelementptr inbounds %struct.Parser, %struct.Parser* %54, i32 0, i32 7
  %55 = load i32, i32* %shifts32, align 4
  %56 = load %struct.Parser*, %struct.Parser** %p, align 8
  %reductions33 = getelementptr inbounds %struct.Parser, %struct.Parser* %56, i32 0, i32 8
  %57 = load i32, i32* %reductions33, align 4
  %58 = load %struct.Parser*, %struct.Parser** %p, align 8
  %compares34 = getelementptr inbounds %struct.Parser, %struct.Parser* %58, i32 0, i32 9
  %59 = load i32, i32* %compares34, align 4
  %60 = load %struct.Parser*, %struct.Parser** %p, align 8
  %ambiguities = getelementptr inbounds %struct.Parser, %struct.Parser* %60, i32 0, i32 10
  %61 = load i32, i32* %ambiguities, align 4
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.9, i32 0, i32 0), i32 %51, i32 %53, i32 %55, i32 %57, i32 %59, i32 %61)
  %62 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user36 = getelementptr inbounds %struct.Parser, %struct.Parser* %62, i32 0, i32 0
  %save_parse_tree = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user36, i32 0, i32 9
  %63 = load i32, i32* %save_parse_tree, align 4
  %tobool37 = icmp ne i32 %63, 0
  br i1 %tobool37, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.then.29
  %64 = load i32, i32* @verbose_level, align 4
  %cmp39 = icmp sgt i32 %64, 1
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.then.38
  %65 = load %struct.Parser*, %struct.Parser** %p, align 8
  %66 = load %struct.PNode*, %struct.PNode** %pn, align 8
  call void @xprint_paren(%struct.Parser* %65, %struct.PNode* %66)
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.38
  %67 = load %struct.PNode*, %struct.PNode** %pn, align 8
  call void @print_paren(%struct.PNode* %67)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.40
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.42, %if.then.29
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.19
  %68 = load %struct.Parser*, %struct.Parser** %p, align 8
  %user46 = getelementptr inbounds %struct.Parser, %struct.Parser* %68, i32 0, i32 0
  %save_parse_tree47 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user46, i32 0, i32 9
  %69 = load i32, i32* %save_parse_tree47, align 4
  %tobool48 = icmp ne i32 %69, 0
  br i1 %tobool48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %if.end.45
  br label %do.body

do.body:                                          ; preds = %if.then.49
  %70 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %70, i32 0, i32 6
  %71 = load i32, i32* %refcount, align 4
  %inc = add i32 %71, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %72 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %72, i32 0, i32 19
  store %struct.D_ParseNode* %parse_node, %struct.D_ParseNode** %res, align 8
  br label %if.end.51

if.else.50:                                       ; preds = %if.end.45
  store %struct.D_ParseNode* inttoptr (i64 1 to %struct.D_ParseNode*), %struct.D_ParseNode** %res, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.50, %do.end
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.51
  %73 = load %struct.Parser*, %struct.Parser** %p, align 8
  %accept53 = getelementptr inbounds %struct.Parser, %struct.Parser* %73, i32 0, i32 16
  %74 = load %struct.SNode*, %struct.SNode** %accept53, align 8
  %refcount54 = getelementptr inbounds %struct.SNode, %struct.SNode* %74, i32 0, i32 7
  %75 = load i32, i32* %refcount54, align 4
  %dec = add i32 %75, -1
  store i32 %dec, i32* %refcount54, align 4
  %tobool55 = icmp ne i32 %dec, 0
  br i1 %tobool55, label %if.end.58, label %if.then.56

if.then.56:                                       ; preds = %do.body.52
  %76 = load %struct.Parser*, %struct.Parser** %p, align 8
  %77 = load %struct.Parser*, %struct.Parser** %p, align 8
  %accept57 = getelementptr inbounds %struct.Parser, %struct.Parser* %77, i32 0, i32 16
  %78 = load %struct.SNode*, %struct.SNode** %accept57, align 8
  call void @free_SNode(%struct.Parser* %76, %struct.SNode* %78)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %do.body.52
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  %79 = load %struct.Parser*, %struct.Parser** %p, align 8
  %accept60 = getelementptr inbounds %struct.Parser, %struct.Parser* %79, i32 0, i32 16
  store %struct.SNode* null, %struct.SNode** %accept60, align 8
  br label %if.end.63

if.else.61:                                       ; preds = %if.end.9
  %80 = load %struct.Parser*, %struct.Parser** %p, align 8
  %accept62 = getelementptr inbounds %struct.Parser, %struct.Parser* %80, i32 0, i32 16
  store %struct.SNode* null, %struct.SNode** %accept62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %do.end.59
  %81 = load %struct.Parser*, %struct.Parser** %p, align 8
  call void @free_parser_working_data(%struct.Parser* %81)
  %82 = load %struct.D_ParseNode*, %struct.D_ParseNode** %res, align 8
  ret %struct.D_ParseNode* %82
}

; Function Attrs: nounwind uwtable
define internal void @initialize_whitespace_parser(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 3
  %1 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %whitespace_state = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %1, i32 0, i32 3
  %2 = load i32, i32* %whitespace_state, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %call = call %struct.Parser* @new_subparser(%struct.Parser* %3)
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 27
  store %struct.Parser* %call, %struct.Parser** %whitespace_parser, align 8
  %5 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser1 = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 27
  %6 = load %struct.Parser*, %struct.Parser** %whitespace_parser1, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 0
  %initial_white_space_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 1
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* @null_white_space, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn, align 8
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser2 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 27
  %8 = load %struct.Parser*, %struct.Parser** %whitespace_parser2, align 8
  %user3 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 0
  %error_recovery = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user3, i32 0, i32 16
  store i32 0, i32* %error_recovery, align 4
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %whitespace_parser4 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 27
  %10 = load %struct.Parser*, %struct.Parser** %whitespace_parser4, align 8
  %user5 = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 0
  %partial_parses = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user5, i32 0, i32 17
  store i32 1, i32* %partial_parses, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.D_Scope* @new_D_Scope(%struct.D_Scope*) #1

; Function Attrs: nounwind uwtable
define internal i32 @exhaustive_parse(%struct.Parser* %p, i32 %state) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Parser*, align 8
  %state.addr = alloca i32, align 4
  %r = alloca %struct.Reduction*, align 8
  %s = alloca %struct.Shift*, align 8
  %pos = alloca i8*, align 8
  %epos = alloca i8*, align 8
  %pn = alloca %struct.PNode*, align 8
  %tpn = alloca %struct.PNode, align 8
  %sn = alloca %struct.SNode*, align 8
  %z = alloca %struct.ZNode*, align 8
  %progress = alloca i32, align 4
  %ready = alloca i32, align 4
  %loc = alloca %struct.d_loc_t, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store i32 %state, i32* %state.addr, align 4
  store i8* null, i8** %epos, align 8
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %ready, align 4
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %start = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 1
  %1 = load i8*, i8** %start, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 0
  %loc1 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 6
  %s2 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc1, i32 0, i32 0
  store i8* %1, i8** %s2, align 8
  store i8* %1, i8** %pos, align 8
  %3 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user3 = getelementptr inbounds %struct.Parser, %struct.Parser* %3, i32 0, i32 0
  %loc4 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user3, i32 0, i32 6
  %4 = bitcast %struct.d_loc_t* %loc to i8*
  %5 = bitcast %struct.d_loc_t* %loc4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %5, i64 32, i32 8, i1 false)
  %6 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user5 = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 0
  %initial_white_space_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user5, i32 0, i32 1
  %7 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn, align 8
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %9 = bitcast %struct.Parser* %8 to %struct.D_Parser*
  %10 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user6 = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 0
  %initial_globals = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user6, i32 0, i32 0
  call void %7(%struct.D_Parser* %9, %struct.d_loc_t* %loc, i8** %initial_globals)
  %11 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %12 = load i32, i32* %state.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %13, i32 0, i32 3
  %14 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state7 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %14, i32 0, i32 1
  %15 = load %struct.D_State*, %struct.D_State** %state7, align 8
  %arrayidx = getelementptr inbounds %struct.D_State, %struct.D_State* %15, i64 %idxprom
  %16 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %top_scope = getelementptr inbounds %struct.Parser, %struct.Parser* %16, i32 0, i32 15
  %17 = load %struct.D_Scope*, %struct.D_Scope** %top_scope, align 8
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user8 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 0
  %initial_globals9 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user8, i32 0, i32 0
  %19 = load i8*, i8** %initial_globals9, align 8
  %call = call %struct.SNode* @add_SNode(%struct.Parser* %11, %struct.D_State* %arrayidx, %struct.d_loc_t* %loc, %struct.D_Scope* %17, i8* %19)
  store %struct.SNode* %call, %struct.SNode** %sn, align 8
  %20 = bitcast %struct.PNode* %tpn to i8*
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 240, i32 8, i1 false)
  %21 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user10 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 0
  %initial_white_space_fn11 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user10, i32 0, i32 1
  %22 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %initial_white_space_fn11, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %tpn, i32 0, i32 19
  %white_space = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 5
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %22, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space, align 8
  %23 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user12 = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 0
  %initial_globals13 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user12, i32 0, i32 0
  %24 = load i8*, i8** %initial_globals13, align 8
  %parse_node14 = getelementptr inbounds %struct.PNode, %struct.PNode* %tpn, i32 0, i32 19
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node14, i32 0, i32 6
  store i8* %24, i8** %globals, align 8
  %25 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %top_scope15 = getelementptr inbounds %struct.Parser, %struct.Parser* %25, i32 0, i32 15
  %26 = load %struct.D_Scope*, %struct.D_Scope** %top_scope15, align 8
  %parse_node16 = getelementptr inbounds %struct.PNode, %struct.PNode* %tpn, i32 0, i32 19
  %scope = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node16, i32 0, i32 4
  store %struct.D_Scope* %26, %struct.D_Scope** %scope, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %tpn, i32 0, i32 17
  store %struct.D_Scope* %26, %struct.D_Scope** %initial_scope, align 8
  %s17 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 0
  %27 = load i8*, i8** %s17, align 8
  %parse_node18 = getelementptr inbounds %struct.PNode, %struct.PNode* %tpn, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node18, i32 0, i32 2
  store i8* %27, i8** %end, align 8
  %28 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %s19 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 0
  %29 = load i8*, i8** %s19, align 8
  %call20 = call %struct.PNode* @add_PNode(%struct.Parser* %28, i32 0, %struct.d_loc_t* %loc, i8* %29, %struct.PNode* %tpn, %struct.D_Reduction* null, %struct.VecZNode* null, %struct.D_Shift* null)
  store %struct.PNode* %call20, %struct.PNode** %pn, align 8
  %30 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %31 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %last_pn = getelementptr inbounds %struct.SNode, %struct.SNode* %31, i32 0, i32 5
  store %struct.PNode* %30, %struct.PNode** %last_pn, align 8
  %32 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %32, i32 0, i32 6
  %33 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %34 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %call21 = call %struct.ZNode* @new_ZNode(%struct.Parser* %33, %struct.PNode* %34)
  store %struct.ZNode* %call21, %struct.ZNode** %z, align 8
  call void @set_add_znode(%struct.VecZNode* %zns, %struct.ZNode* %call21)
  br label %do.body

do.body:                                          ; preds = %entry
  %35 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %35, i32 0, i32 6
  %36 = load i32, i32* %refcount, align 4
  %inc = add i32 %36, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.body

while.body:                                       ; preds = %do.end, %if.end.59, %if.end.117
  br label %while.cond.22

while.cond.22:                                    ; preds = %for.end, %while.body
  %37 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %37, i32 0, i32 13
  %38 = load %struct.Reduction*, %struct.Reduction** %reductions_todo, align 8
  %tobool = icmp ne %struct.Reduction* %38, null
  br i1 %tobool, label %while.body.23, label %while.end

while.body.23:                                    ; preds = %while.cond.22
  %39 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo24 = getelementptr inbounds %struct.Parser, %struct.Parser* %39, i32 0, i32 13
  %40 = load %struct.Reduction*, %struct.Reduction** %reductions_todo24, align 8
  %snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %40, i32 0, i32 1
  %41 = load %struct.SNode*, %struct.SNode** %snode, align 8
  %loc25 = getelementptr inbounds %struct.SNode, %struct.SNode* %41, i32 0, i32 3
  %s26 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc25, i32 0, i32 0
  %42 = load i8*, i8** %s26, align 8
  store i8* %42, i8** %pos, align 8
  %43 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %43, i32 0, i32 14
  %44 = load %struct.Shift*, %struct.Shift** %shifts_todo, align 8
  %tobool27 = icmp ne %struct.Shift* %44, null
  br i1 %tobool27, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body.23
  %45 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo28 = getelementptr inbounds %struct.Parser, %struct.Parser* %45, i32 0, i32 14
  %46 = load %struct.Shift*, %struct.Shift** %shifts_todo28, align 8
  %snode29 = getelementptr inbounds %struct.Shift, %struct.Shift* %46, i32 0, i32 0
  %47 = load %struct.SNode*, %struct.SNode** %snode29, align 8
  %loc30 = getelementptr inbounds %struct.SNode, %struct.SNode* %47, i32 0, i32 3
  %s31 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc30, i32 0, i32 0
  %48 = load i8*, i8** %s31, align 8
  %49 = load i8*, i8** %pos, align 8
  %cmp = icmp ult i8* %48, %49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %while.end

if.end:                                           ; preds = %land.lhs.true, %while.body.23
  %50 = load i8*, i8** %pos, align 8
  %51 = load i8*, i8** %epos, align 8
  %cmp32 = icmp ugt i8* %50, %51
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end
  %52 = load i8*, i8** %pos, align 8
  store i8* %52, i8** %epos, align 8
  %53 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @free_old_nodes(%struct.Parser* %53)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.end.34
  %54 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo35 = getelementptr inbounds %struct.Parser, %struct.Parser* %54, i32 0, i32 13
  %55 = load %struct.Reduction*, %struct.Reduction** %reductions_todo35, align 8
  store %struct.Reduction* %55, %struct.Reduction** %r, align 8
  %tobool36 = icmp ne %struct.Reduction* %55, null
  br i1 %tobool36, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %56 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %snode37 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %56, i32 0, i32 1
  %57 = load %struct.SNode*, %struct.SNode** %snode37, align 8
  %loc38 = getelementptr inbounds %struct.SNode, %struct.SNode* %57, i32 0, i32 3
  %s39 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc38, i32 0, i32 0
  %58 = load i8*, i8** %s39, align 8
  %59 = load i8*, i8** %pos, align 8
  %cmp40 = icmp eq i8* %58, %59
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %60 = phi i1 [ false, %for.cond ], [ %cmp40, %land.rhs ]
  br i1 %60, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %61 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo41 = getelementptr inbounds %struct.Parser, %struct.Parser* %61, i32 0, i32 13
  %62 = load %struct.Reduction*, %struct.Reduction** %reductions_todo41, align 8
  %next = getelementptr inbounds %struct.Reduction, %struct.Reduction* %62, i32 0, i32 5
  %63 = load %struct.Reduction*, %struct.Reduction** %next, align 8
  %64 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo42 = getelementptr inbounds %struct.Parser, %struct.Parser* %64, i32 0, i32 13
  store %struct.Reduction* %63, %struct.Reduction** %reductions_todo42, align 8
  %65 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %66 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  call void @reduce_one(%struct.Parser* %65, %struct.Reduction* %66)
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %while.cond.22

while.end:                                        ; preds = %if.then, %while.cond.22
  %67 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo43 = getelementptr inbounds %struct.Parser, %struct.Parser* %67, i32 0, i32 14
  %68 = load %struct.Shift*, %struct.Shift** %shifts_todo43, align 8
  %tobool44 = icmp ne %struct.Shift* %68, null
  br i1 %tobool44, label %if.else.60, label %if.then.45

if.then.45:                                       ; preds = %while.end
  %69 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept = getelementptr inbounds %struct.Parser, %struct.Parser* %69, i32 0, i32 16
  %70 = load %struct.SNode*, %struct.SNode** %accept, align 8
  %tobool46 = icmp ne %struct.SNode* %70, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.else

land.lhs.true.47:                                 ; preds = %if.then.45
  %71 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept48 = getelementptr inbounds %struct.Parser, %struct.Parser* %71, i32 0, i32 16
  %72 = load %struct.SNode*, %struct.SNode** %accept48, align 8
  %loc49 = getelementptr inbounds %struct.SNode, %struct.SNode* %72, i32 0, i32 3
  %s50 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc49, i32 0, i32 0
  %73 = load i8*, i8** %s50, align 8
  %74 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %end51 = getelementptr inbounds %struct.Parser, %struct.Parser* %74, i32 0, i32 2
  %75 = load i8*, i8** %end51, align 8
  %cmp52 = icmp eq i8* %73, %75
  br i1 %cmp52, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.47
  %76 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user53 = getelementptr inbounds %struct.Parser, %struct.Parser* %76, i32 0, i32 0
  %partial_parses = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user53, i32 0, i32 17
  %77 = load i32, i32* %partial_parses, align 4
  %tobool54 = icmp ne i32 %77, 0
  br i1 %tobool54, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %lor.lhs.false, %land.lhs.true.47
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false, %if.then.45
  %78 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %call56 = call i32 @error_recovery(%struct.Parser* %78)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.else
  br label %while.body

if.else.60:                                       ; preds = %while.end
  %79 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user61 = getelementptr inbounds %struct.Parser, %struct.Parser* %79, i32 0, i32 0
  %dont_compare_stacks = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user61, i32 0, i32 10
  %80 = load i32, i32* %dont_compare_stacks, align 4
  %tobool62 = icmp ne i32 %80, 0
  br i1 %tobool62, label %if.end.68, label %land.lhs.true.63

land.lhs.true.63:                                 ; preds = %if.else.60
  %81 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo64 = getelementptr inbounds %struct.Parser, %struct.Parser* %81, i32 0, i32 14
  %82 = load %struct.Shift*, %struct.Shift** %shifts_todo64, align 8
  %next65 = getelementptr inbounds %struct.Shift, %struct.Shift* %82, i32 0, i32 1
  %83 = load %struct.Shift*, %struct.Shift** %next65, align 8
  %tobool66 = icmp ne %struct.Shift* %83, null
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.63
  %84 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @cmp_stacks(%struct.Parser* %84)
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.67, %land.lhs.true.63, %if.else.60
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68
  %85 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo70 = getelementptr inbounds %struct.Parser, %struct.Parser* %85, i32 0, i32 14
  %86 = load %struct.Shift*, %struct.Shift** %shifts_todo70, align 8
  %snode71 = getelementptr inbounds %struct.Shift, %struct.Shift* %86, i32 0, i32 0
  %87 = load %struct.SNode*, %struct.SNode** %snode71, align 8
  %loc72 = getelementptr inbounds %struct.SNode, %struct.SNode* %87, i32 0, i32 3
  %s73 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc72, i32 0, i32 0
  %88 = load i8*, i8** %s73, align 8
  store i8* %88, i8** %pos, align 8
  %89 = load i8*, i8** %pos, align 8
  %90 = load i8*, i8** %epos, align 8
  %cmp74 = icmp ugt i8* %89, %90
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.69
  %91 = load i8*, i8** %pos, align 8
  store i8* %91, i8** %epos, align 8
  %92 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @free_old_nodes(%struct.Parser* %92)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %if.end.69
  %93 = load i32, i32* %progress, align 4
  %inc77 = add nsw i32 %93, 1
  store i32 %inc77, i32* %progress, align 4
  %94 = load i32, i32* %progress, align 4
  %95 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user78 = getelementptr inbounds %struct.Parser, %struct.Parser* %95, i32 0, i32 0
  %commit_actions_interval = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user78, i32 0, i32 15
  %96 = load i32, i32* %commit_actions_interval, align 4
  %cmp79 = icmp sgt i32 %94, %96
  %conv = zext i1 %cmp79 to i32
  store i32 %conv, i32* %ready, align 4
  %97 = load i32, i32* %ready, align 4
  %tobool80 = icmp ne i32 %97, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.89

land.lhs.true.81:                                 ; preds = %if.end.76
  %98 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo82 = getelementptr inbounds %struct.Parser, %struct.Parser* %98, i32 0, i32 14
  %99 = load %struct.Shift*, %struct.Shift** %shifts_todo82, align 8
  %next83 = getelementptr inbounds %struct.Shift, %struct.Shift* %99, i32 0, i32 1
  %100 = load %struct.Shift*, %struct.Shift** %next83, align 8
  %tobool84 = icmp ne %struct.Shift* %100, null
  br i1 %tobool84, label %if.end.89, label %if.then.85

if.then.85:                                       ; preds = %land.lhs.true.81
  %101 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %102 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo86 = getelementptr inbounds %struct.Parser, %struct.Parser* %102, i32 0, i32 14
  %103 = load %struct.Shift*, %struct.Shift** %shifts_todo86, align 8
  %snode87 = getelementptr inbounds %struct.Shift, %struct.Shift* %103, i32 0, i32 0
  %104 = load %struct.SNode*, %struct.SNode** %snode87, align 8
  %call88 = call i32 @commit_stack(%struct.Parser* %101, %struct.SNode* %104)
  store i32 0, i32* %progress, align 4
  store i32 0, i32* %ready, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.85, %land.lhs.true.81, %if.end.76
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.body.100, %if.end.89
  %105 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo91 = getelementptr inbounds %struct.Parser, %struct.Parser* %105, i32 0, i32 14
  %106 = load %struct.Shift*, %struct.Shift** %shifts_todo91, align 8
  store %struct.Shift* %106, %struct.Shift** %s, align 8
  %tobool92 = icmp ne %struct.Shift* %106, null
  br i1 %tobool92, label %land.rhs.93, label %land.end.99

land.rhs.93:                                      ; preds = %for.cond.90
  %107 = load %struct.Shift*, %struct.Shift** %s, align 8
  %snode94 = getelementptr inbounds %struct.Shift, %struct.Shift* %107, i32 0, i32 0
  %108 = load %struct.SNode*, %struct.SNode** %snode94, align 8
  %loc95 = getelementptr inbounds %struct.SNode, %struct.SNode* %108, i32 0, i32 3
  %s96 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc95, i32 0, i32 0
  %109 = load i8*, i8** %s96, align 8
  %110 = load i8*, i8** %pos, align 8
  %cmp97 = icmp eq i8* %109, %110
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.93, %for.cond.90
  %111 = phi i1 [ false, %for.cond.90 ], [ %cmp97, %land.rhs.93 ]
  br i1 %111, label %for.body.100, label %for.end.104

for.body.100:                                     ; preds = %land.end.99
  %112 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo101 = getelementptr inbounds %struct.Parser, %struct.Parser* %112, i32 0, i32 14
  %113 = load %struct.Shift*, %struct.Shift** %shifts_todo101, align 8
  %next102 = getelementptr inbounds %struct.Shift, %struct.Shift* %113, i32 0, i32 1
  %114 = load %struct.Shift*, %struct.Shift** %next102, align 8
  %115 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo103 = getelementptr inbounds %struct.Parser, %struct.Parser* %115, i32 0, i32 14
  store %struct.Shift* %114, %struct.Shift** %shifts_todo103, align 8
  %116 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %117 = load %struct.Shift*, %struct.Shift** %s, align 8
  call void @shift_one(%struct.Parser* %116, %struct.Shift* %117)
  br label %for.cond.90

for.end.104:                                      ; preds = %land.end.99
  %118 = load i32, i32* %ready, align 4
  %tobool105 = icmp ne i32 %118, 0
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.117

land.lhs.true.106:                                ; preds = %for.end.104
  %119 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo107 = getelementptr inbounds %struct.Parser, %struct.Parser* %119, i32 0, i32 13
  %120 = load %struct.Reduction*, %struct.Reduction** %reductions_todo107, align 8
  %tobool108 = icmp ne %struct.Reduction* %120, null
  br i1 %tobool108, label %land.lhs.true.109, label %if.end.117

land.lhs.true.109:                                ; preds = %land.lhs.true.106
  %121 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo110 = getelementptr inbounds %struct.Parser, %struct.Parser* %121, i32 0, i32 13
  %122 = load %struct.Reduction*, %struct.Reduction** %reductions_todo110, align 8
  %next111 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %122, i32 0, i32 5
  %123 = load %struct.Reduction*, %struct.Reduction** %next111, align 8
  %tobool112 = icmp ne %struct.Reduction* %123, null
  br i1 %tobool112, label %if.end.117, label %if.then.113

if.then.113:                                      ; preds = %land.lhs.true.109
  %124 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %125 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo114 = getelementptr inbounds %struct.Parser, %struct.Parser* %125, i32 0, i32 13
  %126 = load %struct.Reduction*, %struct.Reduction** %reductions_todo114, align 8
  %snode115 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %126, i32 0, i32 1
  %127 = load %struct.SNode*, %struct.SNode** %snode115, align 8
  %call116 = call i32 @commit_stack(%struct.Parser* %124, %struct.SNode* %127)
  store i32 0, i32* %progress, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %land.lhs.true.109, %land.lhs.true.106, %for.end.104
  br label %while.body

return:                                           ; preds = %if.then.58, %if.then.55
  %128 = load i32, i32* %retval
  ret i32 %128
}

; Function Attrs: nounwind uwtable
define internal %struct.PNode* @commit_tree(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %retval = alloca %struct.PNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %fixup = alloca i32, align 4
  %internal = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store i32 0, i32* %fixup, align 4
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %evaluated = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 9
  %1 = load i8, i8* %evaluated, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  store %struct.PNode* %2, %struct.PNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %3, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %5 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node1 = getelementptr inbounds %struct.PNode, %struct.PNode* %5, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node1, i32 0, i32 2
  %6 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %4, %6
  br i1 %cmp, label %land.lhs.true, label %if.then.6

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 4
  %8 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool2 = icmp ne %struct.D_Reduction* %8, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.then.6

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction4 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 4
  %10 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction4, align 8
  %final_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %10, i32 0, i32 3
  %11 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %final_code, align 8
  %tobool5 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %11, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %12 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %evaluated7 = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 9
  store i8 1, i8* %evaluated7, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %land.lhs.true.3
  %13 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities = getelementptr inbounds %struct.PNode, %struct.PNode* %13, i32 0, i32 13
  %14 = load %struct.PNode*, %struct.PNode** %ambiguities, align 8
  %tobool9 = icmp ne %struct.PNode* %14, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %16 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %call = call %struct.PNode* @resolve_ambiguities(%struct.Parser* %15, %struct.PNode* %16)
  store %struct.PNode* %call, %struct.PNode** %pn.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %17 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node12 = getelementptr inbounds %struct.PNode, %struct.PNode* %17, i32 0, i32 19
  %symbol = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node12, i32 0, i32 0
  %18 = load i32, i32* %symbol, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %19, i32 0, i32 3
  %20 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %symbols = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %20, i32 0, i32 5
  %21 = load %struct.D_Symbol*, %struct.D_Symbol** %symbols, align 8
  %arrayidx = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %21, i64 %idxprom
  %kind = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %arrayidx, i32 0, i32 0
  %22 = load i32, i32* %kind, align 4
  %cmp13 = icmp eq i32 %22, 2
  %conv = zext i1 %cmp13 to i32
  store i32 %conv, i32* %internal, align 4
  %23 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 0
  %dont_fixup_internal_productions = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 11
  %24 = load i32, i32* %dont_fixup_internal_productions, align 4
  %tobool14 = icmp ne i32 %24, 0
  br i1 %tobool14, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %if.end.11
  %25 = load i32, i32* %internal, align 4
  %tobool15 = icmp ne i32 %25, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.11
  %26 = phi i1 [ false, %if.end.11 ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %26 to i32
  store i32 %land.ext, i32* %fixup, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 7
  %n16 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %29 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %27, %29
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %31 to i64
  %32 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children20 = getelementptr inbounds %struct.PNode, %struct.PNode* %32, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children20, i32 0, i32 2
  %33 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx21 = getelementptr inbounds %struct.PNode*, %struct.PNode** %33, i64 %idxprom19
  %34 = load %struct.PNode*, %struct.PNode** %arrayidx21, align 8
  %call22 = call %struct.PNode* @commit_tree(%struct.Parser* %30, %struct.PNode* %34)
  %35 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children24 = getelementptr inbounds %struct.PNode, %struct.PNode* %36, i32 0, i32 7
  %v25 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children24, i32 0, i32 2
  %37 = load %struct.PNode**, %struct.PNode*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.PNode*, %struct.PNode** %37, i64 %idxprom23
  store %struct.PNode* %call22, %struct.PNode** %arrayidx26, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %38 to i64
  %39 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children28 = getelementptr inbounds %struct.PNode, %struct.PNode* %39, i32 0, i32 7
  %v29 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children28, i32 0, i32 2
  %40 = load %struct.PNode**, %struct.PNode*** %v29, align 8
  %arrayidx30 = getelementptr inbounds %struct.PNode*, %struct.PNode** %40, i64 %idxprom27
  %41 = load %struct.PNode*, %struct.PNode** %arrayidx30, align 8
  %children31 = getelementptr inbounds %struct.PNode, %struct.PNode* %41, i32 0, i32 7
  %n32 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children31, i32 0, i32 0
  %42 = load i32, i32* %n32, align 4
  store i32 %42, i32* %n, align 4
  %43 = load i32, i32* %fixup, align 4
  %tobool33 = icmp ne i32 %43, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.49

land.lhs.true.34:                                 ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children36 = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 7
  %v37 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children36, i32 0, i32 2
  %46 = load %struct.PNode**, %struct.PNode*** %v37, align 8
  %arrayidx38 = getelementptr inbounds %struct.PNode*, %struct.PNode** %46, i64 %idxprom35
  %47 = load %struct.PNode*, %struct.PNode** %arrayidx38, align 8
  %parse_node39 = getelementptr inbounds %struct.PNode, %struct.PNode* %47, i32 0, i32 19
  %symbol40 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node39, i32 0, i32 0
  %48 = load i32, i32* %symbol40, align 4
  %idxprom41 = sext i32 %48 to i64
  %49 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t42 = getelementptr inbounds %struct.Parser, %struct.Parser* %49, i32 0, i32 3
  %50 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t42, align 8
  %symbols43 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %50, i32 0, i32 5
  %51 = load %struct.D_Symbol*, %struct.D_Symbol** %symbols43, align 8
  %arrayidx44 = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %51, i64 %idxprom41
  %kind45 = getelementptr inbounds %struct.D_Symbol, %struct.D_Symbol* %arrayidx44, i32 0, i32 0
  %52 = load i32, i32* %kind45, align 4
  %cmp46 = icmp eq i32 %52, 2
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.34
  %53 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %54 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %55 = load i32, i32* %i, align 4
  call void @fixup_internal_symbol(%struct.Parser* %53, %struct.PNode* %54, i32 %55)
  %56 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %56, 1
  store i32 %sub, i32* %i, align 4
  br label %for.inc

if.end.49:                                        ; preds = %land.lhs.true.34, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49, %if.then.48
  %57 = load i32, i32* %i, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction50 = getelementptr inbounds %struct.PNode, %struct.PNode* %58, i32 0, i32 4
  %59 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction50, align 8
  %tobool51 = icmp ne %struct.D_Reduction* %59, null
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.65

land.lhs.true.52:                                 ; preds = %for.end
  %60 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction53 = getelementptr inbounds %struct.PNode, %struct.PNode* %60, i32 0, i32 4
  %61 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction53, align 8
  %final_code54 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %61, i32 0, i32 3
  %62 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %final_code54, align 8
  %tobool55 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %62, null
  br i1 %tobool55, label %if.then.56, label %if.end.65

if.then.56:                                       ; preds = %land.lhs.true.52
  %63 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction57 = getelementptr inbounds %struct.PNode, %struct.PNode* %63, i32 0, i32 4
  %64 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction57, align 8
  %final_code58 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %64, i32 0, i32 3
  %65 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %final_code58, align 8
  %66 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %67 = bitcast %struct.PNode* %66 to i8*
  %68 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children59 = getelementptr inbounds %struct.PNode, %struct.PNode* %68, i32 0, i32 7
  %v60 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children59, i32 0, i32 2
  %69 = load %struct.PNode**, %struct.PNode*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.PNode*, %struct.PNode** %69, i64 0
  %70 = bitcast %struct.PNode** %arrayidx61 to i8**
  %71 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children62 = getelementptr inbounds %struct.PNode, %struct.PNode* %71, i32 0, i32 7
  %n63 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children62, i32 0, i32 0
  %72 = load i32, i32* %n63, align 4
  %73 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %74 = bitcast %struct.Parser* %73 to %struct.D_Parser*
  %call64 = call i32 %65(i8* %67, i8** %70, i32 %72, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32), %struct.D_Parser* %74)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.56, %land.lhs.true.52, %for.end
  %75 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %evaluated66 = getelementptr inbounds %struct.PNode, %struct.PNode* %75, i32 0, i32 9
  %76 = load i8, i8* %evaluated66, align 1
  %tobool67 = icmp ne i8 %76, 0
  br i1 %tobool67, label %if.then.68, label %if.end.75

if.then.68:                                       ; preds = %if.end.65
  %77 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user69 = getelementptr inbounds %struct.Parser, %struct.Parser* %77, i32 0, i32 0
  %save_parse_tree = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user69, i32 0, i32 9
  %78 = load i32, i32* %save_parse_tree, align 4
  %tobool70 = icmp ne i32 %78, 0
  br i1 %tobool70, label %if.end.74, label %land.lhs.true.71

land.lhs.true.71:                                 ; preds = %if.then.68
  %79 = load i32, i32* %internal, align 4
  %tobool72 = icmp ne i32 %79, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.71
  %80 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %81 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  call void @free_ParseTreeBelow(%struct.Parser* %80, %struct.PNode* %81)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %land.lhs.true.71, %if.then.68
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end.65
  %82 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  store %struct.PNode* %82, %struct.PNode** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then
  %83 = load %struct.PNode*, %struct.PNode** %retval
  ret %struct.PNode* %83
}

; Function Attrs: nounwind uwtable
define internal void @free_SNode(%struct.Parser* %p, %struct.SNode* %s) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %s.addr = alloca %struct.SNode*, align 8
  %i = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* %s, %struct.SNode** %s.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %1, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns1 = getelementptr inbounds %struct.SNode, %struct.SNode* %4, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns1, i32 0, i32 2
  %5 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %5, i64 %idxprom
  %6 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %tobool = icmp ne %struct.ZNode* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns3 = getelementptr inbounds %struct.SNode, %struct.SNode* %9, i32 0, i32 6
  %v4 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns3, i32 0, i32 2
  %10 = load %struct.ZNode**, %struct.ZNode*** %v4, align 8
  %arrayidx5 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %10, i64 %idxprom2
  %11 = load %struct.ZNode*, %struct.ZNode** %arrayidx5, align 8
  %12 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  call void @free_ZNode(%struct.Parser* %7, %struct.ZNode* %11, %struct.SNode* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %14 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns6 = getelementptr inbounds %struct.SNode, %struct.SNode* %14, i32 0, i32 6
  %v7 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns6, i32 0, i32 2
  %15 = load %struct.ZNode**, %struct.ZNode*** %v7, align 8
  %tobool8 = icmp ne %struct.ZNode** %15, null
  br i1 %tobool8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %do.body
  %16 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns9 = getelementptr inbounds %struct.SNode, %struct.SNode* %16, i32 0, i32 6
  %v10 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns9, i32 0, i32 2
  %17 = load %struct.ZNode**, %struct.ZNode*** %v10, align 8
  %18 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns11 = getelementptr inbounds %struct.SNode, %struct.SNode* %18, i32 0, i32 6
  %e = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns11, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e, i32 0, i32 0
  %cmp12 = icmp ne %struct.ZNode** %17, %arraydecay
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true
  %19 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns14 = getelementptr inbounds %struct.SNode, %struct.SNode* %19, i32 0, i32 6
  %v15 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns14, i32 0, i32 2
  %20 = load %struct.ZNode**, %struct.ZNode*** %v15, align 8
  %21 = bitcast %struct.ZNode** %20 to i8*
  call void @free(i8* %21) #3
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true, %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.end.16
  %22 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns18 = getelementptr inbounds %struct.SNode, %struct.SNode* %22, i32 0, i32 6
  %n19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns18, i32 0, i32 0
  store i32 0, i32* %n19, align 4
  %23 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %zns20 = getelementptr inbounds %struct.SNode, %struct.SNode* %23, i32 0, i32 6
  %v21 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns20, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v21, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.17
  br label %do.end.22

do.end.22:                                        ; preds = %do.end
  %24 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes = getelementptr inbounds %struct.Parser, %struct.Parser* %24, i32 0, i32 22
  %25 = load %struct.SNode*, %struct.SNode** %free_snodes, align 8
  %26 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %all_next = getelementptr inbounds %struct.SNode, %struct.SNode* %26, i32 0, i32 9
  store %struct.SNode* %25, %struct.SNode** %all_next, align 8
  %27 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %28 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes23 = getelementptr inbounds %struct.Parser, %struct.Parser* %28, i32 0, i32 22
  store %struct.SNode* %27, %struct.SNode** %free_snodes23, align 8
  ret void
}

declare i8* @d_dup_pathname_str(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @free_old_nodes(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %pn = alloca %struct.PNode*, align 8
  %tpn = alloca %struct.PNode*, align 8
  %lpn = alloca %struct.PNode**, align 8
  %sn = alloca %struct.SNode*, align 8
  %tsn = alloca %struct.SNode*, align 8
  %lsn = alloca %struct.SNode**, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 11
  %all = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash, i32 0, i32 4
  %1 = load %struct.PNode*, %struct.PNode** %all, align 8
  store %struct.PNode* %1, %struct.PNode** %pn, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 12
  %all1 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash, i32 0, i32 4
  %3 = load %struct.SNode*, %struct.SNode** %all1, align 8
  store %struct.SNode* %3, %struct.SNode** %sn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %4 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool = icmp ne %struct.SNode* %4, null
  br i1 %tobool, label %while.body, label %while.end.10

while.body:                                       ; preds = %while.cond
  %5 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state = getelementptr inbounds %struct.SNode, %struct.SNode* %5, i32 0, i32 0
  %6 = load %struct.D_State*, %struct.D_State** %state, align 8
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 3
  %8 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state2 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %8, i32 0, i32 1
  %9 = load %struct.D_State*, %struct.D_State** %state2, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.D_State* %6 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.D_State* %9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 120
  %conv = trunc i64 %sub.ptr.div to i32
  %shl = shl i32 %conv, 12
  %10 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_scope = getelementptr inbounds %struct.SNode, %struct.SNode* %10, i32 0, i32 1
  %11 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %12 = ptrtoint %struct.D_Scope* %11 to i32
  %add = add i32 %shl, %12
  %13 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_globals = getelementptr inbounds %struct.SNode, %struct.SNode* %13, i32 0, i32 2
  %14 = load i8*, i8** %initial_globals, align 8
  %15 = ptrtoint i8* %14 to i32
  %add3 = add i32 %add, %15
  store i32 %add3, i32* %h, align 4
  %16 = load i32, i32* %h, align 4
  %17 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash4 = getelementptr inbounds %struct.Parser, %struct.Parser* %17, i32 0, i32 12
  %m = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash4, i32 0, i32 2
  %18 = load i32, i32* %m, align 4
  %rem = urem i32 %16, %18
  %idxprom = zext i32 %rem to i64
  %19 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash5 = getelementptr inbounds %struct.Parser, %struct.Parser* %19, i32 0, i32 12
  %v = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash5, i32 0, i32 0
  %20 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %20, i64 %idxprom
  store %struct.SNode** %arrayidx, %struct.SNode*** %lsn, align 8
  %21 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %21, %struct.SNode** %tsn, align 8
  %22 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %all_next = getelementptr inbounds %struct.SNode, %struct.SNode* %22, i32 0, i32 9
  %23 = load %struct.SNode*, %struct.SNode** %all_next, align 8
  store %struct.SNode* %23, %struct.SNode** %sn, align 8
  br label %while.cond.6

while.cond.6:                                     ; preds = %while.body.8, %while.body
  %24 = load %struct.SNode**, %struct.SNode*** %lsn, align 8
  %25 = load %struct.SNode*, %struct.SNode** %24, align 8
  %26 = load %struct.SNode*, %struct.SNode** %tsn, align 8
  %cmp = icmp ne %struct.SNode* %25, %26
  br i1 %cmp, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.cond.6
  %27 = load %struct.SNode**, %struct.SNode*** %lsn, align 8
  %28 = load %struct.SNode*, %struct.SNode** %27, align 8
  %bucket_next = getelementptr inbounds %struct.SNode, %struct.SNode* %28, i32 0, i32 8
  store %struct.SNode** %bucket_next, %struct.SNode*** %lsn, align 8
  br label %while.cond.6

while.end:                                        ; preds = %while.cond.6
  %29 = load %struct.SNode**, %struct.SNode*** %lsn, align 8
  %30 = load %struct.SNode*, %struct.SNode** %29, align 8
  %bucket_next9 = getelementptr inbounds %struct.SNode, %struct.SNode* %30, i32 0, i32 8
  %31 = load %struct.SNode*, %struct.SNode** %bucket_next9, align 8
  %32 = load %struct.SNode**, %struct.SNode*** %lsn, align 8
  store %struct.SNode* %31, %struct.SNode** %32, align 8
  br label %while.cond

while.end.10:                                     ; preds = %while.cond
  %33 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash11 = getelementptr inbounds %struct.Parser, %struct.Parser* %33, i32 0, i32 12
  %last_all = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash11, i32 0, i32 5
  %34 = load %struct.SNode*, %struct.SNode** %last_all, align 8
  store %struct.SNode* %34, %struct.SNode** %sn, align 8
  br label %while.cond.12

while.cond.12:                                    ; preds = %do.end, %while.end.10
  %35 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool13 = icmp ne %struct.SNode* %35, null
  br i1 %tobool13, label %while.body.14, label %while.end.17

while.body.14:                                    ; preds = %while.cond.12
  %36 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %36, %struct.SNode** %tsn, align 8
  %37 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %all_next15 = getelementptr inbounds %struct.SNode, %struct.SNode* %37, i32 0, i32 9
  %38 = load %struct.SNode*, %struct.SNode** %all_next15, align 8
  store %struct.SNode* %38, %struct.SNode** %sn, align 8
  br label %do.body

do.body:                                          ; preds = %while.body.14
  %39 = load %struct.SNode*, %struct.SNode** %tsn, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %39, i32 0, i32 7
  %40 = load i32, i32* %refcount, align 4
  %dec = add i32 %40, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool16 = icmp ne i32 %dec, 0
  br i1 %tobool16, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %41 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %42 = load %struct.SNode*, %struct.SNode** %tsn, align 8
  call void @free_SNode(%struct.Parser* %41, %struct.SNode* %42)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %while.cond.12

while.end.17:                                     ; preds = %while.cond.12
  %43 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash18 = getelementptr inbounds %struct.Parser, %struct.Parser* %43, i32 0, i32 12
  %all19 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash18, i32 0, i32 4
  %44 = load %struct.SNode*, %struct.SNode** %all19, align 8
  %45 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash20 = getelementptr inbounds %struct.Parser, %struct.Parser* %45, i32 0, i32 12
  %last_all21 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash20, i32 0, i32 5
  store %struct.SNode* %44, %struct.SNode** %last_all21, align 8
  %46 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash22 = getelementptr inbounds %struct.Parser, %struct.Parser* %46, i32 0, i32 12
  %all23 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash22, i32 0, i32 4
  store %struct.SNode* null, %struct.SNode** %all23, align 8
  br label %while.cond.24

while.cond.24:                                    ; preds = %do.end.105, %while.end.17
  %47 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %tobool25 = icmp ne %struct.PNode* %47, null
  br i1 %tobool25, label %while.body.26, label %while.end.106

while.body.26:                                    ; preds = %while.cond.24
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body.26
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %49, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %50 = load i32, i32* %n, align 4
  %cmp27 = icmp ult i32 %48, %50
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %51 to i64
  %52 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children30 = getelementptr inbounds %struct.PNode, %struct.PNode* %52, i32 0, i32 7
  %v31 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children30, i32 0, i32 2
  %53 = load %struct.PNode**, %struct.PNode*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.PNode*, %struct.PNode** %53, i64 %idxprom29
  %54 = load %struct.PNode*, %struct.PNode** %arrayidx32, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %55 to i64
  %56 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children34 = getelementptr inbounds %struct.PNode, %struct.PNode* %56, i32 0, i32 7
  %v35 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children34, i32 0, i32 2
  %57 = load %struct.PNode**, %struct.PNode*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.PNode*, %struct.PNode** %57, i64 %idxprom33
  %58 = load %struct.PNode*, %struct.PNode** %arrayidx36, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %58, i32 0, i32 14
  %59 = load %struct.PNode*, %struct.PNode** %latest, align 8
  %cmp37 = icmp ne %struct.PNode* %54, %59
  br i1 %cmp37, label %if.then.39, label %if.end.72

if.then.39:                                       ; preds = %for.body
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.39
  %60 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %60 to i64
  %61 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children42 = getelementptr inbounds %struct.PNode, %struct.PNode* %61, i32 0, i32 7
  %v43 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children42, i32 0, i32 2
  %62 = load %struct.PNode**, %struct.PNode*** %v43, align 8
  %arrayidx44 = getelementptr inbounds %struct.PNode*, %struct.PNode** %62, i64 %idxprom41
  %63 = load %struct.PNode*, %struct.PNode** %arrayidx44, align 8
  %latest45 = getelementptr inbounds %struct.PNode, %struct.PNode* %63, i32 0, i32 14
  %64 = load %struct.PNode*, %struct.PNode** %latest45, align 8
  %refcount46 = getelementptr inbounds %struct.PNode, %struct.PNode* %64, i32 0, i32 6
  %65 = load i32, i32* %refcount46, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %refcount46, align 4
  br label %do.end.47

do.end.47:                                        ; preds = %do.body.40
  br label %do.body.48

do.body.48:                                       ; preds = %do.end.47
  %66 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %66 to i64
  %67 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children50 = getelementptr inbounds %struct.PNode, %struct.PNode* %67, i32 0, i32 7
  %v51 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children50, i32 0, i32 2
  %68 = load %struct.PNode**, %struct.PNode*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.PNode*, %struct.PNode** %68, i64 %idxprom49
  %69 = load %struct.PNode*, %struct.PNode** %arrayidx52, align 8
  %refcount53 = getelementptr inbounds %struct.PNode, %struct.PNode* %69, i32 0, i32 6
  %70 = load i32, i32* %refcount53, align 4
  %dec54 = add i32 %70, -1
  store i32 %dec54, i32* %refcount53, align 4
  %tobool55 = icmp ne i32 %dec54, 0
  br i1 %tobool55, label %if.end.61, label %if.then.56

if.then.56:                                       ; preds = %do.body.48
  %71 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %72 to i64
  %73 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children58 = getelementptr inbounds %struct.PNode, %struct.PNode* %73, i32 0, i32 7
  %v59 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children58, i32 0, i32 2
  %74 = load %struct.PNode**, %struct.PNode*** %v59, align 8
  %arrayidx60 = getelementptr inbounds %struct.PNode*, %struct.PNode** %74, i64 %idxprom57
  %75 = load %struct.PNode*, %struct.PNode** %arrayidx60, align 8
  call void @free_PNode(%struct.Parser* %71, %struct.PNode* %75)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %do.body.48
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  %76 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %76 to i64
  %77 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children64 = getelementptr inbounds %struct.PNode, %struct.PNode* %77, i32 0, i32 7
  %v65 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children64, i32 0, i32 2
  %78 = load %struct.PNode**, %struct.PNode*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.PNode*, %struct.PNode** %78, i64 %idxprom63
  %79 = load %struct.PNode*, %struct.PNode** %arrayidx66, align 8
  %latest67 = getelementptr inbounds %struct.PNode, %struct.PNode* %79, i32 0, i32 14
  %80 = load %struct.PNode*, %struct.PNode** %latest67, align 8
  %81 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %81 to i64
  %82 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %children69 = getelementptr inbounds %struct.PNode, %struct.PNode* %82, i32 0, i32 7
  %v70 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children69, i32 0, i32 2
  %83 = load %struct.PNode**, %struct.PNode*** %v70, align 8
  %arrayidx71 = getelementptr inbounds %struct.PNode*, %struct.PNode** %83, i64 %idxprom68
  store %struct.PNode* %80, %struct.PNode** %arrayidx71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.62, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %84 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %84, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %85 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %85, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %86 = load i8*, i8** %s, align 8
  %87 = ptrtoint i8* %86 to i32
  %shl74 = shl i32 %87, 8
  %88 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node75 = getelementptr inbounds %struct.PNode, %struct.PNode* %88, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node75, i32 0, i32 3
  %89 = load i8*, i8** %end_skip, align 8
  %90 = ptrtoint i8* %89 to i32
  %shl76 = shl i32 %90, 16
  %add77 = add i32 %shl74, %shl76
  %91 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node78 = getelementptr inbounds %struct.PNode, %struct.PNode* %91, i32 0, i32 19
  %symbol = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node78, i32 0, i32 0
  %92 = load i32, i32* %symbol, align 4
  %add79 = add i32 %add77, %92
  %93 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %initial_scope80 = getelementptr inbounds %struct.PNode, %struct.PNode* %93, i32 0, i32 17
  %94 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope80, align 8
  %95 = ptrtoint %struct.D_Scope* %94 to i32
  %add81 = add i32 %add79, %95
  %96 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %initial_globals82 = getelementptr inbounds %struct.PNode, %struct.PNode* %96, i32 0, i32 18
  %97 = load i8*, i8** %initial_globals82, align 8
  %98 = ptrtoint i8* %97 to i32
  %add83 = add i32 %add81, %98
  store i32 %add83, i32* %h, align 4
  %99 = load i32, i32* %h, align 4
  %100 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash84 = getelementptr inbounds %struct.Parser, %struct.Parser* %100, i32 0, i32 11
  %m85 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash84, i32 0, i32 2
  %101 = load i32, i32* %m85, align 4
  %rem86 = urem i32 %99, %101
  %idxprom87 = zext i32 %rem86 to i64
  %102 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash88 = getelementptr inbounds %struct.Parser, %struct.Parser* %102, i32 0, i32 11
  %v89 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash88, i32 0, i32 0
  %103 = load %struct.PNode**, %struct.PNode*** %v89, align 8
  %arrayidx90 = getelementptr inbounds %struct.PNode*, %struct.PNode** %103, i64 %idxprom87
  store %struct.PNode** %arrayidx90, %struct.PNode*** %lpn, align 8
  %104 = load %struct.PNode*, %struct.PNode** %pn, align 8
  store %struct.PNode* %104, %struct.PNode** %tpn, align 8
  %105 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %all_next91 = getelementptr inbounds %struct.PNode, %struct.PNode* %105, i32 0, i32 11
  %106 = load %struct.PNode*, %struct.PNode** %all_next91, align 8
  store %struct.PNode* %106, %struct.PNode** %pn, align 8
  br label %while.cond.92

while.cond.92:                                    ; preds = %while.body.95, %for.end
  %107 = load %struct.PNode**, %struct.PNode*** %lpn, align 8
  %108 = load %struct.PNode*, %struct.PNode** %107, align 8
  %109 = load %struct.PNode*, %struct.PNode** %tpn, align 8
  %cmp93 = icmp ne %struct.PNode* %108, %109
  br i1 %cmp93, label %while.body.95, label %while.end.97

while.body.95:                                    ; preds = %while.cond.92
  %110 = load %struct.PNode**, %struct.PNode*** %lpn, align 8
  %111 = load %struct.PNode*, %struct.PNode** %110, align 8
  %bucket_next96 = getelementptr inbounds %struct.PNode, %struct.PNode* %111, i32 0, i32 12
  store %struct.PNode** %bucket_next96, %struct.PNode*** %lpn, align 8
  br label %while.cond.92

while.end.97:                                     ; preds = %while.cond.92
  %112 = load %struct.PNode**, %struct.PNode*** %lpn, align 8
  %113 = load %struct.PNode*, %struct.PNode** %112, align 8
  %bucket_next98 = getelementptr inbounds %struct.PNode, %struct.PNode* %113, i32 0, i32 12
  %114 = load %struct.PNode*, %struct.PNode** %bucket_next98, align 8
  %115 = load %struct.PNode**, %struct.PNode*** %lpn, align 8
  store %struct.PNode* %114, %struct.PNode** %115, align 8
  br label %do.body.99

do.body.99:                                       ; preds = %while.end.97
  %116 = load %struct.PNode*, %struct.PNode** %tpn, align 8
  %refcount100 = getelementptr inbounds %struct.PNode, %struct.PNode* %116, i32 0, i32 6
  %117 = load i32, i32* %refcount100, align 4
  %dec101 = add i32 %117, -1
  store i32 %dec101, i32* %refcount100, align 4
  %tobool102 = icmp ne i32 %dec101, 0
  br i1 %tobool102, label %if.end.104, label %if.then.103

if.then.103:                                      ; preds = %do.body.99
  %118 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %119 = load %struct.PNode*, %struct.PNode** %tpn, align 8
  call void @free_PNode(%struct.Parser* %118, %struct.PNode* %119)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.103, %do.body.99
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %while.cond.24

while.end.106:                                    ; preds = %while.cond.24
  %120 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash107 = getelementptr inbounds %struct.Parser, %struct.Parser* %120, i32 0, i32 11
  %n108 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash107, i32 0, i32 3
  store i32 0, i32* %n108, align 4
  %121 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash109 = getelementptr inbounds %struct.Parser, %struct.Parser* %121, i32 0, i32 11
  %all110 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash109, i32 0, i32 4
  store %struct.PNode* null, %struct.PNode** %all110, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SNode* @add_SNode(%struct.Parser* %p, %struct.D_State* %state, %struct.d_loc_t* %loc, %struct.D_Scope* %sc, i8* %g) #0 {
entry:
  %retval = alloca %struct.SNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %state.addr = alloca %struct.D_State*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %sc.addr = alloca %struct.D_Scope*, align 8
  %g.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %sn = alloca %struct.SNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.D_State* %state, %struct.D_State** %state.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store %struct.D_Scope* %sc, %struct.D_Scope** %sc.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %1 = load %struct.D_State*, %struct.D_State** %state.addr, align 8
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 3
  %3 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state1 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %3, i32 0, i32 1
  %4 = load %struct.D_State*, %struct.D_State** %state1, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.D_State* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.D_State* %4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 120
  %conv = trunc i64 %sub.ptr.div to i32
  %5 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %6 = load i8*, i8** %g.addr, align 8
  %call = call %struct.SNode* @find_SNode(%struct.Parser* %0, i32 %conv, %struct.D_Scope* %5, i8* %6)
  store %struct.SNode* %call, %struct.SNode** %sn, align 8
  %7 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool = icmp ne %struct.SNode* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %8, %struct.SNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %10 = load %struct.D_State*, %struct.D_State** %state.addr, align 8
  %11 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %12 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %13 = load i8*, i8** %g.addr, align 8
  %call2 = call %struct.SNode* @new_SNode(%struct.Parser* %9, %struct.D_State* %10, %struct.d_loc_t* %11, %struct.D_Scope* %12, i8* %13)
  store %struct.SNode* %call2, %struct.SNode** %sn, align 8
  %14 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state3 = getelementptr inbounds %struct.SNode, %struct.SNode* %14, i32 0, i32 0
  %15 = load %struct.D_State*, %struct.D_State** %state3, align 8
  %shifts = getelementptr inbounds %struct.D_State, %struct.D_State* %15, i32 0, i32 5
  %16 = load %struct.D_Shift**, %struct.D_Shift*** %shifts, align 8
  %tobool4 = icmp ne %struct.D_Shift** %16, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %17 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %18 = load %struct.SNode*, %struct.SNode** %sn, align 8
  call void @add_Shift(%struct.Parser* %17, %struct.SNode* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state7 = getelementptr inbounds %struct.SNode, %struct.SNode* %20, i32 0, i32 0
  %21 = load %struct.D_State*, %struct.D_State** %state7, align 8
  %reductions = getelementptr inbounds %struct.D_State, %struct.D_State* %21, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %reductions, i32 0, i32 0
  %22 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %19, %22
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %24 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state9 = getelementptr inbounds %struct.SNode, %struct.SNode* %24, i32 0, i32 0
  %25 = load %struct.D_State*, %struct.D_State** %state9, align 8
  %reductions10 = getelementptr inbounds %struct.D_State, %struct.D_State* %25, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %reductions10, i32 0, i32 1
  %26 = load %struct.D_Reduction**, %struct.D_Reduction*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %26, i64 %idxprom
  %27 = load %struct.D_Reduction*, %struct.D_Reduction** %arrayidx, align 8
  %nelements = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %27, i32 0, i32 0
  %28 = load i16, i16* %nelements, align 2
  %tobool11 = icmp ne i16 %28, 0
  br i1 %tobool11, label %if.end.19, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %30 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %31 to i64
  %32 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state14 = getelementptr inbounds %struct.SNode, %struct.SNode* %32, i32 0, i32 0
  %33 = load %struct.D_State*, %struct.D_State** %state14, align 8
  %reductions15 = getelementptr inbounds %struct.D_State, %struct.D_State* %33, i32 0, i32 2
  %v16 = getelementptr inbounds %struct.anon, %struct.anon* %reductions15, i32 0, i32 1
  %34 = load %struct.D_Reduction**, %struct.D_Reduction*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %34, i64 %idxprom13
  %35 = load %struct.D_Reduction*, %struct.D_Reduction** %arrayidx17, align 8
  %call18 = call %struct.Reduction* @add_Reduction(%struct.Parser* %29, %struct.ZNode* null, %struct.SNode* %30, %struct.D_Reduction* %35)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %37, %struct.SNode** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %38 = load %struct.SNode*, %struct.SNode** %retval
  ret %struct.SNode* %38
}

; Function Attrs: nounwind uwtable
define internal %struct.PNode* @add_PNode(%struct.Parser* %p, i32 %symbol, %struct.d_loc_t* %start_loc, i8* %e, %struct.PNode* %pn, %struct.D_Reduction* %r, %struct.VecZNode* %path, %struct.D_Shift* %sh) #0 {
entry:
  %retval = alloca %struct.PNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %symbol.addr = alloca i32, align 4
  %start_loc.addr = alloca %struct.d_loc_t*, align 8
  %e.addr = alloca i8*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %r.addr = alloca %struct.D_Reduction*, align 8
  %path.addr = alloca %struct.VecZNode*, align 8
  %sh.addr = alloca %struct.D_Shift*, align 8
  %old_pn = alloca %struct.PNode*, align 8
  %new_pn = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.d_loc_t* %start_loc, %struct.d_loc_t** %start_loc.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store %struct.D_Reduction* %r, %struct.D_Reduction** %r.addr, align 8
  store %struct.VecZNode* %path, %struct.VecZNode** %path.addr, align 8
  store %struct.D_Shift* %sh, %struct.D_Shift** %sh.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %1 = load %struct.d_loc_t*, %struct.d_loc_t** %start_loc.addr, align 8
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %1, i32 0, i32 0
  %2 = load i8*, i8** %s, align 8
  %3 = load i8*, i8** %e.addr, align 8
  %4 = load i32, i32* %symbol.addr, align 4
  %5 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %5, i32 0, i32 17
  %6 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 18
  %8 = load i8*, i8** %initial_globals, align 8
  %call = call %struct.PNode* @find_PNode(%struct.Parser* %0, i8* %2, i8* %3, i32 %4, %struct.D_Scope* %6, i8* %8)
  store %struct.PNode* %call, %struct.PNode** %old_pn, align 8
  %9 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %tobool = icmp ne %struct.PNode* %9, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %11 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %12 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %13 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %call1 = call i32 @PNode_equal(%struct.PNode* %10, %struct.D_Reduction* %11, %struct.VecZNode* %12, %struct.D_Shift* %13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  store %struct.PNode* %14, %struct.PNode** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %15 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %16 = load i32, i32* %symbol.addr, align 4
  %17 = load %struct.d_loc_t*, %struct.d_loc_t** %start_loc.addr, align 8
  %18 = load i8*, i8** %e.addr, align 8
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %20 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %21 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %22 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %call3 = call %struct.PNode* @make_PNode(%struct.Parser* %15, i32 %16, %struct.d_loc_t* %17, i8* %18, %struct.PNode* %19, %struct.D_Reduction* %20, %struct.VecZNode* %21, %struct.D_Shift* %22)
  store %struct.PNode* %call3, %struct.PNode** %new_pn, align 8
  %23 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %tobool4 = icmp ne %struct.PNode* %23, null
  br i1 %tobool4, label %if.end.9, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %24 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  store %struct.PNode* %24, %struct.PNode** %old_pn, align 8
  %25 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %tobool6 = icmp ne %struct.PNode* %25, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.then.5
  store %struct.PNode* null, %struct.PNode** %retval
  br label %return

if.end.8:                                         ; preds = %if.then.5
  %26 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %27 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @insert_PNode(%struct.Parser* %26, %struct.PNode* %27)
  br label %Lreturn

if.end.9:                                         ; preds = %if.end
  %28 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %tobool10 = icmp ne %struct.PNode* %28, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.9
  br label %Lreturn

if.end.12:                                        ; preds = %if.end.9
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %compares = getelementptr inbounds %struct.Parser, %struct.Parser* %29, i32 0, i32 9
  %30 = load i32, i32* %compares, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %compares, align 4
  %31 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %32 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %33 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %call13 = call i32 @cmp_pnodes(%struct.Parser* %31, %struct.PNode* %32, %struct.PNode* %33)
  switch i32 %call13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 -1, label %sw.bb.16
    i32 1, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.end.12
  %34 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %ambiguities = getelementptr inbounds %struct.PNode, %struct.PNode* %34, i32 0, i32 13
  %35 = load %struct.PNode*, %struct.PNode** %ambiguities, align 8
  %36 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ambiguities14 = getelementptr inbounds %struct.PNode, %struct.PNode* %36, i32 0, i32 13
  store %struct.PNode* %35, %struct.PNode** %ambiguities14, align 8
  %37 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %38 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %ambiguities15 = getelementptr inbounds %struct.PNode, %struct.PNode* %38, i32 0, i32 13
  store %struct.PNode* %37, %struct.PNode** %ambiguities15, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %if.end.12
  %39 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %40 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @insert_PNode(%struct.Parser* %39, %struct.PNode* %40)
  %41 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %42 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %42, i32 0, i32 14
  store %struct.PNode* %41, %struct.PNode** %latest, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb.16
  %43 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %43, i32 0, i32 6
  %44 = load i32, i32* %refcount, align 4
  %inc17 = add i32 %44, 1
  store i32 %inc17, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %45 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  store %struct.PNode* %45, %struct.PNode** %old_pn, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.end.12
  %46 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %47 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @free_PNode(%struct.Parser* %46, %struct.PNode* %47)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.12, %sw.bb.18, %do.end, %sw.bb
  br label %Lreturn

Lreturn:                                          ; preds = %sw.epilog, %if.then.11, %if.end.8
  %48 = load %struct.PNode*, %struct.PNode** %old_pn, align 8
  store %struct.PNode* %48, %struct.PNode** %retval
  br label %return

return:                                           ; preds = %Lreturn, %if.then.7, %if.then
  %49 = load %struct.PNode*, %struct.PNode** %retval
  ret %struct.PNode* %49
}

; Function Attrs: nounwind uwtable
define internal void @set_add_znode(%struct.VecZNode* %v, %struct.ZNode* %z) #0 {
entry:
  %v.addr = alloca %struct.VecZNode*, align 8
  %z.addr = alloca %struct.ZNode*, align 8
  %vv = alloca %struct.VecZNode, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.VecZNode* %v, %struct.VecZNode** %v.addr, align 8
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  %0 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n1 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %3 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v2 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %3, i32 0, i32 2
  %4 = load %struct.ZNode**, %struct.ZNode*** %v2, align 8
  %tobool = icmp ne %struct.ZNode** %4, null
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %do.body
  %5 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %6 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n4 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %6, i32 0, i32 0
  %7 = load i32, i32* %n4, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %n4, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %e = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %8, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e, i32 0, i32 0
  %9 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v5 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %9, i32 0, i32 2
  store %struct.ZNode** %arraydecay, %struct.ZNode*** %v5, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %arraydecay, i64 %idxprom
  store %struct.ZNode* %5, %struct.ZNode** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %10 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v6 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %10, i32 0, i32 2
  %11 = load %struct.ZNode**, %struct.ZNode*** %v6, align 8
  %12 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %e7 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %12, i32 0, i32 3
  %arraydecay8 = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e7, i32 0, i32 0
  %cmp9 = icmp eq %struct.ZNode** %11, %arraydecay8
  br i1 %cmp9, label %if.then.10, label %if.else.19

if.then.10:                                       ; preds = %if.else
  %13 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n11 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %13, i32 0, i32 0
  %14 = load i32, i32* %n11, align 4
  %cmp12 = icmp ult i32 %14, 3
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.10
  %15 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %16 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n14 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %16, i32 0, i32 0
  %17 = load i32, i32* %n14, align 4
  %inc15 = add i32 %17, 1
  store i32 %inc15, i32* %n14, align 4
  %idxprom16 = zext i32 %17 to i64
  %18 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v17 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %18, i32 0, i32 2
  %19 = load %struct.ZNode**, %struct.ZNode*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %19, i64 %idxprom16
  store %struct.ZNode* %15, %struct.ZNode** %arrayidx18, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.10
  br label %if.end.29

if.else.19:                                       ; preds = %if.else
  %20 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n20 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %20, i32 0, i32 0
  %21 = load i32, i32* %n20, align 4
  %and = and i32 %21, 7
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.else.19
  %22 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %23 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n23 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %23, i32 0, i32 0
  %24 = load i32, i32* %n23, align 4
  %inc24 = add i32 %24, 1
  store i32 %inc24, i32* %n23, align 4
  %idxprom25 = zext i32 %24 to i64
  %25 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v26 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %25, i32 0, i32 2
  %26 = load %struct.ZNode**, %struct.ZNode*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %26, i64 %idxprom25
  store %struct.ZNode* %22, %struct.ZNode** %arrayidx27, align 8
  br label %do.end

if.end.28:                                        ; preds = %if.else.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  %27 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %28 = bitcast %struct.VecZNode* %27 to i8*
  %29 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %30 = bitcast %struct.ZNode* %29 to i8*
  call void @vec_add_internal(i8* %28, i8* %30)
  br label %do.end

do.end:                                           ; preds = %if.end.30, %if.then.22, %if.then.13, %if.then.3
  br label %return

if.end.31:                                        ; preds = %entry
  %31 = load i32, i32* %n, align 4
  %cmp32 = icmp eq i32 %31, 3
  br i1 %cmp32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.end.31
  %32 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %33 = bitcast %struct.VecZNode* %vv to i8*
  %34 = bitcast %struct.VecZNode* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 40, i32 8, i1 false)
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %35 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n35 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %35, i32 0, i32 0
  store i32 0, i32* %n35, align 4
  %36 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v36 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %36, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v36, align 8
  br label %do.end.37

do.end.37:                                        ; preds = %do.body.34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.37
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %n, align 4
  %cmp38 = icmp slt i32 %37, %38
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %40 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %40 to i64
  %v40 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 2
  %41 = load %struct.ZNode**, %struct.ZNode*** %v40, align 8
  %arrayidx41 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %41, i64 %idxprom39
  %42 = load %struct.ZNode*, %struct.ZNode** %arrayidx41, align 8
  call void @set_add_znode_hash(%struct.VecZNode* %39, %struct.ZNode* %42)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %43 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %43, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.43

if.end.43:                                        ; preds = %for.end, %if.end.31
  %44 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %45 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  call void @set_add_znode_hash(%struct.VecZNode* %44, %struct.ZNode* %45)
  br label %return

return:                                           ; preds = %if.end.43, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ZNode* @new_ZNode(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %z = alloca %struct.ZNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 23
  %1 = load %struct.ZNode*, %struct.ZNode** %free_znodes, align 8
  store %struct.ZNode* %1, %struct.ZNode** %z, align 8
  %2 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %tobool = icmp ne %struct.ZNode* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 48) #3
  %3 = bitcast i8* %call to %struct.ZNode*
  store %struct.ZNode* %3, %struct.ZNode** %z, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn1 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %4, i32 0, i32 0
  %5 = bitcast %struct.PNode** %pn1 to %struct.ZNode**
  %6 = load %struct.ZNode*, %struct.ZNode** %5, align 8
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes2 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 23
  store %struct.ZNode* %6, %struct.ZNode** %free_znodes2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %9 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn3 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %9, i32 0, i32 0
  store %struct.PNode* %8, %struct.PNode** %pn3, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %10, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %11 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns4 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %11, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns4, i32 0, i32 2
  store %struct.SNode** null, %struct.SNode*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %12 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  ret %struct.ZNode* %12
}

; Function Attrs: nounwind uwtable
define internal void @reduce_one(%struct.Parser* %p, %struct.Reduction* %r) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %r.addr = alloca %struct.Reduction*, align 8
  %sn = alloca %struct.SNode*, align 8
  %pn = alloca %struct.PNode*, align 8
  %last_pn = alloca %struct.PNode*, align 8
  %first_z = alloca %struct.ZNode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %paths = alloca %struct.VecVecZNode, align 8
  %path = alloca %struct.VecZNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.Reduction* %r, %struct.Reduction** %r.addr, align 8
  %0 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %0, i32 0, i32 1
  %1 = load %struct.SNode*, %struct.SNode** %snode, align 8
  store %struct.SNode* %1, %struct.SNode** %sn, align 8
  %2 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %reduction = getelementptr inbounds %struct.Reduction, %struct.Reduction* %2, i32 0, i32 2
  %3 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %nelements = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %3, i32 0, i32 0
  %4 = load i16, i16* %nelements, align 2
  %conv = zext i16 %4 to i32
  store i32 %conv, i32* %n, align 4
  %5 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %znode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %5, i32 0, i32 0
  %6 = load %struct.ZNode*, %struct.ZNode** %znode, align 8
  %tobool = icmp ne %struct.ZNode* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %8 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %reduction1 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %8, i32 0, i32 2
  %9 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction1, align 8
  %symbol = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %9, i32 0, i32 1
  %10 = load i16, i16* %symbol, align 2
  %conv2 = zext i16 %10 to i32
  %11 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc = getelementptr inbounds %struct.SNode, %struct.SNode* %11, i32 0, i32 3
  %12 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc3 = getelementptr inbounds %struct.SNode, %struct.SNode* %12, i32 0, i32 3
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc3, i32 0, i32 0
  %13 = load i8*, i8** %s, align 8
  %14 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %last_pn4 = getelementptr inbounds %struct.SNode, %struct.SNode* %14, i32 0, i32 5
  %15 = load %struct.PNode*, %struct.PNode** %last_pn4, align 8
  %16 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %reduction5 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %16, i32 0, i32 2
  %17 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction5, align 8
  %call = call %struct.PNode* @add_PNode(%struct.Parser* %7, i32 %conv2, %struct.d_loc_t* %loc, i8* %13, %struct.PNode* %15, %struct.D_Reduction* %17, %struct.VecZNode* null, %struct.D_Shift* null)
  store %struct.PNode* %call, %struct.PNode** %pn, align 8
  %tobool6 = icmp ne %struct.PNode* %call, null
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %19 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc8 = getelementptr inbounds %struct.SNode, %struct.SNode* %19, i32 0, i32 3
  %20 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %21 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %call9 = call %struct.SNode* @goto_PNode(%struct.Parser* %18, %struct.d_loc_t* %loc8, %struct.PNode* %20, %struct.SNode* %21)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.102

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  %n10 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %paths, i32 0, i32 0
  store i32 0, i32* %n10, align 4
  %v = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %paths, i32 0, i32 2
  store %struct.VecZNode** null, %struct.VecZNode*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %22 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %znode11 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %22, i32 0, i32 0
  %23 = load %struct.ZNode*, %struct.ZNode** %znode11, align 8
  %24 = load i32, i32* %n, align 4
  call void @build_paths(%struct.ZNode* %23, %struct.VecVecZNode* %paths, i32 %24)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.99, %do.end
  %25 = load i32, i32* %i, align 4
  %n12 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %paths, i32 0, i32 0
  %26 = load i32, i32* %n12, align 4
  %cmp = icmp ult i32 %25, %26
  br i1 %cmp, label %for.body, label %for.end.101

for.body:                                         ; preds = %for.cond
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %v14 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %paths, i32 0, i32 2
  %28 = load %struct.VecZNode**, %struct.VecZNode*** %v14, align 8
  %arrayidx = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %28, i64 %idxprom
  %29 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx, align 8
  store %struct.VecZNode* %29, %struct.VecZNode** %path, align 8
  %30 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %new_snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %30, i32 0, i32 3
  %31 = load %struct.SNode*, %struct.SNode** %new_snode, align 8
  %tobool15 = icmp ne %struct.SNode* %31, null
  br i1 %tobool15, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then.16
  %32 = load i32, i32* %j, align 4
  %33 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %new_depth = getelementptr inbounds %struct.Reduction, %struct.Reduction* %33, i32 0, i32 4
  %34 = load i32, i32* %new_depth, align 4
  %idxprom18 = sext i32 %34 to i64
  %35 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %35, i32 0, i32 2
  %36 = load %struct.ZNode**, %struct.ZNode*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %36, i64 %idxprom18
  %37 = load %struct.ZNode*, %struct.ZNode** %arrayidx20, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %37, i32 0, i32 1
  %n21 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %38 = load i32, i32* %n21, align 4
  %cmp22 = icmp ult i32 %32, %38
  br i1 %cmp22, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.17
  %39 = load i32, i32* %j, align 4
  %idxprom25 = sext i32 %39 to i64
  %40 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %new_depth26 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %40, i32 0, i32 4
  %41 = load i32, i32* %new_depth26, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v28 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %42, i32 0, i32 2
  %43 = load %struct.ZNode**, %struct.ZNode*** %v28, align 8
  %arrayidx29 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %43, i64 %idxprom27
  %44 = load %struct.ZNode*, %struct.ZNode** %arrayidx29, align 8
  %sns30 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %44, i32 0, i32 1
  %v31 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns30, i32 0, i32 2
  %45 = load %struct.SNode**, %struct.SNode*** %v31, align 8
  %arrayidx32 = getelementptr inbounds %struct.SNode*, %struct.SNode** %45, i64 %idxprom25
  %46 = load %struct.SNode*, %struct.SNode** %arrayidx32, align 8
  %47 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %new_snode33 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %47, i32 0, i32 3
  %48 = load %struct.SNode*, %struct.SNode** %new_snode33, align 8
  %cmp34 = icmp eq %struct.SNode* %46, %48
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.24
  br label %for.end

if.end.37:                                        ; preds = %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %49 = load i32, i32* %j, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.17

for.end:                                          ; preds = %if.then.36, %for.cond.17
  %50 = load i32, i32* %j, align 4
  %51 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %new_depth38 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %51, i32 0, i32 4
  %52 = load i32, i32* %new_depth38, align 4
  %idxprom39 = sext i32 %52 to i64
  %53 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v40 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %53, i32 0, i32 2
  %54 = load %struct.ZNode**, %struct.ZNode*** %v40, align 8
  %arrayidx41 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %54, i64 %idxprom39
  %55 = load %struct.ZNode*, %struct.ZNode** %arrayidx41, align 8
  %sns42 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %55, i32 0, i32 1
  %n43 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns42, i32 0, i32 0
  %56 = load i32, i32* %n43, align 4
  %cmp44 = icmp uge i32 %50, %56
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  br label %for.inc.99

if.end.47:                                        ; preds = %for.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body
  %57 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %n49 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %57, i32 0, i32 0
  %58 = load i32, i32* %n49, align 4
  %cmp50 = icmp ugt i32 %58, 1
  br i1 %cmp50, label %land.lhs.true, label %if.end.65

land.lhs.true:                                    ; preds = %if.end.48
  %59 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v52 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %59, i32 0, i32 2
  %60 = load %struct.ZNode**, %struct.ZNode*** %v52, align 8
  %arrayidx53 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %60, i64 0
  %61 = load %struct.ZNode*, %struct.ZNode** %arrayidx53, align 8
  %pn54 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %61, i32 0, i32 0
  %62 = load %struct.PNode*, %struct.PNode** %pn54, align 8
  %op_assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %62, i32 0, i32 2
  %63 = load i32, i32* %op_assoc, align 4
  %tobool55 = icmp ne i32 %63, 0
  br i1 %tobool55, label %land.lhs.true.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %64 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v56 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %64, i32 0, i32 2
  %65 = load %struct.ZNode**, %struct.ZNode*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %65, i64 1
  %66 = load %struct.ZNode*, %struct.ZNode** %arrayidx57, align 8
  %pn58 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %66, i32 0, i32 0
  %67 = load %struct.PNode*, %struct.PNode** %pn58, align 8
  %op_assoc59 = getelementptr inbounds %struct.PNode, %struct.PNode* %67, i32 0, i32 2
  %68 = load i32, i32* %op_assoc59, align 4
  %tobool60 = icmp ne i32 %68, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %69 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %call62 = call i32 @check_path_priorities_internal(%struct.VecZNode* %69)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.61
  br label %for.inc.99

if.end.65:                                        ; preds = %land.lhs.true.61, %lor.lhs.false, %if.end.48
  %70 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %70, i32 0, i32 8
  %71 = load i32, i32* %reductions, align 4
  %inc66 = add nsw i32 %71, 1
  store i32 %inc66, i32* %reductions, align 4
  %72 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v67 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %72, i32 0, i32 2
  %73 = load %struct.ZNode**, %struct.ZNode*** %v67, align 8
  %arrayidx68 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %73, i64 0
  %74 = load %struct.ZNode*, %struct.ZNode** %arrayidx68, align 8
  %pn69 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %74, i32 0, i32 0
  %75 = load %struct.PNode*, %struct.PNode** %pn69, align 8
  store %struct.PNode* %75, %struct.PNode** %last_pn, align 8
  %76 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %76, 1
  %idxprom70 = sext i32 %sub to i64
  %77 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %v71 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %77, i32 0, i32 2
  %78 = load %struct.ZNode**, %struct.ZNode*** %v71, align 8
  %arrayidx72 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %78, i64 %idxprom70
  %79 = load %struct.ZNode*, %struct.ZNode** %arrayidx72, align 8
  store %struct.ZNode* %79, %struct.ZNode** %first_z, align 8
  %80 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %81 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %reduction73 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %81, i32 0, i32 2
  %82 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction73, align 8
  %symbol74 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %82, i32 0, i32 1
  %83 = load i16, i16* %symbol74, align 2
  %conv75 = zext i16 %83 to i32
  %84 = load %struct.ZNode*, %struct.ZNode** %first_z, align 8
  %pn76 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %84, i32 0, i32 0
  %85 = load %struct.PNode*, %struct.PNode** %pn76, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %85, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %86 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc77 = getelementptr inbounds %struct.SNode, %struct.SNode* %86, i32 0, i32 3
  %s78 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc77, i32 0, i32 0
  %87 = load i8*, i8** %s78, align 8
  %88 = load %struct.PNode*, %struct.PNode** %last_pn, align 8
  %89 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %reduction79 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %89, i32 0, i32 2
  %90 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction79, align 8
  %91 = load %struct.VecZNode*, %struct.VecZNode** %path, align 8
  %call80 = call %struct.PNode* @add_PNode(%struct.Parser* %80, i32 %conv75, %struct.d_loc_t* %start_loc, i8* %87, %struct.PNode* %88, %struct.D_Reduction* %90, %struct.VecZNode* %91, %struct.D_Shift* null)
  store %struct.PNode* %call80, %struct.PNode** %pn, align 8
  %92 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %tobool81 = icmp ne %struct.PNode* %92, null
  br i1 %tobool81, label %if.then.82, label %if.end.98

if.then.82:                                       ; preds = %if.end.65
  store i32 0, i32* %j, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.95, %if.then.82
  %93 = load i32, i32* %j, align 4
  %94 = load %struct.ZNode*, %struct.ZNode** %first_z, align 8
  %sns84 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %94, i32 0, i32 1
  %n85 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns84, i32 0, i32 0
  %95 = load i32, i32* %n85, align 4
  %cmp86 = icmp ult i32 %93, %95
  br i1 %cmp86, label %for.body.88, label %for.end.97

for.body.88:                                      ; preds = %for.cond.83
  %96 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %97 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc89 = getelementptr inbounds %struct.SNode, %struct.SNode* %97, i32 0, i32 3
  %98 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %99 = load i32, i32* %j, align 4
  %idxprom90 = sext i32 %99 to i64
  %100 = load %struct.ZNode*, %struct.ZNode** %first_z, align 8
  %sns91 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %100, i32 0, i32 1
  %v92 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns91, i32 0, i32 2
  %101 = load %struct.SNode**, %struct.SNode*** %v92, align 8
  %arrayidx93 = getelementptr inbounds %struct.SNode*, %struct.SNode** %101, i64 %idxprom90
  %102 = load %struct.SNode*, %struct.SNode** %arrayidx93, align 8
  %call94 = call %struct.SNode* @goto_PNode(%struct.Parser* %96, %struct.d_loc_t* %loc89, %struct.PNode* %98, %struct.SNode* %102)
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.88
  %103 = load i32, i32* %j, align 4
  %inc96 = add nsw i32 %103, 1
  store i32 %inc96, i32* %j, align 4
  br label %for.cond.83

for.end.97:                                       ; preds = %for.cond.83
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %if.end.65
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98, %if.then.64, %if.then.46
  %104 = load i32, i32* %i, align 4
  %inc100 = add nsw i32 %104, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond

for.end.101:                                      ; preds = %for.cond
  call void @free_paths(%struct.VecVecZNode* %paths)
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %if.end
  br label %do.body.103

do.body.103:                                      ; preds = %if.end.102
  %105 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %105, i32 0, i32 7
  %106 = load i32, i32* %refcount, align 4
  %dec = add i32 %106, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool104 = icmp ne i32 %dec, 0
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %do.body.103
  %107 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %108 = load %struct.SNode*, %struct.SNode** %sn, align 8
  call void @free_SNode(%struct.Parser* %107, %struct.SNode* %108)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %do.body.103
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  %109 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %109, i32 0, i32 18
  %110 = load %struct.Reduction*, %struct.Reduction** %free_reductions, align 8
  %111 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %next = getelementptr inbounds %struct.Reduction, %struct.Reduction* %111, i32 0, i32 5
  store %struct.Reduction* %110, %struct.Reduction** %next, align 8
  %112 = load %struct.Reduction*, %struct.Reduction** %r.addr, align 8
  %113 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions108 = getelementptr inbounds %struct.Parser, %struct.Parser* %113, i32 0, i32 18
  store %struct.Reduction* %112, %struct.Reduction** %free_reductions108, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @error_recovery(%struct.Parser* %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Parser*, align 8
  %sn = alloca %struct.SNode*, align 8
  %best_sn = alloca %struct.SNode*, align 8
  %best_s = alloca i8*, align 8
  %ss = alloca i8*, align 8
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %head = alloca i32, align 4
  %tail = alloca i32, align 4
  %res = alloca i32, align 4
  %best_er = alloca %struct.D_ErrorRecoveryHint*, align 8
  %q = alloca %struct.SNode**, align 8
  %best_pn = alloca %struct.PNode*, align 8
  %er = alloca %struct.D_ErrorRecoveryHint*, align 8
  %rr = alloca %struct.D_Reduction*, align 8
  %r = alloca %struct.Reduction*, align 8
  %best_loc = alloca %struct.d_loc_t, align 8
  %new_pn = alloca %struct.PNode*, align 8
  %new_sn = alloca %struct.SNode*, align 8
  %z = alloca %struct.ZNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* null, %struct.SNode** %best_sn, align 8
  store i8* null, i8** %best_s, align 8
  store i32 0, i32* %head, align 4
  store i32 0, i32* %tail, align 4
  store i32 1, i32* %res, align 4
  store %struct.D_ErrorRecoveryHint* null, %struct.D_ErrorRecoveryHint** %best_er, align 8
  %call = call noalias i8* @malloc(i64 80000) #3
  %0 = bitcast i8* %call to %struct.SNode**
  store %struct.SNode** %0, %struct.SNode*** %q, align 8
  %1 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %1, i32 0, i32 12
  %last_all = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash, i32 0, i32 5
  %2 = load %struct.SNode*, %struct.SNode** %last_all, align 8
  %tobool = icmp ne %struct.SNode* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %res, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 0
  %loc = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 6
  %5 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash1 = getelementptr inbounds %struct.Parser, %struct.Parser* %5, i32 0, i32 12
  %last_all2 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash1, i32 0, i32 5
  %6 = load %struct.SNode*, %struct.SNode** %last_all2, align 8
  %loc3 = getelementptr inbounds %struct.SNode, %struct.SNode* %6, i32 0, i32 3
  %7 = bitcast %struct.d_loc_t* %loc to i8*
  %8 = bitcast %struct.d_loc_t* %loc3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* %8, i64 32, i32 8, i1 false)
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user4 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 0
  %error_recovery = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user4, i32 0, i32 16
  %10 = load i32, i32* %error_recovery, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %res, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user8 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 0
  %loc9 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user8, i32 0, i32 6
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc9, i32 0, i32 4
  %13 = load i32, i32* %line, align 4
  %14 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %last_syntax_error_line = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 17
  %15 = load i32, i32* %last_syntax_error_line, align 4
  %cmp = icmp sgt i32 %13, %15
  br i1 %cmp, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.end.7
  %16 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user11 = getelementptr inbounds %struct.Parser, %struct.Parser* %16, i32 0, i32 0
  %loc12 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user11, i32 0, i32 6
  %line13 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc12, i32 0, i32 4
  %17 = load i32, i32* %line13, align 4
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %last_syntax_error_line14 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 17
  store i32 %17, i32* %last_syntax_error_line14, align 4
  %19 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user15 = getelementptr inbounds %struct.Parser, %struct.Parser* %19, i32 0, i32 0
  %syntax_errors = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user15, i32 0, i32 18
  %20 = load i32, i32* %syntax_errors, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %syntax_errors, align 4
  %21 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user16 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 0
  %syntax_error_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user16, i32 0, i32 3
  %22 = load void (%struct.D_Parser*)*, void (%struct.D_Parser*)** %syntax_error_fn, align 8
  %23 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %24 = bitcast %struct.Parser* %23 to %struct.D_Parser*
  call void %22(%struct.D_Parser* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.10, %if.end.7
  %25 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash18 = getelementptr inbounds %struct.Parser, %struct.Parser* %25, i32 0, i32 12
  %last_all19 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash18, i32 0, i32 5
  %26 = load %struct.SNode*, %struct.SNode** %last_all19, align 8
  store %struct.SNode* %26, %struct.SNode** %sn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %27 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool20 = icmp ne %struct.SNode* %27, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %tail, align 4
  %cmp21 = icmp slt i32 %28, 9999
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.body
  %29 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %30 = load i32, i32* %tail, align 4
  %inc23 = add nsw i32 %30, 1
  store i32 %inc23, i32* %tail, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.SNode**, %struct.SNode*** %q, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %31, i64 %idxprom
  store %struct.SNode* %29, %struct.SNode** %arrayidx, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %32 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %all_next = getelementptr inbounds %struct.SNode, %struct.SNode* %32, i32 0, i32 9
  %33 = load %struct.SNode*, %struct.SNode** %all_next, align 8
  store %struct.SNode* %33, %struct.SNode** %sn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash25 = getelementptr inbounds %struct.Parser, %struct.Parser* %34, i32 0, i32 12
  %last_all26 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash25, i32 0, i32 5
  %35 = load %struct.SNode*, %struct.SNode** %last_all26, align 8
  %loc27 = getelementptr inbounds %struct.SNode, %struct.SNode* %35, i32 0, i32 3
  %s28 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc27, i32 0, i32 0
  %36 = load i8*, i8** %s28, align 8
  store i8* %36, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.114, %for.end
  %37 = load i32, i32* %tail, align 4
  %38 = load i32, i32* %head, align 4
  %cmp29 = icmp sgt i32 %37, %38
  br i1 %cmp29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load i32, i32* %head, align 4
  %inc30 = add nsw i32 %39, 1
  store i32 %inc30, i32* %head, align 4
  %idxprom31 = sext i32 %39 to i64
  %40 = load %struct.SNode**, %struct.SNode*** %q, align 8
  %arrayidx32 = getelementptr inbounds %struct.SNode*, %struct.SNode** %40, i64 %idxprom31
  %41 = load %struct.SNode*, %struct.SNode** %arrayidx32, align 8
  store %struct.SNode* %41, %struct.SNode** %sn, align 8
  %42 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state = getelementptr inbounds %struct.SNode, %struct.SNode* %42, i32 0, i32 0
  %43 = load %struct.D_State*, %struct.D_State** %state, align 8
  %error_recovery_hints = getelementptr inbounds %struct.D_State, %struct.D_State* %43, i32 0, i32 4
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %error_recovery_hints, i32 0, i32 0
  %44 = load i32, i32* %n, align 4
  %tobool33 = icmp ne i32 %44, 0
  br i1 %tobool33, label %if.then.34, label %if.end.72

if.then.34:                                       ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.69, %if.then.34
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state36 = getelementptr inbounds %struct.SNode, %struct.SNode* %46, i32 0, i32 0
  %47 = load %struct.D_State*, %struct.D_State** %state36, align 8
  %error_recovery_hints37 = getelementptr inbounds %struct.D_State, %struct.D_State* %47, i32 0, i32 4
  %n38 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %error_recovery_hints37, i32 0, i32 0
  %48 = load i32, i32* %n38, align 4
  %cmp39 = icmp ult i32 %45, %48
  br i1 %cmp39, label %for.body.40, label %for.end.71

for.body.40:                                      ; preds = %for.cond.35
  %49 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %49 to i64
  %50 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state42 = getelementptr inbounds %struct.SNode, %struct.SNode* %50, i32 0, i32 0
  %51 = load %struct.D_State*, %struct.D_State** %state42, align 8
  %error_recovery_hints43 = getelementptr inbounds %struct.D_State, %struct.D_State* %51, i32 0, i32 4
  %v = getelementptr inbounds %struct.anon.1, %struct.anon.1* %error_recovery_hints43, i32 0, i32 1
  %52 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %v, align 8
  %arrayidx44 = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %52, i64 %idxprom41
  store %struct.D_ErrorRecoveryHint* %arrayidx44, %struct.D_ErrorRecoveryHint** %er, align 8
  %53 = load i8*, i8** %s, align 8
  %54 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %er, align 8
  %string = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %54, i32 0, i32 2
  %55 = load i8*, i8** %string, align 8
  %call45 = call i8* @find_substr(i8* %53, i8* %55)
  store i8* %call45, i8** %ss, align 8
  %tobool46 = icmp ne i8* %call45, null
  br i1 %tobool46, label %if.then.47, label %if.end.68

if.then.47:                                       ; preds = %for.body.40
  %56 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %tobool48 = icmp ne %struct.SNode* %56, null
  br i1 %tobool48, label %lor.lhs.false, label %if.then.66

lor.lhs.false:                                    ; preds = %if.then.47
  %57 = load i8*, i8** %ss, align 8
  %58 = load i8*, i8** %best_s, align 8
  %cmp49 = icmp ult i8* %57, %58
  br i1 %cmp49, label %if.then.66, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false
  %59 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %tobool51 = icmp ne %struct.SNode* %59, null
  br i1 %tobool51, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %lor.lhs.false.50
  %60 = load i8*, i8** %ss, align 8
  %61 = load i8*, i8** %best_s, align 8
  %cmp52 = icmp eq i8* %60, %61
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.67

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %62 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %depth = getelementptr inbounds %struct.SNode, %struct.SNode* %62, i32 0, i32 4
  %63 = load i32, i32* %depth, align 4
  %64 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %depth54 = getelementptr inbounds %struct.SNode, %struct.SNode* %64, i32 0, i32 4
  %65 = load i32, i32* %depth54, align 4
  %cmp55 = icmp ult i32 %63, %65
  br i1 %cmp55, label %if.then.66, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %land.lhs.true.53
  %66 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %depth57 = getelementptr inbounds %struct.SNode, %struct.SNode* %66, i32 0, i32 4
  %67 = load i32, i32* %depth57, align 4
  %68 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %depth58 = getelementptr inbounds %struct.SNode, %struct.SNode* %68, i32 0, i32 4
  %69 = load i32, i32* %depth58, align 4
  %cmp59 = icmp eq i32 %67, %69
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.67

land.lhs.true.60:                                 ; preds = %lor.lhs.false.56
  %70 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %best_er, align 8
  %depth61 = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %70, i32 0, i32 0
  %71 = load i16, i16* %depth61, align 2
  %conv = zext i16 %71 to i32
  %72 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %er, align 8
  %depth62 = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %72, i32 0, i32 0
  %73 = load i16, i16* %depth62, align 2
  %conv63 = zext i16 %73 to i32
  %cmp64 = icmp slt i32 %conv, %conv63
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.60, %land.lhs.true.53, %lor.lhs.false, %if.then.47
  %74 = load %struct.SNode*, %struct.SNode** %sn, align 8
  store %struct.SNode* %74, %struct.SNode** %best_sn, align 8
  %75 = load i8*, i8** %ss, align 8
  store i8* %75, i8** %best_s, align 8
  %76 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %er, align 8
  store %struct.D_ErrorRecoveryHint* %76, %struct.D_ErrorRecoveryHint** %best_er, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %land.lhs.true.60, %lor.lhs.false.56, %land.lhs.true, %lor.lhs.false.50
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.40
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %77 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %77, 1
  store i32 %inc70, i32* %i, align 4
  br label %for.cond.35

for.end.71:                                       ; preds = %for.cond.35
  br label %if.end.72

if.end.72:                                        ; preds = %for.end.71, %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.112, %if.end.72
  %78 = load i32, i32* %i, align 4
  %79 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %79, i32 0, i32 6
  %n74 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %80 = load i32, i32* %n74, align 4
  %cmp75 = icmp ult i32 %78, %80
  br i1 %cmp75, label %for.body.77, label %for.end.114

for.body.77:                                      ; preds = %for.cond.73
  %81 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %81 to i64
  %82 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns79 = getelementptr inbounds %struct.SNode, %struct.SNode* %82, i32 0, i32 6
  %v80 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns79, i32 0, i32 2
  %83 = load %struct.ZNode**, %struct.ZNode*** %v80, align 8
  %arrayidx81 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %83, i64 %idxprom78
  %84 = load %struct.ZNode*, %struct.ZNode** %arrayidx81, align 8
  %tobool82 = icmp ne %struct.ZNode* %84, null
  br i1 %tobool82, label %if.then.83, label %if.end.111

if.then.83:                                       ; preds = %for.body.77
  store i32 0, i32* %j, align 4
  br label %for.cond.84

for.cond.84:                                      ; preds = %for.inc.108, %if.then.83
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %86 to i64
  %87 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns86 = getelementptr inbounds %struct.SNode, %struct.SNode* %87, i32 0, i32 6
  %v87 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns86, i32 0, i32 2
  %88 = load %struct.ZNode**, %struct.ZNode*** %v87, align 8
  %arrayidx88 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %88, i64 %idxprom85
  %89 = load %struct.ZNode*, %struct.ZNode** %arrayidx88, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %89, i32 0, i32 1
  %n89 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %90 = load i32, i32* %n89, align 4
  %cmp90 = icmp ult i32 %85, %90
  br i1 %cmp90, label %for.body.92, label %for.end.110

for.body.92:                                      ; preds = %for.cond.84
  %91 = load i32, i32* %tail, align 4
  %cmp93 = icmp slt i32 %91, 9999
  br i1 %cmp93, label %if.then.95, label %if.end.107

if.then.95:                                       ; preds = %for.body.92
  %92 = load i32, i32* %j, align 4
  %idxprom96 = sext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %93 to i64
  %94 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns98 = getelementptr inbounds %struct.SNode, %struct.SNode* %94, i32 0, i32 6
  %v99 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns98, i32 0, i32 2
  %95 = load %struct.ZNode**, %struct.ZNode*** %v99, align 8
  %arrayidx100 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %95, i64 %idxprom97
  %96 = load %struct.ZNode*, %struct.ZNode** %arrayidx100, align 8
  %sns101 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %96, i32 0, i32 1
  %v102 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns101, i32 0, i32 2
  %97 = load %struct.SNode**, %struct.SNode*** %v102, align 8
  %arrayidx103 = getelementptr inbounds %struct.SNode*, %struct.SNode** %97, i64 %idxprom96
  %98 = load %struct.SNode*, %struct.SNode** %arrayidx103, align 8
  %99 = load i32, i32* %tail, align 4
  %inc104 = add nsw i32 %99, 1
  store i32 %inc104, i32* %tail, align 4
  %idxprom105 = sext i32 %99 to i64
  %100 = load %struct.SNode**, %struct.SNode*** %q, align 8
  %arrayidx106 = getelementptr inbounds %struct.SNode*, %struct.SNode** %100, i64 %idxprom105
  store %struct.SNode* %98, %struct.SNode** %arrayidx106, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.95, %for.body.92
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %101 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %101, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.84

for.end.110:                                      ; preds = %for.cond.84
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %for.body.77
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %102 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %102, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond.73

for.end.114:                                      ; preds = %for.cond.73
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %103 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %tobool115 = icmp ne %struct.SNode* %103, null
  br i1 %tobool115, label %if.then.116, label %if.end.300

if.then.116:                                      ; preds = %while.end
  %call117 = call noalias i8* @malloc(i64 56) #3
  %104 = bitcast i8* %call117 to %struct.D_Reduction*
  store %struct.D_Reduction* %104, %struct.D_Reduction** %rr, align 8
  %call118 = call noalias i8* @malloc(i64 48) #3
  %105 = bitcast i8* %call118 to %struct.Reduction*
  store %struct.Reduction* %105, %struct.Reduction** %r, align 8
  %106 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user119 = getelementptr inbounds %struct.Parser, %struct.Parser* %106, i32 0, i32 0
  %loc120 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user119, i32 0, i32 6
  %107 = bitcast %struct.d_loc_t* %best_loc to i8*
  %108 = bitcast %struct.d_loc_t* %loc120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 32, i32 8, i1 false)
  %109 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %110 = bitcast %struct.D_Reduction* %109 to i8*
  call void @llvm.memset.p0i8.i64(i8* %110, i8 0, i64 56, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.then.116
  %111 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %111, i32 0, i32 24
  %v121 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions, i32 0, i32 2
  %112 = load %struct.D_Reduction**, %struct.D_Reduction*** %v121, align 8
  %tobool122 = icmp ne %struct.D_Reduction** %112, null
  br i1 %tobool122, label %if.else, label %if.then.123

if.then.123:                                      ; preds = %do.body
  %113 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %114 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions124 = getelementptr inbounds %struct.Parser, %struct.Parser* %114, i32 0, i32 24
  %n125 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions124, i32 0, i32 0
  %115 = load i32, i32* %n125, align 4
  %inc126 = add i32 %115, 1
  store i32 %inc126, i32* %n125, align 4
  %idxprom127 = zext i32 %115 to i64
  %116 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions128 = getelementptr inbounds %struct.Parser, %struct.Parser* %116, i32 0, i32 24
  %e = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions128, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.D_Reduction*], [3 x %struct.D_Reduction*]* %e, i32 0, i32 0
  %117 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions129 = getelementptr inbounds %struct.Parser, %struct.Parser* %117, i32 0, i32 24
  %v130 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions129, i32 0, i32 2
  store %struct.D_Reduction** %arraydecay, %struct.D_Reduction*** %v130, align 8
  %arrayidx131 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %arraydecay, i64 %idxprom127
  store %struct.D_Reduction* %113, %struct.D_Reduction** %arrayidx131, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %118 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions132 = getelementptr inbounds %struct.Parser, %struct.Parser* %118, i32 0, i32 24
  %v133 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions132, i32 0, i32 2
  %119 = load %struct.D_Reduction**, %struct.D_Reduction*** %v133, align 8
  %120 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions134 = getelementptr inbounds %struct.Parser, %struct.Parser* %120, i32 0, i32 24
  %e135 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions134, i32 0, i32 3
  %arraydecay136 = getelementptr inbounds [3 x %struct.D_Reduction*], [3 x %struct.D_Reduction*]* %e135, i32 0, i32 0
  %cmp137 = icmp eq %struct.D_Reduction** %119, %arraydecay136
  br i1 %cmp137, label %if.then.139, label %if.else.153

if.then.139:                                      ; preds = %if.else
  %121 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions140 = getelementptr inbounds %struct.Parser, %struct.Parser* %121, i32 0, i32 24
  %n141 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions140, i32 0, i32 0
  %122 = load i32, i32* %n141, align 4
  %cmp142 = icmp ult i32 %122, 3
  br i1 %cmp142, label %if.then.144, label %if.end.152

if.then.144:                                      ; preds = %if.then.139
  %123 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %124 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions145 = getelementptr inbounds %struct.Parser, %struct.Parser* %124, i32 0, i32 24
  %n146 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions145, i32 0, i32 0
  %125 = load i32, i32* %n146, align 4
  %inc147 = add i32 %125, 1
  store i32 %inc147, i32* %n146, align 4
  %idxprom148 = zext i32 %125 to i64
  %126 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions149 = getelementptr inbounds %struct.Parser, %struct.Parser* %126, i32 0, i32 24
  %v150 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions149, i32 0, i32 2
  %127 = load %struct.D_Reduction**, %struct.D_Reduction*** %v150, align 8
  %arrayidx151 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %127, i64 %idxprom148
  store %struct.D_Reduction* %123, %struct.D_Reduction** %arrayidx151, align 8
  br label %do.end

if.end.152:                                       ; preds = %if.then.139
  br label %if.end.166

if.else.153:                                      ; preds = %if.else
  %128 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions154 = getelementptr inbounds %struct.Parser, %struct.Parser* %128, i32 0, i32 24
  %n155 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions154, i32 0, i32 0
  %129 = load i32, i32* %n155, align 4
  %and = and i32 %129, 7
  %tobool156 = icmp ne i32 %and, 0
  br i1 %tobool156, label %if.then.157, label %if.end.165

if.then.157:                                      ; preds = %if.else.153
  %130 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %131 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions158 = getelementptr inbounds %struct.Parser, %struct.Parser* %131, i32 0, i32 24
  %n159 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions158, i32 0, i32 0
  %132 = load i32, i32* %n159, align 4
  %inc160 = add i32 %132, 1
  store i32 %inc160, i32* %n159, align 4
  %idxprom161 = zext i32 %132 to i64
  %133 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions162 = getelementptr inbounds %struct.Parser, %struct.Parser* %133, i32 0, i32 24
  %v163 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %error_reductions162, i32 0, i32 2
  %134 = load %struct.D_Reduction**, %struct.D_Reduction*** %v163, align 8
  %arrayidx164 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %134, i64 %idxprom161
  store %struct.D_Reduction* %130, %struct.D_Reduction** %arrayidx164, align 8
  br label %do.end

if.end.165:                                       ; preds = %if.else.153
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.152
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166
  %135 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %error_reductions168 = getelementptr inbounds %struct.Parser, %struct.Parser* %135, i32 0, i32 24
  %136 = bitcast %struct.anon.2* %error_reductions168 to i8*
  %137 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %138 = bitcast %struct.D_Reduction* %137 to i8*
  call void @vec_add_internal(i8* %136, i8* %138)
  br label %do.end

do.end:                                           ; preds = %if.end.167, %if.then.157, %if.then.144, %if.then.123
  %139 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %best_er, align 8
  %depth169 = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %139, i32 0, i32 0
  %140 = load i16, i16* %depth169, align 2
  %conv170 = zext i16 %140 to i32
  %add = add nsw i32 %conv170, 1
  %conv171 = trunc i32 %add to i16
  %141 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %nelements = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %141, i32 0, i32 0
  store i16 %conv171, i16* %nelements, align 2
  %142 = load %struct.D_ErrorRecoveryHint*, %struct.D_ErrorRecoveryHint** %best_er, align 8
  %symbol = getelementptr inbounds %struct.D_ErrorRecoveryHint, %struct.D_ErrorRecoveryHint* %142, i32 0, i32 1
  %143 = load i16, i16* %symbol, align 2
  %144 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %symbol172 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %144, i32 0, i32 1
  store i16 %143, i16* %symbol172, align 2
  %s173 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %best_loc, i32 0, i32 0
  %145 = load i8*, i8** %s173, align 8
  %146 = load i8*, i8** %best_s, align 8
  %line174 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %best_loc, i32 0, i32 4
  call void @update_line(i8* %145, i8* %146, i32* %line174)
  %147 = load i8*, i8** %best_s, align 8
  %s175 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %best_loc, i32 0, i32 0
  store i8* %147, i8** %s175, align 8
  %148 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %zns176 = getelementptr inbounds %struct.SNode, %struct.SNode* %148, i32 0, i32 6
  %v177 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns176, i32 0, i32 2
  %149 = load %struct.ZNode**, %struct.ZNode*** %v177, align 8
  %arrayidx178 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %149, i64 0
  %150 = load %struct.ZNode*, %struct.ZNode** %arrayidx178, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %150, i32 0, i32 0
  %151 = load %struct.PNode*, %struct.PNode** %pn, align 8
  store %struct.PNode* %151, %struct.PNode** %best_pn, align 8
  %152 = load %struct.PNode*, %struct.PNode** %best_pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %152, i32 0, i32 19
  %white_space = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 5
  %153 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space, align 8
  %154 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %155 = bitcast %struct.Parser* %154 to %struct.D_Parser*
  %156 = load %struct.PNode*, %struct.PNode** %best_pn, align 8
  %parse_node179 = getelementptr inbounds %struct.PNode, %struct.PNode* %156, i32 0, i32 19
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node179, i32 0, i32 6
  call void %153(%struct.D_Parser* %155, %struct.d_loc_t* %best_loc, i8** %globals)
  br label %do.body.180

do.body.180:                                      ; preds = %do.end
  %157 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %157, i32 0, i32 7
  %158 = load i32, i32* %refcount, align 4
  %inc181 = add i32 %158, 1
  store i32 %inc181, i32* %refcount, align 4
  br label %do.end.182

do.end.182:                                       ; preds = %do.body.180
  %159 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %160 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user183 = getelementptr inbounds %struct.Parser, %struct.Parser* %160, i32 0, i32 0
  %loc184 = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user183, i32 0, i32 6
  %s185 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %best_loc, i32 0, i32 0
  %161 = load i8*, i8** %s185, align 8
  %162 = load %struct.PNode*, %struct.PNode** %best_pn, align 8
  %call186 = call %struct.PNode* @add_PNode(%struct.Parser* %159, i32 0, %struct.d_loc_t* %loc184, i8* %161, %struct.PNode* %162, %struct.D_Reduction* null, %struct.VecZNode* null, %struct.D_Shift* null)
  store %struct.PNode* %call186, %struct.PNode** %new_pn, align 8
  %163 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %164 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %state187 = getelementptr inbounds %struct.SNode, %struct.SNode* %164, i32 0, i32 0
  %165 = load %struct.D_State*, %struct.D_State** %state187, align 8
  %166 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %166, i32 0, i32 17
  %167 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %168 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %168, i32 0, i32 18
  %169 = load i8*, i8** %initial_globals, align 8
  %call188 = call %struct.SNode* @new_SNode(%struct.Parser* %163, %struct.D_State* %165, %struct.d_loc_t* %best_loc, %struct.D_Scope* %167, i8* %169)
  store %struct.SNode* %call188, %struct.SNode** %new_sn, align 8
  %170 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %171 = load %struct.SNode*, %struct.SNode** %new_sn, align 8
  %last_pn = getelementptr inbounds %struct.SNode, %struct.SNode* %171, i32 0, i32 5
  store %struct.PNode* %170, %struct.PNode** %last_pn, align 8
  %172 = load %struct.SNode*, %struct.SNode** %new_sn, align 8
  %zns189 = getelementptr inbounds %struct.SNode, %struct.SNode* %172, i32 0, i32 6
  %173 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %174 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %call190 = call %struct.ZNode* @new_ZNode(%struct.Parser* %173, %struct.PNode* %174)
  store %struct.ZNode* %call190, %struct.ZNode** %z, align 8
  call void @set_add_znode(%struct.VecZNode* %zns189, %struct.ZNode* %call190)
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.182
  %175 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %refcount192 = getelementptr inbounds %struct.PNode, %struct.PNode* %175, i32 0, i32 6
  %176 = load i32, i32* %refcount192, align 4
  %inc193 = add i32 %176, 1
  store i32 %inc193, i32* %refcount192, align 4
  br label %do.end.194

do.end.194:                                       ; preds = %do.body.191
  br label %do.body.195

do.body.195:                                      ; preds = %do.end.194
  %177 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns196 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %177, i32 0, i32 1
  %v197 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns196, i32 0, i32 2
  %178 = load %struct.SNode**, %struct.SNode*** %v197, align 8
  %tobool198 = icmp ne %struct.SNode** %178, null
  br i1 %tobool198, label %if.else.210, label %if.then.199

if.then.199:                                      ; preds = %do.body.195
  %179 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %180 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns200 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %180, i32 0, i32 1
  %n201 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns200, i32 0, i32 0
  %181 = load i32, i32* %n201, align 4
  %inc202 = add i32 %181, 1
  store i32 %inc202, i32* %n201, align 4
  %idxprom203 = zext i32 %181 to i64
  %182 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns204 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %182, i32 0, i32 1
  %e205 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns204, i32 0, i32 3
  %arraydecay206 = getelementptr inbounds [3 x %struct.SNode*], [3 x %struct.SNode*]* %e205, i32 0, i32 0
  %183 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns207 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %183, i32 0, i32 1
  %v208 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns207, i32 0, i32 2
  store %struct.SNode** %arraydecay206, %struct.SNode*** %v208, align 8
  %arrayidx209 = getelementptr inbounds %struct.SNode*, %struct.SNode** %arraydecay206, i64 %idxprom203
  store %struct.SNode* %179, %struct.SNode** %arrayidx209, align 8
  br label %do.end.249

if.else.210:                                      ; preds = %do.body.195
  %184 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns211 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %184, i32 0, i32 1
  %v212 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns211, i32 0, i32 2
  %185 = load %struct.SNode**, %struct.SNode*** %v212, align 8
  %186 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns213 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %186, i32 0, i32 1
  %e214 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns213, i32 0, i32 3
  %arraydecay215 = getelementptr inbounds [3 x %struct.SNode*], [3 x %struct.SNode*]* %e214, i32 0, i32 0
  %cmp216 = icmp eq %struct.SNode** %185, %arraydecay215
  br i1 %cmp216, label %if.then.218, label %if.else.232

if.then.218:                                      ; preds = %if.else.210
  %187 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns219 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %187, i32 0, i32 1
  %n220 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns219, i32 0, i32 0
  %188 = load i32, i32* %n220, align 4
  %cmp221 = icmp ult i32 %188, 3
  br i1 %cmp221, label %if.then.223, label %if.end.231

if.then.223:                                      ; preds = %if.then.218
  %189 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %190 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns224 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %190, i32 0, i32 1
  %n225 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns224, i32 0, i32 0
  %191 = load i32, i32* %n225, align 4
  %inc226 = add i32 %191, 1
  store i32 %inc226, i32* %n225, align 4
  %idxprom227 = zext i32 %191 to i64
  %192 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns228 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %192, i32 0, i32 1
  %v229 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns228, i32 0, i32 2
  %193 = load %struct.SNode**, %struct.SNode*** %v229, align 8
  %arrayidx230 = getelementptr inbounds %struct.SNode*, %struct.SNode** %193, i64 %idxprom227
  store %struct.SNode* %189, %struct.SNode** %arrayidx230, align 8
  br label %do.end.249

if.end.231:                                       ; preds = %if.then.218
  br label %if.end.246

if.else.232:                                      ; preds = %if.else.210
  %194 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns233 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %194, i32 0, i32 1
  %n234 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns233, i32 0, i32 0
  %195 = load i32, i32* %n234, align 4
  %and235 = and i32 %195, 7
  %tobool236 = icmp ne i32 %and235, 0
  br i1 %tobool236, label %if.then.237, label %if.end.245

if.then.237:                                      ; preds = %if.else.232
  %196 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %197 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns238 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %197, i32 0, i32 1
  %n239 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns238, i32 0, i32 0
  %198 = load i32, i32* %n239, align 4
  %inc240 = add i32 %198, 1
  store i32 %inc240, i32* %n239, align 4
  %idxprom241 = zext i32 %198 to i64
  %199 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns242 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %199, i32 0, i32 1
  %v243 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns242, i32 0, i32 2
  %200 = load %struct.SNode**, %struct.SNode*** %v243, align 8
  %arrayidx244 = getelementptr inbounds %struct.SNode*, %struct.SNode** %200, i64 %idxprom241
  store %struct.SNode* %196, %struct.SNode** %arrayidx244, align 8
  br label %do.end.249

if.end.245:                                       ; preds = %if.else.232
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.231
  br label %if.end.247

if.end.247:                                       ; preds = %if.end.246
  %201 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns248 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %201, i32 0, i32 1
  %202 = bitcast %struct.VecSNode* %sns248 to i8*
  %203 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %204 = bitcast %struct.SNode* %203 to i8*
  call void @vec_add_internal(i8* %202, i8* %204)
  br label %do.end.249

do.end.249:                                       ; preds = %if.end.247, %if.then.237, %if.then.223, %if.then.199
  %205 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %206 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %znode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %206, i32 0, i32 0
  store %struct.ZNode* %205, %struct.ZNode** %znode, align 8
  %207 = load %struct.SNode*, %struct.SNode** %new_sn, align 8
  %208 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %208, i32 0, i32 1
  store %struct.SNode* %207, %struct.SNode** %snode, align 8
  br label %do.body.250

do.body.250:                                      ; preds = %do.end.249
  %209 = load %struct.SNode*, %struct.SNode** %best_sn, align 8
  %refcount251 = getelementptr inbounds %struct.SNode, %struct.SNode* %209, i32 0, i32 7
  %210 = load i32, i32* %refcount251, align 4
  %inc252 = add i32 %210, 1
  store i32 %inc252, i32* %refcount251, align 4
  br label %do.end.253

do.end.253:                                       ; preds = %do.body.250
  %211 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %212 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %reduction = getelementptr inbounds %struct.Reduction, %struct.Reduction* %212, i32 0, i32 2
  store %struct.D_Reduction* %211, %struct.D_Reduction** %reduction, align 8
  %213 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %new_snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %213, i32 0, i32 3
  store %struct.SNode* null, %struct.SNode** %new_snode, align 8
  %214 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %next = getelementptr inbounds %struct.Reduction, %struct.Reduction* %214, i32 0, i32 5
  store %struct.Reduction* null, %struct.Reduction** %next, align 8
  %215 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  call void @free_old_nodes(%struct.Parser* %215)
  %216 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %217 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  call void @reduce_one(%struct.Parser* %216, %struct.Reduction* %217)
  store i32 0, i32* %i, align 4
  br label %for.cond.254

for.cond.254:                                     ; preds = %for.inc.292, %do.end.253
  %218 = load i32, i32* %i, align 4
  %219 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %219, i32 0, i32 3
  %220 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %nstates = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %220, i32 0, i32 0
  %221 = load i32, i32* %nstates, align 4
  %cmp255 = icmp ult i32 %218, %221
  br i1 %cmp255, label %for.body.257, label %for.end.294

for.body.257:                                     ; preds = %for.cond.254
  %222 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %222 to i64
  %223 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash259 = getelementptr inbounds %struct.Parser, %struct.Parser* %223, i32 0, i32 12
  %v260 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash259, i32 0, i32 0
  %224 = load %struct.SNode**, %struct.SNode*** %v260, align 8
  %arrayidx261 = getelementptr inbounds %struct.SNode*, %struct.SNode** %224, i64 %idxprom258
  %225 = load %struct.SNode*, %struct.SNode** %arrayidx261, align 8
  store %struct.SNode* %225, %struct.SNode** %sn, align 8
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.290, %for.body.257
  %226 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool263 = icmp ne %struct.SNode* %226, null
  br i1 %tobool263, label %for.body.264, label %for.end.291

for.body.264:                                     ; preds = %for.cond.262
  store i32 0, i32* %j, align 4
  br label %for.cond.265

for.cond.265:                                     ; preds = %for.inc.287, %for.body.264
  %227 = load i32, i32* %j, align 4
  %228 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns266 = getelementptr inbounds %struct.SNode, %struct.SNode* %228, i32 0, i32 6
  %n267 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns266, i32 0, i32 0
  %229 = load i32, i32* %n267, align 4
  %cmp268 = icmp ult i32 %227, %229
  br i1 %cmp268, label %for.body.270, label %for.end.289

for.body.270:                                     ; preds = %for.cond.265
  %230 = load i32, i32* %j, align 4
  %idxprom271 = sext i32 %230 to i64
  %231 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns272 = getelementptr inbounds %struct.SNode, %struct.SNode* %231, i32 0, i32 6
  %v273 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns272, i32 0, i32 2
  %232 = load %struct.ZNode**, %struct.ZNode*** %v273, align 8
  %arrayidx274 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %232, i64 %idxprom271
  %233 = load %struct.ZNode*, %struct.ZNode** %arrayidx274, align 8
  store %struct.ZNode* %233, %struct.ZNode** %z, align 8
  %tobool275 = icmp ne %struct.ZNode* %233, null
  br i1 %tobool275, label %if.then.276, label %if.end.286

if.then.276:                                      ; preds = %for.body.270
  %234 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn277 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %234, i32 0, i32 0
  %235 = load %struct.PNode*, %struct.PNode** %pn277, align 8
  %reduction278 = getelementptr inbounds %struct.PNode, %struct.PNode* %235, i32 0, i32 4
  %236 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction278, align 8
  %237 = load %struct.D_Reduction*, %struct.D_Reduction** %rr, align 8
  %cmp279 = icmp eq %struct.D_Reduction* %236, %237
  br i1 %cmp279, label %if.then.281, label %if.end.285

if.then.281:                                      ; preds = %if.then.276
  %238 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn282 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %238, i32 0, i32 0
  %239 = load %struct.PNode*, %struct.PNode** %pn282, align 8
  %evaluated = getelementptr inbounds %struct.PNode, %struct.PNode* %239, i32 0, i32 9
  store i8 1, i8* %evaluated, align 1
  %240 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn283 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %240, i32 0, i32 0
  %241 = load %struct.PNode*, %struct.PNode** %pn283, align 8
  %error_recovery284 = getelementptr inbounds %struct.PNode, %struct.PNode* %241, i32 0, i32 10
  store i8 1, i8* %error_recovery284, align 1
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.281, %if.then.276
  br label %if.end.286

if.end.286:                                       ; preds = %if.end.285, %for.body.270
  br label %for.inc.287

for.inc.287:                                      ; preds = %if.end.286
  %242 = load i32, i32* %j, align 4
  %inc288 = add nsw i32 %242, 1
  store i32 %inc288, i32* %j, align 4
  br label %for.cond.265

for.end.289:                                      ; preds = %for.cond.265
  br label %for.inc.290

for.inc.290:                                      ; preds = %for.end.289
  %243 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %bucket_next = getelementptr inbounds %struct.SNode, %struct.SNode* %243, i32 0, i32 8
  %244 = load %struct.SNode*, %struct.SNode** %bucket_next, align 8
  store %struct.SNode* %244, %struct.SNode** %sn, align 8
  br label %for.cond.262

for.end.291:                                      ; preds = %for.cond.262
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.end.291
  %245 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %245, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond.254

for.end.294:                                      ; preds = %for.cond.254
  %246 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %246, i32 0, i32 14
  %247 = load %struct.Shift*, %struct.Shift** %shifts_todo, align 8
  %tobool295 = icmp ne %struct.Shift* %247, null
  br i1 %tobool295, label %if.then.298, label %lor.lhs.false.296

lor.lhs.false.296:                                ; preds = %for.end.294
  %248 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %248, i32 0, i32 13
  %249 = load %struct.Reduction*, %struct.Reduction** %reductions_todo, align 8
  %tobool297 = icmp ne %struct.Reduction* %249, null
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %lor.lhs.false.296, %for.end.294
  store i32 0, i32* %res, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %lor.lhs.false.296
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %while.end
  %250 = load %struct.SNode**, %struct.SNode*** %q, align 8
  %251 = bitcast %struct.SNode** %250 to i8*
  call void @free(i8* %251) #3
  %252 = load i32, i32* %res, align 4
  store i32 %252, i32* %retval
  br label %return

return:                                           ; preds = %if.end.300, %if.then.6, %if.then
  %253 = load i32, i32* %retval
  ret i32 %253
}

; Function Attrs: nounwind uwtable
define internal void @cmp_stacks(%struct.Parser* %p) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pos = alloca i8*, align 8
  %a = alloca %struct.Shift*, align 8
  %b = alloca %struct.Shift*, align 8
  %al = alloca %struct.Shift**, align 8
  %bl = alloca %struct.Shift**, align 8
  %az = alloca %struct.ZNode*, align 8
  %bz = alloca %struct.ZNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 14
  %1 = load %struct.Shift*, %struct.Shift** %shifts_todo, align 8
  %snode = getelementptr inbounds %struct.Shift, %struct.Shift* %1, i32 0, i32 0
  %2 = load %struct.SNode*, %struct.SNode** %snode, align 8
  %loc = getelementptr inbounds %struct.SNode, %struct.SNode* %2, i32 0, i32 3
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 0
  %3 = load i8*, i8** %s, align 8
  store i8* %3, i8** %pos, align 8
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo1 = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 14
  store %struct.Shift** %shifts_todo1, %struct.Shift*** %al, align 8
  %5 = load %struct.Shift**, %struct.Shift*** %al, align 8
  %6 = load %struct.Shift*, %struct.Shift** %5, align 8
  store %struct.Shift* %6, %struct.Shift** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %entry
  %7 = load %struct.Shift*, %struct.Shift** %a, align 8
  %tobool = icmp ne %struct.Shift* %7, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %8 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode2 = getelementptr inbounds %struct.Shift, %struct.Shift* %8, i32 0, i32 0
  %9 = load %struct.SNode*, %struct.SNode** %snode2, align 8
  %loc3 = getelementptr inbounds %struct.SNode, %struct.SNode* %9, i32 0, i32 3
  %s4 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc3, i32 0, i32 0
  %10 = load i8*, i8** %s4, align 8
  %11 = load i8*, i8** %pos, align 8
  %cmp = icmp eq i8* %10, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %12, label %for.body, label %for.end.84

for.body:                                         ; preds = %land.end
  %13 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode5 = getelementptr inbounds %struct.Shift, %struct.Shift* %13, i32 0, i32 0
  %14 = load %struct.SNode*, %struct.SNode** %snode5, align 8
  %call = call %struct.ZNode* @binary_op_ZNode(%struct.SNode* %14)
  store %struct.ZNode* %call, %struct.ZNode** %az, align 8
  %tobool6 = icmp ne %struct.ZNode* %call, null
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.81

if.end:                                           ; preds = %for.body
  %15 = load %struct.Shift*, %struct.Shift** %a, align 8
  %next = getelementptr inbounds %struct.Shift, %struct.Shift* %15, i32 0, i32 1
  store %struct.Shift** %next, %struct.Shift*** %bl, align 8
  %16 = load %struct.Shift*, %struct.Shift** %a, align 8
  %next7 = getelementptr inbounds %struct.Shift, %struct.Shift* %16, i32 0, i32 1
  %17 = load %struct.Shift*, %struct.Shift** %next7, align 8
  store %struct.Shift* %17, %struct.Shift** %b, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.end
  %18 = load %struct.Shift*, %struct.Shift** %b, align 8
  %tobool9 = icmp ne %struct.Shift* %18, null
  br i1 %tobool9, label %land.rhs.10, label %land.end.15

land.rhs.10:                                      ; preds = %for.cond.8
  %19 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode11 = getelementptr inbounds %struct.Shift, %struct.Shift* %19, i32 0, i32 0
  %20 = load %struct.SNode*, %struct.SNode** %snode11, align 8
  %loc12 = getelementptr inbounds %struct.SNode, %struct.SNode* %20, i32 0, i32 3
  %s13 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc12, i32 0, i32 0
  %21 = load i8*, i8** %s13, align 8
  %22 = load i8*, i8** %pos, align 8
  %cmp14 = icmp eq i8* %21, %22
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.10, %for.cond.8
  %23 = phi i1 [ false, %for.cond.8 ], [ %cmp14, %land.rhs.10 ]
  br i1 %23, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %land.end.15
  %24 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode17 = getelementptr inbounds %struct.Shift, %struct.Shift* %24, i32 0, i32 0
  %25 = load %struct.SNode*, %struct.SNode** %snode17, align 8
  %call18 = call %struct.ZNode* @binary_op_ZNode(%struct.SNode* %25)
  store %struct.ZNode* %call18, %struct.ZNode** %bz, align 8
  %tobool19 = icmp ne %struct.ZNode* %call18, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %for.body.16
  br label %for.inc

if.end.21:                                        ; preds = %for.body.16
  %26 = load %struct.ZNode*, %struct.ZNode** %az, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %26, i32 0, i32 1
  %27 = load %struct.ZNode*, %struct.ZNode** %bz, align 8
  %sns22 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %27, i32 0, i32 1
  %call23 = call i32 @VecSNode_equal(%struct.VecSNode* %sns, %struct.VecSNode* %sns22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.21
  br label %for.inc

if.end.26:                                        ; preds = %if.end.21
  %28 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode27 = getelementptr inbounds %struct.Shift, %struct.Shift* %28, i32 0, i32 0
  %29 = load %struct.SNode*, %struct.SNode** %snode27, align 8
  %state = getelementptr inbounds %struct.SNode, %struct.SNode* %29, i32 0, i32 0
  %30 = load %struct.D_State*, %struct.D_State** %state, align 8
  %reduces_to = getelementptr inbounds %struct.D_State, %struct.D_State* %30, i32 0, i32 13
  %31 = load i32, i32* %reduces_to, align 4
  %conv = sext i32 %31 to i64
  %32 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode28 = getelementptr inbounds %struct.Shift, %struct.Shift* %32, i32 0, i32 0
  %33 = load %struct.SNode*, %struct.SNode** %snode28, align 8
  %state29 = getelementptr inbounds %struct.SNode, %struct.SNode* %33, i32 0, i32 0
  %34 = load %struct.D_State*, %struct.D_State** %state29, align 8
  %35 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %35, i32 0, i32 3
  %36 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %state30 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %36, i32 0, i32 1
  %37 = load %struct.D_State*, %struct.D_State** %state30, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.D_State* %34 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.D_State* %37 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 120
  %cmp31 = icmp ne i64 %conv, %sub.ptr.div
  br i1 %cmp31, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %if.end.26
  %38 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode33 = getelementptr inbounds %struct.Shift, %struct.Shift* %38, i32 0, i32 0
  %39 = load %struct.SNode*, %struct.SNode** %snode33, align 8
  %state34 = getelementptr inbounds %struct.SNode, %struct.SNode* %39, i32 0, i32 0
  %40 = load %struct.D_State*, %struct.D_State** %state34, align 8
  %reduces_to35 = getelementptr inbounds %struct.D_State, %struct.D_State* %40, i32 0, i32 13
  %41 = load i32, i32* %reduces_to35, align 4
  %conv36 = sext i32 %41 to i64
  %42 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode37 = getelementptr inbounds %struct.Shift, %struct.Shift* %42, i32 0, i32 0
  %43 = load %struct.SNode*, %struct.SNode** %snode37, align 8
  %state38 = getelementptr inbounds %struct.SNode, %struct.SNode* %43, i32 0, i32 0
  %44 = load %struct.D_State*, %struct.D_State** %state38, align 8
  %45 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t39 = getelementptr inbounds %struct.Parser, %struct.Parser* %45, i32 0, i32 3
  %46 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t39, align 8
  %state40 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %46, i32 0, i32 1
  %47 = load %struct.D_State*, %struct.D_State** %state40, align 8
  %sub.ptr.lhs.cast41 = ptrtoint %struct.D_State* %44 to i64
  %sub.ptr.rhs.cast42 = ptrtoint %struct.D_State* %47 to i64
  %sub.ptr.sub43 = sub i64 %sub.ptr.lhs.cast41, %sub.ptr.rhs.cast42
  %sub.ptr.div44 = sdiv exact i64 %sub.ptr.sub43, 120
  %cmp45 = icmp ne i64 %conv36, %sub.ptr.div44
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.48:                                        ; preds = %land.lhs.true, %if.end.26
  %48 = load %struct.ZNode*, %struct.ZNode** %az, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %48, i32 0, i32 0
  %49 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %op_priority = getelementptr inbounds %struct.PNode, %struct.PNode* %49, i32 0, i32 3
  %50 = load i32, i32* %op_priority, align 4
  %51 = load %struct.ZNode*, %struct.ZNode** %bz, align 8
  %pn49 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %51, i32 0, i32 0
  %52 = load %struct.PNode*, %struct.PNode** %pn49, align 8
  %op_priority50 = getelementptr inbounds %struct.PNode, %struct.PNode* %52, i32 0, i32 3
  %53 = load i32, i32* %op_priority50, align 4
  %cmp51 = icmp sgt i32 %50, %53
  br i1 %cmp51, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %if.end.48
  %54 = load %struct.Shift*, %struct.Shift** %b, align 8
  %next54 = getelementptr inbounds %struct.Shift, %struct.Shift* %54, i32 0, i32 1
  %55 = load %struct.Shift*, %struct.Shift** %next54, align 8
  %56 = load %struct.Shift**, %struct.Shift*** %bl, align 8
  store %struct.Shift* %55, %struct.Shift** %56, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.53
  %57 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode55 = getelementptr inbounds %struct.Shift, %struct.Shift* %57, i32 0, i32 0
  %58 = load %struct.SNode*, %struct.SNode** %snode55, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %58, i32 0, i32 7
  %59 = load i32, i32* %refcount, align 4
  %dec = add i32 %59, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool56 = icmp ne i32 %dec, 0
  br i1 %tobool56, label %if.end.59, label %if.then.57

if.then.57:                                       ; preds = %do.body
  %60 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %61 = load %struct.Shift*, %struct.Shift** %b, align 8
  %snode58 = getelementptr inbounds %struct.Shift, %struct.Shift* %61, i32 0, i32 0
  %62 = load %struct.SNode*, %struct.SNode** %snode58, align 8
  call void @free_SNode(%struct.Parser* %60, %struct.SNode* %62)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.59
  %63 = load %struct.Shift*, %struct.Shift** %b, align 8
  %64 = bitcast %struct.Shift* %63 to i8*
  call void @free(i8* %64) #3
  %65 = load %struct.Shift**, %struct.Shift*** %bl, align 8
  %66 = load %struct.Shift*, %struct.Shift** %65, align 8
  store %struct.Shift* %66, %struct.Shift** %b, align 8
  br label %for.end

if.end.60:                                        ; preds = %if.end.48
  %67 = load %struct.ZNode*, %struct.ZNode** %az, align 8
  %pn61 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %67, i32 0, i32 0
  %68 = load %struct.PNode*, %struct.PNode** %pn61, align 8
  %op_priority62 = getelementptr inbounds %struct.PNode, %struct.PNode* %68, i32 0, i32 3
  %69 = load i32, i32* %op_priority62, align 4
  %70 = load %struct.ZNode*, %struct.ZNode** %bz, align 8
  %pn63 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %70, i32 0, i32 0
  %71 = load %struct.PNode*, %struct.PNode** %pn63, align 8
  %op_priority64 = getelementptr inbounds %struct.PNode, %struct.PNode* %71, i32 0, i32 3
  %72 = load i32, i32* %op_priority64, align 4
  %cmp65 = icmp slt i32 %69, %72
  br i1 %cmp65, label %if.then.67, label %if.end.78

if.then.67:                                       ; preds = %if.end.60
  %73 = load %struct.Shift*, %struct.Shift** %a, align 8
  %next68 = getelementptr inbounds %struct.Shift, %struct.Shift* %73, i32 0, i32 1
  %74 = load %struct.Shift*, %struct.Shift** %next68, align 8
  %75 = load %struct.Shift**, %struct.Shift*** %al, align 8
  store %struct.Shift* %74, %struct.Shift** %75, align 8
  br label %do.body.69

do.body.69:                                       ; preds = %if.then.67
  %76 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode70 = getelementptr inbounds %struct.Shift, %struct.Shift* %76, i32 0, i32 0
  %77 = load %struct.SNode*, %struct.SNode** %snode70, align 8
  %refcount71 = getelementptr inbounds %struct.SNode, %struct.SNode* %77, i32 0, i32 7
  %78 = load i32, i32* %refcount71, align 4
  %dec72 = add i32 %78, -1
  store i32 %dec72, i32* %refcount71, align 4
  %tobool73 = icmp ne i32 %dec72, 0
  br i1 %tobool73, label %if.end.76, label %if.then.74

if.then.74:                                       ; preds = %do.body.69
  %79 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %80 = load %struct.Shift*, %struct.Shift** %a, align 8
  %snode75 = getelementptr inbounds %struct.Shift, %struct.Shift* %80, i32 0, i32 0
  %81 = load %struct.SNode*, %struct.SNode** %snode75, align 8
  call void @free_SNode(%struct.Parser* %79, %struct.SNode* %81)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %do.body.69
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %82 = load %struct.Shift*, %struct.Shift** %a, align 8
  %83 = bitcast %struct.Shift* %82 to i8*
  call void @free(i8* %83) #3
  %84 = load %struct.Shift**, %struct.Shift*** %al, align 8
  %85 = load %struct.Shift*, %struct.Shift** %84, align 8
  store %struct.Shift* %85, %struct.Shift** %a, align 8
  br label %Lbreak2

if.end.78:                                        ; preds = %if.end.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.78, %if.then.47, %if.then.25, %if.then.20
  %86 = load %struct.Shift*, %struct.Shift** %b, align 8
  %next79 = getelementptr inbounds %struct.Shift, %struct.Shift* %86, i32 0, i32 1
  store %struct.Shift** %next79, %struct.Shift*** %bl, align 8
  %87 = load %struct.Shift*, %struct.Shift** %b, align 8
  %next80 = getelementptr inbounds %struct.Shift, %struct.Shift* %87, i32 0, i32 1
  %88 = load %struct.Shift*, %struct.Shift** %next80, align 8
  store %struct.Shift* %88, %struct.Shift** %b, align 8
  br label %for.cond.8

for.end:                                          ; preds = %do.end, %land.end.15
  br label %Lbreak2

Lbreak2:                                          ; preds = %for.end, %do.end.77
  br label %for.inc.81

for.inc.81:                                       ; preds = %Lbreak2, %if.then
  %89 = load %struct.Shift*, %struct.Shift** %a, align 8
  %next82 = getelementptr inbounds %struct.Shift, %struct.Shift* %89, i32 0, i32 1
  store %struct.Shift** %next82, %struct.Shift*** %al, align 8
  %90 = load %struct.Shift*, %struct.Shift** %a, align 8
  %next83 = getelementptr inbounds %struct.Shift, %struct.Shift* %90, i32 0, i32 1
  %91 = load %struct.Shift*, %struct.Shift** %next83, align 8
  store %struct.Shift* %91, %struct.Shift** %a, align 8
  br label %for.cond

for.end.84:                                       ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @commit_stack(%struct.Parser* %p, %struct.SNode* %sn) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Parser*, align 8
  %sn.addr = alloca %struct.SNode*, align 8
  %res = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* %sn, %struct.SNode** %sn.addr, align 8
  store i32 0, i32* %res, align 4
  %0 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %0, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns1 = getelementptr inbounds %struct.SNode, %struct.SNode* %2, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns1, i32 0, i32 2
  %3 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %3, i64 0
  %4 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %4, i32 0, i32 1
  %n2 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %5 = load i32, i32* %n2, align 4
  %cmp3 = icmp ugt i32 %5, 1
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 -2, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns6 = getelementptr inbounds %struct.SNode, %struct.SNode* %6, i32 0, i32 6
  %v7 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns6, i32 0, i32 2
  %7 = load %struct.ZNode**, %struct.ZNode*** %v7, align 8
  %arrayidx8 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %7, i64 0
  %8 = load %struct.ZNode*, %struct.ZNode** %arrayidx8, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %8, i32 0, i32 0
  %9 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %10 = load i8*, i8** %s, align 8
  %11 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns9 = getelementptr inbounds %struct.SNode, %struct.SNode* %11, i32 0, i32 6
  %v10 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns9, i32 0, i32 2
  %12 = load %struct.ZNode**, %struct.ZNode*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %12, i64 0
  %13 = load %struct.ZNode*, %struct.ZNode** %arrayidx11, align 8
  %pn12 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %13, i32 0, i32 0
  %14 = load %struct.PNode*, %struct.PNode** %pn12, align 8
  %parse_node13 = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node13, i32 0, i32 2
  %15 = load i8*, i8** %end, align 8
  %cmp14 = icmp eq i8* %10, %15
  br i1 %cmp14, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end.5
  %16 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns15 = getelementptr inbounds %struct.SNode, %struct.SNode* %16, i32 0, i32 6
  %v16 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns15, i32 0, i32 2
  %17 = load %struct.ZNode**, %struct.ZNode*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %17, i64 0
  %18 = load %struct.ZNode*, %struct.ZNode** %arrayidx17, align 8
  %pn18 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %18, i32 0, i32 0
  %19 = load %struct.PNode*, %struct.PNode** %pn18, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 4
  %20 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool = icmp ne %struct.D_Reduction* %20, null
  br i1 %tobool, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %21 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns20 = getelementptr inbounds %struct.SNode, %struct.SNode* %21, i32 0, i32 6
  %v21 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns20, i32 0, i32 2
  %22 = load %struct.ZNode**, %struct.ZNode*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %22, i64 0
  %23 = load %struct.ZNode*, %struct.ZNode** %arrayidx22, align 8
  %pn23 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %23, i32 0, i32 0
  %24 = load %struct.PNode*, %struct.PNode** %pn23, align 8
  %reduction24 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 4
  %25 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction24, align 8
  %final_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %25, i32 0, i32 3
  %26 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %final_code, align 8
  %tobool25 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %26, null
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %land.lhs.true.19
  store i32 -3, i32* %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.19, %land.lhs.true, %if.end.5
  %27 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns28 = getelementptr inbounds %struct.SNode, %struct.SNode* %27, i32 0, i32 6
  %v29 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns28, i32 0, i32 2
  %28 = load %struct.ZNode**, %struct.ZNode*** %v29, align 8
  %arrayidx30 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %28, i64 0
  %29 = load %struct.ZNode*, %struct.ZNode** %arrayidx30, align 8
  %sns31 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %29, i32 0, i32 1
  %n32 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns31, i32 0, i32 0
  %30 = load i32, i32* %n32, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.end.44

if.then.34:                                       ; preds = %if.end.27
  %31 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %32 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns35 = getelementptr inbounds %struct.SNode, %struct.SNode* %32, i32 0, i32 6
  %v36 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns35, i32 0, i32 2
  %33 = load %struct.ZNode**, %struct.ZNode*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %33, i64 0
  %34 = load %struct.ZNode*, %struct.ZNode** %arrayidx37, align 8
  %sns38 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %34, i32 0, i32 1
  %v39 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns38, i32 0, i32 2
  %35 = load %struct.SNode**, %struct.SNode*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.SNode*, %struct.SNode** %35, i64 0
  %36 = load %struct.SNode*, %struct.SNode** %arrayidx40, align 8
  %call = call i32 @commit_stack(%struct.Parser* %31, %struct.SNode* %36)
  store i32 %call, i32* %res, align 4
  %cmp41 = icmp slt i32 %call, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.34
  %37 = load i32, i32* %res, align 4
  store i32 %37, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.then.34
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.27
  %38 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %39 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns45 = getelementptr inbounds %struct.SNode, %struct.SNode* %39, i32 0, i32 6
  %v46 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns45, i32 0, i32 2
  %40 = load %struct.ZNode**, %struct.ZNode*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %40, i64 0
  %41 = load %struct.ZNode*, %struct.ZNode** %arrayidx47, align 8
  %pn48 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %41, i32 0, i32 0
  %42 = load %struct.PNode*, %struct.PNode** %pn48, align 8
  %call49 = call %struct.PNode* @commit_tree(%struct.Parser* %38, %struct.PNode* %42)
  %43 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns50 = getelementptr inbounds %struct.SNode, %struct.SNode* %43, i32 0, i32 6
  %v51 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns50, i32 0, i32 2
  %44 = load %struct.ZNode**, %struct.ZNode*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %44, i64 0
  %45 = load %struct.ZNode*, %struct.ZNode** %arrayidx52, align 8
  %pn53 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %45, i32 0, i32 0
  store %struct.PNode* %call49, %struct.PNode** %pn53, align 8
  %46 = load i32, i32* %res, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.42, %if.then.26, %if.then.4, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal void @shift_one(%struct.Parser* %p, %struct.Shift* %s) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %s.addr = alloca %struct.Shift*, align 8
  %i = alloca i32, align 4
  %nshifts = alloca i32, align 4
  %loc = alloca %struct.d_loc_t, align 8
  %skip_loc = alloca %struct.d_loc_t, align 8
  %skip_fn = alloca void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, align 8
  %new_pn = alloca %struct.PNode*, align 8
  %state = alloca %struct.D_State*, align 8
  %r = alloca %struct.ShiftResult*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.Shift* %s, %struct.Shift** %s.addr, align 8
  store i32 0, i32* %nshifts, align 4
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* null, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %skip_fn, align 8
  %0 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode = getelementptr inbounds %struct.Shift, %struct.Shift* %0, i32 0, i32 0
  %1 = load %struct.SNode*, %struct.SNode** %snode, align 8
  %state1 = getelementptr inbounds %struct.SNode, %struct.SNode* %1, i32 0, i32 0
  %2 = load %struct.D_State*, %struct.D_State** %state1, align 8
  store %struct.D_State* %2, %struct.D_State** %state, align 8
  %3 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode2 = getelementptr inbounds %struct.Shift, %struct.Shift* %3, i32 0, i32 0
  %4 = load %struct.SNode*, %struct.SNode** %snode2, align 8
  %loc3 = getelementptr inbounds %struct.SNode, %struct.SNode* %4, i32 0, i32 3
  %5 = bitcast %struct.d_loc_t* %loc to i8*
  %6 = bitcast %struct.d_loc_t* %loc3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %6, i64 32, i32 8, i1 false)
  %s4 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %skip_loc, i32 0, i32 0
  store i8* null, i8** %s4, align 8
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %scans = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 6
  %8 = load i32, i32* %scans, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %scans, align 4
  %9 = load %struct.D_State*, %struct.D_State** %state, align 8
  %scanner_code = getelementptr inbounds %struct.D_State, %struct.D_State* %9, i32 0, i32 6
  %10 = load i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)** %scanner_code, align 8
  %tobool = icmp ne i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* %10, null
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %11 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift = getelementptr inbounds %struct.Parser, %struct.Parser* %11, i32 0, i32 26
  %term_priority = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift, i32 0, i32 4
  store i32 0, i32* %term_priority, align 4
  %12 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift5 = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 26
  %op_assoc = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift5, i32 0, i32 2
  store i8 0, i8* %op_assoc, align 1
  %13 = load i32, i32* %nshifts, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results = getelementptr inbounds %struct.Parser, %struct.Parser* %14, i32 0, i32 25
  %15 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results, align 8
  %arrayidx = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %15, i64 %idxprom
  %loc6 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx, i32 0, i32 1
  %16 = bitcast %struct.d_loc_t* %loc6 to i8*
  %17 = bitcast %struct.d_loc_t* %loc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 32, i32 8, i1 false)
  %18 = load %struct.D_State*, %struct.D_State** %state, align 8
  %scanner_code7 = getelementptr inbounds %struct.D_State, %struct.D_State* %18, i32 0, i32 6
  %19 = load i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)** %scanner_code7, align 8
  %20 = load i32, i32* %nshifts, align 4
  %idxprom8 = sext i32 %20 to i64
  %21 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results9 = getelementptr inbounds %struct.Parser, %struct.Parser* %21, i32 0, i32 25
  %22 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results9, align 8
  %arrayidx10 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %22, i64 %idxprom8
  %loc11 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx10, i32 0, i32 1
  %s12 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc11, i32 0, i32 0
  %23 = load i32, i32* %nshifts, align 4
  %idxprom13 = sext i32 %23 to i64
  %24 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results14 = getelementptr inbounds %struct.Parser, %struct.Parser* %24, i32 0, i32 25
  %25 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results14, align 8
  %arrayidx15 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %25, i64 %idxprom13
  %loc16 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx15, i32 0, i32 1
  %col = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc16, i32 0, i32 3
  %26 = load i32, i32* %nshifts, align 4
  %idxprom17 = sext i32 %26 to i64
  %27 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results18 = getelementptr inbounds %struct.Parser, %struct.Parser* %27, i32 0, i32 25
  %28 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results18, align 8
  %arrayidx19 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %28, i64 %idxprom17
  %loc20 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx19, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc20, i32 0, i32 4
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift21 = getelementptr inbounds %struct.Parser, %struct.Parser* %29, i32 0, i32 26
  %symbol = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift21, i32 0, i32 0
  %30 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift22 = getelementptr inbounds %struct.Parser, %struct.Parser* %30, i32 0, i32 26
  %term_priority23 = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift22, i32 0, i32 4
  %31 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift24 = getelementptr inbounds %struct.Parser, %struct.Parser* %31, i32 0, i32 26
  %op_assoc25 = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift24, i32 0, i32 2
  %32 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift26 = getelementptr inbounds %struct.Parser, %struct.Parser* %32, i32 0, i32 26
  %op_priority = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %code_shift26, i32 0, i32 3
  %call = call i32 %19(i8** %s12, i32* %col, i32* %line, i16* %symbol, i32* %term_priority23, i8* %op_assoc25, i32* %op_priority)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %if.then
  %33 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %code_shift29 = getelementptr inbounds %struct.Parser, %struct.Parser* %33, i32 0, i32 26
  %34 = load i32, i32* %nshifts, align 4
  %inc30 = add nsw i32 %34, 1
  store i32 %inc30, i32* %nshifts, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results32 = getelementptr inbounds %struct.Parser, %struct.Parser* %35, i32 0, i32 25
  %36 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results32, align 8
  %arrayidx33 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %36, i64 %idxprom31
  %shift = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %arrayidx33, i32 0, i32 0
  store %struct.D_Shift* %code_shift29, %struct.D_Shift** %shift, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.then
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %entry
  %37 = load %struct.D_State*, %struct.D_State** %state, align 8
  %scanner_table = getelementptr inbounds %struct.D_State, %struct.D_State* %37, i32 0, i32 7
  %38 = load i8*, i8** %scanner_table, align 8
  %tobool35 = icmp ne i8* %38, null
  br i1 %tobool35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.end.34
  %39 = load %struct.D_State*, %struct.D_State** %state, align 8
  %40 = load i32, i32* %nshifts, align 4
  %idxprom37 = sext i32 %40 to i64
  %41 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results38 = getelementptr inbounds %struct.Parser, %struct.Parser* %41, i32 0, i32 25
  %42 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results38, align 8
  %arrayidx39 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %42, i64 %idxprom37
  %call40 = call i32 @scan_buffer(%struct.d_loc_t* %loc, %struct.D_State* %39, %struct.ShiftResult* %arrayidx39)
  %43 = load i32, i32* %nshifts, align 4
  %add = add nsw i32 %43, %call40
  store i32 %add, i32* %nshifts, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.36, %if.end.34
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.41
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %nshifts, align 4
  %cmp = icmp slt i32 %44, %45
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %46 to i64
  %47 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shift_results43 = getelementptr inbounds %struct.Parser, %struct.Parser* %47, i32 0, i32 25
  %48 = load %struct.ShiftResult*, %struct.ShiftResult** %shift_results43, align 8
  %arrayidx44 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %48, i64 %idxprom42
  store %struct.ShiftResult* %arrayidx44, %struct.ShiftResult** %r, align 8
  %49 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts = getelementptr inbounds %struct.Parser, %struct.Parser* %49, i32 0, i32 7
  %50 = load i32, i32* %shifts, align 4
  %inc45 = add nsw i32 %50, 1
  store i32 %inc45, i32* %shifts, align 4
  %51 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %52 = load %struct.ShiftResult*, %struct.ShiftResult** %r, align 8
  %shift46 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %52, i32 0, i32 0
  %53 = load %struct.D_Shift*, %struct.D_Shift** %shift46, align 8
  %symbol47 = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %53, i32 0, i32 0
  %54 = load i16, i16* %symbol47, align 2
  %conv = zext i16 %54 to i32
  %55 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode48 = getelementptr inbounds %struct.Shift, %struct.Shift* %55, i32 0, i32 0
  %56 = load %struct.SNode*, %struct.SNode** %snode48, align 8
  %loc49 = getelementptr inbounds %struct.SNode, %struct.SNode* %56, i32 0, i32 3
  %57 = load %struct.ShiftResult*, %struct.ShiftResult** %r, align 8
  %loc50 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %57, i32 0, i32 1
  %s51 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc50, i32 0, i32 0
  %58 = load i8*, i8** %s51, align 8
  %59 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode52 = getelementptr inbounds %struct.Shift, %struct.Shift* %59, i32 0, i32 0
  %60 = load %struct.SNode*, %struct.SNode** %snode52, align 8
  %last_pn = getelementptr inbounds %struct.SNode, %struct.SNode* %60, i32 0, i32 5
  %61 = load %struct.PNode*, %struct.PNode** %last_pn, align 8
  %62 = load %struct.ShiftResult*, %struct.ShiftResult** %r, align 8
  %shift53 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %62, i32 0, i32 0
  %63 = load %struct.D_Shift*, %struct.D_Shift** %shift53, align 8
  %call54 = call %struct.PNode* @add_PNode(%struct.Parser* %51, i32 %conv, %struct.d_loc_t* %loc49, i8* %58, %struct.PNode* %61, %struct.D_Reduction* null, %struct.VecZNode* null, %struct.D_Shift* %63)
  store %struct.PNode* %call54, %struct.PNode** %new_pn, align 8
  %64 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %tobool55 = icmp ne %struct.PNode* %64, null
  br i1 %tobool55, label %if.then.56, label %if.end.92

if.then.56:                                       ; preds = %for.body
  %s57 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %skip_loc, i32 0, i32 0
  %65 = load i8*, i8** %s57, align 8
  %tobool58 = icmp ne i8* %65, null
  br i1 %tobool58, label %lor.lhs.false, label %if.then.67

lor.lhs.false:                                    ; preds = %if.then.56
  %s59 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %skip_loc, i32 0, i32 0
  %66 = load i8*, i8** %s59, align 8
  %67 = load %struct.ShiftResult*, %struct.ShiftResult** %r, align 8
  %loc60 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %67, i32 0, i32 1
  %s61 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc60, i32 0, i32 0
  %68 = load i8*, i8** %s61, align 8
  %cmp62 = icmp ne i8* %66, %68
  br i1 %cmp62, label %if.then.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false
  %69 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %skip_fn, align 8
  %70 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %70, i32 0, i32 19
  %white_space = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 5
  %71 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space, align 8
  %cmp65 = icmp ne void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %69, %71
  br i1 %cmp65, label %if.then.67, label %if.end.89

if.then.67:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false, %if.then.56
  %72 = load %struct.ShiftResult*, %struct.ShiftResult** %r, align 8
  %loc68 = getelementptr inbounds %struct.ShiftResult, %struct.ShiftResult* %72, i32 0, i32 1
  %73 = bitcast %struct.d_loc_t* %skip_loc to i8*
  %74 = bitcast %struct.d_loc_t* %loc68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %73, i8* %74, i64 32, i32 8, i1 false)
  %75 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node69 = getelementptr inbounds %struct.PNode, %struct.PNode* %75, i32 0, i32 19
  %white_space70 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node69, i32 0, i32 5
  %76 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space70, align 8
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %76, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %skip_fn, align 8
  %77 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node71 = getelementptr inbounds %struct.PNode, %struct.PNode* %77, i32 0, i32 19
  %white_space72 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node71, i32 0, i32 5
  %78 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space72, align 8
  %79 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %80 = bitcast %struct.Parser* %79 to %struct.D_Parser*
  %81 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node73 = getelementptr inbounds %struct.PNode, %struct.PNode* %81, i32 0, i32 19
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node73, i32 0, i32 6
  call void %78(%struct.D_Parser* %80, %struct.d_loc_t* %skip_loc, i8** %globals)
  %82 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode74 = getelementptr inbounds %struct.Shift, %struct.Shift* %82, i32 0, i32 0
  %83 = load %struct.SNode*, %struct.SNode** %snode74, align 8
  %loc75 = getelementptr inbounds %struct.SNode, %struct.SNode* %83, i32 0, i32 3
  %col76 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc75, i32 0, i32 3
  %84 = load i32, i32* %col76, align 4
  %cmp77 = icmp sge i32 %84, 0
  br i1 %cmp77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.67
  %85 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode79 = getelementptr inbounds %struct.Shift, %struct.Shift* %85, i32 0, i32 0
  %86 = load %struct.SNode*, %struct.SNode** %snode79, align 8
  %loc80 = getelementptr inbounds %struct.SNode, %struct.SNode* %86, i32 0, i32 3
  %col81 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc80, i32 0, i32 3
  %87 = load i32, i32* %col81, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.67
  %88 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode82 = getelementptr inbounds %struct.Shift, %struct.Shift* %88, i32 0, i32 0
  %89 = load %struct.SNode*, %struct.SNode** %snode82, align 8
  %loc83 = getelementptr inbounds %struct.SNode, %struct.SNode* %89, i32 0, i32 3
  %previous_col = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc83, i32 0, i32 2
  %90 = load i32, i32* %previous_col, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %87, %cond.true ], [ %90, %cond.false ]
  %previous_col84 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %skip_loc, i32 0, i32 2
  store i32 %cond, i32* %previous_col84, align 4
  %91 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %92 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode85 = getelementptr inbounds %struct.Shift, %struct.Shift* %92, i32 0, i32 0
  %93 = load %struct.SNode*, %struct.SNode** %snode85, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %93, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 2
  %94 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx86 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %94, i64 0
  %95 = load %struct.ZNode*, %struct.ZNode** %arrayidx86, align 8
  %call87 = call i8* @find_ws_before(%struct.Parser* %91, %struct.ZNode* %95)
  %96 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ws_before = getelementptr inbounds %struct.PNode, %struct.PNode* %96, i32 0, i32 15
  store i8* %call87, i8** %ws_before, align 8
  %s88 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %skip_loc, i32 0, i32 0
  %97 = load i8*, i8** %s88, align 8
  %98 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ws_after = getelementptr inbounds %struct.PNode, %struct.PNode* %98, i32 0, i32 16
  store i8* %97, i8** %ws_after, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %cond.end, %lor.lhs.false.64
  %99 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %100 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %101 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode90 = getelementptr inbounds %struct.Shift, %struct.Shift* %101, i32 0, i32 0
  %102 = load %struct.SNode*, %struct.SNode** %snode90, align 8
  %call91 = call %struct.SNode* @goto_PNode(%struct.Parser* %99, %struct.d_loc_t* %skip_loc, %struct.PNode* %100, %struct.SNode* %102)
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.89, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.92
  %103 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %103, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %104 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode94 = getelementptr inbounds %struct.Shift, %struct.Shift* %104, i32 0, i32 0
  %105 = load %struct.SNode*, %struct.SNode** %snode94, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %105, i32 0, i32 7
  %106 = load i32, i32* %refcount, align 4
  %dec = add i32 %106, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool95 = icmp ne i32 %dec, 0
  br i1 %tobool95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %do.body
  %107 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %108 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %snode97 = getelementptr inbounds %struct.Shift, %struct.Shift* %108, i32 0, i32 0
  %109 = load %struct.SNode*, %struct.SNode** %snode97, align 8
  call void @free_SNode(%struct.Parser* %107, %struct.SNode* %109)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.98
  %110 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts = getelementptr inbounds %struct.Parser, %struct.Parser* %110, i32 0, i32 19
  %111 = load %struct.Shift*, %struct.Shift** %free_shifts, align 8
  %112 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %next = getelementptr inbounds %struct.Shift, %struct.Shift* %112, i32 0, i32 1
  store %struct.Shift* %111, %struct.Shift** %next, align 8
  %113 = load %struct.Shift*, %struct.Shift** %s.addr, align 8
  %114 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts99 = getelementptr inbounds %struct.Parser, %struct.Parser* %114, i32 0, i32 19
  store %struct.Shift* %113, %struct.Shift** %free_shifts99, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SNode* @new_SNode(%struct.Parser* %p, %struct.D_State* %state, %struct.d_loc_t* %loc, %struct.D_Scope* %sc, i8* %g) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %state.addr = alloca %struct.D_State*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %sc.addr = alloca %struct.D_Scope*, align 8
  %g.addr = alloca i8*, align 8
  %sn = alloca %struct.SNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.D_State* %state, %struct.D_State** %state.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store %struct.D_Scope* %sc, %struct.D_Scope** %sc.addr, align 8
  store i8* %g, i8** %g.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 22
  %1 = load %struct.SNode*, %struct.SNode** %free_snodes, align 8
  store %struct.SNode* %1, %struct.SNode** %sn, align 8
  %2 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %tobool = icmp ne %struct.SNode* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 136) #3
  %3 = bitcast i8* %call to %struct.SNode*
  store %struct.SNode* %3, %struct.SNode** %sn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %all_next = getelementptr inbounds %struct.SNode, %struct.SNode* %4, i32 0, i32 9
  %5 = load %struct.SNode*, %struct.SNode** %all_next, align 8
  %6 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_snodes1 = getelementptr inbounds %struct.Parser, %struct.Parser* %6, i32 0, i32 22
  store %struct.SNode* %5, %struct.SNode** %free_snodes1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %depth = getelementptr inbounds %struct.SNode, %struct.SNode* %7, i32 0, i32 4
  store i32 0, i32* %depth, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %8, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %9 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %zns2 = getelementptr inbounds %struct.SNode, %struct.SNode* %9, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns2, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %10, i32 0, i32 7
  store i32 0, i32* %refcount, align 4
  %11 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %all_next3 = getelementptr inbounds %struct.SNode, %struct.SNode* %11, i32 0, i32 9
  store %struct.SNode* null, %struct.SNode** %all_next3, align 8
  %12 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %states = getelementptr inbounds %struct.Parser, %struct.Parser* %12, i32 0, i32 4
  %13 = load i32, i32* %states, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %states, align 4
  %14 = load %struct.D_State*, %struct.D_State** %state.addr, align 8
  %15 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state4 = getelementptr inbounds %struct.SNode, %struct.SNode* %15, i32 0, i32 0
  store %struct.D_State* %14, %struct.D_State** %state4, align 8
  %16 = load %struct.D_Scope*, %struct.D_Scope** %sc.addr, align 8
  %17 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_scope = getelementptr inbounds %struct.SNode, %struct.SNode* %17, i32 0, i32 1
  store %struct.D_Scope* %16, %struct.D_Scope** %initial_scope, align 8
  %18 = load i8*, i8** %g.addr, align 8
  %19 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %initial_globals = getelementptr inbounds %struct.SNode, %struct.SNode* %19, i32 0, i32 2
  store i8* %18, i8** %initial_globals, align 8
  %20 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc5 = getelementptr inbounds %struct.SNode, %struct.SNode* %20, i32 0, i32 3
  %21 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %22 = bitcast %struct.d_loc_t* %loc5 to i8*
  %23 = bitcast %struct.d_loc_t* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 32, i32 8, i1 false)
  %24 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %25 = load %struct.SNode*, %struct.SNode** %sn, align 8
  call void @insert_SNode(%struct.Parser* %24, %struct.SNode* %25)
  %26 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %state6 = getelementptr inbounds %struct.SNode, %struct.SNode* %26, i32 0, i32 0
  %27 = load %struct.D_State*, %struct.D_State** %state6, align 8
  %accept = getelementptr inbounds %struct.D_State, %struct.D_State* %27, i32 0, i32 9
  %28 = load i8, i8* %accept, align 1
  %tobool7 = icmp ne i8 %28, 0
  br i1 %tobool7, label %if.then.8, label %if.end.38

if.then.8:                                        ; preds = %do.end
  %29 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept9 = getelementptr inbounds %struct.Parser, %struct.Parser* %29, i32 0, i32 16
  %30 = load %struct.SNode*, %struct.SNode** %accept9, align 8
  %tobool10 = icmp ne %struct.SNode* %30, null
  br i1 %tobool10, label %if.else.17, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %31 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %refcount13 = getelementptr inbounds %struct.SNode, %struct.SNode* %31, i32 0, i32 7
  %32 = load i32, i32* %refcount13, align 4
  %inc14 = add i32 %32, 1
  store i32 %inc14, i32* %refcount13, align 4
  br label %do.end.15

do.end.15:                                        ; preds = %do.body.12
  %33 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %34 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept16 = getelementptr inbounds %struct.Parser, %struct.Parser* %34, i32 0, i32 16
  store %struct.SNode* %33, %struct.SNode** %accept16, align 8
  br label %if.end.37

if.else.17:                                       ; preds = %if.then.8
  %35 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %loc18 = getelementptr inbounds %struct.SNode, %struct.SNode* %35, i32 0, i32 3
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc18, i32 0, i32 0
  %36 = load i8*, i8** %s, align 8
  %37 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept19 = getelementptr inbounds %struct.Parser, %struct.Parser* %37, i32 0, i32 16
  %38 = load %struct.SNode*, %struct.SNode** %accept19, align 8
  %loc20 = getelementptr inbounds %struct.SNode, %struct.SNode* %38, i32 0, i32 3
  %s21 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc20, i32 0, i32 0
  %39 = load i8*, i8** %s21, align 8
  %cmp = icmp ugt i8* %36, %39
  br i1 %cmp, label %if.then.22, label %if.end.36

if.then.22:                                       ; preds = %if.else.17
  br label %do.body.23

do.body.23:                                       ; preds = %if.then.22
  %40 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %refcount24 = getelementptr inbounds %struct.SNode, %struct.SNode* %40, i32 0, i32 7
  %41 = load i32, i32* %refcount24, align 4
  %inc25 = add i32 %41, 1
  store i32 %inc25, i32* %refcount24, align 4
  br label %do.end.26

do.end.26:                                        ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %42 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept28 = getelementptr inbounds %struct.Parser, %struct.Parser* %42, i32 0, i32 16
  %43 = load %struct.SNode*, %struct.SNode** %accept28, align 8
  %refcount29 = getelementptr inbounds %struct.SNode, %struct.SNode* %43, i32 0, i32 7
  %44 = load i32, i32* %refcount29, align 4
  %dec = add i32 %44, -1
  store i32 %dec, i32* %refcount29, align 4
  %tobool30 = icmp ne i32 %dec, 0
  br i1 %tobool30, label %if.end.33, label %if.then.31

if.then.31:                                       ; preds = %do.body.27
  %45 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %46 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept32 = getelementptr inbounds %struct.Parser, %struct.Parser* %46, i32 0, i32 16
  %47 = load %struct.SNode*, %struct.SNode** %accept32, align 8
  call void @free_SNode(%struct.Parser* %45, %struct.SNode* %47)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.31, %do.body.27
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %48 = load %struct.SNode*, %struct.SNode** %sn, align 8
  %49 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %accept35 = getelementptr inbounds %struct.Parser, %struct.Parser* %49, i32 0, i32 16
  store %struct.SNode* %48, %struct.SNode** %accept35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.34, %if.else.17
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.end.15
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %do.end
  %50 = load %struct.SNode*, %struct.SNode** %sn, align 8
  ret %struct.SNode* %50
}

; Function Attrs: nounwind uwtable
define internal void @add_Shift(%struct.Parser* %p, %struct.SNode* %snode) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %snode.addr = alloca %struct.SNode*, align 8
  %x = alloca %struct.Shift*, align 8
  %l = alloca %struct.Shift**, align 8
  %s = alloca %struct.Shift*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* %snode, %struct.SNode** %snode.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 14
  store %struct.Shift** %shifts_todo, %struct.Shift*** %l, align 8
  %1 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts = getelementptr inbounds %struct.Parser, %struct.Parser* %1, i32 0, i32 19
  %2 = load %struct.Shift*, %struct.Shift** %free_shifts, align 8
  store %struct.Shift* %2, %struct.Shift** %s, align 8
  %3 = load %struct.Shift*, %struct.Shift** %s, align 8
  %tobool = icmp ne %struct.Shift* %3, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 16) #3
  %4 = bitcast i8* %call to %struct.Shift*
  store %struct.Shift* %4, %struct.Shift** %s, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.Shift*, %struct.Shift** %s, align 8
  %next = getelementptr inbounds %struct.Shift, %struct.Shift* %5, i32 0, i32 1
  %6 = load %struct.Shift*, %struct.Shift** %next, align 8
  %7 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_shifts1 = getelementptr inbounds %struct.Parser, %struct.Parser* %7, i32 0, i32 19
  store %struct.Shift* %6, %struct.Shift** %free_shifts1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.SNode*, %struct.SNode** %snode.addr, align 8
  %9 = load %struct.Shift*, %struct.Shift** %s, align 8
  %snode2 = getelementptr inbounds %struct.Shift, %struct.Shift* %9, i32 0, i32 0
  store %struct.SNode* %8, %struct.SNode** %snode2, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.Shift*, %struct.Shift** %s, align 8
  %snode3 = getelementptr inbounds %struct.Shift, %struct.Shift* %10, i32 0, i32 0
  %11 = load %struct.SNode*, %struct.SNode** %snode3, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %11, i32 0, i32 7
  %12 = load i32, i32* %refcount, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %13 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %shifts_todo4 = getelementptr inbounds %struct.Parser, %struct.Parser* %13, i32 0, i32 14
  %14 = load %struct.Shift*, %struct.Shift** %shifts_todo4, align 8
  store %struct.Shift* %14, %struct.Shift** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %15 = load %struct.Shift*, %struct.Shift** %x, align 8
  %tobool5 = icmp ne %struct.Shift* %15, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.SNode*, %struct.SNode** %snode.addr, align 8
  %loc = getelementptr inbounds %struct.SNode, %struct.SNode* %16, i32 0, i32 3
  %s6 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 0
  %17 = load i8*, i8** %s6, align 8
  %18 = load %struct.Shift*, %struct.Shift** %x, align 8
  %snode7 = getelementptr inbounds %struct.Shift, %struct.Shift* %18, i32 0, i32 0
  %19 = load %struct.SNode*, %struct.SNode** %snode7, align 8
  %loc8 = getelementptr inbounds %struct.SNode, %struct.SNode* %19, i32 0, i32 3
  %s9 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc8, i32 0, i32 0
  %20 = load i8*, i8** %s9, align 8
  %cmp = icmp ule i8* %17, %20
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %for.body
  br label %for.end

if.end.11:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %21 = load %struct.Shift*, %struct.Shift** %x, align 8
  %next12 = getelementptr inbounds %struct.Shift, %struct.Shift* %21, i32 0, i32 1
  store %struct.Shift** %next12, %struct.Shift*** %l, align 8
  %22 = load %struct.Shift*, %struct.Shift** %x, align 8
  %next13 = getelementptr inbounds %struct.Shift, %struct.Shift* %22, i32 0, i32 1
  %23 = load %struct.Shift*, %struct.Shift** %next13, align 8
  store %struct.Shift* %23, %struct.Shift** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.10, %for.cond
  %24 = load %struct.Shift**, %struct.Shift*** %l, align 8
  %25 = load %struct.Shift*, %struct.Shift** %24, align 8
  %26 = load %struct.Shift*, %struct.Shift** %s, align 8
  %next14 = getelementptr inbounds %struct.Shift, %struct.Shift* %26, i32 0, i32 1
  store %struct.Shift* %25, %struct.Shift** %next14, align 8
  %27 = load %struct.Shift*, %struct.Shift** %s, align 8
  %28 = load %struct.Shift**, %struct.Shift*** %l, align 8
  store %struct.Shift* %27, %struct.Shift** %28, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.Reduction* @add_Reduction(%struct.Parser* %p, %struct.ZNode* %z, %struct.SNode* %sn, %struct.D_Reduction* %reduction) #0 {
entry:
  %retval = alloca %struct.Reduction*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %z.addr = alloca %struct.ZNode*, align 8
  %sn.addr = alloca %struct.SNode*, align 8
  %reduction.addr = alloca %struct.D_Reduction*, align 8
  %x = alloca %struct.Reduction*, align 8
  %l = alloca %struct.Reduction**, align 8
  %d = alloca i32, align 4
  %dd = alloca i32, align 4
  %r = alloca %struct.Reduction*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  store %struct.SNode* %sn, %struct.SNode** %sn.addr, align 8
  store %struct.D_Reduction* %reduction, %struct.D_Reduction** %reduction.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 13
  store %struct.Reduction** %reductions_todo, %struct.Reduction*** %l, align 8
  %1 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %call = call i32 @znode_depth(%struct.ZNode* %1)
  store i32 %call, i32* %d, align 4
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %reductions_todo1 = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 13
  %3 = load %struct.Reduction*, %struct.Reduction** %reductions_todo1, align 8
  store %struct.Reduction* %3, %struct.Reduction** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %tobool = icmp ne %struct.Reduction* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %loc = getelementptr inbounds %struct.SNode, %struct.SNode* %5, i32 0, i32 3
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc, i32 0, i32 0
  %6 = load i8*, i8** %s, align 8
  %7 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %7, i32 0, i32 1
  %8 = load %struct.SNode*, %struct.SNode** %snode, align 8
  %loc2 = getelementptr inbounds %struct.SNode, %struct.SNode* %8, i32 0, i32 3
  %s3 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc2, i32 0, i32 0
  %9 = load i8*, i8** %s3, align 8
  %cmp = icmp ult i8* %6, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %10 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %znode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %10, i32 0, i32 0
  %11 = load %struct.ZNode*, %struct.ZNode** %znode, align 8
  %call4 = call i32 @znode_depth(%struct.ZNode* %11)
  store i32 %call4, i32* %dd, align 4
  %12 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %loc5 = getelementptr inbounds %struct.SNode, %struct.SNode* %12, i32 0, i32 3
  %s6 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc5, i32 0, i32 0
  %13 = load i8*, i8** %s6, align 8
  %14 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %snode7 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %14, i32 0, i32 1
  %15 = load %struct.SNode*, %struct.SNode** %snode7, align 8
  %loc8 = getelementptr inbounds %struct.SNode, %struct.SNode* %15, i32 0, i32 3
  %s9 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %loc8, i32 0, i32 0
  %16 = load i8*, i8** %s9, align 8
  %cmp10 = icmp eq i8* %13, %16
  br i1 %cmp10, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %17 = load i32, i32* %d, align 4
  %18 = load i32, i32* %dd, align 4
  %cmp11 = icmp sge i32 %17, %18
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %d, align 4
  %20 = load i32, i32* %dd, align 4
  %cmp13 = icmp eq i32 %19, %20
  br i1 %cmp13, label %if.then.14, label %if.end.26

if.then.14:                                       ; preds = %if.then.12
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %if.then.14
  %21 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %tobool15 = icmp ne %struct.Reduction* %21, null
  br i1 %tobool15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %23 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %snode16 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %23, i32 0, i32 1
  %24 = load %struct.SNode*, %struct.SNode** %snode16, align 8
  %cmp17 = icmp eq %struct.SNode* %22, %24
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.25

land.lhs.true.18:                                 ; preds = %while.body
  %25 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %26 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %znode19 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %26, i32 0, i32 0
  %27 = load %struct.ZNode*, %struct.ZNode** %znode19, align 8
  %cmp20 = icmp eq %struct.ZNode* %25, %27
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %28 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction.addr, align 8
  %29 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %reduction22 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %29, i32 0, i32 2
  %30 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction22, align 8
  %cmp23 = icmp eq %struct.D_Reduction* %28, %30
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.21
  store %struct.Reduction* null, %struct.Reduction** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.21, %land.lhs.true.18, %while.body
  %31 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %next = getelementptr inbounds %struct.Reduction, %struct.Reduction* %31, i32 0, i32 5
  %32 = load %struct.Reduction*, %struct.Reduction** %next, align 8
  store %struct.Reduction* %32, %struct.Reduction** %x, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.26

if.end.26:                                        ; preds = %while.end, %if.then.12
  br label %for.end

if.end.27:                                        ; preds = %land.lhs.true, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %33 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %next28 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %33, i32 0, i32 5
  store %struct.Reduction** %next28, %struct.Reduction*** %l, align 8
  %34 = load %struct.Reduction*, %struct.Reduction** %x, align 8
  %next29 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %34, i32 0, i32 5
  %35 = load %struct.Reduction*, %struct.Reduction** %next29, align 8
  store %struct.Reduction* %35, %struct.Reduction** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.26, %if.then, %for.cond
  %36 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions = getelementptr inbounds %struct.Parser, %struct.Parser* %36, i32 0, i32 18
  %37 = load %struct.Reduction*, %struct.Reduction** %free_reductions, align 8
  store %struct.Reduction* %37, %struct.Reduction** %r, align 8
  %38 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %tobool30 = icmp ne %struct.Reduction* %38, null
  br i1 %tobool30, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %call32 = call noalias i8* @malloc(i64 48) #3
  %39 = bitcast i8* %call32 to %struct.Reduction*
  store %struct.Reduction* %39, %struct.Reduction** %r, align 8
  br label %if.end.35

if.else:                                          ; preds = %for.end
  %40 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %next33 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %40, i32 0, i32 5
  %41 = load %struct.Reduction*, %struct.Reduction** %next33, align 8
  %42 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_reductions34 = getelementptr inbounds %struct.Parser, %struct.Parser* %42, i32 0, i32 18
  store %struct.Reduction* %41, %struct.Reduction** %free_reductions34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else, %if.then.31
  %43 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %44 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %znode36 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %44, i32 0, i32 0
  store %struct.ZNode* %43, %struct.ZNode** %znode36, align 8
  %45 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %46 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %snode37 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %46, i32 0, i32 1
  store %struct.SNode* %45, %struct.SNode** %snode37, align 8
  %47 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %new_snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %47, i32 0, i32 3
  store %struct.SNode* null, %struct.SNode** %new_snode, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.35
  %48 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %48, i32 0, i32 7
  %49 = load i32, i32* %refcount, align 4
  %inc = add i32 %49, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %50 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction.addr, align 8
  %51 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %reduction38 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %51, i32 0, i32 2
  store %struct.D_Reduction* %50, %struct.D_Reduction** %reduction38, align 8
  %52 = load %struct.Reduction**, %struct.Reduction*** %l, align 8
  %53 = load %struct.Reduction*, %struct.Reduction** %52, align 8
  %54 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %next39 = getelementptr inbounds %struct.Reduction, %struct.Reduction* %54, i32 0, i32 5
  store %struct.Reduction* %53, %struct.Reduction** %next39, align 8
  %55 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %56 = load %struct.Reduction**, %struct.Reduction*** %l, align 8
  store %struct.Reduction* %55, %struct.Reduction** %56, align 8
  %57 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  store %struct.Reduction* %57, %struct.Reduction** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.24
  %58 = load %struct.Reduction*, %struct.Reduction** %retval
  ret %struct.Reduction* %58
}

; Function Attrs: nounwind uwtable
define internal void @insert_SNode(%struct.Parser* %p, %struct.SNode* %sn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %sn.addr = alloca %struct.SNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.SNode* %sn, %struct.SNode** %sn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %1 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  call void @insert_SNode_internal(%struct.Parser* %0, %struct.SNode* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %refcount = getelementptr inbounds %struct.SNode, %struct.SNode* %2, i32 0, i32 7
  %3 = load i32, i32* %refcount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 12
  %all = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash, i32 0, i32 4
  %5 = load %struct.SNode*, %struct.SNode** %all, align 8
  %6 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %all_next = getelementptr inbounds %struct.SNode, %struct.SNode* %6, i32 0, i32 9
  store %struct.SNode* %5, %struct.SNode** %all_next, align 8
  %7 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %snode_hash1 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 12
  %all2 = getelementptr inbounds %struct.SNodeHash, %struct.SNodeHash* %snode_hash1, i32 0, i32 4
  store %struct.SNode* %7, %struct.SNode** %all2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @znode_depth(%struct.ZNode* %z) #0 {
entry:
  %retval = alloca i32, align 4
  %z.addr = alloca %struct.ZNode*, align 8
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  store i32 0, i32* %d, align 4
  %0 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %tobool = icmp ne %struct.ZNode* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 2147483647, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %2, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %d, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns1 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %6, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns1, i32 0, i32 2
  %7 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %7, i64 %idxprom
  %8 = load %struct.SNode*, %struct.SNode** %arrayidx, align 8
  %depth = getelementptr inbounds %struct.SNode, %struct.SNode* %8, i32 0, i32 4
  %9 = load i32, i32* %depth, align 4
  %cmp2 = icmp ult i32 %4, %9
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns4 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %11, i32 0, i32 1
  %v5 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns4, i32 0, i32 2
  %12 = load %struct.SNode**, %struct.SNode*** %v5, align 8
  %arrayidx6 = getelementptr inbounds %struct.SNode*, %struct.SNode** %12, i64 %idxprom3
  %13 = load %struct.SNode*, %struct.SNode** %arrayidx6, align 8
  %depth7 = getelementptr inbounds %struct.SNode, %struct.SNode* %13, i32 0, i32 4
  %14 = load i32, i32* %depth7, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %15 = load i32, i32* %d, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ]
  store i32 %cond, i32* %d, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %d, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @PNode_equal(%struct.PNode* %pn, %struct.D_Reduction* %r, %struct.VecZNode* %path, %struct.D_Shift* %sh) #0 {
entry:
  %retval = alloca i32, align 4
  %pn.addr = alloca %struct.PNode*, align 8
  %r.addr = alloca %struct.D_Reduction*, align 8
  %path.addr = alloca %struct.VecZNode*, align 8
  %sh.addr = alloca %struct.D_Shift*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store %struct.D_Reduction* %r, %struct.D_Reduction** %r.addr, align 8
  store %struct.VecZNode* %path, %struct.VecZNode** %path.addr, align 8
  store %struct.D_Shift* %sh, %struct.D_Shift** %sh.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 7
  %n1 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  store i32 %1, i32* %n, align 4
  %2 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %tobool = icmp ne %struct.D_Shift* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %shift = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 5
  %5 = load %struct.D_Shift*, %struct.D_Shift** %shift, align 8
  %cmp = icmp eq %struct.D_Shift* %3, %5
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 4
  %8 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %cmp2 = icmp ne %struct.D_Reduction* %6, %8
  br i1 %cmp2, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %9 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %tobool6 = icmp ne %struct.VecZNode* %9, null
  br i1 %tobool6, label %if.end.9, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.5
  %10 = load i32, i32* %n, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true, %if.end.5
  %11 = load i32, i32* %n, align 4
  %12 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n10 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %12, i32 0, i32 0
  %13 = load i32, i32* %n10, align 4
  %cmp11 = icmp eq i32 %11, %13
  br i1 %cmp11, label %if.then.13, label %if.end.27

if.then.13:                                       ; preds = %if.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %n, align 4
  %cmp14 = icmp slt i32 %14, %15
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children16 = getelementptr inbounds %struct.PNode, %struct.PNode* %17, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children16, i32 0, i32 2
  %18 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %18, i64 %idxprom
  %19 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 14
  %20 = load %struct.PNode*, %struct.PNode** %latest, align 8
  %21 = load i32, i32* %n, align 4
  %22 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %21, %22
  %sub17 = sub nsw i32 %sub, 1
  %idxprom18 = sext i32 %sub17 to i64
  %23 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %23, i32 0, i32 2
  %24 = load %struct.ZNode**, %struct.ZNode*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %24, i64 %idxprom18
  %25 = load %struct.ZNode*, %struct.ZNode** %arrayidx20, align 8
  %pn21 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %25, i32 0, i32 0
  %26 = load %struct.PNode*, %struct.PNode** %pn21, align 8
  %latest22 = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 14
  %27 = load %struct.PNode*, %struct.PNode** %latest22, align 8
  %cmp23 = icmp ne %struct.PNode* %20, %27
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %for.end, %if.then.25, %if.then.8, %if.then.4, %if.then
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal %struct.PNode* @make_PNode(%struct.Parser* %p, i32 %symbol, %struct.d_loc_t* %start_loc, i8* %e, %struct.PNode* %pn, %struct.D_Reduction* %r, %struct.VecZNode* %path, %struct.D_Shift* %sh) #0 {
entry:
  %retval = alloca %struct.PNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %symbol.addr = alloca i32, align 4
  %start_loc.addr = alloca %struct.d_loc_t*, align 8
  %e.addr = alloca i8*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %r.addr = alloca %struct.D_Reduction*, align 8
  %path.addr = alloca %struct.VecZNode*, align 8
  %sh.addr = alloca %struct.D_Shift*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %new_pn = alloca %struct.PNode*, align 8
  %latest63 = alloca %struct.PNode*, align 8
  %n133 = alloca i32, align 4
  %child = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store i32 %symbol, i32* %symbol.addr, align 4
  store %struct.d_loc_t* %start_loc, %struct.d_loc_t** %start_loc.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store %struct.D_Reduction* %r, %struct.D_Reduction** %r.addr, align 8
  store %struct.VecZNode* %path, %struct.VecZNode** %path.addr, align 8
  store %struct.D_Shift* %sh, %struct.D_Shift** %sh.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %0, i32 0, i32 0
  %sizeof_user_parse_node = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 8
  %1 = load i32, i32* %sizeof_user_parse_node, align 4
  %conv = sext i32 %1 to i64
  %add = add i64 232, %conv
  %conv1 = trunc i64 %add to i32
  store i32 %conv1, i32* %l, align 4
  %2 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes = getelementptr inbounds %struct.Parser, %struct.Parser* %2, i32 0, i32 21
  %3 = load %struct.PNode*, %struct.PNode** %free_pnodes, align 8
  store %struct.PNode* %3, %struct.PNode** %new_pn, align 8
  %4 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %tobool = icmp ne %struct.PNode* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %l, align 4
  %conv2 = sext i32 %5 to i64
  %call = call noalias i8* @malloc(i64 %conv2) #3
  %6 = bitcast i8* %call to %struct.PNode*
  store %struct.PNode* %6, %struct.PNode** %new_pn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %all_next = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 11
  %8 = load %struct.PNode*, %struct.PNode** %all_next, align 8
  %9 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_pnodes3 = getelementptr inbounds %struct.Parser, %struct.Parser* %9, i32 0, i32 21
  store %struct.PNode* %8, %struct.PNode** %free_pnodes3, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnodes = getelementptr inbounds %struct.Parser, %struct.Parser* %10, i32 0, i32 5
  %11 = load i32, i32* %pnodes, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %pnodes, align 4
  %12 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %13 = bitcast %struct.PNode* %12 to i8*
  %14 = load i32, i32* %l, align 4
  %conv4 = sext i32 %14 to i64
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 %conv4, i32 8, i1 false)
  %15 = load i32, i32* %symbol.addr, align 4
  %16 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 19
  %symbol5 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 0
  store i32 %15, i32* %symbol5, align 4
  %17 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node6 = getelementptr inbounds %struct.PNode, %struct.PNode* %17, i32 0, i32 19
  %start_loc7 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node6, i32 0, i32 1
  %18 = load %struct.d_loc_t*, %struct.d_loc_t** %start_loc.addr, align 8
  %19 = bitcast %struct.d_loc_t* %start_loc7 to i8*
  %20 = bitcast %struct.d_loc_t* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 32, i32 8, i1 false)
  %21 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %tobool8 = icmp ne %struct.D_Reduction* %21, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.end
  %22 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %tobool9 = icmp ne %struct.VecZNode* %22, null
  br i1 %tobool9, label %if.else.12, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  %23 = load i8*, i8** %e.addr, align 8
  %24 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node11 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node11, i32 0, i32 2
  store i8* %23, i8** %end, align 8
  %25 = load i8*, i8** %e.addr, align 8
  %26 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ws_before = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 15
  store i8* %25, i8** %ws_before, align 8
  br label %if.end.23

if.else.12:                                       ; preds = %lor.lhs.false
  %27 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node13 = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 19
  %end14 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node13, i32 0, i32 2
  %28 = load i8*, i8** %end14, align 8
  %29 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node15 = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 19
  %end16 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node15, i32 0, i32 2
  store i8* %28, i8** %end16, align 8
  %30 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %31 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %31, i32 0, i32 0
  %32 = load i32, i32* %n, align 4
  %sub = sub i32 %32, 1
  %idxprom = zext i32 %sub to i64
  %33 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %33, i32 0, i32 2
  %34 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %34, i64 %idxprom
  %35 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %35, i32 0, i32 1
  %v17 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 2
  %36 = load %struct.SNode**, %struct.SNode*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.SNode*, %struct.SNode** %36, i64 0
  %37 = load %struct.SNode*, %struct.SNode** %arrayidx18, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %37, i32 0, i32 6
  %v19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 2
  %38 = load %struct.ZNode**, %struct.ZNode*** %v19, align 8
  %arrayidx20 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %38, i64 0
  %39 = load %struct.ZNode*, %struct.ZNode** %arrayidx20, align 8
  %call21 = call i8* @find_ws_before(%struct.Parser* %30, %struct.ZNode* %39)
  %40 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ws_before22 = getelementptr inbounds %struct.PNode, %struct.PNode* %40, i32 0, i32 15
  store i8* %call21, i8** %ws_before22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.12, %if.then.10
  %41 = load i8*, i8** %e.addr, align 8
  %42 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node24 = getelementptr inbounds %struct.PNode, %struct.PNode* %42, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node24, i32 0, i32 3
  store i8* %41, i8** %end_skip, align 8
  %43 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %44 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %shift = getelementptr inbounds %struct.PNode, %struct.PNode* %44, i32 0, i32 5
  store %struct.D_Shift* %43, %struct.D_Shift** %shift, align 8
  %45 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %46 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %46, i32 0, i32 4
  store %struct.D_Reduction* %45, %struct.D_Reduction** %reduction, align 8
  %47 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node25 = getelementptr inbounds %struct.PNode, %struct.PNode* %47, i32 0, i32 19
  %scope = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node25, i32 0, i32 4
  %48 = load %struct.D_Scope*, %struct.D_Scope** %scope, align 8
  %49 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node26 = getelementptr inbounds %struct.PNode, %struct.PNode* %49, i32 0, i32 19
  %scope27 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node26, i32 0, i32 4
  store %struct.D_Scope* %48, %struct.D_Scope** %scope27, align 8
  %50 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node28 = getelementptr inbounds %struct.PNode, %struct.PNode* %50, i32 0, i32 19
  %scope29 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node28, i32 0, i32 4
  %51 = load %struct.D_Scope*, %struct.D_Scope** %scope29, align 8
  %52 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %52, i32 0, i32 17
  store %struct.D_Scope* %51, %struct.D_Scope** %initial_scope, align 8
  %53 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node30 = getelementptr inbounds %struct.PNode, %struct.PNode* %53, i32 0, i32 19
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node30, i32 0, i32 6
  %54 = load i8*, i8** %globals, align 8
  %55 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node31 = getelementptr inbounds %struct.PNode, %struct.PNode* %55, i32 0, i32 19
  %globals32 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node31, i32 0, i32 6
  store i8* %54, i8** %globals32, align 8
  %56 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node33 = getelementptr inbounds %struct.PNode, %struct.PNode* %56, i32 0, i32 19
  %globals34 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node33, i32 0, i32 6
  %57 = load i8*, i8** %globals34, align 8
  %58 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %58, i32 0, i32 18
  store i8* %57, i8** %initial_globals, align 8
  %59 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node35 = getelementptr inbounds %struct.PNode, %struct.PNode* %59, i32 0, i32 19
  %white_space = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node35, i32 0, i32 5
  %60 = load void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space, align 8
  %61 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %parse_node36 = getelementptr inbounds %struct.PNode, %struct.PNode* %61, i32 0, i32 19
  %white_space37 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node36, i32 0, i32 5
  store void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* %60, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)** %white_space37, align 8
  %62 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %63 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %63, i32 0, i32 14
  store %struct.PNode* %62, %struct.PNode** %latest, align 8
  %64 = load i8*, i8** %e.addr, align 8
  %65 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %ws_after = getelementptr inbounds %struct.PNode, %struct.PNode* %65, i32 0, i32 16
  store i8* %64, i8** %ws_after, align 8
  %66 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %tobool38 = icmp ne %struct.D_Shift* %66, null
  br i1 %tobool38, label %if.then.39, label %if.else.55

if.then.39:                                       ; preds = %if.end.23
  %67 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %op_assoc = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %67, i32 0, i32 2
  %68 = load i8, i8* %op_assoc, align 1
  %conv40 = zext i8 %68 to i32
  %69 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %op_assoc41 = getelementptr inbounds %struct.PNode, %struct.PNode* %69, i32 0, i32 2
  store i32 %conv40, i32* %op_assoc41, align 4
  %70 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %op_priority = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %70, i32 0, i32 3
  %71 = load i32, i32* %op_priority, align 4
  %72 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %op_priority42 = getelementptr inbounds %struct.PNode, %struct.PNode* %72, i32 0, i32 3
  store i32 %71, i32* %op_priority42, align 4
  %73 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %speculative_code = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %73, i32 0, i32 5
  %74 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %speculative_code, align 8
  %tobool43 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %74, null
  br i1 %tobool43, label %if.then.44, label %if.end.54

if.then.44:                                       ; preds = %if.then.39
  %75 = load %struct.D_Shift*, %struct.D_Shift** %sh.addr, align 8
  %speculative_code45 = getelementptr inbounds %struct.D_Shift, %struct.D_Shift* %75, i32 0, i32 5
  %76 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %speculative_code45, align 8
  %77 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %78 = bitcast %struct.PNode* %77 to i8*
  %79 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %79, i32 0, i32 7
  %v46 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 2
  %80 = load %struct.PNode**, %struct.PNode*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.PNode*, %struct.PNode** %80, i64 0
  %81 = bitcast %struct.PNode** %arrayidx47 to i8**
  %82 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children48 = getelementptr inbounds %struct.PNode, %struct.PNode* %82, i32 0, i32 7
  %n49 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children48, i32 0, i32 0
  %83 = load i32, i32* %n49, align 4
  %84 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %85 = bitcast %struct.Parser* %84 to %struct.D_Parser*
  %call50 = call i32 %76(i8* %78, i8** %81, i32 %83, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32), %struct.D_Parser* %85)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.44
  %86 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %87 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @free_PNode(%struct.Parser* %86, %struct.PNode* %87)
  store %struct.PNode* null, %struct.PNode** %retval
  br label %return

if.end.53:                                        ; preds = %if.then.44
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.39
  br label %if.end.163

if.else.55:                                       ; preds = %if.end.23
  %88 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %tobool56 = icmp ne %struct.D_Reduction* %88, null
  br i1 %tobool56, label %if.then.57, label %if.end.162

if.then.57:                                       ; preds = %if.else.55
  %89 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %tobool58 = icmp ne %struct.VecZNode* %89, null
  br i1 %tobool58, label %if.then.59, label %if.end.123

if.then.59:                                       ; preds = %if.then.57
  %90 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n60 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %90, i32 0, i32 0
  %91 = load i32, i32* %n60, align 4
  %sub61 = sub i32 %91, 1
  store i32 %sub61, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.59
  %92 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %92, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %93 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %93 to i64
  %94 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v65 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %94, i32 0, i32 2
  %95 = load %struct.ZNode**, %struct.ZNode*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %95, i64 %idxprom64
  %96 = load %struct.ZNode*, %struct.ZNode** %arrayidx66, align 8
  %pn67 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %96, i32 0, i32 0
  %97 = load %struct.PNode*, %struct.PNode** %pn67, align 8
  %latest68 = getelementptr inbounds %struct.PNode, %struct.PNode* %97, i32 0, i32 14
  %98 = load %struct.PNode*, %struct.PNode** %latest68, align 8
  store %struct.PNode* %98, %struct.PNode** %latest63, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %99 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children69 = getelementptr inbounds %struct.PNode, %struct.PNode* %99, i32 0, i32 7
  %v70 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children69, i32 0, i32 2
  %100 = load %struct.PNode**, %struct.PNode*** %v70, align 8
  %tobool71 = icmp ne %struct.PNode** %100, null
  br i1 %tobool71, label %if.else.82, label %if.then.72

if.then.72:                                       ; preds = %do.body
  %101 = load %struct.PNode*, %struct.PNode** %latest63, align 8
  %102 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children73 = getelementptr inbounds %struct.PNode, %struct.PNode* %102, i32 0, i32 7
  %n74 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children73, i32 0, i32 0
  %103 = load i32, i32* %n74, align 4
  %inc75 = add i32 %103, 1
  store i32 %inc75, i32* %n74, align 4
  %idxprom76 = zext i32 %103 to i64
  %104 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children77 = getelementptr inbounds %struct.PNode, %struct.PNode* %104, i32 0, i32 7
  %e78 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children77, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e78, i32 0, i32 0
  %105 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children79 = getelementptr inbounds %struct.PNode, %struct.PNode* %105, i32 0, i32 7
  %v80 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children79, i32 0, i32 2
  store %struct.PNode** %arraydecay, %struct.PNode*** %v80, align 8
  %arrayidx81 = getelementptr inbounds %struct.PNode*, %struct.PNode** %arraydecay, i64 %idxprom76
  store %struct.PNode* %101, %struct.PNode** %arrayidx81, align 8
  br label %do.end

if.else.82:                                       ; preds = %do.body
  %106 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children83 = getelementptr inbounds %struct.PNode, %struct.PNode* %106, i32 0, i32 7
  %v84 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children83, i32 0, i32 2
  %107 = load %struct.PNode**, %struct.PNode*** %v84, align 8
  %108 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children85 = getelementptr inbounds %struct.PNode, %struct.PNode* %108, i32 0, i32 7
  %e86 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children85, i32 0, i32 3
  %arraydecay87 = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e86, i32 0, i32 0
  %cmp88 = icmp eq %struct.PNode** %107, %arraydecay87
  br i1 %cmp88, label %if.then.90, label %if.else.104

if.then.90:                                       ; preds = %if.else.82
  %109 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children91 = getelementptr inbounds %struct.PNode, %struct.PNode* %109, i32 0, i32 7
  %n92 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children91, i32 0, i32 0
  %110 = load i32, i32* %n92, align 4
  %cmp93 = icmp ult i32 %110, 3
  br i1 %cmp93, label %if.then.95, label %if.end.103

if.then.95:                                       ; preds = %if.then.90
  %111 = load %struct.PNode*, %struct.PNode** %latest63, align 8
  %112 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children96 = getelementptr inbounds %struct.PNode, %struct.PNode* %112, i32 0, i32 7
  %n97 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children96, i32 0, i32 0
  %113 = load i32, i32* %n97, align 4
  %inc98 = add i32 %113, 1
  store i32 %inc98, i32* %n97, align 4
  %idxprom99 = zext i32 %113 to i64
  %114 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children100 = getelementptr inbounds %struct.PNode, %struct.PNode* %114, i32 0, i32 7
  %v101 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children100, i32 0, i32 2
  %115 = load %struct.PNode**, %struct.PNode*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.PNode*, %struct.PNode** %115, i64 %idxprom99
  store %struct.PNode* %111, %struct.PNode** %arrayidx102, align 8
  br label %do.end

if.end.103:                                       ; preds = %if.then.90
  br label %if.end.117

if.else.104:                                      ; preds = %if.else.82
  %116 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children105 = getelementptr inbounds %struct.PNode, %struct.PNode* %116, i32 0, i32 7
  %n106 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children105, i32 0, i32 0
  %117 = load i32, i32* %n106, align 4
  %and = and i32 %117, 7
  %tobool107 = icmp ne i32 %and, 0
  br i1 %tobool107, label %if.then.108, label %if.end.116

if.then.108:                                      ; preds = %if.else.104
  %118 = load %struct.PNode*, %struct.PNode** %latest63, align 8
  %119 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children109 = getelementptr inbounds %struct.PNode, %struct.PNode* %119, i32 0, i32 7
  %n110 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children109, i32 0, i32 0
  %120 = load i32, i32* %n110, align 4
  %inc111 = add i32 %120, 1
  store i32 %inc111, i32* %n110, align 4
  %idxprom112 = zext i32 %120 to i64
  %121 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children113 = getelementptr inbounds %struct.PNode, %struct.PNode* %121, i32 0, i32 7
  %v114 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children113, i32 0, i32 2
  %122 = load %struct.PNode**, %struct.PNode*** %v114, align 8
  %arrayidx115 = getelementptr inbounds %struct.PNode*, %struct.PNode** %122, i64 %idxprom112
  store %struct.PNode* %118, %struct.PNode** %arrayidx115, align 8
  br label %do.end

if.end.116:                                       ; preds = %if.else.104
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.103
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117
  %123 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children119 = getelementptr inbounds %struct.PNode, %struct.PNode* %123, i32 0, i32 7
  %124 = bitcast %struct.VecPNode* %children119 to i8*
  %125 = load %struct.PNode*, %struct.PNode** %latest63, align 8
  %126 = bitcast %struct.PNode* %125 to i8*
  call void @vec_add_internal(i8* %124, i8* %126)
  br label %do.end

do.end:                                           ; preds = %if.end.118, %if.then.108, %if.then.95, %if.then.72
  br label %do.body.120

do.body.120:                                      ; preds = %do.end
  %127 = load %struct.PNode*, %struct.PNode** %latest63, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %127, i32 0, i32 6
  %128 = load i32, i32* %refcount, align 4
  %inc121 = add i32 %128, 1
  store i32 %inc121, i32* %refcount, align 4
  br label %do.end.122

do.end.122:                                       ; preds = %do.body.120
  br label %for.inc

for.inc:                                          ; preds = %do.end.122
  %129 = load i32, i32* %i, align 4
  %dec = add nsw i32 %129, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.123

if.end.123:                                       ; preds = %for.end, %if.then.57
  %130 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %131 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %132 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %call124 = call i32 @reduce_actions(%struct.Parser* %130, %struct.PNode* %131, %struct.D_Reduction* %132)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.123
  %133 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %134 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @free_PNode(%struct.Parser* %133, %struct.PNode* %134)
  store %struct.PNode* null, %struct.PNode** %retval
  br label %return

if.end.127:                                       ; preds = %if.end.123
  %135 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %tobool128 = icmp ne %struct.VecZNode* %135, null
  br i1 %tobool128, label %land.lhs.true, label %if.end.161

land.lhs.true:                                    ; preds = %if.end.127
  %136 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n129 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %136, i32 0, i32 0
  %137 = load i32, i32* %n129, align 4
  %cmp130 = icmp ugt i32 %137, 1
  br i1 %cmp130, label %if.then.132, label %if.end.161

if.then.132:                                      ; preds = %land.lhs.true
  %138 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n134 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %138, i32 0, i32 0
  %139 = load i32, i32* %n134, align 4
  store i32 %139, i32* %n133, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.157, %if.then.132
  %140 = load i32, i32* %i, align 4
  %141 = load i32, i32* %n133, align 4
  %cmp136 = icmp slt i32 %140, %141
  br i1 %cmp136, label %for.body.138, label %for.end.160

for.body.138:                                     ; preds = %for.cond.135
  %142 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %142 to i64
  %143 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %children140 = getelementptr inbounds %struct.PNode, %struct.PNode* %143, i32 0, i32 7
  %v141 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children140, i32 0, i32 2
  %144 = load %struct.PNode**, %struct.PNode*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.PNode*, %struct.PNode** %144, i64 %idxprom139
  %145 = load %struct.PNode*, %struct.PNode** %arrayidx142, align 8
  store %struct.PNode* %145, %struct.PNode** %child, align 8
  %146 = load %struct.PNode*, %struct.PNode** %child, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %146, i32 0, i32 0
  %147 = load i32, i32* %assoc, align 4
  %tobool143 = icmp ne i32 %147, 0
  br i1 %tobool143, label %land.lhs.true.144, label %if.end.156

land.lhs.true.144:                                ; preds = %for.body.138
  %148 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %148, i32 0, i32 1
  %149 = load i32, i32* %priority, align 4
  %150 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  %assoc145 = getelementptr inbounds %struct.PNode, %struct.PNode* %150, i32 0, i32 0
  %151 = load i32, i32* %assoc145, align 4
  %152 = load %struct.PNode*, %struct.PNode** %child, align 8
  %priority146 = getelementptr inbounds %struct.PNode, %struct.PNode* %152, i32 0, i32 1
  %153 = load i32, i32* %priority146, align 4
  %154 = load %struct.PNode*, %struct.PNode** %child, align 8
  %assoc147 = getelementptr inbounds %struct.PNode, %struct.PNode* %154, i32 0, i32 0
  %155 = load i32, i32* %assoc147, align 4
  %156 = load i32, i32* %i, align 4
  %cmp148 = icmp eq i32 %156, 0
  %conv149 = zext i1 %cmp148 to i32
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %n133, align 4
  %sub150 = sub nsw i32 %158, 1
  %cmp151 = icmp eq i32 %157, %sub150
  %conv152 = zext i1 %cmp151 to i32
  %call153 = call i32 @check_child(i32 %149, i32 %151, i32 %153, i32 %155, i32 %conv149, i32 %conv152)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.156, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.144
  %159 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %160 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  call void @free_PNode(%struct.Parser* %159, %struct.PNode* %160)
  store %struct.PNode* null, %struct.PNode** %retval
  br label %return

if.end.156:                                       ; preds = %land.lhs.true.144, %for.body.138
  br label %for.inc.157

for.inc.157:                                      ; preds = %if.end.156
  %161 = load i32, i32* %n133, align 4
  %sub158 = sub nsw i32 %161, 1
  %162 = load i32, i32* %i, align 4
  %add159 = add nsw i32 %162, %sub158
  store i32 %add159, i32* %i, align 4
  br label %for.cond.135

for.end.160:                                      ; preds = %for.cond.135
  br label %if.end.161

if.end.161:                                       ; preds = %for.end.160, %land.lhs.true, %if.end.127
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.else.55
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.54
  %163 = load %struct.PNode*, %struct.PNode** %new_pn, align 8
  store %struct.PNode* %163, %struct.PNode** %retval
  br label %return

return:                                           ; preds = %if.end.163, %if.then.155, %if.then.126, %if.then.52
  %164 = load %struct.PNode*, %struct.PNode** %retval
  ret %struct.PNode* %164
}

; Function Attrs: nounwind uwtable
define internal void @insert_PNode(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %1 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  call void @insert_PNode_internal(%struct.Parser* %0, %struct.PNode* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 6
  %3 = load i32, i32* %refcount, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %4 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash = getelementptr inbounds %struct.Parser, %struct.Parser* %4, i32 0, i32 11
  %all = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash, i32 0, i32 4
  %5 = load %struct.PNode*, %struct.PNode** %all, align 8
  %6 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %all_next = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 11
  store %struct.PNode* %5, %struct.PNode** %all_next, align 8
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %8 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %pnode_hash1 = getelementptr inbounds %struct.Parser, %struct.Parser* %8, i32 0, i32 11
  %all2 = getelementptr inbounds %struct.PNodeHash, %struct.PNodeHash* %pnode_hash1, i32 0, i32 4
  store %struct.PNode* %7, %struct.PNode** %all2, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_pnodes(%struct.Parser* %p, %struct.PNode* %x, %struct.PNode* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Parser*, align 8
  %x.addr = alloca %struct.PNode*, align 8
  %y.addr = alloca %struct.PNode*, align 8
  %psx = alloca %struct.StackPNode, align 8
  %psy = alloca %struct.StackPNode, align 8
  %isx = alloca %struct.StackInt, align 8
  %isy = alloca %struct.StackInt, align 8
  %r = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  store %struct.PNode* %y, %struct.PNode** %y.addr, align 8
  store i32 0, i32* %r, align 4
  %0 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 0
  %1 = load i32, i32* %assoc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.152

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %assoc1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 0
  %3 = load i32, i32* %assoc1, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %if.then, label %if.end.152

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %assoc3 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 0
  %5 = load i32, i32* %assoc3, align 4
  %and = and i32 %5, 4
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.end.17, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %if.then
  %6 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %assoc6 = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 0
  %7 = load i32, i32* %assoc6, align 4
  %and7 = and i32 %7, 4
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.end.17, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true.5
  %8 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 1
  %9 = load i32, i32* %priority, align 4
  %10 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %priority10 = getelementptr inbounds %struct.PNode, %struct.PNode* %10, i32 0, i32 1
  %11 = load i32, i32* %priority10, align 4
  %cmp = icmp sgt i32 %9, %11
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.9
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.9
  %12 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority12 = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 1
  %13 = load i32, i32* %priority12, align 4
  %14 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %priority13 = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 1
  %15 = load i32, i32* %priority13, align 4
  %cmp14 = icmp slt i32 %13, %15
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true.5, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %initial = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 3
  %arraydecay = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial, i32 0, i32 0
  %end = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 1
  store %struct.PNode** %arraydecay, %struct.PNode*** %end, align 8
  %cur = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 2
  store %struct.PNode** %arraydecay, %struct.PNode*** %cur, align 8
  %start = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 0
  store %struct.PNode** %arraydecay, %struct.PNode*** %start, align 8
  %end18 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 1
  %16 = load %struct.PNode**, %struct.PNode*** %end18, align 8
  %add.ptr = getelementptr inbounds %struct.PNode*, %struct.PNode** %16, i64 8
  store %struct.PNode** %add.ptr, %struct.PNode*** %end18, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.19

do.body.19:                                       ; preds = %do.end
  %initial20 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 3
  %arraydecay21 = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial20, i32 0, i32 0
  %end22 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 1
  store %struct.PNode** %arraydecay21, %struct.PNode*** %end22, align 8
  %cur23 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 2
  store %struct.PNode** %arraydecay21, %struct.PNode*** %cur23, align 8
  %start24 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 0
  store %struct.PNode** %arraydecay21, %struct.PNode*** %start24, align 8
  %end25 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 1
  %17 = load %struct.PNode**, %struct.PNode*** %end25, align 8
  %add.ptr26 = getelementptr inbounds %struct.PNode*, %struct.PNode** %17, i64 8
  store %struct.PNode** %add.ptr26, %struct.PNode*** %end25, align 8
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.19
  br label %do.body.28

do.body.28:                                       ; preds = %do.end.27
  %initial29 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 3
  %arraydecay30 = getelementptr inbounds [8 x i32], [8 x i32]* %initial29, i32 0, i32 0
  %end31 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 1
  store i32* %arraydecay30, i32** %end31, align 8
  %cur32 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 2
  store i32* %arraydecay30, i32** %cur32, align 8
  %start33 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  store i32* %arraydecay30, i32** %start33, align 8
  %end34 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 1
  %18 = load i32*, i32** %end34, align 8
  %add.ptr35 = getelementptr inbounds i32, i32* %18, i64 8
  store i32* %add.ptr35, i32** %end34, align 8
  br label %do.end.36

do.end.36:                                        ; preds = %do.body.28
  br label %do.body.37

do.body.37:                                       ; preds = %do.end.36
  %initial38 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 3
  %arraydecay39 = getelementptr inbounds [8 x i32], [8 x i32]* %initial38, i32 0, i32 0
  %end40 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 1
  store i32* %arraydecay39, i32** %end40, align 8
  %cur41 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 2
  store i32* %arraydecay39, i32** %cur41, align 8
  %start42 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  store i32* %arraydecay39, i32** %start42, align 8
  %end43 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 1
  %19 = load i32*, i32** %end43, align 8
  %add.ptr44 = getelementptr inbounds i32, i32* %19, i64 8
  store i32* %add.ptr44, i32** %end43, align 8
  br label %do.end.45

do.end.45:                                        ; preds = %do.body.37
  %20 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  call void @get_exp_one(%struct.PNode* %20, %struct.StackPNode* %psx, %struct.StackInt* %isx)
  %21 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  call void @get_exp_one(%struct.PNode* %21, %struct.StackPNode* %psy, %struct.StackInt* %isy)
  call void @get_unshared_priorities(%struct.StackPNode* %psx, %struct.StackPNode* %psy, %struct.StackInt* %isx, %struct.StackInt* %isy)
  %start46 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %22 = load i32*, i32** %start46, align 8
  %cur47 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 2
  %23 = load i32*, i32** %cur47, align 8
  %start48 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %24 = load i32*, i32** %start48, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %23 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %24 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %conv = trunc i64 %sub.ptr.div to i32
  call void @intsort(i32* %22, i32 %conv)
  %start49 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %25 = load i32*, i32** %start49, align 8
  %cur50 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 2
  %26 = load i32*, i32** %cur50, align 8
  %start51 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %27 = load i32*, i32** %start51, align 8
  %sub.ptr.lhs.cast52 = ptrtoint i32* %26 to i64
  %sub.ptr.rhs.cast53 = ptrtoint i32* %27 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %sub.ptr.div55 = sdiv exact i64 %sub.ptr.sub54, 4
  %conv56 = trunc i64 %sub.ptr.div55 to i32
  call void @intsort(i32* %25, i32 %conv56)
  %start57 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %28 = load i32*, i32** %start57, align 8
  %cur58 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 2
  %29 = load i32*, i32** %cur58, align 8
  %start59 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %30 = load i32*, i32** %start59, align 8
  %sub.ptr.lhs.cast60 = ptrtoint i32* %29 to i64
  %sub.ptr.rhs.cast61 = ptrtoint i32* %30 to i64
  %sub.ptr.sub62 = sub i64 %sub.ptr.lhs.cast60, %sub.ptr.rhs.cast61
  %sub.ptr.div63 = sdiv exact i64 %sub.ptr.sub62, 4
  %conv64 = trunc i64 %sub.ptr.div63 to i32
  %start65 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %31 = load i32*, i32** %start65, align 8
  %cur66 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 2
  %32 = load i32*, i32** %cur66, align 8
  %start67 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %33 = load i32*, i32** %start67, align 8
  %sub.ptr.lhs.cast68 = ptrtoint i32* %32 to i64
  %sub.ptr.rhs.cast69 = ptrtoint i32* %33 to i64
  %sub.ptr.sub70 = sub i64 %sub.ptr.lhs.cast68, %sub.ptr.rhs.cast69
  %sub.ptr.div71 = sdiv exact i64 %sub.ptr.sub70, 4
  %conv72 = trunc i64 %sub.ptr.div71 to i32
  %call = call i32 @cmp_priorities(i32* %28, i32 %conv64, i32* %31, i32 %conv72)
  store i32 %call, i32* %r, align 4
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.45
  %start74 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 0
  %34 = load %struct.PNode**, %struct.PNode*** %start74, align 8
  %initial75 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 3
  %arraydecay76 = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial75, i32 0, i32 0
  %cmp77 = icmp ne %struct.PNode** %34, %arraydecay76
  br i1 %cmp77, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %do.body.73
  %start80 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 0
  %35 = load %struct.PNode**, %struct.PNode*** %start80, align 8
  %36 = bitcast %struct.PNode** %35 to i8*
  call void @free(i8* %36) #3
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %do.body.73
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  %initial83 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 3
  %arraydecay84 = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial83, i32 0, i32 0
  %end85 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 1
  store %struct.PNode** %arraydecay84, %struct.PNode*** %end85, align 8
  %cur86 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 2
  store %struct.PNode** %arraydecay84, %struct.PNode*** %cur86, align 8
  %start87 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 0
  store %struct.PNode** %arraydecay84, %struct.PNode*** %start87, align 8
  %end88 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psx, i32 0, i32 1
  %37 = load %struct.PNode**, %struct.PNode*** %end88, align 8
  %add.ptr89 = getelementptr inbounds %struct.PNode*, %struct.PNode** %37, i64 8
  store %struct.PNode** %add.ptr89, %struct.PNode*** %end88, align 8
  br label %do.end.90

do.end.90:                                        ; preds = %do.body.82
  br label %do.end.91

do.end.91:                                        ; preds = %do.end.90
  br label %do.body.92

do.body.92:                                       ; preds = %do.end.91
  %start93 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 0
  %38 = load %struct.PNode**, %struct.PNode*** %start93, align 8
  %initial94 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 3
  %arraydecay95 = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial94, i32 0, i32 0
  %cmp96 = icmp ne %struct.PNode** %38, %arraydecay95
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %do.body.92
  %start99 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 0
  %39 = load %struct.PNode**, %struct.PNode*** %start99, align 8
  %40 = bitcast %struct.PNode** %39 to i8*
  call void @free(i8* %40) #3
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %do.body.92
  br label %do.body.101

do.body.101:                                      ; preds = %if.end.100
  %initial102 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 3
  %arraydecay103 = getelementptr inbounds [8 x %struct.PNode*], [8 x %struct.PNode*]* %initial102, i32 0, i32 0
  %end104 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 1
  store %struct.PNode** %arraydecay103, %struct.PNode*** %end104, align 8
  %cur105 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 2
  store %struct.PNode** %arraydecay103, %struct.PNode*** %cur105, align 8
  %start106 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 0
  store %struct.PNode** %arraydecay103, %struct.PNode*** %start106, align 8
  %end107 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %psy, i32 0, i32 1
  %41 = load %struct.PNode**, %struct.PNode*** %end107, align 8
  %add.ptr108 = getelementptr inbounds %struct.PNode*, %struct.PNode** %41, i64 8
  store %struct.PNode** %add.ptr108, %struct.PNode*** %end107, align 8
  br label %do.end.109

do.end.109:                                       ; preds = %do.body.101
  br label %do.end.110

do.end.110:                                       ; preds = %do.end.109
  br label %do.body.111

do.body.111:                                      ; preds = %do.end.110
  %start112 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %42 = load i32*, i32** %start112, align 8
  %initial113 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 3
  %arraydecay114 = getelementptr inbounds [8 x i32], [8 x i32]* %initial113, i32 0, i32 0
  %cmp115 = icmp ne i32* %42, %arraydecay114
  br i1 %cmp115, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %do.body.111
  %start118 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  %43 = load i32*, i32** %start118, align 8
  %44 = bitcast i32* %43 to i8*
  call void @free(i8* %44) #3
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %do.body.111
  br label %do.body.120

do.body.120:                                      ; preds = %if.end.119
  %initial121 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 3
  %arraydecay122 = getelementptr inbounds [8 x i32], [8 x i32]* %initial121, i32 0, i32 0
  %end123 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 1
  store i32* %arraydecay122, i32** %end123, align 8
  %cur124 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 2
  store i32* %arraydecay122, i32** %cur124, align 8
  %start125 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 0
  store i32* %arraydecay122, i32** %start125, align 8
  %end126 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isx, i32 0, i32 1
  %45 = load i32*, i32** %end126, align 8
  %add.ptr127 = getelementptr inbounds i32, i32* %45, i64 8
  store i32* %add.ptr127, i32** %end126, align 8
  br label %do.end.128

do.end.128:                                       ; preds = %do.body.120
  br label %do.end.129

do.end.129:                                       ; preds = %do.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  %start131 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %46 = load i32*, i32** %start131, align 8
  %initial132 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 3
  %arraydecay133 = getelementptr inbounds [8 x i32], [8 x i32]* %initial132, i32 0, i32 0
  %cmp134 = icmp ne i32* %46, %arraydecay133
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %do.body.130
  %start137 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  %47 = load i32*, i32** %start137, align 8
  %48 = bitcast i32* %47 to i8*
  call void @free(i8* %48) #3
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %do.body.130
  br label %do.body.139

do.body.139:                                      ; preds = %if.end.138
  %initial140 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 3
  %arraydecay141 = getelementptr inbounds [8 x i32], [8 x i32]* %initial140, i32 0, i32 0
  %end142 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 1
  store i32* %arraydecay141, i32** %end142, align 8
  %cur143 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 2
  store i32* %arraydecay141, i32** %cur143, align 8
  %start144 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 0
  store i32* %arraydecay141, i32** %start144, align 8
  %end145 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %isy, i32 0, i32 1
  %49 = load i32*, i32** %end145, align 8
  %add.ptr146 = getelementptr inbounds i32, i32* %49, i64 8
  store i32* %add.ptr146, i32** %end145, align 8
  br label %do.end.147

do.end.147:                                       ; preds = %do.body.139
  br label %do.end.148

do.end.148:                                       ; preds = %do.end.147
  %50 = load i32, i32* %r, align 4
  %tobool149 = icmp ne i32 %50, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %do.end.148
  %51 = load i32, i32* %r, align 4
  store i32 %51, i32* %retval
  br label %return

if.end.151:                                       ; preds = %do.end.148
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151, %land.lhs.true, %entry
  %52 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %52, i32 0, i32 0
  %dont_use_eagerness_for_disambiguation = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 13
  %53 = load i32, i32* %dont_use_eagerness_for_disambiguation, align 4
  %tobool153 = icmp ne i32 %53, 0
  br i1 %tobool153, label %if.end.159, label %if.then.154

if.then.154:                                      ; preds = %if.end.152
  %54 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %55 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %call155 = call i32 @cmp_eagerness(%struct.PNode* %54, %struct.PNode* %55)
  store i32 %call155, i32* %r, align 4
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.then.154
  %56 = load i32, i32* %r, align 4
  store i32 %56, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.then.154
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %if.end.152
  %57 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user160 = getelementptr inbounds %struct.Parser, %struct.Parser* %57, i32 0, i32 0
  %dont_use_height_for_disambiguation = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user160, i32 0, i32 14
  %58 = load i32, i32* %dont_use_height_for_disambiguation, align 4
  %tobool161 = icmp ne i32 %58, 0
  br i1 %tobool161, label %if.end.174, label %if.then.162

if.then.162:                                      ; preds = %if.end.159
  %59 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %height = getelementptr inbounds %struct.PNode, %struct.PNode* %59, i32 0, i32 8
  %60 = load i32, i32* %height, align 4
  %61 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %height163 = getelementptr inbounds %struct.PNode, %struct.PNode* %61, i32 0, i32 8
  %62 = load i32, i32* %height163, align 4
  %cmp164 = icmp ult i32 %60, %62
  br i1 %cmp164, label %if.then.166, label %if.end.167

if.then.166:                                      ; preds = %if.then.162
  store i32 -1, i32* %retval
  br label %return

if.end.167:                                       ; preds = %if.then.162
  %63 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %height168 = getelementptr inbounds %struct.PNode, %struct.PNode* %63, i32 0, i32 8
  %64 = load i32, i32* %height168, align 4
  %65 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %height169 = getelementptr inbounds %struct.PNode, %struct.PNode* %65, i32 0, i32 8
  %66 = load i32, i32* %height169, align 4
  %cmp170 = icmp ugt i32 %64, %66
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %if.end.167
  store i32 1, i32* %retval
  br label %return

if.end.173:                                       ; preds = %if.end.167
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.159
  %67 = load i32, i32* %r, align 4
  store i32 %67, i32* %retval
  br label %return

return:                                           ; preds = %if.end.174, %if.then.172, %if.then.166, %if.then.157, %if.then.150, %if.then.15, %if.then.11
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i8* @find_ws_before(%struct.Parser* %p, %struct.ZNode* %zn) #0 {
entry:
  %retval = alloca i8*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %zn.addr = alloca %struct.ZNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.ZNode* %zn, %struct.ZNode** %zn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %cond.end.15, %entry
  %0 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %tobool = icmp ne %struct.ZNode* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %1, i32 0, i32 0
  %2 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %3 = load i8*, i8** %s, align 8
  %4 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %pn1 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %4, i32 0, i32 0
  %5 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %parse_node2 = getelementptr inbounds %struct.PNode, %struct.PNode* %5, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node2, i32 0, i32 2
  %6 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %8, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %9 = load i32, i32* %n, align 4
  %tobool3 = icmp ne i32 %9, 0
  br i1 %tobool3, label %cond.true, label %cond.false.14

cond.true:                                        ; preds = %while.body
  %10 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %sns4 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %10, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns4, i32 0, i32 2
  %11 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %11, i64 0
  %12 = load %struct.SNode*, %struct.SNode** %arrayidx, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %12, i32 0, i32 6
  %n5 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %13 = load i32, i32* %n5, align 4
  %tobool6 = icmp ne i32 %13, 0
  br i1 %tobool6, label %cond.true.7, label %cond.false

cond.true.7:                                      ; preds = %cond.true
  %14 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %sns8 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %14, i32 0, i32 1
  %v9 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns8, i32 0, i32 2
  %15 = load %struct.SNode**, %struct.SNode*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.SNode*, %struct.SNode** %15, i64 0
  %16 = load %struct.SNode*, %struct.SNode** %arrayidx10, align 8
  %zns11 = getelementptr inbounds %struct.SNode, %struct.SNode* %16, i32 0, i32 6
  %v12 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns11, i32 0, i32 2
  %17 = load %struct.ZNode**, %struct.ZNode*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %17, i64 0
  %18 = load %struct.ZNode*, %struct.ZNode** %arrayidx13, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.7
  %cond = phi %struct.ZNode* [ %18, %cond.true.7 ], [ null, %cond.false ]
  br label %cond.end.15

cond.false.14:                                    ; preds = %while.body
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.end
  %cond16 = phi %struct.ZNode* [ %cond, %cond.end ], [ null, %cond.false.14 ]
  store %struct.ZNode* %cond16, %struct.ZNode** %zn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %19 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %tobool17 = icmp ne %struct.ZNode* %19, null
  br i1 %tobool17, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %20 = load %struct.ZNode*, %struct.ZNode** %zn.addr, align 8
  %pn18 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %20, i32 0, i32 0
  %21 = load %struct.PNode*, %struct.PNode** %pn18, align 8
  %parse_node19 = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 19
  %end20 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node19, i32 0, i32 2
  %22 = load i8*, i8** %end20, align 8
  store i8* %22, i8** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %23 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %start = getelementptr inbounds %struct.Parser, %struct.Parser* %23, i32 0, i32 1
  %24 = load i8*, i8** %start, align 8
  store i8* %24, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare void @vec_add_internal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reduce_actions(%struct.Parser* %p, %struct.PNode* %pn, %struct.D_Reduction* %r) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %r.addr = alloca %struct.D_Reduction*, align 8
  %i = alloca i32, align 4
  %height = alloca i32, align 4
  %c = alloca %struct.PNode*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store %struct.D_Reduction* %r, %struct.D_Reduction** %r.addr, align 8
  store i32 0, i32* %height, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %1, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children1 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children1, i32 0, i32 2
  %5 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %5, i64 %idxprom
  %6 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  store %struct.PNode* %6, %struct.PNode** %c, align 8
  %7 = load %struct.PNode*, %struct.PNode** %c, align 8
  %op_assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 2
  %8 = load i32, i32* %op_assoc, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.PNode*, %struct.PNode** %c, align 8
  %op_assoc2 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 2
  %10 = load i32, i32* %op_assoc2, align 4
  %11 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 0
  store i32 %10, i32* %assoc, align 4
  %12 = load %struct.PNode*, %struct.PNode** %c, align 8
  %op_priority = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 3
  %13 = load i32, i32* %op_priority, align 4
  %14 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 1
  store i32 %13, i32* %priority, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %15 = load %struct.PNode*, %struct.PNode** %c, align 8
  %height3 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 8
  %16 = load i32, i32* %height3, align 4
  %17 = load i32, i32* %height, align 4
  %cmp4 = icmp uge i32 %16, %17
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %18 = load %struct.PNode*, %struct.PNode** %c, align 8
  %height6 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 8
  %19 = load i32, i32* %height6, align 4
  %add = add i32 %19, 1
  store i32 %add, i32* %height, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %op_assoc8 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %21, i32 0, i32 4
  %22 = load i16, i16* %op_assoc8, align 2
  %conv = zext i16 %22 to i32
  %23 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %op_assoc9 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 2
  store i32 %conv, i32* %op_assoc9, align 4
  %24 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %op_priority10 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %24, i32 0, i32 6
  %25 = load i32, i32* %op_priority10, align 4
  %26 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %op_priority11 = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 3
  store i32 %25, i32* %op_priority11, align 4
  %27 = load i32, i32* %height, align 4
  %28 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %height12 = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 8
  store i32 %27, i32* %height12, align 4
  %29 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %rule_assoc = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %29, i32 0, i32 5
  %30 = load i16, i16* %rule_assoc, align 2
  %tobool13 = icmp ne i16 %30, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %for.end
  %31 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %rule_assoc15 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %31, i32 0, i32 5
  %32 = load i16, i16* %rule_assoc15, align 2
  %conv16 = zext i16 %32 to i32
  %33 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %assoc17 = getelementptr inbounds %struct.PNode, %struct.PNode* %33, i32 0, i32 0
  store i32 %conv16, i32* %assoc17, align 4
  %34 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %rule_priority = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %34, i32 0, i32 7
  %35 = load i32, i32* %rule_priority, align 4
  %36 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %priority18 = getelementptr inbounds %struct.PNode, %struct.PNode* %36, i32 0, i32 1
  store i32 %35, i32* %priority18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %for.end
  %37 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %speculative_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %37, i32 0, i32 2
  %38 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %speculative_code, align 8
  %tobool20 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %38, null
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.end.19
  %39 = load %struct.D_Reduction*, %struct.D_Reduction** %r.addr, align 8
  %speculative_code22 = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %39, i32 0, i32 2
  %40 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %speculative_code22, align 8
  %41 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %42 = bitcast %struct.PNode* %41 to i8*
  %43 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children23 = getelementptr inbounds %struct.PNode, %struct.PNode* %43, i32 0, i32 7
  %v24 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children23, i32 0, i32 2
  %44 = load %struct.PNode**, %struct.PNode*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.PNode*, %struct.PNode** %44, i64 0
  %45 = bitcast %struct.PNode** %arrayidx25 to i8**
  %46 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children26 = getelementptr inbounds %struct.PNode, %struct.PNode* %46, i32 0, i32 7
  %n27 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children26, i32 0, i32 0
  %47 = load i32, i32* %n27, align 4
  %48 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %49 = bitcast %struct.Parser* %48 to %struct.D_Parser*
  %call = call i32 %40(i8* %42, i8** %45, i32 %47, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32), %struct.D_Parser* %49)
  store i32 %call, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.21
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @check_child(i32 %ppri, i32 %passoc, i32 %cpri, i32 %cassoc, i32 %left, i32 %right) #0 {
entry:
  %ppri.addr = alloca i32, align 4
  %passoc.addr = alloca i32, align 4
  %cpri.addr = alloca i32, align 4
  %cassoc.addr = alloca i32, align 4
  %left.addr = alloca i32, align 4
  %right.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %c = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %ppri, i32* %ppri.addr, align 4
  store i32 %passoc, i32* %passoc.addr, align 4
  store i32 %cpri, i32* %cpri.addr, align 4
  store i32 %cassoc, i32* %cassoc.addr, align 4
  store i32 %left, i32* %left.addr, align 4
  store i32 %right, i32* %right.addr, align 4
  %0 = load i32, i32* %passoc.addr, align 4
  %and = and i32 %0, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %passoc.addr, align 4
  %and1 = and i32 %1, 4
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %2 = load i32, i32* %right.addr, align 4
  %tobool3 = icmp ne i32 %2, 0
  %cond = select i1 %tobool3, i32 1, i32 0
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %3 = load i32, i32* %passoc.addr, align 4
  %cmp = icmp eq i32 %3, 9
  %cond4 = select i1 %cmp, i32 2, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ %cond, %cond.true ], [ %cond4, %cond.false ]
  store i32 %cond5, i32* %p, align 4
  %4 = load i32, i32* %cassoc.addr, align 4
  %and6 = and i32 %4, 16
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %cond.true.11, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %cond.end
  %5 = load i32, i32* %cassoc.addr, align 4
  %and9 = and i32 %5, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %cond.true.11, label %cond.false.12

cond.true.11:                                     ; preds = %lor.lhs.false.8, %cond.end
  br label %cond.end.15

cond.false.12:                                    ; preds = %lor.lhs.false.8
  %6 = load i32, i32* %cassoc.addr, align 4
  %cmp13 = icmp eq i32 %6, 9
  %cond14 = select i1 %cmp13, i32 1, i32 2
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.12, %cond.true.11
  %cond16 = phi i32 [ 0, %cond.true.11 ], [ %cond14, %cond.false.12 ]
  store i32 %cond16, i32* %c, align 4
  %7 = load i32, i32* %cpri.addr, align 4
  %8 = load i32, i32* %ppri.addr, align 4
  %cmp17 = icmp sgt i32 %7, %8
  br i1 %cmp17, label %cond.true.18, label %cond.false.19

cond.true.18:                                     ; preds = %cond.end.15
  br label %cond.end.32

cond.false.19:                                    ; preds = %cond.end.15
  %9 = load i32, i32* %cpri.addr, align 4
  %10 = load i32, i32* %ppri.addr, align 4
  %cmp20 = icmp slt i32 %9, %10
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.false.19
  br label %cond.end.30

cond.false.22:                                    ; preds = %cond.false.19
  %11 = load i32, i32* %cassoc.addr, align 4
  %and23 = and i32 %11, 2
  %tobool24 = icmp ne i32 %and23, 0
  %cond25 = select i1 %tobool24, i32 2, i32 0
  %12 = load i32, i32* %passoc.addr, align 4
  %and26 = and i32 %12, 2
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 1, i32 0
  %add = add nsw i32 %cond25, %cond28
  %add29 = add nsw i32 2, %add
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.22, %cond.true.21
  %cond31 = phi i32 [ 1, %cond.true.21 ], [ %add29, %cond.false.22 ]
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.end.30, %cond.true.18
  %cond33 = phi i32 [ 0, %cond.true.18 ], [ %cond31, %cond.end.30 ]
  store i32 %cond33, i32* %r, align 4
  %13 = load i32, i32* %r, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i32, i32* %c, align 4
  %idxprom34 = sext i32 %14 to i64
  %15 = load i32, i32* %p, align 4
  %idxprom35 = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [4 x [3 x [6 x i32]]], [4 x [3 x [6 x i32]]]* @child_table, i32 0, i64 %idxprom35
  %arrayidx36 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* %arrayidx, i32 0, i64 %idxprom34
  %arrayidx37 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx36, i32 0, i64 %idxprom
  %16 = load i32, i32* %arrayidx37, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @get_exp_one(%struct.PNode* %x, %struct.StackPNode* %psx, %struct.StackInt* %isx) #0 {
entry:
  %x.addr = alloca %struct.PNode*, align 8
  %psx.addr = alloca %struct.StackPNode*, align 8
  %isx.addr = alloca %struct.StackInt*, align 8
  %i = alloca i32, align 4
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  store %struct.StackPNode* %psx, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackInt* %isx, %struct.StackInt** %isx.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 0
  %1 = load i32, i32* %assoc, align 4
  %and = and i32 %1, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %3 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  call void @priority_insert(%struct.StackPNode* %2, %struct.PNode* %3)
  br label %if.end.14

if.else:                                          ; preds = %entry
  %4 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %cur = getelementptr inbounds %struct.StackInt, %struct.StackInt* %4, i32 0, i32 2
  %5 = load i32*, i32** %cur, align 8
  %6 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %end = getelementptr inbounds %struct.StackInt, %struct.StackInt* %6, i32 0, i32 1
  %7 = load i32*, i32** %end, align 8
  %cmp = icmp eq i32* %5, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %8 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %9 = bitcast %struct.StackInt* %8 to %struct.AbstractStack*
  %10 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %10, i32 0, i32 1
  %11 = load i32, i32* %priority, align 4
  %conv = sext i32 %11 to i64
  %12 = inttoptr i64 %conv to i8*
  %call = call i8* @stack_push_internal(%struct.AbstractStack* %9, i8* %12)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %13 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority1 = getelementptr inbounds %struct.PNode, %struct.PNode* %13, i32 0, i32 1
  %14 = load i32, i32* %priority1, align 4
  %15 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %cur2 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %15, i32 0, i32 2
  %16 = load i32*, i32** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %16, i32 1
  store i32* %incdec.ptr, i32** %cur2, align 8
  store i32 %14, i32* %16, align 4
  %conv3 = sext i32 %14 to i64
  %17 = inttoptr i64 %conv3 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %17, %cond.false ]
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load i32, i32* %i, align 4
  %19 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %20 = load i32, i32* %n, align 4
  %cmp4 = icmp ult i32 %18, %20
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children6 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children6, i32 0, i32 2
  %23 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %23, i64 %idxprom
  %24 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %assoc7 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 0
  %25 = load i32, i32* %assoc7, align 4
  %tobool8 = icmp ne i32 %25, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %26 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %26 to i64
  %27 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children11 = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 7
  %v12 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children11, i32 0, i32 2
  %28 = load %struct.PNode**, %struct.PNode*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.PNode*, %struct.PNode** %28, i64 %idxprom10
  %29 = load %struct.PNode*, %struct.PNode** %arrayidx13, align 8
  %30 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %31 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  call void @get_exp_one(%struct.PNode* %29, %struct.StackPNode* %30, %struct.StackInt* %31)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_unshared_priorities(%struct.StackPNode* %psx, %struct.StackPNode* %psy, %struct.StackInt* %isx, %struct.StackInt* %isy) #0 {
entry:
  %psx.addr = alloca %struct.StackPNode*, align 8
  %psy.addr = alloca %struct.StackPNode*, align 8
  %isx.addr = alloca %struct.StackInt*, align 8
  %isy.addr = alloca %struct.StackInt*, align 8
  %psr = alloca %struct.StackPNode*, align 8
  %t = alloca %struct.PNode*, align 8
  store %struct.StackPNode* %psx, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackPNode* %psy, %struct.StackPNode** %psy.addr, align 8
  store %struct.StackInt* %isx, %struct.StackInt** %isx.addr, align 8
  store %struct.StackInt* %isy, %struct.StackInt** %isy.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.else.35, %if.end.48
  %0 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %0, i32 0, i32 2
  %1 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %2 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %start = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %2, i32 0, i32 0
  %3 = load %struct.PNode**, %struct.PNode*** %start, align 8
  %cmp = icmp eq %struct.PNode** %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %4 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  store %struct.StackPNode* %4, %struct.StackPNode** %psr, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %5 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur1 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %5, i32 0, i32 2
  %6 = load %struct.PNode**, %struct.PNode*** %cur1, align 8
  %7 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %start2 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %7, i32 0, i32 0
  %8 = load %struct.PNode**, %struct.PNode*** %start2, align 8
  %cmp3 = icmp eq %struct.PNode** %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackPNode* %9, %struct.StackPNode** %psr, align 8
  br label %while.end

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %10 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur6 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %10, i32 0, i32 2
  %11 = load %struct.PNode**, %struct.PNode*** %cur6, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %11, i64 -1
  %12 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %height = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 8
  %13 = load i32, i32* %height, align 4
  %14 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur7 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %14, i32 0, i32 2
  %15 = load %struct.PNode**, %struct.PNode*** %cur7, align 8
  %arrayidx8 = getelementptr inbounds %struct.PNode*, %struct.PNode** %15, i64 -1
  %16 = load %struct.PNode*, %struct.PNode** %arrayidx8, align 8
  %height9 = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 8
  %17 = load i32, i32* %height9, align 4
  %cmp10 = icmp ugt i32 %13, %17
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.end.5
  %18 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackPNode* %18, %struct.StackPNode** %psr, align 8
  br label %if.end.42

if.else.12:                                       ; preds = %if.end.5
  %19 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur13 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %19, i32 0, i32 2
  %20 = load %struct.PNode**, %struct.PNode*** %cur13, align 8
  %arrayidx14 = getelementptr inbounds %struct.PNode*, %struct.PNode** %20, i64 -1
  %21 = load %struct.PNode*, %struct.PNode** %arrayidx14, align 8
  %height15 = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 8
  %22 = load i32, i32* %height15, align 4
  %23 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur16 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %23, i32 0, i32 2
  %24 = load %struct.PNode**, %struct.PNode*** %cur16, align 8
  %arrayidx17 = getelementptr inbounds %struct.PNode*, %struct.PNode** %24, i64 -1
  %25 = load %struct.PNode*, %struct.PNode** %arrayidx17, align 8
  %height18 = getelementptr inbounds %struct.PNode, %struct.PNode* %25, i32 0, i32 8
  %26 = load i32, i32* %height18, align 4
  %cmp19 = icmp ult i32 %22, %26
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else.12
  %27 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  store %struct.StackPNode* %27, %struct.StackPNode** %psr, align 8
  br label %if.end.41

if.else.21:                                       ; preds = %if.else.12
  %28 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur22 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %28, i32 0, i32 2
  %29 = load %struct.PNode**, %struct.PNode*** %cur22, align 8
  %arrayidx23 = getelementptr inbounds %struct.PNode*, %struct.PNode** %29, i64 -1
  %30 = load %struct.PNode*, %struct.PNode** %arrayidx23, align 8
  %31 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur24 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %31, i32 0, i32 2
  %32 = load %struct.PNode**, %struct.PNode*** %cur24, align 8
  %arrayidx25 = getelementptr inbounds %struct.PNode*, %struct.PNode** %32, i64 -1
  %33 = load %struct.PNode*, %struct.PNode** %arrayidx25, align 8
  %cmp26 = icmp ugt %struct.PNode* %30, %33
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.21
  %34 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackPNode* %34, %struct.StackPNode** %psr, align 8
  br label %if.end.40

if.else.28:                                       ; preds = %if.else.21
  %35 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur29 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %35, i32 0, i32 2
  %36 = load %struct.PNode**, %struct.PNode*** %cur29, align 8
  %arrayidx30 = getelementptr inbounds %struct.PNode*, %struct.PNode** %36, i64 -1
  %37 = load %struct.PNode*, %struct.PNode** %arrayidx30, align 8
  %38 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur31 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %38, i32 0, i32 2
  %39 = load %struct.PNode**, %struct.PNode*** %cur31, align 8
  %arrayidx32 = getelementptr inbounds %struct.PNode*, %struct.PNode** %39, i64 -1
  %40 = load %struct.PNode*, %struct.PNode** %arrayidx32, align 8
  %cmp33 = icmp ult %struct.PNode* %37, %40
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.28
  %41 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  store %struct.StackPNode* %41, %struct.StackPNode** %psr, align 8
  br label %if.end.39

if.else.35:                                       ; preds = %if.else.28
  %42 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur36 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %42, i32 0, i32 2
  %43 = load %struct.PNode**, %struct.PNode*** %cur36, align 8
  %incdec.ptr = getelementptr inbounds %struct.PNode*, %struct.PNode** %43, i32 -1
  store %struct.PNode** %incdec.ptr, %struct.PNode*** %cur36, align 8
  %44 = load %struct.PNode*, %struct.PNode** %incdec.ptr, align 8
  %45 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %cur37 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %45, i32 0, i32 2
  %46 = load %struct.PNode**, %struct.PNode*** %cur37, align 8
  %incdec.ptr38 = getelementptr inbounds %struct.PNode*, %struct.PNode** %46, i32 -1
  store %struct.PNode** %incdec.ptr38, %struct.PNode*** %cur37, align 8
  %47 = load %struct.PNode*, %struct.PNode** %incdec.ptr38, align 8
  br label %while.body

if.end.39:                                        ; preds = %if.then.34
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.27
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.20
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.11
  %48 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %cur43 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %48, i32 0, i32 2
  %49 = load %struct.PNode**, %struct.PNode*** %cur43, align 8
  %incdec.ptr44 = getelementptr inbounds %struct.PNode*, %struct.PNode** %49, i32 -1
  store %struct.PNode** %incdec.ptr44, %struct.PNode*** %cur43, align 8
  %50 = load %struct.PNode*, %struct.PNode** %incdec.ptr44, align 8
  store %struct.PNode* %50, %struct.PNode** %t, align 8
  %51 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %52 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cmp45 = icmp eq %struct.StackPNode* %51, %52
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %if.end.42
  %53 = load %struct.PNode*, %struct.PNode** %t, align 8
  %54 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %55 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  call void @get_exp_one_down(%struct.PNode* %53, %struct.StackPNode* %54, %struct.StackInt* %55)
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.42
  %56 = load %struct.PNode*, %struct.PNode** %t, align 8
  %57 = load %struct.StackPNode*, %struct.StackPNode** %psy.addr, align 8
  %58 = load %struct.StackInt*, %struct.StackInt** %isy.addr, align 8
  call void @get_exp_one_down(%struct.PNode* %56, %struct.StackPNode* %57, %struct.StackInt* %58)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.46
  br label %while.body

while.end:                                        ; preds = %if.then.4, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.58, %while.end
  %59 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %cur49 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %59, i32 0, i32 2
  %60 = load %struct.PNode**, %struct.PNode*** %cur49, align 8
  %61 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %start50 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %61, i32 0, i32 0
  %62 = load %struct.PNode**, %struct.PNode*** %start50, align 8
  %cmp51 = icmp eq %struct.PNode** %60, %62
  %lnot = xor i1 %cmp51, true
  br i1 %lnot, label %while.body.52, label %while.end.59

while.body.52:                                    ; preds = %while.cond
  %63 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %cur53 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %63, i32 0, i32 2
  %64 = load %struct.PNode**, %struct.PNode*** %cur53, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.PNode*, %struct.PNode** %64, i32 -1
  store %struct.PNode** %incdec.ptr54, %struct.PNode*** %cur53, align 8
  %65 = load %struct.PNode*, %struct.PNode** %incdec.ptr54, align 8
  store %struct.PNode* %65, %struct.PNode** %t, align 8
  %66 = load %struct.StackPNode*, %struct.StackPNode** %psr, align 8
  %67 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cmp55 = icmp eq %struct.StackPNode* %66, %67
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %while.body.52
  %68 = load %struct.PNode*, %struct.PNode** %t, align 8
  %69 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  call void @get_exp_all(%struct.PNode* %68, %struct.StackInt* %69)
  br label %if.end.58

if.else.57:                                       ; preds = %while.body.52
  %70 = load %struct.PNode*, %struct.PNode** %t, align 8
  %71 = load %struct.StackInt*, %struct.StackInt** %isy.addr, align 8
  call void @get_exp_all(%struct.PNode* %70, %struct.StackInt* %71)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57, %if.then.56
  br label %while.cond

while.end.59:                                     ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @intsort(i32* %xp, i32 %n) #0 {
entry:
  %xp.addr = alloca i32*, align 8
  %n.addr = alloca i32, align 4
  %again = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  store i32* %xp, i32** %xp.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 1, i32* %again, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i32, i32* %again, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %again, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp slt i32 %1, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %xp.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  %idxprom1 = sext i32 %add to i64
  %7 = load i32*, i32** %xp.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp sgt i32 %5, %8
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load i32*, i32** %xp.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %10, i64 %idxprom4
  %11 = load i32, i32* %arrayidx5, align 4
  store i32 %11, i32* %t, align 4
  %12 = load i32, i32* %i, align 4
  %add6 = add nsw i32 %12, 1
  %idxprom7 = sext i32 %add6 to i64
  %13 = load i32*, i32** %xp.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load i32*, i32** %xp.addr, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom9
  store i32 %14, i32* %arrayidx10, align 4
  %17 = load i32, i32* %t, align 4
  %18 = load i32, i32* %i, align 4
  %add11 = add nsw i32 %18, 1
  %idxprom12 = sext i32 %add11 to i64
  %19 = load i32*, i32** %xp.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 %idxprom12
  store i32 %17, i32* %arrayidx13, align 4
  store i32 1, i32* %again, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_priorities(i32* %xpri, i32 %xn, i32* %ypri, i32 %yn) #0 {
entry:
  %retval = alloca i32, align 4
  %xpri.addr = alloca i32*, align 8
  %xn.addr = alloca i32, align 4
  %ypri.addr = alloca i32*, align 8
  %yn.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %xpri, i32** %xpri.addr, align 8
  store i32 %xn, i32* %xn.addr, align 4
  store i32* %ypri, i32** %ypri.addr, align 8
  store i32 %yn, i32* %yn.addr, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %xn.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %yn.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** %xpri.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i32*, i32** %ypri.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 %idxprom2
  %10 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp sgt i32 %7, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %11 to i64
  %12 = load i32*, i32** %xpri.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %12, i64 %idxprom5
  %13 = load i32, i32* %arrayidx6, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load i32*, i32** %ypri.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %15, i64 %idxprom7
  %16 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %13, %16
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.10, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @cmp_eagerness(%struct.PNode* %x, %struct.PNode* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.PNode*, align 8
  %y.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %xx = alloca i8*, align 8
  %yy = alloca i8*, align 8
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  store %struct.PNode* %y, %struct.PNode** %y.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 7
  %n1 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  %2 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %children2 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 7
  %n3 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children2, i32 0, i32 0
  %3 = load i32, i32* %n3, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children4 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %n5 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children4, i32 0, i32 0
  %5 = load i32, i32* %n5, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %children6 = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 7
  %n7 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children6, i32 0, i32 0
  %7 = load i32, i32* %n7, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children9 = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children9, i32 0, i32 2
  %12 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %12, i64 %idxprom
  %13 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %13, i32 0, i32 19
  %end_skip = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 3
  %14 = load i8*, i8** %end_skip, align 8
  store i8* %14, i8** %xx, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %children11 = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 7
  %v12 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children11, i32 0, i32 2
  %17 = load %struct.PNode**, %struct.PNode*** %v12, align 8
  %arrayidx13 = getelementptr inbounds %struct.PNode*, %struct.PNode** %17, i64 %idxprom10
  %18 = load %struct.PNode*, %struct.PNode** %arrayidx13, align 8
  %parse_node14 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 19
  %end_skip15 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node14, i32 0, i32 3
  %19 = load i8*, i8** %end_skip15, align 8
  store i8* %19, i8** %yy, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children16 = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 7
  %n17 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children16, i32 0, i32 0
  %22 = load i32, i32* %n17, align 4
  %sub = sub i32 %22, 1
  %cmp18 = icmp eq i32 %20, %sub
  br i1 %cmp18, label %cond.true.19, label %cond.false.22

cond.true.19:                                     ; preds = %for.body
  %23 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %parse_node20 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 19
  %end_skip21 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node20, i32 0, i32 3
  %24 = load i8*, i8** %end_skip21, align 8
  br label %cond.end.23

cond.false.22:                                    ; preds = %for.body
  %25 = load i8*, i8** %xx, align 8
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.true.19
  %cond24 = phi i8* [ %24, %cond.true.19 ], [ %25, %cond.false.22 ]
  store i8* %cond24, i8** %xx, align 8
  %26 = load i32, i32* %i, align 4
  %27 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %children25 = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 7
  %n26 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children25, i32 0, i32 0
  %28 = load i32, i32* %n26, align 4
  %sub27 = sub i32 %28, 1
  %cmp28 = icmp eq i32 %26, %sub27
  br i1 %cmp28, label %cond.true.29, label %cond.false.32

cond.true.29:                                     ; preds = %cond.end.23
  %29 = load %struct.PNode*, %struct.PNode** %y.addr, align 8
  %parse_node30 = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 19
  %end_skip31 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node30, i32 0, i32 3
  %30 = load i8*, i8** %end_skip31, align 8
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end.23
  %31 = load i8*, i8** %yy, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.29
  %cond34 = phi i8* [ %30, %cond.true.29 ], [ %31, %cond.false.32 ]
  store i8* %cond34, i8** %yy, align 8
  %32 = load i8*, i8** %xx, align 8
  %33 = load i8*, i8** %yy, align 8
  %cmp35 = icmp ugt i8* %32, %33
  br i1 %cmp35, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.33
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.33
  %34 = load i8*, i8** %xx, align 8
  %35 = load i8*, i8** %yy, align 8
  %cmp36 = icmp ult i8* %34, %35
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.37, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @priority_insert(%struct.StackPNode* %psx, %struct.PNode* %x) #0 {
entry:
  %psx.addr = alloca %struct.StackPNode*, align 8
  %x.addr = alloca %struct.PNode*, align 8
  %t = alloca %struct.PNode*, align 8
  %start = alloca %struct.PNode**, align 8
  %cur = alloca %struct.PNode**, align 8
  store %struct.StackPNode* %psx, %struct.StackPNode** %psx.addr, align 8
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  %0 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur1 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %0, i32 0, i32 2
  %1 = load %struct.PNode**, %struct.PNode*** %cur1, align 8
  %2 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %end = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %2, i32 0, i32 1
  %3 = load %struct.PNode**, %struct.PNode*** %end, align 8
  %cmp = icmp eq %struct.PNode** %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %5 = bitcast %struct.StackPNode* %4 to %struct.AbstractStack*
  %6 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %7 = bitcast %struct.PNode* %6 to i8*
  %call = call i8* @stack_push_internal(%struct.AbstractStack* %5, i8* %7)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %9 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur2 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %9, i32 0, i32 2
  %10 = load %struct.PNode**, %struct.PNode*** %cur2, align 8
  %incdec.ptr = getelementptr inbounds %struct.PNode*, %struct.PNode** %10, i32 1
  store %struct.PNode** %incdec.ptr, %struct.PNode*** %cur2, align 8
  store %struct.PNode* %8, %struct.PNode** %10, align 8
  %11 = bitcast %struct.PNode* %8 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %11, %cond.false ]
  %12 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %start3 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %12, i32 0, i32 0
  %13 = load %struct.PNode**, %struct.PNode*** %start3, align 8
  store %struct.PNode** %13, %struct.PNode*** %start, align 8
  %14 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %cur4 = getelementptr inbounds %struct.StackPNode, %struct.StackPNode* %14, i32 0, i32 2
  %15 = load %struct.PNode**, %struct.PNode*** %cur4, align 8
  store %struct.PNode** %15, %struct.PNode*** %cur, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %16 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %17 = load %struct.PNode**, %struct.PNode*** %start, align 8
  %add.ptr = getelementptr inbounds %struct.PNode*, %struct.PNode** %17, i64 1
  %cmp5 = icmp ugt %struct.PNode** %16, %add.ptr
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %18, i64 -1
  %19 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %height = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 8
  %20 = load i32, i32* %height, align 4
  %21 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx6 = getelementptr inbounds %struct.PNode*, %struct.PNode** %21, i64 -2
  %22 = load %struct.PNode*, %struct.PNode** %arrayidx6, align 8
  %height7 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 8
  %23 = load i32, i32* %height7, align 4
  %cmp8 = icmp ugt i32 %20, %23
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %24 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx9 = getelementptr inbounds %struct.PNode*, %struct.PNode** %24, i64 -1
  %25 = load %struct.PNode*, %struct.PNode** %arrayidx9, align 8
  %height10 = getelementptr inbounds %struct.PNode, %struct.PNode* %25, i32 0, i32 8
  %26 = load i32, i32* %height10, align 4
  %27 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx11 = getelementptr inbounds %struct.PNode*, %struct.PNode** %27, i64 -2
  %28 = load %struct.PNode*, %struct.PNode** %arrayidx11, align 8
  %height12 = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 8
  %29 = load i32, i32* %height12, align 4
  %cmp13 = icmp eq i32 %26, %29
  br i1 %cmp13, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %30 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx14 = getelementptr inbounds %struct.PNode*, %struct.PNode** %30, i64 -1
  %31 = load %struct.PNode*, %struct.PNode** %arrayidx14, align 8
  %32 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx15 = getelementptr inbounds %struct.PNode*, %struct.PNode** %32, i64 -2
  %33 = load %struct.PNode*, %struct.PNode** %arrayidx15, align 8
  %cmp16 = icmp ugt %struct.PNode* %31, %33
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.18:                                        ; preds = %land.lhs.true, %if.end
  %34 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx19 = getelementptr inbounds %struct.PNode*, %struct.PNode** %34, i64 -1
  %35 = load %struct.PNode*, %struct.PNode** %arrayidx19, align 8
  store %struct.PNode* %35, %struct.PNode** %t, align 8
  %36 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx20 = getelementptr inbounds %struct.PNode*, %struct.PNode** %36, i64 -2
  %37 = load %struct.PNode*, %struct.PNode** %arrayidx20, align 8
  %38 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx21 = getelementptr inbounds %struct.PNode*, %struct.PNode** %38, i64 -1
  store %struct.PNode* %37, %struct.PNode** %arrayidx21, align 8
  %39 = load %struct.PNode*, %struct.PNode** %t, align 8
  %40 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %arrayidx22 = getelementptr inbounds %struct.PNode*, %struct.PNode** %40, i64 -2
  store %struct.PNode* %39, %struct.PNode** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18, %if.then.17, %if.then
  %41 = load %struct.PNode**, %struct.PNode*** %cur, align 8
  %incdec.ptr23 = getelementptr inbounds %struct.PNode*, %struct.PNode** %41, i32 -1
  store %struct.PNode** %incdec.ptr23, %struct.PNode*** %cur, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i8* @stack_push_internal(%struct.AbstractStack*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @get_exp_one_down(%struct.PNode* %x, %struct.StackPNode* %psx, %struct.StackInt* %isx) #0 {
entry:
  %x.addr = alloca %struct.PNode*, align 8
  %psx.addr = alloca %struct.StackPNode*, align 8
  %isx.addr = alloca %struct.StackInt*, align 8
  %i = alloca i32, align 4
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  store %struct.StackPNode* %psx, %struct.StackPNode** %psx.addr, align 8
  store %struct.StackInt* %isx, %struct.StackInt** %isx.addr, align 8
  %0 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %cur = getelementptr inbounds %struct.StackInt, %struct.StackInt* %0, i32 0, i32 2
  %1 = load i32*, i32** %cur, align 8
  %2 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %end = getelementptr inbounds %struct.StackInt, %struct.StackInt* %2, i32 0, i32 1
  %3 = load i32*, i32** %end, align 8
  %cmp = icmp eq i32* %1, %3
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %5 = bitcast %struct.StackInt* %4 to %struct.AbstractStack*
  %6 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 1
  %7 = load i32, i32* %priority, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %call = call i8* @stack_push_internal(%struct.AbstractStack* %5, i8* %8)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %9 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority1 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 1
  %10 = load i32, i32* %priority1, align 4
  %11 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  %cur2 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %11, i32 0, i32 2
  %12 = load i32*, i32** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %12, i32 1
  store i32* %incdec.ptr, i32** %cur2, align 8
  store i32 %10, i32* %12, align 4
  %conv3 = sext i32 %10 to i64
  %13 = inttoptr i64 %conv3 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %13, %cond.false ]
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %16 = load i32, i32* %n, align 4
  %cmp4 = icmp ult i32 %14, %16
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children6 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children6, i32 0, i32 2
  %19 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %19, i64 %idxprom
  %20 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 0
  %21 = load i32, i32* %assoc, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %22 to i64
  %23 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children8 = getelementptr inbounds %struct.PNode, %struct.PNode* %23, i32 0, i32 7
  %v9 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children8, i32 0, i32 2
  %24 = load %struct.PNode**, %struct.PNode*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.PNode*, %struct.PNode** %24, i64 %idxprom7
  %25 = load %struct.PNode*, %struct.PNode** %arrayidx10, align 8
  %26 = load %struct.StackPNode*, %struct.StackPNode** %psx.addr, align 8
  %27 = load %struct.StackInt*, %struct.StackInt** %isx.addr, align 8
  call void @get_exp_one(%struct.PNode* %25, %struct.StackPNode* %26, %struct.StackInt* %27)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @get_exp_all(%struct.PNode* %x, %struct.StackInt* %psx) #0 {
entry:
  %x.addr = alloca %struct.PNode*, align 8
  %psx.addr = alloca %struct.StackInt*, align 8
  %i = alloca i32, align 4
  store %struct.PNode* %x, %struct.PNode** %x.addr, align 8
  store %struct.StackInt* %psx, %struct.StackInt** %psx.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 0
  %1 = load i32, i32* %assoc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.StackInt*, %struct.StackInt** %psx.addr, align 8
  %cur = getelementptr inbounds %struct.StackInt, %struct.StackInt* %2, i32 0, i32 2
  %3 = load i32*, i32** %cur, align 8
  %4 = load %struct.StackInt*, %struct.StackInt** %psx.addr, align 8
  %end = getelementptr inbounds %struct.StackInt, %struct.StackInt* %4, i32 0, i32 1
  %5 = load i32*, i32** %end, align 8
  %cmp = icmp eq i32* %3, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct.StackInt*, %struct.StackInt** %psx.addr, align 8
  %7 = bitcast %struct.StackInt* %6 to %struct.AbstractStack*
  %8 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 1
  %9 = load i32, i32* %priority, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %call = call i8* @stack_push_internal(%struct.AbstractStack* %7, i8* %10)
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %11 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %priority1 = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 1
  %12 = load i32, i32* %priority1, align 4
  %13 = load %struct.StackInt*, %struct.StackInt** %psx.addr, align 8
  %cur2 = getelementptr inbounds %struct.StackInt, %struct.StackInt* %13, i32 0, i32 2
  %14 = load i32*, i32** %cur2, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %incdec.ptr, i32** %cur2, align 8
  store i32 %12, i32* %14, align 4
  %conv3 = sext i32 %12 to i64
  %15 = inttoptr i64 %conv3 to i8*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %15, %cond.false ]
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %17, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %18 = load i32, i32* %n, align 4
  %cmp4 = icmp ult i32 %16, %18
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.PNode*, %struct.PNode** %x.addr, align 8
  %children6 = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children6, i32 0, i32 2
  %21 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %21, i64 %idxprom
  %22 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %latest = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 14
  %23 = load %struct.PNode*, %struct.PNode** %latest, align 8
  %24 = load %struct.StackInt*, %struct.StackInt** %psx.addr, align 8
  call void @get_exp_all(%struct.PNode* %23, %struct.StackInt* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_add_znode_hash(%struct.VecZNode* %v, %struct.ZNode* %z) #0 {
entry:
  %v.addr = alloca %struct.VecZNode*, align 8
  %z.addr = alloca %struct.ZNode*, align 8
  %vv = alloca %struct.VecZNode, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.VecZNode* %v, %struct.VecZNode** %v.addr, align 8
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  %0 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n1 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %3 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %3, i32 0, i32 0
  %4 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %5 = ptrtoint %struct.PNode* %4 to i32
  %6 = load i32, i32* %n, align 4
  %rem = urem i32 %5, %6
  store i32 %rem, i32* %h, align 4
  %7 = load i32, i32* %h, align 4
  store i32 %7, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n2 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %9, i32 0, i32 0
  %10 = load i32, i32* %n2, align 4
  %cmp = icmp ult i32 %8, %10
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %j, align 4
  %cmp3 = icmp slt i32 %11, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v4 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %14, i32 0, i32 2
  %15 = load %struct.ZNode**, %struct.ZNode*** %v4, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %15, i64 %idxprom
  %16 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %tobool5 = icmp ne %struct.ZNode* %16, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %for.body
  %17 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %18 to i64
  %19 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v8 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %19, i32 0, i32 2
  %20 = load %struct.ZNode**, %struct.ZNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %20, i64 %idxprom7
  store %struct.ZNode* %17, %struct.ZNode** %arrayidx9, align 8
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %add = add nsw i32 %21, 1
  %22 = load i32, i32* %n, align 4
  %rem10 = srem i32 %add, %22
  store i32 %rem10, i32* %i, align 4
  %23 = load i32, i32* %j, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.11

if.end.11:                                        ; preds = %for.end, %entry
  %24 = load i32, i32* %n, align 4
  %tobool12 = icmp ne i32 %24, 0
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  %v14 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v14, align 8
  %25 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %i15 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %25, i32 0, i32 1
  store i32 2, i32* %i15, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.11
  %26 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v16 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %26, i32 0, i32 2
  %27 = load %struct.ZNode**, %struct.ZNode*** %v16, align 8
  %28 = bitcast %struct.ZNode** %27 to i8*
  %29 = bitcast i8* %28 to %struct.ZNode**
  %v17 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 2
  store %struct.ZNode** %29, %struct.ZNode*** %v17, align 8
  %30 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n18 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %30, i32 0, i32 0
  %31 = load i32, i32* %n18, align 4
  %n19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 0
  store i32 %31, i32* %n19, align 4
  %32 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %i20 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %32, i32 0, i32 1
  %33 = load i32, i32* %i20, align 4
  %add21 = add i32 %33, 2
  %34 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %i22 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %34, i32 0, i32 1
  store i32 %add21, i32* %i22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.13
  %35 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %i24 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %35, i32 0, i32 1
  %36 = load i32, i32* %i24, align 4
  %idxprom25 = zext i32 %36 to i64
  %arrayidx26 = getelementptr inbounds [0 x i32], [0 x i32]* @prime2, i32 0, i64 %idxprom25
  %37 = load i32, i32* %arrayidx26, align 4
  %38 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n27 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %38, i32 0, i32 0
  store i32 %37, i32* %n27, align 4
  %39 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n28 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %39, i32 0, i32 0
  %40 = load i32, i32* %n28, align 4
  %conv = zext i32 %40 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #3
  %41 = bitcast i8* %call to %struct.ZNode**
  %42 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v29 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %42, i32 0, i32 2
  store %struct.ZNode** %41, %struct.ZNode*** %v29, align 8
  %43 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v30 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %43, i32 0, i32 2
  %44 = load %struct.ZNode**, %struct.ZNode*** %v30, align 8
  %45 = bitcast %struct.ZNode** %44 to i8*
  %46 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n31 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %46, i32 0, i32 0
  %47 = load i32, i32* %n31, align 4
  %conv32 = zext i32 %47 to i64
  %mul33 = mul i64 %conv32, 8
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %mul33, i32 8, i1 false)
  %v34 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 2
  %48 = load %struct.ZNode**, %struct.ZNode*** %v34, align 8
  %tobool35 = icmp ne %struct.ZNode** %48, null
  br i1 %tobool35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %if.end.23
  %49 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  call void @set_union_znode(%struct.VecZNode* %49, %struct.VecZNode* %vv)
  %v37 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %vv, i32 0, i32 2
  %50 = load %struct.ZNode**, %struct.ZNode*** %v37, align 8
  %51 = bitcast %struct.ZNode** %50 to i8*
  call void @free(i8* %51) #3
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %if.end.23
  %52 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %53 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  call void @set_add_znode(%struct.VecZNode* %52, %struct.ZNode* %53)
  br label %return

return:                                           ; preds = %if.end.38, %if.then.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_union_znode(%struct.VecZNode* %v, %struct.VecZNode* %vv) #0 {
entry:
  %v.addr = alloca %struct.VecZNode*, align 8
  %vv.addr = alloca %struct.VecZNode*, align 8
  %i = alloca i32, align 4
  store %struct.VecZNode* %v, %struct.VecZNode** %v.addr, align 8
  store %struct.VecZNode* %vv, %struct.VecZNode** %vv.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.VecZNode*, %struct.VecZNode** %vv.addr, align 8
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %1, i32 0, i32 0
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.VecZNode*, %struct.VecZNode** %vv.addr, align 8
  %v1 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %4, i32 0, i32 2
  %5 = load %struct.ZNode**, %struct.ZNode*** %v1, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %5, i64 %idxprom
  %6 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %tobool = icmp ne %struct.ZNode* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.VecZNode*, %struct.VecZNode** %vv.addr, align 8
  %v3 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %9, i32 0, i32 2
  %10 = load %struct.ZNode**, %struct.ZNode*** %v3, align 8
  %arrayidx4 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %10, i64 %idxprom2
  %11 = load %struct.ZNode*, %struct.ZNode** %arrayidx4, align 8
  call void @set_add_znode(%struct.VecZNode* %7, %struct.ZNode* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SNode* @goto_PNode(%struct.Parser* %p, %struct.d_loc_t* %loc, %struct.PNode* %pn, %struct.SNode* %ps) #0 {
entry:
  %retval = alloca %struct.SNode*, align 8
  %p.addr = alloca %struct.Parser*, align 8
  %loc.addr = alloca %struct.d_loc_t*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %ps.addr = alloca %struct.SNode*, align 8
  %new_ps = alloca %struct.SNode*, align 8
  %pre_ps = alloca %struct.SNode*, align 8
  %z = alloca %struct.ZNode*, align 8
  %state = alloca %struct.D_State*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %state_index = alloca i32, align 4
  %h = alloca %struct.D_RightEpsilonHint*, align 8
  %r = alloca %struct.Reduction*, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.d_loc_t* %loc, %struct.d_loc_t** %loc.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store %struct.SNode* %ps, %struct.SNode** %ps.addr, align 8
  store %struct.ZNode* null, %struct.ZNode** %z, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 19
  %symbol = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  %div = sdiv i32 %1, 8
  %idxprom = sext i32 %div to i64
  %2 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %state1 = getelementptr inbounds %struct.SNode, %struct.SNode* %2, i32 0, i32 0
  %3 = load %struct.D_State*, %struct.D_State** %state1, align 8
  %goto_valid = getelementptr inbounds %struct.D_State, %struct.D_State* %3, i32 0, i32 0
  %4 = load i8*, i8** %goto_valid, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %6 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node2 = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 19
  %symbol3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node2, i32 0, i32 0
  %7 = load i32, i32* %symbol3, align 4
  %rem = srem i32 %7, 8
  %shl = shl i32 1, %rem
  %and = and i32 %conv, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.SNode* null, %struct.SNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node4 = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 19
  %symbol5 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node4, i32 0, i32 0
  %9 = load i32, i32* %symbol5, align 4
  %10 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %state6 = getelementptr inbounds %struct.SNode, %struct.SNode* %10, i32 0, i32 0
  %11 = load %struct.D_State*, %struct.D_State** %state6, align 8
  %goto_table_offset = getelementptr inbounds %struct.D_State, %struct.D_State* %11, i32 0, i32 1
  %12 = load i32, i32* %goto_table_offset, align 4
  %sub = sub nsw i32 %9, %12
  %idxprom7 = sext i32 %sub to i64
  %13 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t = getelementptr inbounds %struct.Parser, %struct.Parser* %13, i32 0, i32 3
  %14 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t, align 8
  %goto_table = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %14, i32 0, i32 2
  %15 = load i16*, i16** %goto_table, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %15, i64 %idxprom7
  %16 = load i16, i16* %arrayidx8, align 2
  %conv9 = zext i16 %16 to i32
  %sub10 = sub nsw i32 %conv9, 1
  store i32 %sub10, i32* %state_index, align 4
  %17 = load i32, i32* %state_index, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %t12 = getelementptr inbounds %struct.Parser, %struct.Parser* %18, i32 0, i32 3
  %19 = load %struct.D_ParserTables*, %struct.D_ParserTables** %t12, align 8
  %state13 = getelementptr inbounds %struct.D_ParserTables, %struct.D_ParserTables* %19, i32 0, i32 1
  %20 = load %struct.D_State*, %struct.D_State** %state13, align 8
  %arrayidx14 = getelementptr inbounds %struct.D_State, %struct.D_State* %20, i64 %idxprom11
  store %struct.D_State* %arrayidx14, %struct.D_State** %state, align 8
  %21 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %22 = load %struct.D_State*, %struct.D_State** %state, align 8
  %23 = load %struct.d_loc_t*, %struct.d_loc_t** %loc.addr, align 8
  %24 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_scope = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 17
  %25 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope, align 8
  %26 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %initial_globals = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 18
  %27 = load i8*, i8** %initial_globals, align 8
  %call = call %struct.SNode* @add_SNode(%struct.Parser* %21, %struct.D_State* %22, %struct.d_loc_t* %23, %struct.D_Scope* %25, i8* %27)
  store %struct.SNode* %call, %struct.SNode** %new_ps, align 8
  %28 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %29 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %last_pn = getelementptr inbounds %struct.SNode, %struct.SNode* %29, i32 0, i32 5
  store %struct.PNode* %28, %struct.PNode** %last_pn, align 8
  %30 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %31 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %cmp = icmp ne %struct.SNode* %30, %31
  br i1 %cmp, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %32 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %depth = getelementptr inbounds %struct.SNode, %struct.SNode* %32, i32 0, i32 4
  %33 = load i32, i32* %depth, align 4
  %34 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %depth16 = getelementptr inbounds %struct.SNode, %struct.SNode* %34, i32 0, i32 4
  %35 = load i32, i32* %depth16, align 4
  %add = add i32 %35, 1
  %cmp17 = icmp ult i32 %33, %add
  br i1 %cmp17, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %land.lhs.true
  %36 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %depth20 = getelementptr inbounds %struct.SNode, %struct.SNode* %36, i32 0, i32 4
  %37 = load i32, i32* %depth20, align 4
  %add21 = add i32 %37, 1
  %38 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %depth22 = getelementptr inbounds %struct.SNode, %struct.SNode* %38, i32 0, i32 4
  store i32 %add21, i32* %depth22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %land.lhs.true, %if.end
  %39 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %39, i32 0, i32 6
  %40 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %call24 = call %struct.ZNode* @set_find_znode(%struct.VecZNode* %zns, %struct.PNode* %40)
  store %struct.ZNode* %call24, %struct.ZNode** %z, align 8
  %41 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %tobool25 = icmp ne %struct.ZNode* %41, null
  br i1 %tobool25, label %if.end.96, label %if.then.26

if.then.26:                                       ; preds = %if.end.23
  %42 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %zns27 = getelementptr inbounds %struct.SNode, %struct.SNode* %42, i32 0, i32 6
  %43 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %44 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %call28 = call %struct.ZNode* @new_ZNode(%struct.Parser* %43, %struct.PNode* %44)
  store %struct.ZNode* %call28, %struct.ZNode** %z, align 8
  call void @set_add_znode(%struct.VecZNode* %zns27, %struct.ZNode* %call28)
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %45 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 6
  %46 = load i32, i32* %refcount, align 4
  %inc = add i32 %46, 1
  store i32 %inc, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %47 = load i32, i32* %j, align 4
  %48 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %state29 = getelementptr inbounds %struct.SNode, %struct.SNode* %48, i32 0, i32 0
  %49 = load %struct.D_State*, %struct.D_State** %state29, align 8
  %reductions = getelementptr inbounds %struct.D_State, %struct.D_State* %49, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon, %struct.anon* %reductions, i32 0, i32 0
  %50 = load i32, i32* %n, align 4
  %cmp30 = icmp ult i32 %47, %50
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %51 to i64
  %52 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %state33 = getelementptr inbounds %struct.SNode, %struct.SNode* %52, i32 0, i32 0
  %53 = load %struct.D_State*, %struct.D_State** %state33, align 8
  %reductions34 = getelementptr inbounds %struct.D_State, %struct.D_State* %53, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon, %struct.anon* %reductions34, i32 0, i32 1
  %54 = load %struct.D_Reduction**, %struct.D_Reduction*** %v, align 8
  %arrayidx35 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %54, i64 %idxprom32
  %55 = load %struct.D_Reduction*, %struct.D_Reduction** %arrayidx35, align 8
  %nelements = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %55, i32 0, i32 0
  %56 = load i16, i16* %nelements, align 2
  %tobool36 = icmp ne i16 %56, 0
  br i1 %tobool36, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %for.body
  %57 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %58 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %59 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %60 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %60 to i64
  %61 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %state39 = getelementptr inbounds %struct.SNode, %struct.SNode* %61, i32 0, i32 0
  %62 = load %struct.D_State*, %struct.D_State** %state39, align 8
  %reductions40 = getelementptr inbounds %struct.D_State, %struct.D_State* %62, i32 0, i32 2
  %v41 = getelementptr inbounds %struct.anon, %struct.anon* %reductions40, i32 0, i32 1
  %63 = load %struct.D_Reduction**, %struct.D_Reduction*** %v41, align 8
  %arrayidx42 = getelementptr inbounds %struct.D_Reduction*, %struct.D_Reduction** %63, i64 %idxprom38
  %64 = load %struct.D_Reduction*, %struct.D_Reduction** %arrayidx42, align 8
  %call43 = call %struct.Reduction* @add_Reduction(%struct.Parser* %57, %struct.ZNode* %58, %struct.SNode* %59, %struct.D_Reduction* %64)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %65 = load i32, i32* %j, align 4
  %inc45 = add nsw i32 %65, 1
  store i32 %inc45, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %shift = getelementptr inbounds %struct.PNode, %struct.PNode* %66, i32 0, i32 5
  %67 = load %struct.D_Shift*, %struct.D_Shift** %shift, align 8
  %tobool46 = icmp ne %struct.D_Shift* %67, null
  br i1 %tobool46, label %if.end.95, label %if.then.47

if.then.47:                                       ; preds = %for.end
  store i32 0, i32* %j, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.92, %if.then.47
  %68 = load i32, i32* %j, align 4
  %69 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %state49 = getelementptr inbounds %struct.SNode, %struct.SNode* %69, i32 0, i32 0
  %70 = load %struct.D_State*, %struct.D_State** %state49, align 8
  %right_epsilon_hints = getelementptr inbounds %struct.D_State, %struct.D_State* %70, i32 0, i32 3
  %n50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %right_epsilon_hints, i32 0, i32 0
  %71 = load i32, i32* %n50, align 4
  %cmp51 = icmp ult i32 %68, %71
  br i1 %cmp51, label %for.body.53, label %for.end.94

for.body.53:                                      ; preds = %for.cond.48
  %72 = load i32, i32* %j, align 4
  %idxprom54 = sext i32 %72 to i64
  %73 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %state55 = getelementptr inbounds %struct.SNode, %struct.SNode* %73, i32 0, i32 0
  %74 = load %struct.D_State*, %struct.D_State** %state55, align 8
  %right_epsilon_hints56 = getelementptr inbounds %struct.D_State, %struct.D_State* %74, i32 0, i32 3
  %v57 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %right_epsilon_hints56, i32 0, i32 1
  %75 = load %struct.D_RightEpsilonHint*, %struct.D_RightEpsilonHint** %v57, align 8
  %arrayidx58 = getelementptr inbounds %struct.D_RightEpsilonHint, %struct.D_RightEpsilonHint* %75, i64 %idxprom54
  store %struct.D_RightEpsilonHint* %arrayidx58, %struct.D_RightEpsilonHint** %h, align 8
  %76 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %77 = load %struct.D_RightEpsilonHint*, %struct.D_RightEpsilonHint** %h, align 8
  %preceeding_state = getelementptr inbounds %struct.D_RightEpsilonHint, %struct.D_RightEpsilonHint* %77, i32 0, i32 1
  %78 = load i16, i16* %preceeding_state, align 2
  %conv59 = zext i16 %78 to i32
  %79 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %initial_scope60 = getelementptr inbounds %struct.SNode, %struct.SNode* %79, i32 0, i32 1
  %80 = load %struct.D_Scope*, %struct.D_Scope** %initial_scope60, align 8
  %81 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %initial_globals61 = getelementptr inbounds %struct.SNode, %struct.SNode* %81, i32 0, i32 2
  %82 = load i8*, i8** %initial_globals61, align 8
  %call62 = call %struct.SNode* @find_SNode(%struct.Parser* %76, i32 %conv59, %struct.D_Scope* %80, i8* %82)
  store %struct.SNode* %call62, %struct.SNode** %pre_ps, align 8
  %83 = load %struct.SNode*, %struct.SNode** %pre_ps, align 8
  %tobool63 = icmp ne %struct.SNode* %83, null
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %for.body.53
  br label %for.inc.92

if.end.65:                                        ; preds = %for.body.53
  store i32 0, i32* %k, align 4
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.89, %if.end.65
  %84 = load i32, i32* %k, align 4
  %85 = load %struct.SNode*, %struct.SNode** %pre_ps, align 8
  %zns67 = getelementptr inbounds %struct.SNode, %struct.SNode* %85, i32 0, i32 6
  %n68 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns67, i32 0, i32 0
  %86 = load i32, i32* %n68, align 4
  %cmp69 = icmp ult i32 %84, %86
  br i1 %cmp69, label %for.body.71, label %for.end.91

for.body.71:                                      ; preds = %for.cond.66
  %87 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %87 to i64
  %88 = load %struct.SNode*, %struct.SNode** %pre_ps, align 8
  %zns73 = getelementptr inbounds %struct.SNode, %struct.SNode* %88, i32 0, i32 6
  %v74 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns73, i32 0, i32 2
  %89 = load %struct.ZNode**, %struct.ZNode*** %v74, align 8
  %arrayidx75 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %89, i64 %idxprom72
  %90 = load %struct.ZNode*, %struct.ZNode** %arrayidx75, align 8
  %tobool76 = icmp ne %struct.ZNode* %90, null
  br i1 %tobool76, label %if.then.77, label %if.end.88

if.then.77:                                       ; preds = %for.body.71
  %91 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %92 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %92 to i64
  %93 = load %struct.SNode*, %struct.SNode** %pre_ps, align 8
  %zns79 = getelementptr inbounds %struct.SNode, %struct.SNode* %93, i32 0, i32 6
  %v80 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns79, i32 0, i32 2
  %94 = load %struct.ZNode**, %struct.ZNode*** %v80, align 8
  %arrayidx81 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %94, i64 %idxprom78
  %95 = load %struct.ZNode*, %struct.ZNode** %arrayidx81, align 8
  %96 = load %struct.SNode*, %struct.SNode** %pre_ps, align 8
  %97 = load %struct.D_RightEpsilonHint*, %struct.D_RightEpsilonHint** %h, align 8
  %reduction = getelementptr inbounds %struct.D_RightEpsilonHint, %struct.D_RightEpsilonHint* %97, i32 0, i32 2
  %98 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %call82 = call %struct.Reduction* @add_Reduction(%struct.Parser* %91, %struct.ZNode* %95, %struct.SNode* %96, %struct.D_Reduction* %98)
  store %struct.Reduction* %call82, %struct.Reduction** %r, align 8
  %99 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %tobool83 = icmp ne %struct.Reduction* %99, null
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %if.then.77
  %100 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %101 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %new_snode = getelementptr inbounds %struct.Reduction, %struct.Reduction* %101, i32 0, i32 3
  store %struct.SNode* %100, %struct.SNode** %new_snode, align 8
  %102 = load %struct.D_RightEpsilonHint*, %struct.D_RightEpsilonHint** %h, align 8
  %depth85 = getelementptr inbounds %struct.D_RightEpsilonHint, %struct.D_RightEpsilonHint* %102, i32 0, i32 0
  %103 = load i16, i16* %depth85, align 2
  %conv86 = zext i16 %103 to i32
  %104 = load %struct.Reduction*, %struct.Reduction** %r, align 8
  %new_depth = getelementptr inbounds %struct.Reduction, %struct.Reduction* %104, i32 0, i32 4
  store i32 %conv86, i32* %new_depth, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %if.then.77
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %for.body.71
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %105 = load i32, i32* %k, align 4
  %inc90 = add nsw i32 %105, 1
  store i32 %inc90, i32* %k, align 4
  br label %for.cond.66

for.end.91:                                       ; preds = %for.cond.66
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91, %if.then.64
  %106 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %106, 1
  store i32 %inc93, i32* %j, align 4
  br label %for.cond.48

for.end.94:                                       ; preds = %for.cond.48
  br label %if.end.95

if.end.95:                                        ; preds = %for.end.94, %for.end
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.end.23
  store i32 0, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.110, %if.end.96
  %107 = load i32, i32* %i, align 4
  %108 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %108, i32 0, i32 1
  %n98 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %109 = load i32, i32* %n98, align 4
  %cmp99 = icmp ult i32 %107, %109
  br i1 %cmp99, label %for.body.101, label %for.end.112

for.body.101:                                     ; preds = %for.cond.97
  %110 = load i32, i32* %i, align 4
  %idxprom102 = sext i32 %110 to i64
  %111 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns103 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %111, i32 0, i32 1
  %v104 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns103, i32 0, i32 2
  %112 = load %struct.SNode**, %struct.SNode*** %v104, align 8
  %arrayidx105 = getelementptr inbounds %struct.SNode*, %struct.SNode** %112, i64 %idxprom102
  %113 = load %struct.SNode*, %struct.SNode** %arrayidx105, align 8
  %114 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %cmp106 = icmp eq %struct.SNode* %113, %114
  br i1 %cmp106, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %for.body.101
  br label %for.end.112

if.end.109:                                       ; preds = %for.body.101
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end.109
  %115 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %115, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.97

for.end.112:                                      ; preds = %if.then.108, %for.cond.97
  %116 = load i32, i32* %i, align 4
  %117 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns113 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %117, i32 0, i32 1
  %n114 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns113, i32 0, i32 0
  %118 = load i32, i32* %n114, align 4
  %cmp115 = icmp uge i32 %116, %118
  br i1 %cmp115, label %if.then.117, label %if.end.178

if.then.117:                                      ; preds = %for.end.112
  br label %do.body.118

do.body.118:                                      ; preds = %if.then.117
  %119 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns119 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %119, i32 0, i32 1
  %v120 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns119, i32 0, i32 2
  %120 = load %struct.SNode**, %struct.SNode*** %v120, align 8
  %tobool121 = icmp ne %struct.SNode** %120, null
  br i1 %tobool121, label %if.else, label %if.then.122

if.then.122:                                      ; preds = %do.body.118
  %121 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %122 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns123 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %122, i32 0, i32 1
  %n124 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns123, i32 0, i32 0
  %123 = load i32, i32* %n124, align 4
  %inc125 = add i32 %123, 1
  store i32 %inc125, i32* %n124, align 4
  %idxprom126 = zext i32 %123 to i64
  %124 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns127 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %124, i32 0, i32 1
  %e = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns127, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.SNode*], [3 x %struct.SNode*]* %e, i32 0, i32 0
  %125 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns128 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %125, i32 0, i32 1
  %v129 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns128, i32 0, i32 2
  store %struct.SNode** %arraydecay, %struct.SNode*** %v129, align 8
  %arrayidx130 = getelementptr inbounds %struct.SNode*, %struct.SNode** %arraydecay, i64 %idxprom126
  store %struct.SNode* %121, %struct.SNode** %arrayidx130, align 8
  br label %do.end.169

if.else:                                          ; preds = %do.body.118
  %126 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns131 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %126, i32 0, i32 1
  %v132 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns131, i32 0, i32 2
  %127 = load %struct.SNode**, %struct.SNode*** %v132, align 8
  %128 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns133 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %128, i32 0, i32 1
  %e134 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns133, i32 0, i32 3
  %arraydecay135 = getelementptr inbounds [3 x %struct.SNode*], [3 x %struct.SNode*]* %e134, i32 0, i32 0
  %cmp136 = icmp eq %struct.SNode** %127, %arraydecay135
  br i1 %cmp136, label %if.then.138, label %if.else.152

if.then.138:                                      ; preds = %if.else
  %129 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns139 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %129, i32 0, i32 1
  %n140 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns139, i32 0, i32 0
  %130 = load i32, i32* %n140, align 4
  %cmp141 = icmp ult i32 %130, 3
  br i1 %cmp141, label %if.then.143, label %if.end.151

if.then.143:                                      ; preds = %if.then.138
  %131 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %132 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns144 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %132, i32 0, i32 1
  %n145 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns144, i32 0, i32 0
  %133 = load i32, i32* %n145, align 4
  %inc146 = add i32 %133, 1
  store i32 %inc146, i32* %n145, align 4
  %idxprom147 = zext i32 %133 to i64
  %134 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns148 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %134, i32 0, i32 1
  %v149 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns148, i32 0, i32 2
  %135 = load %struct.SNode**, %struct.SNode*** %v149, align 8
  %arrayidx150 = getelementptr inbounds %struct.SNode*, %struct.SNode** %135, i64 %idxprom147
  store %struct.SNode* %131, %struct.SNode** %arrayidx150, align 8
  br label %do.end.169

if.end.151:                                       ; preds = %if.then.138
  br label %if.end.166

if.else.152:                                      ; preds = %if.else
  %136 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns153 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %136, i32 0, i32 1
  %n154 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns153, i32 0, i32 0
  %137 = load i32, i32* %n154, align 4
  %and155 = and i32 %137, 7
  %tobool156 = icmp ne i32 %and155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.165

if.then.157:                                      ; preds = %if.else.152
  %138 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %139 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns158 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %139, i32 0, i32 1
  %n159 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns158, i32 0, i32 0
  %140 = load i32, i32* %n159, align 4
  %inc160 = add i32 %140, 1
  store i32 %inc160, i32* %n159, align 4
  %idxprom161 = zext i32 %140 to i64
  %141 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns162 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %141, i32 0, i32 1
  %v163 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns162, i32 0, i32 2
  %142 = load %struct.SNode**, %struct.SNode*** %v163, align 8
  %arrayidx164 = getelementptr inbounds %struct.SNode*, %struct.SNode** %142, i64 %idxprom161
  store %struct.SNode* %138, %struct.SNode** %arrayidx164, align 8
  br label %do.end.169

if.end.165:                                       ; preds = %if.else.152
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.165, %if.end.151
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166
  %143 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns168 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %143, i32 0, i32 1
  %144 = bitcast %struct.VecSNode* %sns168 to i8*
  %145 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %146 = bitcast %struct.SNode* %145 to i8*
  call void @vec_add_internal(i8* %144, i8* %146)
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.167, %if.then.157, %if.then.143, %if.then.122
  %147 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  %148 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %cmp170 = icmp ne %struct.SNode* %147, %148
  br i1 %cmp170, label %if.then.172, label %if.end.177

if.then.172:                                      ; preds = %do.end.169
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.172
  %149 = load %struct.SNode*, %struct.SNode** %ps.addr, align 8
  %refcount174 = getelementptr inbounds %struct.SNode, %struct.SNode* %149, i32 0, i32 7
  %150 = load i32, i32* %refcount174, align 4
  %inc175 = add i32 %150, 1
  store i32 %inc175, i32* %refcount174, align 4
  br label %do.end.176

do.end.176:                                       ; preds = %do.body.173
  br label %if.end.177

if.end.177:                                       ; preds = %do.end.176, %do.end.169
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %for.end.112
  %151 = load %struct.SNode*, %struct.SNode** %new_ps, align 8
  store %struct.SNode* %151, %struct.SNode** %retval
  br label %return

return:                                           ; preds = %if.end.178, %if.then
  %152 = load %struct.SNode*, %struct.SNode** %retval
  ret %struct.SNode* %152
}

; Function Attrs: nounwind uwtable
define internal void @build_paths(%struct.ZNode* %z, %struct.VecVecZNode* %paths, i32 %nchildren_to_go) #0 {
entry:
  %z.addr = alloca %struct.ZNode*, align 8
  %paths.addr = alloca %struct.VecVecZNode*, align 8
  %nchildren_to_go.addr = alloca i32, align 4
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  store %struct.VecVecZNode* %paths, %struct.VecVecZNode** %paths.addr, align 8
  store i32 %nchildren_to_go, i32* %nchildren_to_go.addr, align 4
  %0 = load i32, i32* %nchildren_to_go.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %1, i32 0, i32 2
  %2 = load %struct.VecZNode**, %struct.VecZNode*** %v, align 8
  %tobool1 = icmp ne %struct.VecZNode** %2, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.body
  %3 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %call = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %3, i32 0, i32 -1)
  %4 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %4, i32 0, i32 0
  %5 = load i32, i32* %n, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %e = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.VecZNode*], [3 x %struct.VecZNode*]* %e, i32 0, i32 0
  %7 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v3 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %7, i32 0, i32 2
  store %struct.VecZNode** %arraydecay, %struct.VecZNode*** %v3, align 8
  %arrayidx = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %arraydecay, i64 %idxprom
  store %struct.VecZNode* %call, %struct.VecZNode** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %8 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v4 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %8, i32 0, i32 2
  %9 = load %struct.VecZNode**, %struct.VecZNode*** %v4, align 8
  %10 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %e5 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %10, i32 0, i32 3
  %arraydecay6 = getelementptr inbounds [3 x %struct.VecZNode*], [3 x %struct.VecZNode*]* %e5, i32 0, i32 0
  %cmp = icmp eq %struct.VecZNode** %9, %arraydecay6
  br i1 %cmp, label %if.then.7, label %if.else.18

if.then.7:                                        ; preds = %if.else
  %11 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n8 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %11, i32 0, i32 0
  %12 = load i32, i32* %n8, align 4
  %cmp9 = icmp ult i32 %12, 3
  br i1 %cmp9, label %if.then.10, label %if.end.17

if.then.10:                                       ; preds = %if.then.7
  %13 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %call11 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %13, i32 0, i32 -1)
  %14 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n12 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %14, i32 0, i32 0
  %15 = load i32, i32* %n12, align 4
  %inc13 = add i32 %15, 1
  store i32 %inc13, i32* %n12, align 4
  %idxprom14 = zext i32 %15 to i64
  %16 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v15 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %16, i32 0, i32 2
  %17 = load %struct.VecZNode**, %struct.VecZNode*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %17, i64 %idxprom14
  store %struct.VecZNode* %call11, %struct.VecZNode** %arrayidx16, align 8
  br label %do.end

if.end.17:                                        ; preds = %if.then.7
  br label %if.end.29

if.else.18:                                       ; preds = %if.else
  %18 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n19 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %18, i32 0, i32 0
  %19 = load i32, i32* %n19, align 4
  %and = and i32 %19, 7
  %tobool20 = icmp ne i32 %and, 0
  br i1 %tobool20, label %if.then.21, label %if.end.28

if.then.21:                                       ; preds = %if.else.18
  %20 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %call22 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %20, i32 0, i32 -1)
  %21 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n23 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %21, i32 0, i32 0
  %22 = load i32, i32* %n23, align 4
  %inc24 = add i32 %22, 1
  store i32 %inc24, i32* %n23, align 4
  %idxprom25 = zext i32 %22 to i64
  %23 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v26 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %23, i32 0, i32 2
  %24 = load %struct.VecZNode**, %struct.VecZNode*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %24, i64 %idxprom25
  store %struct.VecZNode* %call22, %struct.VecZNode** %arrayidx27, align 8
  br label %do.end

if.end.28:                                        ; preds = %if.else.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  %25 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %26 = bitcast %struct.VecVecZNode* %25 to i8*
  %27 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %call31 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %27, i32 0, i32 -1)
  %28 = bitcast %struct.VecZNode* %call31 to i8*
  call void @vec_add_internal(i8* %26, i8* %28)
  br label %do.end

do.end:                                           ; preds = %if.end.30, %if.then.21, %if.then.10, %if.then.2
  %29 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %30 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %31 = load i32, i32* %nchildren_to_go.addr, align 4
  %32 = load i32, i32* %nchildren_to_go.addr, align 4
  call void @build_paths_internal(%struct.ZNode* %29, %struct.VecVecZNode* %30, i32 0, i32 %31, i32 %32)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_path_priorities_internal(%struct.VecZNode* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %path.addr = alloca %struct.VecZNode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %jj = alloca i32, align 4
  %kk = alloca i32, align 4
  %one = alloca i32, align 4
  %z = alloca %struct.ZNode*, align 8
  %zz = alloca %struct.ZNode*, align 8
  %zzz = alloca %struct.ZNode*, align 8
  %pn0 = alloca %struct.PNode*, align 8
  %pn1 = alloca %struct.PNode*, align 8
  store %struct.VecZNode* %path, %struct.VecZNode** %path.addr, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %one, align 4
  %0 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %2 = load i32, i32* %i, align 4
  %add = add nsw i32 %2, 1
  %cmp = icmp ult i32 %1, %add
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %4, i32 0, i32 2
  %5 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %5, i64 %idxprom
  %6 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %6, i32 0, i32 0
  %7 = load %struct.PNode*, %struct.PNode** %pn, align 8
  store %struct.PNode* %7, %struct.PNode** %pn0, align 8
  %8 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %op_assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 2
  %9 = load i32, i32* %op_assoc, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end.23, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %i, align 4
  %10 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n2 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %10, i32 0, i32 0
  %11 = load i32, i32* %n2, align 4
  %12 = load i32, i32* %i, align 4
  %add3 = add nsw i32 %12, 1
  %cmp4 = icmp ult i32 %11, %add3
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.1
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.1
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v8 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %14, i32 0, i32 2
  %15 = load %struct.ZNode**, %struct.ZNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %15, i64 %idxprom7
  %16 = load %struct.ZNode*, %struct.ZNode** %arrayidx9, align 8
  %pn10 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %16, i32 0, i32 0
  %17 = load %struct.PNode*, %struct.PNode** %pn10, align 8
  store %struct.PNode* %17, %struct.PNode** %pn1, align 8
  %18 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %op_assoc11 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 2
  %19 = load i32, i32* %op_assoc11, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %20 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 0
  %21 = load i32, i32* %assoc, align 4
  %tobool15 = icmp ne i32 %21, 0
  br i1 %tobool15, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %if.end.14
  %22 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %op_priority = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 3
  %23 = load i32, i32* %op_priority, align 4
  %24 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %op_assoc17 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 2
  %25 = load i32, i32* %op_assoc17, align 4
  %26 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 1
  %27 = load i32, i32* %priority, align 4
  %28 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %assoc18 = getelementptr inbounds %struct.PNode, %struct.PNode* %28, i32 0, i32 0
  %29 = load i32, i32* %assoc18, align 4
  %call = call i32 @check_child(i32 %23, i32 %25, i32 %27, i32 %29, i32 0, i32 1)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.16
  store i32 -1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.then.16
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.14
  %30 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  store %struct.PNode* %30, %struct.PNode** %pn0, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %31 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n24 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %31, i32 0, i32 0
  %32 = load i32, i32* %n24, align 4
  %33 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %33, 1
  %cmp26 = icmp ugt i32 %32, %add25
  br i1 %cmp26, label %if.then.27, label %if.else.79

if.then.27:                                       ; preds = %if.end.23
  %34 = load i32, i32* %i, align 4
  %add28 = add nsw i32 %34, 1
  %idxprom29 = sext i32 %add28 to i64
  %35 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v30 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %35, i32 0, i32 2
  %36 = load %struct.ZNode**, %struct.ZNode*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %36, i64 %idxprom29
  %37 = load %struct.ZNode*, %struct.ZNode** %arrayidx31, align 8
  %pn32 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %37, i32 0, i32 0
  %38 = load %struct.PNode*, %struct.PNode** %pn32, align 8
  store %struct.PNode* %38, %struct.PNode** %pn1, align 8
  %39 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %n33 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %39, i32 0, i32 0
  %40 = load i32, i32* %n33, align 4
  %41 = load i32, i32* %i, align 4
  %add34 = add nsw i32 %41, 2
  %cmp35 = icmp ugt i32 %40, %add34
  br i1 %cmp35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %if.then.27
  %42 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %43 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %44 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %44, 2
  %idxprom38 = sext i32 %add37 to i64
  %45 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v39 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %45, i32 0, i32 2
  %46 = load %struct.ZNode**, %struct.ZNode*** %v39, align 8
  %arrayidx40 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %46, i64 %idxprom38
  %47 = load %struct.ZNode*, %struct.ZNode** %arrayidx40, align 8
  %pn41 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %47, i32 0, i32 0
  %48 = load %struct.PNode*, %struct.PNode** %pn41, align 8
  %call42 = call i32 @check_assoc_priority(%struct.PNode* %42, %struct.PNode* %43, %struct.PNode* %48)
  store i32 %call42, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.27
  %49 = load i32, i32* %i, align 4
  %add43 = add nsw i32 %49, 1
  %idxprom44 = sext i32 %add43 to i64
  %50 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v45 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %50, i32 0, i32 2
  %51 = load %struct.ZNode**, %struct.ZNode*** %v45, align 8
  %arrayidx46 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %51, i64 %idxprom44
  %52 = load %struct.ZNode*, %struct.ZNode** %arrayidx46, align 8
  store %struct.ZNode* %52, %struct.ZNode** %z, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.71, %if.else
  %53 = load i32, i32* %k, align 4
  %54 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %54, i32 0, i32 1
  %n47 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %55 = load i32, i32* %n47, align 4
  %cmp48 = icmp ult i32 %53, %55
  br i1 %cmp48, label %for.body, label %for.end.73

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc, %for.body
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %k, align 4
  %idxprom50 = sext i32 %57 to i64
  %58 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns51 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %58, i32 0, i32 1
  %v52 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns51, i32 0, i32 2
  %59 = load %struct.SNode**, %struct.SNode*** %v52, align 8
  %arrayidx53 = getelementptr inbounds %struct.SNode*, %struct.SNode** %59, i64 %idxprom50
  %60 = load %struct.SNode*, %struct.SNode** %arrayidx53, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %60, i32 0, i32 6
  %n54 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %61 = load i32, i32* %n54, align 4
  %cmp55 = icmp ult i32 %56, %61
  br i1 %cmp55, label %for.body.56, label %for.end

for.body.56:                                      ; preds = %for.cond.49
  store i32 1, i32* %one, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %62 to i64
  %63 = load i32, i32* %k, align 4
  %idxprom58 = sext i32 %63 to i64
  %64 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns59 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %64, i32 0, i32 1
  %v60 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns59, i32 0, i32 2
  %65 = load %struct.SNode**, %struct.SNode*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.SNode*, %struct.SNode** %65, i64 %idxprom58
  %66 = load %struct.SNode*, %struct.SNode** %arrayidx61, align 8
  %zns62 = getelementptr inbounds %struct.SNode, %struct.SNode* %66, i32 0, i32 6
  %v63 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns62, i32 0, i32 2
  %67 = load %struct.ZNode**, %struct.ZNode*** %v63, align 8
  %arrayidx64 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %67, i64 %idxprom57
  %68 = load %struct.ZNode*, %struct.ZNode** %arrayidx64, align 8
  store %struct.ZNode* %68, %struct.ZNode** %zz, align 8
  %69 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %tobool65 = icmp ne %struct.ZNode* %69, null
  br i1 %tobool65, label %land.lhs.true, label %if.end.70

land.lhs.true:                                    ; preds = %for.body.56
  %70 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %71 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %72 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %pn66 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %72, i32 0, i32 0
  %73 = load %struct.PNode*, %struct.PNode** %pn66, align 8
  %call67 = call i32 @check_assoc_priority(%struct.PNode* %70, %struct.PNode* %71, %struct.PNode* %73)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true, %for.body.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %74 = load i32, i32* %j, align 4
  %inc = add nsw i32 %74, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.49

for.end:                                          ; preds = %for.cond.49
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.end
  %75 = load i32, i32* %k, align 4
  %inc72 = add nsw i32 %75, 1
  store i32 %inc72, i32* %k, align 4
  br label %for.cond

for.end.73:                                       ; preds = %for.cond
  %76 = load i32, i32* %one, align 4
  %tobool74 = icmp ne i32 %76, 0
  br i1 %tobool74, label %if.end.77, label %if.then.75

if.then.75:                                       ; preds = %for.end.73
  %77 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %78 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  %call76 = call i32 @check_assoc_priority(%struct.PNode* %77, %struct.PNode* %78, %struct.PNode* null)
  store i32 %call76, i32* %retval
  br label %return

if.end.77:                                        ; preds = %for.end.73
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77
  br label %if.end.150

if.else.79:                                       ; preds = %if.end.23
  %79 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %79 to i64
  %80 = load %struct.VecZNode*, %struct.VecZNode** %path.addr, align 8
  %v81 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %80, i32 0, i32 2
  %81 = load %struct.ZNode**, %struct.ZNode*** %v81, align 8
  %arrayidx82 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %81, i64 %idxprom80
  %82 = load %struct.ZNode*, %struct.ZNode** %arrayidx82, align 8
  store %struct.ZNode* %82, %struct.ZNode** %z, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.147, %if.else.79
  %83 = load i32, i32* %k, align 4
  %84 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns84 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %84, i32 0, i32 1
  %n85 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns84, i32 0, i32 0
  %85 = load i32, i32* %n85, align 4
  %cmp86 = icmp ult i32 %83, %85
  br i1 %cmp86, label %for.body.87, label %for.end.149

for.body.87:                                      ; preds = %for.cond.83
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.144, %for.body.87
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* %k, align 4
  %idxprom89 = sext i32 %87 to i64
  %88 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns90 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %88, i32 0, i32 1
  %v91 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns90, i32 0, i32 2
  %89 = load %struct.SNode**, %struct.SNode*** %v91, align 8
  %arrayidx92 = getelementptr inbounds %struct.SNode*, %struct.SNode** %89, i64 %idxprom89
  %90 = load %struct.SNode*, %struct.SNode** %arrayidx92, align 8
  %zns93 = getelementptr inbounds %struct.SNode, %struct.SNode* %90, i32 0, i32 6
  %n94 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns93, i32 0, i32 0
  %91 = load i32, i32* %n94, align 4
  %cmp95 = icmp ult i32 %86, %91
  br i1 %cmp95, label %for.body.96, label %for.end.146

for.body.96:                                      ; preds = %for.cond.88
  %92 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %92 to i64
  %93 = load i32, i32* %k, align 4
  %idxprom98 = sext i32 %93 to i64
  %94 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns99 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %94, i32 0, i32 1
  %v100 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns99, i32 0, i32 2
  %95 = load %struct.SNode**, %struct.SNode*** %v100, align 8
  %arrayidx101 = getelementptr inbounds %struct.SNode*, %struct.SNode** %95, i64 %idxprom98
  %96 = load %struct.SNode*, %struct.SNode** %arrayidx101, align 8
  %zns102 = getelementptr inbounds %struct.SNode, %struct.SNode* %96, i32 0, i32 6
  %v103 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns102, i32 0, i32 2
  %97 = load %struct.ZNode**, %struct.ZNode*** %v103, align 8
  %arrayidx104 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %97, i64 %idxprom97
  %98 = load %struct.ZNode*, %struct.ZNode** %arrayidx104, align 8
  store %struct.ZNode* %98, %struct.ZNode** %zz, align 8
  %99 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %tobool105 = icmp ne %struct.ZNode* %99, null
  br i1 %tobool105, label %if.then.106, label %if.end.143

if.then.106:                                      ; preds = %for.body.96
  store i32 0, i32* %kk, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.140, %if.then.106
  %100 = load i32, i32* %kk, align 4
  %101 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %sns108 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %101, i32 0, i32 1
  %n109 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns108, i32 0, i32 0
  %102 = load i32, i32* %n109, align 4
  %cmp110 = icmp ult i32 %100, %102
  br i1 %cmp110, label %for.body.111, label %for.end.142

for.body.111:                                     ; preds = %for.cond.107
  store i32 0, i32* %jj, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.137, %for.body.111
  %103 = load i32, i32* %jj, align 4
  %104 = load i32, i32* %kk, align 4
  %idxprom113 = sext i32 %104 to i64
  %105 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %sns114 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %105, i32 0, i32 1
  %v115 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns114, i32 0, i32 2
  %106 = load %struct.SNode**, %struct.SNode*** %v115, align 8
  %arrayidx116 = getelementptr inbounds %struct.SNode*, %struct.SNode** %106, i64 %idxprom113
  %107 = load %struct.SNode*, %struct.SNode** %arrayidx116, align 8
  %zns117 = getelementptr inbounds %struct.SNode, %struct.SNode* %107, i32 0, i32 6
  %n118 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns117, i32 0, i32 0
  %108 = load i32, i32* %n118, align 4
  %cmp119 = icmp ult i32 %103, %108
  br i1 %cmp119, label %for.body.120, label %for.end.139

for.body.120:                                     ; preds = %for.cond.112
  store i32 1, i32* %one, align 4
  %109 = load i32, i32* %jj, align 4
  %idxprom121 = sext i32 %109 to i64
  %110 = load i32, i32* %kk, align 4
  %idxprom122 = sext i32 %110 to i64
  %111 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %sns123 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %111, i32 0, i32 1
  %v124 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns123, i32 0, i32 2
  %112 = load %struct.SNode**, %struct.SNode*** %v124, align 8
  %arrayidx125 = getelementptr inbounds %struct.SNode*, %struct.SNode** %112, i64 %idxprom122
  %113 = load %struct.SNode*, %struct.SNode** %arrayidx125, align 8
  %zns126 = getelementptr inbounds %struct.SNode, %struct.SNode* %113, i32 0, i32 6
  %v127 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns126, i32 0, i32 2
  %114 = load %struct.ZNode**, %struct.ZNode*** %v127, align 8
  %arrayidx128 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %114, i64 %idxprom121
  %115 = load %struct.ZNode*, %struct.ZNode** %arrayidx128, align 8
  store %struct.ZNode* %115, %struct.ZNode** %zzz, align 8
  %116 = load %struct.ZNode*, %struct.ZNode** %zzz, align 8
  %tobool129 = icmp ne %struct.ZNode* %116, null
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.136

land.lhs.true.130:                                ; preds = %for.body.120
  %117 = load %struct.PNode*, %struct.PNode** %pn0, align 8
  %118 = load %struct.ZNode*, %struct.ZNode** %zz, align 8
  %pn131 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %118, i32 0, i32 0
  %119 = load %struct.PNode*, %struct.PNode** %pn131, align 8
  %120 = load %struct.ZNode*, %struct.ZNode** %zzz, align 8
  %pn132 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %120, i32 0, i32 0
  %121 = load %struct.PNode*, %struct.PNode** %pn132, align 8
  %call133 = call i32 @check_assoc_priority(%struct.PNode* %117, %struct.PNode* %119, %struct.PNode* %121)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.130
  store i32 0, i32* %retval
  br label %return

if.end.136:                                       ; preds = %land.lhs.true.130, %for.body.120
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %122 = load i32, i32* %jj, align 4
  %inc138 = add nsw i32 %122, 1
  store i32 %inc138, i32* %jj, align 4
  br label %for.cond.112

for.end.139:                                      ; preds = %for.cond.112
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %123 = load i32, i32* %kk, align 4
  %inc141 = add nsw i32 %123, 1
  store i32 %inc141, i32* %kk, align 4
  br label %for.cond.107

for.end.142:                                      ; preds = %for.cond.107
  br label %if.end.143

if.end.143:                                       ; preds = %for.end.142, %for.body.96
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %124 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %124, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.88

for.end.146:                                      ; preds = %for.cond.88
  br label %for.inc.147

for.inc.147:                                      ; preds = %for.end.146
  %125 = load i32, i32* %k, align 4
  %inc148 = add nsw i32 %125, 1
  store i32 %inc148, i32* %k, align 4
  br label %for.cond.83

for.end.149:                                      ; preds = %for.cond.83
  store i32 0, i32* %retval
  br label %return

if.end.150:                                       ; preds = %if.end.78
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.150, %for.end.149, %if.then.135, %if.then.75, %if.then.69, %if.then.36, %if.then.20, %if.then.13, %if.then.5, %if.then
  %126 = load i32, i32* %retval
  ret i32 %126
}

; Function Attrs: nounwind uwtable
define internal void @free_paths(%struct.VecVecZNode* %paths) #0 {
entry:
  %paths.addr = alloca %struct.VecVecZNode*, align 8
  %i = alloca i32, align 4
  store %struct.VecVecZNode* %paths, %struct.VecVecZNode** %paths.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ZNode**, %struct.ZNode*** getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 2), align 8
  %tobool = icmp ne %struct.ZNode** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct.ZNode**, %struct.ZNode*** getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 2), align 8
  %cmp = icmp ne %struct.ZNode** %1, getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 3, i32 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.ZNode**, %struct.ZNode*** getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 2), align 8
  %3 = bitcast %struct.ZNode** %2 to i8*
  call void @free(i8* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 0), align 4
  store %struct.ZNode** null, %struct.ZNode*** getelementptr inbounds (%struct.VecZNode, %struct.VecZNode* @path1, i32 0, i32 2), align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  br label %do.end.2

do.end.2:                                         ; preds = %do.end
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.2
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %5, i32 0, i32 0
  %6 = load i32, i32* %n, align 4
  %cmp3 = icmp ult i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.4

do.body.4:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %8, i32 0, i32 2
  %9 = load %struct.VecZNode**, %struct.VecZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %9, i64 %idxprom
  %10 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx, align 8
  %v5 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %10, i32 0, i32 2
  %11 = load %struct.ZNode**, %struct.ZNode*** %v5, align 8
  %tobool6 = icmp ne %struct.ZNode** %11, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.21

land.lhs.true.7:                                  ; preds = %do.body.4
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v9 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %13, i32 0, i32 2
  %14 = load %struct.VecZNode**, %struct.VecZNode*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %14, i64 %idxprom8
  %15 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx10, align 8
  %v11 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %15, i32 0, i32 2
  %16 = load %struct.ZNode**, %struct.ZNode*** %v11, align 8
  %17 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v13 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %18, i32 0, i32 2
  %19 = load %struct.VecZNode**, %struct.VecZNode*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %19, i64 %idxprom12
  %20 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx14, align 8
  %e = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %20, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e, i32 0, i32 0
  %cmp15 = icmp ne %struct.ZNode** %16, %arraydecay
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %land.lhs.true.7
  %21 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v18 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %22, i32 0, i32 2
  %23 = load %struct.VecZNode**, %struct.VecZNode*** %v18, align 8
  %arrayidx19 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %23, i64 %idxprom17
  %24 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx19, align 8
  %v20 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %24, i32 0, i32 2
  %25 = load %struct.ZNode**, %struct.ZNode*** %v20, align 8
  %26 = bitcast %struct.ZNode** %25 to i8*
  call void @free(i8* %26) #3
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.16, %land.lhs.true.7, %do.body.4
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %27 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %27 to i64
  %28 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v24 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %28, i32 0, i32 2
  %29 = load %struct.VecZNode**, %struct.VecZNode*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %29, i64 %idxprom23
  %30 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx25, align 8
  %n26 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %30, i32 0, i32 0
  store i32 0, i32* %n26, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %31 to i64
  %32 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v28 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %32, i32 0, i32 2
  %33 = load %struct.VecZNode**, %struct.VecZNode*** %v28, align 8
  %arrayidx29 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %33, i64 %idxprom27
  %34 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx29, align 8
  %v30 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %34, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v30, align 8
  br label %do.end.31

do.end.31:                                        ; preds = %do.body.22
  br label %do.end.32

do.end.32:                                        ; preds = %do.end.31
  %35 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %35 to i64
  %36 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v34 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %36, i32 0, i32 2
  %37 = load %struct.VecZNode**, %struct.VecZNode*** %v34, align 8
  %arrayidx35 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %37, i64 %idxprom33
  %38 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx35, align 8
  %39 = bitcast %struct.VecZNode* %38 to i8*
  call void @free(i8* %39) #3
  br label %for.inc

for.inc:                                          ; preds = %do.end.32
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.36

do.body.36:                                       ; preds = %for.end
  %41 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v37 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %41, i32 0, i32 2
  %42 = load %struct.VecZNode**, %struct.VecZNode*** %v37, align 8
  %tobool38 = icmp ne %struct.VecZNode** %42, null
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.46

land.lhs.true.39:                                 ; preds = %do.body.36
  %43 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v40 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %43, i32 0, i32 2
  %44 = load %struct.VecZNode**, %struct.VecZNode*** %v40, align 8
  %45 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %e41 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %45, i32 0, i32 3
  %arraydecay42 = getelementptr inbounds [3 x %struct.VecZNode*], [3 x %struct.VecZNode*]* %e41, i32 0, i32 0
  %cmp43 = icmp ne %struct.VecZNode** %44, %arraydecay42
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %land.lhs.true.39
  %46 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v45 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %46, i32 0, i32 2
  %47 = load %struct.VecZNode**, %struct.VecZNode*** %v45, align 8
  %48 = bitcast %struct.VecZNode** %47 to i8*
  call void @free(i8* %48) #3
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %land.lhs.true.39, %do.body.36
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.46
  %49 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n48 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %49, i32 0, i32 0
  store i32 0, i32* %n48, align 4
  %50 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v49 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %50, i32 0, i32 2
  store %struct.VecZNode** null, %struct.VecZNode*** %v49, align 8
  br label %do.end.50

do.end.50:                                        ; preds = %do.body.47
  br label %do.end.51

do.end.51:                                        ; preds = %do.end.50
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.ZNode* @set_find_znode(%struct.VecZNode* %v, %struct.PNode* %pn) #0 {
entry:
  %retval = alloca %struct.ZNode*, align 8
  %v.addr = alloca %struct.VecZNode*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct.VecZNode* %v, %struct.VecZNode** %v.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n1 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  store i32 %1, i32* %n, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp ule i32 %2, 3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp ult i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v3 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %6, i32 0, i32 2
  %7 = load %struct.ZNode**, %struct.ZNode*** %v3, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %7, i64 %idxprom
  %8 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  %pn4 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %8, i32 0, i32 0
  %9 = load %struct.PNode*, %struct.PNode** %pn4, align 8
  %10 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %cmp5 = icmp eq %struct.PNode* %9, %10
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom7 = zext i32 %11 to i64
  %12 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v8 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %12, i32 0, i32 2
  %13 = load %struct.ZNode**, %struct.ZNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %13, i64 %idxprom7
  %14 = load %struct.ZNode*, %struct.ZNode** %arrayidx9, align 8
  store %struct.ZNode* %14, %struct.ZNode** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %16 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %17 = ptrtoint %struct.PNode* %16 to i32
  %18 = load i32, i32* %n, align 4
  %rem = urem i32 %17, %18
  store i32 %rem, i32* %h, align 4
  %19 = load i32, i32* %h, align 4
  store i32 %19, i32* %i, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.31, %if.end.10
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %n12 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %21, i32 0, i32 0
  %22 = load i32, i32* %n12, align 4
  %cmp13 = icmp ult i32 %20, %22
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.11
  %23 = load i32, i32* %j, align 4
  %cmp14 = icmp ult i32 %23, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.11
  %24 = phi i1 [ false, %for.cond.11 ], [ %cmp14, %land.rhs ]
  br i1 %24, label %for.body.15, label %for.end.34

for.body.15:                                      ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %idxprom16 = zext i32 %25 to i64
  %26 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v17 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %26, i32 0, i32 2
  %27 = load %struct.ZNode**, %struct.ZNode*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %27, i64 %idxprom16
  %28 = load %struct.ZNode*, %struct.ZNode** %arrayidx18, align 8
  %tobool = icmp ne %struct.ZNode* %28, null
  br i1 %tobool, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %for.body.15
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.else:                                          ; preds = %for.body.15
  %29 = load i32, i32* %i, align 4
  %idxprom20 = zext i32 %29 to i64
  %30 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v21 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %30, i32 0, i32 2
  %31 = load %struct.ZNode**, %struct.ZNode*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %31, i64 %idxprom20
  %32 = load %struct.ZNode*, %struct.ZNode** %arrayidx22, align 8
  %pn23 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %32, i32 0, i32 0
  %33 = load %struct.PNode*, %struct.PNode** %pn23, align 8
  %34 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %cmp24 = icmp eq %struct.PNode* %33, %34
  br i1 %cmp24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.else
  %35 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %35 to i64
  %36 = load %struct.VecZNode*, %struct.VecZNode** %v.addr, align 8
  %v27 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %36, i32 0, i32 2
  %37 = load %struct.ZNode**, %struct.ZNode*** %v27, align 8
  %arrayidx28 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %37, i64 %idxprom26
  %38 = load %struct.ZNode*, %struct.ZNode** %arrayidx28, align 8
  store %struct.ZNode* %38, %struct.ZNode** %retval
  br label %return

if.end.29:                                        ; preds = %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %39 = load i32, i32* %i, align 4
  %add = add i32 %39, 1
  %40 = load i32, i32* %n, align 4
  %rem32 = urem i32 %add, %40
  store i32 %rem32, i32* %i, align 4
  %41 = load i32, i32* %j, align 4
  %inc33 = add i32 %41, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.11

for.end.34:                                       ; preds = %land.end
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

return:                                           ; preds = %for.end.34, %if.then.25, %if.then.19, %for.end, %if.then.6
  %42 = load %struct.ZNode*, %struct.ZNode** %retval
  ret %struct.ZNode* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %paths, i32 %n, i32 %parent) #0 {
entry:
  %paths.addr = alloca %struct.VecVecZNode*, align 8
  %n.addr = alloca i32, align 4
  %parent.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %pv = alloca %struct.VecZNode*, align 8
  store %struct.VecVecZNode* %paths, %struct.VecVecZNode** %paths.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %parent, i32* %parent.addr, align 4
  %0 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n1 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n1, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store %struct.VecZNode* @path1, %struct.VecZNode** %pv, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noalias i8* @malloc(i64 40) #3
  %2 = bitcast i8* %call to %struct.VecZNode*
  store %struct.VecZNode* %2, %struct.VecZNode** %pv, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n2 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %3, i32 0, i32 0
  store i32 0, i32* %n2, align 4
  %4 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %4, i32 0, i32 2
  store %struct.ZNode** null, %struct.ZNode*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %5 = load i32, i32* %parent.addr, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then.3, label %if.end.64

if.then.3:                                        ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n.addr, align 4
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.5

do.body.5:                                        ; preds = %for.body
  %8 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v6 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %8, i32 0, i32 2
  %9 = load %struct.ZNode**, %struct.ZNode*** %v6, align 8
  %tobool7 = icmp ne %struct.ZNode** %9, null
  br i1 %tobool7, label %if.else.17, label %if.then.8

if.then.8:                                        ; preds = %do.body.5
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32, i32* %parent.addr, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v10 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %12, i32 0, i32 2
  %13 = load %struct.VecZNode**, %struct.VecZNode*** %v10, align 8
  %arrayidx = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %13, i64 %idxprom9
  %14 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx, align 8
  %v11 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %14, i32 0, i32 2
  %15 = load %struct.ZNode**, %struct.ZNode*** %v11, align 8
  %arrayidx12 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %15, i64 %idxprom
  %16 = load %struct.ZNode*, %struct.ZNode** %arrayidx12, align 8
  %17 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n13 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %17, i32 0, i32 0
  %18 = load i32, i32* %n13, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %n13, align 4
  %idxprom14 = zext i32 %18 to i64
  %19 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %e = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %19, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e, i32 0, i32 0
  %20 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v15 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %20, i32 0, i32 2
  store %struct.ZNode** %arraydecay, %struct.ZNode*** %v15, align 8
  %arrayidx16 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %arraydecay, i64 %idxprom14
  store %struct.ZNode* %16, %struct.ZNode** %arrayidx16, align 8
  br label %do.end.62

if.else.17:                                       ; preds = %do.body.5
  %21 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v18 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %21, i32 0, i32 2
  %22 = load %struct.ZNode**, %struct.ZNode*** %v18, align 8
  %23 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %e19 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %23, i32 0, i32 3
  %arraydecay20 = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e19, i32 0, i32 0
  %cmp21 = icmp eq %struct.ZNode** %22, %arraydecay20
  br i1 %cmp21, label %if.then.22, label %if.else.38

if.then.22:                                       ; preds = %if.else.17
  %24 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n23 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %24, i32 0, i32 0
  %25 = load i32, i32* %n23, align 4
  %cmp24 = icmp ult i32 %25, 3
  br i1 %cmp24, label %if.then.25, label %if.end.37

if.then.25:                                       ; preds = %if.then.22
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load i32, i32* %parent.addr, align 4
  %idxprom27 = sext i32 %27 to i64
  %28 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v28 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %28, i32 0, i32 2
  %29 = load %struct.VecZNode**, %struct.VecZNode*** %v28, align 8
  %arrayidx29 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %29, i64 %idxprom27
  %30 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx29, align 8
  %v30 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %30, i32 0, i32 2
  %31 = load %struct.ZNode**, %struct.ZNode*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %31, i64 %idxprom26
  %32 = load %struct.ZNode*, %struct.ZNode** %arrayidx31, align 8
  %33 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n32 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %33, i32 0, i32 0
  %34 = load i32, i32* %n32, align 4
  %inc33 = add i32 %34, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %34 to i64
  %35 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v35 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %35, i32 0, i32 2
  %36 = load %struct.ZNode**, %struct.ZNode*** %v35, align 8
  %arrayidx36 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %36, i64 %idxprom34
  store %struct.ZNode* %32, %struct.ZNode** %arrayidx36, align 8
  br label %do.end.62

if.end.37:                                        ; preds = %if.then.22
  br label %if.end.54

if.else.38:                                       ; preds = %if.else.17
  %37 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n39 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %37, i32 0, i32 0
  %38 = load i32, i32* %n39, align 4
  %and = and i32 %38, 7
  %tobool40 = icmp ne i32 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %if.else.38
  %39 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %39 to i64
  %40 = load i32, i32* %parent.addr, align 4
  %idxprom43 = sext i32 %40 to i64
  %41 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v44 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %41, i32 0, i32 2
  %42 = load %struct.VecZNode**, %struct.VecZNode*** %v44, align 8
  %arrayidx45 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %42, i64 %idxprom43
  %43 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx45, align 8
  %v46 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %43, i32 0, i32 2
  %44 = load %struct.ZNode**, %struct.ZNode*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %44, i64 %idxprom42
  %45 = load %struct.ZNode*, %struct.ZNode** %arrayidx47, align 8
  %46 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %n48 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %46, i32 0, i32 0
  %47 = load i32, i32* %n48, align 4
  %inc49 = add i32 %47, 1
  store i32 %inc49, i32* %n48, align 4
  %idxprom50 = zext i32 %47 to i64
  %48 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %v51 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %48, i32 0, i32 2
  %49 = load %struct.ZNode**, %struct.ZNode*** %v51, align 8
  %arrayidx52 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %49, i64 %idxprom50
  store %struct.ZNode* %45, %struct.ZNode** %arrayidx52, align 8
  br label %do.end.62

if.end.53:                                        ; preds = %if.else.38
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.37
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54
  %50 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  %51 = bitcast %struct.VecZNode* %50 to i8*
  %52 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %52 to i64
  %53 = load i32, i32* %parent.addr, align 4
  %idxprom57 = sext i32 %53 to i64
  %54 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v58 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %54, i32 0, i32 2
  %55 = load %struct.VecZNode**, %struct.VecZNode*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %55, i64 %idxprom57
  %56 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx59, align 8
  %v60 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %56, i32 0, i32 2
  %57 = load %struct.ZNode**, %struct.ZNode*** %v60, align 8
  %arrayidx61 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %57, i64 %idxprom56
  %58 = load %struct.ZNode*, %struct.ZNode** %arrayidx61, align 8
  %59 = bitcast %struct.ZNode* %58 to i8*
  call void @vec_add_internal(i8* %51, i8* %59)
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.55, %if.then.41, %if.then.25, %if.then.8
  br label %for.inc

for.inc:                                          ; preds = %do.end.62
  %60 = load i32, i32* %i, align 4
  %inc63 = add nsw i32 %60, 1
  store i32 %inc63, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %do.end
  %61 = load %struct.VecZNode*, %struct.VecZNode** %pv, align 8
  ret %struct.VecZNode* %61
}

; Function Attrs: nounwind uwtable
define internal void @build_paths_internal(%struct.ZNode* %z, %struct.VecVecZNode* %paths, i32 %parent, i32 %n, i32 %n_to_go) #0 {
entry:
  %z.addr = alloca %struct.ZNode*, align 8
  %paths.addr = alloca %struct.VecVecZNode*, align 8
  %parent.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %n_to_go.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  store %struct.VecVecZNode* %paths, %struct.VecVecZNode** %paths.addr, align 8
  store i32 %parent, i32* %parent.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 %n_to_go, i32* %n_to_go.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %parent.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %1, i32 0, i32 2
  %2 = load %struct.VecZNode**, %struct.VecZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %2, i64 %idxprom
  %3 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx, align 8
  %v1 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %3, i32 0, i32 2
  %4 = load %struct.ZNode**, %struct.ZNode*** %v1, align 8
  %tobool = icmp ne %struct.ZNode** %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %5 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %6 = load i32, i32* %parent.addr, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v3 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %7, i32 0, i32 2
  %8 = load %struct.VecZNode**, %struct.VecZNode*** %v3, align 8
  %arrayidx4 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %8, i64 %idxprom2
  %9 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx4, align 8
  %n5 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %9, i32 0, i32 0
  %10 = load i32, i32* %n5, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %n5, align 4
  %idxprom6 = zext i32 %10 to i64
  %11 = load i32, i32* %parent.addr, align 4
  %idxprom7 = sext i32 %11 to i64
  %12 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v8 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %12, i32 0, i32 2
  %13 = load %struct.VecZNode**, %struct.VecZNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %13, i64 %idxprom7
  %14 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx9, align 8
  %e = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e, i32 0, i32 0
  %15 = load i32, i32* %parent.addr, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v11 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %16, i32 0, i32 2
  %17 = load %struct.VecZNode**, %struct.VecZNode*** %v11, align 8
  %arrayidx12 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %17, i64 %idxprom10
  %18 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx12, align 8
  %v13 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %18, i32 0, i32 2
  store %struct.ZNode** %arraydecay, %struct.ZNode*** %v13, align 8
  %arrayidx14 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %arraydecay, i64 %idxprom6
  store %struct.ZNode* %5, %struct.ZNode** %arrayidx14, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %19 = load i32, i32* %parent.addr, align 4
  %idxprom15 = sext i32 %19 to i64
  %20 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v16 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %20, i32 0, i32 2
  %21 = load %struct.VecZNode**, %struct.VecZNode*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %21, i64 %idxprom15
  %22 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx17, align 8
  %v18 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %22, i32 0, i32 2
  %23 = load %struct.ZNode**, %struct.ZNode*** %v18, align 8
  %24 = load i32, i32* %parent.addr, align 4
  %idxprom19 = sext i32 %24 to i64
  %25 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v20 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %25, i32 0, i32 2
  %26 = load %struct.VecZNode**, %struct.VecZNode*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %26, i64 %idxprom19
  %27 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx21, align 8
  %e22 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %27, i32 0, i32 3
  %arraydecay23 = getelementptr inbounds [3 x %struct.ZNode*], [3 x %struct.ZNode*]* %e22, i32 0, i32 0
  %cmp = icmp eq %struct.ZNode** %23, %arraydecay23
  br i1 %cmp, label %if.then.24, label %if.else.42

if.then.24:                                       ; preds = %if.else
  %28 = load i32, i32* %parent.addr, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v26 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %29, i32 0, i32 2
  %30 = load %struct.VecZNode**, %struct.VecZNode*** %v26, align 8
  %arrayidx27 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %30, i64 %idxprom25
  %31 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx27, align 8
  %n28 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %31, i32 0, i32 0
  %32 = load i32, i32* %n28, align 4
  %cmp29 = icmp ult i32 %32, 3
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.24
  %33 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %34 = load i32, i32* %parent.addr, align 4
  %idxprom31 = sext i32 %34 to i64
  %35 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v32 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %35, i32 0, i32 2
  %36 = load %struct.VecZNode**, %struct.VecZNode*** %v32, align 8
  %arrayidx33 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %36, i64 %idxprom31
  %37 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx33, align 8
  %n34 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %37, i32 0, i32 0
  %38 = load i32, i32* %n34, align 4
  %inc35 = add i32 %38, 1
  store i32 %inc35, i32* %n34, align 4
  %idxprom36 = zext i32 %38 to i64
  %39 = load i32, i32* %parent.addr, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v38 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %40, i32 0, i32 2
  %41 = load %struct.VecZNode**, %struct.VecZNode*** %v38, align 8
  %arrayidx39 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %41, i64 %idxprom37
  %42 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx39, align 8
  %v40 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %42, i32 0, i32 2
  %43 = load %struct.ZNode**, %struct.ZNode*** %v40, align 8
  %arrayidx41 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %43, i64 %idxprom36
  store %struct.ZNode* %33, %struct.ZNode** %arrayidx41, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.24
  br label %if.end.61

if.else.42:                                       ; preds = %if.else
  %44 = load i32, i32* %parent.addr, align 4
  %idxprom43 = sext i32 %44 to i64
  %45 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v44 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %45, i32 0, i32 2
  %46 = load %struct.VecZNode**, %struct.VecZNode*** %v44, align 8
  %arrayidx45 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %46, i64 %idxprom43
  %47 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx45, align 8
  %n46 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %47, i32 0, i32 0
  %48 = load i32, i32* %n46, align 4
  %and = and i32 %48, 7
  %tobool47 = icmp ne i32 %and, 0
  br i1 %tobool47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %if.else.42
  %49 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %50 = load i32, i32* %parent.addr, align 4
  %idxprom49 = sext i32 %50 to i64
  %51 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v50 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %51, i32 0, i32 2
  %52 = load %struct.VecZNode**, %struct.VecZNode*** %v50, align 8
  %arrayidx51 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %52, i64 %idxprom49
  %53 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx51, align 8
  %n52 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %53, i32 0, i32 0
  %54 = load i32, i32* %n52, align 4
  %inc53 = add i32 %54, 1
  store i32 %inc53, i32* %n52, align 4
  %idxprom54 = zext i32 %54 to i64
  %55 = load i32, i32* %parent.addr, align 4
  %idxprom55 = sext i32 %55 to i64
  %56 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v56 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %56, i32 0, i32 2
  %57 = load %struct.VecZNode**, %struct.VecZNode*** %v56, align 8
  %arrayidx57 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %57, i64 %idxprom55
  %58 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx57, align 8
  %v58 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %58, i32 0, i32 2
  %59 = load %struct.ZNode**, %struct.ZNode*** %v58, align 8
  %arrayidx59 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %59, i64 %idxprom54
  store %struct.ZNode* %49, %struct.ZNode** %arrayidx59, align 8
  br label %do.end

if.end.60:                                        ; preds = %if.else.42
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  %60 = load i32, i32* %parent.addr, align 4
  %idxprom63 = sext i32 %60 to i64
  %61 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v64 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %61, i32 0, i32 2
  %62 = load %struct.VecZNode**, %struct.VecZNode*** %v64, align 8
  %arrayidx65 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %62, i64 %idxprom63
  %63 = load %struct.VecZNode*, %struct.VecZNode** %arrayidx65, align 8
  %64 = bitcast %struct.VecZNode* %63 to i8*
  %65 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %66 = bitcast %struct.ZNode* %65 to i8*
  call void @vec_add_internal(i8* %64, i8* %66)
  br label %do.end

do.end:                                           ; preds = %if.end.62, %if.then.48, %if.then.30, %if.then
  %67 = load i32, i32* %n_to_go.addr, align 4
  %cmp66 = icmp sle i32 %67, 1
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %do.end
  br label %for.end.158

if.end.68:                                        ; preds = %do.end
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.156, %if.end.68
  %68 = load i32, i32* %k, align 4
  %69 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %69, i32 0, i32 1
  %n69 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %70 = load i32, i32* %n69, align 4
  %cmp70 = icmp ult i32 %68, %70
  br i1 %cmp70, label %for.body, label %for.end.158

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 0, i32* %l, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc, %for.body
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %72 to i64
  %73 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns73 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %73, i32 0, i32 1
  %v74 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns73, i32 0, i32 2
  %74 = load %struct.SNode**, %struct.SNode*** %v74, align 8
  %arrayidx75 = getelementptr inbounds %struct.SNode*, %struct.SNode** %74, i64 %idxprom72
  %75 = load %struct.SNode*, %struct.SNode** %arrayidx75, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %75, i32 0, i32 6
  %n76 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %76 = load i32, i32* %n76, align 4
  %cmp77 = icmp ult i32 %71, %76
  br i1 %cmp77, label %for.body.78, label %for.end

for.body.78:                                      ; preds = %for.cond.71
  %77 = load i32, i32* %j, align 4
  %idxprom79 = sext i32 %77 to i64
  %78 = load i32, i32* %k, align 4
  %idxprom80 = sext i32 %78 to i64
  %79 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns81 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %79, i32 0, i32 1
  %v82 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns81, i32 0, i32 2
  %80 = load %struct.SNode**, %struct.SNode*** %v82, align 8
  %arrayidx83 = getelementptr inbounds %struct.SNode*, %struct.SNode** %80, i64 %idxprom80
  %81 = load %struct.SNode*, %struct.SNode** %arrayidx83, align 8
  %zns84 = getelementptr inbounds %struct.SNode, %struct.SNode* %81, i32 0, i32 6
  %v85 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns84, i32 0, i32 2
  %82 = load %struct.ZNode**, %struct.ZNode*** %v85, align 8
  %arrayidx86 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %82, i64 %idxprom79
  %83 = load %struct.ZNode*, %struct.ZNode** %arrayidx86, align 8
  %tobool87 = icmp ne %struct.ZNode* %83, null
  br i1 %tobool87, label %if.then.88, label %if.end.154

if.then.88:                                       ; preds = %for.body.78
  %84 = load i32, i32* %k, align 4
  %85 = load i32, i32* %l, align 4
  %add = add nsw i32 %84, %85
  %tobool89 = icmp ne i32 %add, 0
  br i1 %tobool89, label %if.then.90, label %if.end.143

if.then.90:                                       ; preds = %if.then.88
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %86 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v92 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %86, i32 0, i32 2
  %87 = load %struct.VecZNode**, %struct.VecZNode*** %v92, align 8
  %tobool93 = icmp ne %struct.VecZNode** %87, null
  br i1 %tobool93, label %if.else.103, label %if.then.94

if.then.94:                                       ; preds = %do.body.91
  %88 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %89 = load i32, i32* %n.addr, align 4
  %90 = load i32, i32* %n_to_go.addr, align 4
  %sub = sub nsw i32 %90, 1
  %sub95 = sub nsw i32 %89, %sub
  %91 = load i32, i32* %parent.addr, align 4
  %call = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %88, i32 %sub95, i32 %91)
  %92 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n96 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %92, i32 0, i32 0
  %93 = load i32, i32* %n96, align 4
  %inc97 = add i32 %93, 1
  store i32 %inc97, i32* %n96, align 4
  %idxprom98 = zext i32 %93 to i64
  %94 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %e99 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %94, i32 0, i32 3
  %arraydecay100 = getelementptr inbounds [3 x %struct.VecZNode*], [3 x %struct.VecZNode*]* %e99, i32 0, i32 0
  %95 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v101 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %95, i32 0, i32 2
  store %struct.VecZNode** %arraydecay100, %struct.VecZNode*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %arraydecay100, i64 %idxprom98
  store %struct.VecZNode* %call, %struct.VecZNode** %arrayidx102, align 8
  br label %do.end.140

if.else.103:                                      ; preds = %do.body.91
  %96 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v104 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %96, i32 0, i32 2
  %97 = load %struct.VecZNode**, %struct.VecZNode*** %v104, align 8
  %98 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %e105 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %98, i32 0, i32 3
  %arraydecay106 = getelementptr inbounds [3 x %struct.VecZNode*], [3 x %struct.VecZNode*]* %e105, i32 0, i32 0
  %cmp107 = icmp eq %struct.VecZNode** %97, %arraydecay106
  br i1 %cmp107, label %if.then.108, label %if.else.121

if.then.108:                                      ; preds = %if.else.103
  %99 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n109 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %99, i32 0, i32 0
  %100 = load i32, i32* %n109, align 4
  %cmp110 = icmp ult i32 %100, 3
  br i1 %cmp110, label %if.then.111, label %if.end.120

if.then.111:                                      ; preds = %if.then.108
  %101 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %102 = load i32, i32* %n.addr, align 4
  %103 = load i32, i32* %n_to_go.addr, align 4
  %sub112 = sub nsw i32 %103, 1
  %sub113 = sub nsw i32 %102, %sub112
  %104 = load i32, i32* %parent.addr, align 4
  %call114 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %101, i32 %sub113, i32 %104)
  %105 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n115 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %105, i32 0, i32 0
  %106 = load i32, i32* %n115, align 4
  %inc116 = add i32 %106, 1
  store i32 %inc116, i32* %n115, align 4
  %idxprom117 = zext i32 %106 to i64
  %107 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v118 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %107, i32 0, i32 2
  %108 = load %struct.VecZNode**, %struct.VecZNode*** %v118, align 8
  %arrayidx119 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %108, i64 %idxprom117
  store %struct.VecZNode* %call114, %struct.VecZNode** %arrayidx119, align 8
  br label %do.end.140

if.end.120:                                       ; preds = %if.then.108
  br label %if.end.135

if.else.121:                                      ; preds = %if.else.103
  %109 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n122 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %109, i32 0, i32 0
  %110 = load i32, i32* %n122, align 4
  %and123 = and i32 %110, 7
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.134

if.then.125:                                      ; preds = %if.else.121
  %111 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %112 = load i32, i32* %n.addr, align 4
  %113 = load i32, i32* %n_to_go.addr, align 4
  %sub126 = sub nsw i32 %113, 1
  %sub127 = sub nsw i32 %112, %sub126
  %114 = load i32, i32* %parent.addr, align 4
  %call128 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %111, i32 %sub127, i32 %114)
  %115 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n129 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %115, i32 0, i32 0
  %116 = load i32, i32* %n129, align 4
  %inc130 = add i32 %116, 1
  store i32 %inc130, i32* %n129, align 4
  %idxprom131 = zext i32 %116 to i64
  %117 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %v132 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %117, i32 0, i32 2
  %118 = load %struct.VecZNode**, %struct.VecZNode*** %v132, align 8
  %arrayidx133 = getelementptr inbounds %struct.VecZNode*, %struct.VecZNode** %118, i64 %idxprom131
  store %struct.VecZNode* %call128, %struct.VecZNode** %arrayidx133, align 8
  br label %do.end.140

if.end.134:                                       ; preds = %if.else.121
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.120
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135
  %119 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %120 = bitcast %struct.VecVecZNode* %119 to i8*
  %121 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %122 = load i32, i32* %n.addr, align 4
  %123 = load i32, i32* %n_to_go.addr, align 4
  %sub137 = sub nsw i32 %123, 1
  %sub138 = sub nsw i32 %122, %sub137
  %124 = load i32, i32* %parent.addr, align 4
  %call139 = call %struct.VecZNode* @new_VecZNode(%struct.VecVecZNode* %121, i32 %sub138, i32 %124)
  %125 = bitcast %struct.VecZNode* %call139 to i8*
  call void @vec_add_internal(i8* %120, i8* %125)
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.136, %if.then.125, %if.then.111, %if.then.94
  %126 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %n141 = getelementptr inbounds %struct.VecVecZNode, %struct.VecVecZNode* %126, i32 0, i32 0
  %127 = load i32, i32* %n141, align 4
  %sub142 = sub i32 %127, 1
  store i32 %sub142, i32* %parent.addr, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.140, %if.then.88
  %128 = load i32, i32* %j, align 4
  %idxprom144 = sext i32 %128 to i64
  %129 = load i32, i32* %k, align 4
  %idxprom145 = sext i32 %129 to i64
  %130 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns146 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %130, i32 0, i32 1
  %v147 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns146, i32 0, i32 2
  %131 = load %struct.SNode**, %struct.SNode*** %v147, align 8
  %arrayidx148 = getelementptr inbounds %struct.SNode*, %struct.SNode** %131, i64 %idxprom145
  %132 = load %struct.SNode*, %struct.SNode** %arrayidx148, align 8
  %zns149 = getelementptr inbounds %struct.SNode, %struct.SNode* %132, i32 0, i32 6
  %v150 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns149, i32 0, i32 2
  %133 = load %struct.ZNode**, %struct.ZNode*** %v150, align 8
  %arrayidx151 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %133, i64 %idxprom144
  %134 = load %struct.ZNode*, %struct.ZNode** %arrayidx151, align 8
  %135 = load %struct.VecVecZNode*, %struct.VecVecZNode** %paths.addr, align 8
  %136 = load i32, i32* %parent.addr, align 4
  %137 = load i32, i32* %n.addr, align 4
  %138 = load i32, i32* %n_to_go.addr, align 4
  %sub152 = sub nsw i32 %138, 1
  call void @build_paths_internal(%struct.ZNode* %134, %struct.VecVecZNode* %135, i32 %136, i32 %137, i32 %sub152)
  %139 = load i32, i32* %l, align 4
  %inc153 = add nsw i32 %139, 1
  store i32 %inc153, i32* %l, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.143, %for.body.78
  br label %for.inc

for.inc:                                          ; preds = %if.end.154
  %140 = load i32, i32* %j, align 4
  %inc155 = add nsw i32 %140, 1
  store i32 %inc155, i32* %j, align 4
  br label %for.cond.71

for.end:                                          ; preds = %for.cond.71
  br label %for.inc.156

for.inc.156:                                      ; preds = %for.end
  %141 = load i32, i32* %k, align 4
  %inc157 = add nsw i32 %141, 1
  store i32 %inc157, i32* %k, align 4
  br label %for.cond

for.end.158:                                      ; preds = %if.then.67, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_assoc_priority(%struct.PNode* %pn0, %struct.PNode* %pn1, %struct.PNode* %pn2) #0 {
entry:
  %retval = alloca i32, align 4
  %pn0.addr = alloca %struct.PNode*, align 8
  %pn1.addr = alloca %struct.PNode*, align 8
  %pn2.addr = alloca %struct.PNode*, align 8
  store %struct.PNode* %pn0, %struct.PNode** %pn0.addr, align 8
  store %struct.PNode* %pn1, %struct.PNode** %pn1.addr, align 8
  store %struct.PNode* %pn2, %struct.PNode** %pn2.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 2
  %1 = load i32, i32* %op_assoc, align 4
  %and = and i32 %1, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_assoc1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 2
  %3 = load i32, i32* %op_assoc1, align 4
  %and2 = and i32 %3, 8
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %4 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_assoc4 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 2
  %5 = load i32, i32* %op_assoc4, align 4
  %and5 = and i32 %5, 16
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.11, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.then
  %6 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_assoc8 = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 2
  %7 = load i32, i32* %op_assoc8, align 4
  %and9 = and i32 %7, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.19

if.then.11:                                       ; preds = %lor.lhs.false.7, %if.then
  %8 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %8, i32 0, i32 0
  %9 = load i32, i32* %assoc, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.then.11
  %10 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_priority = getelementptr inbounds %struct.PNode, %struct.PNode* %10, i32 0, i32 3
  %11 = load i32, i32* %op_priority, align 4
  %12 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_assoc14 = getelementptr inbounds %struct.PNode, %struct.PNode* %12, i32 0, i32 2
  %13 = load i32, i32* %op_assoc14, align 4
  %14 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %priority = getelementptr inbounds %struct.PNode, %struct.PNode* %14, i32 0, i32 1
  %15 = load i32, i32* %priority, align 4
  %16 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %assoc15 = getelementptr inbounds %struct.PNode, %struct.PNode* %16, i32 0, i32 0
  %17 = load i32, i32* %assoc15, align 4
  %call = call i32 @check_child(i32 %11, i32 %13, i32 %15, i32 %17, i32 0, i32 1)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %if.then.13
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %lor.lhs.false.7
  br label %if.end.58

if.else:                                          ; preds = %lor.lhs.false, %entry
  %18 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_assoc20 = getelementptr inbounds %struct.PNode, %struct.PNode* %18, i32 0, i32 2
  %19 = load i32, i32* %op_assoc20, align 4
  %tobool21 = icmp ne i32 %19, 0
  br i1 %tobool21, label %if.then.22, label %if.else.31

if.then.22:                                       ; preds = %if.else
  %20 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_priority23 = getelementptr inbounds %struct.PNode, %struct.PNode* %20, i32 0, i32 3
  %21 = load i32, i32* %op_priority23, align 4
  %22 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %op_assoc24 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 2
  %23 = load i32, i32* %op_assoc24, align 4
  %24 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_priority25 = getelementptr inbounds %struct.PNode, %struct.PNode* %24, i32 0, i32 3
  %25 = load i32, i32* %op_priority25, align 4
  %26 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_assoc26 = getelementptr inbounds %struct.PNode, %struct.PNode* %26, i32 0, i32 2
  %27 = load i32, i32* %op_assoc26, align 4
  %call27 = call i32 @check_child(i32 %21, i32 %23, i32 %25, i32 %27, i32 0, i32 1)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.22
  store i32 -1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.then.22
  br label %if.end.45

if.else.31:                                       ; preds = %if.else
  %28 = load %struct.PNode*, %struct.PNode** %pn2.addr, align 8
  %tobool32 = icmp ne %struct.PNode* %28, null
  br i1 %tobool32, label %if.then.33, label %if.end.44

if.then.33:                                       ; preds = %if.else.31
  %29 = load %struct.PNode*, %struct.PNode** %pn2.addr, align 8
  %op_assoc34 = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 2
  %30 = load i32, i32* %op_assoc34, align 4
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.then.33
  %31 = load %struct.PNode*, %struct.PNode** %pn2.addr, align 8
  %op_priority36 = getelementptr inbounds %struct.PNode, %struct.PNode* %31, i32 0, i32 3
  %32 = load i32, i32* %op_priority36, align 4
  %33 = load %struct.PNode*, %struct.PNode** %pn2.addr, align 8
  %op_assoc37 = getelementptr inbounds %struct.PNode, %struct.PNode* %33, i32 0, i32 2
  %34 = load i32, i32* %op_assoc37, align 4
  %35 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_priority38 = getelementptr inbounds %struct.PNode, %struct.PNode* %35, i32 0, i32 3
  %36 = load i32, i32* %op_priority38, align 4
  %37 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_assoc39 = getelementptr inbounds %struct.PNode, %struct.PNode* %37, i32 0, i32 2
  %38 = load i32, i32* %op_assoc39, align 4
  %call40 = call i32 @check_child(i32 %32, i32 %34, i32 %36, i32 %38, i32 0, i32 1)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.43, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true
  store i32 -1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true, %if.then.33
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.else.31
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.30
  %39 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %assoc46 = getelementptr inbounds %struct.PNode, %struct.PNode* %39, i32 0, i32 0
  %40 = load i32, i32* %assoc46, align 4
  %tobool47 = icmp ne i32 %40, 0
  br i1 %tobool47, label %if.then.48, label %if.end.57

if.then.48:                                       ; preds = %if.end.45
  %41 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_priority49 = getelementptr inbounds %struct.PNode, %struct.PNode* %41, i32 0, i32 3
  %42 = load i32, i32* %op_priority49, align 4
  %43 = load %struct.PNode*, %struct.PNode** %pn0.addr, align 8
  %op_assoc50 = getelementptr inbounds %struct.PNode, %struct.PNode* %43, i32 0, i32 2
  %44 = load i32, i32* %op_assoc50, align 4
  %45 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %priority51 = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 1
  %46 = load i32, i32* %priority51, align 4
  %47 = load %struct.PNode*, %struct.PNode** %pn1.addr, align 8
  %assoc52 = getelementptr inbounds %struct.PNode, %struct.PNode* %47, i32 0, i32 0
  %48 = load i32, i32* %assoc52, align 4
  %call53 = call i32 @check_child(i32 %42, i32 %44, i32 %46, i32 %48, i32 1, i32 0)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.end.56, label %if.then.55

if.then.55:                                       ; preds = %if.then.48
  store i32 -1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.48
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.45
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.end.19
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.55, %if.then.42, %if.then.29, %if.then.17
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define internal i8* @find_substr(i8* %str, i8* %s) #0 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  %0 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i8*, i8** %s.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp ne i32 %conv3, %conv4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %str.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr, i8** %str.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv7 = sext i8 %11 to i32
  %12 = load i8*, i8** %s.addr, align 8
  %13 = load i8, i8* %12, align 1
  %conv8 = sext i8 %13 to i32
  %cmp9 = icmp eq i32 %conv7, %conv8
  br i1 %cmp9, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %while.end
  %14 = load i8*, i8** %str.addr, align 8
  %add.ptr = getelementptr inbounds i8, i8* %14, i64 1
  store i8* %add.ptr, i8** %retval
  br label %return

if.end:                                           ; preds = %while.end
  br label %if.end.23

if.else:                                          ; preds = %entry
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end.20, %if.else
  %15 = load i8*, i8** %str.addr, align 8
  %16 = load i8, i8* %15, align 1
  %tobool13 = icmp ne i8 %16, 0
  br i1 %tobool13, label %while.body.14, label %while.end.22

while.body.14:                                    ; preds = %while.cond.12
  %17 = load i8*, i8** %s.addr, align 8
  %18 = load i8*, i8** %str.addr, align 8
  %19 = load i32, i32* %len, align 4
  %conv15 = sext i32 %19 to i64
  %call16 = call i32 @strncmp(i8* %17, i8* %18, i64 %conv15) #6
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %while.body.14
  %20 = load i8*, i8** %str.addr, align 8
  %21 = load i32, i32* %len, align 4
  %idx.ext = sext i32 %21 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %20, i64 %idx.ext
  store i8* %add.ptr19, i8** %retval
  br label %return

if.end.20:                                        ; preds = %while.body.14
  %22 = load i8*, i8** %str.addr, align 8
  %incdec.ptr21 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr21, i8** %str.addr, align 8
  br label %while.cond.12

while.end.22:                                     ; preds = %while.cond.12
  br label %if.end.23

if.end.23:                                        ; preds = %while.end.22, %if.end
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.18, %if.then.11
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal void @update_line(i8* %s, i8* %e, i32* %line) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %e.addr = alloca i8*, align 8
  %line.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  store i8* %e, i8** %e.addr, align 8
  store i32* %line, i32** %line.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %e.addr, align 8
  %cmp = icmp ult i8* %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %s.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32*, i32** %line.addr, align 8
  %5 = load i32, i32* %4, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i8*, i8** %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1
  store i8* %incdec.ptr, i8** %s.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct.ZNode* @binary_op_ZNode(%struct.SNode* %sn) #0 {
entry:
  %retval = alloca %struct.ZNode*, align 8
  %sn.addr = alloca %struct.SNode*, align 8
  %z = alloca %struct.ZNode*, align 8
  store %struct.SNode* %sn, %struct.SNode** %sn.addr, align 8
  %0 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns = getelementptr inbounds %struct.SNode, %struct.SNode* %0, i32 0, i32 6
  %n = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns1 = getelementptr inbounds %struct.SNode, %struct.SNode* %2, i32 0, i32 6
  %v = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns1, i32 0, i32 2
  %3 = load %struct.ZNode**, %struct.ZNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %3, i64 0
  %4 = load %struct.ZNode*, %struct.ZNode** %arrayidx, align 8
  store %struct.ZNode* %4, %struct.ZNode** %z, align 8
  %5 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %5, i32 0, i32 0
  %6 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %op_assoc = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 2
  %7 = load i32, i32* %op_assoc, align 4
  %cmp2 = icmp eq i32 %7, 10
  br i1 %cmp2, label %if.then.3, label %if.end.19

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %8, i32 0, i32 1
  %n4 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %9 = load i32, i32* %n4, align 4
  %cmp5 = icmp ne i32 %9, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %10 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %sns8 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %10, i32 0, i32 1
  %v9 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns8, i32 0, i32 2
  %11 = load %struct.SNode**, %struct.SNode*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.SNode*, %struct.SNode** %11, i64 0
  %12 = load %struct.SNode*, %struct.SNode** %arrayidx10, align 8
  store %struct.SNode* %12, %struct.SNode** %sn.addr, align 8
  %13 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns11 = getelementptr inbounds %struct.SNode, %struct.SNode* %13, i32 0, i32 6
  %n12 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns11, i32 0, i32 0
  %14 = load i32, i32* %n12, align 4
  %cmp13 = icmp ne i32 %14, 1
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.7
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.7
  %15 = load %struct.SNode*, %struct.SNode** %sn.addr, align 8
  %zns16 = getelementptr inbounds %struct.SNode, %struct.SNode* %15, i32 0, i32 6
  %v17 = getelementptr inbounds %struct.VecZNode, %struct.VecZNode* %zns16, i32 0, i32 2
  %16 = load %struct.ZNode**, %struct.ZNode*** %v17, align 8
  %arrayidx18 = getelementptr inbounds %struct.ZNode*, %struct.ZNode** %16, i64 0
  %17 = load %struct.ZNode*, %struct.ZNode** %arrayidx18, align 8
  store %struct.ZNode* %17, %struct.ZNode** %z, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.15, %if.end
  %18 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  %pn20 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %18, i32 0, i32 0
  %19 = load %struct.PNode*, %struct.PNode** %pn20, align 8
  %op_assoc21 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 2
  %20 = load i32, i32* %op_assoc21, align 4
  %and = and i32 %20, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %if.end.19
  store %struct.ZNode* null, %struct.ZNode** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %21 = load %struct.ZNode*, %struct.ZNode** %z, align 8
  store %struct.ZNode* %21, %struct.ZNode** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.14, %if.then.6, %if.then
  %22 = load %struct.ZNode*, %struct.ZNode** %retval
  ret %struct.ZNode* %22
}

; Function Attrs: nounwind uwtable
define internal i32 @VecSNode_equal(%struct.VecSNode* %vsn1, %struct.VecSNode* %vsn2) #0 {
entry:
  %retval = alloca i32, align 4
  %vsn1.addr = alloca %struct.VecSNode*, align 8
  %vsn2.addr = alloca %struct.VecSNode*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.VecSNode* %vsn1, %struct.VecSNode** %vsn1.addr, align 8
  store %struct.VecSNode* %vsn2, %struct.VecSNode** %vsn2.addr, align 8
  %0 = load %struct.VecSNode*, %struct.VecSNode** %vsn1.addr, align 8
  %n = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %0, i32 0, i32 0
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.VecSNode*, %struct.VecSNode** %vsn2.addr, align 8
  %n1 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %2, i32 0, i32 0
  %3 = load i32, i32* %n1, align 4
  %cmp = icmp ne i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.VecSNode*, %struct.VecSNode** %vsn1.addr, align 8
  %n2 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %5, i32 0, i32 0
  %6 = load i32, i32* %n2, align 4
  %cmp3 = icmp ult i32 %4, %6
  br i1 %cmp3, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4
  %8 = load %struct.VecSNode*, %struct.VecSNode** %vsn2.addr, align 8
  %n5 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %8, i32 0, i32 0
  %9 = load i32, i32* %n5, align 4
  %cmp6 = icmp ult i32 %7, %9
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.4
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.VecSNode*, %struct.VecSNode** %vsn1.addr, align 8
  %v = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %11, i32 0, i32 2
  %12 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %12, i64 %idxprom
  %13 = load %struct.SNode*, %struct.SNode** %arrayidx, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %14 to i64
  %15 = load %struct.VecSNode*, %struct.VecSNode** %vsn2.addr, align 8
  %v9 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %15, i32 0, i32 2
  %16 = load %struct.SNode**, %struct.SNode*** %v9, align 8
  %arrayidx10 = getelementptr inbounds %struct.SNode*, %struct.SNode** %16, i64 %idxprom8
  %17 = load %struct.SNode*, %struct.SNode** %arrayidx10, align 8
  %cmp11 = icmp eq %struct.SNode* %13, %17
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.7
  br label %for.end

if.end.13:                                        ; preds = %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %if.then.12, %for.cond.4
  %19 = load i32, i32* %j, align 4
  %20 = load %struct.VecSNode*, %struct.VecSNode** %vsn2.addr, align 8
  %n14 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %20, i32 0, i32 0
  %21 = load i32, i32* %n14, align 4
  %cmp15 = icmp uge i32 %19, %21
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %for.end
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %22 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.20, %if.then.16, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare i32 @scan_buffer(%struct.d_loc_t*, %struct.D_State*, %struct.ShiftResult*) #1

; Function Attrs: nounwind uwtable
define internal %struct.PNode* @resolve_ambiguities(%struct.Parser* %p, %struct.PNode* %pn) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %amb = alloca %struct.PNode*, align 8
  %res = alloca %struct.D_ParseNode*, align 8
  %efa = alloca i32, align 4
  %pns = alloca %struct.anon.3, align 8
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %n = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  store i32 0, i32* %n, align 4
  %v = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  store %struct.D_ParseNode** null, %struct.D_ParseNode*** %v, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 19
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %1 = load i8*, i8** %s, align 8
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 19
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node1, i32 0, i32 2
  %3 = load i8*, i8** %end, align 8
  %cmp = icmp eq i8* %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.end
  %4 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %call = call i32 @final_actionless(%struct.PNode* %4)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %5 = phi i1 [ false, %do.end ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %efa, align 4
  br label %do.body.2

do.body.2:                                        ; preds = %land.end
  %v3 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %6 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v3, align 8
  %tobool4 = icmp ne %struct.D_ParseNode** %6, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %do.body.2
  %7 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node5 = getelementptr inbounds %struct.PNode, %struct.PNode* %7, i32 0, i32 19
  %n6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %8 = load i32, i32* %n6, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %n6, align 4
  %idxprom = zext i32 %8 to i64
  %e = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.D_ParseNode*], [3 x %struct.D_ParseNode*]* %e, i32 0, i32 0
  %v7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  store %struct.D_ParseNode** %arraydecay, %struct.D_ParseNode*** %v7, align 8
  %arrayidx = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %arraydecay, i64 %idxprom
  store %struct.D_ParseNode* %parse_node5, %struct.D_ParseNode** %arrayidx, align 8
  br label %do.end.36

if.else:                                          ; preds = %do.body.2
  %v8 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %9 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v8, align 8
  %e9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 3
  %arraydecay10 = getelementptr inbounds [3 x %struct.D_ParseNode*], [3 x %struct.D_ParseNode*]* %e9, i32 0, i32 0
  %cmp11 = icmp eq %struct.D_ParseNode** %9, %arraydecay10
  br i1 %cmp11, label %if.then.12, label %if.else.22

if.then.12:                                       ; preds = %if.else
  %n13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %10 = load i32, i32* %n13, align 4
  %cmp14 = icmp ult i32 %10, 3
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then.12
  %11 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node16 = getelementptr inbounds %struct.PNode, %struct.PNode* %11, i32 0, i32 19
  %n17 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %12 = load i32, i32* %n17, align 4
  %inc18 = add i32 %12, 1
  store i32 %inc18, i32* %n17, align 4
  %idxprom19 = zext i32 %12 to i64
  %v20 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %13 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v20, align 8
  %arrayidx21 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %13, i64 %idxprom19
  store %struct.D_ParseNode* %parse_node16, %struct.D_ParseNode** %arrayidx21, align 8
  br label %do.end.36

if.end:                                           ; preds = %if.then.12
  br label %if.end.33

if.else.22:                                       ; preds = %if.else
  %n23 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %14 = load i32, i32* %n23, align 4
  %and = and i32 %14, 7
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.else.22
  %15 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node26 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 19
  %n27 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %16 = load i32, i32* %n27, align 4
  %inc28 = add i32 %16, 1
  store i32 %inc28, i32* %n27, align 4
  %idxprom29 = zext i32 %16 to i64
  %v30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %17 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v30, align 8
  %arrayidx31 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %17, i64 %idxprom29
  store %struct.D_ParseNode* %parse_node26, %struct.D_ParseNode** %arrayidx31, align 8
  br label %do.end.36

if.end.32:                                        ; preds = %if.else.22
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33
  %18 = bitcast %struct.anon.3* %pns to i8*
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %parse_node35 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 19
  %20 = bitcast %struct.D_ParseNode* %parse_node35 to i8*
  call void @vec_add_internal(i8* %18, i8* %20)
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.34, %if.then.25, %if.then.15, %if.then
  %21 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %ambiguities = getelementptr inbounds %struct.PNode, %struct.PNode* %21, i32 0, i32 13
  %22 = load %struct.PNode*, %struct.PNode** %ambiguities, align 8
  store %struct.PNode* %22, %struct.PNode** %amb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.36
  %23 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %tobool37 = icmp ne %struct.PNode* %23, null
  br i1 %tobool37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user = getelementptr inbounds %struct.Parser, %struct.Parser* %24, i32 0, i32 0
  %dont_merge_epsilon_trees = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user, i32 0, i32 12
  %25 = load i32, i32* %dont_merge_epsilon_trees, align 4
  %tobool38 = icmp ne i32 %25, 0
  br i1 %tobool38, label %if.end.52, label %if.then.39

if.then.39:                                       ; preds = %for.body
  %26 = load i32, i32* %efa, align 4
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.51

land.lhs.true:                                    ; preds = %if.then.39
  %27 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node41 = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 19
  %start_loc42 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node41, i32 0, i32 1
  %s43 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc42, i32 0, i32 0
  %28 = load i8*, i8** %s43, align 8
  %29 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node44 = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 19
  %end45 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %parse_node44, i32 0, i32 2
  %30 = load i8*, i8** %end45, align 8
  %cmp46 = icmp eq i8* %28, %30
  br i1 %cmp46, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %land.lhs.true
  %31 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %call48 = call i32 @final_actionless(%struct.PNode* %31)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  br label %for.inc

if.end.51:                                        ; preds = %land.lhs.true.47, %land.lhs.true, %if.then.39
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body
  br label %do.body.53

do.body.53:                                       ; preds = %if.end.52
  %v54 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %32 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v54, align 8
  %tobool55 = icmp ne %struct.D_ParseNode** %32, null
  br i1 %tobool55, label %if.else.65, label %if.then.56

if.then.56:                                       ; preds = %do.body.53
  %33 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node57 = getelementptr inbounds %struct.PNode, %struct.PNode* %33, i32 0, i32 19
  %n58 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %34 = load i32, i32* %n58, align 4
  %inc59 = add i32 %34, 1
  store i32 %inc59, i32* %n58, align 4
  %idxprom60 = zext i32 %34 to i64
  %e61 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 3
  %arraydecay62 = getelementptr inbounds [3 x %struct.D_ParseNode*], [3 x %struct.D_ParseNode*]* %e61, i32 0, i32 0
  %v63 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  store %struct.D_ParseNode** %arraydecay62, %struct.D_ParseNode*** %v63, align 8
  %arrayidx64 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %arraydecay62, i64 %idxprom60
  store %struct.D_ParseNode* %parse_node57, %struct.D_ParseNode** %arrayidx64, align 8
  br label %do.end.96

if.else.65:                                       ; preds = %do.body.53
  %v66 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %35 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v66, align 8
  %e67 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 3
  %arraydecay68 = getelementptr inbounds [3 x %struct.D_ParseNode*], [3 x %struct.D_ParseNode*]* %e67, i32 0, i32 0
  %cmp69 = icmp eq %struct.D_ParseNode** %35, %arraydecay68
  br i1 %cmp69, label %if.then.70, label %if.else.81

if.then.70:                                       ; preds = %if.else.65
  %n71 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %36 = load i32, i32* %n71, align 4
  %cmp72 = icmp ult i32 %36, 3
  br i1 %cmp72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %if.then.70
  %37 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node74 = getelementptr inbounds %struct.PNode, %struct.PNode* %37, i32 0, i32 19
  %n75 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %38 = load i32, i32* %n75, align 4
  %inc76 = add i32 %38, 1
  store i32 %inc76, i32* %n75, align 4
  %idxprom77 = zext i32 %38 to i64
  %v78 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %39 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %39, i64 %idxprom77
  store %struct.D_ParseNode* %parse_node74, %struct.D_ParseNode** %arrayidx79, align 8
  br label %do.end.96

if.end.80:                                        ; preds = %if.then.70
  br label %if.end.93

if.else.81:                                       ; preds = %if.else.65
  %n82 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %40 = load i32, i32* %n82, align 4
  %and83 = and i32 %40, 7
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.92

if.then.85:                                       ; preds = %if.else.81
  %41 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node86 = getelementptr inbounds %struct.PNode, %struct.PNode* %41, i32 0, i32 19
  %n87 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %42 = load i32, i32* %n87, align 4
  %inc88 = add i32 %42, 1
  store i32 %inc88, i32* %n87, align 4
  %idxprom89 = zext i32 %42 to i64
  %v90 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %43 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v90, align 8
  %arrayidx91 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %43, i64 %idxprom89
  store %struct.D_ParseNode* %parse_node86, %struct.D_ParseNode** %arrayidx91, align 8
  br label %do.end.96

if.end.92:                                        ; preds = %if.else.81
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.80
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93
  %44 = bitcast %struct.anon.3* %pns to i8*
  %45 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %parse_node95 = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 19
  %46 = bitcast %struct.D_ParseNode* %parse_node95 to i8*
  call void @vec_add_internal(i8* %44, i8* %46)
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.94, %if.then.85, %if.then.73, %if.then.56
  br label %for.inc

for.inc:                                          ; preds = %do.end.96, %if.then.50
  %47 = load %struct.PNode*, %struct.PNode** %amb, align 8
  %ambiguities97 = getelementptr inbounds %struct.PNode, %struct.PNode* %47, i32 0, i32 13
  %48 = load %struct.PNode*, %struct.PNode** %ambiguities97, align 8
  store %struct.PNode* %48, %struct.PNode** %amb, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %n98 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %49 = load i32, i32* %n98, align 4
  %cmp99 = icmp eq i32 %49, 1
  br i1 %cmp99, label %if.then.100, label %if.end.103

if.then.100:                                      ; preds = %for.end
  %v101 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %50 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.D_ParseNode*, %struct.D_ParseNode** %50, i64 0
  %51 = load %struct.D_ParseNode*, %struct.D_ParseNode** %arrayidx102, align 8
  store %struct.D_ParseNode* %51, %struct.D_ParseNode** %res, align 8
  br label %Ldone

if.end.103:                                       ; preds = %for.end
  %52 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %user104 = getelementptr inbounds %struct.Parser, %struct.Parser* %52, i32 0, i32 0
  %ambiguity_fn = getelementptr inbounds %struct.D_Parser, %struct.D_Parser* %user104, i32 0, i32 4
  %53 = load %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)*, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)** %ambiguity_fn, align 8
  %54 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %55 = bitcast %struct.Parser* %54 to %struct.D_Parser*
  %n105 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  %56 = load i32, i32* %n105, align 4
  %v106 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %57 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v106, align 8
  %call107 = call %struct.D_ParseNode* %53(%struct.D_Parser* %55, i32 %56, %struct.D_ParseNode** %57)
  store %struct.D_ParseNode* %call107, %struct.D_ParseNode** %res, align 8
  br label %Ldone

Ldone:                                            ; preds = %if.end.103, %if.then.100
  br label %do.body.108

do.body.108:                                      ; preds = %Ldone
  %v109 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %58 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v109, align 8
  %tobool110 = icmp ne %struct.D_ParseNode** %58, null
  br i1 %tobool110, label %land.lhs.true.111, label %if.end.118

land.lhs.true.111:                                ; preds = %do.body.108
  %v112 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %59 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v112, align 8
  %e113 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 3
  %arraydecay114 = getelementptr inbounds [3 x %struct.D_ParseNode*], [3 x %struct.D_ParseNode*]* %e113, i32 0, i32 0
  %cmp115 = icmp ne %struct.D_ParseNode** %59, %arraydecay114
  br i1 %cmp115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %land.lhs.true.111
  %v117 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  %60 = load %struct.D_ParseNode**, %struct.D_ParseNode*** %v117, align 8
  %61 = bitcast %struct.D_ParseNode** %60 to i8*
  call void @free(i8* %61) #3
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %land.lhs.true.111, %do.body.108
  br label %do.body.119

do.body.119:                                      ; preds = %if.end.118
  %n120 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 0
  store i32 0, i32* %n120, align 4
  %v121 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %pns, i32 0, i32 2
  store %struct.D_ParseNode** null, %struct.D_ParseNode*** %v121, align 8
  br label %do.end.122

do.end.122:                                       ; preds = %do.body.119
  br label %do.end.123

do.end.123:                                       ; preds = %do.end.122
  %62 = load %struct.D_ParseNode*, %struct.D_ParseNode** %res, align 8
  %63 = bitcast %struct.D_ParseNode* %62 to i8*
  %add.ptr = getelementptr inbounds i8, i8* %63, i64 sext (i32 sub nsw (i32 0, i32 ptrtoint (%struct.D_ParseNode* getelementptr inbounds (%struct.PNode, %struct.PNode* null, i32 0, i32 19) to i32)) to i64)
  %64 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %65 = bitcast %struct.D_ParseNode* %64 to %struct.PNode*
  ret %struct.PNode* %65
}

; Function Attrs: nounwind uwtable
define internal void @fixup_internal_symbol(%struct.Parser* %p, %struct.PNode* %pn, i32 %ichild) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %pn.addr = alloca %struct.PNode*, align 8
  %ichild.addr = alloca i32, align 4
  %child = alloca %struct.PNode*, align 8
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %pnn = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  store i32 %ichild, i32* %ichild.addr, align 4
  %0 = load i32, i32* %ichild.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %1, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 2
  %2 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %2, i64 %idxprom
  %3 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  store %struct.PNode* %3, %struct.PNode** %child, align 8
  %4 = load %struct.PNode*, %struct.PNode** %child, align 8
  %children1 = getelementptr inbounds %struct.PNode, %struct.PNode* %4, i32 0, i32 7
  %n2 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children1, i32 0, i32 0
  %5 = load i32, i32* %n2, align 4
  store i32 %5, i32* %n, align 4
  %6 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 7
  %n4 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 0
  %7 = load i32, i32* %n4, align 4
  store i32 %7, i32* %pnn, align 4
  %8 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %9 = load %struct.PNode*, %struct.PNode** %child, align 8
  %cmp = icmp eq %struct.PNode* %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %n, align 4
  %cmp5 = icmp eq i32 %10, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %11 = load i32, i32* %ichild.addr, align 4
  store i32 %11, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %pnn, align 4
  %sub = sub nsw i32 %13, 1
  %cmp7 = icmp slt i32 %12, %sub
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %j, align 4
  %add = add nsw i32 %14, 1
  %idxprom8 = sext i32 %add to i64
  %15 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children9 = getelementptr inbounds %struct.PNode, %struct.PNode* %15, i32 0, i32 7
  %v10 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children9, i32 0, i32 2
  %16 = load %struct.PNode**, %struct.PNode*** %v10, align 8
  %arrayidx11 = getelementptr inbounds %struct.PNode*, %struct.PNode** %16, i64 %idxprom8
  %17 = load %struct.PNode*, %struct.PNode** %arrayidx11, align 8
  %18 = load i32, i32* %j, align 4
  %idxprom12 = sext i32 %18 to i64
  %19 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children13 = getelementptr inbounds %struct.PNode, %struct.PNode* %19, i32 0, i32 7
  %v14 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children13, i32 0, i32 2
  %20 = load %struct.PNode**, %struct.PNode*** %v14, align 8
  %arrayidx15 = getelementptr inbounds %struct.PNode*, %struct.PNode** %20, i64 %idxprom12
  store %struct.PNode* %17, %struct.PNode** %arrayidx15, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children16 = getelementptr inbounds %struct.PNode, %struct.PNode* %22, i32 0, i32 7
  %n17 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children16, i32 0, i32 0
  %23 = load i32, i32* %n17, align 4
  %dec = add i32 %23, -1
  store i32 %dec, i32* %n17, align 4
  br label %if.end.130

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* %n, align 4
  %cmp18 = icmp eq i32 %24, 1
  br i1 %cmp18, label %if.then.19, label %if.else.31

if.then.19:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.19
  %25 = load %struct.PNode*, %struct.PNode** %child, align 8
  %children20 = getelementptr inbounds %struct.PNode, %struct.PNode* %25, i32 0, i32 7
  %v21 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children20, i32 0, i32 2
  %26 = load %struct.PNode**, %struct.PNode*** %v21, align 8
  %arrayidx22 = getelementptr inbounds %struct.PNode*, %struct.PNode** %26, i64 0
  %27 = load %struct.PNode*, %struct.PNode** %arrayidx22, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %27, i32 0, i32 6
  %28 = load i32, i32* %refcount, align 4
  %inc23 = add i32 %28, 1
  store i32 %inc23, i32* %refcount, align 4
  br label %do.end

do.end:                                           ; preds = %do.body
  %29 = load %struct.PNode*, %struct.PNode** %child, align 8
  %children24 = getelementptr inbounds %struct.PNode, %struct.PNode* %29, i32 0, i32 7
  %v25 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children24, i32 0, i32 2
  %30 = load %struct.PNode**, %struct.PNode*** %v25, align 8
  %arrayidx26 = getelementptr inbounds %struct.PNode*, %struct.PNode** %30, i64 0
  %31 = load %struct.PNode*, %struct.PNode** %arrayidx26, align 8
  %32 = load i32, i32* %ichild.addr, align 4
  %idxprom27 = sext i32 %32 to i64
  %33 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children28 = getelementptr inbounds %struct.PNode, %struct.PNode* %33, i32 0, i32 7
  %v29 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children28, i32 0, i32 2
  %34 = load %struct.PNode**, %struct.PNode*** %v29, align 8
  %arrayidx30 = getelementptr inbounds %struct.PNode*, %struct.PNode** %34, i64 %idxprom27
  store %struct.PNode* %31, %struct.PNode** %arrayidx30, align 8
  br label %if.end.129

if.else.31:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.85, %if.else.31
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %n, align 4
  %sub33 = sub nsw i32 %36, 1
  %cmp34 = icmp slt i32 %35, %sub33
  br i1 %cmp34, label %for.body.35, label %for.end.87

for.body.35:                                      ; preds = %for.cond.32
  br label %do.body.36

do.body.36:                                       ; preds = %for.body.35
  %37 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children37 = getelementptr inbounds %struct.PNode, %struct.PNode* %37, i32 0, i32 7
  %v38 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children37, i32 0, i32 2
  %38 = load %struct.PNode**, %struct.PNode*** %v38, align 8
  %tobool = icmp ne %struct.PNode** %38, null
  br i1 %tobool, label %if.else.48, label %if.then.39

if.then.39:                                       ; preds = %do.body.36
  %39 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children40 = getelementptr inbounds %struct.PNode, %struct.PNode* %39, i32 0, i32 7
  %n41 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children40, i32 0, i32 0
  %40 = load i32, i32* %n41, align 4
  %inc42 = add i32 %40, 1
  store i32 %inc42, i32* %n41, align 4
  %idxprom43 = zext i32 %40 to i64
  %41 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children44 = getelementptr inbounds %struct.PNode, %struct.PNode* %41, i32 0, i32 7
  %e = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children44, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e, i32 0, i32 0
  %42 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children45 = getelementptr inbounds %struct.PNode, %struct.PNode* %42, i32 0, i32 7
  %v46 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children45, i32 0, i32 2
  store %struct.PNode** %arraydecay, %struct.PNode*** %v46, align 8
  %arrayidx47 = getelementptr inbounds %struct.PNode*, %struct.PNode** %arraydecay, i64 %idxprom43
  store %struct.PNode* null, %struct.PNode** %arrayidx47, align 8
  br label %do.end.84

if.else.48:                                       ; preds = %do.body.36
  %43 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children49 = getelementptr inbounds %struct.PNode, %struct.PNode* %43, i32 0, i32 7
  %v50 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children49, i32 0, i32 2
  %44 = load %struct.PNode**, %struct.PNode*** %v50, align 8
  %45 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children51 = getelementptr inbounds %struct.PNode, %struct.PNode* %45, i32 0, i32 7
  %e52 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children51, i32 0, i32 3
  %arraydecay53 = getelementptr inbounds [3 x %struct.PNode*], [3 x %struct.PNode*]* %e52, i32 0, i32 0
  %cmp54 = icmp eq %struct.PNode** %44, %arraydecay53
  br i1 %cmp54, label %if.then.55, label %if.else.68

if.then.55:                                       ; preds = %if.else.48
  %46 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children56 = getelementptr inbounds %struct.PNode, %struct.PNode* %46, i32 0, i32 7
  %n57 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children56, i32 0, i32 0
  %47 = load i32, i32* %n57, align 4
  %cmp58 = icmp ult i32 %47, 3
  br i1 %cmp58, label %if.then.59, label %if.end.67

if.then.59:                                       ; preds = %if.then.55
  %48 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children60 = getelementptr inbounds %struct.PNode, %struct.PNode* %48, i32 0, i32 7
  %n61 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children60, i32 0, i32 0
  %49 = load i32, i32* %n61, align 4
  %inc62 = add i32 %49, 1
  store i32 %inc62, i32* %n61, align 4
  %idxprom63 = zext i32 %49 to i64
  %50 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children64 = getelementptr inbounds %struct.PNode, %struct.PNode* %50, i32 0, i32 7
  %v65 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children64, i32 0, i32 2
  %51 = load %struct.PNode**, %struct.PNode*** %v65, align 8
  %arrayidx66 = getelementptr inbounds %struct.PNode*, %struct.PNode** %51, i64 %idxprom63
  store %struct.PNode* null, %struct.PNode** %arrayidx66, align 8
  br label %do.end.84

if.end.67:                                        ; preds = %if.then.55
  br label %if.end.81

if.else.68:                                       ; preds = %if.else.48
  %52 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children69 = getelementptr inbounds %struct.PNode, %struct.PNode* %52, i32 0, i32 7
  %n70 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children69, i32 0, i32 0
  %53 = load i32, i32* %n70, align 4
  %and = and i32 %53, 7
  %tobool71 = icmp ne i32 %and, 0
  br i1 %tobool71, label %if.then.72, label %if.end.80

if.then.72:                                       ; preds = %if.else.68
  %54 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children73 = getelementptr inbounds %struct.PNode, %struct.PNode* %54, i32 0, i32 7
  %n74 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children73, i32 0, i32 0
  %55 = load i32, i32* %n74, align 4
  %inc75 = add i32 %55, 1
  store i32 %inc75, i32* %n74, align 4
  %idxprom76 = zext i32 %55 to i64
  %56 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children77 = getelementptr inbounds %struct.PNode, %struct.PNode* %56, i32 0, i32 7
  %v78 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children77, i32 0, i32 2
  %57 = load %struct.PNode**, %struct.PNode*** %v78, align 8
  %arrayidx79 = getelementptr inbounds %struct.PNode*, %struct.PNode** %57, i64 %idxprom76
  store %struct.PNode* null, %struct.PNode** %arrayidx79, align 8
  br label %do.end.84

if.end.80:                                        ; preds = %if.else.68
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.67
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  %58 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children83 = getelementptr inbounds %struct.PNode, %struct.PNode* %58, i32 0, i32 7
  %59 = bitcast %struct.VecPNode* %children83 to i8*
  call void @vec_add_internal(i8* %59, i8* null)
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.82, %if.then.72, %if.then.59, %if.then.39
  br label %for.inc.85

for.inc.85:                                       ; preds = %do.end.84
  %60 = load i32, i32* %j, align 4
  %inc86 = add nsw i32 %60, 1
  store i32 %inc86, i32* %j, align 4
  br label %for.cond.32

for.end.87:                                       ; preds = %for.cond.32
  %61 = load i32, i32* %pnn, align 4
  %sub88 = sub nsw i32 %61, 1
  store i32 %sub88, i32* %j, align 4
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.103, %for.end.87
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %ichild.addr, align 4
  %add90 = add nsw i32 %63, 1
  %cmp91 = icmp sge i32 %62, %add90
  br i1 %cmp91, label %for.body.92, label %for.end.105

for.body.92:                                      ; preds = %for.cond.89
  %64 = load i32, i32* %j, align 4
  %idxprom93 = sext i32 %64 to i64
  %65 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children94 = getelementptr inbounds %struct.PNode, %struct.PNode* %65, i32 0, i32 7
  %v95 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children94, i32 0, i32 2
  %66 = load %struct.PNode**, %struct.PNode*** %v95, align 8
  %arrayidx96 = getelementptr inbounds %struct.PNode*, %struct.PNode** %66, i64 %idxprom93
  %67 = load %struct.PNode*, %struct.PNode** %arrayidx96, align 8
  %68 = load i32, i32* %j, align 4
  %sub97 = sub nsw i32 %68, 1
  %69 = load i32, i32* %n, align 4
  %add98 = add nsw i32 %sub97, %69
  %idxprom99 = sext i32 %add98 to i64
  %70 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children100 = getelementptr inbounds %struct.PNode, %struct.PNode* %70, i32 0, i32 7
  %v101 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children100, i32 0, i32 2
  %71 = load %struct.PNode**, %struct.PNode*** %v101, align 8
  %arrayidx102 = getelementptr inbounds %struct.PNode*, %struct.PNode** %71, i64 %idxprom99
  store %struct.PNode* %67, %struct.PNode** %arrayidx102, align 8
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.92
  %72 = load i32, i32* %j, align 4
  %dec104 = add nsw i32 %72, -1
  store i32 %dec104, i32* %j, align 4
  br label %for.cond.89

for.end.105:                                      ; preds = %for.cond.89
  store i32 0, i32* %j, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.126, %for.end.105
  %73 = load i32, i32* %j, align 4
  %74 = load i32, i32* %n, align 4
  %cmp107 = icmp slt i32 %73, %74
  br i1 %cmp107, label %for.body.108, label %for.end.128

for.body.108:                                     ; preds = %for.cond.106
  br label %do.body.109

do.body.109:                                      ; preds = %for.body.108
  %75 = load i32, i32* %j, align 4
  %idxprom110 = sext i32 %75 to i64
  %76 = load %struct.PNode*, %struct.PNode** %child, align 8
  %children111 = getelementptr inbounds %struct.PNode, %struct.PNode* %76, i32 0, i32 7
  %v112 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children111, i32 0, i32 2
  %77 = load %struct.PNode**, %struct.PNode*** %v112, align 8
  %arrayidx113 = getelementptr inbounds %struct.PNode*, %struct.PNode** %77, i64 %idxprom110
  %78 = load %struct.PNode*, %struct.PNode** %arrayidx113, align 8
  %refcount114 = getelementptr inbounds %struct.PNode, %struct.PNode* %78, i32 0, i32 6
  %79 = load i32, i32* %refcount114, align 4
  %inc115 = add i32 %79, 1
  store i32 %inc115, i32* %refcount114, align 4
  br label %do.end.116

do.end.116:                                       ; preds = %do.body.109
  %80 = load i32, i32* %j, align 4
  %idxprom117 = sext i32 %80 to i64
  %81 = load %struct.PNode*, %struct.PNode** %child, align 8
  %children118 = getelementptr inbounds %struct.PNode, %struct.PNode* %81, i32 0, i32 7
  %v119 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children118, i32 0, i32 2
  %82 = load %struct.PNode**, %struct.PNode*** %v119, align 8
  %arrayidx120 = getelementptr inbounds %struct.PNode*, %struct.PNode** %82, i64 %idxprom117
  %83 = load %struct.PNode*, %struct.PNode** %arrayidx120, align 8
  %84 = load i32, i32* %ichild.addr, align 4
  %85 = load i32, i32* %j, align 4
  %add121 = add nsw i32 %84, %85
  %idxprom122 = sext i32 %add121 to i64
  %86 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children123 = getelementptr inbounds %struct.PNode, %struct.PNode* %86, i32 0, i32 7
  %v124 = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children123, i32 0, i32 2
  %87 = load %struct.PNode**, %struct.PNode*** %v124, align 8
  %arrayidx125 = getelementptr inbounds %struct.PNode*, %struct.PNode** %87, i64 %idxprom122
  store %struct.PNode* %83, %struct.PNode** %arrayidx125, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %do.end.116
  %88 = load i32, i32* %j, align 4
  %inc127 = add nsw i32 %88, 1
  store i32 %inc127, i32* %j, align 4
  br label %for.cond.106

for.end.128:                                      ; preds = %for.cond.106
  br label %if.end.129

if.end.129:                                       ; preds = %for.end.128, %do.end
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %for.end
  br label %do.body.131

do.body.131:                                      ; preds = %if.end.130
  %89 = load %struct.PNode*, %struct.PNode** %child, align 8
  %refcount132 = getelementptr inbounds %struct.PNode, %struct.PNode* %89, i32 0, i32 6
  %90 = load i32, i32* %refcount132, align 4
  %dec133 = add i32 %90, -1
  store i32 %dec133, i32* %refcount132, align 4
  %tobool134 = icmp ne i32 %dec133, 0
  br i1 %tobool134, label %if.end.136, label %if.then.135

if.then.135:                                      ; preds = %do.body.131
  %91 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %92 = load %struct.PNode*, %struct.PNode** %child, align 8
  call void @free_PNode(%struct.Parser* %91, %struct.PNode* %92)
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.135, %do.body.131
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @final_actionless(%struct.PNode* %pn) #0 {
entry:
  %retval = alloca i32, align 4
  %pn.addr = alloca %struct.PNode*, align 8
  %i = alloca i32, align 4
  store %struct.PNode* %pn, %struct.PNode** %pn.addr, align 8
  %0 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction = getelementptr inbounds %struct.PNode, %struct.PNode* %0, i32 0, i32 4
  %1 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction, align 8
  %tobool = icmp ne %struct.D_Reduction* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %reduction1 = getelementptr inbounds %struct.PNode, %struct.PNode* %2, i32 0, i32 4
  %3 = load %struct.D_Reduction*, %struct.D_Reduction** %reduction1, align 8
  %final_code = getelementptr inbounds %struct.D_Reduction, %struct.D_Reduction* %3, i32 0, i32 3
  %4 = load i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** %final_code, align 8
  %tobool2 = icmp ne i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* %4, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children = getelementptr inbounds %struct.PNode, %struct.PNode* %6, i32 0, i32 7
  %n = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children, i32 0, i32 0
  %7 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.PNode*, %struct.PNode** %pn.addr, align 8
  %children3 = getelementptr inbounds %struct.PNode, %struct.PNode* %9, i32 0, i32 7
  %v = getelementptr inbounds %struct.VecPNode, %struct.VecPNode* %children3, i32 0, i32 2
  %10 = load %struct.PNode**, %struct.PNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.PNode*, %struct.PNode** %10, i64 %idxprom
  %11 = load %struct.PNode*, %struct.PNode** %arrayidx, align 8
  %call = call i32 @final_actionless(%struct.PNode* %11)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal void @free_ZNode(%struct.Parser* %p, %struct.ZNode* %z, %struct.SNode* %s) #0 {
entry:
  %p.addr = alloca %struct.Parser*, align 8
  %z.addr = alloca %struct.ZNode*, align 8
  %s.addr = alloca %struct.SNode*, align 8
  %i = alloca i32, align 4
  store %struct.Parser* %p, %struct.Parser** %p.addr, align 8
  store %struct.ZNode* %z, %struct.ZNode** %z.addr, align 8
  store %struct.SNode* %s, %struct.SNode** %s.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %pn = getelementptr inbounds %struct.ZNode, %struct.ZNode* %0, i32 0, i32 0
  %1 = load %struct.PNode*, %struct.PNode** %pn, align 8
  %refcount = getelementptr inbounds %struct.PNode, %struct.PNode* %1, i32 0, i32 6
  %2 = load i32, i32* %refcount, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %refcount, align 4
  %tobool = icmp ne i32 %dec, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %3 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %4 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %pn1 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %4, i32 0, i32 0
  %5 = load %struct.PNode*, %struct.PNode** %pn1, align 8
  call void @free_PNode(%struct.Parser* %3, %struct.PNode* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns = getelementptr inbounds %struct.ZNode, %struct.ZNode* %7, i32 0, i32 1
  %n = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns, i32 0, i32 0
  %8 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.SNode*, %struct.SNode** %s.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns2 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %11, i32 0, i32 1
  %v = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns2, i32 0, i32 2
  %12 = load %struct.SNode**, %struct.SNode*** %v, align 8
  %arrayidx = getelementptr inbounds %struct.SNode*, %struct.SNode** %12, i64 %idxprom
  %13 = load %struct.SNode*, %struct.SNode** %arrayidx, align 8
  %cmp3 = icmp ne %struct.SNode* %9, %13
  br i1 %cmp3, label %if.then.4, label %if.end.20

if.then.4:                                        ; preds = %for.body
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %14 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %14 to i64
  %15 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns7 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %15, i32 0, i32 1
  %v8 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns7, i32 0, i32 2
  %16 = load %struct.SNode**, %struct.SNode*** %v8, align 8
  %arrayidx9 = getelementptr inbounds %struct.SNode*, %struct.SNode** %16, i64 %idxprom6
  %17 = load %struct.SNode*, %struct.SNode** %arrayidx9, align 8
  %refcount10 = getelementptr inbounds %struct.SNode, %struct.SNode* %17, i32 0, i32 7
  %18 = load i32, i32* %refcount10, align 4
  %dec11 = add i32 %18, -1
  store i32 %dec11, i32* %refcount10, align 4
  %tobool12 = icmp ne i32 %dec11, 0
  br i1 %tobool12, label %if.end.18, label %if.then.13

if.then.13:                                       ; preds = %do.body.5
  %19 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns15 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %21, i32 0, i32 1
  %v16 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns15, i32 0, i32 2
  %22 = load %struct.SNode**, %struct.SNode*** %v16, align 8
  %arrayidx17 = getelementptr inbounds %struct.SNode*, %struct.SNode** %22, i64 %idxprom14
  %23 = load %struct.SNode*, %struct.SNode** %arrayidx17, align 8
  call void @free_SNode(%struct.Parser* %19, %struct.SNode* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.13, %do.body.5
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %if.end.20

if.end.20:                                        ; preds = %do.end.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.21

do.body.21:                                       ; preds = %for.end
  %25 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns22 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %25, i32 0, i32 1
  %v23 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns22, i32 0, i32 2
  %26 = load %struct.SNode**, %struct.SNode*** %v23, align 8
  %tobool24 = icmp ne %struct.SNode** %26, null
  br i1 %tobool24, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %do.body.21
  %27 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns25 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %27, i32 0, i32 1
  %v26 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns25, i32 0, i32 2
  %28 = load %struct.SNode**, %struct.SNode*** %v26, align 8
  %29 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns27 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %29, i32 0, i32 1
  %e = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns27, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.SNode*], [3 x %struct.SNode*]* %e, i32 0, i32 0
  %cmp28 = icmp ne %struct.SNode** %28, %arraydecay
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %land.lhs.true
  %30 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns30 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %30, i32 0, i32 1
  %v31 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns30, i32 0, i32 2
  %31 = load %struct.SNode**, %struct.SNode*** %v31, align 8
  %32 = bitcast %struct.SNode** %31 to i8*
  call void @free(i8* %32) #3
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %land.lhs.true, %do.body.21
  br label %do.body.33

do.body.33:                                       ; preds = %if.end.32
  %33 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns34 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %33, i32 0, i32 1
  %n35 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns34, i32 0, i32 0
  store i32 0, i32* %n35, align 4
  %34 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %sns36 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %34, i32 0, i32 1
  %v37 = getelementptr inbounds %struct.VecSNode, %struct.VecSNode* %sns36, i32 0, i32 2
  store %struct.SNode** null, %struct.SNode*** %v37, align 8
  br label %do.end.38

do.end.38:                                        ; preds = %do.body.33
  br label %do.end.39

do.end.39:                                        ; preds = %do.end.38
  %35 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes = getelementptr inbounds %struct.Parser, %struct.Parser* %35, i32 0, i32 23
  %36 = load %struct.ZNode*, %struct.ZNode** %free_znodes, align 8
  %37 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %pn40 = getelementptr inbounds %struct.ZNode, %struct.ZNode* %37, i32 0, i32 0
  %38 = bitcast %struct.PNode** %pn40 to %struct.ZNode**
  store %struct.ZNode* %36, %struct.ZNode** %38, align 8
  %39 = load %struct.ZNode*, %struct.ZNode** %z.addr, align 8
  %40 = load %struct.Parser*, %struct.Parser** %p.addr, align 8
  %free_znodes41 = getelementptr inbounds %struct.Parser, %struct.Parser* %40, i32 0, i32 23
  store %struct.ZNode* %39, %struct.ZNode** %free_znodes41, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
