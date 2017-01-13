; ModuleID = './MultiSource.Applications.Burg/14.be.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.ruleAST = type { i8*, %struct.patternAST*, i32, %struct.intlist*, %struct.rule*, %struct.strTableElement*, %struct.strTableElement* }
%struct.patternAST = type { %struct.symbol*, i8*, %struct.list* }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }
%struct.intlist = type { i32, %struct.intlist* }
%struct.strTableElement = type { i8*, %struct.intlist*, i8* }
%struct.strTable = type { %struct.list* }
%struct.relation = type { %struct.rule*, [4 x i16], i32, [4 x i16], i32, i32 }

@rcsid_be = global [44 x i8] c"$Id: be.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@.str = private unnamed_addr constant [5 x i8] c"burm\00", align 1
@prefix = global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@operators = external global %struct.list*, align 8
@outfile = common global %struct._IO_FILE* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"\09case %d:\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"#ifdef __STDC__\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"int %s_label(%s_NODEPTR_TYPE n) {\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"#else\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"int %s_label(n) %s_NODEPTR_TYPE n; {\0A\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\09%s_assert(n, %s_PANIC(\22NULL pointer passed to %s_label\5Cn\22));\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"\09switch (%s_OP_LABEL(n)) {\0A\00", align 1
@.str.9 = private unnamed_addr constant [84 x i8] c"\09default: %s_PANIC(\22Bad op %%d in %s_label\5Cn\22, %s_OP_LABEL(n)); abort(); return 0;\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"\09\09return %s_STATE_LABEL(n) = %s_state(%s_OP_LABEL(n)\00", align 1
@max_arity = external global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.12 = private unnamed_addr constant [81 x i8] c"\09\09return %s_STATE_LABEL(n) = %s_state(%s_OP_LABEL(n), %s_label(%s_LEFT_CHILD(n))\00", align 1
@.str.13 = private unnamed_addr constant [110 x i8] c"\09\09return %s_STATE_LABEL(n) = %s_state(%s_OP_LABEL(n), %s_label(%s_LEFT_CHILD(n)), %s_label(%s_RIGHT_CHILD(n))\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"static short %s_RuleNo[%d][%d] = {\0A\00", align 1
@globalMap = external global %struct.mapping*, align 8
@last_user_nonterminal = external global i32, align 4
@.str.17 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"/* state %d */\0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\09/* state %d; Nonterminals %d-%d */\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@pVector = common global %struct.ruleAST** null, align 8
@.str.25 = private unnamed_addr constant [20 x i8] c"short %s_lhs[] = {\0A\00", align 1
@max_erule_num = external global i32, align 4
@.str.26 = private unnamed_addr constant [12 x i8] c"\09%s_%s_NT,\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\090,\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"short %s_closure[%d][%d] = {\0A\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"\0A\09 \00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" %4d,\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"},\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"short %s_cost[][%d] = {\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c", /* \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c" = %d */\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"\0Achar * %s_state_string[] = {\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"\22 not a state\22, /* state 0 */\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\09\22\00", align 1
@sortedStates = external global %struct.item_set**, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"\22, /* state #%d */\0A\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"\0Ashort %s_delta_cost[%d][%d][%d] = {\0A\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"{{0}}, /* state 0 */\0A\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"{ /* state #%d: \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"\09{0},\0A\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c" = %d */\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"(none) */\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cumBuf = internal global [4000 x i8] zeroinitializer, align 16
@.str.50 = private unnamed_addr constant [11 x i8] c"%s_r%d_nts\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"static short %s[] =\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"%s;\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"short *%s_nts[] = {\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@max_nonterminal = external global i32, align 4
@.str.55 = private unnamed_addr constant [42 x i8] c"short %s_rule_descriptor_0[] = { 0, 0 };\0A\00", align 1
@.str.56 = private unnamed_addr constant [42 x i8] c"short %s_rule_descriptor_0[] = { 0, 1 };\0A\00", align 1
@.str.57 = private unnamed_addr constant [34 x i8] c"short %s_rule_descriptor_%d[] = {\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"%5d,\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c" };\0A\00", align 1
@.str.60 = private unnamed_addr constant [65 x i8] c"/* %s_rule_descriptors[0][1] = 1 iff grammar is normal form. */\0A\00", align 1
@.str.61 = private unnamed_addr constant [35 x i8] c"short * %s_rule_descriptors[] = {\0A\00", align 1
@.str.62 = private unnamed_addr constant [24 x i8] c"\09%s_rule_descriptor_0,\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"\09%s_rule_descriptor_%d,\0A\00", align 1
@.str.64 = private unnamed_addr constant [59 x i8] c"struct { int lhs, op, left, right; } %s_rule_struct[] = {\0A\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"\09{-1},\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"\09{0},\00", align 1
@.str.67 = private unnamed_addr constant [48 x i8] c" /* 0 if normal form, -1 if not normal form */\0A\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"%5d, %5d, %5d, %5d\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"} /* \00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.72 = private unnamed_addr constant [4 x i8] c"{0}\00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"char *%s_string[] = {\0A\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"int %s_max_rule = %d;\0A\00", align 1
@.str.76 = private unnamed_addr constant [24 x i8] c"#define %s_Max_rule %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [38 x i8] c"int %s_rule(int state, int goalnt) {\0A\00", align 1
@.str.78 = private unnamed_addr constant [90 x i8] c"\09%s_assert(state >= 0 && state < %d, PANIC(\22Bad state %%d passed to %s_rule\5Cn\22, state));\0A\00", align 1
@.str.79 = private unnamed_addr constant [93 x i8] c"\09%s_assert(goalnt >= 1 && goalnt < %d, PANIC(\22Bad goalnt %%d passed to %s_rule\5Cn\22, state));\0A\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"\09return %s_RuleNo[state][goalnt-1];\0A\00", align 1
@kids = internal global %struct.strTable* null, align 8
@.str.81 = private unnamed_addr constant [87 x i8] c"%s_NODEPTR_TYPE * %s_kids(%s_NODEPTR_TYPE p, int rulenumber, %s_NODEPTR_TYPE *kids) {\0A\00", align 1
@.str.82 = private unnamed_addr constant [108 x i8] c"%s_NODEPTR_TYPE * %s_kids(p, rulenumber, kids) %s_NODEPTR_TYPE p; int rulenumber; %s_NODEPTR_TYPE *kids; {\0A\00", align 1
@.str.83 = private unnamed_addr constant [67 x i8] c"\09%s_assert(p, %s_PANIC(\22NULL node pointer passed to %s_kids\5Cn\22));\0A\00", align 1
@.str.84 = private unnamed_addr constant [70 x i8] c"\09%s_assert(kids, %s_PANIC(\22NULL kids pointer passed to %s_kids\5Cn\22));\0A\00", align 1
@.str.85 = private unnamed_addr constant [24 x i8] c"\09switch (rulenumber) {\0A\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"\09default:\0A\00", align 1
@.str.87 = private unnamed_addr constant [59 x i8] c"\09\09%s_PANIC(\22Unknown Rule %%d in %s_kids;\5Cn\22, rulenumber);\0A\00", align 1
@.str.88 = private unnamed_addr constant [12 x i8] c"\09\09abort();\0A\00", align 1
@.str.89 = private unnamed_addr constant [20 x i8] c"\09\09/* NOTREACHED */\0A\00", align 1
@ruleASTs = external global %struct.list*, align 8
@.str.90 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"\09\09break;\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"\09return kids;\0A\00", align 1
@.str.93 = private unnamed_addr constant [38 x i8] c"int %s_op_label(%s_NODEPTR_TYPE p) {\0A\00", align 1
@.str.94 = private unnamed_addr constant [41 x i8] c"int %s_op_label(p) %s_NODEPTR_TYPE p; {\0A\00", align 1
@.str.95 = private unnamed_addr constant [66 x i8] c"\09%s_assert(p, %s_PANIC(\22NULL pointer passed to %s_op_label\5Cn\22));\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"\09return %s_OP_LABEL(p);\0A\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"int %s_state_label(%s_NODEPTR_TYPE p) {\0A\00", align 1
@.str.98 = private unnamed_addr constant [44 x i8] c"int %s_state_label(p) %s_NODEPTR_TYPE p; {\0A\00", align 1
@.str.99 = private unnamed_addr constant [69 x i8] c"\09%s_assert(p, %s_PANIC(\22NULL pointer passed to %s_state_label\5Cn\22));\0A\00", align 1
@.str.100 = private unnamed_addr constant [28 x i8] c"\09return %s_STATE_LABEL(p);\0A\00", align 1
@.str.101 = private unnamed_addr constant [58 x i8] c"%s_NODEPTR_TYPE %s_child(%s_NODEPTR_TYPE p, int index) {\0A\00", align 1
@.str.102 = private unnamed_addr constant [68 x i8] c"%s_NODEPTR_TYPE %s_child(p, index) %s_NODEPTR_TYPE p; int index; {\0A\00", align 1
@.str.103 = private unnamed_addr constant [63 x i8] c"\09%s_assert(p, %s_PANIC(\22NULL pointer passed to %s_child\5Cn\22));\0A\00", align 1
@.str.104 = private unnamed_addr constant [19 x i8] c"\09switch (index) {\0A\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"\09case 0:\0A\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"\09\09return %s_LEFT_CHILD(p);\0A\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"\09case 1:\0A\00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c"\09\09return %s_RIGHT_CHILD(p);\0A\00", align 1
@.str.109 = private unnamed_addr constant [51 x i8] c"\09%s_PANIC(\22Bad index %%d in %s_child;\5Cn\22, index);\0A\00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"\09abort();\0A\00", align 1
@.str.111 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@maxOperator = internal global i32 0, align 4
@opVector = internal global %struct.operator** null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.112 = private unnamed_addr constant [47 x i8] c"ERROR: Non-unique external symbol number (%d)\0A\00", align 1
@.str.113 = private unnamed_addr constant [24 x i8] c"char * %s_opname[] = {\0A\00", align 1
@.str.114 = private unnamed_addr constant [12 x i8] c", /* %d */\0A\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"\09\22%s\22\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"\090\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"\0A};\0A\00", align 1
@.str.118 = private unnamed_addr constant [21 x i8] c"char %s_arity[] = {\0A\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"\09%d\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c"int %s_max_op = %d;\0A\00", align 1
@.str.121 = private unnamed_addr constant [24 x i8] c"int %s_max_state = %d;\0A\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"#define %s_Max_state %d\0A\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c"#ifdef DEBUG\0A\00", align 1
@.str.124 = private unnamed_addr constant [15 x i8] c"int %s_debug;\0A\00", align 1
@.str.125 = private unnamed_addr constant [20 x i8] c"#endif /* DEBUG */\0A\00", align 1
@.str.126 = private unnamed_addr constant [23 x i8] c"#ifdef %s_STATE_LABEL\0A\00", align 1
@.str.127 = private unnamed_addr constant [26 x i8] c"#define %s_INCLUDE_EXTRA\0A\00", align 1
@.str.128 = private unnamed_addr constant [20 x i8] c"#ifdef STATE_LABEL\0A\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"#define %s_STATE_LABEL \09STATE_LABEL\0A\00", align 1
@.str.130 = private unnamed_addr constant [38 x i8] c"#define %s_NODEPTR_TYPE\09NODEPTR_TYPE\0A\00", align 1
@.str.131 = private unnamed_addr constant [36 x i8] c"#define %s_LEFT_CHILD  \09LEFT_CHILD\0A\00", align 1
@.str.132 = private unnamed_addr constant [34 x i8] c"#define %s_OP_LABEL    \09OP_LABEL\0A\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"#define %s_RIGHT_CHILD \09RIGHT_CHILD\0A\00", align 1
@.str.134 = private unnamed_addr constant [26 x i8] c"#endif /* STATE_LABEL */\0A\00", align 1
@.str.135 = private unnamed_addr constant [30 x i8] c"#endif /* %s_STATE_LABEL */\0A\0A\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"#ifdef %s_INCLUDE_EXTRA\0A\0A\00", align 1
@nonterminals = external global %struct.list*, align 8
@.str.137 = private unnamed_addr constant [21 x i8] c"#define %s_%s_NT %d\0A\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c"#define %s_NT %d\0A\00", align 1
@.str.139 = private unnamed_addr constant [23 x i8] c"char *%s_ntname[] = {\0A\00", align 1
@.str.140 = private unnamed_addr constant [33 x i8] c"\09\22Error: Nonterminals are > 0\22,\0A\00", align 1
@.str.141 = private unnamed_addr constant [8 x i8] c"\09\22%s\22,\0A\00", align 1
@.str.142 = private unnamed_addr constant [4 x i8] c"\090\0A\00", align 1
@.str.143 = private unnamed_addr constant [31 x i8] c"#endif /* %s_INCLUDE_EXTRA */\0A\00", align 1
@.str.144 = private unnamed_addr constant [18 x i8] c"#ifndef %s_PANIC\0A\00", align 1
@.str.145 = private unnamed_addr constant [24 x i8] c"#define %s_PANIC\09PANIC\0A\00", align 1
@.str.146 = private unnamed_addr constant [23 x i8] c"#endif /* %s_PANIC */\0A\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"extern void abort(void);\0A\00", align 1
@.str.148 = private unnamed_addr constant [22 x i8] c"extern void abort();\0A\00", align 1
@.str.149 = private unnamed_addr constant [15 x i8] c"#ifdef NDEBUG\0A\00", align 1
@.str.150 = private unnamed_addr constant [26 x i8] c"#define %s_assert(x,y)\09;\0A\00", align 1
@.str.151 = private unnamed_addr constant [47 x i8] c"#define %s_assert(x,y)\09if(!(x)) {y; abort();}\0A\00", align 1
@.str.152 = private unnamed_addr constant [36 x i8] c"warning: Unreferenced Operator: %s\0A\00", align 1
@rules = external global %struct.list*, align 8
@max_ruleAST = external global i32, align 4
@.str.153 = private unnamed_addr constant [27 x i8] c"warning: Unused Rule: #%d\0A\00", align 1
@start = external global %struct.nonterminal*, align 8
@.str.154 = private unnamed_addr constant [57 x i8] c"warning: Start Nonterminal (%s) does not appear on LHS.\0A\00", align 1
@.str.155 = private unnamed_addr constant [21 x i8] c"start symbol = \22%s\22\0A\00", align 1
@.str.156 = private unnamed_addr constant [18 x i8] c"# of states = %d\0A\00", align 1
@.str.157 = private unnamed_addr constant [24 x i8] c"# of nonterminals = %d\0A\00", align 1
@.str.158 = private unnamed_addr constant [29 x i8] c"# of user nonterminals = %d\0A\00", align 1
@.str.159 = private unnamed_addr constant [17 x i8] c"# of rules = %d\0A\00", align 1
@max_rule = external global i32, align 4
@.str.160 = private unnamed_addr constant [22 x i8] c"# of user rules = %d\0A\00", align 1
@vecBuf = common global [4000 x i8] zeroinitializer, align 16
@.str.161 = private unnamed_addr constant [4 x i8] c", 0\00", align 1
@.str.162 = private unnamed_addr constant [39 x i8] c"static short %s_%s_transition[%d] = {\0A\00", align 1
@.str.163 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.164 = private unnamed_addr constant [14 x i8] c"\09/* %d-%d */\0A\00", align 1
@.str.165 = private unnamed_addr constant [35 x i8] c"static short %s_%s_imap_1[%d] = {\0A\00", align 1
@.str.166 = private unnamed_addr constant [35 x i8] c"static short %s_%s_imap_2[%d] = {\0A\00", align 1
@.str.167 = private unnamed_addr constant [42 x i8] c"static short %s_%s_transition[%d][%d] = {\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"}\09/* row %d */\00", align 1
@allpairs = external global %struct.relation**, align 8
@.str.169 = private unnamed_addr constant [46 x i8] c"ERROR: non-unique external rule number: (%d)\0A\00", align 1
@.str.170 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"0 }\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c")\00", align 1
@vecIndex = internal global i32 0, align 4
@.str.176 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.177 = private unnamed_addr constant [18 x i8] c"\09\09kids[%d] = %s;\0A\00", align 1
@.str.178 = private unnamed_addr constant [18 x i8] c"%s_LEFT_CHILD(%s)\00", align 1
@.str.179 = private unnamed_addr constant [19 x i8] c"%s_RIGHT_CHILD(%s)\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"int %s_state(int op, int l, int r) {\0A\00", align 1
@.str.181 = private unnamed_addr constant [79 x i8] c"\09%s_assert(l >= 0 && l < %d, PANIC(\22Bad state %%d passed to %s_state\5Cn\22, l));\0A\00", align 1
@.str.182 = private unnamed_addr constant [79 x i8] c"\09%s_assert(r >= 0 && r < %d, PANIC(\22Bad state %%d passed to %s_state\5Cn\22, r));\0A\00", align 1
@.str.183 = private unnamed_addr constant [16 x i8] c"\09switch (op) {\0A\00", align 1
@.str.184 = private unnamed_addr constant [72 x i8] c"\09default: %s_PANIC(\22Bad op %%d in %s_state\5Cn\22, op); abort(); return 0;\0A\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"\09\09return %d;\0A\00", align 1
@.str.186 = private unnamed_addr constant [31 x i8] c"\09\09return %s_%s_transition[l];\0A\00", align 1
@.str.187 = private unnamed_addr constant [62 x i8] c"\09\09return %s_%s_transition[%s_%s_imap_1[l]][%s_%s_imap_2[r]];\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @opsOfArity(i32 %arity) #0 {
entry:
  %arity.addr = alloca i32, align 4
  %c = alloca i32, align 4
  %l = alloca %struct.list*, align 8
  %op = alloca %struct.operator*, align 8
  store i32 %arity, i32* %arity.addr, align 4
  store i32 0, i32* %c, align 4
  %0 = load %struct.list*, %struct.list** @operators, align 8
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
  %4 = bitcast i8* %3 to %struct.operator*
  store %struct.operator* %4, %struct.operator** %op, align 8
  %5 = load %struct.operator*, %struct.operator** %op, align 8
  %arity1 = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 5
  %6 = load i32, i32* %arity1, align 4
  %7 = load i32, i32* %arity.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load %struct.operator*, %struct.operator** %op, align 8
  %num = getelementptr inbounds %struct.operator, %struct.operator* %9, i32 0, i32 2
  %10 = load i32, i32* %num, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %10)
  %11 = load i32, i32* %c, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %c, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %13, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %c, align 4
  ret i32 %14
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @makeLabel() #0 {
entry:
  %flag = alloca i32, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load i8*, i8** @prefix, align 8
  %7 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i8* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load i8*, i8** @prefix, align 8
  %11 = load i8*, i8** @prefix, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0), i8* %10, i8* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %16 = load i8*, i8** @prefix, align 8
  %17 = load i8*, i8** @prefix, align 8
  %18 = load i8*, i8** @prefix, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.9, i32 0, i32 0), i8* %16, i8* %17, i8* %18)
  %call8 = call i32 @opsOfArity(i32 0)
  store i32 %call8, i32* %flag, align 4
  %19 = load i32, i32* %flag, align 4
  %cmp = icmp sgt i32 %19, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %21 = load i8*, i8** @prefix, align 8
  %22 = load i8*, i8** @prefix, align 8
  %23 = load i8*, i8** @prefix, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i32 0, i32 0), i8* %21, i8* %22, i8* %23)
  %24 = load i32, i32* @max_arity, align 4
  call void @trailing_zeroes(i32 %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call11 = call i32 @opsOfArity(i32 1)
  store i32 %call11, i32* %flag, align 4
  %26 = load i32, i32* %flag, align 4
  %cmp12 = icmp sgt i32 %26, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %28 = load i8*, i8** @prefix, align 8
  %29 = load i8*, i8** @prefix, align 8
  %30 = load i8*, i8** @prefix, align 8
  %31 = load i8*, i8** @prefix, align 8
  %32 = load i8*, i8** @prefix, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i32 0, i32 0), i8* %28, i8* %29, i8* %30, i8* %31, i8* %32)
  %33 = load i32, i32* @max_arity, align 4
  %sub = sub nsw i32 %33, 1
  call void @trailing_zeroes(i32 %sub)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %call17 = call i32 @opsOfArity(i32 2)
  store i32 %call17, i32* %flag, align 4
  %35 = load i32, i32* %flag, align 4
  %cmp18 = icmp sgt i32 %35, 0
  br i1 %cmp18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.16
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %37 = load i8*, i8** @prefix, align 8
  %38 = load i8*, i8** @prefix, align 8
  %39 = load i8*, i8** @prefix, align 8
  %40 = load i8*, i8** @prefix, align 8
  %41 = load i8*, i8** @prefix, align 8
  %42 = load i8*, i8** @prefix, align 8
  %43 = load i8*, i8** @prefix, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.13, i32 0, i32 0), i8* %37, i8* %38, i8* %39, i8* %40, i8* %41, i8* %42, i8* %43)
  %44 = load i32, i32* @max_arity, align 4
  %sub21 = sub nsw i32 %44, 2
  call void @trailing_zeroes(i32 %sub21)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.16
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @trailing_zeroes(i32 %z) #0 {
entry:
  %z.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %z, i32* %z.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %z.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.161, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeRuleTable() #0 {
