; ModuleID = './MultiSource.Applications.d/3.grammar.g.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.D_Pass = type { i8*, i32, i32, i32 }
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
%struct.D_Shift = type { i16, i8, i8, i32, i32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* }
%struct.SB_uint8 = type { %struct.D_Shift**, [4 x i8*] }
%struct.SB_trans_uint8 = type { [4 x i8*] }
%struct.D_RightEpsilonHint = type { i16, i16, %struct.D_Reduction* }
%struct.D_ErrorRecoveryHint = type { i16, i16, i8* }
%struct.D_State = type { i8*, i32, %struct.anon.9, %struct.anon.10, %struct.anon.11, %struct.D_Shift**, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)*, i8*, i8, i8, i8, i8*, %struct.D_Shift***, i32 }
%struct.anon.9 = type { i32, %struct.D_Reduction** }
%struct.anon.10 = type { i32, %struct.D_RightEpsilonHint* }
%struct.anon.11 = type { i32, %struct.D_ErrorRecoveryHint* }
%struct.D_Symbol = type { i32, i8*, i32 }
%struct.D_ParserTables = type { i32, %struct.D_State*, i16*, i32, i32, %struct.D_Symbol*, void (%struct.D_Parser*, %struct.d_loc_t*, i8**)*, i32, %struct.D_Pass*, i32 }

