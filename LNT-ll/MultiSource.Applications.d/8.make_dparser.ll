; ModuleID = './MultiSource.Applications.d/8.make_dparser.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ArgumentState = type { i8**, i32, i8*, %struct.ArgumentDescription* }
%struct.ArgumentDescription = type { i8*, i8, i8*, i8*, i8*, i8*, void (%struct.ArgumentState*, i8*)* }
%struct.D_ParserTables = type { i32, %struct.D_State*, i16*, i32, i32, %struct.D_Symbol*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i32, %struct.D_Pass*, i32 }
%struct.D_State = type { i8*, i32, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.D_Shift**, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i8*, i8, i8, i8, i8*, %struct.D_Shift***, i32 }
%struct.anon.9 = type { i32, %struct.D_Reduction** }
%struct.D_Reduction = type { i16, i16, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)*, i16, i16, i32, i32, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** }
%struct.D_Parser = type { %struct.Grammar*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, %struct.D_Scope*, void (%struct.D_Parser*)*, %struct.D_ParseNode* (%struct.D_Parser*, i32, %struct.D_ParseNode**)*, void (%struct.D_ParseNode*)*, %struct.d_loc_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.Grammar = type { i8*, %struct.anon, %struct.anon.5, %struct.anon.6, %struct.Code, %struct.Code*, i32, %struct.anon.7, %struct.anon.8, i8*, i32, i32, i32, i32, i32, i32, i32, [256 x i8], i32, i32, i32, i32, i32, %struct.Production*, %struct.Rule*, %struct.Elem*, i32, i32, i32, i32 }
%struct.anon = type { i32, i32, %struct.Production**, [3 x %struct.Production*] }
%struct.anon.5 = type { i32, i32, %struct.Term**, [3 x %struct.Term*] }
%struct.Term = type { i32, i32, i32, i32, i32, i8*, i32, i8, %struct.Production* }
%struct.anon.6 = type { i32, i32, %struct.State**, [3 x %struct.State*] }
%struct.State = type { i32, i64, %struct.anon.3, %struct.anon.4, %struct.VecGoto, %struct.VecAction, %struct.VecAction, %struct.VecHint, %struct.VecHint, %struct.Scanner, i8, i8*, i32, %struct.State*, %struct.State*, %struct.Rule*, %struct.Rule* }
%struct.anon.3 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.4 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
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
%struct.Code = type { i8*, i32 }
%struct.anon.7 = type { i32, i32, %struct.Declaration**, [3 x %struct.Declaration*] }
%struct.Declaration = type { %struct.Elem*, i32, i32 }
%struct.anon.8 = type { i32, i32, %struct.D_Pass**, [3 x %struct.D_Pass*] }
%struct.Production = type { i8*, i32, %struct.anon.0, i32, i8, %struct.Rule*, [8 x %struct.Production*], [8 x %struct.Declaration*], %struct.State*, %struct.Elem*, %struct.Term*, %struct.Production* }
%struct.anon.0 = type { i32, i32, %struct.Rule**, [3 x %struct.Rule*] }
%struct.Rule = type { i32, %struct.Production*, i32, i32, i32, i32, %struct.anon.1, %struct.Elem*, %struct.Code, %struct.Code, %struct.anon.2, i32, %struct.Rule* }
%struct.anon.1 = type { i32, i32, %struct.Elem**, [3 x %struct.Elem*] }
%struct.anon.2 = type { i32, i32, %struct.Code**, [3 x %struct.Code*] }
%struct.Elem = type { i32, i32, %struct.Rule*, %union.anon }
%union.anon = type { %struct.Unresolved }
%struct.Unresolved = type { i8*, i32 }
%struct.D_Scope = type { i8, %struct.D_Sym*, %struct.D_SymHash*, %struct.D_Sym*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope*, %struct.D_Scope* }
%struct.D_SymHash = type opaque
%struct.D_Sym = type { i8*, i32, i32, %struct.D_Sym*, %struct.D_Sym*, i32 }
%struct.D_ParseNode = type { i32, %struct.d_loc_t, i8*, i8*, %struct.D_Scope*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, %struct.Grammar*, %struct.ParseNode_User }
%struct.ParseNode_User = type { %struct.Production*, %struct.Rule*, %struct.Elem*, i32 }
%struct.d_loc_t = type { i8*, i8*, i32, i32, i32 }
%struct.anon.10 = type { i32, %struct.D_RightEpsilonHint* }
%struct.D_RightEpsilonHint = type { i16, i16, %struct.D_Reduction* }
%struct.anon.11 = type { i32, %struct.D_ErrorRecoveryHint* }
%struct.D_ErrorRecoveryHint = type { i16, i16, i8* }
%struct.D_Shift = type { i16, i8, i8, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* }
%struct.D_Symbol = type { i32, i8*, i32 }
%struct.D_Pass = type { i8*, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@arg_state = internal global %struct.ArgumentState { i8** null, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct.ArgumentDescription* getelementptr inbounds ([15 x %struct.ArgumentDescription], [15 x %struct.ArgumentDescription]* @arg_desc, i32 0, i32 0) }, align 8
@set_op_priority_from_rule = internal global i32 0, align 4
@right_recursive_BNF = internal global i32 0, align 4
@states_for_whitespace = internal global i32 1, align 4
@states_for_all_nterms = internal global i32 0, align 4
@tokenizer = internal global i32 0, align 4
@longest_match = internal global i32 0, align 4
@grammar_ident = internal global [256 x i8] c"gram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@scanner_blocks = internal global i32 4, align 4
@scanner_block_size = internal global i32 0, align 4
@write_line_directives = internal global i32 1, align 4
@write_header = internal global i32 -1, align 4
@token_type = internal global i32 0, align 4
@parser_tables_dparser_gram = external global %struct.D_ParserTables, align 8
@.str = private unnamed_addr constant [29 x i8] c"unable to parse grammar '%s'\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to load grammar '%s'\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to write C tables '%s'\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@arg_desc = internal global [15 x %struct.ArgumentDescription] [%struct.ArgumentDescription { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8 108, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @longest_match to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), i8 84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @tokenizer to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8 72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (i32* @write_header to i8*), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i8 116, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (i32* @token_type to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0), i8 67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @states_for_whitespace to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8 65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @states_for_all_nterms to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i8 105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([256 x i8], [256 x i8]* @grammar_ident, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8 98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8* bitcast (i32* @scanner_blocks to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8 112, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @set_op_priority_from_rule to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i32 0, i32 0), i8 114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @right_recursive_BNF to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i8 76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* bitcast (i32* @write_line_directives to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.39, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* bitcast (i32* @verbose_level to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i8 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.42, i32 0, i32 0), i8* bitcast (i32* @debug_level to i8*), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), void (%struct.ArgumentState*, i8*)* null }, %struct.ArgumentDescription { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8 104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i8* null, i8* null, i8* null, void (%struct.ArgumentState*, i8*)* @help }, %struct.ArgumentDescription zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [14 x i8] c"longest_match\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Use Longest Match Rule for Tokens\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"D_MAKE_LONGEST_MATCH\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"tokenizer\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Tokenizer for START\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"D_MAKE_PARSER_TOKENIZER\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"write_header\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Write Header (-1:if not empty)\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"D_MAKE_PARSER_HEADER\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"token_type\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Token Type (0:define, 1:enum)\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"D_MAKE_PARSER_TOKEN\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"whitespace_states\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Compute Whitespace States\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"D_MAKE_PARSER_WHITESPACE\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"all_states\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Compute States For All NTERMs\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"D_MAKE_PARSER_ALL_NTERMS\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"grammar_ident\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"Grammar Identifier\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"S255\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"D_MAKE_PARSER_GRAMMAR_IDENT\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"scanner_blocks\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Scanner Blocks\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"D_MAKE_PARSER_SCANNER_BLOCKS\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"op_pri_from_rule\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"Set Operator Priority From Rule\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"D_MAKE_PARSER_SET_PRIORITY\00", align 1
@.str.34 = private unnamed_addr constant [18 x i8] c"right_recurse_BNF\00", align 1
@.str.35 = private unnamed_addr constant [28 x i8] c"Use Right Recursion For */+\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"D_MAKE_PARSER_RIGHT_RECURSIVE_BNF\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"write_lines\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Write #line(s)\00", align 1
@.str.39 = private unnamed_addr constant [36 x i8] c"D_MAKE_PARSER_WRITE_LINE_DIRECTIVES\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"Verbose\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@verbose_level = external global i32, align 4
@.str.43 = private unnamed_addr constant [22 x i8] c"D_MAKE_PARSER_VERBOSE\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@debug_level = external global i32, align 4
@.str.46 = private unnamed_addr constant [20 x i8] c"D_MAKE_PARSER_DEBUG\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Help\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [26 x i8] c"D Make Parser Version %s \00", align 1
@.str.50 = private unnamed_addr constant [38 x i8] c"Copyright (c) 2002-2003 John Plevyak\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %grammar_pathname = alloca i8*, align 8
  %g = alloca %struct.Grammar*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i8**, i8*** %argv.addr, align 8
  call void @process_args(%struct.ArgumentState* @arg_state, i8** %0)
  %1 = load i32, i32* getelementptr inbounds (%struct.ArgumentState, %struct.ArgumentState* @arg_state, i32 0, i32 1), align 4
  %cmp = icmp ne i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @help(%struct.ArgumentState* @arg_state, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8**, i8*** getelementptr inbounds (%struct.ArgumentState, %struct.ArgumentState* @arg_state, i32 0, i32 0), align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %grammar_pathname, align 8
  %4 = load i8*, i8** %grammar_pathname, align 8
  %call = call %struct.Grammar* @new_D_Grammar(i8* %4)
  store %struct.Grammar* %call, %struct.Grammar** %g, align 8
  %5 = load i32, i32* @set_op_priority_from_rule, align 4
  %6 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %set_op_priority_from_rule = getelementptr inbounds %struct.Grammar, %struct.Grammar* %6, i32 0, i32 10
  store i32 %5, i32* %set_op_priority_from_rule, align 4
  %7 = load i32, i32* @right_recursive_BNF, align 4
  %8 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %right_recursive_BNF = getelementptr inbounds %struct.Grammar, %struct.Grammar* %8, i32 0, i32 11
  store i32 %7, i32* %right_recursive_BNF, align 4
  %9 = load i32, i32* @states_for_whitespace, align 4
  %10 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %states_for_whitespace = getelementptr inbounds %struct.Grammar, %struct.Grammar* %10, i32 0, i32 12
  store i32 %9, i32* %states_for_whitespace, align 4
  %11 = load i32, i32* @states_for_all_nterms, align 4
  %12 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %states_for_all_nterms = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 13
  store i32 %11, i32* %states_for_all_nterms, align 4
  %13 = load i32, i32* @tokenizer, align 4
  %14 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %tokenizer = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 14
  store i32 %13, i32* %tokenizer, align 4
  %15 = load i32, i32* @longest_match, align 4
  %16 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %longest_match = getelementptr inbounds %struct.Grammar, %struct.Grammar* %16, i32 0, i32 15
  store i32 %15, i32* %longest_match, align 4
  %17 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %grammar_ident = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 17
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %grammar_ident, i32 0, i32 0
  %call1 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @grammar_ident, i32 0, i32 0)) #3
  %18 = load i32, i32* @scanner_blocks, align 4
  %19 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %scanner_blocks = getelementptr inbounds %struct.Grammar, %struct.Grammar* %19, i32 0, i32 18
  store i32 %18, i32* %scanner_blocks, align 4
  %20 = load i32, i32* @scanner_block_size, align 4
  %21 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %scanner_block_size = getelementptr inbounds %struct.Grammar, %struct.Grammar* %21, i32 0, i32 19
  store i32 %20, i32* %scanner_block_size, align 4
  %22 = load i32, i32* @write_line_directives, align 4
  %23 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %write_line_directives = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 20
  store i32 %22, i32* %write_line_directives, align 4
  %24 = load i32, i32* @write_header, align 4
  %25 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %write_header = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 21
  store i32 %24, i32* %write_header, align 4
  %26 = load i32, i32* @token_type, align 4
  %27 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %token_type = getelementptr inbounds %struct.Grammar, %struct.Grammar* %27, i32 0, i32 22
  store i32 %26, i32* %token_type, align 4
  %28 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %call2 = call i32 @parse_grammar(%struct.Grammar* %28, %struct.D_ParserTables* @parser_tables_dparser_gram, i32 32)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %29 = load i8*, i8** %grammar_pathname, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i8* %29)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %30 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %call6 = call i32 @build_grammar(%struct.Grammar* %30)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  %31 = load i8*, i8** %grammar_pathname, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0), i8* %31)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  %32 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  %call10 = call i32 @write_ctables(%struct.Grammar* %32)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %33 = load i8*, i8** %grammar_pathname, align 8
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i8* %33)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.9
  %34 = load %struct.Grammar*, %struct.Grammar** %g, align 8
  call void @free_D_Grammar(%struct.Grammar* %34)
  ret i32 0
}