entry:
  %s = alloca i32, align 4
  %nt = alloca i32, align 4
  %ts = alloca %struct.item_set*, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %2 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  %4 = load i32, i32* @last_user_nonterminal, align 4
  %sub = sub nsw i32 %4, 1
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i32 0, i32 0), i8* %1, i32 %3, i32 %sub)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %5 = load i32, i32* %s, align 4
  %6 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count1 = getelementptr inbounds %struct.mapping, %struct.mapping* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %s, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %9, i32 0, i32 4
  %10 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %10, i64 %idxprom
  %11 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  store %struct.item_set* %11, %struct.item_set** %ts, align 8
  %12 = load i32, i32* %s, align 4
  %cmp2 = icmp sgt i32 %12, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %15 = load i32, i32* %s, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), i32 %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  store i32 1, i32* %nt, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.end
  %17 = load i32, i32* %nt, align 4
  %18 = load i32, i32* @last_user_nonterminal, align 4
  %cmp7 = icmp slt i32 %17, %18
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %19 = load i32, i32* %nt, align 4
  %cmp9 = icmp sgt i32 %19, 1
  br i1 %cmp9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %for.body.8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %21 = load i32, i32* %nt, align 4
  %rem = srem i32 %21, 10
  %cmp12 = icmp eq i32 %rem, 1
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.then.10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %23 = load i32, i32* %s, align 4
  %24 = load i32, i32* %nt, align 4
  %sub14 = sub nsw i32 %24, 10
  %25 = load i32, i32* %nt, align 4
  %sub15 = sub nsw i32 %25, 1
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0), i32 %23, i32 %sub14, i32 %sub15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.body.8
  %26 = load i32, i32* %nt, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %27, i32 0, i32 7
  %28 = load %struct.item*, %struct.item** %closed, align 8
  %arrayidx20 = getelementptr inbounds %struct.item, %struct.item* %28, i64 %idxprom19
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx20, i32 0, i32 1
  %29 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %29, null
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end.18
  %30 = load i32, i32* %nt, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed23 = getelementptr inbounds %struct.item_set, %struct.item_set* %31, i32 0, i32 7
  %32 = load %struct.item*, %struct.item** %closed23, align 8
  %arrayidx24 = getelementptr inbounds %struct.item, %struct.item* %32, i64 %idxprom22
  %rule25 = getelementptr inbounds %struct.item, %struct.item* %arrayidx24, i32 0, i32 1
  %33 = load %struct.rule*, %struct.rule** %rule25, align 8
  %used = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 6
  %bf.load = load i8, i8* %used, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %used, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %35 = load i32, i32* %nt, align 4
  %idxprom26 = sext i32 %35 to i64
  %36 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed27 = getelementptr inbounds %struct.item_set, %struct.item_set* %36, i32 0, i32 7
  %37 = load %struct.item*, %struct.item** %closed27, align 8
  %arrayidx28 = getelementptr inbounds %struct.item, %struct.item* %37, i64 %idxprom26
  %rule29 = getelementptr inbounds %struct.item, %struct.item* %arrayidx28, i32 0, i32 1
  %38 = load %struct.rule*, %struct.rule** %rule29, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %38, i32 0, i32 1
  %39 = load i32, i32* %erulenum, align 4
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 %39)
  br label %if.end.32