@d_reduction_0_dparser_gram = global %struct.D_Reduction { i16 1, i16 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_1_dparser_gram = global %struct.D_Reduction { i16 1, i16 1, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_2_dparser_gram = global %struct.D_Reduction { i16 2, i16 2, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_3_dparser_gram = global %struct.D_Reduction { i16 2, i16 3, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_4_dparser_gram = global %struct.D_Reduction { i16 1, i16 3, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_5_dparser_gram = global %struct.D_Reduction { i16 2, i16 4, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_6_dparser_gram = global %struct.D_Reduction { i16 2, i16 5, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_7_dparser_gram = global %struct.D_Reduction { i16 0, i16 5, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_8_dparser_gram = global %struct.D_Reduction { i16 2, i16 6, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_9_dparser_gram = global %struct.D_Reduction { i16 0, i16 6, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_10_dparser_gram = global %struct.D_Reduction { i16 1, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_7_10_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_11_dparser_gram = global %struct.D_Reduction { i16 3, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_7_11_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_12_dparser_gram = global %struct.D_Reduction { i16 4, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_7_12_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_13_dparser_gram = global %struct.D_Reduction { i16 3, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_14_dparser_gram = global %struct.D_Reduction { i16 1, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_7_14_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_15_dparser_gram = global %struct.D_Reduction { i16 4, i16 7, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_7_15_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_16_dparser_gram = global %struct.D_Reduction { i16 2, i16 8, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_17_dparser_gram = global %struct.D_Reduction { i16 1, i16 8, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_18_dparser_gram = global %struct.D_Reduction { i16 2, i16 9, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_19_dparser_gram = global %struct.D_Reduction { i16 0, i16 9, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_20_dparser_gram = global %struct.D_Reduction { i16 2, i16 10, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_21_dparser_gram = global %struct.D_Reduction { i16 1, i16 10, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_22_dparser_gram = global %struct.D_Reduction { i16 0, i16 11, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_23_dparser_gram = global %struct.D_Reduction { i16 2, i16 11, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_11_23_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_24_dparser_gram = global %struct.D_Reduction { i16 1, i16 12, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_12_24_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_25_dparser_gram = global %struct.D_Reduction { i16 1, i16 12, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_12_25_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_26_dparser_gram = global %struct.D_Reduction { i16 1, i16 12, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_12_26_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_27_dparser_gram = global %struct.D_Reduction { i16 1, i16 12, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_12_27_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_28_dparser_gram = global %struct.D_Reduction { i16 1, i16 12, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_12_28_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_29_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_29_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_30_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_30_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_31_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_31_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_32_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_32_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_33_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_33_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_34_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_34_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_35_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_35_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_36_dparser_gram = global %struct.D_Reduction { i16 1, i16 13, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_13_36_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_37_dparser_gram = global %struct.D_Reduction { i16 1, i16 14, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_14_37_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_38_dparser_gram = global %struct.D_Reduction { i16 4, i16 15, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_40_dparser_gram = global %struct.D_Reduction { i16 1, i16 15, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_41_dparser_gram = global %struct.D_Reduction { i16 1, i16 16, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_16_41_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_42_dparser_gram = global %struct.D_Reduction { i16 1, i16 17, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_17_42_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_43_dparser_gram = global %struct.D_Reduction { i16 1, i16 18, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_45_dparser_gram = global %struct.D_Reduction { i16 2, i16 19, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_46_dparser_gram = global %struct.D_Reduction { i16 2, i16 20, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_47_dparser_gram = global %struct.D_Reduction { i16 0, i16 20, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_48_dparser_gram = global %struct.D_Reduction { i16 2, i16 21, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_49_dparser_gram = global %struct.D_Reduction { i16 4, i16 22, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_22_49_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_50_dparser_gram = global %struct.D_Reduction { i16 2, i16 23, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_51_dparser_gram = global %struct.D_Reduction { i16 0, i16 23, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_52_dparser_gram = global %struct.D_Reduction { i16 1, i16 24, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_53_dparser_gram = global %struct.D_Reduction { i16 0, i16 24, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_54_dparser_gram = global %struct.D_Reduction { i16 3, i16 25, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_55_dparser_gram = global %struct.D_Reduction { i16 2, i16 26, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_56_dparser_gram = global %struct.D_Reduction { i16 0, i16 26, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_57_dparser_gram = global %struct.D_Reduction { i16 2, i16 27, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_58_dparser_gram = global %struct.D_Reduction { i16 0, i16 27, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_59_dparser_gram = global %struct.D_Reduction { i16 2, i16 28, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_60_dparser_gram = global %struct.D_Reduction { i16 2, i16 29, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_61_dparser_gram = global %struct.D_Reduction { i16 0, i16 29, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_62_dparser_gram = global %struct.D_Reduction { i16 0, i16 30, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_30_62_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_63_dparser_gram = global %struct.D_Reduction { i16 1, i16 31, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_31_63_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_64_dparser_gram = global %struct.D_Reduction { i16 1, i16 31, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_31_64_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_65_dparser_gram = global %struct.D_Reduction { i16 1, i16 31, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_31_65_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_66_dparser_gram = global %struct.D_Reduction { i16 3, i16 31, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_31_66_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_67_dparser_gram = global %struct.D_Reduction { i16 4, i16 31, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_31_67_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_68_dparser_gram = global %struct.D_Reduction { i16 2, i16 32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_69_dparser_gram = global %struct.D_Reduction { i16 1, i16 32, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_70_dparser_gram = global %struct.D_Reduction { i16 1, i16 33, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_71_dparser_gram = global %struct.D_Reduction { i16 1, i16 33, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_33_71_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_72_dparser_gram = global %struct.D_Reduction { i16 1, i16 33, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_33_72_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_73_dparser_gram = global %struct.D_Reduction { i16 0, i16 34, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_34_73_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@.str = private unnamed_addr constant [34 x i8] c"terminal priority on non-terminal\00", align 1
@d_reduction_74_dparser_gram = global %struct.D_Reduction { i16 2, i16 35, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_35_74_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"ignore-case (/i) on non-terminal\00", align 1
@d_reduction_75_dparser_gram = global %struct.D_Reduction { i16 1, i16 35, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_35_75_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_76_dparser_gram = global %struct.D_Reduction { i16 1, i16 35, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_35_76_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_77_dparser_gram = global %struct.D_Reduction { i16 1, i16 35, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_35_77_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_78_dparser_gram = global %struct.D_Reduction { i16 1, i16 35, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_35_78_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_79_dparser_gram = global %struct.D_Reduction { i16 2, i16 36, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_80_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_80_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_81_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_81_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_82_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_82_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_83_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_83_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_84_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_84_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_85_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_85_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_86_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_86_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_87_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_87_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_88_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_88_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_89_dparser_gram = global %struct.D_Reduction { i16 1, i16 37, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_37_89_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_90_dparser_gram = global %struct.D_Reduction { i16 1, i16 38, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_38_90_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_91_dparser_gram = global %struct.D_Reduction { i16 3, i16 39, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_92_dparser_gram = global %struct.D_Reduction { i16 2, i16 40, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_93_dparser_gram = global %struct.D_Reduction { i16 0, i16 40, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_94_dparser_gram = global %struct.D_Reduction { i16 1, i16 41, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_95_dparser_gram = global %struct.D_Reduction { i16 0, i16 41, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_96_dparser_gram = global %struct.D_Reduction { i16 1, i16 42, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_97_dparser_gram = global %struct.D_Reduction { i16 0, i16 42, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_98_dparser_gram = global %struct.D_Reduction { i16 1, i16 43, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_43_98_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_99_dparser_gram = global %struct.D_Reduction { i16 1, i16 44, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_44_99_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_100_dparser_gram = global %struct.D_Reduction { i16 3, i16 45, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* @d_final_reduction_code_45_100_dparser_gram, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_101_dparser_gram = global %struct.D_Reduction { i16 3, i16 46, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_102_dparser_gram = global %struct.D_Reduction { i16 2, i16 47, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_103_dparser_gram = global %struct.D_Reduction { i16 0, i16 47, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_104_dparser_gram = global %struct.D_Reduction { i16 3, i16 48, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_105_dparser_gram = global %struct.D_Reduction { i16 2, i16 49, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_106_dparser_gram = global %struct.D_Reduction { i16 0, i16 49, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_107_dparser_gram = global %struct.D_Reduction { i16 3, i16 50, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_110_dparser_gram = global %struct.D_Reduction { i16 1, i16 50, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_115_dparser_gram = global %struct.D_Reduction { i16 2, i16 51, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_116_dparser_gram = global %struct.D_Reduction { i16 0, i16 51, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_117_dparser_gram = global %struct.D_Reduction { i16 2, i16 52, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_118_dparser_gram = global %struct.D_Reduction { i16 0, i16 52, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_119_dparser_gram = global %struct.D_Reduction { i16 2, i16 53, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_120_dparser_gram = global %struct.D_Reduction { i16 0, i16 53, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 -1, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_121_dparser_gram = global %struct.D_Reduction { i16 1, i16 54, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_122_dparser_gram = global %struct.D_Reduction { i16 1, i16 55, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_123_dparser_gram = global %struct.D_Reduction { i16 1, i16 56, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_124_dparser_gram = global %struct.D_Reduction { i16 1, i16 57, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_125_dparser_gram = global %struct.D_Reduction { i16 1, i16 58, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_128_dparser_gram = global %struct.D_Reduction { i16 1, i16 59, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_129_dparser_gram = global %struct.D_Reduction { i16 1, i16 60, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_reduction_130_dparser_gram = global %struct.D_Reduction { i16 1, i16 61, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null, i16 0, i16 0, i32 0, i32 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)** null }, align 8
@d_shift_0_dparser_gram = global %struct.D_Shift { i16 62, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_1_dparser_gram = global %struct.D_Shift { i16 63, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_2_dparser_gram = global %struct.D_Shift { i16 64, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_3_dparser_gram = global %struct.D_Shift { i16 65, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_4_dparser_gram = global %struct.D_Shift { i16 66, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_5_dparser_gram = global %struct.D_Shift { i16 67, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_6_dparser_gram = global %struct.D_Shift { i16 68, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_7_dparser_gram = global %struct.D_Shift { i16 69, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_8_dparser_gram = global %struct.D_Shift { i16 70, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_9_dparser_gram = global %struct.D_Shift { i16 71, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_10_dparser_gram = global %struct.D_Shift { i16 72, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_11_dparser_gram = global %struct.D_Shift { i16 73, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_12_dparser_gram = global %struct.D_Shift { i16 74, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_13_dparser_gram = global %struct.D_Shift { i16 75, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_14_dparser_gram = global %struct.D_Shift { i16 76, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_15_dparser_gram = global %struct.D_Shift { i16 77, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_16_dparser_gram = global %struct.D_Shift { i16 78, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_17_dparser_gram = global %struct.D_Shift { i16 79, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_18_dparser_gram = global %struct.D_Shift { i16 80, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_19_dparser_gram = global %struct.D_Shift { i16 81, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_20_dparser_gram = global %struct.D_Shift { i16 82, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_21_dparser_gram = global %struct.D_Shift { i16 83, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_22_dparser_gram = global %struct.D_Shift { i16 84, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_23_dparser_gram = global %struct.D_Shift { i16 85, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_24_dparser_gram = global %struct.D_Shift { i16 86, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_25_dparser_gram = global %struct.D_Shift { i16 87, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_26_dparser_gram = global %struct.D_Shift { i16 88, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_27_dparser_gram = global %struct.D_Shift { i16 89, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_28_dparser_gram = global %struct.D_Shift { i16 90, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_29_dparser_gram = global %struct.D_Shift { i16 91, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_30_dparser_gram = global %struct.D_Shift { i16 92, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_31_dparser_gram = global %struct.D_Shift { i16 93, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_32_dparser_gram = global %struct.D_Shift { i16 94, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_33_dparser_gram = global %struct.D_Shift { i16 95, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_34_dparser_gram = global %struct.D_Shift { i16 96, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_35_dparser_gram = global %struct.D_Shift { i16 97, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_36_dparser_gram = global %struct.D_Shift { i16 98, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_37_dparser_gram = global %struct.D_Shift { i16 99, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_38_dparser_gram = global %struct.D_Shift { i16 100, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_39_dparser_gram = global %struct.D_Shift { i16 101, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_40_dparser_gram = global %struct.D_Shift { i16 102, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_41_dparser_gram = global %struct.D_Shift { i16 103, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_42_dparser_gram = global %struct.D_Shift { i16 104, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_43_dparser_gram = global %struct.D_Shift { i16 105, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_44_dparser_gram = global %struct.D_Shift { i16 106, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_45_dparser_gram = global %struct.D_Shift { i16 107, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_46_dparser_gram = global %struct.D_Shift { i16 108, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_47_dparser_gram = global %struct.D_Shift { i16 109, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_48_dparser_gram = global %struct.D_Shift { i16 110, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_49_dparser_gram = global %struct.D_Shift { i16 111, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_50_dparser_gram = global %struct.D_Shift { i16 112, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_51_dparser_gram = global %struct.D_Shift { i16 113, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_52_dparser_gram = global %struct.D_Shift { i16 114, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_53_dparser_gram = global %struct.D_Shift { i16 115, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_54_dparser_gram = global %struct.D_Shift { i16 116, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_55_dparser_gram = global %struct.D_Shift { i16 117, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_56_dparser_gram = global %struct.D_Shift { i16 118, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_57_dparser_gram = global %struct.D_Shift { i16 119, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_58_dparser_gram = global %struct.D_Shift { i16 120, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_59_dparser_gram = global %struct.D_Shift { i16 121, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_60_dparser_gram = global %struct.D_Shift { i16 122, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_61_dparser_gram = global %struct.D_Shift { i16 123, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_62_dparser_gram = global %struct.D_Shift { i16 124, i8 0, i8 0, i32 0, i32 -1, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_63_dparser_gram = global %struct.D_Shift { i16 125, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_64_dparser_gram = global %struct.D_Shift { i16 126, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shift_65_dparser_gram = global %struct.D_Shift { i16 127, i8 0, i8 0, i32 0, i32 0, i32 (i8*, i8**, i32, i32, %struct.D_Parser*)* null }, align 8
@d_shifts_3_dparser_gram = global [10 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_0_dparser_gram, %struct.D_Shift* @d_shift_2_dparser_gram, %struct.D_Shift* @d_shift_4_dparser_gram, %struct.D_Shift* @d_shift_6_dparser_gram, %struct.D_Shift* @d_shift_7_dparser_gram, %struct.D_Shift* @d_shift_23_dparser_gram, %struct.D_Shift* @d_shift_27_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_3_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_3_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_27_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_3_dparser_gram = global [2 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_3_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_3_1_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_3_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00", align 16
@d_accepts_diff_3_0_0_dparser_gram = global [64 x i8] zeroinitializer, align 16
@d_scanner_3_0_1_dparser_gram = global [64 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\05\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\06\00\00\00\00", align 16
@d_scanner_3_0_2_dparser_gram = global [64 x i8] zeroinitializer, align 16
@d_scanner_3_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00", align 16
@d_shift_3_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_23_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_3_3_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 16
@d_scanner_3_3_1_dparser_gram = global [64 x i8] c"\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\04\00\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\00\00\00\00\00", align 16
@d_shift_3_3_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_3_4_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@d_accepts_diff_3_4_1_dparser_gram = global [64 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@d_shift_3_4_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_27_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_3_5_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_3_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\09\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\0B\0C\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_9_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_10_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_11_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_12_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_13_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_14_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_15_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_16_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_17_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_20_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_21_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_22_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_23_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_3_24_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_7_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_3_25_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_26_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_27_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_28_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_29_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_3_30_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_4_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_3_31_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#\00\00", align 16
@d_scanner_3_32_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_3_33_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_3_34_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_6_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_3_35_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_2_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_3_36_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_0_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_4_dparser_gram = global [11 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_4_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_4_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_4_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_4_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_4_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_4_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_4_2_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_4_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\02\02\02\02\04\05\00\02\02\02\06\02\02\07\08\08\08\08\08\08\08\08\08\02\02\02\02\02\02", align 16
@d_scanner_4_0_1_dparser_gram = global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\00\02\0B\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\02\00\02\00", align 16
@d_shift_4_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_2_0_dparser_gram = global [64 x i8] c"\00\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@d_scanner_4_2_1_dparser_gram = global [64 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@d_scanner_4_2_2_dparser_gram = global [64 x i8] c"\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@d_scanner_4_3_0_dparser_gram = global [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@d_scanner_4_3_1_dparser_gram = global [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\12\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@d_scanner_4_3_2_dparser_gram = global [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@d_shift_4_4_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_5_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\08\08\08\08\08\08\08\08\08\00\00\00\00\00\00", align 16
@d_shift_4_5_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_6_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\13\13\13\13\13\13\13\00\00\00\00\00\00\00\00", align 16
@d_scanner_4_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\16\00\00\00\00\00\00\00", align 16
@d_accepts_diff_4_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00", align 16
@d_shift_4_6_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_7_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\08\08\08\08\08\08\08\08\08\00\00\00\00\00\00", align 16
@d_scanner_4_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_4_7_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_8_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\09\09\09\09\09\09\09\09\09\00\00\00\00\00\00", align 16
@d_scanner_4_8_1_dparser_gram = global [64 x i8] c"\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\00\00\09\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\00\00\00\00\00", align 16
@d_shift_4_9_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_4_10_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_4_13_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_14_0_dparser_gram = global [64 x i8] c"\00\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@d_scanner_4_14_1_dparser_gram = global [64 x i8] c"\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18", align 16
@d_shift_4_16_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_17_0_dparser_gram = global [64 x i8] c"\00\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19", align 16
@d_scanner_4_17_1_dparser_gram = global [64 x i8] c"\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19", align 16
@d_scanner_4_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_4_18_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_4_19_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_20_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\00\00\00\00\00\00", align 16
@d_scanner_4_20_1_dparser_gram = global [64 x i8] c"\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_4_22_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_4_25_1_dparser_gram = global [64 x i8] c"\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00\1A\1A\1A\1A\1A\1A\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_4_25_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_4_26_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_5_dparser_gram = global [9 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_14_dparser_gram, %struct.D_Shift* @d_shift_15_dparser_gram, %struct.D_Shift* @d_shift_16_dparser_gram, %struct.D_Shift* @d_shift_17_dparser_gram, %struct.D_Shift* @d_shift_18_dparser_gram, %struct.D_Shift* @d_shift_19_dparser_gram, %struct.D_Shift* @d_shift_20_dparser_gram, %struct.D_Shift* @d_shift_21_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_5_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_5_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_5_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_5_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\04\05\00\00\06\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_2_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_3_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_4_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_5_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_9_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_10_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_11_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_12_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_13_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_14_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_15_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_16_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_17_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_20_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\1D\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_21_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_22_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_23_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_24_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_25_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_26_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_27_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_28_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_29_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_30_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_31_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_32_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_33_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_34_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_35_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_36_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_37_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00.\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_38_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_39_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_40_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_41_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\002\00\00\00\00\00", align 16
@d_scanner_5_42_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_43_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_44_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_45_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\006\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_46_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\007\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_47_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_48_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\009\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_49_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_50_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_51_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_52_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_53_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_54_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00?\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_55_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_56_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_57_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_14_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_58_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_59_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_60_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00D\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_61_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_62_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_63_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00G\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_64_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_20_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_65_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_66_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00I\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_67_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00J\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_68_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00K\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_69_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00L\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_70_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00M\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_71_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_16_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_5_72_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_17_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_73_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00N\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_74_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00O\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_75_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00P\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_76_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Q\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_77_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00R\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_78_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_79_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00T\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_80_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00U\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_81_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00V\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_82_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_15_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_83_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00W\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_84_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00X\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_85_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_19_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_86_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_87_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00Z\00\00\00\00\00\00", align 16
@d_shift_5_88_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_21_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_5_89_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00[\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_90_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\5C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_91_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00]\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_92_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00^\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_93_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00_\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_94_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_95_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00a\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_96_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00b\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_97_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_5_98_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_5_99_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_18_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_6_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_6_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_6_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_6_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_6_0_1_dparser_gram = global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00", align 16
@d_scanner_6_1_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00", align 16
@d_accepts_diff_8_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_8_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_8_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_13_dparser_gram = global [4 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_23_dparser_gram, %struct.D_Shift* @d_shift_27_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_13_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_13_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_27_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_13_dparser_gram = global [2 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_13_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_13_1_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_13_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00", align 16
@d_scanner_13_0_1_dparser_gram = global [64 x i8] c"\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\04\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00", align 16
@d_scanner_13_2_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00\00", align 16
@d_scanner_13_2_1_dparser_gram = global [64 x i8] c"\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\03\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\00\00\00\00\00", align 16
@d_shifts_17_dparser_gram = global [3 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_22_dparser_gram, %struct.D_Shift* @d_shift_26_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_17_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_17_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_22_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_17_dparser_gram = global [2 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_17_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_17_1_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_17_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00", align 16
@d_scanner_17_1_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00", align 16
@d_accepts_diff_17_1_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00", align 16
@d_shift_17_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_22_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_17_2_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00", align 16
@d_shift_17_3_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_26_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_30_dparser_gram = global [12 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_1_dparser_gram, %struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_30_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_30_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_30_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_30_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_30_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_30_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_30_2_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_30_0_1_dparser_gram = global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\00\02\0B\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0C\02\0D\02\00", align 16
@d_scanner_30_2_0_dparser_gram = global [64 x i8] c"\00\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 16
@d_scanner_30_2_1_dparser_gram = global [64 x i8] c"\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\10\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 16
@d_scanner_30_2_2_dparser_gram = global [64 x i8] c"\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E", align 16
@d_scanner_30_3_0_dparser_gram = global [64 x i8] c"\00\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@d_scanner_30_3_1_dparser_gram = global [64 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\13\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@d_scanner_30_3_2_dparser_gram = global [64 x i8] c"\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11", align 16
@d_scanner_30_6_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\14\14\14\14\14\14\14\00\00\00\00\00\00\00\00", align 16
@d_scanner_30_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\17\00\00\00\00\00\00\00", align 16
@d_scanner_30_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_30_12_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_1_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_30_18_0_dparser_gram = global [64 x i8] c"\00\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A", align 16
@d_scanner_30_18_1_dparser_gram = global [64 x i8] c"\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A", align 16
@d_scanner_30_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_30_21_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\00\00\00\00\00\00", align 16
@d_scanner_30_21_1_dparser_gram = global [64 x i8] c"\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_30_26_1_dparser_gram = global [64 x i8] c"\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\1B\1B\1B\1B\1B\1B\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00", align 16
@d_shifts_49_dparser_gram = global [3 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_1_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_49_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_49_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_49_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_49_0_1_dparser_gram = global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\03\00\00", align 16
@d_shifts_52_dparser_gram = global [6 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_9_dparser_gram, %struct.D_Shift* @d_shift_10_dparser_gram, %struct.D_Shift* @d_shift_11_dparser_gram, %struct.D_Shift* @d_shift_12_dparser_gram, %struct.D_Shift* @d_shift_13_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_52_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_52_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_52_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_52_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\03\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_2_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_3_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_4_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_5_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_9_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_10_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0F\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_11_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_12_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_13_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_14_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_15_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_16_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_17_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_20_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_21_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_22_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_52_23_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_11_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_52_24_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_52_26_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_12_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_52_27_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_28_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_30_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_31_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00#\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_52_32_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_9_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_52_33_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_52_34_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_10_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_52_35_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_36_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_52_37_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_52_38_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_13_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_53_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_53_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_53_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_53_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_53_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_53_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_53_2_dparser_gram, i32 0, i32 0)], align 16
@d_shifts_55_dparser_gram = global [7 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_0_dparser_gram, %struct.D_Shift* @d_shift_2_dparser_gram, %struct.D_Shift* @d_shift_4_dparser_gram, %struct.D_Shift* @d_shift_6_dparser_gram, %struct.D_Shift* @d_shift_7_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_55_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_55_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_55_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_55_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00", align 16
@d_scanner_55_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00", align 16
@d_scanner_55_3_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\06\00\00\00\00\00\00\00\00\00\00\00\07\00\00\08\09\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_4_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_5_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_11_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\11\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_12_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_15_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_16_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_20_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_22_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_23_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_24_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_25_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_28_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00", align 16
@d_scanner_55_29_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_55_30_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shifts_59_dparser_gram = global [12 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* @d_shift_32_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_59_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_59_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_59_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_59_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_59_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_59_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_59_2_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_59_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\03\02\02\02\02\04\05\06\02\02\02\07\02\02\08\09\09\09\09\09\09\09\09\09\02\02\02\02\02\02", align 16
@d_scanner_59_0_1_dparser_gram = global [64 x i8] c"\02\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\02\00\02\0C\02\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0D\02\00\02\00", align 16
@d_shift_59_5_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_32_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_59_6_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\09\09\09\09\09\09\09\09\09\00\00\00\00\00\00", align 16
@d_scanner_59_9_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\00\00", align 16
@d_scanner_59_9_1_dparser_gram = global [64 x i8] c"\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\0A\00\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\00\00\00\00\00", align 16
@d_accepts_diff_60_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_60_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_60_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_60_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_60_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_60_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_60_2_dparser_gram, i32 0, i32 0)], align 16
@d_shifts_61_dparser_gram = global [12 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* @d_shift_52_dparser_gram, %struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_61_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_61_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_61_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_61_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_61_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_61_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_61_2_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_61_0_1_dparser_gram = global [64 x i8] c"\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\02\0B\02\0C\02\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0D\02\00\02\00", align 16
@d_accepts_diff_61_5_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00", align 16
@d_accepts_diff_61_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", align 16
@d_shift_61_10_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_52_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_61_11_1_dparser_gram = global [64 x i8] c"\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\02\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00", align 16
@d_accepts_diff_64_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_64_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_64_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_72_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_1_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_72_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_72_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_72_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_72_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00", align 16
@d_accepts_diff_73_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_73_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_73_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_77_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_23_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_77_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_77_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_77_0_dparser_gram, i32 0, i32 0)], align 8
@d_accepts_diff_80_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_80_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_80_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_92_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_28_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_92_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_92_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_92_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_92_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00", align 16
@d_shift_92_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_28_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_95_dparser_gram = global [8 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_29_dparser_gram, %struct.D_Shift* @d_shift_31_dparser_gram, %struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* @d_shift_60_dparser_gram, %struct.D_Shift* @d_shift_61_dparser_gram, %struct.D_Shift* @d_shift_62_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_95_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_95_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_95_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_95_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\03\00\00\04\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_95_0_1_dparser_gram = global [64 x i8] c"\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\00\00\00\06\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\08\00\00\00\00", align 16
@d_scanner_95_1_0_dparser_gram = global [64 x i8] c"\00\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@d_scanner_95_1_1_dparser_gram = global [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@d_scanner_95_1_2_dparser_gram = global [64 x i8] c"\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09", align 16
@d_scanner_95_2_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00", align 16
@d_scanner_95_3_0_dparser_gram = global [64 x i8] c"\00\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D", align 16
@d_scanner_95_5_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\06\06\06\06\06\06\06\06\06\00\00\00\00\00\00", align 16
@d_scanner_95_5_1_dparser_gram = global [64 x i8] c"\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\00\00\00\00\06\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\00\00\00\00\00", align 16
@d_scanner_95_10_0_dparser_gram = global [64 x i8] c"\00\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@d_scanner_95_14_0_dparser_gram = global [64 x i8] c"\00\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16
@d_scanner_95_14_1_dparser_gram = global [64 x i8] c"\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12", align 16
@d_scanner_95_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_95_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_95_20_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_29_dparser_gram, %struct.D_Shift* null], align 16
@d_shifts_99_dparser_gram = global [12 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_38_dparser_gram, %struct.D_Shift* @d_shift_39_dparser_gram, %struct.D_Shift* @d_shift_40_dparser_gram, %struct.D_Shift* @d_shift_41_dparser_gram, %struct.D_Shift* @d_shift_42_dparser_gram, %struct.D_Shift* @d_shift_43_dparser_gram, %struct.D_Shift* @d_shift_44_dparser_gram, %struct.D_Shift* @d_shift_45_dparser_gram, %struct.D_Shift* @d_shift_46_dparser_gram, %struct.D_Shift* @d_shift_47_dparser_gram, %struct.D_Shift* @d_shift_51_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_99_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_99_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_99_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_99_0_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\04\00\00\00\00\00\00\00\00\00\05\00\00\00\00\00\06\00\00\07\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_3_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_4_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_5_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_6_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_7_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0C\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0D\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_9_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0E\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_11_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_13_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_14_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_15_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_16_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_47_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_17_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_18_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\16\00\00\00\00\00\00", align 16
@d_scanner_99_19_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\17\00\00\00\00\00\00", align 16
@d_shift_99_20_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_46_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_22_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_23_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1A\00\00\1B\00\00\1C\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_24_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\1D\00\00\1E\00\00\1F\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_26_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00!\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_27_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\22\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_29_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00$\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_30_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00%\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_31_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00&\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_32_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00'\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_33_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00(\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_34_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_35_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_36_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00+\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_38_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00-\00\00\00\00\00.\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_39_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_40_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\000\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_41_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\001\00\00\00\00\002\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_42_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\003\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_43_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_43_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_44_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\004\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_45_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\005\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_46_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\006\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_47_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_45_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_48_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\007\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_49_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\008\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_50_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\009\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_51_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_52_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00;\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_53_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_42_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_54_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00<\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_55_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00=\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_56_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_44_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_57_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_58_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_59_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_99_60_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_61_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_39_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_62_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00B\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_63_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_41_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_99_64_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00C\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_99_65_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_38_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_99_66_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_40_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_100_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_100_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_100_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_100_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_100_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_100_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_100_2_dparser_gram, i32 0, i32 0)], align 16
@d_shifts_123_dparser_gram = global [4 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_63_dparser_gram, %struct.D_Shift* @d_shift_64_dparser_gram, %struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_123_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_123_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_123_dparser_gram = global [2 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_123_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_123_1_dparser_gram, i32 0, i32 0)], align 16
@d_scanner_123_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\03\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 16
@d_scanner_123_1_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\04\04\04\04\04\04\04\04\04\00\00\00\00\00\00", align 16
@d_scanner_123_2_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\05\05\05\05\05\05\05\00\00\00\00\00\00\00\00", align 16
@d_scanner_123_2_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\07\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\08\00\00\00\00\00\00\00", align 16
@d_scanner_123_3_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\09\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_123_4_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\06\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_123_6_1_dparser_gram = global [64 x i8] c"\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_123_9_1_dparser_gram = global [64 x i8] c"\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\0A\0A\0A\0A\0A\0A\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00", align 16
@d_shifts_125_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_49_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_125_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_125_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_125_0_dparser_gram, i32 0, i32 0)], align 8
@d_accepts_diff_128_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_128_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_128_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_128_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_128_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_128_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_128_2_dparser_gram, i32 0, i32 0)], align 16
@d_accepts_diff_131_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_131_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_131_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_59_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_131_dparser_gram = global [3 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_131_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_131_1_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_131_2_dparser_gram, i32 0, i32 0)], align 16
@d_shifts_132_dparser_gram = global [6 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_33_dparser_gram, %struct.D_Shift* @d_shift_34_dparser_gram, %struct.D_Shift* @d_shift_35_dparser_gram, %struct.D_Shift* @d_shift_36_dparser_gram, %struct.D_Shift* @d_shift_37_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_132_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_132_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_132_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_132_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\03\04\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\06", align 16
@d_scanner_132_1_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_132_2_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_36_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_132_3_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_37_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_132_5_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_35_dparser_gram, %struct.D_Shift* null], align 16
@d_shift_132_7_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_34_dparser_gram, %struct.D_Shift* null], align 16
@d_scanner_132_8_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0A\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_scanner_132_9_1_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_shift_132_10_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_33_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_133_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_133_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_133_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_141_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_32_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_141_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_141_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_141_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_141_0_0_dparser_gram = global [64 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_accepts_diff_144_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_144_1_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_65_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_144_dparser_gram = global [2 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_144_0_dparser_gram, i32 0, i32 0), %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_accepts_diff_144_1_dparser_gram, i32 0, i32 0)], align 16
@d_accepts_diff_151_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_151_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_151_0_dparser_gram, i32 0, i32 0)], align 8
@d_shifts_155_dparser_gram = global [2 x %struct.D_Shift*] [%struct.D_Shift* @d_shift_22_dparser_gram, %struct.D_Shift* null], align 16
@d_accepts_diff_155_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_155_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_155_0_dparser_gram, i32 0, i32 0)], align 8
@d_accepts_diff_156_0_dparser_gram = global [1 x %struct.D_Shift*] zeroinitializer, align 8
@d_accepts_diff_156_dparser_gram = global [1 x %struct.D_Shift**] [%struct.D_Shift** getelementptr inbounds ([1 x %struct.D_Shift*], [1 x %struct.D_Shift*]* @d_accepts_diff_156_0_dparser_gram, i32 0, i32 0)], align 8
@d_scanner_3_dparser_gram = global [37 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_2_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_10_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_12_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_13_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_15_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_16_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_22_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_23_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_24_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_25_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_27_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_29_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_30_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_31_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_32_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_33_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_34_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_35_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_36_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_3_dparser_gram = global [37 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_4_dparser_gram = global [27 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_7_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_13_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_14_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_14_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_20_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_20_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_20_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_25_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_4_dparser_gram = global [27 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_4_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_5_dparser_gram = global [100 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_5_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_10_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_12_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_13_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_15_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_16_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_22_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_23_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_24_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_25_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_27_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_29_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_30_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_31_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_32_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_33_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_34_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_35_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_36_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_37_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_38_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_39_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_40_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_41_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_42_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_43_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_44_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_45_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_46_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_47_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_48_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_49_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_50_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_51_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_52_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_53_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_54_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_55_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_56_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_57_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_58_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_59_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_60_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_61_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_62_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_63_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_64_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_65_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_66_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_67_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_68_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_69_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_70_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_71_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_72_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_73_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_74_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_75_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_76_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_77_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_78_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_79_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_80_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_81_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_82_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_83_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_84_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_85_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_86_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_87_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_88_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_89_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_90_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_91_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_92_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_93_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_94_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_95_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_96_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_97_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_98_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_5_99_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_5_dparser_gram = global [100 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_6_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_6_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_6_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_6_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_6_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_13_dparser_gram = global [4 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_2_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_13_dparser_gram = global [4 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_17_dparser_gram = global [4 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_17_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_17_1_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_17_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_17_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_17_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_17_dparser_gram = global [4 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_17_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_30_dparser_gram = global [28 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_7_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_30_12_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_13_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_30_dparser_gram = global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_4_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_49_dparser_gram = global [3 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_49_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_6_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_6_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_30_12_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_49_dparser_gram = global [3 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_52_dparser_gram = global [39 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_5_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_10_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_12_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_13_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_15_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_16_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_22_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_52_23_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_24_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_52_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_27_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_30_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_31_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_52_32_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_33_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_52_34_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_35_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_36_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_37_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_52_38_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_52_dparser_gram = global [39 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_55_dparser_gram = global [34 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_5_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_10_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_10_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_12_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_12_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_15_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_16_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_20_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_24_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_22_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_23_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_24_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_25_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_27_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_30_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_29_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_30_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_34_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_35_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_36_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_55_dparser_gram = global [34 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_59_dparser_gram = global [28 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_59_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_13_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_59_dparser_gram = global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_4_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_61_dparser_gram = global [28 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_61_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_7_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_61_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_13_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_17_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_18_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_6_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_21_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_30_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_61_dparser_gram = global [28 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_61_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_61_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_61_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_61_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_72_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_72_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_30_12_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_72_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_77_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_2_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_77_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_92_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_92_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_92_1_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_92_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_95_dparser_gram = global [21 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_4_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_5_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_5_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_13_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_10_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_3_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_14_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_14_1_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_1_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_13_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_4_2_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_95_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_95_20_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_95_dparser_gram = global [21 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_99_dparser_gram = global [67 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_55_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_0_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_9_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_5_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_7_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_11_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_13_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_14_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_15_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_16_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_17_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_18_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_19_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_20_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_16_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_22_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_23_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_24_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_52_28_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_27_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_26_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_29_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_30_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_31_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_32_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_33_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_34_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_35_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_36_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_5_35_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_38_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_39_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_40_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_41_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_42_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_43_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_44_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_45_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_46_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_47_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_48_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_49_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_50_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_51_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_52_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_53_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_54_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_55_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_56_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_57_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_58_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_59_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_60_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_61_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_62_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_63_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_64_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_65_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_99_66_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_99_dparser_gram = global [67 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_123_dparser_gram = global [11 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_1_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_2_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_3_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_2_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_19_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_22_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_59_9_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_123_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_4_26_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_123_dparser_gram = global [11 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_61_6_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_125_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_13_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_3_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_125_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_132_dparser_gram = global [11 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_132_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_132_1_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_132_2_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_132_3_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_3_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_132_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_99_4_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_132_7_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_132_8_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_132_9_1_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_132_10_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_132_dparser_gram = global [11 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_141_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_141_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_59_5_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_141_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_scanner_155_dparser_gram = global [2 x %struct.SB_uint8] [%struct.SB_uint8 { %struct.D_Shift** null, [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_17_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }, %struct.SB_uint8 { %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shift_17_1_dparser_gram, i32 0, i32 0), [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_scanner_3_0_2_dparser_gram, i32 0, i32 0)] }], align 16
@d_transition_155_dparser_gram = global [2 x %struct.SB_trans_uint8] [%struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }, %struct.SB_trans_uint8 { [4 x i8*] [i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @d_accepts_diff_3_0_0_dparser_gram, i32 0, i32 0)] }], align 16
@d_goto_valid_0_dparser_gram = global [16 x i8] c"F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_0_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_9_dparser_gram], align 8
@d_reductions_2_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_1_dparser_gram], align 8
@d_goto_valid_3_dparser_gram = global [16 x i8] c"\98\80\06\00\00@\00B5\00 \02\00\80\00\10", align 16
@d_goto_valid_4_dparser_gram = global [16 x i8] c"\00\04\00\00\00\00\C4?\00\00\00 \00\80\02\FE", align 16
@d_goto_valid_5_dparser_gram = global [16 x i8] c"\00 \00\00\00\00\00\00\00\F0\0F\00\00\00\00\00", align 16
@d_goto_valid_6_dparser_gram = global [16 x i8] c"\00A\00\00\00\00\00\02\00\00\00\00\00\00\00\10", align 16
@d_reductions_7_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_14_dparser_gram], align 8
@d_goto_valid_8_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\10", align 16
@d_reductions_9_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_40_dparser_gram], align 8
@d_reductions_10_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_43_dparser_gram], align 8
@d_goto_valid_11_dparser_gram = global [16 x i8] c"\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_11_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_103_dparser_gram], align 8
@d_reductions_12_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_124_dparser_gram], align 8
@d_goto_valid_13_dparser_gram = global [16 x i8] c"\10\80\06\00\00\00\00\02\00\00 \02\00\00\00\10", align 16
@d_reductions_13_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_2_dparser_gram], align 8
@d_reductions_14_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_4_dparser_gram], align 8
@d_reductions_15_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_8_dparser_gram], align 8
@d_goto_valid_16_dparser_gram = global [16 x i8] c" \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_16_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_7_dparser_gram], align 8
@d_right_epsilon_hints_16_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 55, %struct.D_Reduction* @d_reduction_5_dparser_gram }], align 16
@d_goto_valid_17_dparser_gram = global [16 x i8] c"\00\00\01\00\00\00\00\00\00\00\10\01\00\00\00\00", align 16
@d_reductions_18_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_42_dparser_gram], align 8
@d_reductions_19_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_10_dparser_gram], align 8
@d_reductions_20_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_43_dparser_gram], align 8
@d_goto_valid_21_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00", align 16
@d_reductions_21_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_120_dparser_gram], align 8
@d_goto_valid_22_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\08\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_22_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_116_dparser_gram], align 8
@d_goto_valid_23_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\10\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_23_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_118_dparser_gram], align 8
@d_reductions_24_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_121_dparser_gram], align 8
@d_reductions_25_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_122_dparser_gram], align 8
@d_reductions_26_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_123_dparser_gram], align 8
@d_reductions_27_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_128_dparser_gram], align 8
@d_reductions_28_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_129_dparser_gram], align 8
@d_reductions_29_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_130_dparser_gram], align 8
@d_goto_valid_30_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 16
@d_reductions_31_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_21_dparser_gram], align 8
@d_reductions_32_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_110_dparser_gram], align 8
@d_reductions_33_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_110_dparser_gram], align 8
@d_reductions_34_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_110_dparser_gram], align 8
@d_reductions_35_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_110_dparser_gram], align 8
@d_reductions_36_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_110_dparser_gram], align 8
@d_reductions_37_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_125_dparser_gram], align 8
@d_reductions_38_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_125_dparser_gram], align 8
@d_reductions_39_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_125_dparser_gram], align 8
@d_reductions_40_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_29_dparser_gram], align 8
@d_reductions_41_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_30_dparser_gram], align 8
@d_reductions_42_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_31_dparser_gram], align 8
@d_reductions_43_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_32_dparser_gram], align 8
@d_reductions_44_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_33_dparser_gram], align 8
@d_reductions_45_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_34_dparser_gram], align 8
@d_reductions_46_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_35_dparser_gram], align 8
@d_reductions_47_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_36_dparser_gram], align 8
@d_goto_valid_48_dparser_gram = global [16 x i8] c"\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_48_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_19_dparser_gram], align 8
@d_goto_valid_49_dparser_gram = global [16 x i8] c"\00@\00\00\00\00\00\82\00\00\00\00\00\00\00\10", align 16
@d_reductions_50_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_17_dparser_gram], align 8
@d_reductions_51_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_37_dparser_gram], align 8
@d_goto_valid_52_dparser_gram = global [16 x i8] c"\00\18\00\00\00\00\00\00\80\0F\00\00\00\00\00\00", align 16
@d_reductions_52_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_22_dparser_gram], align 8
@d_goto_valid_53_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 16
@d_reductions_54_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_3_dparser_gram], align 8
@d_goto_valid_55_dparser_gram = global [16 x i8] c"\80\00\00\00\00@\00@5\00\00\00\00\80\00\00", align 16
@d_reductions_55_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_5_dparser_gram], align 8
@d_goto_valid_56_dparser_gram = global [16 x i8] c"\00\00H@\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_56_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_56_dparser_gram = global [2 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 1, i16 92, %struct.D_Reduction* @d_reduction_45_dparser_gram }, %struct.D_RightEpsilonHint { i16 3, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_reductions_57_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_41_dparser_gram], align 8
@d_goto_valid_58_dparser_gram = global [16 x i8] c"\00\00H@\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_58_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_58_dparser_gram = global [2 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 1, i16 92, %struct.D_Reduction* @d_reduction_45_dparser_gram }, %struct.D_RightEpsilonHint { i16 3, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_goto_valid_59_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00`\00\80\02\FE", align 16
@d_goto_valid_60_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 16
@d_goto_valid_61_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00 \00\80\06\FE", align 16
@d_reductions_62_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_11_dparser_gram], align 8
@d_reductions_63_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_20_dparser_gram], align 8
@d_goto_valid_64_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\82\00\00\00\00\00\00\00\10", align 16
@d_reductions_65_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_13_dparser_gram], align 8
@d_reductions_66_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_16_dparser_gram], align 8
@d_reductions_67_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_24_dparser_gram], align 8
@d_reductions_68_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_25_dparser_gram], align 8
@d_reductions_69_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_26_dparser_gram], align 8
@d_reductions_70_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_27_dparser_gram], align 8
@d_reductions_71_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_28_dparser_gram], align 8
@d_goto_valid_72_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00", align 16
@d_goto_valid_73_dparser_gram = global [16 x i8] c"\00\18\00\00\00\00\00\00\80\0F\00\00\00\00\00\00", align 16
@d_reductions_73_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_22_dparser_gram], align 8
@d_right_epsilon_hints_73_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 90, %struct.D_Reduction* @d_reduction_23_dparser_gram }], align 16
@d_reductions_74_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_101_dparser_gram], align 8
@d_reductions_75_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_102_dparser_gram], align 8
@d_reductions_76_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_6_dparser_gram], align 8
@d_goto_valid_77_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00", align 16
@d_goto_valid_78_dparser_gram = global [16 x i8] c"\00\00\10\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_78_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_47_dparser_gram], align 8
@d_right_epsilon_hints_78_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 92, %struct.D_Reduction* @d_reduction_45_dparser_gram }], align 16
@d_goto_valid_79_dparser_gram = global [16 x i8] c"\00\00\00\0B\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_79_dparser_gram = global [2 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_53_dparser_gram, %struct.D_Reduction* @d_reduction_58_dparser_gram], align 16
@d_right_epsilon_hints_79_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 2, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_goto_valid_80_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00", align 16
@d_reductions_81_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_107_dparser_gram], align 8
@d_reductions_82_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_119_dparser_gram], align 8
@d_reductions_83_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_107_dparser_gram], align 8
@d_reductions_84_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_115_dparser_gram], align 8
@d_reductions_85_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_107_dparser_gram], align 8
@d_reductions_86_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_117_dparser_gram], align 8
@d_reductions_87_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_12_dparser_gram], align 8
@d_reductions_88_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_18_dparser_gram], align 8
@d_reductions_89_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_15_dparser_gram], align 8
@d_reductions_90_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_23_dparser_gram], align 8
@d_reductions_91_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_38_dparser_gram], align 8
@d_goto_valid_92_dparser_gram = global [16 x i8] c"\00\00 \00\00\00\00\00\00\00\00\04\00\00\00\00", align 16
@d_reductions_92_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_45_dparser_gram], align 8
@d_goto_valid_93_dparser_gram = global [16 x i8] c"\00\00\80\00\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_93_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_51_dparser_gram], align 8
@d_right_epsilon_hints_93_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 1, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_reductions_94_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_52_dparser_gram], align 8
@d_goto_valid_95_dparser_gram = global [16 x i8] c"\00\00\00\90\02@\81\03\00\00\00(\00\80\02\1C", align 16
@d_reductions_96_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_38_dparser_gram], align 8
@d_goto_valid_97_dparser_gram = global [16 x i8] c"\00\00@@\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_97_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_97_dparser_gram = global [2 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 111, %struct.D_Reduction* @d_reduction_48_dparser_gram }, %struct.D_RightEpsilonHint { i16 3, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_reductions_98_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_46_dparser_gram], align 8
@d_goto_valid_99_dparser_gram = global [16 x i8] c"\00\00\00\00\B0\0C\01\00\00\00\00\00\F0?\02\00", align 16
@d_reductions_99_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_97_dparser_gram], align 8
@d_right_epsilon_hints_99_dparser_gram = global [2 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }, %struct.D_RightEpsilonHint { i16 2, i16 151, %struct.D_Reduction* @d_reduction_91_dparser_gram }], align 16
@d_goto_valid_100_dparser_gram = global [16 x i8] c"\00\00\00\00\01\00\C4?\00\00\00 \00\80\02\FE", align 16
@d_goto_valid_101_dparser_gram = global [16 x i8] c"\00\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_101_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_73_dparser_gram], align 8
@d_goto_valid_102_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_102_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_106_dparser_gram], align 8
@d_reductions_103_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_57_dparser_gram], align 8
@d_goto_valid_104_dparser_gram = global [16 x i8] c"\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_104_dparser_gram = global [2 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_56_dparser_gram, %struct.D_Reduction* @d_reduction_70_dparser_gram], align 16
@d_right_epsilon_hints_104_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 132, %struct.D_Reduction* @d_reduction_54_dparser_gram }], align 16
@d_goto_valid_105_dparser_gram = global [16 x i8] c"\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_105_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_61_dparser_gram], align 8
@d_right_epsilon_hints_105_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 133, %struct.D_Reduction* @d_reduction_59_dparser_gram }], align 16
@d_reductions_106_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_72_dparser_gram], align 8
@d_reductions_107_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_71_dparser_gram], align 8
@d_reductions_108_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_63_dparser_gram], align 8
@d_reductions_109_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_64_dparser_gram], align 8
@d_reductions_110_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_65_dparser_gram], align 8
@d_reductions_111_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_48_dparser_gram], align 8
@d_reductions_112_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_80_dparser_gram], align 8
@d_reductions_113_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_81_dparser_gram], align 8
@d_reductions_114_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_82_dparser_gram], align 8
@d_reductions_115_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_83_dparser_gram], align 8
@d_reductions_116_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_84_dparser_gram], align 8
@d_reductions_117_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_85_dparser_gram], align 8
@d_reductions_118_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_86_dparser_gram], align 8
@d_reductions_119_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_87_dparser_gram], align 8
@d_reductions_120_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_88_dparser_gram], align 8
@d_reductions_121_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_89_dparser_gram], align 8
@d_reductions_122_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_50_dparser_gram], align 8
@d_goto_valid_123_dparser_gram = global [16 x i8] c"\00\00\00\00@\00\00<\00\00\00\00\00\00\00\E0", align 16
@d_reductions_124_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_49_dparser_gram], align 8
@d_goto_valid_125_dparser_gram = global [16 x i8] c"\00\00\00\00\00R\00\00\00\00\00\00\00\80\00\00", align 16
@d_reductions_125_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_95_dparser_gram], align 8
@d_right_epsilon_hints_125_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 1, i16 151, %struct.D_Reduction* @d_reduction_91_dparser_gram }], align 16
@d_reductions_126_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_96_dparser_gram], align 8
@d_reductions_127_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_98_dparser_gram], align 8
@d_goto_valid_128_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4\BF\00\00\00 \00\80\02\FE", align 16
@d_reductions_129_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_69_dparser_gram], align 8
@d_goto_valid_130_dparser_gram = global [16 x i8] c"\00\00H@\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_130_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_62_dparser_gram], align 8
@d_right_epsilon_hints_130_dparser_gram = global [2 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 1, i16 92, %struct.D_Reduction* @d_reduction_45_dparser_gram }, %struct.D_RightEpsilonHint { i16 3, i16 124, %struct.D_Reduction* @d_reduction_49_dparser_gram }], align 16
@d_goto_valid_131_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\C4?\00\00\00 \00\80\06\FE", align 16
@d_goto_valid_132_dparser_gram = global [16 x i8] c"\00\00\00\00\08\00\00\00\00\00\00\80\0F\00\00\00", align 16
@d_reductions_132_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_54_dparser_gram], align 8
@d_goto_valid_133_dparser_gram = global [16 x i8] c"\00\00\00\00\08\00\00\00\00\00\00\80\0F\00\00\00", align 16
@d_reductions_133_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_59_dparser_gram], align 8
@d_reductions_134_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_79_dparser_gram], align 8
@d_reductions_135_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_90_dparser_gram], align 8
@d_goto_valid_136_dparser_gram = global [16 x i8] c"\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00", align 16
@d_reductions_136_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_93_dparser_gram], align 8
@d_right_epsilon_hints_136_dparser_gram = global [1 x %struct.D_RightEpsilonHint] [%struct.D_RightEpsilonHint { i16 0, i16 151, %struct.D_Reduction* @d_reduction_91_dparser_gram }], align 16
@d_reductions_137_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_94_dparser_gram], align 8
@d_reductions_138_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_99_dparser_gram], align 8
@d_reductions_139_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_66_dparser_gram], align 8
@d_reductions_140_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_68_dparser_gram], align 8
@d_goto_valid_141_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00", align 16
@d_reductions_142_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_104_dparser_gram], align 8
@d_reductions_143_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_105_dparser_gram], align 8
@d_goto_valid_144_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00<\00\00\00\00\00\00\00\E0", align 16
@d_reductions_145_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_75_dparser_gram], align 8
@d_reductions_146_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_76_dparser_gram], align 8
@d_reductions_147_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_77_dparser_gram], align 8
@d_reductions_148_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_78_dparser_gram], align 8
@d_reductions_149_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_55_dparser_gram], align 8
@d_reductions_150_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_60_dparser_gram], align 8
@d_goto_valid_151_dparser_gram = global [16 x i8] c"\00\00\00\00\00 \00\02\00\00\00\00\00\00\00\10", align 16
@d_reductions_151_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_91_dparser_gram], align 8
@d_reductions_152_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_67_dparser_gram], align 8
@d_reductions_153_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_74_dparser_gram], align 8
@d_reductions_154_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_92_dparser_gram], align 8
@d_goto_valid_155_dparser_gram = global [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\10\00\00\00\00\00", align 16
@d_goto_valid_156_dparser_gram = global [16 x i8] c"\00\00\00\00\00@\00\00\00\00\00\00\00\80\00\00", align 16
@d_reductions_157_dparser_gram = global [1 x %struct.D_Reduction*] [%struct.D_Reduction* @d_reduction_100_dparser_gram], align 8
@d_gotos_dparser_gram = global [547 x i16] [i16 2, i16 3, i16 14, i16 15, i16 31, i16 4, i16 16, i16 49, i16 54, i16 50, i16 56, i16 53, i16 60, i16 55, i16 17, i16 51, i16 18, i16 19, i16 59, i16 61, i16 62, i16 65, i16 78, i16 90, i16 17, i16 79, i16 18, i16 19, i16 92, i16 89, i16 93, i16 81, i16 97, i16 80, i16 79, i16 88, i16 67, i16 99, i16 100, i16 73, i16 74, i16 131, i16 80, i16 132, i16 32, i16 20, i16 133, i16 134, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 21, i16 152, i16 52, i16 94, i16 95, i16 5, i16 96, i16 6, i16 153, i16 7, i16 21, i16 8, i16 9, i16 157, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 13, i16 52, i16 142, i16 112, i16 0, i16 79, i16 10, i16 66, i16 57, i16 22, i16 11, i16 80, i16 58, i16 80, i16 137, i16 0, i16 10, i16 138, i16 13, i16 139, i16 11, i16 68, i16 69, i16 70, i16 71, i16 72, i16 158, i16 23, i16 98, i16 24, i16 0, i16 77, i16 12, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 13, i16 150, i16 13, i16 0, i16 0, i16 0, i16 0, i16 64, i16 0, i16 155, i16 13, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 63, i16 156, i16 0, i16 13, i16 76, i16 20, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 75, i16 0, i16 12, i16 0, i16 5, i16 0, i16 6, i16 151, i16 7, i16 12, i16 8, i16 9, i16 83, i16 22, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 145, i16 146, i16 147, i16 148, i16 149, i16 0, i16 22, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 154, i16 38, i16 39, i16 40, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 23, i16 0, i16 24, i16 13, i16 0, i16 12, i16 0, i16 22, i16 82, i16 135, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 91, i16 74, i16 145, i16 146, i16 147, i16 148, i16 149, i16 0, i16 23, i16 0, i16 24, i16 0, i16 136, i16 38, i16 39, i16 40, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 85, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 84, i16 28, i16 29, i16 30, i16 87, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 69, i16 70, i16 71, i16 72, i16 0, i16 0, i16 0, i16 22, i16 0, i16 123, i16 124, i16 0, i16 125, i16 0, i16 0, i16 126, i16 127, i16 0, i16 28, i16 29, i16 30, i16 128, i16 0, i16 0, i16 22, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 23, i16 104, i16 24, i16 86, i16 105, i16 0, i16 106, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 0, i16 107, i16 0, i16 108, i16 0, i16 0, i16 129, i16 0, i16 0, i16 0, i16 109, i16 110, i16 111, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 0, i16 130, i16 0, i16 103, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 141, i16 101, i16 0, i16 102, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 140, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 12, i16 22, i16 103, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 26, i16 27, i16 13, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30, i16 144, i16 0, i16 0, i16 0, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 22, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 23, i16 0, i16 24, i16 143, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 25, i16 26, i16 27, i16 13, i16 28, i16 29, i16 30], align 16
@.str.2 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c";\00", align 1
@d_error_recovery_hints_3_dparser_gram = global [2 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@.str.4 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@d_error_recovery_hints_4_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_5_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_11_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_13_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@d_error_recovery_hints_17_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@d_error_recovery_hints_21_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_error_recovery_hints_22_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_23_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_48_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 2, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_53_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_55_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_56_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 2, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@d_error_recovery_hints_59_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_62_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_74_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_77_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@d_error_recovery_hints_81_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_error_recovery_hints_83_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_85_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_87_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 4, i16 7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_91_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 4, i16 15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0) }], align 16
@d_error_recovery_hints_95_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_99_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_100_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_101_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_error_recovery_hints_102_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 1, i16 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_125_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_130_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 2, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_error_recovery_hints_131_dparser_gram = global [3 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 0, i16 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }, %struct.D_ErrorRecoveryHint { i16 0, i16 50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_139_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0) }], align 16
@d_error_recovery_hints_141_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_error_recovery_hints_142_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 3, i16 48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0) }], align 16
@d_error_recovery_hints_152_dparser_gram = global [1 x %struct.D_ErrorRecoveryHint] [%struct.D_ErrorRecoveryHint { i16 4, i16 31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0) }], align 16
@d_states_dparser_gram = global [158 x %struct.D_State] [%struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_0_dparser_gram, i32 0, i32 0), i32 1, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_0_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 1, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_2_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_3_dparser_gram, i32 0, i32 0), i32 1, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 2, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([2 x %struct.D_ErrorRecoveryHint], [2 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_3_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([10 x %struct.D_Shift*], [10 x %struct.D_Shift*]* @d_shifts_3_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([37 x %struct.SB_uint8]* @d_scanner_3_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([37 x %struct.SB_trans_uint8]* @d_transition_3_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([2 x %struct.D_Shift**], [2 x %struct.D_Shift**]* @d_accepts_diff_3_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_4_dparser_gram, i32 0, i32 0), i32 6, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_4_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([11 x %struct.D_Shift*], [11 x %struct.D_Shift*]* @d_shifts_4_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([27 x %struct.SB_uint8]* @d_scanner_4_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([27 x %struct.SB_trans_uint8]* @d_transition_4_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_4_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_5_dparser_gram, i32 0, i32 0), i32 6, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_5_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([9 x %struct.D_Shift*], [9 x %struct.D_Shift*]* @d_shifts_5_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([100 x %struct.SB_uint8]* @d_scanner_5_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([100 x %struct.SB_trans_uint8]* @d_transition_5_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_5_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_6_dparser_gram, i32 0, i32 0), i32 -1, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_5_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_6_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_6_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_6_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_6_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_7_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_8_dparser_gram, i32 0, i32 0), i32 46, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_5_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_6_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_6_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_6_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_6_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_9_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_10_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_11_dparser_gram, i32 0, i32 0), i32 39, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_11_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_11_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_12_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_13_dparser_gram, i32 0, i32 0), i32 -9, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_13_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_13_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([4 x %struct.D_Shift*], [4 x %struct.D_Shift*]* @d_shifts_13_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([4 x %struct.SB_uint8]* @d_scanner_13_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([4 x %struct.SB_trans_uint8]* @d_transition_13_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([2 x %struct.D_Shift**], [2 x %struct.D_Shift**]* @d_accepts_diff_13_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_14_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_15_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_16_dparser_gram, i32 0, i32 0), i32 -5, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_16_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_16_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_17_dparser_gram, i32 0, i32 0), i32 -2, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_17_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([3 x %struct.D_Shift*], [3 x %struct.D_Shift*]* @d_shifts_17_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([4 x %struct.SB_uint8]* @d_scanner_17_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([4 x %struct.SB_trans_uint8]* @d_transition_17_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([2 x %struct.D_Shift**], [2 x %struct.D_Shift**]* @d_accepts_diff_17_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_18_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_19_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_20_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_21_dparser_gram, i32 0, i32 0), i32 41, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_21_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_21_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_22_dparser_gram, i32 0, i32 0), i32 32, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_22_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_22_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_23_dparser_gram, i32 0, i32 0), i32 32, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_23_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_23_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_24_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_25_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_26_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_27_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_28_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_29_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_30_dparser_gram, i32 0, i32 0), i32 -80, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_4_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_30_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_30_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_30_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_30_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_31_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_32_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_33_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_34_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_35_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_36_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_37_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_38_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_39_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_40_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_41_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_42_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_43_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_44_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_45_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_46_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_47_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_48_dparser_gram, i32 0, i32 0), i32 -12, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_48_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_48_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_49_dparser_gram, i32 0, i32 0), i32 -22, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_48_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([3 x %struct.D_Shift*], [3 x %struct.D_Shift*]* @d_shifts_49_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([3 x %struct.SB_uint8]* @d_scanner_49_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([3 x %struct.SB_trans_uint8]* @d_transition_49_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_49_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_50_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_51_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_52_dparser_gram, i32 0, i32 0), i32 -28, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_52_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_48_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([6 x %struct.D_Shift*], [6 x %struct.D_Shift*]* @d_shifts_52_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([39 x %struct.SB_uint8]* @d_scanner_52_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([39 x %struct.SB_trans_uint8]* @d_transition_52_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_52_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_53_dparser_gram, i32 0, i32 0), i32 -97, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_53_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_30_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_30_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_30_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_30_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_54_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_55_dparser_gram, i32 0, i32 0), i32 -102, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_55_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_55_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([7 x %struct.D_Shift*], [7 x %struct.D_Shift*]* @d_shifts_55_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([34 x %struct.SB_uint8]* @d_scanner_55_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([34 x %struct.SB_trans_uint8]* @d_transition_55_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_55_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_56_dparser_gram, i32 0, i32 0), i32 -3, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_56_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 2, %struct.D_RightEpsilonHint* getelementptr inbounds ([2 x %struct.D_RightEpsilonHint], [2 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_56_dparser_gram, i32 0, i32 0) }, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_56_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_57_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_58_dparser_gram, i32 0, i32 0), i32 -12, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_58_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 2, %struct.D_RightEpsilonHint* getelementptr inbounds ([2 x %struct.D_RightEpsilonHint], [2 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_58_dparser_gram, i32 0, i32 0) }, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_56_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_59_dparser_gram, i32 0, i32 0), i32 -122, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_59_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_59_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_59_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_59_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_59_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_60_dparser_gram, i32 0, i32 0), i32 -200, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_59_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_30_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_30_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_30_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_30_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_61_dparser_gram, i32 0, i32 0), i32 -217, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_59_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_61_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_61_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_61_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_61_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_62_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_62_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_63_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_64_dparser_gram, i32 0, i32 0), i32 28, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_62_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([3 x %struct.D_Shift*], [3 x %struct.D_Shift*]* @d_shifts_49_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([3 x %struct.SB_uint8]* @d_scanner_49_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([3 x %struct.SB_trans_uint8]* @d_transition_49_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_49_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_65_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_62_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_66_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_67_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_68_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_69_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_70_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_71_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_72_dparser_gram, i32 0, i32 0), i32 40, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_62_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_72_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_72_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_72_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_72_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_73_dparser_gram, i32 0, i32 0), i32 -214, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_73_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_73_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([6 x %struct.D_Shift*], [6 x %struct.D_Shift*]* @d_shifts_52_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([39 x %struct.SB_uint8]* @d_scanner_52_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([39 x %struct.SB_trans_uint8]* @d_transition_52_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_52_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_74_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_74_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_75_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_76_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_77_dparser_gram, i32 0, i32 0), i32 57, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_77_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_77_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_77_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_77_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_77_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_78_dparser_gram, i32 0, i32 0), i32 -10, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_78_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_78_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_79_dparser_gram, i32 0, i32 0), i32 -35, %struct.anon.9 { i32 2, %struct.D_Reduction** getelementptr inbounds ([2 x %struct.D_Reduction*], [2 x %struct.D_Reduction*]* @d_reductions_79_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_79_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_80_dparser_gram, i32 0, i32 0), i32 53, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_77_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_77_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_77_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_77_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_77_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_81_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_81_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_82_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_83_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_83_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_84_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_85_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_85_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_86_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_87_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_87_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_88_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_89_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_87_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_90_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_91_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_91_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_92_dparser_gram, i32 0, i32 0), i32 -16, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_92_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_92_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_92_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_92_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_92_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_93_dparser_gram, i32 0, i32 0), i32 -15, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_93_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_93_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_94_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_95_dparser_gram, i32 0, i32 0), i32 -301, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_95_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([8 x %struct.D_Shift*], [8 x %struct.D_Shift*]* @d_shifts_95_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([21 x %struct.SB_uint8]* @d_scanner_95_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([21 x %struct.SB_trans_uint8]* @d_transition_95_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_95_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_96_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_91_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_97_dparser_gram, i32 0, i32 0), i32 -59, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_97_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 2, %struct.D_RightEpsilonHint* getelementptr inbounds ([2 x %struct.D_RightEpsilonHint], [2 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_97_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_98_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_99_dparser_gram, i32 0, i32 0), i32 -259, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_99_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 2, %struct.D_RightEpsilonHint* getelementptr inbounds ([2 x %struct.D_RightEpsilonHint], [2 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_99_dparser_gram, i32 0, i32 0) }, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_99_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_99_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([67 x %struct.SB_uint8]* @d_scanner_99_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([67 x %struct.SB_trans_uint8]* @d_transition_99_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_99_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_100_dparser_gram, i32 0, i32 0), i32 -320, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_100_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([11 x %struct.D_Shift*], [11 x %struct.D_Shift*]* @d_shifts_4_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([27 x %struct.SB_uint8]* @d_scanner_4_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([27 x %struct.SB_trans_uint8]* @d_transition_4_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_4_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_101_dparser_gram, i32 0, i32 0), i32 -7, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_101_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_101_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_102_dparser_gram, i32 0, i32 0), i32 6, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_102_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_102_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_103_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_104_dparser_gram, i32 0, i32 0), i32 -20, %struct.anon.9 { i32 2, %struct.D_Reduction** getelementptr inbounds ([2 x %struct.D_Reduction*], [2 x %struct.D_Reduction*]* @d_reductions_104_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_104_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_105_dparser_gram, i32 0, i32 0), i32 -18, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_105_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_105_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_106_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_107_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_108_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_109_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_110_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_111_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_112_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_113_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_114_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_115_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_116_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_117_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_118_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_119_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_120_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_121_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_122_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_123_dparser_gram, i32 0, i32 0), i32 -179, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([4 x %struct.D_Shift*], [4 x %struct.D_Shift*]* @d_shifts_123_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([11 x %struct.SB_uint8]* @d_scanner_123_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([11 x %struct.SB_trans_uint8]* @d_transition_123_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([2 x %struct.D_Shift**], [2 x %struct.D_Shift**]* @d_accepts_diff_123_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_124_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_125_dparser_gram, i32 0, i32 0), i32 -51, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_125_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_125_dparser_gram, i32 0, i32 0) }, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_125_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_125_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_125_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_125_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_125_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_126_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_127_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_128_dparser_gram, i32 0, i32 0), i32 -341, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_100_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_30_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_30_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_30_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_30_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_129_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_130_dparser_gram, i32 0, i32 0), i32 -61, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_130_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 2, %struct.D_RightEpsilonHint* getelementptr inbounds ([2 x %struct.D_RightEpsilonHint], [2 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_130_dparser_gram, i32 0, i32 0) }, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_130_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_131_dparser_gram, i32 0, i32 0), i32 -419, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 3, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([3 x %struct.D_ErrorRecoveryHint], [3 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_131_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([12 x %struct.D_Shift*], [12 x %struct.D_Shift*]* @d_shifts_61_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([28 x %struct.SB_uint8]* @d_scanner_61_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([28 x %struct.SB_trans_uint8]* @d_transition_61_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([3 x %struct.D_Shift**], [3 x %struct.D_Shift**]* @d_accepts_diff_61_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_132_dparser_gram, i32 0, i32 0), i32 -89, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_132_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([6 x %struct.D_Shift*], [6 x %struct.D_Shift*]* @d_shifts_132_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([11 x %struct.SB_uint8]* @d_scanner_132_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([11 x %struct.SB_trans_uint8]* @d_transition_132_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_132_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_133_dparser_gram, i32 0, i32 0), i32 -132, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_133_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([6 x %struct.D_Shift*], [6 x %struct.D_Shift*]* @d_shifts_132_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([11 x %struct.SB_uint8]* @d_scanner_132_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([11 x %struct.SB_trans_uint8]* @d_transition_132_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_132_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_134_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_135_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_136_dparser_gram, i32 0, i32 0), i32 -17, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_136_dparser_gram, i32 0, i32 0) }, %struct.anon.10 { i32 1, %struct.D_RightEpsilonHint* getelementptr inbounds ([1 x %struct.D_RightEpsilonHint], [1 x %struct.D_RightEpsilonHint]* @d_right_epsilon_hints_136_dparser_gram, i32 0, i32 0) }, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_137_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_138_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_139_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_139_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_140_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_141_dparser_gram, i32 0, i32 0), i32 30, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_141_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_141_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_141_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_141_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_141_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_142_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_142_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_143_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_144_dparser_gram, i32 0, i32 0), i32 -139, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([4 x %struct.D_Shift*], [4 x %struct.D_Shift*]* @d_shifts_123_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([11 x %struct.SB_uint8]* @d_scanner_123_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([11 x %struct.SB_trans_uint8]* @d_transition_123_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([2 x %struct.D_Shift**], [2 x %struct.D_Shift**]* @d_accepts_diff_123_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_145_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_146_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_147_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_148_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_149_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_150_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_151_dparser_gram, i32 0, i32 0), i32 -87, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_151_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_6_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_6_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_6_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_6_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_152_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_152_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_153_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_154_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_155_dparser_gram, i32 0, i32 0), i32 15, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_155_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_155_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_155_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_155_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @d_goto_valid_156_dparser_gram, i32 0, i32 0), i32 -58, %struct.anon.9 zeroinitializer, %struct.anon.10 zeroinitializer, %struct.anon.11 { i32 1, %struct.D_ErrorRecoveryHint* getelementptr inbounds ([1 x %struct.D_ErrorRecoveryHint], [1 x %struct.D_ErrorRecoveryHint]* @d_error_recovery_hints_125_dparser_gram, i32 0, i32 0) }, %struct.D_Shift** getelementptr inbounds ([2 x %struct.D_Shift*], [2 x %struct.D_Shift*]* @d_shifts_125_dparser_gram, i32 0, i32 0), i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* bitcast ([2 x %struct.SB_uint8]* @d_scanner_125_dparser_gram to i8*), i8 1, i8 0, i8 0, i8* bitcast ([2 x %struct.SB_trans_uint8]* @d_transition_125_dparser_gram to i8*), %struct.D_Shift*** getelementptr inbounds ([1 x %struct.D_Shift**], [1 x %struct.D_Shift**]* @d_accepts_diff_125_dparser_gram, i32 0, i32 0), i32 -1 }, %struct.D_State { i8* null, i32 -2147483647, %struct.anon.9 { i32 1, %struct.D_Reduction** getelementptr inbounds ([1 x %struct.D_Reduction*], [1 x %struct.D_Reduction*]* @d_reductions_157_dparser_gram, i32 0, i32 0) }, %struct.anon.10 zeroinitializer, %struct.anon.11 zeroinitializer, %struct.D_Shift** null, i32 (i8**, i32*, i32*, i16*, i32*, i8*, i32*)* null, i8* null, i8 1, i8 0, i8 0, i8* null, %struct.D_Shift*** null, i32 -1 }], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c"0 Start\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"1 Start\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"grammar\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"grammar.6\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"grammar.4\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"grammar.4.5\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"grammar.3\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"global_code\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"global_code.10\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"global_code.9\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"global_code.8\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"pass_types\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"pass_type\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"declarationtype\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"token_identifier\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"production\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"regex_production\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"production_name\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"production_name.18\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"rules\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"rules.21\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"rules.20\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"rule\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"rule.29\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"rule.28\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"rule.23\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"rule.23.27\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"rule.23.26\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"rule.23.24\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"rule.23.24.25\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"new_rule\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"simple_element\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"simple_element.32\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"element\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"new_subrule\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"element_modifier\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"rule_modifier\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"rule_assoc\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"rule_priority\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"rule_code\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"rule_code.42\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"rule_code.41\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"rule_code.40\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"speculative_code\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"final_code\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"pass_code\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"curly_code\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"curly_code.47\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"bracket_code\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"bracket_code.49\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"balanced_code\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"balanced_code.53\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"balanced_code.52\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"balanced_code.51\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"regex\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"integer\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"decimalint\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"hexint\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"octalint\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"${scanner\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"${declare\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"${token\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"${action}\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"${pass\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"preorder\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"postorder\00", align 1
@.str.75 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"for_all\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"for_undefined\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"tokenize\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"longest_match\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"whitespace\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"all_matches\00", align 1
@.str.82 = private unnamed_addr constant [26 x i8] c"set_op_priority_from_rule\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"all_subparsers\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"subparser\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"save_parse_tree\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"::=\00", align 1
@.str.88 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"${scan\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"$term\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"/i\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.95 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"$unary_op_right\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"$unary_op_left\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"$binary_op_right\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"$binary_op_left\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"$unary_right\00", align 1
@.str.102 = private unnamed_addr constant [12 x i8] c"$unary_left\00", align 1
@.str.103 = private unnamed_addr constant [14 x i8] c"$binary_right\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"$binary_left\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"$right\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"$left\00", align 1
@.str.107 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.108 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.109 = private unnamed_addr constant [32 x i8] c"[!~`@#$%^&*\5C\5C-_+=|:;\5C\5C\5C\5C<,>.?/]\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c"'([^'\5C\5C\5C\5C]|\5C\5C\5C\5C[^])*'\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"\5C\22([^\5C\22\5C\5C\5C\5C]|\5C\5C\5C\5C[^])*\5C\22\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"[a-zA-Z_][a-zA-Z_0-9]*\00", align 1
@.str.113 = private unnamed_addr constant [21 x i8] c"-?[1-9][0-9]*[uUlL]?\00", align 1
@.str.114 = private unnamed_addr constant [29 x i8] c"-?(0x|0X)[0-9a-fA-F]+[uUlL]?\00", align 1
@.str.115 = private unnamed_addr constant [17 x i8] c"-?0[0-7]*[uUlL]?\00", align 1
@d_symbols_dparser_gram = global [128 x %struct.D_Symbol] [%struct.D_Symbol { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i32 11 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 11 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 14 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i32 0, i32 0), i32 18 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 5 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 4 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.31, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), i32 14 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i32 17 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i32 0, i32 0), i32 11 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.41, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.50, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 5 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.75, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 7 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 8 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 10 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i32 11 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.82, i32 0, i32 0), i32 25 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i32 14 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i32 0, i32 0), i32 9 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.87, i32 0, i32 0), i32 3 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.89, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.90, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 5 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i32 0, i32 0), i32 2 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.96, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0), i32 14 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.99, i32 0, i32 0), i32 16 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i32 0, i32 0), i32 15 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i32 0, i32 0), i32 11 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.103, i32 0, i32 0), i32 13 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.104, i32 0, i32 0), i32 12 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0), i32 6 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), i32 5 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.86, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.108, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.107, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 1 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.109, i32 0, i32 0), i32 37 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.110, i32 0, i32 0), i32 29 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.111, i32 0, i32 0), i32 38 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i32 0, i32 0), i32 22 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.113, i32 0, i32 0), i32 20 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.114, i32 0, i32 0), i32 28 }, %struct.D_Symbol { i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.115, i32 0, i32 0), i32 16 }], align 16
@parser_tables_dparser_gram = global %struct.D_ParserTables { i32 158, %struct.D_State* getelementptr inbounds ([158 x %struct.D_State], [158 x %struct.D_State]* @d_states_dparser_gram, i32 0, i32 0), i16* getelementptr inbounds ([547 x i16], [547 x i16]* @d_gotos_dparser_gram, i32 0, i32 0), i32 0, i32 128, %struct.D_Symbol* getelementptr inbounds ([128 x %struct.D_Symbol], [128 x %struct.D_Symbol]* @d_symbols_dparser_gram, i32 0, i32 0), void (%struct.D_Parser*, %struct.d_loc_t*, i8**)* null, i32 0, %struct.D_Pass* null, i32 0 }, align 8

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_7_10_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %add.ptr3 = getelementptr inbounds i8, i8* %8, i64 1
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx4, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext5 = sext i32 %11 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %10, i64 %idx.ext5
  %12 = bitcast i8* %add.ptr6 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 -1
  %14 = load i8**, i8*** %_children.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx8, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %16 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %15, i64 %idx.ext9
  %17 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %start_loc11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc11, i32 0, i32 4
  %18 = load i32, i32* %line, align 4
  call void @add_global_code(%struct.Grammar* %3, i8* %add.ptr3, i8* %add.ptr7, i32 %18)
  ret i32 0
}

declare void @add_global_code(%struct.Grammar*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_7_11_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 1
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %3, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx1, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  %8 = bitcast i8* %add.ptr3 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 2
  %9 = load i8*, i8** %end, align 8
  %call = call i8* @dup_str(i8* %4, i8* %9)
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 6
  %13 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %scanner = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 4
  %code = getelementptr inbounds %struct.Code, %struct.Code* %scanner, i32 0, i32 0
  store i8* %call, i8** %code, align 8
  %14 = load i8**, i8*** %_children.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx6, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %idx.ext7
  %17 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %start_loc9 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc9, i32 0, i32 4
  %18 = load i32, i32* %line, align 4
  %19 = load i8*, i8** %_ps.addr, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext10 = sext i32 %20 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %19, i64 %idx.ext10
  %21 = bitcast i8* %add.ptr11 to %struct.D_ParseNode*
  %globals12 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 6
  %22 = load %struct.Grammar*, %struct.Grammar** %globals12, align 8
  %scanner13 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 4
  %line14 = getelementptr inbounds %struct.Code, %struct.Code* %scanner13, i32 0, i32 1
  store i32 %18, i32* %line14, align 4
  ret i32 0
}

declare i8* @dup_str(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_7_12_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %pn = alloca %struct.D_ParseNode*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %call = call i32 @d_get_number_of_children(%struct.D_ParseNode* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %_ps.addr, align 8
  %5 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %6, i32 0, i32 6
  %7 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %8 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 2
  %9 = load i8*, i8** %arrayidx3, align 8
  %10 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %11 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %11, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %12 = load i8*, i8** %s, align 8
  %13 = load i8**, i8*** %_children.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %13, i64 2
  %14 = load i8*, i8** %arrayidx6, align 8
  %15 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %idx.ext7
  %16 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %16, i32 0, i32 2
  %17 = load i8*, i8** %end, align 8
  %18 = load i8**, i8*** %_children.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %18, i64 1
  %19 = load i8*, i8** %arrayidx9, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext10 = sext i32 %20 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %19, i64 %idx.ext10
  %21 = bitcast i8* %add.ptr11 to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %22 = load i32, i32* %kind, align 4
  %23 = load i8**, i8*** %_children.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %23, i64 2
  %24 = load i8*, i8** %arrayidx12, align 8
  %25 = load i32, i32* %_offset.addr, align 4
  %idx.ext13 = sext i32 %25 to i64
  %add.ptr14 = getelementptr inbounds i8, i8* %24, i64 %idx.ext13
  %26 = bitcast i8* %add.ptr14 to %struct.D_ParseNode*
  %start_loc15 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %26, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc15, i32 0, i32 4
  %27 = load i32, i32* %line, align 4
  call void @add_declaration(%struct.Grammar* %7, i8* %12, i8* %17, i32 %22, i32 %27)
  br label %if.end

if.else:                                          ; preds = %entry
  %28 = load i8**, i8*** %_children.addr, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %28, i64 2
  %29 = load i8*, i8** %arrayidx16, align 8
  %30 = load i32, i32* %_offset.addr, align 4
  %idx.ext17 = sext i32 %30 to i64
  %add.ptr18 = getelementptr inbounds i8, i8* %29, i64 %idx.ext17
  %31 = bitcast i8* %add.ptr18 to %struct.D_ParseNode*
  %call19 = call i32 @d_get_number_of_children(%struct.D_ParseNode* %31)
  store i32 %call19, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i8**, i8*** %_children.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %34, i64 2
  %35 = load i8*, i8** %arrayidx20, align 8
  %36 = load i32, i32* %_offset.addr, align 4
  %idx.ext21 = sext i32 %36 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %35, i64 %idx.ext21
  %37 = bitcast i8* %add.ptr22 to %struct.D_ParseNode*
  %38 = load i32, i32* %i, align 4
  %call23 = call %struct.D_ParseNode* @d_get_child(%struct.D_ParseNode* %37, i32 %38)
  store %struct.D_ParseNode* %call23, %struct.D_ParseNode** %pn, align 8
  %39 = load i8*, i8** %_ps.addr, align 8
  %40 = load i32, i32* %_offset.addr, align 4
  %idx.ext24 = sext i32 %40 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %39, i64 %idx.ext24
  %41 = bitcast i8* %add.ptr25 to %struct.D_ParseNode*
  %globals26 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %41, i32 0, i32 6
  %42 = load %struct.Grammar*, %struct.Grammar** %globals26, align 8
  %43 = load %struct.D_ParseNode*, %struct.D_ParseNode** %pn, align 8
  %start_loc27 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %43, i32 0, i32 1
  %s28 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc27, i32 0, i32 0
  %44 = load i8*, i8** %s28, align 8
  %45 = load %struct.D_ParseNode*, %struct.D_ParseNode** %pn, align 8
  %end29 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %45, i32 0, i32 2
  %46 = load i8*, i8** %end29, align 8
  %47 = load i8**, i8*** %_children.addr, align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %47, i64 1
  %48 = load i8*, i8** %arrayidx30, align 8
  %49 = load i32, i32* %_offset.addr, align 4
  %idx.ext31 = sext i32 %49 to i64
  %add.ptr32 = getelementptr inbounds i8, i8* %48, i64 %idx.ext31
  %50 = bitcast i8* %add.ptr32 to %struct.D_ParseNode*
  %user33 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %50, i32 0, i32 7
  %kind34 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user33, i32 0, i32 3
  %51 = load i32, i32* %kind34, align 4
  %52 = load %struct.D_ParseNode*, %struct.D_ParseNode** %pn, align 8
  %start_loc35 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %52, i32 0, i32 1
  %line36 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc35, i32 0, i32 4
  %53 = load i32, i32* %line36, align 4
  call void @add_declaration(%struct.Grammar* %42, i8* %44, i8* %46, i32 %51, i32 %53)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret i32 0
}

declare i32 @d_get_number_of_children(%struct.D_ParseNode*) #1

declare void @add_declaration(%struct.Grammar*, i8*, i8*, i32, i32) #1

declare %struct.D_ParseNode* @d_get_child(%struct.D_ParseNode*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_7_14_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %action_index = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 26
  %4 = load i32, i32* %action_index, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %action_index, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_7_15_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %14 = load i8**, i8*** %_children.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 2
  %15 = load i8*, i8** %arrayidx6, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %idx.ext7
  %17 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %18 = load i32, i32* %kind, align 4
  %19 = load i8**, i8*** %_children.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %19, i64 1
  %20 = load i8*, i8** %arrayidx9, align 8
  %21 = load i32, i32* %_offset.addr, align 4
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %20, i64 %idx.ext10
  %22 = bitcast i8* %add.ptr11 to %struct.D_ParseNode*
  %start_loc12 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %22, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc12, i32 0, i32 4
  %23 = load i32, i32* %line, align 4
  call void @add_pass(%struct.Grammar* %3, i8* %8, i8* %13, i32 %18, i32 %23)
  ret i32 0
}

declare void @add_pass(%struct.Grammar*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_11_23_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %3, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %4 = load i32, i32* %kind, align 4
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx1, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  %8 = bitcast i8* %add.ptr3 to %struct.D_ParseNode*
  %user4 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 7
  %kind5 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user4, i32 0, i32 3
  %9 = load i32, i32* %kind5, align 4
  %or = or i32 %4, %9
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 %idx.ext6
  %12 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %user8 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 7
  %kind9 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user8, i32 0, i32 3
  store i32 %or, i32* %kind9, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_12_24_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %3 = load i32, i32* %kind, align 4
  %or = or i32 %3, 1
  store i32 %or, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_12_25_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %3 = load i32, i32* %kind, align 4
  %or = or i32 %3, 2
  store i32 %or, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_12_26_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %3 = load i32, i32* %kind, align 4
  %or = or i32 %3, 4
  store i32 %or, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_12_27_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %3 = load i32, i32* %kind, align 4
  %or = or i32 %3, 8
  store i32 %or, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_12_28_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  %3 = load i32, i32* %kind, align 4
  %or = or i32 %3, 16
  store i32 %or, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_29_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 0, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_30_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 1, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_31_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 6, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_32_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 2, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_33_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 3, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_34_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 4, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_35_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 5, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_13_36_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 7
  %kind = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 3
  store i32 7, i32* %kind, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_14_37_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  call void @new_token(%struct.Grammar* %3, i8* %8, i8* %13)
  ret i32 0
}

declare void @new_token(%struct.Grammar*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_16_41_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 23
  %4 = load %struct.Production*, %struct.Production** %p, align 8
  %regex = getelementptr inbounds %struct.Production, %struct.Production* %4, i32 0, i32 4
  %bf.load = load i8, i8* %regex, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %regex, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_17_42_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %call = call i8* @dup_str(i8* %8, i8* %13)
  %call6 = call %struct.Production* @new_production(%struct.Grammar* %3, i8* %call)
  %14 = load i8*, i8** %_ps.addr, align 8
  %15 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %15 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %14, i64 %idx.ext7
  %16 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %globals9 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %16, i32 0, i32 6
  %17 = load %struct.Grammar*, %struct.Grammar** %globals9, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 23
  store %struct.Production* %call6, %struct.Production** %p, align 8
  ret i32 0
}

declare %struct.Production* @new_production(%struct.Grammar*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_22_49_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 23
  %4 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %4, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules, i32 0, i32 2
  %5 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %tobool = icmp ne %struct.Rule** %5, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %6 = load i8*, i8** %_ps.addr, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %8 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 6
  %9 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 24
  %10 = load %struct.Rule*, %struct.Rule** %r, align 8
  %11 = load i8*, i8** %_ps.addr, align 8
  %12 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %12 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 %idx.ext4
  %13 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %globals6 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %13, i32 0, i32 6
  %14 = load %struct.Grammar*, %struct.Grammar** %globals6, align 8
  %p7 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 23
  %15 = load %struct.Production*, %struct.Production** %p7, align 8
  %rules8 = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules8, i32 0, i32 0
  %16 = load i32, i32* %n, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %16 to i64
  %17 = load i8*, i8** %_ps.addr, align 8
  %18 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %18 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %17, i64 %idx.ext9
  %19 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %globals11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %19, i32 0, i32 6
  %20 = load %struct.Grammar*, %struct.Grammar** %globals11, align 8
  %p12 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %20, i32 0, i32 23
  %21 = load %struct.Production*, %struct.Production** %p12, align 8
  %rules13 = getelementptr inbounds %struct.Production, %struct.Production* %21, i32 0, i32 2
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules13, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e, i32 0, i32 0
  %22 = load i8*, i8** %_ps.addr, align 8
  %23 = load i32, i32* %_offset.addr, align 4
  %idx.ext14 = sext i32 %23 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %22, i64 %idx.ext14
  %24 = bitcast i8* %add.ptr15 to %struct.D_ParseNode*
  %globals16 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %24, i32 0, i32 6
  %25 = load %struct.Grammar*, %struct.Grammar** %globals16, align 8
  %p17 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %25, i32 0, i32 23
  %26 = load %struct.Production*, %struct.Production** %p17, align 8
  %rules18 = getelementptr inbounds %struct.Production, %struct.Production* %26, i32 0, i32 2
  %v19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules18, i32 0, i32 2
  store %struct.Rule** %arraydecay, %struct.Rule*** %v19, align 8
  %arrayidx = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay, i64 %idxprom
  store %struct.Rule* %10, %struct.Rule** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %27 = load i8*, i8** %_ps.addr, align 8
  %28 = load i32, i32* %_offset.addr, align 4
  %idx.ext20 = sext i32 %28 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %27, i64 %idx.ext20
  %29 = bitcast i8* %add.ptr21 to %struct.D_ParseNode*
  %globals22 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %29, i32 0, i32 6
  %30 = load %struct.Grammar*, %struct.Grammar** %globals22, align 8
  %p23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %30, i32 0, i32 23
  %31 = load %struct.Production*, %struct.Production** %p23, align 8
  %rules24 = getelementptr inbounds %struct.Production, %struct.Production* %31, i32 0, i32 2
  %v25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules24, i32 0, i32 2
  %32 = load %struct.Rule**, %struct.Rule*** %v25, align 8
  %33 = load i8*, i8** %_ps.addr, align 8
  %34 = load i32, i32* %_offset.addr, align 4
  %idx.ext26 = sext i32 %34 to i64
  %add.ptr27 = getelementptr inbounds i8, i8* %33, i64 %idx.ext26
  %35 = bitcast i8* %add.ptr27 to %struct.D_ParseNode*
  %globals28 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %35, i32 0, i32 6
  %36 = load %struct.Grammar*, %struct.Grammar** %globals28, align 8
  %p29 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %36, i32 0, i32 23
  %37 = load %struct.Production*, %struct.Production** %p29, align 8
  %rules30 = getelementptr inbounds %struct.Production, %struct.Production* %37, i32 0, i32 2
  %e31 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules30, i32 0, i32 3
  %arraydecay32 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e31, i32 0, i32 0
  %cmp = icmp eq %struct.Rule** %32, %arraydecay32
  br i1 %cmp, label %if.then.33, label %if.else.61

if.then.33:                                       ; preds = %if.else
  %38 = load i8*, i8** %_ps.addr, align 8
  %39 = load i32, i32* %_offset.addr, align 4
  %idx.ext34 = sext i32 %39 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %38, i64 %idx.ext34
  %40 = bitcast i8* %add.ptr35 to %struct.D_ParseNode*
  %globals36 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %40, i32 0, i32 6
  %41 = load %struct.Grammar*, %struct.Grammar** %globals36, align 8
  %p37 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 23
  %42 = load %struct.Production*, %struct.Production** %p37, align 8
  %rules38 = getelementptr inbounds %struct.Production, %struct.Production* %42, i32 0, i32 2
  %n39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules38, i32 0, i32 0
  %43 = load i32, i32* %n39, align 4
  %cmp40 = icmp ult i32 %43, 3
  br i1 %cmp40, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.33
  %44 = load i8*, i8** %_ps.addr, align 8
  %45 = load i32, i32* %_offset.addr, align 4
  %idx.ext42 = sext i32 %45 to i64
  %add.ptr43 = getelementptr inbounds i8, i8* %44, i64 %idx.ext42
  %46 = bitcast i8* %add.ptr43 to %struct.D_ParseNode*
  %globals44 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %46, i32 0, i32 6
  %47 = load %struct.Grammar*, %struct.Grammar** %globals44, align 8
  %r45 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %47, i32 0, i32 24
  %48 = load %struct.Rule*, %struct.Rule** %r45, align 8
  %49 = load i8*, i8** %_ps.addr, align 8
  %50 = load i32, i32* %_offset.addr, align 4
  %idx.ext46 = sext i32 %50 to i64
  %add.ptr47 = getelementptr inbounds i8, i8* %49, i64 %idx.ext46
  %51 = bitcast i8* %add.ptr47 to %struct.D_ParseNode*
  %globals48 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %51, i32 0, i32 6
  %52 = load %struct.Grammar*, %struct.Grammar** %globals48, align 8
  %p49 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %52, i32 0, i32 23
  %53 = load %struct.Production*, %struct.Production** %p49, align 8
  %rules50 = getelementptr inbounds %struct.Production, %struct.Production* %53, i32 0, i32 2
  %n51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules50, i32 0, i32 0
  %54 = load i32, i32* %n51, align 4
  %inc52 = add i32 %54, 1
  store i32 %inc52, i32* %n51, align 4
  %idxprom53 = zext i32 %54 to i64
  %55 = load i8*, i8** %_ps.addr, align 8
  %56 = load i32, i32* %_offset.addr, align 4
  %idx.ext54 = sext i32 %56 to i64
  %add.ptr55 = getelementptr inbounds i8, i8* %55, i64 %idx.ext54
  %57 = bitcast i8* %add.ptr55 to %struct.D_ParseNode*
  %globals56 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %57, i32 0, i32 6
  %58 = load %struct.Grammar*, %struct.Grammar** %globals56, align 8
  %p57 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 23
  %59 = load %struct.Production*, %struct.Production** %p57, align 8
  %rules58 = getelementptr inbounds %struct.Production, %struct.Production* %59, i32 0, i32 2
  %v59 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules58, i32 0, i32 2
  %60 = load %struct.Rule**, %struct.Rule*** %v59, align 8
  %arrayidx60 = getelementptr inbounds %struct.Rule*, %struct.Rule** %60, i64 %idxprom53
  store %struct.Rule* %48, %struct.Rule** %arrayidx60, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.33
  br label %if.end.90

if.else.61:                                       ; preds = %if.else
  %61 = load i8*, i8** %_ps.addr, align 8
  %62 = load i32, i32* %_offset.addr, align 4
  %idx.ext62 = sext i32 %62 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %61, i64 %idx.ext62
  %63 = bitcast i8* %add.ptr63 to %struct.D_ParseNode*
  %globals64 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %63, i32 0, i32 6
  %64 = load %struct.Grammar*, %struct.Grammar** %globals64, align 8
  %p65 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %64, i32 0, i32 23
  %65 = load %struct.Production*, %struct.Production** %p65, align 8
  %rules66 = getelementptr inbounds %struct.Production, %struct.Production* %65, i32 0, i32 2
  %n67 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules66, i32 0, i32 0
  %66 = load i32, i32* %n67, align 4
  %and = and i32 %66, 7
  %tobool68 = icmp ne i32 %and, 0
  br i1 %tobool68, label %if.then.69, label %if.end.89

if.then.69:                                       ; preds = %if.else.61
  %67 = load i8*, i8** %_ps.addr, align 8
  %68 = load i32, i32* %_offset.addr, align 4
  %idx.ext70 = sext i32 %68 to i64
  %add.ptr71 = getelementptr inbounds i8, i8* %67, i64 %idx.ext70
  %69 = bitcast i8* %add.ptr71 to %struct.D_ParseNode*
  %globals72 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %69, i32 0, i32 6
  %70 = load %struct.Grammar*, %struct.Grammar** %globals72, align 8
  %r73 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %70, i32 0, i32 24
  %71 = load %struct.Rule*, %struct.Rule** %r73, align 8
  %72 = load i8*, i8** %_ps.addr, align 8
  %73 = load i32, i32* %_offset.addr, align 4
  %idx.ext74 = sext i32 %73 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %72, i64 %idx.ext74
  %74 = bitcast i8* %add.ptr75 to %struct.D_ParseNode*
  %globals76 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %74, i32 0, i32 6
  %75 = load %struct.Grammar*, %struct.Grammar** %globals76, align 8
  %p77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %75, i32 0, i32 23
  %76 = load %struct.Production*, %struct.Production** %p77, align 8
  %rules78 = getelementptr inbounds %struct.Production, %struct.Production* %76, i32 0, i32 2
  %n79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules78, i32 0, i32 0
  %77 = load i32, i32* %n79, align 4
  %inc80 = add i32 %77, 1
  store i32 %inc80, i32* %n79, align 4
  %idxprom81 = zext i32 %77 to i64
  %78 = load i8*, i8** %_ps.addr, align 8
  %79 = load i32, i32* %_offset.addr, align 4
  %idx.ext82 = sext i32 %79 to i64
  %add.ptr83 = getelementptr inbounds i8, i8* %78, i64 %idx.ext82
  %80 = bitcast i8* %add.ptr83 to %struct.D_ParseNode*
  %globals84 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %80, i32 0, i32 6
  %81 = load %struct.Grammar*, %struct.Grammar** %globals84, align 8
  %p85 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %81, i32 0, i32 23
  %82 = load %struct.Production*, %struct.Production** %p85, align 8
  %rules86 = getelementptr inbounds %struct.Production, %struct.Production* %82, i32 0, i32 2
  %v87 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules86, i32 0, i32 2
  %83 = load %struct.Rule**, %struct.Rule*** %v87, align 8
  %arrayidx88 = getelementptr inbounds %struct.Rule*, %struct.Rule** %83, i64 %idxprom81
  store %struct.Rule* %71, %struct.Rule** %arrayidx88, align 8
  br label %do.end

if.end.89:                                        ; preds = %if.else.61
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90
  %84 = load i8*, i8** %_ps.addr, align 8
  %85 = load i32, i32* %_offset.addr, align 4
  %idx.ext92 = sext i32 %85 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %84, i64 %idx.ext92
  %86 = bitcast i8* %add.ptr93 to %struct.D_ParseNode*
  %globals94 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %86, i32 0, i32 6
  %87 = load %struct.Grammar*, %struct.Grammar** %globals94, align 8
  %p95 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %87, i32 0, i32 23
  %88 = load %struct.Production*, %struct.Production** %p95, align 8
  %rules96 = getelementptr inbounds %struct.Production, %struct.Production* %88, i32 0, i32 2
  %89 = bitcast %struct.anon.0* %rules96 to i8*
  %90 = load i8*, i8** %_ps.addr, align 8
  %91 = load i32, i32* %_offset.addr, align 4
  %idx.ext97 = sext i32 %91 to i64
  %add.ptr98 = getelementptr inbounds i8, i8* %90, i64 %idx.ext97
  %92 = bitcast i8* %add.ptr98 to %struct.D_ParseNode*
  %globals99 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %92, i32 0, i32 6
  %93 = load %struct.Grammar*, %struct.Grammar** %globals99, align 8
  %r100 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %93, i32 0, i32 24
  %94 = load %struct.Rule*, %struct.Rule** %r100, align 8
  %95 = bitcast %struct.Rule* %94 to i8*
  call void @vec_add_internal(i8* %89, i8* %95)
  br label %do.end

do.end:                                           ; preds = %if.end.91, %if.then.69, %if.then.41, %if.then
  ret i32 0
}

declare void @vec_add_internal(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_30_62_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8*, i8** %_ps.addr, align 8
  %5 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %6, i32 0, i32 6
  %7 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 23
  %8 = load %struct.Production*, %struct.Production** %p, align 8
  %call = call %struct.Rule* @new_rule(%struct.Grammar* %3, %struct.Production* %8)
  %9 = load i8*, i8** %_ps.addr, align 8
  %10 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %10 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext4
  %11 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %globals6 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %11, i32 0, i32 6
  %12 = load %struct.Grammar*, %struct.Grammar** %globals6, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %12, i32 0, i32 24
  store %struct.Rule* %call, %struct.Rule** %r, align 8
  ret i32 0
}

declare %struct.Rule* @new_rule(%struct.Grammar*, %struct.Production*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_31_63_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %14 = load i8*, i8** %_ps.addr, align 8
  %15 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.ext6
  %16 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals8 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %16, i32 0, i32 6
  %17 = load %struct.Grammar*, %struct.Grammar** %globals8, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 24
  %18 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call = call %struct.Elem* @new_string(%struct.Grammar* %3, i8* %8, i8* %13, %struct.Rule* %18)
  %19 = load i8*, i8** %_ps.addr, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %idx.ext9
  %21 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %globals11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 6
  %22 = load %struct.Grammar*, %struct.Grammar** %globals11, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 25
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  ret i32 0
}

declare %struct.Elem* @new_string(%struct.Grammar*, i8*, i8*, %struct.Rule*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_31_64_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %14 = load i8*, i8** %_ps.addr, align 8
  %15 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.ext6
  %16 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals8 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %16, i32 0, i32 6
  %17 = load %struct.Grammar*, %struct.Grammar** %globals8, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 24
  %18 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call = call %struct.Elem* @new_string(%struct.Grammar* %3, i8* %8, i8* %13, %struct.Rule* %18)
  %19 = load i8*, i8** %_ps.addr, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %idx.ext9
  %21 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %globals11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 6
  %22 = load %struct.Grammar*, %struct.Grammar** %globals11, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 25
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_31_65_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %3, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx1, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext2 = sext i32 %7 to i64
  %add.ptr3 = getelementptr inbounds i8, i8* %6, i64 %idx.ext2
  %8 = bitcast i8* %add.ptr3 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 2
  %9 = load i8*, i8** %end, align 8
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 6
  %13 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 24
  %14 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call = call %struct.Elem* @new_ident(i8* %4, i8* %9, %struct.Rule* %14)
  %15 = load i8*, i8** %_ps.addr, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %16 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %15, i64 %idx.ext6
  %17 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals8 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 6
  %18 = load %struct.Grammar*, %struct.Grammar** %globals8, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %18, i32 0, i32 25
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  ret i32 0
}

declare %struct.Elem* @new_ident(i8*, i8*, %struct.Rule*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_31_66_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %8 = load i8*, i8** %s, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 1
  %10 = load i8*, i8** %arrayidx3, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 2
  %13 = load i8*, i8** %end, align 8
  %14 = load i8*, i8** %_ps.addr, align 8
  %15 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %14, i64 %idx.ext6
  %16 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals8 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %16, i32 0, i32 6
  %17 = load %struct.Grammar*, %struct.Grammar** %globals8, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %17, i32 0, i32 24
  %18 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call = call %struct.Elem* @new_code(%struct.Grammar* %3, i8* %8, i8* %13, %struct.Rule* %18)
  %19 = load i8*, i8** %_ps.addr, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %20 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 %idx.ext9
  %21 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %globals11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 6
  %22 = load %struct.Grammar*, %struct.Grammar** %globals11, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 25
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  ret i32 0
}

declare %struct.Elem* @new_code(%struct.Grammar*, i8*, i8*, %struct.Rule*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_31_67_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 23
  %4 = load %struct.Production*, %struct.Production** %p, align 8
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1
  %6 = load i8*, i8** %arrayidx, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %8 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 7
  %r = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 1
  %9 = load %struct.Rule*, %struct.Rule** %r, align 8
  %call = call %struct.Elem* @new_elem_nterm(%struct.Production* %4, %struct.Rule* %9)
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext3 = sext i32 %11 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %10, i64 %idx.ext3
  %12 = bitcast i8* %add.ptr4 to %struct.D_ParseNode*
  %globals5 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 6
  %13 = load %struct.Grammar*, %struct.Grammar** %globals5, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 25
  store %struct.Elem* %call, %struct.Elem** %e, align 8
  %14 = load i8**, i8*** %_children.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 1
  %15 = load i8*, i8** %arrayidx6, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %idx.ext7
  %17 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %user9 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 7
  %p10 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user9, i32 0, i32 0
  %18 = load %struct.Production*, %struct.Production** %p10, align 8
  %19 = load i8*, i8** %_ps.addr, align 8
  %20 = load i32, i32* %_offset.addr, align 4
  %idx.ext11 = sext i32 %20 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %19, i64 %idx.ext11
  %21 = bitcast i8* %add.ptr12 to %struct.D_ParseNode*
  %globals13 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %21, i32 0, i32 6
  %22 = load %struct.Grammar*, %struct.Grammar** %globals13, align 8
  %p14 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %22, i32 0, i32 23
  store %struct.Production* %18, %struct.Production** %p14, align 8
  %23 = load i8**, i8*** %_children.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %23, i64 1
  %24 = load i8*, i8** %arrayidx15, align 8
  %25 = load i32, i32* %_offset.addr, align 4
  %idx.ext16 = sext i32 %25 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %24, i64 %idx.ext16
  %26 = bitcast i8* %add.ptr17 to %struct.D_ParseNode*
  %user18 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %26, i32 0, i32 7
  %r19 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user18, i32 0, i32 1
  %27 = load %struct.Rule*, %struct.Rule** %r19, align 8
  %28 = load i8*, i8** %_ps.addr, align 8
  %29 = load i32, i32* %_offset.addr, align 4
  %idx.ext20 = sext i32 %29 to i64
  %add.ptr21 = getelementptr inbounds i8, i8* %28, i64 %idx.ext20
  %30 = bitcast i8* %add.ptr21 to %struct.D_ParseNode*
  %globals22 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %30, i32 0, i32 6
  %31 = load %struct.Grammar*, %struct.Grammar** %globals22, align 8
  %r23 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %31, i32 0, i32 24
  store %struct.Rule* %27, %struct.Rule** %r23, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %32 = load i8*, i8** %_ps.addr, align 8
  %33 = load i32, i32* %_offset.addr, align 4
  %idx.ext24 = sext i32 %33 to i64
  %add.ptr25 = getelementptr inbounds i8, i8* %32, i64 %idx.ext24
  %34 = bitcast i8* %add.ptr25 to %struct.D_ParseNode*
  %globals26 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %34, i32 0, i32 6
  %35 = load %struct.Grammar*, %struct.Grammar** %globals26, align 8
  %r27 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %35, i32 0, i32 24
  %36 = load %struct.Rule*, %struct.Rule** %r27, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %36, i32 0, i32 6
  %v = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 2
  %37 = load %struct.Elem**, %struct.Elem*** %v, align 8
  %tobool = icmp ne %struct.Elem** %37, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %38 = load i8*, i8** %_ps.addr, align 8
  %39 = load i32, i32* %_offset.addr, align 4
  %idx.ext28 = sext i32 %39 to i64
  %add.ptr29 = getelementptr inbounds i8, i8* %38, i64 %idx.ext28
  %40 = bitcast i8* %add.ptr29 to %struct.D_ParseNode*
  %globals30 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %40, i32 0, i32 6
  %41 = load %struct.Grammar*, %struct.Grammar** %globals30, align 8
  %e31 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 25
  %42 = load %struct.Elem*, %struct.Elem** %e31, align 8
  %43 = load i8*, i8** %_ps.addr, align 8
  %44 = load i32, i32* %_offset.addr, align 4
  %idx.ext32 = sext i32 %44 to i64
  %add.ptr33 = getelementptr inbounds i8, i8* %43, i64 %idx.ext32
  %45 = bitcast i8* %add.ptr33 to %struct.D_ParseNode*
  %globals34 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %45, i32 0, i32 6
  %46 = load %struct.Grammar*, %struct.Grammar** %globals34, align 8
  %r35 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %46, i32 0, i32 24
  %47 = load %struct.Rule*, %struct.Rule** %r35, align 8
  %elems36 = getelementptr inbounds %struct.Rule, %struct.Rule* %47, i32 0, i32 6
  %n = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems36, i32 0, i32 0
  %48 = load i32, i32* %n, align 4
  %inc = add i32 %48, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %48 to i64
  %49 = load i8*, i8** %_ps.addr, align 8
  %50 = load i32, i32* %_offset.addr, align 4
  %idx.ext37 = sext i32 %50 to i64
  %add.ptr38 = getelementptr inbounds i8, i8* %49, i64 %idx.ext37
  %51 = bitcast i8* %add.ptr38 to %struct.D_ParseNode*
  %globals39 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %51, i32 0, i32 6
  %52 = load %struct.Grammar*, %struct.Grammar** %globals39, align 8
  %r40 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %52, i32 0, i32 24
  %53 = load %struct.Rule*, %struct.Rule** %r40, align 8
  %elems41 = getelementptr inbounds %struct.Rule, %struct.Rule* %53, i32 0, i32 6
  %e42 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems41, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e42, i32 0, i32 0
  %54 = load i8*, i8** %_ps.addr, align 8
  %55 = load i32, i32* %_offset.addr, align 4
  %idx.ext43 = sext i32 %55 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %54, i64 %idx.ext43
  %56 = bitcast i8* %add.ptr44 to %struct.D_ParseNode*
  %globals45 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %56, i32 0, i32 6
  %57 = load %struct.Grammar*, %struct.Grammar** %globals45, align 8
  %r46 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %57, i32 0, i32 24
  %58 = load %struct.Rule*, %struct.Rule** %r46, align 8
  %elems47 = getelementptr inbounds %struct.Rule, %struct.Rule* %58, i32 0, i32 6
  %v48 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems47, i32 0, i32 2
  store %struct.Elem** %arraydecay, %struct.Elem*** %v48, align 8
  %arrayidx49 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay, i64 %idxprom
  store %struct.Elem* %42, %struct.Elem** %arrayidx49, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %59 = load i8*, i8** %_ps.addr, align 8
  %60 = load i32, i32* %_offset.addr, align 4
  %idx.ext50 = sext i32 %60 to i64
  %add.ptr51 = getelementptr inbounds i8, i8* %59, i64 %idx.ext50
  %61 = bitcast i8* %add.ptr51 to %struct.D_ParseNode*
  %globals52 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %61, i32 0, i32 6
  %62 = load %struct.Grammar*, %struct.Grammar** %globals52, align 8
  %r53 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %62, i32 0, i32 24
  %63 = load %struct.Rule*, %struct.Rule** %r53, align 8
  %elems54 = getelementptr inbounds %struct.Rule, %struct.Rule* %63, i32 0, i32 6
  %v55 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems54, i32 0, i32 2
  %64 = load %struct.Elem**, %struct.Elem*** %v55, align 8
  %65 = load i8*, i8** %_ps.addr, align 8
  %66 = load i32, i32* %_offset.addr, align 4
  %idx.ext56 = sext i32 %66 to i64
  %add.ptr57 = getelementptr inbounds i8, i8* %65, i64 %idx.ext56
  %67 = bitcast i8* %add.ptr57 to %struct.D_ParseNode*
  %globals58 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %67, i32 0, i32 6
  %68 = load %struct.Grammar*, %struct.Grammar** %globals58, align 8
  %r59 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %68, i32 0, i32 24
  %69 = load %struct.Rule*, %struct.Rule** %r59, align 8
  %elems60 = getelementptr inbounds %struct.Rule, %struct.Rule* %69, i32 0, i32 6
  %e61 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems60, i32 0, i32 3
  %arraydecay62 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e61, i32 0, i32 0
  %cmp = icmp eq %struct.Elem** %64, %arraydecay62
  br i1 %cmp, label %if.then.63, label %if.else.91

if.then.63:                                       ; preds = %if.else
  %70 = load i8*, i8** %_ps.addr, align 8
  %71 = load i32, i32* %_offset.addr, align 4
  %idx.ext64 = sext i32 %71 to i64
  %add.ptr65 = getelementptr inbounds i8, i8* %70, i64 %idx.ext64
  %72 = bitcast i8* %add.ptr65 to %struct.D_ParseNode*
  %globals66 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %72, i32 0, i32 6
  %73 = load %struct.Grammar*, %struct.Grammar** %globals66, align 8
  %r67 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %73, i32 0, i32 24
  %74 = load %struct.Rule*, %struct.Rule** %r67, align 8
  %elems68 = getelementptr inbounds %struct.Rule, %struct.Rule* %74, i32 0, i32 6
  %n69 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems68, i32 0, i32 0
  %75 = load i32, i32* %n69, align 4
  %cmp70 = icmp ult i32 %75, 3
  br i1 %cmp70, label %if.then.71, label %if.end

if.then.71:                                       ; preds = %if.then.63
  %76 = load i8*, i8** %_ps.addr, align 8
  %77 = load i32, i32* %_offset.addr, align 4
  %idx.ext72 = sext i32 %77 to i64
  %add.ptr73 = getelementptr inbounds i8, i8* %76, i64 %idx.ext72
  %78 = bitcast i8* %add.ptr73 to %struct.D_ParseNode*
  %globals74 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %78, i32 0, i32 6
  %79 = load %struct.Grammar*, %struct.Grammar** %globals74, align 8
  %e75 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %79, i32 0, i32 25
  %80 = load %struct.Elem*, %struct.Elem** %e75, align 8
  %81 = load i8*, i8** %_ps.addr, align 8
  %82 = load i32, i32* %_offset.addr, align 4
  %idx.ext76 = sext i32 %82 to i64
  %add.ptr77 = getelementptr inbounds i8, i8* %81, i64 %idx.ext76
  %83 = bitcast i8* %add.ptr77 to %struct.D_ParseNode*
  %globals78 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %83, i32 0, i32 6
  %84 = load %struct.Grammar*, %struct.Grammar** %globals78, align 8
  %r79 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %84, i32 0, i32 24
  %85 = load %struct.Rule*, %struct.Rule** %r79, align 8
  %elems80 = getelementptr inbounds %struct.Rule, %struct.Rule* %85, i32 0, i32 6
  %n81 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems80, i32 0, i32 0
  %86 = load i32, i32* %n81, align 4
  %inc82 = add i32 %86, 1
  store i32 %inc82, i32* %n81, align 4
  %idxprom83 = zext i32 %86 to i64
  %87 = load i8*, i8** %_ps.addr, align 8
  %88 = load i32, i32* %_offset.addr, align 4
  %idx.ext84 = sext i32 %88 to i64
  %add.ptr85 = getelementptr inbounds i8, i8* %87, i64 %idx.ext84
  %89 = bitcast i8* %add.ptr85 to %struct.D_ParseNode*
  %globals86 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %89, i32 0, i32 6
  %90 = load %struct.Grammar*, %struct.Grammar** %globals86, align 8
  %r87 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %90, i32 0, i32 24
  %91 = load %struct.Rule*, %struct.Rule** %r87, align 8
  %elems88 = getelementptr inbounds %struct.Rule, %struct.Rule* %91, i32 0, i32 6
  %v89 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems88, i32 0, i32 2
  %92 = load %struct.Elem**, %struct.Elem*** %v89, align 8
  %arrayidx90 = getelementptr inbounds %struct.Elem*, %struct.Elem** %92, i64 %idxprom83
  store %struct.Elem* %80, %struct.Elem** %arrayidx90, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.63
  br label %if.end.120

if.else.91:                                       ; preds = %if.else
  %93 = load i8*, i8** %_ps.addr, align 8
  %94 = load i32, i32* %_offset.addr, align 4
  %idx.ext92 = sext i32 %94 to i64
  %add.ptr93 = getelementptr inbounds i8, i8* %93, i64 %idx.ext92
  %95 = bitcast i8* %add.ptr93 to %struct.D_ParseNode*
  %globals94 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %95, i32 0, i32 6
  %96 = load %struct.Grammar*, %struct.Grammar** %globals94, align 8
  %r95 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %96, i32 0, i32 24
  %97 = load %struct.Rule*, %struct.Rule** %r95, align 8
  %elems96 = getelementptr inbounds %struct.Rule, %struct.Rule* %97, i32 0, i32 6
  %n97 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems96, i32 0, i32 0
  %98 = load i32, i32* %n97, align 4
  %and = and i32 %98, 7
  %tobool98 = icmp ne i32 %and, 0
  br i1 %tobool98, label %if.then.99, label %if.end.119

if.then.99:                                       ; preds = %if.else.91
  %99 = load i8*, i8** %_ps.addr, align 8
  %100 = load i32, i32* %_offset.addr, align 4
  %idx.ext100 = sext i32 %100 to i64
  %add.ptr101 = getelementptr inbounds i8, i8* %99, i64 %idx.ext100
  %101 = bitcast i8* %add.ptr101 to %struct.D_ParseNode*
  %globals102 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %101, i32 0, i32 6
  %102 = load %struct.Grammar*, %struct.Grammar** %globals102, align 8
  %e103 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %102, i32 0, i32 25
  %103 = load %struct.Elem*, %struct.Elem** %e103, align 8
  %104 = load i8*, i8** %_ps.addr, align 8
  %105 = load i32, i32* %_offset.addr, align 4
  %idx.ext104 = sext i32 %105 to i64
  %add.ptr105 = getelementptr inbounds i8, i8* %104, i64 %idx.ext104
  %106 = bitcast i8* %add.ptr105 to %struct.D_ParseNode*
  %globals106 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %106, i32 0, i32 6
  %107 = load %struct.Grammar*, %struct.Grammar** %globals106, align 8
  %r107 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %107, i32 0, i32 24
  %108 = load %struct.Rule*, %struct.Rule** %r107, align 8
  %elems108 = getelementptr inbounds %struct.Rule, %struct.Rule* %108, i32 0, i32 6
  %n109 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems108, i32 0, i32 0
  %109 = load i32, i32* %n109, align 4
  %inc110 = add i32 %109, 1
  store i32 %inc110, i32* %n109, align 4
  %idxprom111 = zext i32 %109 to i64
  %110 = load i8*, i8** %_ps.addr, align 8
  %111 = load i32, i32* %_offset.addr, align 4
  %idx.ext112 = sext i32 %111 to i64
  %add.ptr113 = getelementptr inbounds i8, i8* %110, i64 %idx.ext112
  %112 = bitcast i8* %add.ptr113 to %struct.D_ParseNode*
  %globals114 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %112, i32 0, i32 6
  %113 = load %struct.Grammar*, %struct.Grammar** %globals114, align 8
  %r115 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %113, i32 0, i32 24
  %114 = load %struct.Rule*, %struct.Rule** %r115, align 8
  %elems116 = getelementptr inbounds %struct.Rule, %struct.Rule* %114, i32 0, i32 6
  %v117 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems116, i32 0, i32 2
  %115 = load %struct.Elem**, %struct.Elem*** %v117, align 8
  %arrayidx118 = getelementptr inbounds %struct.Elem*, %struct.Elem** %115, i64 %idxprom111
  store %struct.Elem* %103, %struct.Elem** %arrayidx118, align 8
  br label %do.end

if.end.119:                                       ; preds = %if.else.91
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120
  %116 = load i8*, i8** %_ps.addr, align 8
  %117 = load i32, i32* %_offset.addr, align 4
  %idx.ext122 = sext i32 %117 to i64
  %add.ptr123 = getelementptr inbounds i8, i8* %116, i64 %idx.ext122
  %118 = bitcast i8* %add.ptr123 to %struct.D_ParseNode*
  %globals124 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %118, i32 0, i32 6
  %119 = load %struct.Grammar*, %struct.Grammar** %globals124, align 8
  %r125 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %119, i32 0, i32 24
  %120 = load %struct.Rule*, %struct.Rule** %r125, align 8
  %elems126 = getelementptr inbounds %struct.Rule, %struct.Rule* %120, i32 0, i32 6
  %121 = bitcast %struct.anon.1* %elems126 to i8*
  %122 = load i8*, i8** %_ps.addr, align 8
  %123 = load i32, i32* %_offset.addr, align 4
  %idx.ext127 = sext i32 %123 to i64
  %add.ptr128 = getelementptr inbounds i8, i8* %122, i64 %idx.ext127
  %124 = bitcast i8* %add.ptr128 to %struct.D_ParseNode*
  %globals129 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %124, i32 0, i32 6
  %125 = load %struct.Grammar*, %struct.Grammar** %globals129, align 8
  %e130 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %125, i32 0, i32 25
  %126 = load %struct.Elem*, %struct.Elem** %e130, align 8
  %127 = bitcast %struct.Elem* %126 to i8*
  call void @vec_add_internal(i8* %121, i8* %127)
  br label %do.end

do.end:                                           ; preds = %if.end.121, %if.then.99, %if.then.71, %if.then
  ret i32 0
}

declare %struct.Elem* @new_elem_nterm(%struct.Production*, %struct.Rule*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_33_71_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  %p = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %3, %struct.Production* null)
  store %struct.Production* %call, %struct.Production** %p, align 8
  %4 = load i8*, i8** %_ps.addr, align 8
  %5 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %6, i32 0, i32 6
  %7 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %8 = load %struct.Production*, %struct.Production** %p, align 8
  %call4 = call %struct.Rule* @new_rule(%struct.Grammar* %7, %struct.Production* %8)
  store %struct.Rule* %call4, %struct.Rule** %r, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules, i32 0, i32 2
  %10 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %tobool = icmp ne %struct.Rule** %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %11 = load %struct.Rule*, %struct.Rule** %r, align 8
  %12 = load %struct.Production*, %struct.Production** %p, align 8
  %rules5 = getelementptr inbounds %struct.Production, %struct.Production* %12, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules5, i32 0, i32 0
  %13 = load i32, i32* %n, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.Production*, %struct.Production** %p, align 8
  %rules6 = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 2
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e, i32 0, i32 0
  %15 = load %struct.Production*, %struct.Production** %p, align 8
  %rules7 = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules7, i32 0, i32 2
  store %struct.Rule** %arraydecay, %struct.Rule*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay, i64 %idxprom
  store %struct.Rule* %11, %struct.Rule** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %16 = load %struct.Production*, %struct.Production** %p, align 8
  %rules9 = getelementptr inbounds %struct.Production, %struct.Production* %16, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules9, i32 0, i32 2
  %17 = load %struct.Rule**, %struct.Rule*** %v10, align 8
  %18 = load %struct.Production*, %struct.Production** %p, align 8
  %rules11 = getelementptr inbounds %struct.Production, %struct.Production* %18, i32 0, i32 2
  %e12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.Rule** %17, %arraydecay13
  br i1 %cmp, label %if.then.14, label %if.else.26

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.Production*, %struct.Production** %p, align 8
  %rules15 = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 2
  %n16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules15, i32 0, i32 0
  %20 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %20, 3
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.14
  %21 = load %struct.Rule*, %struct.Rule** %r, align 8
  %22 = load %struct.Production*, %struct.Production** %p, align 8
  %rules19 = getelementptr inbounds %struct.Production, %struct.Production* %22, i32 0, i32 2
  %n20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules19, i32 0, i32 0
  %23 = load i32, i32* %n20, align 4
  %inc21 = add i32 %23, 1
  store i32 %inc21, i32* %n20, align 4
  %idxprom22 = zext i32 %23 to i64
  %24 = load %struct.Production*, %struct.Production** %p, align 8
  %rules23 = getelementptr inbounds %struct.Production, %struct.Production* %24, i32 0, i32 2
  %v24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules23, i32 0, i32 2
  %25 = load %struct.Rule**, %struct.Rule*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Rule*, %struct.Rule** %25, i64 %idxprom22
  store %struct.Rule* %21, %struct.Rule** %arrayidx25, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.14
  br label %if.end.39

if.else.26:                                       ; preds = %if.else
  %26 = load %struct.Production*, %struct.Production** %p, align 8
  %rules27 = getelementptr inbounds %struct.Production, %struct.Production* %26, i32 0, i32 2
  %n28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules27, i32 0, i32 0
  %27 = load i32, i32* %n28, align 4
  %and = and i32 %27, 7
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.else.26
  %28 = load %struct.Rule*, %struct.Rule** %r, align 8
  %29 = load %struct.Production*, %struct.Production** %p, align 8
  %rules31 = getelementptr inbounds %struct.Production, %struct.Production* %29, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules31, i32 0, i32 0
  %30 = load i32, i32* %n32, align 4
  %inc33 = add i32 %30, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %30 to i64
  %31 = load %struct.Production*, %struct.Production** %p, align 8
  %rules35 = getelementptr inbounds %struct.Production, %struct.Production* %31, i32 0, i32 2
  %v36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules35, i32 0, i32 2
  %32 = load %struct.Rule**, %struct.Rule*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Rule*, %struct.Rule** %32, i64 %idxprom34
  store %struct.Rule* %28, %struct.Rule** %arrayidx37, align 8
  br label %do.end

if.end.38:                                        ; preds = %if.else.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  %33 = load %struct.Production*, %struct.Production** %p, align 8
  %rules41 = getelementptr inbounds %struct.Production, %struct.Production* %33, i32 0, i32 2
  %34 = bitcast %struct.anon.0* %rules41 to i8*
  %35 = load %struct.Rule*, %struct.Rule** %r, align 8
  %36 = bitcast %struct.Rule* %35 to i8*
  call void @vec_add_internal(i8* %34, i8* %36)
  br label %do.end

do.end:                                           ; preds = %if.end.40, %if.then.30, %if.then.18, %if.then
  %37 = load i8**, i8*** %_children.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx42, align 8
  %39 = load i32, i32* %_offset.addr, align 4
  %idx.ext43 = sext i32 %39 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %38, i64 %idx.ext43
  %40 = bitcast i8* %add.ptr44 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %40, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %41 = load i8*, i8** %s, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8**, i8*** %_children.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx46, align 8
  %44 = load i32, i32* %_offset.addr, align 4
  %idx.ext47 = sext i32 %44 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %43, i64 %idx.ext47
  %45 = bitcast i8* %add.ptr48 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %45, i32 0, i32 2
  %46 = load i8*, i8** %end, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %46, i64 -1
  %call50 = call i8* @dup_str(i8* %add.ptr45, i8* %add.ptr49)
  %47 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code = getelementptr inbounds %struct.Rule, %struct.Rule* %47, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code, i32 0, i32 0
  store i8* %call50, i8** %code, align 8
  %48 = load i8**, i8*** %_children.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx51, align 8
  %50 = load i32, i32* %_offset.addr, align 4
  %idx.ext52 = sext i32 %50 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %49, i64 %idx.ext52
  %51 = bitcast i8* %add.ptr53 to %struct.D_ParseNode*
  %start_loc54 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %51, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc54, i32 0, i32 4
  %52 = load i32, i32* %line, align 4
  %53 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code55 = getelementptr inbounds %struct.Rule, %struct.Rule* %53, i32 0, i32 8
  %line56 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code55, i32 0, i32 1
  store i32 %52, i32* %line56, align 4
  %54 = load %struct.Production*, %struct.Production** %p, align 8
  %55 = load i8*, i8** %_ps.addr, align 8
  %56 = load i32, i32* %_offset.addr, align 4
  %idx.ext57 = sext i32 %56 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %55, i64 %idx.ext57
  %57 = bitcast i8* %add.ptr58 to %struct.D_ParseNode*
  %globals59 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %57, i32 0, i32 6
  %58 = load %struct.Grammar*, %struct.Grammar** %globals59, align 8
  %r60 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 24
  %59 = load %struct.Rule*, %struct.Rule** %r60, align 8
  %call61 = call %struct.Elem* @new_elem_nterm(%struct.Production* %54, %struct.Rule* %59)
  %60 = load i8*, i8** %_ps.addr, align 8
  %61 = load i32, i32* %_offset.addr, align 4
  %idx.ext62 = sext i32 %61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %60, i64 %idx.ext62
  %62 = bitcast i8* %add.ptr63 to %struct.D_ParseNode*
  %globals64 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %62, i32 0, i32 6
  %63 = load %struct.Grammar*, %struct.Grammar** %globals64, align 8
  %e65 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 25
  store %struct.Elem* %call61, %struct.Elem** %e65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.end
  %64 = load i8*, i8** %_ps.addr, align 8
  %65 = load i32, i32* %_offset.addr, align 4
  %idx.ext67 = sext i32 %65 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %64, i64 %idx.ext67
  %66 = bitcast i8* %add.ptr68 to %struct.D_ParseNode*
  %globals69 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %66, i32 0, i32 6
  %67 = load %struct.Grammar*, %struct.Grammar** %globals69, align 8
  %r70 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %67, i32 0, i32 24
  %68 = load %struct.Rule*, %struct.Rule** %r70, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %68, i32 0, i32 6
  %v71 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 2
  %69 = load %struct.Elem**, %struct.Elem*** %v71, align 8
  %tobool72 = icmp ne %struct.Elem** %69, null
  br i1 %tobool72, label %if.else.100, label %if.then.73

if.then.73:                                       ; preds = %do.body.66
  %70 = load i8*, i8** %_ps.addr, align 8
  %71 = load i32, i32* %_offset.addr, align 4
  %idx.ext74 = sext i32 %71 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %70, i64 %idx.ext74
  %72 = bitcast i8* %add.ptr75 to %struct.D_ParseNode*
  %globals76 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %72, i32 0, i32 6
  %73 = load %struct.Grammar*, %struct.Grammar** %globals76, align 8
  %e77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %73, i32 0, i32 25
  %74 = load %struct.Elem*, %struct.Elem** %e77, align 8
  %75 = load i8*, i8** %_ps.addr, align 8
  %76 = load i32, i32* %_offset.addr, align 4
  %idx.ext78 = sext i32 %76 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %75, i64 %idx.ext78
  %77 = bitcast i8* %add.ptr79 to %struct.D_ParseNode*
  %globals80 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %77, i32 0, i32 6
  %78 = load %struct.Grammar*, %struct.Grammar** %globals80, align 8
  %r81 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %78, i32 0, i32 24
  %79 = load %struct.Rule*, %struct.Rule** %r81, align 8
  %elems82 = getelementptr inbounds %struct.Rule, %struct.Rule* %79, i32 0, i32 6
  %n83 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems82, i32 0, i32 0
  %80 = load i32, i32* %n83, align 4
  %inc84 = add i32 %80, 1
  store i32 %inc84, i32* %n83, align 4
  %idxprom85 = zext i32 %80 to i64
  %81 = load i8*, i8** %_ps.addr, align 8
  %82 = load i32, i32* %_offset.addr, align 4
  %idx.ext86 = sext i32 %82 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %81, i64 %idx.ext86
  %83 = bitcast i8* %add.ptr87 to %struct.D_ParseNode*
  %globals88 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %83, i32 0, i32 6
  %84 = load %struct.Grammar*, %struct.Grammar** %globals88, align 8
  %r89 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %84, i32 0, i32 24
  %85 = load %struct.Rule*, %struct.Rule** %r89, align 8
  %elems90 = getelementptr inbounds %struct.Rule, %struct.Rule* %85, i32 0, i32 6
  %e91 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems90, i32 0, i32 3
  %arraydecay92 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e91, i32 0, i32 0
  %86 = load i8*, i8** %_ps.addr, align 8
  %87 = load i32, i32* %_offset.addr, align 4
  %idx.ext93 = sext i32 %87 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %86, i64 %idx.ext93
  %88 = bitcast i8* %add.ptr94 to %struct.D_ParseNode*
  %globals95 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %88, i32 0, i32 6
  %89 = load %struct.Grammar*, %struct.Grammar** %globals95, align 8
  %r96 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %89, i32 0, i32 24
  %90 = load %struct.Rule*, %struct.Rule** %r96, align 8
  %elems97 = getelementptr inbounds %struct.Rule, %struct.Rule* %90, i32 0, i32 6
  %v98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems97, i32 0, i32 2
  store %struct.Elem** %arraydecay92, %struct.Elem*** %v98, align 8
  %arrayidx99 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay92, i64 %idxprom85
  store %struct.Elem* %74, %struct.Elem** %arrayidx99, align 8
  br label %do.end.185

if.else.100:                                      ; preds = %do.body.66
  %91 = load i8*, i8** %_ps.addr, align 8
  %92 = load i32, i32* %_offset.addr, align 4
  %idx.ext101 = sext i32 %92 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %91, i64 %idx.ext101
  %93 = bitcast i8* %add.ptr102 to %struct.D_ParseNode*
  %globals103 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %93, i32 0, i32 6
  %94 = load %struct.Grammar*, %struct.Grammar** %globals103, align 8
  %r104 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %94, i32 0, i32 24
  %95 = load %struct.Rule*, %struct.Rule** %r104, align 8
  %elems105 = getelementptr inbounds %struct.Rule, %struct.Rule* %95, i32 0, i32 6
  %v106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems105, i32 0, i32 2
  %96 = load %struct.Elem**, %struct.Elem*** %v106, align 8
  %97 = load i8*, i8** %_ps.addr, align 8
  %98 = load i32, i32* %_offset.addr, align 4
  %idx.ext107 = sext i32 %98 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %97, i64 %idx.ext107
  %99 = bitcast i8* %add.ptr108 to %struct.D_ParseNode*
  %globals109 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %99, i32 0, i32 6
  %100 = load %struct.Grammar*, %struct.Grammar** %globals109, align 8
  %r110 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %100, i32 0, i32 24
  %101 = load %struct.Rule*, %struct.Rule** %r110, align 8
  %elems111 = getelementptr inbounds %struct.Rule, %struct.Rule* %101, i32 0, i32 6
  %e112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems111, i32 0, i32 3
  %arraydecay113 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e112, i32 0, i32 0
  %cmp114 = icmp eq %struct.Elem** %96, %arraydecay113
  br i1 %cmp114, label %if.then.115, label %if.else.144

if.then.115:                                      ; preds = %if.else.100
  %102 = load i8*, i8** %_ps.addr, align 8
  %103 = load i32, i32* %_offset.addr, align 4
  %idx.ext116 = sext i32 %103 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %102, i64 %idx.ext116
  %104 = bitcast i8* %add.ptr117 to %struct.D_ParseNode*
  %globals118 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %104, i32 0, i32 6
  %105 = load %struct.Grammar*, %struct.Grammar** %globals118, align 8
  %r119 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %105, i32 0, i32 24
  %106 = load %struct.Rule*, %struct.Rule** %r119, align 8
  %elems120 = getelementptr inbounds %struct.Rule, %struct.Rule* %106, i32 0, i32 6
  %n121 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems120, i32 0, i32 0
  %107 = load i32, i32* %n121, align 4
  %cmp122 = icmp ult i32 %107, 3
  br i1 %cmp122, label %if.then.123, label %if.end.143

if.then.123:                                      ; preds = %if.then.115
  %108 = load i8*, i8** %_ps.addr, align 8
  %109 = load i32, i32* %_offset.addr, align 4
  %idx.ext124 = sext i32 %109 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %108, i64 %idx.ext124
  %110 = bitcast i8* %add.ptr125 to %struct.D_ParseNode*
  %globals126 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %110, i32 0, i32 6
  %111 = load %struct.Grammar*, %struct.Grammar** %globals126, align 8
  %e127 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %111, i32 0, i32 25
  %112 = load %struct.Elem*, %struct.Elem** %e127, align 8
  %113 = load i8*, i8** %_ps.addr, align 8
  %114 = load i32, i32* %_offset.addr, align 4
  %idx.ext128 = sext i32 %114 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %113, i64 %idx.ext128
  %115 = bitcast i8* %add.ptr129 to %struct.D_ParseNode*
  %globals130 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %115, i32 0, i32 6
  %116 = load %struct.Grammar*, %struct.Grammar** %globals130, align 8
  %r131 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %116, i32 0, i32 24
  %117 = load %struct.Rule*, %struct.Rule** %r131, align 8
  %elems132 = getelementptr inbounds %struct.Rule, %struct.Rule* %117, i32 0, i32 6
  %n133 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems132, i32 0, i32 0
  %118 = load i32, i32* %n133, align 4
  %inc134 = add i32 %118, 1
  store i32 %inc134, i32* %n133, align 4
  %idxprom135 = zext i32 %118 to i64
  %119 = load i8*, i8** %_ps.addr, align 8
  %120 = load i32, i32* %_offset.addr, align 4
  %idx.ext136 = sext i32 %120 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %119, i64 %idx.ext136
  %121 = bitcast i8* %add.ptr137 to %struct.D_ParseNode*
  %globals138 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %121, i32 0, i32 6
  %122 = load %struct.Grammar*, %struct.Grammar** %globals138, align 8
  %r139 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %122, i32 0, i32 24
  %123 = load %struct.Rule*, %struct.Rule** %r139, align 8
  %elems140 = getelementptr inbounds %struct.Rule, %struct.Rule* %123, i32 0, i32 6
  %v141 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems140, i32 0, i32 2
  %124 = load %struct.Elem**, %struct.Elem*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Elem*, %struct.Elem** %124, i64 %idxprom135
  store %struct.Elem* %112, %struct.Elem** %arrayidx142, align 8
  br label %do.end.185

if.end.143:                                       ; preds = %if.then.115
  br label %if.end.174

if.else.144:                                      ; preds = %if.else.100
  %125 = load i8*, i8** %_ps.addr, align 8
  %126 = load i32, i32* %_offset.addr, align 4
  %idx.ext145 = sext i32 %126 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %125, i64 %idx.ext145
  %127 = bitcast i8* %add.ptr146 to %struct.D_ParseNode*
  %globals147 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %127, i32 0, i32 6
  %128 = load %struct.Grammar*, %struct.Grammar** %globals147, align 8
  %r148 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %128, i32 0, i32 24
  %129 = load %struct.Rule*, %struct.Rule** %r148, align 8
  %elems149 = getelementptr inbounds %struct.Rule, %struct.Rule* %129, i32 0, i32 6
  %n150 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems149, i32 0, i32 0
  %130 = load i32, i32* %n150, align 4
  %and151 = and i32 %130, 7
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.173

if.then.153:                                      ; preds = %if.else.144
  %131 = load i8*, i8** %_ps.addr, align 8
  %132 = load i32, i32* %_offset.addr, align 4
  %idx.ext154 = sext i32 %132 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %131, i64 %idx.ext154
  %133 = bitcast i8* %add.ptr155 to %struct.D_ParseNode*
  %globals156 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %133, i32 0, i32 6
  %134 = load %struct.Grammar*, %struct.Grammar** %globals156, align 8
  %e157 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %134, i32 0, i32 25
  %135 = load %struct.Elem*, %struct.Elem** %e157, align 8
  %136 = load i8*, i8** %_ps.addr, align 8
  %137 = load i32, i32* %_offset.addr, align 4
  %idx.ext158 = sext i32 %137 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %136, i64 %idx.ext158
  %138 = bitcast i8* %add.ptr159 to %struct.D_ParseNode*
  %globals160 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %138, i32 0, i32 6
  %139 = load %struct.Grammar*, %struct.Grammar** %globals160, align 8
  %r161 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %139, i32 0, i32 24
  %140 = load %struct.Rule*, %struct.Rule** %r161, align 8
  %elems162 = getelementptr inbounds %struct.Rule, %struct.Rule* %140, i32 0, i32 6
  %n163 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems162, i32 0, i32 0
  %141 = load i32, i32* %n163, align 4
  %inc164 = add i32 %141, 1
  store i32 %inc164, i32* %n163, align 4
  %idxprom165 = zext i32 %141 to i64
  %142 = load i8*, i8** %_ps.addr, align 8
  %143 = load i32, i32* %_offset.addr, align 4
  %idx.ext166 = sext i32 %143 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %142, i64 %idx.ext166
  %144 = bitcast i8* %add.ptr167 to %struct.D_ParseNode*
  %globals168 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %144, i32 0, i32 6
  %145 = load %struct.Grammar*, %struct.Grammar** %globals168, align 8
  %r169 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %145, i32 0, i32 24
  %146 = load %struct.Rule*, %struct.Rule** %r169, align 8
  %elems170 = getelementptr inbounds %struct.Rule, %struct.Rule* %146, i32 0, i32 6
  %v171 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems170, i32 0, i32 2
  %147 = load %struct.Elem**, %struct.Elem*** %v171, align 8
  %arrayidx172 = getelementptr inbounds %struct.Elem*, %struct.Elem** %147, i64 %idxprom165
  store %struct.Elem* %135, %struct.Elem** %arrayidx172, align 8
  br label %do.end.185

if.end.173:                                       ; preds = %if.else.144
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.143
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  %148 = load i8*, i8** %_ps.addr, align 8
  %149 = load i32, i32* %_offset.addr, align 4
  %idx.ext176 = sext i32 %149 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %148, i64 %idx.ext176
  %150 = bitcast i8* %add.ptr177 to %struct.D_ParseNode*
  %globals178 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %150, i32 0, i32 6
  %151 = load %struct.Grammar*, %struct.Grammar** %globals178, align 8
  %r179 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %151, i32 0, i32 24
  %152 = load %struct.Rule*, %struct.Rule** %r179, align 8
  %elems180 = getelementptr inbounds %struct.Rule, %struct.Rule* %152, i32 0, i32 6
  %153 = bitcast %struct.anon.1* %elems180 to i8*
  %154 = load i8*, i8** %_ps.addr, align 8
  %155 = load i32, i32* %_offset.addr, align 4
  %idx.ext181 = sext i32 %155 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %154, i64 %idx.ext181
  %156 = bitcast i8* %add.ptr182 to %struct.D_ParseNode*
  %globals183 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %156, i32 0, i32 6
  %157 = load %struct.Grammar*, %struct.Grammar** %globals183, align 8
  %e184 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %157, i32 0, i32 25
  %158 = load %struct.Elem*, %struct.Elem** %e184, align 8
  %159 = bitcast %struct.Elem* %158 to i8*
  call void @vec_add_internal(i8* %153, i8* %159)
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.175, %if.then.153, %if.then.123, %if.then.73
  ret i32 0
}

declare %struct.Production* @new_internal_production(%struct.Grammar*, %struct.Production*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_33_72_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  %p = alloca %struct.Production*, align 8
  %r = alloca %struct.Rule*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %3, %struct.Production* null)
  store %struct.Production* %call, %struct.Production** %p, align 8
  %4 = load i8*, i8** %_ps.addr, align 8
  %5 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %6, i32 0, i32 6
  %7 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %8 = load %struct.Production*, %struct.Production** %p, align 8
  %call4 = call %struct.Rule* @new_rule(%struct.Grammar* %7, %struct.Production* %8)
  store %struct.Rule* %call4, %struct.Rule** %r, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %9 = load %struct.Production*, %struct.Production** %p, align 8
  %rules = getelementptr inbounds %struct.Production, %struct.Production* %9, i32 0, i32 2
  %v = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules, i32 0, i32 2
  %10 = load %struct.Rule**, %struct.Rule*** %v, align 8
  %tobool = icmp ne %struct.Rule** %10, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  %11 = load %struct.Rule*, %struct.Rule** %r, align 8
  %12 = load %struct.Production*, %struct.Production** %p, align 8
  %rules5 = getelementptr inbounds %struct.Production, %struct.Production* %12, i32 0, i32 2
  %n = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules5, i32 0, i32 0
  %13 = load i32, i32* %n, align 4
  %inc = add i32 %13, 1
  store i32 %inc, i32* %n, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct.Production*, %struct.Production** %p, align 8
  %rules6 = getelementptr inbounds %struct.Production, %struct.Production* %14, i32 0, i32 2
  %e = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e, i32 0, i32 0
  %15 = load %struct.Production*, %struct.Production** %p, align 8
  %rules7 = getelementptr inbounds %struct.Production, %struct.Production* %15, i32 0, i32 2
  %v8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules7, i32 0, i32 2
  store %struct.Rule** %arraydecay, %struct.Rule*** %v8, align 8
  %arrayidx = getelementptr inbounds %struct.Rule*, %struct.Rule** %arraydecay, i64 %idxprom
  store %struct.Rule* %11, %struct.Rule** %arrayidx, align 8
  br label %do.end

if.else:                                          ; preds = %do.body
  %16 = load %struct.Production*, %struct.Production** %p, align 8
  %rules9 = getelementptr inbounds %struct.Production, %struct.Production* %16, i32 0, i32 2
  %v10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules9, i32 0, i32 2
  %17 = load %struct.Rule**, %struct.Rule*** %v10, align 8
  %18 = load %struct.Production*, %struct.Production** %p, align 8
  %rules11 = getelementptr inbounds %struct.Production, %struct.Production* %18, i32 0, i32 2
  %e12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules11, i32 0, i32 3
  %arraydecay13 = getelementptr inbounds [3 x %struct.Rule*], [3 x %struct.Rule*]* %e12, i32 0, i32 0
  %cmp = icmp eq %struct.Rule** %17, %arraydecay13
  br i1 %cmp, label %if.then.14, label %if.else.26

if.then.14:                                       ; preds = %if.else
  %19 = load %struct.Production*, %struct.Production** %p, align 8
  %rules15 = getelementptr inbounds %struct.Production, %struct.Production* %19, i32 0, i32 2
  %n16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules15, i32 0, i32 0
  %20 = load i32, i32* %n16, align 4
  %cmp17 = icmp ult i32 %20, 3
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.14
  %21 = load %struct.Rule*, %struct.Rule** %r, align 8
  %22 = load %struct.Production*, %struct.Production** %p, align 8
  %rules19 = getelementptr inbounds %struct.Production, %struct.Production* %22, i32 0, i32 2
  %n20 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules19, i32 0, i32 0
  %23 = load i32, i32* %n20, align 4
  %inc21 = add i32 %23, 1
  store i32 %inc21, i32* %n20, align 4
  %idxprom22 = zext i32 %23 to i64
  %24 = load %struct.Production*, %struct.Production** %p, align 8
  %rules23 = getelementptr inbounds %struct.Production, %struct.Production* %24, i32 0, i32 2
  %v24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules23, i32 0, i32 2
  %25 = load %struct.Rule**, %struct.Rule*** %v24, align 8
  %arrayidx25 = getelementptr inbounds %struct.Rule*, %struct.Rule** %25, i64 %idxprom22
  store %struct.Rule* %21, %struct.Rule** %arrayidx25, align 8
  br label %do.end

if.end:                                           ; preds = %if.then.14
  br label %if.end.39

if.else.26:                                       ; preds = %if.else
  %26 = load %struct.Production*, %struct.Production** %p, align 8
  %rules27 = getelementptr inbounds %struct.Production, %struct.Production* %26, i32 0, i32 2
  %n28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules27, i32 0, i32 0
  %27 = load i32, i32* %n28, align 4
  %and = and i32 %27, 7
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.38

if.then.30:                                       ; preds = %if.else.26
  %28 = load %struct.Rule*, %struct.Rule** %r, align 8
  %29 = load %struct.Production*, %struct.Production** %p, align 8
  %rules31 = getelementptr inbounds %struct.Production, %struct.Production* %29, i32 0, i32 2
  %n32 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules31, i32 0, i32 0
  %30 = load i32, i32* %n32, align 4
  %inc33 = add i32 %30, 1
  store i32 %inc33, i32* %n32, align 4
  %idxprom34 = zext i32 %30 to i64
  %31 = load %struct.Production*, %struct.Production** %p, align 8
  %rules35 = getelementptr inbounds %struct.Production, %struct.Production* %31, i32 0, i32 2
  %v36 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %rules35, i32 0, i32 2
  %32 = load %struct.Rule**, %struct.Rule*** %v36, align 8
  %arrayidx37 = getelementptr inbounds %struct.Rule*, %struct.Rule** %32, i64 %idxprom34
  store %struct.Rule* %28, %struct.Rule** %arrayidx37, align 8
  br label %do.end

if.end.38:                                        ; preds = %if.else.26
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39
  %33 = load %struct.Production*, %struct.Production** %p, align 8
  %rules41 = getelementptr inbounds %struct.Production, %struct.Production* %33, i32 0, i32 2
  %34 = bitcast %struct.anon.0* %rules41 to i8*
  %35 = load %struct.Rule*, %struct.Rule** %r, align 8
  %36 = bitcast %struct.Rule* %35 to i8*
  call void @vec_add_internal(i8* %34, i8* %36)
  br label %do.end

do.end:                                           ; preds = %if.end.40, %if.then.30, %if.then.18, %if.then
  %37 = load i8**, i8*** %_children.addr, align 8
  %arrayidx42 = getelementptr inbounds i8*, i8** %37, i64 0
  %38 = load i8*, i8** %arrayidx42, align 8
  %39 = load i32, i32* %_offset.addr, align 4
  %idx.ext43 = sext i32 %39 to i64
  %add.ptr44 = getelementptr inbounds i8, i8* %38, i64 %idx.ext43
  %40 = bitcast i8* %add.ptr44 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %40, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %41 = load i8*, i8** %s, align 8
  %add.ptr45 = getelementptr inbounds i8, i8* %41, i64 1
  %42 = load i8**, i8*** %_children.addr, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %42, i64 0
  %43 = load i8*, i8** %arrayidx46, align 8
  %44 = load i32, i32* %_offset.addr, align 4
  %idx.ext47 = sext i32 %44 to i64
  %add.ptr48 = getelementptr inbounds i8, i8* %43, i64 %idx.ext47
  %45 = bitcast i8* %add.ptr48 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %45, i32 0, i32 2
  %46 = load i8*, i8** %end, align 8
  %add.ptr49 = getelementptr inbounds i8, i8* %46, i64 -1
  %call50 = call i8* @dup_str(i8* %add.ptr45, i8* %add.ptr49)
  %47 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code = getelementptr inbounds %struct.Rule, %struct.Rule* %47, i32 0, i32 9
  %code = getelementptr inbounds %struct.Code, %struct.Code* %final_code, i32 0, i32 0
  store i8* %call50, i8** %code, align 8
  %48 = load i8**, i8*** %_children.addr, align 8
  %arrayidx51 = getelementptr inbounds i8*, i8** %48, i64 0
  %49 = load i8*, i8** %arrayidx51, align 8
  %50 = load i32, i32* %_offset.addr, align 4
  %idx.ext52 = sext i32 %50 to i64
  %add.ptr53 = getelementptr inbounds i8, i8* %49, i64 %idx.ext52
  %51 = bitcast i8* %add.ptr53 to %struct.D_ParseNode*
  %start_loc54 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %51, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc54, i32 0, i32 4
  %52 = load i32, i32* %line, align 4
  %53 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code55 = getelementptr inbounds %struct.Rule, %struct.Rule* %53, i32 0, i32 9
  %line56 = getelementptr inbounds %struct.Code, %struct.Code* %final_code55, i32 0, i32 1
  store i32 %52, i32* %line56, align 4
  %54 = load %struct.Production*, %struct.Production** %p, align 8
  %55 = load i8*, i8** %_ps.addr, align 8
  %56 = load i32, i32* %_offset.addr, align 4
  %idx.ext57 = sext i32 %56 to i64
  %add.ptr58 = getelementptr inbounds i8, i8* %55, i64 %idx.ext57
  %57 = bitcast i8* %add.ptr58 to %struct.D_ParseNode*
  %globals59 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %57, i32 0, i32 6
  %58 = load %struct.Grammar*, %struct.Grammar** %globals59, align 8
  %r60 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %58, i32 0, i32 24
  %59 = load %struct.Rule*, %struct.Rule** %r60, align 8
  %call61 = call %struct.Elem* @new_elem_nterm(%struct.Production* %54, %struct.Rule* %59)
  %60 = load i8*, i8** %_ps.addr, align 8
  %61 = load i32, i32* %_offset.addr, align 4
  %idx.ext62 = sext i32 %61 to i64
  %add.ptr63 = getelementptr inbounds i8, i8* %60, i64 %idx.ext62
  %62 = bitcast i8* %add.ptr63 to %struct.D_ParseNode*
  %globals64 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %62, i32 0, i32 6
  %63 = load %struct.Grammar*, %struct.Grammar** %globals64, align 8
  %e65 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %63, i32 0, i32 25
  store %struct.Elem* %call61, %struct.Elem** %e65, align 8
  br label %do.body.66

do.body.66:                                       ; preds = %do.end
  %64 = load i8*, i8** %_ps.addr, align 8
  %65 = load i32, i32* %_offset.addr, align 4
  %idx.ext67 = sext i32 %65 to i64
  %add.ptr68 = getelementptr inbounds i8, i8* %64, i64 %idx.ext67
  %66 = bitcast i8* %add.ptr68 to %struct.D_ParseNode*
  %globals69 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %66, i32 0, i32 6
  %67 = load %struct.Grammar*, %struct.Grammar** %globals69, align 8
  %r70 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %67, i32 0, i32 24
  %68 = load %struct.Rule*, %struct.Rule** %r70, align 8
  %elems = getelementptr inbounds %struct.Rule, %struct.Rule* %68, i32 0, i32 6
  %v71 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems, i32 0, i32 2
  %69 = load %struct.Elem**, %struct.Elem*** %v71, align 8
  %tobool72 = icmp ne %struct.Elem** %69, null
  br i1 %tobool72, label %if.else.100, label %if.then.73

if.then.73:                                       ; preds = %do.body.66
  %70 = load i8*, i8** %_ps.addr, align 8
  %71 = load i32, i32* %_offset.addr, align 4
  %idx.ext74 = sext i32 %71 to i64
  %add.ptr75 = getelementptr inbounds i8, i8* %70, i64 %idx.ext74
  %72 = bitcast i8* %add.ptr75 to %struct.D_ParseNode*
  %globals76 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %72, i32 0, i32 6
  %73 = load %struct.Grammar*, %struct.Grammar** %globals76, align 8
  %e77 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %73, i32 0, i32 25
  %74 = load %struct.Elem*, %struct.Elem** %e77, align 8
  %75 = load i8*, i8** %_ps.addr, align 8
  %76 = load i32, i32* %_offset.addr, align 4
  %idx.ext78 = sext i32 %76 to i64
  %add.ptr79 = getelementptr inbounds i8, i8* %75, i64 %idx.ext78
  %77 = bitcast i8* %add.ptr79 to %struct.D_ParseNode*
  %globals80 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %77, i32 0, i32 6
  %78 = load %struct.Grammar*, %struct.Grammar** %globals80, align 8
  %r81 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %78, i32 0, i32 24
  %79 = load %struct.Rule*, %struct.Rule** %r81, align 8
  %elems82 = getelementptr inbounds %struct.Rule, %struct.Rule* %79, i32 0, i32 6
  %n83 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems82, i32 0, i32 0
  %80 = load i32, i32* %n83, align 4
  %inc84 = add i32 %80, 1
  store i32 %inc84, i32* %n83, align 4
  %idxprom85 = zext i32 %80 to i64
  %81 = load i8*, i8** %_ps.addr, align 8
  %82 = load i32, i32* %_offset.addr, align 4
  %idx.ext86 = sext i32 %82 to i64
  %add.ptr87 = getelementptr inbounds i8, i8* %81, i64 %idx.ext86
  %83 = bitcast i8* %add.ptr87 to %struct.D_ParseNode*
  %globals88 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %83, i32 0, i32 6
  %84 = load %struct.Grammar*, %struct.Grammar** %globals88, align 8
  %r89 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %84, i32 0, i32 24
  %85 = load %struct.Rule*, %struct.Rule** %r89, align 8
  %elems90 = getelementptr inbounds %struct.Rule, %struct.Rule* %85, i32 0, i32 6
  %e91 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems90, i32 0, i32 3
  %arraydecay92 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e91, i32 0, i32 0
  %86 = load i8*, i8** %_ps.addr, align 8
  %87 = load i32, i32* %_offset.addr, align 4
  %idx.ext93 = sext i32 %87 to i64
  %add.ptr94 = getelementptr inbounds i8, i8* %86, i64 %idx.ext93
  %88 = bitcast i8* %add.ptr94 to %struct.D_ParseNode*
  %globals95 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %88, i32 0, i32 6
  %89 = load %struct.Grammar*, %struct.Grammar** %globals95, align 8
  %r96 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %89, i32 0, i32 24
  %90 = load %struct.Rule*, %struct.Rule** %r96, align 8
  %elems97 = getelementptr inbounds %struct.Rule, %struct.Rule* %90, i32 0, i32 6
  %v98 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems97, i32 0, i32 2
  store %struct.Elem** %arraydecay92, %struct.Elem*** %v98, align 8
  %arrayidx99 = getelementptr inbounds %struct.Elem*, %struct.Elem** %arraydecay92, i64 %idxprom85
  store %struct.Elem* %74, %struct.Elem** %arrayidx99, align 8
  br label %do.end.185

if.else.100:                                      ; preds = %do.body.66
  %91 = load i8*, i8** %_ps.addr, align 8
  %92 = load i32, i32* %_offset.addr, align 4
  %idx.ext101 = sext i32 %92 to i64
  %add.ptr102 = getelementptr inbounds i8, i8* %91, i64 %idx.ext101
  %93 = bitcast i8* %add.ptr102 to %struct.D_ParseNode*
  %globals103 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %93, i32 0, i32 6
  %94 = load %struct.Grammar*, %struct.Grammar** %globals103, align 8
  %r104 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %94, i32 0, i32 24
  %95 = load %struct.Rule*, %struct.Rule** %r104, align 8
  %elems105 = getelementptr inbounds %struct.Rule, %struct.Rule* %95, i32 0, i32 6
  %v106 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems105, i32 0, i32 2
  %96 = load %struct.Elem**, %struct.Elem*** %v106, align 8
  %97 = load i8*, i8** %_ps.addr, align 8
  %98 = load i32, i32* %_offset.addr, align 4
  %idx.ext107 = sext i32 %98 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %97, i64 %idx.ext107
  %99 = bitcast i8* %add.ptr108 to %struct.D_ParseNode*
  %globals109 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %99, i32 0, i32 6
  %100 = load %struct.Grammar*, %struct.Grammar** %globals109, align 8
  %r110 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %100, i32 0, i32 24
  %101 = load %struct.Rule*, %struct.Rule** %r110, align 8
  %elems111 = getelementptr inbounds %struct.Rule, %struct.Rule* %101, i32 0, i32 6
  %e112 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems111, i32 0, i32 3
  %arraydecay113 = getelementptr inbounds [3 x %struct.Elem*], [3 x %struct.Elem*]* %e112, i32 0, i32 0
  %cmp114 = icmp eq %struct.Elem** %96, %arraydecay113
  br i1 %cmp114, label %if.then.115, label %if.else.144

if.then.115:                                      ; preds = %if.else.100
  %102 = load i8*, i8** %_ps.addr, align 8
  %103 = load i32, i32* %_offset.addr, align 4
  %idx.ext116 = sext i32 %103 to i64
  %add.ptr117 = getelementptr inbounds i8, i8* %102, i64 %idx.ext116
  %104 = bitcast i8* %add.ptr117 to %struct.D_ParseNode*
  %globals118 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %104, i32 0, i32 6
  %105 = load %struct.Grammar*, %struct.Grammar** %globals118, align 8
  %r119 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %105, i32 0, i32 24
  %106 = load %struct.Rule*, %struct.Rule** %r119, align 8
  %elems120 = getelementptr inbounds %struct.Rule, %struct.Rule* %106, i32 0, i32 6
  %n121 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems120, i32 0, i32 0
  %107 = load i32, i32* %n121, align 4
  %cmp122 = icmp ult i32 %107, 3
  br i1 %cmp122, label %if.then.123, label %if.end.143

if.then.123:                                      ; preds = %if.then.115
  %108 = load i8*, i8** %_ps.addr, align 8
  %109 = load i32, i32* %_offset.addr, align 4
  %idx.ext124 = sext i32 %109 to i64
  %add.ptr125 = getelementptr inbounds i8, i8* %108, i64 %idx.ext124
  %110 = bitcast i8* %add.ptr125 to %struct.D_ParseNode*
  %globals126 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %110, i32 0, i32 6
  %111 = load %struct.Grammar*, %struct.Grammar** %globals126, align 8
  %e127 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %111, i32 0, i32 25
  %112 = load %struct.Elem*, %struct.Elem** %e127, align 8
  %113 = load i8*, i8** %_ps.addr, align 8
  %114 = load i32, i32* %_offset.addr, align 4
  %idx.ext128 = sext i32 %114 to i64
  %add.ptr129 = getelementptr inbounds i8, i8* %113, i64 %idx.ext128
  %115 = bitcast i8* %add.ptr129 to %struct.D_ParseNode*
  %globals130 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %115, i32 0, i32 6
  %116 = load %struct.Grammar*, %struct.Grammar** %globals130, align 8
  %r131 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %116, i32 0, i32 24
  %117 = load %struct.Rule*, %struct.Rule** %r131, align 8
  %elems132 = getelementptr inbounds %struct.Rule, %struct.Rule* %117, i32 0, i32 6
  %n133 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems132, i32 0, i32 0
  %118 = load i32, i32* %n133, align 4
  %inc134 = add i32 %118, 1
  store i32 %inc134, i32* %n133, align 4
  %idxprom135 = zext i32 %118 to i64
  %119 = load i8*, i8** %_ps.addr, align 8
  %120 = load i32, i32* %_offset.addr, align 4
  %idx.ext136 = sext i32 %120 to i64
  %add.ptr137 = getelementptr inbounds i8, i8* %119, i64 %idx.ext136
  %121 = bitcast i8* %add.ptr137 to %struct.D_ParseNode*
  %globals138 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %121, i32 0, i32 6
  %122 = load %struct.Grammar*, %struct.Grammar** %globals138, align 8
  %r139 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %122, i32 0, i32 24
  %123 = load %struct.Rule*, %struct.Rule** %r139, align 8
  %elems140 = getelementptr inbounds %struct.Rule, %struct.Rule* %123, i32 0, i32 6
  %v141 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems140, i32 0, i32 2
  %124 = load %struct.Elem**, %struct.Elem*** %v141, align 8
  %arrayidx142 = getelementptr inbounds %struct.Elem*, %struct.Elem** %124, i64 %idxprom135
  store %struct.Elem* %112, %struct.Elem** %arrayidx142, align 8
  br label %do.end.185

if.end.143:                                       ; preds = %if.then.115
  br label %if.end.174

if.else.144:                                      ; preds = %if.else.100
  %125 = load i8*, i8** %_ps.addr, align 8
  %126 = load i32, i32* %_offset.addr, align 4
  %idx.ext145 = sext i32 %126 to i64
  %add.ptr146 = getelementptr inbounds i8, i8* %125, i64 %idx.ext145
  %127 = bitcast i8* %add.ptr146 to %struct.D_ParseNode*
  %globals147 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %127, i32 0, i32 6
  %128 = load %struct.Grammar*, %struct.Grammar** %globals147, align 8
  %r148 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %128, i32 0, i32 24
  %129 = load %struct.Rule*, %struct.Rule** %r148, align 8
  %elems149 = getelementptr inbounds %struct.Rule, %struct.Rule* %129, i32 0, i32 6
  %n150 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems149, i32 0, i32 0
  %130 = load i32, i32* %n150, align 4
  %and151 = and i32 %130, 7
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.173

if.then.153:                                      ; preds = %if.else.144
  %131 = load i8*, i8** %_ps.addr, align 8
  %132 = load i32, i32* %_offset.addr, align 4
  %idx.ext154 = sext i32 %132 to i64
  %add.ptr155 = getelementptr inbounds i8, i8* %131, i64 %idx.ext154
  %133 = bitcast i8* %add.ptr155 to %struct.D_ParseNode*
  %globals156 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %133, i32 0, i32 6
  %134 = load %struct.Grammar*, %struct.Grammar** %globals156, align 8
  %e157 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %134, i32 0, i32 25
  %135 = load %struct.Elem*, %struct.Elem** %e157, align 8
  %136 = load i8*, i8** %_ps.addr, align 8
  %137 = load i32, i32* %_offset.addr, align 4
  %idx.ext158 = sext i32 %137 to i64
  %add.ptr159 = getelementptr inbounds i8, i8* %136, i64 %idx.ext158
  %138 = bitcast i8* %add.ptr159 to %struct.D_ParseNode*
  %globals160 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %138, i32 0, i32 6
  %139 = load %struct.Grammar*, %struct.Grammar** %globals160, align 8
  %r161 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %139, i32 0, i32 24
  %140 = load %struct.Rule*, %struct.Rule** %r161, align 8
  %elems162 = getelementptr inbounds %struct.Rule, %struct.Rule* %140, i32 0, i32 6
  %n163 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems162, i32 0, i32 0
  %141 = load i32, i32* %n163, align 4
  %inc164 = add i32 %141, 1
  store i32 %inc164, i32* %n163, align 4
  %idxprom165 = zext i32 %141 to i64
  %142 = load i8*, i8** %_ps.addr, align 8
  %143 = load i32, i32* %_offset.addr, align 4
  %idx.ext166 = sext i32 %143 to i64
  %add.ptr167 = getelementptr inbounds i8, i8* %142, i64 %idx.ext166
  %144 = bitcast i8* %add.ptr167 to %struct.D_ParseNode*
  %globals168 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %144, i32 0, i32 6
  %145 = load %struct.Grammar*, %struct.Grammar** %globals168, align 8
  %r169 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %145, i32 0, i32 24
  %146 = load %struct.Rule*, %struct.Rule** %r169, align 8
  %elems170 = getelementptr inbounds %struct.Rule, %struct.Rule* %146, i32 0, i32 6
  %v171 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %elems170, i32 0, i32 2
  %147 = load %struct.Elem**, %struct.Elem*** %v171, align 8
  %arrayidx172 = getelementptr inbounds %struct.Elem*, %struct.Elem** %147, i64 %idxprom165
  store %struct.Elem* %135, %struct.Elem** %arrayidx172, align 8
  br label %do.end.185

if.end.173:                                       ; preds = %if.else.144
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.173, %if.end.143
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174
  %148 = load i8*, i8** %_ps.addr, align 8
  %149 = load i32, i32* %_offset.addr, align 4
  %idx.ext176 = sext i32 %149 to i64
  %add.ptr177 = getelementptr inbounds i8, i8* %148, i64 %idx.ext176
  %150 = bitcast i8* %add.ptr177 to %struct.D_ParseNode*
  %globals178 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %150, i32 0, i32 6
  %151 = load %struct.Grammar*, %struct.Grammar** %globals178, align 8
  %r179 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %151, i32 0, i32 24
  %152 = load %struct.Rule*, %struct.Rule** %r179, align 8
  %elems180 = getelementptr inbounds %struct.Rule, %struct.Rule* %152, i32 0, i32 6
  %153 = bitcast %struct.anon.1* %elems180 to i8*
  %154 = load i8*, i8** %_ps.addr, align 8
  %155 = load i32, i32* %_offset.addr, align 4
  %idx.ext181 = sext i32 %155 to i64
  %add.ptr182 = getelementptr inbounds i8, i8* %154, i64 %idx.ext181
  %156 = bitcast i8* %add.ptr182 to %struct.D_ParseNode*
  %globals183 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %156, i32 0, i32 6
  %157 = load %struct.Grammar*, %struct.Grammar** %globals183, align 8
  %e184 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %157, i32 0, i32 25
  %158 = load %struct.Elem*, %struct.Elem** %e184, align 8
  %159 = bitcast %struct.Elem* %158 to i8*
  call void @vec_add_internal(i8* %153, i8* %159)
  br label %do.end.185

do.end.185:                                       ; preds = %if.end.175, %if.then.153, %if.then.123, %if.then.73
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_34_73_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %p = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 23
  %4 = load %struct.Production*, %struct.Production** %p, align 8
  %5 = load i8*, i8** %_ps.addr, align 8
  %6 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %6 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %5, i64 %idx.ext1
  %7 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %user = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %7, i32 0, i32 7
  %p3 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user, i32 0, i32 0
  store %struct.Production* %4, %struct.Production** %p3, align 8
  %8 = load i8*, i8** %_ps.addr, align 8
  %9 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %9 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %8, i64 %idx.ext4
  %10 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %globals6 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %10, i32 0, i32 6
  %11 = load %struct.Grammar*, %struct.Grammar** %globals6, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %11, i32 0, i32 24
  %12 = load %struct.Rule*, %struct.Rule** %r, align 8
  %13 = load i8*, i8** %_ps.addr, align 8
  %14 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %13, i64 %idx.ext7
  %15 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %user9 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %15, i32 0, i32 7
  %r10 = getelementptr inbounds %struct.ParseNode_User, %struct.ParseNode_User* %user9, i32 0, i32 1
  store %struct.Rule* %12, %struct.Rule** %r10, align 8
  %16 = load i8*, i8** %_ps.addr, align 8
  %17 = load i32, i32* %_offset.addr, align 4
  %idx.ext11 = sext i32 %17 to i64
  %add.ptr12 = getelementptr inbounds i8, i8* %16, i64 %idx.ext11
  %18 = bitcast i8* %add.ptr12 to %struct.D_ParseNode*
  %globals13 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %18, i32 0, i32 6
  %19 = load %struct.Grammar*, %struct.Grammar** %globals13, align 8
  %20 = load i8*, i8** %_ps.addr, align 8
  %21 = load i32, i32* %_offset.addr, align 4
  %idx.ext14 = sext i32 %21 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %20, i64 %idx.ext14
  %22 = bitcast i8* %add.ptr15 to %struct.D_ParseNode*
  %globals16 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %22, i32 0, i32 6
  %23 = load %struct.Grammar*, %struct.Grammar** %globals16, align 8
  %p17 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 23
  %24 = load %struct.Production*, %struct.Production** %p17, align 8
  %call = call %struct.Production* @new_internal_production(%struct.Grammar* %19, %struct.Production* %24)
  %25 = load i8*, i8** %_ps.addr, align 8
  %26 = load i32, i32* %_offset.addr, align 4
  %idx.ext18 = sext i32 %26 to i64
  %add.ptr19 = getelementptr inbounds i8, i8* %25, i64 %idx.ext18
  %27 = bitcast i8* %add.ptr19 to %struct.D_ParseNode*
  %globals20 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %27, i32 0, i32 6
  %28 = load %struct.Grammar*, %struct.Grammar** %globals20, align 8
  %p21 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %28, i32 0, i32 23
  store %struct.Production* %call, %struct.Production** %p21, align 8
  %29 = load i8*, i8** %_ps.addr, align 8
  %30 = load i32, i32* %_offset.addr, align 4
  %idx.ext22 = sext i32 %30 to i64
  %add.ptr23 = getelementptr inbounds i8, i8* %29, i64 %idx.ext22
  %31 = bitcast i8* %add.ptr23 to %struct.D_ParseNode*
  %globals24 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %31, i32 0, i32 6
  %32 = load %struct.Grammar*, %struct.Grammar** %globals24, align 8
  %33 = load i8*, i8** %_ps.addr, align 8
  %34 = load i32, i32* %_offset.addr, align 4
  %idx.ext25 = sext i32 %34 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %33, i64 %idx.ext25
  %35 = bitcast i8* %add.ptr26 to %struct.D_ParseNode*
  %globals27 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %35, i32 0, i32 6
  %36 = load %struct.Grammar*, %struct.Grammar** %globals27, align 8
  %p28 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %36, i32 0, i32 23
  %37 = load %struct.Production*, %struct.Production** %p28, align 8
  %call29 = call %struct.Rule* @new_rule(%struct.Grammar* %32, %struct.Production* %37)
  %38 = load i8*, i8** %_ps.addr, align 8
  %39 = load i32, i32* %_offset.addr, align 4
  %idx.ext30 = sext i32 %39 to i64
  %add.ptr31 = getelementptr inbounds i8, i8* %38, i64 %idx.ext30
  %40 = bitcast i8* %add.ptr31 to %struct.D_ParseNode*
  %globals32 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %40, i32 0, i32 6
  %41 = load %struct.Grammar*, %struct.Grammar** %globals32, align 8
  %r33 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %41, i32 0, i32 24
  store %struct.Rule* %call29, %struct.Rule** %r33, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_35_74_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 25
  %4 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 0
  %5 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext1
  %9 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %9, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %10 = load i8*, i8** %s, align 8
  %call = call i64 @strtol(i8* %10, i8** null, i32 0) #3
  %conv = trunc i64 %call to i32
  %11 = load i8*, i8** %_ps.addr, align 8
  %12 = load i32, i32* %_offset.addr, align 4
  %idx.ext3 = sext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 %idx.ext3
  %13 = bitcast i8* %add.ptr4 to %struct.D_ParseNode*
  %globals5 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %13, i32 0, i32 6
  %14 = load %struct.Grammar*, %struct.Grammar** %globals5, align 8
  %e6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 25
  %15 = load %struct.Elem*, %struct.Elem** %e6, align 8
  %e7 = getelementptr inbounds %struct.Elem, %struct.Elem* %15, i32 0, i32 3
  %term = bitcast %union.anon* %e7 to %struct.Term**
  %16 = load %struct.Term*, %struct.Term** %term, align 8
  %term_priority = getelementptr inbounds %struct.Term, %struct.Term* %16, i32 0, i32 2
  store i32 %conv, i32* %term_priority, align 4
  ret i32 0
}

declare void @d_fail(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #2

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_35_75_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %e = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 25
  %4 = load %struct.Elem*, %struct.Elem** %e, align 8
  %kind = getelementptr inbounds %struct.Elem, %struct.Elem* %4, i32 0, i32 0
  %5 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @d_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %_ps.addr, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %7 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %6, i64 %idx.ext1
  %8 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 6
  %9 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %e4 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %9, i32 0, i32 25
  %10 = load %struct.Elem*, %struct.Elem** %e4, align 8
  %e5 = getelementptr inbounds %struct.Elem, %struct.Elem* %10, i32 0, i32 3
  %term = bitcast %union.anon* %e5 to %struct.Term**
  %11 = load %struct.Term*, %struct.Term** %term, align 8
  %ignore_case = getelementptr inbounds %struct.Term, %struct.Term* %11, i32 0, i32 7
  %bf.load = load i8, i8* %ignore_case, align 4
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %ignore_case, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_35_76_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  call void @conditional_EBNF(%struct.Grammar* %3)
  ret i32 0
}

declare void @conditional_EBNF(%struct.Grammar*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_35_77_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  call void @star_EBNF(%struct.Grammar* %3)
  ret i32 0
}

declare void @star_EBNF(%struct.Grammar*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_35_78_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  call void @plus_EBNF(%struct.Grammar* %3)
  ret i32 0
}

declare void @plus_EBNF(%struct.Grammar*) #1

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_80_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 3
  store i32 10, i32* %op_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_81_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 3
  store i32 9, i32* %op_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_82_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 3
  store i32 18, i32* %op_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_83_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 3
  store i32 17, i32* %op_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_84_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 10, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_85_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 9, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_86_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 18, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_87_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 17, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_88_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 6, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_37_89_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %rule_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 5
  store i32 5, i32* %rule_assoc, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_38_90_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %3, i32 0, i32 24
  %4 = load %struct.Rule*, %struct.Rule** %r, align 8
  %op_assoc = getelementptr inbounds %struct.Rule, %struct.Rule* %4, i32 0, i32 3
  %5 = load i32, i32* %op_assoc, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %8 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %7, i64 %idx.ext1
  %9 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %9, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %10 = load i8*, i8** %s, align 8
  %call = call i64 @strtol(i8* %10, i8** null, i32 0) #3
  %conv = trunc i64 %call to i32
  %11 = load i8*, i8** %_ps.addr, align 8
  %12 = load i32, i32* %_offset.addr, align 4
  %idx.ext3 = sext i32 %12 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %11, i64 %idx.ext3
  %13 = bitcast i8* %add.ptr4 to %struct.D_ParseNode*
  %globals5 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %13, i32 0, i32 6
  %14 = load %struct.Grammar*, %struct.Grammar** %globals5, align 8
  %r6 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %14, i32 0, i32 24
  %15 = load %struct.Rule*, %struct.Rule** %r6, align 8
  %op_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %15, i32 0, i32 2
  store i32 %conv, i32* %op_priority, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %16 = load i8**, i8*** %_children.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx7, align 8
  %18 = load i32, i32* %_offset.addr, align 4
  %idx.ext8 = sext i32 %18 to i64
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 %idx.ext8
  %19 = bitcast i8* %add.ptr9 to %struct.D_ParseNode*
  %start_loc10 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %19, i32 0, i32 1
  %s11 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc10, i32 0, i32 0
  %20 = load i8*, i8** %s11, align 8
  %call12 = call i64 @strtol(i8* %20, i8** null, i32 0) #3
  %conv13 = trunc i64 %call12 to i32
  %21 = load i8*, i8** %_ps.addr, align 8
  %22 = load i32, i32* %_offset.addr, align 4
  %idx.ext14 = sext i32 %22 to i64
  %add.ptr15 = getelementptr inbounds i8, i8* %21, i64 %idx.ext14
  %23 = bitcast i8* %add.ptr15 to %struct.D_ParseNode*
  %globals16 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %23, i32 0, i32 6
  %24 = load %struct.Grammar*, %struct.Grammar** %globals16, align 8
  %r17 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %24, i32 0, i32 24
  %25 = load %struct.Rule*, %struct.Rule** %r17, align 8
  %rule_priority = getelementptr inbounds %struct.Rule, %struct.Rule* %25, i32 0, i32 4
  store i32 %conv13, i32* %rule_priority, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_43_98_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %3, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx2, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext3 = sext i32 %7 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 %idx.ext3
  %8 = bitcast i8* %add.ptr4 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 2
  %9 = load i8*, i8** %end, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 -1
  %call = call i8* @dup_str(i8* %add.ptr1, i8* %add.ptr5)
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 %idx.ext6
  %12 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 6
  %13 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 24
  %14 = load %struct.Rule*, %struct.Rule** %r, align 8
  %speculative_code = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 8
  %code = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code, i32 0, i32 0
  store i8* %call, i8** %code, align 8
  %15 = load i8**, i8*** %_children.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx8, align 8
  %17 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %17 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 %idx.ext9
  %18 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %start_loc11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %18, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc11, i32 0, i32 4
  %19 = load i32, i32* %line, align 4
  %20 = load i8*, i8** %_ps.addr, align 8
  %21 = load i32, i32* %_offset.addr, align 4
  %idx.ext12 = sext i32 %21 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %20, i64 %idx.ext12
  %22 = bitcast i8* %add.ptr13 to %struct.D_ParseNode*
  %globals14 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %22, i32 0, i32 6
  %23 = load %struct.Grammar*, %struct.Grammar** %globals14, align 8
  %r15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 24
  %24 = load %struct.Rule*, %struct.Rule** %r15, align 8
  %speculative_code16 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 8
  %line17 = getelementptr inbounds %struct.Code, %struct.Code* %speculative_code16, i32 0, i32 1
  store i32 %19, i32* %line17, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_44_99_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %3 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %3, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %4 = load i8*, i8** %s, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %4, i64 1
  %5 = load i8**, i8*** %_children.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 0
  %6 = load i8*, i8** %arrayidx2, align 8
  %7 = load i32, i32* %_offset.addr, align 4
  %idx.ext3 = sext i32 %7 to i64
  %add.ptr4 = getelementptr inbounds i8, i8* %6, i64 %idx.ext3
  %8 = bitcast i8* %add.ptr4 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %8, i32 0, i32 2
  %9 = load i8*, i8** %end, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 -1
  %call = call i8* @dup_str(i8* %add.ptr1, i8* %add.ptr5)
  %10 = load i8*, i8** %_ps.addr, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext6 = sext i32 %11 to i64
  %add.ptr7 = getelementptr inbounds i8, i8* %10, i64 %idx.ext6
  %12 = bitcast i8* %add.ptr7 to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 6
  %13 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %13, i32 0, i32 24
  %14 = load %struct.Rule*, %struct.Rule** %r, align 8
  %final_code = getelementptr inbounds %struct.Rule, %struct.Rule* %14, i32 0, i32 9
  %code = getelementptr inbounds %struct.Code, %struct.Code* %final_code, i32 0, i32 0
  store i8* %call, i8** %code, align 8
  %15 = load i8**, i8*** %_children.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %15, i64 0
  %16 = load i8*, i8** %arrayidx8, align 8
  %17 = load i32, i32* %_offset.addr, align 4
  %idx.ext9 = sext i32 %17 to i64
  %add.ptr10 = getelementptr inbounds i8, i8* %16, i64 %idx.ext9
  %18 = bitcast i8* %add.ptr10 to %struct.D_ParseNode*
  %start_loc11 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %18, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc11, i32 0, i32 4
  %19 = load i32, i32* %line, align 4
  %20 = load i8*, i8** %_ps.addr, align 8
  %21 = load i32, i32* %_offset.addr, align 4
  %idx.ext12 = sext i32 %21 to i64
  %add.ptr13 = getelementptr inbounds i8, i8* %20, i64 %idx.ext12
  %22 = bitcast i8* %add.ptr13 to %struct.D_ParseNode*
  %globals14 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %22, i32 0, i32 6
  %23 = load %struct.Grammar*, %struct.Grammar** %globals14, align 8
  %r15 = getelementptr inbounds %struct.Grammar, %struct.Grammar* %23, i32 0, i32 24
  %24 = load %struct.Rule*, %struct.Rule** %r15, align 8
  %final_code16 = getelementptr inbounds %struct.Rule, %struct.Rule* %24, i32 0, i32 9
  %line17 = getelementptr inbounds %struct.Code, %struct.Code* %final_code16, i32 0, i32 1
  store i32 %19, i32* %line17, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @d_final_reduction_code_45_100_dparser_gram(i8* %_ps, i8** %_children, i32 %_n_children, i32 %_offset, %struct.D_Parser* %_parser) #0 {
entry:
  %_ps.addr = alloca i8*, align 8
  %_children.addr = alloca i8**, align 8
  %_n_children.addr = alloca i32, align 4
  %_offset.addr = alloca i32, align 4
  %_parser.addr = alloca %struct.D_Parser*, align 8
  store i8* %_ps, i8** %_ps.addr, align 8
  store i8** %_children, i8*** %_children.addr, align 8
  store i32 %_n_children, i32* %_n_children.addr, align 4
  store i32 %_offset, i32* %_offset.addr, align 4
  store %struct.D_Parser* %_parser, %struct.D_Parser** %_parser.addr, align 8
  %0 = load i8*, i8** %_ps.addr, align 8
  %1 = load i32, i32* %_offset.addr, align 4
  %idx.ext = sext i32 %1 to i64
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %idx.ext
  %2 = bitcast i8* %add.ptr to %struct.D_ParseNode*
  %globals = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %2, i32 0, i32 6
  %3 = load %struct.Grammar*, %struct.Grammar** %globals, align 8
  %4 = load i8*, i8** %_ps.addr, align 8
  %5 = load i32, i32* %_offset.addr, align 4
  %idx.ext1 = sext i32 %5 to i64
  %add.ptr2 = getelementptr inbounds i8, i8* %4, i64 %idx.ext1
  %6 = bitcast i8* %add.ptr2 to %struct.D_ParseNode*
  %globals3 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %6, i32 0, i32 6
  %7 = load %struct.Grammar*, %struct.Grammar** %globals3, align 8
  %r = getelementptr inbounds %struct.Grammar, %struct.Grammar* %7, i32 0, i32 24
  %8 = load %struct.Rule*, %struct.Rule** %r, align 8
  %9 = load i8**, i8*** %_children.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx, align 8
  %11 = load i32, i32* %_offset.addr, align 4
  %idx.ext4 = sext i32 %11 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %10, i64 %idx.ext4
  %12 = bitcast i8* %add.ptr5 to %struct.D_ParseNode*
  %start_loc = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %12, i32 0, i32 1
  %s = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc, i32 0, i32 0
  %13 = load i8*, i8** %s, align 8
  %14 = load i8**, i8*** %_children.addr, align 8
  %arrayidx6 = getelementptr inbounds i8*, i8** %14, i64 0
  %15 = load i8*, i8** %arrayidx6, align 8
  %16 = load i32, i32* %_offset.addr, align 4
  %idx.ext7 = sext i32 %16 to i64
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 %idx.ext7
  %17 = bitcast i8* %add.ptr8 to %struct.D_ParseNode*
  %end = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %17, i32 0, i32 2
  %18 = load i8*, i8** %end, align 8
  %19 = load i8**, i8*** %_children.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %19, i64 2
  %20 = load i8*, i8** %arrayidx9, align 8
  %21 = load i32, i32* %_offset.addr, align 4
  %idx.ext10 = sext i32 %21 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %20, i64 %idx.ext10
  %22 = bitcast i8* %add.ptr11 to %struct.D_ParseNode*
  %start_loc12 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %22, i32 0, i32 1
  %s13 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc12, i32 0, i32 0
  %23 = load i8*, i8** %s13, align 8
  %add.ptr14 = getelementptr inbounds i8, i8* %23, i64 1
  %24 = load i8**, i8*** %_children.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %24, i64 2
  %25 = load i8*, i8** %arrayidx15, align 8
  %26 = load i32, i32* %_offset.addr, align 4
  %idx.ext16 = sext i32 %26 to i64
  %add.ptr17 = getelementptr inbounds i8, i8* %25, i64 %idx.ext16
  %27 = bitcast i8* %add.ptr17 to %struct.D_ParseNode*
  %end18 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %27, i32 0, i32 2
  %28 = load i8*, i8** %end18, align 8
  %add.ptr19 = getelementptr inbounds i8, i8* %28, i64 -1
  %29 = load i8**, i8*** %_children.addr, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %29, i64 0
  %30 = load i8*, i8** %arrayidx20, align 8
  %31 = load i32, i32* %_offset.addr, align 4
  %idx.ext21 = sext i32 %31 to i64
  %add.ptr22 = getelementptr inbounds i8, i8* %30, i64 %idx.ext21
  %32 = bitcast i8* %add.ptr22 to %struct.D_ParseNode*
  %start_loc23 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %32, i32 0, i32 1
  %line = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc23, i32 0, i32 4
  %33 = load i32, i32* %line, align 4
  %34 = load i8**, i8*** %_children.addr, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %34, i64 2
  %35 = load i8*, i8** %arrayidx24, align 8
  %36 = load i32, i32* %_offset.addr, align 4
  %idx.ext25 = sext i32 %36 to i64
  %add.ptr26 = getelementptr inbounds i8, i8* %35, i64 %idx.ext25
  %37 = bitcast i8* %add.ptr26 to %struct.D_ParseNode*
  %start_loc27 = getelementptr inbounds %struct.D_ParseNode, %struct.D_ParseNode* %37, i32 0, i32 1
  %line28 = getelementptr inbounds %struct.d_loc_t, %struct.d_loc_t* %start_loc27, i32 0, i32 4
  %38 = load i32, i32* %line28, align 4
  call void @add_pass_code(%struct.Grammar* %3, %struct.Rule* %8, i8* %13, i8* %18, i8* %add.ptr14, i8* %add.ptr19, i32 %33, i32 %38)
  ret i32 0
}

declare void @add_pass_code(%struct.Grammar*, %struct.Rule*, i8*, i8*, i8*, i8*, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