declare void @process_args(%struct.ArgumentState*, i8**) #1

; Function Attrs: nounwind uwtable
define internal void @help(%struct.ArgumentState* %arg_state, i8* %arg_unused) #0 {
entry:
  %arg_state.addr = alloca %struct.ArgumentState*, align 8
  %arg_unused.addr = alloca i8*, align 8
  %ver = alloca [30 x i8], align 16
  store %struct.ArgumentState* %arg_state, %struct.ArgumentState** %arg_state.addr, align 8
  store i8* %arg_unused, i8** %arg_unused.addr, align 8
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %ver, i32 0, i32 0
  call void @d_version(i8* %arraydecay)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %ver, i32 0, i32 0
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* %arraydecay1)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.50, i32 0, i32 0))
  %2 = load %struct.ArgumentState*, %struct.ArgumentState** %arg_state.addr, align 8
  %3 = load i8*, i8** %arg_unused.addr, align 8
  call void @usage(%struct.ArgumentState* %2, i8* %3)
  ret void
}

declare %struct.Grammar* @new_D_Grammar(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @parse_grammar(%struct.Grammar*, %struct.D_ParserTables*, i32) #1

declare void @d_fail(i8*, ...) #1

declare i32 @build_grammar(%struct.Grammar*) #1

declare i32 @write_ctables(%struct.Grammar*) #1

declare void @free_D_Grammar(%struct.Grammar*) #1

declare void @d_version(i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @usage(%struct.ArgumentState*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