if.else:                                          ; preds = %if.end.18
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 0)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %41 = load i32, i32* %nt, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %nt, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end
  %43 = load i32, i32* %s, align 4
  %inc35 = add nsw i32 %43, 1
  store i32 %inc35, i32* %s, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeTables() #0 {
entry:
  %0 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doMakeTable to i8* (i8*)*), %struct.list* %0)
  ret void
}

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @doMakeTable(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %s = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %d = alloca %struct.dimension*, align 8
  %ts = alloca %struct.item_set**, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %0, i32 0, i32 5
  %1 = load i32, i32* %arity, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.23
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 6
  %3 = load %struct.table*, %struct.table** %table, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 1
  %4 = load %struct.list*, %struct.list** %rules, align 8
  %tobool = icmp ne %struct.list* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb.1
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.1
  %5 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table2 = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 6
  %6 = load %struct.table*, %struct.table** %table2, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %6, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %7 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  store %struct.dimension* %7, %struct.dimension** %d, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** @prefix, align 8
  %10 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %12, i32 0, i32 3
  %13 = load i32, i32* %count, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.162, i32 0, i32 0), i8* %9, i8* %11, i32 %13)
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load i32, i32* %s, align 4
  %15 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count3 = getelementptr inbounds %struct.mapping, %struct.mapping* %15, i32 0, i32 3
  %16 = load i32, i32* %count3, align 4
  %cmp = icmp slt i32 %14, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %s, align 4
  %cmp4 = icmp sgt i32 %17, 0
  br i1 %cmp4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %for.body
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0))
  %19 = load i32, i32* %s, align 4
  %rem = srem i32 %19, 10
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.5
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %21 = load i32, i32* %s, align 4
  %sub = sub nsw i32 %21, 10
  %22 = load i32, i32* %s, align 4
  %sub9 = sub nsw i32 %22, 1
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.164, i32 0, i32 0), i32 %sub, i32 %sub9)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.5
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %for.body
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %24 = load i32, i32* %s, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %25, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 1
  %26 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx13 = getelementptr inbounds %struct.item_set*, %struct.item_set** %26, i64 %idxprom
  %27 = load %struct.item_set*, %struct.item_set** %arrayidx13, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %27, i32 0, i32 0
  %28 = load i32, i32* %num, align 4
  %idxprom14 = sext i32 %28 to i64
  %29 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %29, i32 0, i32 2
  %30 = load %struct.mapping*, %struct.mapping** %map, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %30, i32 0, i32 4
  %31 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx15 = getelementptr inbounds %struct.item_set*, %struct.item_set** %31, i64 %idxprom14
  %32 = load %struct.item_set*, %struct.item_set** %arrayidx15, align 8
  %num16 = getelementptr inbounds %struct.item_set, %struct.item_set* %32, i32 0, i32 0
  %33 = load i32, i32* %num16, align 4
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table18 = getelementptr inbounds %struct.operator, %struct.operator* %34, i32 0, i32 6
  %35 = load %struct.table*, %struct.table** %table18, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 4
  %36 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx19 = getelementptr inbounds %struct.item_set*, %struct.item_set** %36, i64 %idxprom17
  %37 = load %struct.item_set*, %struct.item_set** %arrayidx19, align 8
  %num20 = getelementptr inbounds %struct.item_set, %struct.item_set* %37, i32 0, i32 0
  %38 = load i32, i32* %num20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 %38)
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %39 = load i32, i32* %s, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %41 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table24 = getelementptr inbounds %struct.operator, %struct.operator* %41, i32 0, i32 6
  %42 = load %struct.table*, %struct.table** %table24, align 8
  %rules25 = getelementptr inbounds %struct.table, %struct.table* %42, i32 0, i32 1
  %43 = load %struct.list*, %struct.list** %rules25, align 8
  %tobool26 = icmp ne %struct.list* %43, null
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %sw.bb.23
  br label %sw.epilog

if.end.28:                                        ; preds = %sw.bb.23
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %45 = load i8*, i8** @prefix, align 8
  %46 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name29 = getelementptr inbounds %struct.operator, %struct.operator* %46, i32 0, i32 0
  %47 = load i8*, i8** %name29, align 8
  %48 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count30 = getelementptr inbounds %struct.mapping, %struct.mapping* %48, i32 0, i32 3
  %49 = load i32, i32* %count30, align 4
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.165, i32 0, i32 0), i8* %45, i8* %47, i32 %49)
  %50 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table32 = getelementptr inbounds %struct.operator, %struct.operator* %50, i32 0, i32 6
  %51 = load %struct.table*, %struct.table** %table32, align 8
  %dimen33 = getelementptr inbounds %struct.table, %struct.table* %51, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen33, i32 0, i64 0
  %52 = load %struct.dimension*, %struct.dimension** %arrayidx34, align 8
  call void @makeIndex_Map(%struct.dimension* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %54 = load i8*, i8** @prefix, align 8
  %55 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name35 = getelementptr inbounds %struct.operator, %struct.operator* %55, i32 0, i32 0
  %56 = load i8*, i8** %name35, align 8
  %57 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count36 = getelementptr inbounds %struct.mapping, %struct.mapping* %57, i32 0, i32 3
  %58 = load i32, i32* %count36, align 4
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.166, i32 0, i32 0), i8* %54, i8* %56, i32 %58)
  %59 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table38 = getelementptr inbounds %struct.operator, %struct.operator* %59, i32 0, i32 6
  %60 = load %struct.table*, %struct.table** %table38, align 8
  %dimen39 = getelementptr inbounds %struct.table, %struct.table* %60, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen39, i32 0, i64 1
  %61 = load %struct.dimension*, %struct.dimension** %arrayidx40, align 8
  call void @makeIndex_Map(%struct.dimension* %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %63 = load i8*, i8** @prefix, align 8
  %64 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name41 = getelementptr inbounds %struct.operator, %struct.operator* %64, i32 0, i32 0
  %65 = load i8*, i8** %name41, align 8
  %66 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table42 = getelementptr inbounds %struct.operator, %struct.operator* %66, i32 0, i32 6
  %67 = load %struct.table*, %struct.table** %table42, align 8
  %dimen43 = getelementptr inbounds %struct.table, %struct.table* %67, i32 0, i32 3
  %arrayidx44 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen43, i32 0, i64 0
  %68 = load %struct.dimension*, %struct.dimension** %arrayidx44, align 8
  %map45 = getelementptr inbounds %struct.dimension, %struct.dimension* %68, i32 0, i32 2
  %69 = load %struct.mapping*, %struct.mapping** %map45, align 8
  %count46 = getelementptr inbounds %struct.mapping, %struct.mapping* %69, i32 0, i32 3
  %70 = load i32, i32* %count46, align 4
  %71 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table47 = getelementptr inbounds %struct.operator, %struct.operator* %71, i32 0, i32 6
  %72 = load %struct.table*, %struct.table** %table47, align 8
  %dimen48 = getelementptr inbounds %struct.table, %struct.table* %72, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen48, i32 0, i64 1
  %73 = load %struct.dimension*, %struct.dimension** %arrayidx49, align 8
  %map50 = getelementptr inbounds %struct.dimension, %struct.dimension* %73, i32 0, i32 2
  %74 = load %struct.mapping*, %struct.mapping** %map50, align 8
  %count51 = getelementptr inbounds %struct.mapping, %struct.mapping* %74, i32 0, i32 3
  %75 = load i32, i32* %count51, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.167, i32 0, i32 0), i8* %63, i8* %65, i32 %70, i32 %75)
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.87, %if.end.28
  %76 = load i32, i32* %i, align 4
  %77 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table54 = getelementptr inbounds %struct.operator, %struct.operator* %77, i32 0, i32 6
  %78 = load %struct.table*, %struct.table** %table54, align 8
  %dimen55 = getelementptr inbounds %struct.table, %struct.table* %78, i32 0, i32 3
  %arrayidx56 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen55, i32 0, i64 0
  %79 = load %struct.dimension*, %struct.dimension** %arrayidx56, align 8
  %map57 = getelementptr inbounds %struct.dimension, %struct.dimension* %79, i32 0, i32 2
  %80 = load %struct.mapping*, %struct.mapping** %map57, align 8
  %count58 = getelementptr inbounds %struct.mapping, %struct.mapping* %80, i32 0, i32 3
  %81 = load i32, i32* %count58, align 4
  %cmp59 = icmp slt i32 %76, %81
  br i1 %cmp59, label %for.body.60, label %for.end.89

for.body.60:                                      ; preds = %for.cond.53
  %82 = load i32, i32* %i, align 4
  %cmp61 = icmp sgt i32 %82, 0
  br i1 %cmp61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %for.body.60
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %for.body.60
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0))
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.83, %if.end.64
  %86 = load i32, i32* %j, align 4
  %87 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table68 = getelementptr inbounds %struct.operator, %struct.operator* %87, i32 0, i32 6
  %88 = load %struct.table*, %struct.table** %table68, align 8
  %dimen69 = getelementptr inbounds %struct.table, %struct.table* %88, i32 0, i32 3
  %arrayidx70 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen69, i32 0, i64 1
  %89 = load %struct.dimension*, %struct.dimension** %arrayidx70, align 8
  %map71 = getelementptr inbounds %struct.dimension, %struct.dimension* %89, i32 0, i32 2
  %90 = load %struct.mapping*, %struct.mapping** %map71, align 8
  %count72 = getelementptr inbounds %struct.mapping, %struct.mapping* %90, i32 0, i32 3
  %91 = load i32, i32* %count72, align 4
  %cmp73 = icmp slt i32 %86, %91
  br i1 %cmp73, label %for.body.74, label %for.end.85

for.body.74:                                      ; preds = %for.cond.67
  %92 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table75 = getelementptr inbounds %struct.operator, %struct.operator* %92, i32 0, i32 6
  %93 = load %struct.table*, %struct.table** %table75, align 8
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* %j, align 4
  %call76 = call %struct.item_set** @transLval(%struct.table* %93, i32 %94, i32 %95)
  store %struct.item_set** %call76, %struct.item_set*** %ts, align 8
  %96 = load i32, i32* %j, align 4
  %cmp77 = icmp sgt i32 %96, 0
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %for.body.74
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %for.body.74
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %99 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %100 = load %struct.item_set*, %struct.item_set** %99, align 8
  %num81 = getelementptr inbounds %struct.item_set, %struct.item_set* %100, i32 0, i32 0
  %101 = load i32, i32* %num81, align 4
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 %101)
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.80
  %102 = load i32, i32* %j, align 4
  %inc84 = add nsw i32 %102, 1
  store i32 %inc84, i32* %j, align 4
  br label %for.cond.67

for.end.85:                                       ; preds = %for.cond.67
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %104 = load i32, i32* %i, align 4
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i32 %104)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.end.85
  %105 = load i32, i32* %i, align 4
  %inc88 = add nsw i32 %105, 1
  store i32 %inc88, i32* %i, align 4
  br label %for.cond.53

for.end.89:                                       ; preds = %for.cond.53
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then, %if.then.27, %for.end.89, %for.end, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeLHSmap() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), i8* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @max_erule_num, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %6, i64 %idxprom
  %7 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool1 = icmp ne %struct.ruleAST* %7, null
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** @prefix, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx4 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %11, i64 %idxprom3
  %12 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx4, align 8
  %lhs = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %12, i32 0, i32 0
  %13 = load i8*, i8** %lhs, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* %9, i8* %13)
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.2
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makePvector() #0 {
entry:
  %0 = load i32, i32* @max_erule_num, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %1 = bitcast i8* %call to %struct.ruleAST**
  store %struct.ruleAST** %1, %struct.ruleAST*** @pVector, align 8
  %2 = load %struct.list*, %struct.list** @ruleASTs, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.ruleAST*)* @doVector to i8* (i8*)*), %struct.list* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeClosureArray() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i32, i32* @last_user_nonterminal, align 4
  %4 = load i32, i32* @last_user_nonterminal, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i8* %2, i32 %3, i32 %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* @last_user_nonterminal, align 4
  %cmp3 = icmp slt i32 %8, %9
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %10 = load i32, i32* %j, align 4
  %cmp5 = icmp sgt i32 %10, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %for.body.4
  %11 = load i32, i32* %j, align 4
  %rem = srem i32 %11, 10
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %land.lhs.true
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true, %for.body.4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %j, align 4
  %call10 = call i32 @seminal(i32 %14, i32 %15)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %call10)
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load i32, i32* %j, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %18 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @seminal(i32 %from, i32 %to) #0 {
entry:
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  %0 = load i32, i32* %to.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i32, i32* %from.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx = getelementptr inbounds %struct.relation*, %struct.relation** %2, i64 %idxprom1
  %3 = load %struct.relation*, %struct.relation** %arrayidx, align 8
  %arrayidx2 = getelementptr inbounds %struct.relation, %struct.relation* %3, i64 %idxprom
  %rule = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx2, i32 0, i32 0
  %4 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %4, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load i32, i32* %to.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load i32, i32* %from.addr, align 4
  %idxprom4 = sext i32 %6 to i64
  %7 = load %struct.relation**, %struct.relation*** @allpairs, align 8
  %arrayidx5 = getelementptr inbounds %struct.relation*, %struct.relation** %7, i64 %idxprom4
  %8 = load %struct.relation*, %struct.relation** %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds %struct.relation, %struct.relation* %8, i64 %idxprom3
  %rule7 = getelementptr inbounds %struct.relation, %struct.relation* %arrayidx6, i32 0, i32 0
  %9 = load %struct.rule*, %struct.rule** %rule7, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 1
  %10 = load i32, i32* %erulenum, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define void @makeCostVector(i32 %z, i16* %d) #0 {
entry:
  %z.addr = alloca i32, align 4
  %d.addr = alloca i16*, align 8
  %j = alloca i32, align 4
  store i32 %z, i32* %z.addr, align 4
  store i16* %d, i16** %d.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %1, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %j, align 4
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, i32* %z.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load i32, i32* %j, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i16*, i16** %d.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %7, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %8 to i32
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 %conv)
  br label %if.end.6

if.else:                                          ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeCostArray() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0), i8* %2, i32 4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @max_erule_num, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %6, i64 %idxprom
  %7 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %8 = ptrtoint %struct.ruleAST* %7 to i32
  %9 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %9 to i64
  %10 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx2 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %10, i64 %idxprom1
  %11 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx2, align 8
  %tobool3 = icmp ne %struct.ruleAST* %11, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx5 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %13, i64 %idxprom4
  %14 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx5, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %14, i32 0, i32 4
  %15 = load %struct.rule*, %struct.rule** %rule, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %15, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i16* [ %arraydecay, %cond.true ], [ null, %cond.false ]
  call void @makeCostVector(i32 %8, i16* %cond)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  %17 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx8 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %18, i64 %idxprom7
  %19 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx8, align 8
  call void @printRule(%struct.ruleAST* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %21 = load i32, i32* %i, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 %21)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @printRule(%struct.ruleAST* %r, i8* %d) #0 {
entry:
  %r.addr = alloca %struct.ruleAST*, align 8
  %d.addr = alloca i8*, align 8
  store %struct.ruleAST* %r, %struct.ruleAST** %r.addr, align 8
  store i8* %d, i8** %d.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %r.addr, align 8
  %tobool = icmp ne %struct.ruleAST* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load %struct.ruleAST*, %struct.ruleAST** %r.addr, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %2, i32 0, i32 4
  %3 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %3, i32 0, i32 4
  %4 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %4, i32 0, i32 0
  %5 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.173, i32 0, i32 0), i8* %5)
  %6 = load %struct.ruleAST*, %struct.ruleAST** %r.addr, align 8
  %pat = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %6, i32 0, i32 1
  %7 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @printPatternAST(%struct.patternAST* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** %d.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeStateStringArray() #0 {
entry:
  %s = alloca i32, align 4
  %nt = alloca i32, align 4
  %states = alloca i32, align 4
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  store i32 %1, i32* %states, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i32 0, i32 0))
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %s, align 4
  %6 = load i32, i32* %states, align 4
  %sub = sub nsw i32 %6, 1
  %cmp = icmp slt i32 %5, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i32, i32* %s, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %10, i64 %idxprom
  %11 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  call void @printRepresentative(%struct._IO_FILE* %8, %struct.item_set* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %13 = load i32, i32* %s, align 4
  %add = add nsw i32 %13, 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0), i32 %add)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %s, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

declare void @printRepresentative(%struct._IO_FILE*, %struct.item_set*) #1

; Function Attrs: nounwind uwtable
define void @makeDeltaCostArray() #0 {
entry:
  %s = alloca i32, align 4
  %nt = alloca i32, align 4
  %states = alloca i32, align 4
  %erulenum = alloca i32, align 4
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  store i32 %1, i32* %states, align 4
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load i32, i32* %states, align 4
  %5 = load i32, i32* @last_user_nonterminal, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.42, i32 0, i32 0), i8* %3, i32 %4, i32 %5, i32 4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0))
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %7 = load i32, i32* %s, align 4
  %8 = load i32, i32* %states, align 4
  %sub = sub nsw i32 %8, 1
  %cmp = icmp slt i32 %7, %sub
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load i32, i32* %s, align 4
  %add = add nsw i32 %10, 1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i32 0, i32 0), i32 %add)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %12 = load i32, i32* %s, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %13, i64 %idxprom
  %14 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  call void @printRepresentative(%struct._IO_FILE* %11, %struct.item_set* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %16 = load i32, i32* %s, align 4
  %add3 = add nsw i32 %16, 1
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 %add3)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0))
  store i32 1, i32* %nt, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %18 = load i32, i32* %nt, align 4
  %19 = load i32, i32* @last_user_nonterminal, align 4
  %cmp7 = icmp slt i32 %18, %19
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %20 = load i32, i32* %nt, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load i32, i32* %s, align 4
  %idxprom10 = sext i32 %21 to i64
  %22 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx11 = getelementptr inbounds %struct.item_set*, %struct.item_set** %22, i64 %idxprom10
  %23 = load %struct.item_set*, %struct.item_set** %arrayidx11, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %23, i32 0, i32 7
  %24 = load %struct.item*, %struct.item** %closed, align 8
  %arrayidx12 = getelementptr inbounds %struct.item, %struct.item* %24, i64 %idxprom9
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx12, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @makeCostVector(i32 1, i16* %arraydecay)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  %26 = load i32, i32* %nt, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load i32, i32* %s, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx16 = getelementptr inbounds %struct.item_set*, %struct.item_set** %28, i64 %idxprom15
  %29 = load %struct.item_set*, %struct.item_set** %arrayidx16, align 8
  %closed17 = getelementptr inbounds %struct.item_set, %struct.item_set* %29, i32 0, i32 7
  %30 = load %struct.item*, %struct.item** %closed17, align 8
  %arrayidx18 = getelementptr inbounds %struct.item, %struct.item* %30, i64 %idxprom14
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx18, i32 0, i32 1
  %31 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %31, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.8
  %32 = load i32, i32* %nt, align 4
  %idxprom19 = sext i32 %32 to i64
  %33 = load i32, i32* %s, align 4
  %idxprom20 = sext i32 %33 to i64
  %34 = load %struct.item_set**, %struct.item_set*** @sortedStates, align 8
  %arrayidx21 = getelementptr inbounds %struct.item_set*, %struct.item_set** %34, i64 %idxprom20
  %35 = load %struct.item_set*, %struct.item_set** %arrayidx21, align 8
  %closed22 = getelementptr inbounds %struct.item_set, %struct.item_set* %35, i32 0, i32 7
  %36 = load %struct.item*, %struct.item** %closed22, align 8
  %arrayidx23 = getelementptr inbounds %struct.item, %struct.item* %36, i64 %idxprom19
  %rule24 = getelementptr inbounds %struct.item, %struct.item* %arrayidx23, i32 0, i32 1
  %37 = load %struct.rule*, %struct.rule** %rule24, align 8
  %erulenum25 = getelementptr inbounds %struct.rule, %struct.rule* %37, i32 0, i32 1
  %38 = load i32, i32* %erulenum25, align 4
  store i32 %38, i32* %erulenum, align 4
  %39 = load i32, i32* %erulenum, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx27 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %40, i64 %idxprom26
  %41 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx27, align 8
  call void @printRule(%struct.ruleAST* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %43 = load i32, i32* %erulenum, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %43)
  br label %if.end

if.else:                                          ; preds = %for.body.8
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %46 = load i32, i32* %nt, align 4
  %inc = add nsw i32 %46, 1
  store i32 %inc, i32* %nt, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %48 = load i32, i32* %s, align 4
  %inc33 = add nsw i32 %48, 1
  store i32 %inc33, i32* %s, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeNts() #0 {
entry:
  %i = alloca i32, align 4
  %new = alloca i32, align 4
  %nts = alloca %struct.strTable*, align 8
  %ename = alloca [50 x i8], align 16
  %call = call %struct.strTable* @newStrTable()
  store %struct.strTable* %call, %struct.strTable** %nts, align 8
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @max_erule_num, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %4, i64 %idxprom
  %5 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool1 = icmp ne %struct.ruleAST* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.29

if.then.2:                                        ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx4 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %7, i64 %idxprom3
  %8 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx4, align 8
  call void @doLayout(%struct.ruleAST* %8)
  %9 = load %struct.strTable*, %struct.strTable** %nts, align 8
  %10 = load i32, i32* %i, align 4
  %call5 = call %struct.strTableElement* @addString(%struct.strTable* %9, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i32 %10, i32* %new)
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx7 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %12, i64 %idxprom6
  %13 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx7, align 8
  %nts8 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %13, i32 0, i32 6
  store %struct.strTableElement* %call5, %struct.strTableElement** %nts8, align 8
  %14 = load i32, i32* %new, align 4
  %tobool9 = icmp ne i32 %14, 0
  br i1 %tobool9, label %if.then.10, label %if.end.28

if.then.10:                                       ; preds = %if.then.2
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %ename, i32 0, i32 0
  %15 = load i8*, i8** @prefix, align 8
  %16 = load i32, i32* %i, align 4
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i8* %15, i32 %16) #5
  %arraydecay12 = getelementptr inbounds [50 x i8], [50 x i8]* %ename, i32 0, i32 0
  %call13 = call i64 @strlen(i8* %arraydecay12) #6
  %add = add i64 %call13, 1
  %conv = trunc i64 %add to i32
  %call14 = call i8* @zalloc(i32 %conv)
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx16 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %18, i64 %idxprom15
  %19 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx16, align 8
  %nts17 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %19, i32 0, i32 6
  %20 = load %struct.strTableElement*, %struct.strTableElement** %nts17, align 8
  %ename18 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %20, i32 0, i32 2
  store i8* %call14, i8** %ename18, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx20 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %22, i64 %idxprom19
  %23 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx20, align 8
  %nts21 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %23, i32 0, i32 6
  %24 = load %struct.strTableElement*, %struct.strTableElement** %nts21, align 8
  %ename22 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %24, i32 0, i32 2
  %25 = load i8*, i8** %ename22, align 8
  %arraydecay23 = getelementptr inbounds [50 x i8], [50 x i8]* %ename, i32 0, i32 0
  %call24 = call i8* @strcpy(i8* %25, i8* %arraydecay23) #5
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %arraydecay25 = getelementptr inbounds [50 x i8], [50 x i8]* %ename, i32 0, i32 0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* %arraydecay25)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0))
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.10, %if.then.2
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %30 = load i8*, i8** @prefix, align 8
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0), i8* %30)
  store i32 0, i32* %i, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.46, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* @max_erule_num, align 4
  %cmp32 = icmp sle i32 %31, %32
  br i1 %cmp32, label %for.body.34, label %for.end.48

for.body.34:                                      ; preds = %for.cond.31
  %33 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %33 to i64
  %34 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx36 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %34, i64 %idxprom35
  %35 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx36, align 8
  %tobool37 = icmp ne %struct.ruleAST* %35, null
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %for.body.34
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %37 to i64
  %38 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx40 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %38, i64 %idxprom39
  %39 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx40, align 8
  %nts41 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %39, i32 0, i32 6
  %40 = load %struct.strTableElement*, %struct.strTableElement** %nts41, align 8
  %ename42 = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %40, i32 0, i32 2
  %41 = load i8*, i8** %ename42, align 8
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* %41)
  br label %if.end.45

if.else:                                          ; preds = %for.body.34
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.38
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %43 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %43, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.31

for.end.48:                                       ; preds = %for.cond.31
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

declare %struct.strTable* @newStrTable() #1

; Function Attrs: nounwind uwtable
define internal void @doLayout(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.170, i32 0, i32 0)) #5
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %pat = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 1
  %1 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @layoutNts(%struct.patternAST* %1)
  %call1 = call i8* @strcat(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.171, i32 0, i32 0)) #5
  ret void
}

declare %struct.strTableElement* @addString(%struct.strTable*, i8*, i32, i32*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @makeRuleDescArray() #0 {
entry:
  %i = alloca i32, align 4
  %o = alloca %struct.operator*, align 8
  %t = alloca %struct.nonterminal*, align 8
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @last_user_nonterminal, align 4
  %2 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %4 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i32 0, i32 0), i8* %4)
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load i8*, i8** @prefix, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.56, i32 0, i32 0), i8* %6)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.1
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @max_erule_num, align 4
  %cmp4 = icmp sle i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %10, i64 %idxprom
  %11 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool5 = icmp ne %struct.ruleAST* %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.14

if.then.6:                                        ; preds = %for.body
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %13 = load i8*, i8** @prefix, align 8
  %14 = load i32, i32* %i, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.57, i32 0, i32 0), i8* %13, i32 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx9 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %17, i64 %idxprom8
  %18 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx9, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %18, i32 0, i32 4
  %19 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 4
  %20 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %20, i32 0, i32 1
  %21 = load i32, i32* %num, align 4
  %sub = sub nsw i32 0, %21
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %sub)
  %22 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %22 to i64
  %23 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx12 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %23, i64 %idxprom11
  %24 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx12, align 8
  %pat = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %24, i32 0, i32 1
  %25 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @printPatternAST_int(%struct.patternAST* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.6, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %27 = load i32, i32* %i, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %29 = load i8*, i8** @prefix, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.60, i32 0, i32 0), i8* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %31 = load i8*, i8** @prefix, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.61, i32 0, i32 0), i8* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %33 = load i8*, i8** @prefix, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* %33)
  store i32 1, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.29, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* @max_erule_num, align 4
  %cmp19 = icmp sle i32 %34, %35
  br i1 %cmp19, label %for.body.20, label %for.end.31

for.body.20:                                      ; preds = %for.cond.18
  %36 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx22 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %37, i64 %idxprom21
  %38 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx22, align 8
  %tobool23 = icmp ne %struct.ruleAST* %38, null
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %for.body.20
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %40 = load i8*, i8** @prefix, align 8
  %41 = load i32, i32* %i, align 4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.63, i32 0, i32 0), i8* %40, i32 %41)
  br label %if.end.28

if.else.26:                                       ; preds = %for.body.20
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %43 = load i8*, i8** @prefix, align 8
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.62, i32 0, i32 0), i8* %43)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %44 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %44, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.18

for.end.31:                                       ; preds = %for.cond.18
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @printPatternAST_int(%struct.patternAST* %p) #0 {
entry:
  %p.addr = alloca %struct.patternAST*, align 8
  %l = alloca %struct.list*, align 8
  %pat = alloca %struct.patternAST*, align 8
  store %struct.patternAST* %p, %struct.patternAST** %p.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %tobool = icmp ne %struct.patternAST* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %sym = getelementptr inbounds %struct.patternAST, %struct.patternAST* %1, i32 0, i32 0
  %2 = load %struct.symbol*, %struct.symbol** %sym, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %2, i32 0, i32 1
  %3 = load i32, i32* %tag, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %sym1 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %5, i32 0, i32 0
  %6 = load %struct.symbol*, %struct.symbol** %sym1, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 2
  %nt = bitcast %union.anon* %u to %struct.nonterminal**
  %7 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %7, i32 0, i32 1
  %8 = load i32, i32* %num, align 4
  %sub = sub nsw i32 0, %8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %sub)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %sym3 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %10, i32 0, i32 0
  %11 = load %struct.symbol*, %struct.symbol** %sym3, align 8
  %u4 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 2
  %op = bitcast %union.anon* %u4 to %struct.operator**
  %12 = load %struct.operator*, %struct.operator** %op, align 8
  %num5 = getelementptr inbounds %struct.operator, %struct.operator* %12, i32 0, i32 2
  %13 = load i32, i32* %num5, align 4
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 %13)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.2, %sw.bb
  %14 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %14, i32 0, i32 2
  %15 = load %struct.list*, %struct.list** %children, align 8
  %tobool7 = icmp ne %struct.list* %15, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %sw.epilog
  %16 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children9 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %16, i32 0, i32 2
  %17 = load %struct.list*, %struct.list** %children9, align 8
  store %struct.list* %17, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %18 = load %struct.list*, %struct.list** %l, align 8
  %tobool10 = icmp ne %struct.list* %18, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %19, i32 0, i32 0
  %20 = load i8*, i8** %x, align 8
  %21 = bitcast i8* %20 to %struct.patternAST*
  store %struct.patternAST* %21, %struct.patternAST** %pat, align 8
  %22 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @printPatternAST_int(%struct.patternAST* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 1
  %24 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %24, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %sw.epilog
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeRuleDescArray2() #0 {
entry:
  %i = alloca i32, align 4
  %o = alloca %struct.operator*, align 8
  %t = alloca %struct.nonterminal*, align 8
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.64, i32 0, i32 0), i8* %2)
  %3 = load i32, i32* @last_user_nonterminal, align 4
  %4 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0))
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.1
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.67, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @max_erule_num, align 4
  %cmp6 = icmp sle i32 %8, %9
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %12, i64 %idxprom
  %13 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool8 = icmp ne %struct.ruleAST* %13, null
  br i1 %tobool8, label %if.then.9, label %if.else.46

if.then.9:                                        ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx12 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %17, i64 %idxprom11
  %18 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx12, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %18, i32 0, i32 4
  %19 = load %struct.rule*, %struct.rule** %rule, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 4
  %20 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %20, i32 0, i32 1
  %21 = load i32, i32* %num, align 4
  %22 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %22 to i64
  %23 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx14 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %23, i64 %idxprom13
  %24 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx14, align 8
  %rule15 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %24, i32 0, i32 4
  %25 = load %struct.rule*, %struct.rule** %rule15, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 5
  %26 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op = getelementptr inbounds %struct.pattern, %struct.pattern* %26, i32 0, i32 1
  %27 = load %struct.operator*, %struct.operator** %op, align 8
  store %struct.operator* %27, %struct.operator** %o, align 8
  %tobool16 = icmp ne %struct.operator* %27, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.9
  %28 = load %struct.operator*, %struct.operator** %o, align 8
  %num17 = getelementptr inbounds %struct.operator, %struct.operator* %28, i32 0, i32 2
  %29 = load i32, i32* %num17, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ 0, %cond.false ]
  %30 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %30 to i64
  %31 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx19 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %31, i64 %idxprom18
  %32 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx19, align 8
  %rule20 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %32, i32 0, i32 4
  %33 = load %struct.rule*, %struct.rule** %rule20, align 8
  %pat21 = getelementptr inbounds %struct.rule, %struct.rule* %33, i32 0, i32 5
  %34 = load %struct.pattern*, %struct.pattern** %pat21, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %35 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx22, align 8
  store %struct.nonterminal* %35, %struct.nonterminal** %t, align 8
  %tobool23 = icmp ne %struct.nonterminal* %35, null
  br i1 %tobool23, label %cond.true.24, label %cond.false.26

cond.true.24:                                     ; preds = %cond.end
  %36 = load %struct.nonterminal*, %struct.nonterminal** %t, align 8
  %num25 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %36, i32 0, i32 1
  %37 = load i32, i32* %num25, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %cond.end
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.24
  %cond28 = phi i32 [ %37, %cond.true.24 ], [ 0, %cond.false.26 ]
  %38 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx30 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %39, i64 %idxprom29
  %40 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx30, align 8
  %rule31 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %40, i32 0, i32 4
  %41 = load %struct.rule*, %struct.rule** %rule31, align 8
  %pat32 = getelementptr inbounds %struct.rule, %struct.rule* %41, i32 0, i32 5
  %42 = load %struct.pattern*, %struct.pattern** %pat32, align 8
  %children33 = getelementptr inbounds %struct.pattern, %struct.pattern* %42, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children33, i32 0, i64 1
  %43 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx34, align 8
  store %struct.nonterminal* %43, %struct.nonterminal** %t, align 8
  %tobool35 = icmp ne %struct.nonterminal* %43, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.38

cond.true.36:                                     ; preds = %cond.end.27
  %44 = load %struct.nonterminal*, %struct.nonterminal** %t, align 8
  %num37 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %44, i32 0, i32 1
  %45 = load i32, i32* %num37, align 4
  br label %cond.end.39

cond.false.38:                                    ; preds = %cond.end.27
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.36
  %cond40 = phi i32 [ %45, %cond.true.36 ], [ 0, %cond.false.38 ]
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i32 0, i32 0), i32 %21, i32 %cond, i32 %cond28, i32 %cond40)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0))
  %47 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %47 to i64
  %48 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx44 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %48, i64 %idxprom43
  %49 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx44, align 8
  call void @printRule(%struct.ruleAST* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %51 = load i32, i32* %i, align 4
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.47, i32 0, i32 0), i32 %51)
  br label %if.end.48

if.else.46:                                       ; preds = %for.body
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.72, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %cond.end.39
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeStringArray() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %tobool = icmp ne %struct.ruleAST** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makePvector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.73, i32 0, i32 0), i8* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @max_erule_num, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.68, i32 0, i32 0))
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %7, i64 %idxprom
  %8 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool2 = icmp ne %struct.ruleAST* %8, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0))
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx6 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %11, i64 %idxprom5
  %12 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx6, align 8
  call void @printRule(%struct.ruleAST* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0))
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.71, i32 0, i32 0))
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.3
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %19 = load i8*, i8** @prefix, align 8
  %20 = load i32, i32* @max_erule_num, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i32 0, i32 0), i8* %19, i32 %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load i8*, i8** @prefix, align 8
  %23 = load i32, i32* @max_erule_num, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.76, i32 0, i32 0), i8* %22, i32 %23)
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeRule() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.77, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.78, i32 0, i32 0), i8* %3, i32 %5, i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load i8*, i8** @prefix, align 8
  %9 = load i32, i32* @max_nonterminal, align 4
  %10 = load i8*, i8** @prefix, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.79, i32 0, i32 0), i8* %8, i32 %9, i8* %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.80, i32 0, i32 0), i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeKids() #0 {
entry:
  %e = alloca %struct.list*, align 8
  %r = alloca %struct.intlist*, align 8
  %el = alloca %struct.strTableElement*, align 8
  %i = alloca i32, align 4
  %call = call %struct.strTable* @newStrTable()
  store %struct.strTable* %call, %struct.strTable** @kids, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load i8*, i8** @prefix, align 8
  %5 = load i8*, i8** @prefix, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.81, i32 0, i32 0), i8* %2, i8* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load i8*, i8** @prefix, align 8
  %9 = load i8*, i8** @prefix, align 8
  %10 = load i8*, i8** @prefix, align 8
  %11 = load i8*, i8** @prefix, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.82, i32 0, i32 0), i8* %8, i8* %9, i8* %10, i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %15 = load i8*, i8** @prefix, align 8
  %16 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.83, i32 0, i32 0), i8* %14, i8* %15, i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %18 = load i8*, i8** @prefix, align 8
  %19 = load i8*, i8** @prefix, align 8
  %20 = load i8*, i8** @prefix, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.84, i32 0, i32 0), i8* %18, i8* %19, i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.85, i32 0, i32 0))
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %24 = load i8*, i8** @prefix, align 8
  %25 = load i8*, i8** @prefix, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.87, i32 0, i32 0), i8* %24, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.88, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.89, i32 0, i32 0))
  %28 = load %struct.list*, %struct.list** @ruleASTs, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.ruleAST*)* @doKids to i8* (i8*)*), %struct.list* %28)
  %29 = load %struct.strTable*, %struct.strTable** @kids, align 8
  %elems = getelementptr inbounds %struct.strTable, %struct.strTable* %29, i32 0, i32 0
  %30 = load %struct.list*, %struct.list** %elems, align 8
  store %struct.list* %30, %struct.list** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %31 = load %struct.list*, %struct.list** %e, align 8
  %tobool = icmp ne %struct.list* %31, null
  br i1 %tobool, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %32 = load %struct.list*, %struct.list** %e, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %32, i32 0, i32 0
  %33 = load i8*, i8** %x, align 8
  %34 = bitcast i8* %33 to %struct.strTableElement*
  store %struct.strTableElement* %34, %struct.strTableElement** %el, align 8
  %35 = load %struct.strTableElement*, %struct.strTableElement** %el, align 8
  %erulenos = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %35, i32 0, i32 1
  %36 = load %struct.intlist*, %struct.intlist** %erulenos, align 8
  store %struct.intlist* %36, %struct.intlist** %r, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %37 = load %struct.intlist*, %struct.intlist** %r, align 8
  %tobool14 = icmp ne %struct.intlist* %37, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %38 = load %struct.intlist*, %struct.intlist** %r, align 8
  %x16 = getelementptr inbounds %struct.intlist, %struct.intlist* %38, i32 0, i32 0
  %39 = load i32, i32* %x16, align 4
  store i32 %39, i32* %i, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %41 = load i32, i32* %i, align 4
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %42 = load %struct.intlist*, %struct.intlist** %r, align 8
  %next = getelementptr inbounds %struct.intlist, %struct.intlist* %42, i32 0, i32 1
  %43 = load %struct.intlist*, %struct.intlist** %next, align 8
  store %struct.intlist* %43, %struct.intlist** %r, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %45 = load %struct.strTableElement*, %struct.strTableElement** %el, align 8
  %str = getelementptr inbounds %struct.strTableElement, %struct.strTableElement* %45, i32 0, i32 0
  %46 = load i8*, i8** %str, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.91, i32 0, i32 0))
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %48 = load %struct.list*, %struct.list** %e, align 8
  %next21 = getelementptr inbounds %struct.list, %struct.list* %48, i32 0, i32 1
  %49 = load %struct.list*, %struct.list** %next21, align 8
  store %struct.list* %49, %struct.list** %e, align 8
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.92, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doKids(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  %new = alloca i32, align 4
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  store i32 0, i32* @vecIndex, align 4
  store i8 0, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i64 0), align 1
  %call = call i8* @strcpy(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.176, i32 0, i32 0)) #5
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %pat = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 1
  %1 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @setVectors(%struct.patternAST* %1)
  %2 = load %struct.strTable*, %struct.strTable** @kids, align 8
  %3 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %3, i32 0, i32 4
  %4 = load %struct.rule*, %struct.rule** %rule, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %4, i32 0, i32 1
  %5 = load i32, i32* %erulenum, align 4
  %call1 = call %struct.strTableElement* @addString(%struct.strTable* %2, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i32 %5, i32* %new)
  %6 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %kids = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %6, i32 0, i32 5
  store %struct.strTableElement* %call1, %struct.strTableElement** %kids, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeOpLabel() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.93, i32 0, i32 0), i8* %2, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load i8*, i8** @prefix, align 8
  %7 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.94, i32 0, i32 0), i8* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load i8*, i8** @prefix, align 8
  %11 = load i8*, i8** @prefix, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.95, i32 0, i32 0), i8* %10, i8* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.96, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeStateLabel() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.97, i32 0, i32 0), i8* %2, i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load i8*, i8** @prefix, align 8
  %7 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.98, i32 0, i32 0), i8* %6, i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load i8*, i8** @prefix, align 8
  %11 = load i8*, i8** @prefix, align 8
  %12 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.99, i32 0, i32 0), i8* %10, i8* %11, i8* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.100, i32 0, i32 0), i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeChild() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.101, i32 0, i32 0), i8* %2, i8* %3, i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i8*, i8** @prefix, align 8
  %8 = load i8*, i8** @prefix, align 8
  %9 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.102, i32 0, i32 0), i8* %7, i8* %8, i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %12 = load i8*, i8** @prefix, align 8
  %13 = load i8*, i8** @prefix, align 8
  %14 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.103, i32 0, i32 0), i8* %12, i8* %13, i8* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.104, i32 0, i32 0))
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %18 = load i8*, i8** @prefix, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i32 0, i32 0), i8* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %21 = load i8*, i8** @prefix, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.108, i32 0, i32 0), i8* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %24 = load i8*, i8** @prefix, align 8
  %25 = load i8*, i8** @prefix, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.109, i32 0, i32 0), i8* %24, i8* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.110, i32 0, i32 0))
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeOperatorVector() #0 {
entry:
  %l = alloca %struct.list*, align 8
  %op = alloca %struct.operator*, align 8
  %op6 = alloca %struct.operator*, align 8
  store i32 0, i32* @maxOperator, align 4
  %0 = load %struct.list*, %struct.list** @operators, align 8
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
  %4 = bitcast i8* %3 to %struct.operator*
  store %struct.operator* %4, %struct.operator** %op, align 8
  %5 = load %struct.operator*, %struct.operator** %op, align 8
  %num = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 2
  %6 = load i32, i32* %num, align 4
  %7 = load i32, i32* @maxOperator, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.operator*, %struct.operator** %op, align 8
  %num1 = getelementptr inbounds %struct.operator, %struct.operator* %8, i32 0, i32 2
  %9 = load i32, i32* %num1, align 4
  store i32 %9, i32* @maxOperator, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 1
  %11 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %11, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* @maxOperator, align 4
  %add = add nsw i32 %12, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv2)
  %13 = bitcast i8* %call to %struct.operator**
  store %struct.operator** %13, %struct.operator*** @opVector, align 8
  %14 = load %struct.list*, %struct.list** @operators, align 8
  store %struct.list* %14, %struct.list** %l, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %for.end
  %15 = load %struct.list*, %struct.list** %l, align 8
  %tobool4 = icmp ne %struct.list* %15, null
  br i1 %tobool4, label %for.body.5, label %for.end.19

for.body.5:                                       ; preds = %for.cond.3
  %16 = load %struct.list*, %struct.list** %l, align 8
  %x7 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 0
  %17 = load i8*, i8** %x7, align 8
  %18 = bitcast i8* %17 to %struct.operator*
  store %struct.operator* %18, %struct.operator** %op6, align 8
  %19 = load %struct.operator*, %struct.operator** %op6, align 8
  %num8 = getelementptr inbounds %struct.operator, %struct.operator* %19, i32 0, i32 2
  %20 = load i32, i32* %num8, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx = getelementptr inbounds %struct.operator*, %struct.operator** %21, i64 %idxprom
  %22 = load %struct.operator*, %struct.operator** %arrayidx, align 8
  %tobool9 = icmp ne %struct.operator* %22, null
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %for.body.5
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = load %struct.operator*, %struct.operator** %op6, align 8
  %num11 = getelementptr inbounds %struct.operator, %struct.operator* %24, i32 0, i32 2
  %25 = load i32, i32* %num11, align 4
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.112, i32 0, i32 0), i32 %25)
  call void @exit(i32 1) #7
  unreachable

if.end.13:                                        ; preds = %for.body.5
  %26 = load %struct.operator*, %struct.operator** %op6, align 8
  %27 = load %struct.operator*, %struct.operator** %op6, align 8
  %num14 = getelementptr inbounds %struct.operator, %struct.operator* %27, i32 0, i32 2
  %28 = load i32, i32* %num14, align 4
  %idxprom15 = sext i32 %28 to i64
  %29 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx16 = getelementptr inbounds %struct.operator*, %struct.operator** %29, i64 %idxprom15
  store %struct.operator* %26, %struct.operator** %arrayidx16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.13
  %30 = load %struct.list*, %struct.list** %l, align 8
  %next18 = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 1
  %31 = load %struct.list*, %struct.list** %next18, align 8
  store %struct.list* %31, %struct.list** %l, align 8
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  ret void
}

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @makeOperators() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %tobool = icmp ne %struct.operator** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @makeOperatorVector()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.113, i32 0, i32 0), i8* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @maxOperator, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 %sub)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx = getelementptr inbounds %struct.operator*, %struct.operator** %9, i64 %idxprom
  %10 = load %struct.operator*, %struct.operator** %arrayidx, align 8
  %tobool5 = icmp ne %struct.operator* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx8 = getelementptr inbounds %struct.operator*, %struct.operator** %13, i64 %idxprom7
  %14 = load %struct.operator*, %struct.operator** %arrayidx8, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %14, i32 0, i32 0
  %15 = load i8*, i8** %name, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.115, i32 0, i32 0), i8* %15)
  br label %if.end.11

if.else:                                          ; preds = %if.end.4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.116, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %20 = load i8*, i8** @prefix, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.118, i32 0, i32 0), i8* %20)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.28, %for.end
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @maxOperator, align 4
  %cmp15 = icmp sle i32 %21, %22
  br i1 %cmp15, label %for.body.16, label %for.end.30

for.body.16:                                      ; preds = %for.cond.14
  %23 = load i32, i32* %i, align 4
  %cmp17 = icmp sgt i32 %23, 0
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %for.body.16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %25 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %25, 1
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 %sub19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %for.body.16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %27 to i64
  %28 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx23 = getelementptr inbounds %struct.operator*, %struct.operator** %28, i64 %idxprom22
  %29 = load %struct.operator*, %struct.operator** %arrayidx23, align 8
  %tobool24 = icmp ne %struct.operator* %29, null
  br i1 %tobool24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.21
  %30 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %30 to i64
  %31 = load %struct.operator**, %struct.operator*** @opVector, align 8
  %arrayidx26 = getelementptr inbounds %struct.operator*, %struct.operator** %31, i64 %idxprom25
  %32 = load %struct.operator*, %struct.operator** %arrayidx26, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %32, i32 0, i32 5
  %33 = load i32, i32* %arity, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %33, %cond.true ], [ -1, %cond.false ]
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.119, i32 0, i32 0), i32 %cond)
  br label %for.inc.28

for.inc.28:                                       ; preds = %cond.end
  %34 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %34, 1
  store i32 %inc29, i32* %i, align 4
  br label %for.cond.14

for.end.30:                                       ; preds = %for.cond.14
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.117, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %37 = load i8*, i8** @prefix, align 8
  %38 = load i32, i32* @maxOperator, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.120, i32 0, i32 0), i8* %37, i32 %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %40 = load i8*, i8** @prefix, align 8
  %41 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %41, i32 0, i32 3
  %42 = load i32, i32* %count, align 4
  %sub33 = sub nsw i32 %42, 1
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.121, i32 0, i32 0), i8* %40, i32 %sub33)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %44 = load i8*, i8** @prefix, align 8
  %45 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count35 = getelementptr inbounds %struct.mapping, %struct.mapping* %45, i32 0, i32 3
  %46 = load i32, i32* %count35, align 4
  %sub36 = sub nsw i32 %46, 1
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.122, i32 0, i32 0), i8* %44, i32 %sub36)
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeDebug() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.123, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.124, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.125, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeSimple() #0 {
entry:
  call void @makeRuleTable()
  call void @makeTables()
  call void @makeRule()
  call void @makeState()
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makeState() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.180, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %4 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.181, i32 0, i32 0), i8* %3, i32 %5, i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %8 = load i8*, i8** @prefix, align 8
  %9 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count2 = getelementptr inbounds %struct.mapping, %struct.mapping* %9, i32 0, i32 3
  %10 = load i32, i32* %count2, align 4
  %11 = load i8*, i8** @prefix, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.182, i32 0, i32 0), i8* %8, i32 %10, i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.183, i32 0, i32 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %14 = load i8*, i8** @prefix, align 8
  %15 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.184, i32 0, i32 0), i8* %14, i8* %15)
  %16 = load %struct.list*, %struct.list** @operators, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doLabel to i8* (i8*)*), %struct.list* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @startOptional() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.126, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.127, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.128, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i8*, i8** @prefix, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.127, i32 0, i32 0), i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** @prefix, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.129, i32 0, i32 0), i8* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %11 = load i8*, i8** @prefix, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.130, i32 0, i32 0), i8* %11)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %13 = load i8*, i8** @prefix, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.131, i32 0, i32 0), i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %15 = load i8*, i8** @prefix, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.132, i32 0, i32 0), i8* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i32 0, i32 0), i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.134, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %20 = load i8*, i8** @prefix, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.135, i32 0, i32 0), i8* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load i8*, i8** @prefix, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.136, i32 0, i32 0), i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeNonterminals() #0 {
entry:
  %l = alloca %struct.list*, align 8
  %nt = alloca %struct.nonterminal*, align 8
  %0 = load %struct.list*, %struct.list** @nonterminals, align 8
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
  %4 = bitcast i8* %3 to %struct.nonterminal*
  store %struct.nonterminal* %4, %struct.nonterminal** %nt, align 8
  %5 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %5, i32 0, i32 1
  %6 = load i32, i32* %num, align 4
  %7 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %9 = load i8*, i8** @prefix, align 8
  %10 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %10, i32 0, i32 0
  %11 = load i8*, i8** %name, align 8
  %12 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num1 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %12, i32 0, i32 1
  %13 = load i32, i32* %num1, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.137, i32 0, i32 0), i8* %9, i8* %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %14, i32 0, i32 1
  %15 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %15, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %18 = load i32, i32* @last_user_nonterminal, align 4
  %sub = sub nsw i32 %18, 1
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.138, i32 0, i32 0), i8* %17, i32 %sub)
  ret void
}

; Function Attrs: nounwind uwtable
define void @makeNonterminalArray() #0 {
entry:
  %i = alloca i32, align 4
  %l = alloca %struct.list*, align 8
  %nta = alloca %struct.nonterminal**, align 8
  %nt = alloca %struct.nonterminal*, align 8
  %0 = load i32, i32* @last_user_nonterminal, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %1 = bitcast i8* %call to %struct.nonterminal**
  store %struct.nonterminal** %1, %struct.nonterminal*** %nta, align 8
  %2 = load %struct.list*, %struct.list** @nonterminals, align 8
  store %struct.list* %2, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list*, %struct.list** %l, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  %5 = load i8*, i8** %x, align 8
  %6 = bitcast i8* %5 to %struct.nonterminal*
  store %struct.nonterminal* %6, %struct.nonterminal** %nt, align 8
  %7 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %7, i32 0, i32 1
  %8 = load i32, i32* %num, align 4
  %9 = load i32, i32* @last_user_nonterminal, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %11 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num3 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %11, i32 0, i32 1
  %12 = load i32, i32* %num3, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.nonterminal**, %struct.nonterminal*** %nta, align 8
  %arrayidx = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %13, i64 %idxprom
  store %struct.nonterminal* %10, %struct.nonterminal** %arrayidx, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %14, i32 0, i32 1
  %15 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %15, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %17 = load i8*, i8** @prefix, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.139, i32 0, i32 0), i8* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.140, i32 0, i32 0))
  store i32 1, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.13, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* @last_user_nonterminal, align 4
  %cmp7 = icmp slt i32 %19, %20
  br i1 %cmp7, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.6
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load %struct.nonterminal**, %struct.nonterminal*** %nta, align 8
  %arrayidx11 = getelementptr inbounds %struct.nonterminal*, %struct.nonterminal** %23, i64 %idxprom10
  %24 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx11, align 8
  %name = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %24, i32 0, i32 0
  %25 = load i8*, i8** %name, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.141, i32 0, i32 0), i8* %25)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.body.9
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.142, i32 0, i32 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %29 = load %struct.nonterminal**, %struct.nonterminal*** %nta, align 8
  %30 = bitcast %struct.nonterminal** %29 to i8*
  call void @zfree(i8* %30)
  ret void
}

declare void @zfree(i8*) #1

; Function Attrs: nounwind uwtable
define void @endOptional() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.143, i32 0, i32 0), i8* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @startBurm() #0 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load i8*, i8** @prefix, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.144, i32 0, i32 0), i8* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %3 = load i8*, i8** @prefix, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.145, i32 0, i32 0), i8* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %5 = load i8*, i8** @prefix, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.146, i32 0, i32 0), i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0))
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.147, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.148, i32 0, i32 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.149, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %13 = load i8*, i8** @prefix, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.150, i32 0, i32 0), i8* %13)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %16 = load i8*, i8** @prefix, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.151, i32 0, i32 0), i8* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @reportDiagnostics() #0 {
entry:
  %l = alloca %struct.list*, align 8
  %op = alloca %struct.operator*, align 8
  %r = alloca %struct.rule*, align 8
  %0 = load %struct.list*, %struct.list** @operators, align 8
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
  %4 = bitcast i8* %3 to %struct.operator*
  store %struct.operator* %4, %struct.operator** %op, align 8
  %5 = load %struct.operator*, %struct.operator** %op, align 8
  %ref = getelementptr inbounds %struct.operator, %struct.operator* %5, i32 0, i32 1
  %bf.load = load i8, i8* %ref, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load %struct.operator*, %struct.operator** %op, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %7, i32 0, i32 0
  %8 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.152, i32 0, i32 0), i8* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %9, i32 0, i32 1
  %10 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %10, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %11, %struct.list** %l, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.13, %for.end
  %12 = load %struct.list*, %struct.list** %l, align 8
  %tobool3 = icmp ne %struct.list* %12, null
  br i1 %tobool3, label %for.body.4, label %for.end.15

for.body.4:                                       ; preds = %for.cond.2
  %13 = load %struct.list*, %struct.list** %l, align 8
  %x5 = getelementptr inbounds %struct.list, %struct.list* %13, i32 0, i32 0
  %14 = load i8*, i8** %x5, align 8
  %15 = bitcast i8* %14 to %struct.rule*
  store %struct.rule* %15, %struct.rule** %r, align 8
  %16 = load %struct.rule*, %struct.rule** %r, align 8
  %used = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 6
  %bf.load6 = load i8, i8* %used, align 8
  %bf.clear7 = and i8 %bf.load6, 1
  %bf.cast8 = zext i8 %bf.clear7 to i32
  %tobool9 = icmp ne i32 %bf.cast8, 0
  br i1 %tobool9, label %if.end.12, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.4
  %17 = load %struct.rule*, %struct.rule** %r, align 8
  %num = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 2
  %18 = load i32, i32* %num, align 4
  %19 = load i32, i32* @max_ruleAST, align 4
  %cmp = icmp slt i32 %18, %19
  br i1 %cmp, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %land.lhs.true
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load %struct.rule*, %struct.rule** %r, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %21, i32 0, i32 1
  %22 = load i32, i32* %erulenum, align 4
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.153, i32 0, i32 0), i32 %22)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %land.lhs.true, %for.body.4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.12
  %23 = load %struct.list*, %struct.list** %l, align 8
  %next14 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 1
  %24 = load %struct.list*, %struct.list** %next14, align 8
  store %struct.list* %24, %struct.list** %l, align 8
  br label %for.cond.2

for.end.15:                                       ; preds = %for.cond.2
  %25 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %pmap = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %25, i32 0, i32 4
  %26 = load %struct.plankMap*, %struct.plankMap** %pmap, align 8
  %tobool16 = icmp ne %struct.plankMap* %26, null
  br i1 %tobool16, label %if.end.20, label %if.then.17

if.then.17:                                       ; preds = %for.end.15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %name18 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %28, i32 0, i32 0
  %29 = load i8*, i8** %name18, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.154, i32 0, i32 0), i8* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %for.end.15
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load %struct.nonterminal*, %struct.nonterminal** @start, align 8
  %name21 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %31, i32 0, i32 0
  %32 = load i8*, i8** %name21, align 8
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.155, i32 0, i32 0), i8* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %34, i32 0, i32 3
  %35 = load i32, i32* %count, align 4
  %sub = sub nsw i32 %35, 1
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.156, i32 0, i32 0), i32 %sub)
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* @max_nonterminal, align 4
  %sub24 = sub nsw i32 %37, 1
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.157, i32 0, i32 0), i32 %sub24)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = load i32, i32* @last_user_nonterminal, align 4
  %sub26 = sub nsw i32 %39, 1
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.158, i32 0, i32 0), i32 %sub26)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* @max_rule, align 4
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.159, i32 0, i32 0), i32 %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i32, i32* @max_ruleAST, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.160, i32 0, i32 0), i32 %43)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @makeIndex_Map(%struct.dimension* %d) #0 {
entry:
  %d.addr = alloca %struct.dimension*, align 8
  %s = alloca i32, align 4
  store %struct.dimension* %d, %struct.dimension** %d.addr, align 8
  store i32 0, i32* %s, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %s, align 4
  %1 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %1, i32 0, i32 3
  %2 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %s, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end.6

if.then:                                          ; preds = %for.body
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %5 = load i32, i32* %s, align 4
  %rem = srem i32 %5, 10
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %7 = load i32, i32* %s, align 4
  %sub = sub nsw i32 %7, 10
  %8 = load i32, i32* %s, align 4
  %sub4 = sub nsw i32 %8, 1
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.164, i32 0, i32 0), i32 %sub, i32 %sub4)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %10 = load i32, i32* %s, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %11, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 1
  %12 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %12, i64 %idxprom
  %13 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i32 0, i32 0
  %14 = load i32, i32* %num, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %15, i32 0, i32 2
  %16 = load %struct.mapping*, %struct.mapping** %map, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %16, i32 0, i32 4
  %17 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx8 = getelementptr inbounds %struct.item_set*, %struct.item_set** %17, i64 %idxprom7
  %18 = load %struct.item_set*, %struct.item_set** %arrayidx8, align 8
  %num9 = getelementptr inbounds %struct.item_set, %struct.item_set* %18, i32 0, i32 0
  %19 = load i32, i32* %num9, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 %19)
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %20 = load i32, i32* %s, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %s, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  ret void
}

declare %struct.item_set** @transLval(%struct.table*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @doVector(%struct.ruleAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.ruleAST*, align 8
  store %struct.ruleAST* %ast, %struct.ruleAST** %ast.addr, align 8
  %0 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %0, i32 0, i32 4
  %1 = load %struct.rule*, %struct.rule** %rule, align 8
  %erulenum = getelementptr inbounds %struct.rule, %struct.rule* %1, i32 0, i32 1
  %2 = load i32, i32* %erulenum, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %3, i64 %idxprom
  %4 = load %struct.ruleAST*, %struct.ruleAST** %arrayidx, align 8
  %tobool = icmp ne %struct.ruleAST* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule1 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %6, i32 0, i32 4
  %7 = load %struct.rule*, %struct.rule** %rule1, align 8
  %erulenum2 = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 1
  %8 = load i32, i32* %erulenum2, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.169, i32 0, i32 0), i32 %8)
  call void @exit(i32 1) #7
  unreachable

if.end:                                           ; preds = %entry
  %9 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %10 = load %struct.ruleAST*, %struct.ruleAST** %ast.addr, align 8
  %rule3 = getelementptr inbounds %struct.ruleAST, %struct.ruleAST* %10, i32 0, i32 4
  %11 = load %struct.rule*, %struct.rule** %rule3, align 8
  %erulenum4 = getelementptr inbounds %struct.rule, %struct.rule* %11, i32 0, i32 1
  %12 = load i32, i32* %erulenum4, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.ruleAST**, %struct.ruleAST*** @pVector, align 8
  %arrayidx6 = getelementptr inbounds %struct.ruleAST*, %struct.ruleAST** %13, i64 %idxprom5
  store %struct.ruleAST* %9, %struct.ruleAST** %arrayidx6, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @layoutNts(%struct.patternAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.patternAST*, align 8
  %out = alloca [30 x i8], align 16
  store %struct.patternAST* %ast, %struct.patternAST** %ast.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i32 0, i32 0
  %1 = load %struct.symbol*, %struct.symbol** %sym, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %1, i32 0, i32 1
  %2 = load i32, i32* %tag, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog.15

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %out, i32 0, i32 0
  %3 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym1 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %3, i32 0, i32 0
  %4 = load %struct.symbol*, %struct.symbol** %sym1, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %4, i32 0, i32 2
  %nt = bitcast %union.anon* %u to %struct.nonterminal**
  %5 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %5, i32 0, i32 1
  %6 = load i32, i32* %num, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.172, i32 0, i32 0), i32 %6) #5
  %arraydecay2 = getelementptr inbounds [30 x i8], [30 x i8]* %out, i32 0, i32 0
  %call3 = call i8* @strcat(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i8* %arraydecay2) #5
  br label %sw.epilog.15

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym5 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %7, i32 0, i32 0
  %8 = load %struct.symbol*, %struct.symbol** %sym5, align 8
  %u6 = getelementptr inbounds %struct.symbol, %struct.symbol* %8, i32 0, i32 2
  %op = bitcast %union.anon* %u6 to %struct.operator**
  %9 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %9, i32 0, i32 5
  %10 = load i32, i32* %arity, align 4
  switch i32 %10, label %sw.default.7 [
    i32 0, label %sw.bb.8
    i32 1, label %sw.bb.9
    i32 2, label %sw.bb.10
  ]

sw.default.7:                                     ; preds = %sw.bb.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %sw.bb.4
  br label %sw.epilog.15

sw.bb.9:                                          ; preds = %sw.bb.4
  %11 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %11, i32 0, i32 2
  %12 = load %struct.list*, %struct.list** %children, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %12, i32 0, i32 0
  %13 = load i8*, i8** %x, align 8
  %14 = bitcast i8* %13 to %struct.patternAST*
  call void @layoutNts(%struct.patternAST* %14)
  br label %sw.epilog.15

sw.bb.10:                                         ; preds = %sw.bb.4
  %15 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children11 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %15, i32 0, i32 2
  %16 = load %struct.list*, %struct.list** %children11, align 8
  %x12 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 0
  %17 = load i8*, i8** %x12, align 8
  %18 = bitcast i8* %17 to %struct.patternAST*
  call void @layoutNts(%struct.patternAST* %18)
  %19 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children13 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %19, i32 0, i32 2
  %20 = load %struct.list*, %struct.list** %children13, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %20, i32 0, i32 1
  %21 = load %struct.list*, %struct.list** %next, align 8
  %x14 = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 0
  %22 = load i8*, i8** %x14, align 8
  %23 = bitcast i8* %22 to %struct.patternAST*
  call void @layoutNts(%struct.patternAST* %23)
  br label %sw.epilog.15

sw.epilog:                                        ; preds = %sw.default.7
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %sw.bb, %sw.bb.8, %sw.bb.9, %sw.bb.10, %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @printPatternAST(%struct.patternAST* %p) #0 {
entry:
  %p.addr = alloca %struct.patternAST*, align 8
  %l = alloca %struct.list*, align 8
  %pat = alloca %struct.patternAST*, align 8
  store %struct.patternAST* %p, %struct.patternAST** %p.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %tobool = icmp ne %struct.patternAST* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %2 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %op = getelementptr inbounds %struct.patternAST, %struct.patternAST* %2, i32 0, i32 1
  %3 = load i8*, i8** %op, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0), i8* %3)
  %4 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %4, i32 0, i32 2
  %5 = load %struct.list*, %struct.list** %children, align 8
  %tobool1 = icmp ne %struct.list* %5, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.then
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.174, i32 0, i32 0))
  %7 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children4 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %7, i32 0, i32 2
  %8 = load %struct.list*, %struct.list** %children4, align 8
  store %struct.list* %8, %struct.list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %9 = load %struct.list*, %struct.list** %l, align 8
  %tobool5 = icmp ne %struct.list* %9, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.list*, %struct.list** %l, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %10, i32 0, i32 0
  %11 = load i8*, i8** %x, align 8
  %12 = bitcast i8* %11 to %struct.patternAST*
  store %struct.patternAST* %12, %struct.patternAST** %pat, align 8
  %13 = load %struct.list*, %struct.list** %l, align 8
  %14 = load %struct.patternAST*, %struct.patternAST** %p.addr, align 8
  %children6 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %14, i32 0, i32 2
  %15 = load %struct.list*, %struct.list** %children6, align 8
  %cmp = icmp ne %struct.list* %13, %15
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body
  %17 = load %struct.patternAST*, %struct.patternAST** %pat, align 8
  call void @printPatternAST(%struct.patternAST* %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.list*, %struct.list** %l, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 1
  %19 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %19, %struct.list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setVectors(%struct.patternAST* %ast) #0 {
entry:
  %ast.addr = alloca %struct.patternAST*, align 8
  %old = alloca [4000 x i8], align 16
  store %struct.patternAST* %ast, %struct.patternAST** %ast.addr, align 8
  %0 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym = getelementptr inbounds %struct.patternAST, %struct.patternAST* %0, i32 0, i32 0
  %1 = load %struct.symbol*, %struct.symbol** %sym, align 8
  %tag = getelementptr inbounds %struct.symbol, %struct.symbol* %1, i32 0, i32 1
  %2 = load i32, i32* %tag, align 4
  switch i32 %2, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.3
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog.27

sw.bb:                                            ; preds = %entry
  %arraydecay = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %3 = load i32, i32* @vecIndex, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.177, i32 0, i32 0), i32 %3, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0)) #5
  %arraydecay1 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call2 = call i8* @strcat(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @cumBuf, i32 0, i32 0), i8* %arraydecay1) #5
  %4 = load i32, i32* @vecIndex, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @vecIndex, align 4
  br label %sw.epilog.27

sw.bb.3:                                          ; preds = %entry
  %5 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %sym4 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %5, i32 0, i32 0
  %6 = load %struct.symbol*, %struct.symbol** %sym4, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %6, i32 0, i32 2
  %op = bitcast %union.anon* %u to %struct.operator**
  %7 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %7, i32 0, i32 5
  %8 = load i32, i32* %arity, align 4
  switch i32 %8, label %sw.default.5 [
    i32 0, label %sw.bb.6
    i32 1, label %sw.bb.7
    i32 2, label %sw.bb.14
  ]

sw.default.5:                                     ; preds = %sw.bb.3
  br label %sw.epilog

sw.bb.6:                                          ; preds = %sw.bb.3
  br label %sw.epilog.27

sw.bb.7:                                          ; preds = %sw.bb.3
  %arraydecay8 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call9 = call i8* @strcpy(i8* %arraydecay8, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0)) #5
  %9 = load i8*, i8** @prefix, align 8
  %arraydecay10 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i32 0, i32 0), i8* %9, i8* %arraydecay10) #5
  %10 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children = getelementptr inbounds %struct.patternAST, %struct.patternAST* %10, i32 0, i32 2
  %11 = load %struct.list*, %struct.list** %children, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 0
  %12 = load i8*, i8** %x, align 8
  %13 = bitcast i8* %12 to %struct.patternAST*
  call void @setVectors(%struct.patternAST* %13)
  %arraydecay12 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call13 = call i8* @strcpy(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* %arraydecay12) #5
  br label %sw.epilog.27

sw.bb.14:                                         ; preds = %sw.bb.3
  %arraydecay15 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call16 = call i8* @strcpy(i8* %arraydecay15, i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0)) #5
  %14 = load i8*, i8** @prefix, align 8
  %arraydecay17 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.178, i32 0, i32 0), i8* %14, i8* %arraydecay17) #5
  %15 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children19 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %15, i32 0, i32 2
  %16 = load %struct.list*, %struct.list** %children19, align 8
  %x20 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 0
  %17 = load i8*, i8** %x20, align 8
  %18 = bitcast i8* %17 to %struct.patternAST*
  call void @setVectors(%struct.patternAST* %18)
  %19 = load i8*, i8** @prefix, align 8
  %arraydecay21 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.179, i32 0, i32 0), i8* %19, i8* %arraydecay21) #5
  %20 = load %struct.patternAST*, %struct.patternAST** %ast.addr, align 8
  %children23 = getelementptr inbounds %struct.patternAST, %struct.patternAST* %20, i32 0, i32 2
  %21 = load %struct.list*, %struct.list** %children23, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 1
  %22 = load %struct.list*, %struct.list** %next, align 8
  %x24 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 0
  %23 = load i8*, i8** %x24, align 8
  %24 = bitcast i8* %23 to %struct.patternAST*
  call void @setVectors(%struct.patternAST* %24)
  %arraydecay25 = getelementptr inbounds [4000 x i8], [4000 x i8]* %old, i32 0, i32 0
  %call26 = call i8* @strcpy(i8* getelementptr inbounds ([4000 x i8], [4000 x i8]* @vecBuf, i32 0, i32 0), i8* %arraydecay25) #5
  br label %sw.epilog.27

sw.epilog:                                        ; preds = %sw.default.5
  br label %sw.epilog.27

sw.epilog.27:                                     ; preds = %sw.bb, %sw.bb.6, %sw.bb.7, %sw.bb.14, %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @doLabel(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %1 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %num = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 2
  %2 = load i32, i32* %num, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 %2)
  %3 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %3, i32 0, i32 5
  %4 = load i32, i32* %arity, align 4
  switch i32 %4, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.7
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %6 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 6
  %7 = load %struct.table*, %struct.table** %table, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %7, i32 0, i32 4
  %8 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %8, i64 0
  %9 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num1 = getelementptr inbounds %struct.item_set, %struct.item_set* %9, i32 0, i32 0
  %10 = load i32, i32* %num1, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i32 %10)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table4 = getelementptr inbounds %struct.operator, %struct.operator* %11, i32 0, i32 6
  %12 = load %struct.table*, %struct.table** %table4, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %12, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %rules, align 8
  %tobool = icmp ne %struct.list* %13, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %15 = load i8*, i8** @prefix, align 8
  %16 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name = getelementptr inbounds %struct.operator, %struct.operator* %16, i32 0, i32 0
  %17 = load i8*, i8** %name, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.186, i32 0, i32 0), i8* %15, i8* %17)
  br label %if.end

if.else:                                          ; preds = %sw.bb.3
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %19 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %table8 = getelementptr inbounds %struct.operator, %struct.operator* %19, i32 0, i32 6
  %20 = load %struct.table*, %struct.table** %table8, align 8
  %rules9 = getelementptr inbounds %struct.table, %struct.table* %20, i32 0, i32 1
  %21 = load %struct.list*, %struct.list** %rules9, align 8
  %tobool10 = icmp ne %struct.list* %21, null
  br i1 %tobool10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %sw.bb.7
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %23 = load i8*, i8** @prefix, align 8
  %24 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name12 = getelementptr inbounds %struct.operator, %struct.operator* %24, i32 0, i32 0
  %25 = load i8*, i8** %name12, align 8
  %26 = load i8*, i8** @prefix, align 8
  %27 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name13 = getelementptr inbounds %struct.operator, %struct.operator* %27, i32 0, i32 0
  %28 = load i8*, i8** %name13, align 8
  %29 = load i8*, i8** @prefix, align 8
  %30 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %name14 = getelementptr inbounds %struct.operator, %struct.operator* %30, i32 0, i32 0
  %31 = load i8*, i8** %name14, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.187, i32 0, i32 0), i8* %23, i8* %25, i8* %26, i8* %28, i8* %29, i8* %31)
  br label %if.end.18

if.else.16:                                       ; preds = %sw.bb.7
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @outfile, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i32 0, i32 0), i32 0)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.18, %if.end, %sw.bb, %sw.default
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
