; ModuleID = 'calls.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.arg_data = type { %union.tree_node*, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.args_size, %struct.args_size, %struct.args_size, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def**, i32, %struct.args_size }
%struct.args_size = type { i64, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.arg = type { %struct.rtx_def*, i32, %struct.rtx_def*, i32, %struct.args_size, %struct.args_size, %struct.rtx_def* }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@static_chain_rtx = external global %struct.rtx_def*, align 8
@expand_call.currently_expanding_call = internal global i32 0, align 4
@target_flags = external global i32, align 4
@highest_outgoing_arg_in_use = internal global i32 0, align 4
@stack_usage_map = internal global i8* null, align 8
@cfun = external global %struct.function*, align 8
@flag_no_inline = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@warn_inline = external global i32, align 4
@optimize = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't inline call to `%s'\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"called from here\00", align 1
@warn_aggregate_return = external global i32, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"function call has aggregate value\00", align 1
@ix86_preferred_stack_boundary = external global i32, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"calls.c\00", align 1
@__FUNCTION__.expand_call = private unnamed_addr constant [12 x i8] c"expand_call\00", align 1
@struct_value_rtx = external global %struct.rtx_def*, align 8
@stack_arg_under_construction = common global i32 0, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@global_trees = external global [51 x %union.tree_node*], align 16
@flag_optimize_sibling_calls = external global i32, align 4
@rtx_equal_function_value_matters = external global i32, align 4
@flag_pic = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@profile_arc_flag = external global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"__bb_fork_func\00", align 1
@stored_args_map = internal global %struct.simple_bitmap_def* null, align 8
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.5 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"setjmp\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"setjmp_syscall\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"sigsetjmp\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"savectx\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"siglongjmp\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"qsetjmp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"vfork\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"longjmp\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"strdup\00", align 1
@tree_code_type = external global [256 x i8], align 16
@.str.20 = private unnamed_addr constant [32 x i8] c"inlining failed in call to `%s'\00", align 1
@integer_types = external global [11 x %union.tree_node*], align 16
@flag_stack_check = external global i32, align 4
@__FUNCTION__.precompute_arguments = private unnamed_addr constant [21 x i8] c"precompute_arguments\00", align 1
@calls_function_save_exprs = internal global %union.tree_node* null, align 8
@__FUNCTION__.compute_argument_block_size = private unnamed_addr constant [28 x i8] c"compute_argument_block_size\00", align 1
@mode_size = external constant [59 x i8], align 16
@rtx_class = external constant [153 x i8], align 16
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@word_mode = external global i32, align 4
@__FUNCTION__.emit_call_1 = private unnamed_addr constant [12 x i8] c"emit_call_1\00", align 1
@flag_defer_pop = external global i32, align 4
@__FUNCTION__.emit_library_call_value_1 = private unnamed_addr constant [26 x i8] c"emit_library_call_value_1\00", align 1
@virtuals_instantiated = external global i32, align 4
@__FUNCTION__.store_one_arg = private unnamed_addr constant [14 x i8] c"store_one_arg\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"variable offset is passed partially in stack and in reg\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"variable size is passed partially in stack and in reg\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %funexp, %union.tree_node* %fndecl, %struct.rtx_def** %call_fusage, i32 %reg_parm_seen, i32 %sibcallp) #0 {
entry:
  %funexp.addr = alloca %struct.rtx_def*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %call_fusage.addr = alloca %struct.rtx_def**, align 8
  %reg_parm_seen.addr = alloca i32, align 4
  %sibcallp.addr = alloca i32, align 4
  %static_chain_value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %funexp, %struct.rtx_def** %funexp.addr, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %struct.rtx_def** %call_fusage, %struct.rtx_def*** %call_fusage.addr, align 8
  store i32 %reg_parm_seen, i32* %reg_parm_seen.addr, align 4
  store i32 %sibcallp, i32* %sibcallp.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %static_chain_value, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %funexp.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %cmp = icmp ne %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call1 = call %struct.rtx_def* @lookup_static_chain(%union.tree_node* %2)
  store %struct.rtx_def* %call1, %struct.rtx_def** %static_chain_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp ne i32 %bf.clear, 68
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %reg_parm_seen.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call4 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %6)
  %call5 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %call4)
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %7 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call6 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %call5, %cond.true ], [ %call6, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %funexp.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %8 = load i32, i32* %sibcallp.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %cond.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value, align 8
  %cmp11 = icmp ne %struct.rtx_def* %9, null
  br i1 %cmp11, label %if.then.12, label %if.end.19

if.then.12:                                       ; preds = %if.end.10
  %10 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value, align 8
  %call13 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %10, %struct.rtx_def* %11)
  %12 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.12
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %call_fusage.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  call void @use_reg(%struct.rtx_def** %14, %struct.rtx_def* %15)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.then.12
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  ret %struct.rtx_def* %16
}

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @lookup_static_chain(%union.tree_node*) #1

declare %struct.rtx_def* @force_not_mem(%struct.rtx_def*) #1

declare %struct.rtx_def* @memory_address(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @use_reg(%struct.rtx_def**, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @setjmp_call_p(%union.tree_node* %fndecl) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call = call i32 @special_function_p(%union.tree_node* %0, i32 0)
  %and = and i32 %call, 32
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define internal i32 @special_function_p(%union.tree_node* %fndecl, i32 %flags) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %flags.addr = alloca i32, align 4
  %name12 = alloca i8*, align 8
  %tname = alloca i8*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end.263, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %tobool1 = icmp ne %union.tree_node* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.263

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %3 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool3 = icmp ne %union.tree_node* %3, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.263

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %4 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl5 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %name6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 8
  %5 = load %union.tree_node*, %union.tree_node** %name6, align 8
  %identifier = bitcast %union.tree_node* %5 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %len = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 0
  %6 = load i32, i32* %len, align 4
  %cmp = icmp ule i32 %6, 17
  br i1 %cmp, label %land.lhs.true.7, label %if.end.263

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %7 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl8 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 9
  %8 = load %union.tree_node*, %union.tree_node** %context, align 8
  %cmp9 = icmp eq %union.tree_node* %8, null
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.263

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %9 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool11 = icmp ne i32 %bf.clear, 0
  br i1 %tobool11, label %if.then, label %if.end.263

if.then:                                          ; preds = %land.lhs.true.10
  %10 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl13 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %name14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 8
  %11 = load %union.tree_node*, %union.tree_node** %name14, align 8
  %identifier15 = bitcast %union.tree_node* %11 to %struct.tree_identifier*
  %id16 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier15, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id16, i32 0, i32 1
  %12 = load i8*, i8** %str, align 8
  store i8* %12, i8** %name12, align 8
  %13 = load i8*, i8** %name12, align 8
  store i8* %13, i8** %tname, align 8
  %14 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl17 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %name18 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 8
  %15 = load %union.tree_node*, %union.tree_node** %name18, align 8
  %identifier19 = bitcast %union.tree_node* %15 to %struct.tree_identifier*
  %id20 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier19, i32 0, i32 1
  %len21 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id20, i32 0, i32 0
  %16 = load i32, i32* %len21, align 4
  %cmp22 = icmp eq i32 %16, 6
  br i1 %cmp22, label %land.lhs.true.23, label %lor.lhs.false

land.lhs.true.23:                                 ; preds = %if.then
  %17 = load i8*, i8** %name12, align 8
  %arrayidx = getelementptr inbounds i8, i8* %17, i64 0
  %18 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %18 to i32
  %cmp24 = icmp eq i32 %conv, 97
  br i1 %cmp24, label %land.lhs.true.26, label %lor.lhs.false

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %19 = load i8*, i8** %name12, align 8
  %call = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)) #6
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %lor.lhs.false, label %if.then.43

lor.lhs.false:                                    ; preds = %land.lhs.true.26, %land.lhs.true.23, %if.then
  %20 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl28 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %name29 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl28, i32 0, i32 8
  %21 = load %union.tree_node*, %union.tree_node** %name29, align 8
  %identifier30 = bitcast %union.tree_node* %21 to %struct.tree_identifier*
  %id31 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier30, i32 0, i32 1
  %len32 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id31, i32 0, i32 0
  %22 = load i32, i32* %len32, align 4
  %cmp33 = icmp eq i32 %22, 16
  br i1 %cmp33, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %lor.lhs.false
  %23 = load i8*, i8** %name12, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %cmp38 = icmp eq i32 %conv37, 95
  br i1 %cmp38, label %land.lhs.true.40, label %if.end

land.lhs.true.40:                                 ; preds = %land.lhs.true.35
  %25 = load i8*, i8** %name12, align 8
  %call41 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0)) #6
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true.40, %land.lhs.true.26
  %26 = load i32, i32* %flags.addr, align 4
  %or = or i32 %26, 8
  store i32 %or, i32* %flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %land.lhs.true.40, %land.lhs.true.35, %lor.lhs.false
  %27 = load i8*, i8** %name12, align 8
  %arrayidx44 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %28 to i32
  %cmp46 = icmp eq i32 %conv45, 95
  br i1 %cmp46, label %if.then.48, label %if.end.69

if.then.48:                                       ; preds = %if.end
  %29 = load i8*, i8** %name12, align 8
  %arrayidx49 = getelementptr inbounds i8, i8* %29, i64 1
  %30 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %30 to i32
  %cmp51 = icmp eq i32 %conv50, 95
  br i1 %cmp51, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %if.then.48
  %31 = load i8*, i8** %name12, align 8
  %arrayidx54 = getelementptr inbounds i8, i8* %31, i64 2
  %32 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %32 to i32
  %cmp56 = icmp eq i32 %conv55, 120
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %land.lhs.true.53
  %33 = load i8*, i8** %tname, align 8
  %add.ptr = getelementptr inbounds i8, i8* %33, i64 3
  store i8* %add.ptr, i8** %tname, align 8
  br label %if.end.68

if.else:                                          ; preds = %land.lhs.true.53, %if.then.48
  %34 = load i8*, i8** %name12, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %34, i64 1
  %35 = load i8, i8* %arrayidx59, align 1
  %conv60 = sext i8 %35 to i32
  %cmp61 = icmp eq i32 %conv60, 95
  br i1 %cmp61, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.else
  %36 = load i8*, i8** %tname, align 8
  %add.ptr64 = getelementptr inbounds i8, i8* %36, i64 2
  store i8* %add.ptr64, i8** %tname, align 8
  br label %if.end.67

if.else.65:                                       ; preds = %if.else
  %37 = load i8*, i8** %tname, align 8
  %add.ptr66 = getelementptr inbounds i8, i8* %37, i64 1
  store i8* %add.ptr66, i8** %tname, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end
  %38 = load i8*, i8** %tname, align 8
  %arrayidx70 = getelementptr inbounds i8, i8* %38, i64 0
  %39 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %39 to i32
  %cmp72 = icmp eq i32 %conv71, 115
  br i1 %cmp72, label %if.then.74, label %if.else.114

if.then.74:                                       ; preds = %if.end.69
  %40 = load i8*, i8** %tname, align 8
  %arrayidx75 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx75, align 1
  %conv76 = sext i8 %41 to i32
  %cmp77 = icmp eq i32 %conv76, 101
  br i1 %cmp77, label %land.lhs.true.79, label %lor.lhs.false.85

land.lhs.true.79:                                 ; preds = %if.then.74
  %42 = load i8*, i8** %tname, align 8
  %call80 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)) #6
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %lor.lhs.false.82, label %if.then.101

lor.lhs.false.82:                                 ; preds = %land.lhs.true.79
  %43 = load i8*, i8** %tname, align 8
  %call83 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %lor.lhs.false.85, label %if.then.101

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.82, %if.then.74
  %44 = load i8*, i8** %tname, align 8
  %arrayidx86 = getelementptr inbounds i8, i8* %44, i64 1
  %45 = load i8, i8* %arrayidx86, align 1
  %conv87 = sext i8 %45 to i32
  %cmp88 = icmp eq i32 %conv87, 105
  br i1 %cmp88, label %land.lhs.true.90, label %lor.lhs.false.93

land.lhs.true.90:                                 ; preds = %lor.lhs.false.85
  %46 = load i8*, i8** %tname, align 8
  %call91 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %lor.lhs.false.93, label %if.then.101

lor.lhs.false.93:                                 ; preds = %land.lhs.true.90, %lor.lhs.false.85
  %47 = load i8*, i8** %tname, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %47, i64 1
  %48 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %48 to i32
  %cmp96 = icmp eq i32 %conv95, 97
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.103

land.lhs.true.98:                                 ; preds = %lor.lhs.false.93
  %49 = load i8*, i8** %tname, align 8
  %call99 = call i32 @strcmp(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0)) #6
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.103, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.98, %land.lhs.true.90, %lor.lhs.false.82, %land.lhs.true.79
  %50 = load i32, i32* %flags.addr, align 4
  %or102 = or i32 %50, 32
  store i32 %or102, i32* %flags.addr, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %land.lhs.true.98, %lor.lhs.false.93
  %51 = load i8*, i8** %tname, align 8
  %arrayidx104 = getelementptr inbounds i8, i8* %51, i64 1
  %52 = load i8, i8* %arrayidx104, align 1
  %conv105 = sext i8 %52 to i32
  %cmp106 = icmp eq i32 %conv105, 105
  br i1 %cmp106, label %land.lhs.true.108, label %if.end.113

land.lhs.true.108:                                ; preds = %if.end.103
  %53 = load i8*, i8** %tname, align 8
  %call109 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0)) #6
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.end.113, label %if.then.111

if.then.111:                                      ; preds = %land.lhs.true.108
  %54 = load i32, i32* %flags.addr, align 4
  %or112 = or i32 %54, 64
  store i32 %or112, i32* %flags.addr, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %land.lhs.true.108, %if.end.103
  br label %if.end.262

if.else.114:                                      ; preds = %if.end.69
  %55 = load i8*, i8** %tname, align 8
  %arrayidx115 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %56 to i32
  %cmp117 = icmp eq i32 %conv116, 113
  br i1 %cmp117, label %land.lhs.true.119, label %lor.lhs.false.127

land.lhs.true.119:                                ; preds = %if.else.114
  %57 = load i8*, i8** %tname, align 8
  %arrayidx120 = getelementptr inbounds i8, i8* %57, i64 1
  %58 = load i8, i8* %arrayidx120, align 1
  %conv121 = sext i8 %58 to i32
  %cmp122 = icmp eq i32 %conv121, 115
  br i1 %cmp122, label %land.lhs.true.124, label %lor.lhs.false.127

land.lhs.true.124:                                ; preds = %land.lhs.true.119
  %59 = load i8*, i8** %tname, align 8
  %call125 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0)) #6
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %lor.lhs.false.127, label %if.then.140

lor.lhs.false.127:                                ; preds = %land.lhs.true.124, %land.lhs.true.119, %if.else.114
  %60 = load i8*, i8** %tname, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %61 to i32
  %cmp130 = icmp eq i32 %conv129, 118
  br i1 %cmp130, label %land.lhs.true.132, label %if.else.142

land.lhs.true.132:                                ; preds = %lor.lhs.false.127
  %62 = load i8*, i8** %tname, align 8
  %arrayidx133 = getelementptr inbounds i8, i8* %62, i64 1
  %63 = load i8, i8* %arrayidx133, align 1
  %conv134 = sext i8 %63 to i32
  %cmp135 = icmp eq i32 %conv134, 102
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.142

land.lhs.true.137:                                ; preds = %land.lhs.true.132
  %64 = load i8*, i8** %tname, align 8
  %call138 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #6
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.else.142, label %if.then.140

if.then.140:                                      ; preds = %land.lhs.true.137, %land.lhs.true.124
  %65 = load i32, i32* %flags.addr, align 4
  %or141 = or i32 %65, 32
  store i32 %or141, i32* %flags.addr, align 4
  br label %if.end.261

if.else.142:                                      ; preds = %land.lhs.true.137, %land.lhs.true.132, %lor.lhs.false.127
  %66 = load i8*, i8** %tname, align 8
  %arrayidx143 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %67 to i32
  %cmp145 = icmp eq i32 %conv144, 108
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.157

land.lhs.true.147:                                ; preds = %if.else.142
  %68 = load i8*, i8** %tname, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %68, i64 1
  %69 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %69 to i32
  %cmp150 = icmp eq i32 %conv149, 111
  br i1 %cmp150, label %land.lhs.true.152, label %if.else.157

land.lhs.true.152:                                ; preds = %land.lhs.true.147
  %70 = load i8*, i8** %tname, align 8
  %call153 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #6
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.else.157, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.152
  %71 = load i32, i32* %flags.addr, align 4
  %or156 = or i32 %71, 64
  store i32 %or156, i32* %flags.addr, align 4
  br label %if.end.260

if.else.157:                                      ; preds = %land.lhs.true.152, %land.lhs.true.147, %if.else.142
  %72 = load i8*, i8** %tname, align 8
  %arrayidx158 = getelementptr inbounds i8, i8* %72, i64 0
  %73 = load i8, i8* %arrayidx158, align 1
  %conv159 = sext i8 %73 to i32
  %cmp160 = icmp eq i32 %conv159, 102
  br i1 %cmp160, label %land.lhs.true.162, label %lor.lhs.false.170

land.lhs.true.162:                                ; preds = %if.else.157
  %74 = load i8*, i8** %tname, align 8
  %arrayidx163 = getelementptr inbounds i8, i8* %74, i64 1
  %75 = load i8, i8* %arrayidx163, align 1
  %conv164 = sext i8 %75 to i32
  %cmp165 = icmp eq i32 %conv164, 111
  br i1 %cmp165, label %land.lhs.true.167, label %lor.lhs.false.170

land.lhs.true.167:                                ; preds = %land.lhs.true.162
  %76 = load i8*, i8** %tname, align 8
  %call168 = call i32 @strcmp(i8* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #6
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %lor.lhs.false.170, label %if.then.233

lor.lhs.false.170:                                ; preds = %land.lhs.true.167, %land.lhs.true.162, %if.else.157
  %77 = load i8*, i8** %name12, align 8
  %arrayidx171 = getelementptr inbounds i8, i8* %77, i64 0
  %78 = load i8, i8* %arrayidx171, align 1
  %conv172 = sext i8 %78 to i32
  %cmp173 = icmp eq i32 %conv172, 95
  br i1 %cmp173, label %land.lhs.true.175, label %lor.lhs.false.183

land.lhs.true.175:                                ; preds = %lor.lhs.false.170
  %79 = load i8*, i8** %name12, align 8
  %arrayidx176 = getelementptr inbounds i8, i8* %79, i64 1
  %80 = load i8, i8* %arrayidx176, align 1
  %conv177 = sext i8 %80 to i32
  %cmp178 = icmp eq i32 %conv177, 95
  br i1 %cmp178, label %land.lhs.true.180, label %lor.lhs.false.183

land.lhs.true.180:                                ; preds = %land.lhs.true.175
  %81 = load i8*, i8** %tname, align 8
  %call181 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #6
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %lor.lhs.false.183, label %if.then.233

lor.lhs.false.183:                                ; preds = %land.lhs.true.180, %land.lhs.true.175, %lor.lhs.false.170
  %82 = load i8*, i8** %tname, align 8
  %arrayidx184 = getelementptr inbounds i8, i8* %82, i64 0
  %83 = load i8, i8* %arrayidx184, align 1
  %conv185 = sext i8 %83 to i32
  %cmp186 = icmp eq i32 %conv185, 101
  br i1 %cmp186, label %land.lhs.true.188, label %if.else.235

land.lhs.true.188:                                ; preds = %lor.lhs.false.183
  %84 = load i8*, i8** %tname, align 8
  %arrayidx189 = getelementptr inbounds i8, i8* %84, i64 1
  %85 = load i8, i8* %arrayidx189, align 1
  %conv190 = sext i8 %85 to i32
  %cmp191 = icmp eq i32 %conv190, 120
  br i1 %cmp191, label %land.lhs.true.193, label %if.else.235

land.lhs.true.193:                                ; preds = %land.lhs.true.188
  %86 = load i8*, i8** %tname, align 8
  %arrayidx194 = getelementptr inbounds i8, i8* %86, i64 2
  %87 = load i8, i8* %arrayidx194, align 1
  %conv195 = sext i8 %87 to i32
  %cmp196 = icmp eq i32 %conv195, 101
  br i1 %cmp196, label %land.lhs.true.198, label %if.else.235

land.lhs.true.198:                                ; preds = %land.lhs.true.193
  %88 = load i8*, i8** %tname, align 8
  %arrayidx199 = getelementptr inbounds i8, i8* %88, i64 3
  %89 = load i8, i8* %arrayidx199, align 1
  %conv200 = sext i8 %89 to i32
  %cmp201 = icmp eq i32 %conv200, 99
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.235

land.lhs.true.203:                                ; preds = %land.lhs.true.198
  %90 = load i8*, i8** %tname, align 8
  %arrayidx204 = getelementptr inbounds i8, i8* %90, i64 4
  %91 = load i8, i8* %arrayidx204, align 1
  %conv205 = sext i8 %91 to i32
  %cmp206 = icmp eq i32 %conv205, 108
  br i1 %cmp206, label %land.lhs.true.213, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %land.lhs.true.203
  %92 = load i8*, i8** %tname, align 8
  %arrayidx209 = getelementptr inbounds i8, i8* %92, i64 4
  %93 = load i8, i8* %arrayidx209, align 1
  %conv210 = sext i8 %93 to i32
  %cmp211 = icmp eq i32 %conv210, 118
  br i1 %cmp211, label %land.lhs.true.213, label %if.else.235

land.lhs.true.213:                                ; preds = %lor.lhs.false.208, %land.lhs.true.203
  %94 = load i8*, i8** %tname, align 8
  %arrayidx214 = getelementptr inbounds i8, i8* %94, i64 5
  %95 = load i8, i8* %arrayidx214, align 1
  %conv215 = sext i8 %95 to i32
  %cmp216 = icmp eq i32 %conv215, 0
  br i1 %cmp216, label %if.then.233, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %land.lhs.true.213
  %96 = load i8*, i8** %tname, align 8
  %arrayidx219 = getelementptr inbounds i8, i8* %96, i64 5
  %97 = load i8, i8* %arrayidx219, align 1
  %conv220 = sext i8 %97 to i32
  %cmp221 = icmp eq i32 %conv220, 112
  br i1 %cmp221, label %land.lhs.true.228, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.218
  %98 = load i8*, i8** %tname, align 8
  %arrayidx224 = getelementptr inbounds i8, i8* %98, i64 5
  %99 = load i8, i8* %arrayidx224, align 1
  %conv225 = sext i8 %99 to i32
  %cmp226 = icmp eq i32 %conv225, 101
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.235

land.lhs.true.228:                                ; preds = %lor.lhs.false.223, %lor.lhs.false.218
  %100 = load i8*, i8** %tname, align 8
  %arrayidx229 = getelementptr inbounds i8, i8* %100, i64 6
  %101 = load i8, i8* %arrayidx229, align 1
  %conv230 = sext i8 %101 to i32
  %cmp231 = icmp eq i32 %conv230, 0
  br i1 %cmp231, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %land.lhs.true.228, %land.lhs.true.213, %land.lhs.true.180, %land.lhs.true.167
  %102 = load i32, i32* %flags.addr, align 4
  %or234 = or i32 %102, 128
  store i32 %or234, i32* %flags.addr, align 4
  br label %if.end.259

if.else.235:                                      ; preds = %land.lhs.true.228, %lor.lhs.false.223, %lor.lhs.false.208, %land.lhs.true.198, %land.lhs.true.193, %land.lhs.true.188, %lor.lhs.false.183
  %103 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common236 = bitcast %union.tree_node* %103 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common236, i32 0, i32 1
  %104 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common237 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %type238 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common237, i32 0, i32 1
  %105 = load %union.tree_node*, %union.tree_node** %type238, align 8
  %type239 = bitcast %union.tree_node* %105 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type239, i32 0, i32 6
  %bf.load240 = load i32, i32* %mode, align 4
  %bf.lshr241 = lshr i32 %bf.load240, 9
  %bf.clear242 = and i32 %bf.lshr241, 127
  %106 = load i32, i32* @target_flags, align 4
  %and243 = and i32 %106, 33554432
  %tobool244 = icmp ne i32 %and243, 0
  %cond = select i1 %tobool244, i32 5, i32 4
  %cmp245 = icmp eq i32 %bf.clear242, %cond
  br i1 %cmp245, label %land.lhs.true.247, label %if.end.258

land.lhs.true.247:                                ; preds = %if.else.235
  %107 = load i8*, i8** %tname, align 8
  %call248 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #6
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %lor.lhs.false.250, label %if.then.256

lor.lhs.false.250:                                ; preds = %land.lhs.true.247
  %108 = load i8*, i8** %tname, align 8
  %call251 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #6
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %lor.lhs.false.253, label %if.then.256

lor.lhs.false.253:                                ; preds = %lor.lhs.false.250
  %109 = load i8*, i8** %tname, align 8
  %call254 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)) #6
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.end.258, label %if.then.256

if.then.256:                                      ; preds = %lor.lhs.false.253, %lor.lhs.false.250, %land.lhs.true.247
  %110 = load i32, i32* %flags.addr, align 4
  %or257 = or i32 %110, 4
  store i32 %or257, i32* %flags.addr, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.256, %lor.lhs.false.253, %if.else.235
  br label %if.end.259

if.end.259:                                       ; preds = %if.end.258, %if.then.233
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.then.155
  br label %if.end.261

if.end.261:                                       ; preds = %if.end.260, %if.then.140
  br label %if.end.262

if.end.262:                                       ; preds = %if.end.261, %if.end.113
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %land.lhs.true.10, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %111 = load i32, i32* %flags.addr, align 4
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_call(%union.tree_node* %exp, %struct.rtx_def* %target, i32 %ignore) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %ignore.addr = alloca i32, align 4
  %actparms = alloca %union.tree_node*, align 8
  %funexp = alloca %struct.rtx_def*, align 8
  %tail_recursion_insns = alloca %struct.rtx_def*, align 8
  %normal_call_insns = alloca %struct.rtx_def*, align 8
  %tail_call_insns = alloca %struct.rtx_def*, align 8
  %funtype = alloca %union.tree_node*, align 8
  %fndecl = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %try_tail_call = alloca i32, align 4
  %try_tail_recursion = alloca i32, align 4
  %pass = alloca i32, align 4
  %valreg = alloca %struct.rtx_def*, align 8
  %structure_value_addr = alloca %struct.rtx_def*, align 8
  %structure_value_addr_parm = alloca i32, align 4
  %struct_value_size = alloca i64, align 8
  %pcc_struct_value = alloca i32, align 4
  %num_actuals = alloca i32, align 4
  %n_named_args = alloca i32, align 4
  %args = alloca %struct.arg_data*, align 8
  %args_size = alloca %struct.args_size, align 8
  %adjusted_args_size = alloca %struct.args_size, align 8
  %unadjusted_args_size = alloca i32, align 4
  %args_so_far = alloca %struct.ix86_args, align 4
  %reg_parm_seen = alloca i32, align 4
  %must_preallocate = alloca i32, align 4
  %reg_parm_stack_space = alloca i32, align 4
  %argblock = alloca %struct.rtx_def*, align 8
  %flags = alloca i32, align 4
  %is_integrable = alloca i32, align 4
  %low_to_save = alloca i32, align 4
  %high_to_save = alloca i32, align 4
  %save_area = alloca %struct.rtx_def*, align 8
  %initial_highest_arg_in_use = alloca i32, align 4
  %initial_stack_usage_map = alloca i8*, align 8
  %old_stack_arg_under_construction = alloca i32, align 4
  %old_stack_level = alloca %struct.rtx_def*, align 8
  %old_pending_adj = alloca i32, align 4
  %old_inhibit_defer_pop = alloca i32, align 4
  %old_stack_allocated = alloca i32, align 4
  %call_fusage = alloca %struct.rtx_def*, align 8
  %p = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %preferred_stack_boundary = alloca i64, align 8
  %preferred_unit_stack_boundary = alloca i64, align 8
  %d = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %temp176 = alloca %struct.rtx_def*, align 8
  %end = alloca i32, align 4
  %inc397 = alloca i32, align 4
  %var422 = alloca %union.tree_node*, align 8
  %save_pending_stack_adjust = alloca i32, align 4
  %save_stack_pointer_delta = alloca i32, align 4
  %sibcall_failure = alloca i32, align 4
  %save_pending_stack_adjust497 = alloca i32, align 4
  %save_stack_pointer_delta498 = alloca i32, align 4
  %insns = alloca %struct.rtx_def*, align 8
  %before_call = alloca %struct.rtx_def*, align 8
  %next_arg_reg = alloca %struct.rtx_def*, align 8
  %needed = alloca i32, align 4
  %push_size = alloca %struct.rtx_def*, align 8
  %before_arg = alloca %struct.rtx_def*, align 8
  %before_arg840 = alloca %struct.rtx_def*, align 8
  %insns929 = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %temp941 = alloca %struct.rtx_def*, align 8
  %temp988 = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %insns993 = alloca %struct.rtx_def*, align 8
  %last1023 = alloca %struct.rtx_def*, align 8
  %nt = alloca %union.tree_node*, align 8
  %save_mode = alloca i32, align 4
  %stack_area = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %ignore, i32* %ignore.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp1 = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %actparms, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %tail_recursion_insns, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %normal_call_insns, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %tail_call_insns, align 8
  store %union.tree_node* null, %union.tree_node** %fndecl, align 8
  store i32 1, i32* %try_tail_call, align 4
  store i32 1, i32* %try_tail_recursion, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %structure_value_addr, align 8
  store i32 0, i32* %structure_value_addr_parm, align 4
  store i64 0, i64* %struct_value_size, align 8
  store i32 0, i32* %pcc_struct_value, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %3 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %3, 4096
  %tobool3 = icmp ne i32 %and2, 0
  %lnot = xor i1 %tobool3, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %lnot4 = xor i1 %4, true
  %lnot.ext = zext i1 %lnot4 to i32
  store i32 %lnot.ext, i32* %must_preallocate, align 4
  store i32 0, i32* %reg_parm_stack_space, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %argblock, align 8
  store i32 0, i32* %flags, align 4
  store i32 0, i32* %is_integrable, align 4
  store i32 -1, i32* %low_to_save, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %save_area, align 8
  %5 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  store i32 %5, i32* %initial_highest_arg_in_use, align 4
  %6 = load i8*, i8** @stack_usage_map, align 8
  store i8* %6, i8** %initial_stack_usage_map, align 8
  store i32 0, i32* %old_stack_arg_under_construction, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %old_stack_level, align 8
  store i32 0, i32* %old_pending_adj, align 4
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 2
  %8 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %8, i32 0, i32 1
  %9 = load i32, i32* %x_inhibit_defer_pop, align 4
  store i32 %9, i32* %old_inhibit_defer_pop, align 4
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp5 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 0
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %11, %union.tree_node** %p, align 8
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %nothrow_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %nothrow_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 17
  %bf.clear = and i32 %bf.lshr, 1
  %tobool8 = icmp ne i32 %bf.clear, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %13 = load i32, i32* %flags, align 4
  %or = or i32 %13, 16
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %14 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call = call %union.tree_node* @get_callee_fndecl(%union.tree_node* %14)
  store %union.tree_node* %call, %union.tree_node** %fndecl, align 8
  %15 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %tobool9 = icmp ne %union.tree_node* %15, null
  br i1 %tobool9, label %if.then.10, label %if.else.52

if.then.10:                                       ; preds = %if.end
  %16 = load i32, i32* @flag_no_inline, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.10
  %17 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %18 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp = icmp ne %union.tree_node* %17, %18
  br i1 %cmp, label %land.lhs.true.12, label %if.else

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %19 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %20 = bitcast i48* %inline_flag to i64*
  %bf.load13 = load i64, i64* %20, align 8
  %bf.lshr14 = lshr i64 %bf.load13, 11
  %bf.clear15 = and i64 %bf.lshr14, 1
  %bf.cast = trunc i64 %bf.clear15 to i32
  %tobool16 = icmp ne i32 %bf.cast, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.12
  %21 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl18 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl18, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %22 = load %struct.function*, %struct.function** %f, align 8
  %tobool19 = icmp ne %struct.function* %22, null
  br i1 %tobool19, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %land.lhs.true.17
  %23 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl21 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %u222 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 19
  %f23 = bitcast %union.anon.1* %u222 to %struct.function**
  %24 = load %struct.function*, %struct.function** %f23, align 8
  %inlinable = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 44
  %25 = load i32, i32* %inlinable, align 4
  %tobool24 = icmp ne i32 %25, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %land.lhs.true.20
  store i32 1, i32* %is_integrable, align 4
  br label %if.end.49

if.else:                                          ; preds = %land.lhs.true.20, %land.lhs.true.17, %land.lhs.true.12, %land.lhs.true, %if.then.10
  %26 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common26 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %addressable_flag, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 10
  %bf.clear29 = and i32 %bf.lshr28, 1
  %tobool30 = icmp ne i32 %bf.clear29, 0
  br i1 %tobool30, label %if.end.48, label %if.then.31

if.then.31:                                       ; preds = %if.else
  %27 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl32 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %inline_flag33 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl32, i32 0, i32 5
  %28 = bitcast i48* %inline_flag33 to i64*
  %bf.load34 = load i64, i64* %28, align 8
  %bf.lshr35 = lshr i64 %bf.load34, 11
  %bf.clear36 = and i64 %bf.lshr35, 1
  %bf.cast37 = trunc i64 %bf.clear36 to i32
  %tobool38 = icmp ne i32 %bf.cast37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.46

land.lhs.true.39:                                 ; preds = %if.then.31
  %29 = load i32, i32* @warn_inline, align 4
  %tobool40 = icmp ne i32 %29, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.46

land.lhs.true.41:                                 ; preds = %land.lhs.true.39
  %30 = load i32, i32* @flag_no_inline, align 4
  %tobool42 = icmp ne i32 %30, 0
  br i1 %tobool42, label %if.end.46, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true.41
  %31 = load i32, i32* @optimize, align 4
  %cmp44 = icmp sgt i32 %31, 0
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.43
  %32 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %land.lhs.true.43, %land.lhs.true.41, %land.lhs.true.39, %if.then.31
  %33 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %call47 = call i32 @mark_addressable(%union.tree_node* %33)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %if.else
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.25
  %34 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %call50 = call i32 @flags_from_decl_or_type(%union.tree_node* %34)
  %35 = load i32, i32* %flags, align 4
  %or51 = or i32 %35, %call50
  store i32 %or51, i32* %flags, align 4
  br label %if.end.58

if.else.52:                                       ; preds = %if.end
  %36 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common53 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common54 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %type55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %type55, align 8
  %call56 = call i32 @flags_from_decl_or_type(%union.tree_node* %38)
  %39 = load i32, i32* %flags, align 4
  %or57 = or i32 %39, %call56
  store i32 %or57, i32* %flags, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.52, %if.end.49
  store i32 0, i32* %reg_parm_stack_space, align 4
  %40 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp59 = icmp sgt i32 %40, 0
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.67

land.lhs.true.60:                                 ; preds = %if.end.58
  %41 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %41, 2048
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.end.67, label %land.lhs.true.63

land.lhs.true.63:                                 ; preds = %land.lhs.true.60
  %42 = load i32, i32* @target_flags, align 4
  %and64 = and i32 %42, 4096
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %land.lhs.true.63
  store i32 1, i32* %must_preallocate, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.66, %land.lhs.true.63, %land.lhs.true.60, %if.end.58
  %43 = load i32, i32* @warn_aggregate_return, align 4
  %tobool68 = icmp ne i32 %43, 0
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.108

land.lhs.true.69:                                 ; preds = %if.end.67
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common70 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %type71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %type71, align 8
  %common72 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 2
  %bf.load73 = load i32, i32* %code, align 8
  %bf.clear74 = and i32 %bf.load73, 255
  %cmp75 = icmp eq i32 %bf.clear74, 18
  br i1 %cmp75, label %if.then.107, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.69
  %46 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common76 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %type77 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 1
  %47 = load %union.tree_node*, %union.tree_node** %type77, align 8
  %common78 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %code79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 2
  %bf.load80 = load i32, i32* %code79, align 8
  %bf.clear81 = and i32 %bf.load80, 255
  %cmp82 = icmp eq i32 %bf.clear81, 20
  br i1 %cmp82, label %if.then.107, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false
  %48 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common84 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common84, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type85, align 8
  %common86 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %code87 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 2
  %bf.load88 = load i32, i32* %code87, align 8
  %bf.clear89 = and i32 %bf.load88, 255
  %cmp90 = icmp eq i32 %bf.clear89, 21
  br i1 %cmp90, label %if.then.107, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.83
  %50 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common92 = bitcast %union.tree_node* %50 to %struct.tree_common*
  %type93 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common92, i32 0, i32 1
  %51 = load %union.tree_node*, %union.tree_node** %type93, align 8
  %common94 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %code95 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common94, i32 0, i32 2
  %bf.load96 = load i32, i32* %code95, align 8
  %bf.clear97 = and i32 %bf.load96, 255
  %cmp98 = icmp eq i32 %bf.clear97, 22
  br i1 %cmp98, label %if.then.107, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.91
  %52 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common100 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %type101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 1
  %53 = load %union.tree_node*, %union.tree_node** %type101, align 8
  %common102 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %code103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 2
  %bf.load104 = load i32, i32* %code103, align 8
  %bf.clear105 = and i32 %bf.load104, 255
  %cmp106 = icmp eq i32 %bf.clear105, 19
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %lor.lhs.false.99, %lor.lhs.false.91, %lor.lhs.false.83, %lor.lhs.false, %land.lhs.true.69
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %lor.lhs.false.99, %if.end.67
  %54 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call109 = call i32 @aggregate_value_p(%union.tree_node* %54)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.131

if.then.111:                                      ; preds = %if.end.108
  %55 = load i32, i32* %flags, align 4
  %and112 = and i32 %55, -4610
  store i32 %and112, i32* %flags, align 4
  %56 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common113 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %type114 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common113, i32 0, i32 1
  %57 = load %union.tree_node*, %union.tree_node** %type114, align 8
  %call115 = call i64 @int_size_in_bytes(%union.tree_node* %57)
  store i64 %call115, i64* %struct_value_size, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool116 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool116, label %land.lhs.true.117, label %if.else.123

land.lhs.true.117:                                ; preds = %if.then.111
  %59 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load118 = load i32, i32* %60, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp eq i32 %bf.clear119, 66
  br i1 %cmp120, label %if.then.121, label %if.else.123

if.then.121:                                      ; preds = %land.lhs.true.117
  %61 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %structure_value_addr, align 8
  br label %if.end.130

if.else.123:                                      ; preds = %land.lhs.true.117, %if.then.111
  %63 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common124 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %type125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 1
  %64 = load %union.tree_node*, %union.tree_node** %type125, align 8
  %call126 = call %struct.rtx_def* @assign_temp(%union.tree_node* %64, i32 1, i32 1, i32 1)
  store %struct.rtx_def* %call126, %struct.rtx_def** %d, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %d, align 8
  call void @mark_temp_addr_taken(%struct.rtx_def* %65)
  %66 = load %struct.rtx_def*, %struct.rtx_def** %d, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %structure_value_addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else.123, %if.then.121
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.108
  %68 = load i32, i32* %is_integrable, align 4
  %tobool132 = icmp ne i32 %68, 0
  br i1 %tobool132, label %if.then.133, label %if.end.140

if.then.133:                                      ; preds = %if.end.131
  %69 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %70 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %72 = load i32, i32* %ignore.addr, align 4
  %73 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common134 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %type135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common134, i32 0, i32 1
  %74 = load %union.tree_node*, %union.tree_node** %type135, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call136 = call %struct.rtx_def* @try_to_integrate(%union.tree_node* %69, %union.tree_node* %70, %struct.rtx_def* %71, i32 %72, %union.tree_node* %74, %struct.rtx_def* %75)
  store %struct.rtx_def* %call136, %struct.rtx_def** %temp, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp137 = icmp ne %struct.rtx_def* %76, inttoptr (i64 -1 to %struct.rtx_def*)
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.133
  %77 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %retval
  br label %return

if.end.139:                                       ; preds = %if.then.133
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.131
  %78 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %conv = sext i32 %78 to i64
  store i64 %conv, i64* %preferred_stack_boundary, align 8
  %79 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp141 = bitcast %union.tree_node* %79 to %struct.tree_exp*
  %operands142 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp141, i32 0, i32 2
  %arrayidx143 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands142, i32 0, i64 0
  %80 = load %union.tree_node*, %union.tree_node** %arrayidx143, align 8
  %common144 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %type145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common144, i32 0, i32 1
  %81 = load %union.tree_node*, %union.tree_node** %type145, align 8
  store %union.tree_node* %81, %union.tree_node** %funtype, align 8
  %82 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %common146 = bitcast %union.tree_node* %82 to %struct.tree_common*
  %code147 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common146, i32 0, i32 2
  %bf.load148 = load i32, i32* %code147, align 8
  %bf.clear149 = and i32 %bf.load148, 255
  %cmp150 = icmp eq i32 %bf.clear149, 13
  br i1 %cmp150, label %if.end.160, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %if.end.140
  %83 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %common153 = bitcast %union.tree_node* %83 to %struct.tree_common*
  %code154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common153, i32 0, i32 2
  %bf.load155 = load i32, i32* %code154, align 8
  %bf.clear156 = and i32 %bf.load155, 255
  %cmp157 = icmp eq i32 %bf.clear156, 15
  br i1 %cmp157, label %if.end.160, label %if.then.159

if.then.159:                                      ; preds = %lor.lhs.false.152
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2299, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #7
  unreachable

if.end.160:                                       ; preds = %lor.lhs.false.152, %if.end.140
  %84 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %common161 = bitcast %union.tree_node* %84 to %struct.tree_common*
  %type162 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common161, i32 0, i32 1
  %85 = load %union.tree_node*, %union.tree_node** %type162, align 8
  store %union.tree_node* %85, %union.tree_node** %funtype, align 8
  %86 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %87 = load i32, i32* %flags, align 4
  %call163 = call i32 @special_function_p(%union.tree_node* %86, i32 %87)
  %88 = load i32, i32* %flags, align 4
  %or164 = or i32 %88, %call163
  store i32 %or164, i32* %flags, align 4
  %89 = load i32, i32* %flags, align 4
  %and165 = and i32 %89, 8
  %tobool166 = icmp ne i32 %and165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.end.160
  %90 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %90, i32 0, i32 56
  %91 = bitcast i24* %calls_alloca to i32*
  %bf.load168 = load i32, i32* %91, align 8
  %bf.clear169 = and i32 %bf.load168, -65
  %bf.set = or i32 %bf.clear169, 64
  store i32 %bf.set, i32* %91, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.167, %if.end.160
  %92 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %tobool171 = icmp ne %struct.rtx_def* %92, null
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.195

land.lhs.true.172:                                ; preds = %if.end.170
  %93 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %cmp173 = icmp eq %struct.rtx_def* %93, null
  br i1 %cmp173, label %if.then.175, label %if.end.195

if.then.175:                                      ; preds = %land.lhs.true.172
  %94 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load177 = load i32, i32* %95, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp ne i32 %bf.clear178, 61
  br i1 %cmp179, label %cond.true, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.then.175
  %96 = load i32, i32* @target_flags, align 4
  %and182 = and i32 %96, 4096
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %land.lhs.true.184, label %cond.false

land.lhs.true.184:                                ; preds = %lor.lhs.false.181
  %97 = load i32, i32* @stack_arg_under_construction, align 4
  %tobool185 = icmp ne i32 %97, 0
  br i1 %tobool185, label %land.lhs.true.186, label %cond.false

land.lhs.true.186:                                ; preds = %land.lhs.true.184
  %98 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %cmp187 = icmp eq %struct.rtx_def* %98, %99
  br i1 %cmp187, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.186, %if.then.175
  %100 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call189 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %100)
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.186, %land.lhs.true.184, %lor.lhs.false.181
  %101 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %call189, %cond.true ], [ %101, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %temp176, align 8
  %102 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %103 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %common190 = bitcast %union.tree_node* %103 to %struct.tree_common*
  %type191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common190, i32 0, i32 1
  %104 = load %union.tree_node*, %union.tree_node** %type191, align 8
  %call192 = call %union.tree_node* @build_pointer_type(%union.tree_node* %104)
  %105 = load %struct.rtx_def*, %struct.rtx_def** %temp176, align 8
  %call193 = call %union.tree_node* @make_tree(%union.tree_node* %call192, %struct.rtx_def* %105)
  %106 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  %call194 = call %union.tree_node* @tree_cons(%union.tree_node* %102, %union.tree_node* %call193, %union.tree_node* %106)
  store %union.tree_node* %call194, %union.tree_node** %actparms, align 8
  store i32 1, i32* %structure_value_addr_parm, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %cond.end, %land.lhs.true.172, %if.end.170
  %107 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  store %union.tree_node* %107, %union.tree_node** %p, align 8
  store i32 0, i32* %num_actuals, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.195
  %108 = load %union.tree_node*, %union.tree_node** %p, align 8
  %tobool196 = icmp ne %union.tree_node* %108, null
  br i1 %tobool196, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %109 = load i32, i32* %num_actuals, align 4
  %inc = add nsw i32 %109, 1
  store i32 %inc, i32* %num_actuals, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %110 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common197 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common197, i32 0, i32 0
  %111 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %111, %union.tree_node** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %112 = load i32, i32* %num_actuals, align 4
  store i32 %112, i32* %n_named_args, align 4
  %113 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  call void @init_cumulative_args(%struct.ix86_args* %args_so_far, %union.tree_node* %113, %struct.rtx_def* null)
  %114 = load i32, i32* %num_actuals, align 4
  %conv198 = sext i32 %114 to i64
  %mul = mul i64 %conv198, 168
  %115 = alloca i8, i64 %mul
  %116 = bitcast i8* %115 to %struct.arg_data*
  store %struct.arg_data* %116, %struct.arg_data** %args, align 8
  %117 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %118 = bitcast %struct.arg_data* %117 to i8*
  %119 = load i32, i32* %num_actuals, align 4
  %conv199 = sext i32 %119 to i64
  %mul200 = mul i64 %conv199, 168
  call void @llvm.memset.p0i8.i64(i8* %118, i8 0, i64 %mul200, i32 1, i1 false)
  %120 = load i32, i32* %num_actuals, align 4
  %121 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %122 = load i32, i32* %n_named_args, align 4
  %123 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  %124 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %125 = load i32, i32* %reg_parm_stack_space, align 4
  call void @initialize_argument_information(i32 %120, %struct.arg_data* %121, %struct.args_size* %args_size, i32 %122, %union.tree_node* %123, %union.tree_node* %124, %struct.ix86_args* %args_so_far, i32 %125, %struct.rtx_def** %old_stack_level, i32* %old_pending_adj, i32* %must_preallocate, i32* %flags)
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 1
  %126 = load %union.tree_node*, %union.tree_node** %var, align 8
  %tobool201 = icmp ne %union.tree_node* %126, null
  br i1 %tobool201, label %if.then.202, label %if.end.204

if.then.202:                                      ; preds = %for.end
  %127 = load i32, i32* %flags, align 4
  %and203 = and i32 %127, -4097
  store i32 %and203, i32* %flags, align 4
  store i32 1, i32* %must_preallocate, align 4
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.202, %for.end
  %128 = load i32, i32* %must_preallocate, align 4
  %129 = load i32, i32* %num_actuals, align 4
  %130 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %call205 = call i32 @finalize_must_preallocate(i32 %128, i32 %129, %struct.arg_data* %130, %struct.args_size* %args_size)
  store i32 %call205, i32* %must_preallocate, align 4
  %131 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %tobool206 = icmp ne %struct.rtx_def* %131, null
  br i1 %tobool206, label %land.lhs.true.207, label %if.end.223

land.lhs.true.207:                                ; preds = %if.end.204
  %132 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call208 = call i32 @reg_mentioned_p(%struct.rtx_def* %132, %struct.rtx_def* %133)
  %tobool209 = icmp ne i32 %call208, 0
  br i1 %tobool209, label %land.lhs.true.213, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %land.lhs.true.207
  %134 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call211 = call i32 @reg_mentioned_p(%struct.rtx_def* %134, %struct.rtx_def* %135)
  %tobool212 = icmp ne i32 %call211, 0
  br i1 %tobool212, label %land.lhs.true.213, label %if.end.223

land.lhs.true.213:                                ; preds = %lor.lhs.false.210, %land.lhs.true.207
  %var214 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 1
  %136 = load %union.tree_node*, %union.tree_node** %var214, align 8
  %tobool215 = icmp ne %union.tree_node* %136, null
  br i1 %tobool215, label %if.then.221, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %land.lhs.true.213
  %137 = load i32, i32* @target_flags, align 4
  %and217 = and i32 %137, 4096
  %tobool218 = icmp ne i32 %and217, 0
  br i1 %tobool218, label %if.end.223, label %land.lhs.true.219

land.lhs.true.219:                                ; preds = %lor.lhs.false.216
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %138 = load i64, i64* %constant, align 8
  %tobool220 = icmp ne i64 %138, 0
  br i1 %tobool220, label %if.then.221, label %if.end.223

if.then.221:                                      ; preds = %land.lhs.true.219, %land.lhs.true.213
  %139 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call222 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %139)
  store %struct.rtx_def* %call222, %struct.rtx_def** %structure_value_addr, align 8
  br label %if.end.223

if.end.223:                                       ; preds = %if.then.221, %land.lhs.true.219, %lor.lhs.false.216, %lor.lhs.false.210, %if.end.204
  %140 = load i32, i32* @expand_call.currently_expanding_call, align 4
  %inc224 = add nsw i32 %140, 1
  store i32 %inc224, i32* @expand_call.currently_expanding_call, align 4
  %cmp225 = icmp ne i32 %140, 0
  br i1 %cmp225, label %if.then.237, label %lor.lhs.false.227

lor.lhs.false.227:                                ; preds = %if.end.223
  %141 = load i32, i32* @flag_optimize_sibling_calls, align 4
  %tobool228 = icmp ne i32 %141, 0
  br i1 %tobool228, label %lor.lhs.false.229, label %if.then.237

lor.lhs.false.229:                                ; preds = %lor.lhs.false.227
  %142 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %tobool230 = icmp ne i32 %142, 0
  br i1 %tobool230, label %lor.lhs.false.231, label %if.then.237

lor.lhs.false.231:                                ; preds = %lor.lhs.false.229
  %call232 = call i32 @any_pending_cleanups(i32 1)
  %tobool233 = icmp ne i32 %call232, 0
  br i1 %tobool233, label %if.then.237, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %lor.lhs.false.231
  %var235 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 1
  %143 = load %union.tree_node*, %union.tree_node** %var235, align 8
  %tobool236 = icmp ne %union.tree_node* %143, null
  br i1 %tobool236, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.234, %lor.lhs.false.231, %lor.lhs.false.229, %lor.lhs.false.227, %if.end.223
  store i32 0, i32* %try_tail_recursion, align 4
  store i32 0, i32* %try_tail_call, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.237, %lor.lhs.false.234
  %144 = load i32, i32* %try_tail_recursion, align 4
  %tobool239 = icmp ne i32 %144, 0
  br i1 %tobool239, label %lor.lhs.false.240, label %if.then.259

lor.lhs.false.240:                                ; preds = %if.end.238
  %145 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp241 = bitcast %union.tree_node* %145 to %struct.tree_exp*
  %operands242 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp241, i32 0, i32 2
  %arrayidx243 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands242, i32 0, i64 0
  %146 = load %union.tree_node*, %union.tree_node** %arrayidx243, align 8
  %common244 = bitcast %union.tree_node* %146 to %struct.tree_common*
  %code245 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common244, i32 0, i32 2
  %bf.load246 = load i32, i32* %code245, align 8
  %bf.clear247 = and i32 %bf.load246, 255
  %cmp248 = icmp ne i32 %bf.clear247, 121
  br i1 %cmp248, label %if.then.259, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %lor.lhs.false.240
  %147 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp251 = bitcast %union.tree_node* %147 to %struct.tree_exp*
  %operands252 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp251, i32 0, i32 2
  %arrayidx253 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands252, i32 0, i64 0
  %148 = load %union.tree_node*, %union.tree_node** %arrayidx253, align 8
  %exp254 = bitcast %union.tree_node* %148 to %struct.tree_exp*
  %operands255 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp254, i32 0, i32 2
  %arrayidx256 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands255, i32 0, i64 0
  %149 = load %union.tree_node*, %union.tree_node** %arrayidx256, align 8
  %150 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp257 = icmp ne %union.tree_node* %149, %150
  br i1 %cmp257, label %if.then.259, label %if.end.260

if.then.259:                                      ; preds = %lor.lhs.false.250, %lor.lhs.false.240, %if.end.238
  store i32 0, i32* %try_tail_recursion, align 4
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.259, %lor.lhs.false.250
  %151 = load i32, i32* %try_tail_call, align 4
  %tobool261 = icmp ne i32 %151, 0
  br i1 %tobool261, label %lor.lhs.false.262, label %if.then.391

lor.lhs.false.262:                                ; preds = %if.end.260
  %152 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %cmp263 = icmp ne %struct.rtx_def* %152, null
  br i1 %cmp263, label %if.then.391, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %lor.lhs.false.262
  %153 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %cmp266 = icmp eq %union.tree_node* %153, null
  br i1 %cmp266, label %if.then.391, label %lor.lhs.false.268

lor.lhs.false.268:                                ; preds = %lor.lhs.false.265
  %154 = load i32, i32* %flags, align 4
  %and269 = and i32 %154, 96
  %tobool270 = icmp ne i32 %and269, 0
  br i1 %tobool270, label %if.then.391, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %lor.lhs.false.268
  %155 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common272 = bitcast %union.tree_node* %155 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 2
  %bf.load273 = load i32, i32* %volatile_flag, align 8
  %bf.lshr274 = lshr i32 %bf.load273, 11
  %bf.clear275 = and i32 %bf.lshr274, 1
  %tobool276 = icmp ne i32 %bf.clear275, 0
  br i1 %tobool276, label %if.then.391, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %lor.lhs.false.271
  %156 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %tobool278 = icmp ne %union.tree_node* %156, null
  br i1 %tobool278, label %land.lhs.true.279, label %if.then.391

land.lhs.true.279:                                ; preds = %lor.lhs.false.277
  %157 = load i32, i32* @flag_pic, align 4
  %tobool280 = icmp ne i32 %157, 0
  br i1 %tobool280, label %lor.lhs.false.281, label %land.lhs.true.287

lor.lhs.false.281:                                ; preds = %land.lhs.true.279
  %158 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common282 = bitcast %union.tree_node* %158 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common282, i32 0, i32 2
  %bf.load283 = load i32, i32* %public_flag, align 8
  %bf.lshr284 = lshr i32 %bf.load283, 19
  %bf.clear285 = and i32 %bf.lshr284, 1
  %tobool286 = icmp ne i32 %bf.clear285, 0
  br i1 %tobool286, label %if.then.391, label %land.lhs.true.287

land.lhs.true.287:                                ; preds = %lor.lhs.false.281, %land.lhs.true.279
  %159 = load i32, i32* @target_flags, align 4
  %and288 = and i32 %159, 32
  %tobool289 = icmp ne i32 %and288, 0
  br i1 %tobool289, label %lor.lhs.false.290, label %lor.lhs.false.375

lor.lhs.false.290:                                ; preds = %land.lhs.true.287
  %160 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common291 = bitcast %union.tree_node* %160 to %struct.tree_common*
  %type292 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common291, i32 0, i32 1
  %161 = load %union.tree_node*, %union.tree_node** %type292, align 8
  %common293 = bitcast %union.tree_node* %161 to %struct.tree_common*
  %type294 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common293, i32 0, i32 1
  %162 = load %union.tree_node*, %union.tree_node** %type294, align 8
  %type295 = bitcast %union.tree_node* %162 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type295, i32 0, i32 6
  %bf.load296 = load i32, i32* %mode, align 4
  %bf.lshr297 = lshr i32 %bf.load296, 9
  %bf.clear298 = and i32 %bf.lshr297, 127
  %idxprom = sext i32 %bf.clear298 to i64
  %arrayidx299 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %163 = load i32, i32* %arrayidx299, align 4
  %cmp300 = icmp eq i32 %163, 2
  br i1 %cmp300, label %lor.lhs.false.330, label %lor.lhs.false.302

lor.lhs.false.302:                                ; preds = %lor.lhs.false.290
  %164 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common303 = bitcast %union.tree_node* %164 to %struct.tree_common*
  %type304 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common303, i32 0, i32 1
  %165 = load %union.tree_node*, %union.tree_node** %type304, align 8
  %common305 = bitcast %union.tree_node* %165 to %struct.tree_common*
  %type306 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common305, i32 0, i32 1
  %166 = load %union.tree_node*, %union.tree_node** %type306, align 8
  %type307 = bitcast %union.tree_node* %166 to %struct.tree_type*
  %mode308 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type307, i32 0, i32 6
  %bf.load309 = load i32, i32* %mode308, align 4
  %bf.lshr310 = lshr i32 %bf.load309, 9
  %bf.clear311 = and i32 %bf.lshr310, 127
  %idxprom312 = sext i32 %bf.clear311 to i64
  %arrayidx313 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom312
  %167 = load i32, i32* %arrayidx313, align 4
  %cmp314 = icmp eq i32 %167, 6
  br i1 %cmp314, label %lor.lhs.false.330, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %lor.lhs.false.302
  %168 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %common317 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %type318 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common317, i32 0, i32 1
  %169 = load %union.tree_node*, %union.tree_node** %type318, align 8
  %common319 = bitcast %union.tree_node* %169 to %struct.tree_common*
  %type320 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common319, i32 0, i32 1
  %170 = load %union.tree_node*, %union.tree_node** %type320, align 8
  %type321 = bitcast %union.tree_node* %170 to %struct.tree_type*
  %mode322 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type321, i32 0, i32 6
  %bf.load323 = load i32, i32* %mode322, align 4
  %bf.lshr324 = lshr i32 %bf.load323, 9
  %bf.clear325 = and i32 %bf.lshr324, 127
  %idxprom326 = sext i32 %bf.clear325 to i64
  %arrayidx327 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom326
  %171 = load i32, i32* %arrayidx327, align 4
  %cmp328 = icmp eq i32 %171, 8
  br i1 %cmp328, label %lor.lhs.false.330, label %lor.lhs.false.375

lor.lhs.false.330:                                ; preds = %lor.lhs.false.316, %lor.lhs.false.302, %lor.lhs.false.290
  %172 = load %struct.function*, %struct.function** @cfun, align 8
  %decl331 = getelementptr inbounds %struct.function, %struct.function* %172, i32 0, i32 6
  %173 = load %union.tree_node*, %union.tree_node** %decl331, align 8
  %common332 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %type333 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common332, i32 0, i32 1
  %174 = load %union.tree_node*, %union.tree_node** %type333, align 8
  %common334 = bitcast %union.tree_node* %174 to %struct.tree_common*
  %type335 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common334, i32 0, i32 1
  %175 = load %union.tree_node*, %union.tree_node** %type335, align 8
  %type336 = bitcast %union.tree_node* %175 to %struct.tree_type*
  %mode337 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type336, i32 0, i32 6
  %bf.load338 = load i32, i32* %mode337, align 4
  %bf.lshr339 = lshr i32 %bf.load338, 9
  %bf.clear340 = and i32 %bf.lshr339, 127
  %idxprom341 = sext i32 %bf.clear340 to i64
  %arrayidx342 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom341
  %176 = load i32, i32* %arrayidx342, align 4
  %cmp343 = icmp eq i32 %176, 2
  br i1 %cmp343, label %lor.lhs.false.375, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %lor.lhs.false.330
  %177 = load %struct.function*, %struct.function** @cfun, align 8
  %decl346 = getelementptr inbounds %struct.function, %struct.function* %177, i32 0, i32 6
  %178 = load %union.tree_node*, %union.tree_node** %decl346, align 8
  %common347 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %type348 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common347, i32 0, i32 1
  %179 = load %union.tree_node*, %union.tree_node** %type348, align 8
  %common349 = bitcast %union.tree_node* %179 to %struct.tree_common*
  %type350 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common349, i32 0, i32 1
  %180 = load %union.tree_node*, %union.tree_node** %type350, align 8
  %type351 = bitcast %union.tree_node* %180 to %struct.tree_type*
  %mode352 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type351, i32 0, i32 6
  %bf.load353 = load i32, i32* %mode352, align 4
  %bf.lshr354 = lshr i32 %bf.load353, 9
  %bf.clear355 = and i32 %bf.lshr354, 127
  %idxprom356 = sext i32 %bf.clear355 to i64
  %arrayidx357 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom356
  %181 = load i32, i32* %arrayidx357, align 4
  %cmp358 = icmp eq i32 %181, 6
  br i1 %cmp358, label %lor.lhs.false.375, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %lor.lhs.false.345
  %182 = load %struct.function*, %struct.function** @cfun, align 8
  %decl361 = getelementptr inbounds %struct.function, %struct.function* %182, i32 0, i32 6
  %183 = load %union.tree_node*, %union.tree_node** %decl361, align 8
  %common362 = bitcast %union.tree_node* %183 to %struct.tree_common*
  %type363 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common362, i32 0, i32 1
  %184 = load %union.tree_node*, %union.tree_node** %type363, align 8
  %common364 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %type365 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common364, i32 0, i32 1
  %185 = load %union.tree_node*, %union.tree_node** %type365, align 8
  %type366 = bitcast %union.tree_node* %185 to %struct.tree_type*
  %mode367 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type366, i32 0, i32 6
  %bf.load368 = load i32, i32* %mode367, align 4
  %bf.lshr369 = lshr i32 %bf.load368, 9
  %bf.clear370 = and i32 %bf.lshr369, 127
  %idxprom371 = sext i32 %bf.clear370 to i64
  %arrayidx372 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom371
  %186 = load i32, i32* %arrayidx372, align 4
  %cmp373 = icmp eq i32 %186, 8
  br i1 %cmp373, label %lor.lhs.false.375, label %if.then.391

lor.lhs.false.375:                                ; preds = %lor.lhs.false.360, %lor.lhs.false.345, %lor.lhs.false.330, %lor.lhs.false.316, %land.lhs.true.287
  %constant376 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %187 = load i64, i64* %constant376, align 8
  %188 = load %struct.function*, %struct.function** @cfun, align 8
  %args_size377 = getelementptr inbounds %struct.function, %struct.function* %188, i32 0, i32 9
  %189 = load i32, i32* %args_size377, align 4
  %conv378 = sext i32 %189 to i64
  %cmp379 = icmp sgt i64 %187, %conv378
  br i1 %cmp379, label %if.then.391, label %lor.lhs.false.381

lor.lhs.false.381:                                ; preds = %lor.lhs.false.375
  %190 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %191 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %constant382 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %192 = load i64, i64* %constant382, align 8
  %conv383 = trunc i64 %192 to i32
  %call384 = call i32 @ix86_return_pops_args(%union.tree_node* %190, %union.tree_node* %191, i32 %conv383)
  %193 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %194 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common385 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %type386 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common385, i32 0, i32 1
  %195 = load %union.tree_node*, %union.tree_node** %type386, align 8
  %196 = load %struct.function*, %struct.function** @cfun, align 8
  %args_size387 = getelementptr inbounds %struct.function, %struct.function* %196, i32 0, i32 9
  %197 = load i32, i32* %args_size387, align 4
  %call388 = call i32 @ix86_return_pops_args(%union.tree_node* %193, %union.tree_node* %195, i32 %197)
  %cmp389 = icmp ne i32 %call384, %call388
  br i1 %cmp389, label %if.then.391, label %if.end.392

if.then.391:                                      ; preds = %lor.lhs.false.381, %lor.lhs.false.375, %lor.lhs.false.360, %lor.lhs.false.281, %lor.lhs.false.277, %lor.lhs.false.271, %lor.lhs.false.268, %lor.lhs.false.265, %lor.lhs.false.262, %if.end.260
  store i32 0, i32* %try_tail_call, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.391, %lor.lhs.false.381
  %198 = load i32, i32* %try_tail_call, align 4
  %tobool393 = icmp ne i32 %198, 0
  br i1 %tobool393, label %if.then.396, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %if.end.392
  %199 = load i32, i32* %try_tail_recursion, align 4
  %tobool395 = icmp ne i32 %199, 0
  br i1 %tobool395, label %if.then.396, label %if.end.450

if.then.396:                                      ; preds = %lor.lhs.false.394, %if.end.392
  store %union.tree_node* null, %union.tree_node** %actparms, align 8
  %200 = load i32, i32* @target_flags, align 4
  %and398 = and i32 %200, 2048
  %tobool399 = icmp ne i32 %and398, 0
  br i1 %tobool399, label %if.else.404, label %land.lhs.true.400

land.lhs.true.400:                                ; preds = %if.then.396
  %201 = load i32, i32* @target_flags, align 4
  %and401 = and i32 %201, 4096
  %tobool402 = icmp ne i32 %and401, 0
  br i1 %tobool402, label %if.else.404, label %if.then.403

if.then.403:                                      ; preds = %land.lhs.true.400
  store i32 1, i32* %inc397, align 4
  store i32 0, i32* %i, align 4
  %202 = load i32, i32* %num_actuals, align 4
  store i32 %202, i32* %end, align 4
  br label %if.end.405

if.else.404:                                      ; preds = %land.lhs.true.400, %if.then.396
  store i32 -1, i32* %inc397, align 4
  %203 = load i32, i32* %num_actuals, align 4
  %sub = sub nsw i32 %203, 1
  store i32 %sub, i32* %i, align 4
  store i32 -1, i32* %end, align 4
  br label %if.end.405

if.end.405:                                       ; preds = %if.else.404, %if.then.403
  br label %for.cond.406

for.cond.406:                                     ; preds = %for.inc.444, %if.end.405
  %204 = load i32, i32* %i, align 4
  %205 = load i32, i32* %end, align 4
  %cmp407 = icmp ne i32 %204, %205
  br i1 %cmp407, label %for.body.409, label %for.end.445

for.body.409:                                     ; preds = %for.cond.406
  %206 = load i32, i32* %i, align 4
  %idxprom410 = sext i32 %206 to i64
  %207 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx411 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %207, i64 %idxprom410
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx411, i32 0, i32 0
  %208 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %call412 = call i32 @unsafe_for_reeval(%union.tree_node* %208)
  switch i32 %call412, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.413
    i32 2, label %sw.bb.421
  ]

sw.bb:                                            ; preds = %for.body.409
  br label %sw.epilog

sw.bb.413:                                        ; preds = %for.body.409
  %209 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %209 to i64
  %210 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx415 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %210, i64 %idxprom414
  %tree_value416 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx415, i32 0, i32 0
  %211 = load %union.tree_node*, %union.tree_node** %tree_value416, align 8
  %call417 = call %union.tree_node* @unsave_expr(%union.tree_node* %211)
  %212 = load i32, i32* %i, align 4
  %idxprom418 = sext i32 %212 to i64
  %213 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx419 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %213, i64 %idxprom418
  %tree_value420 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx419, i32 0, i32 0
  store %union.tree_node* %call417, %union.tree_node** %tree_value420, align 8
  br label %sw.epilog

sw.bb.421:                                        ; preds = %for.body.409
  %214 = load i32, i32* %i, align 4
  %idxprom423 = sext i32 %214 to i64
  %215 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx424 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %215, i64 %idxprom423
  %tree_value425 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx424, i32 0, i32 0
  %216 = load %union.tree_node*, %union.tree_node** %tree_value425, align 8
  %common426 = bitcast %union.tree_node* %216 to %struct.tree_common*
  %type427 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common426, i32 0, i32 1
  %217 = load %union.tree_node*, %union.tree_node** %type427, align 8
  %call428 = call %union.tree_node* @build_decl(i32 34, %union.tree_node* null, %union.tree_node* %217)
  store %union.tree_node* %call428, %union.tree_node** %var422, align 8
  %218 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %218 to i64
  %219 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx430 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %219, i64 %idxprom429
  %tree_value431 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx430, i32 0, i32 0
  %220 = load %union.tree_node*, %union.tree_node** %tree_value431, align 8
  %call432 = call %struct.rtx_def* @expand_expr(%union.tree_node* %220, %struct.rtx_def* null, i32 0, i32 0)
  %221 = load %union.tree_node*, %union.tree_node** %var422, align 8
  %decl433 = bitcast %union.tree_node* %221 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl433, i32 0, i32 17
  store %struct.rtx_def* %call432, %struct.rtx_def** %rtl, align 8
  %222 = load %union.tree_node*, %union.tree_node** %var422, align 8
  %223 = load i32, i32* %i, align 4
  %idxprom434 = sext i32 %223 to i64
  %224 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx435 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %224, i64 %idxprom434
  %tree_value436 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx435, i32 0, i32 0
  store %union.tree_node* %222, %union.tree_node** %tree_value436, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.409
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 2528, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #7
  unreachable

sw.epilog:                                        ; preds = %sw.bb.421, %sw.bb.413, %sw.bb
  %225 = load i32, i32* %try_tail_recursion, align 4
  %tobool437 = icmp ne i32 %225, 0
  br i1 %tobool437, label %if.then.438, label %if.end.443

if.then.438:                                      ; preds = %sw.epilog
  %226 = load i32, i32* %i, align 4
  %idxprom439 = sext i32 %226 to i64
  %227 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx440 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %227, i64 %idxprom439
  %tree_value441 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx440, i32 0, i32 0
  %228 = load %union.tree_node*, %union.tree_node** %tree_value441, align 8
  %229 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  %call442 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %228, %union.tree_node* %229)
  store %union.tree_node* %call442, %union.tree_node** %actparms, align 8
  br label %if.end.443

if.end.443:                                       ; preds = %if.then.438, %sw.epilog
  br label %for.inc.444

for.inc.444:                                      ; preds = %if.end.443
  %230 = load i32, i32* %inc397, align 4
  %231 = load i32, i32* %i, align 4
  %add = add nsw i32 %231, %230
  store i32 %add, i32* %i, align 4
  br label %for.cond.406

for.end.445:                                      ; preds = %for.cond.406
  %call446 = call i32 @any_pending_cleanups(i32 1)
  %tobool447 = icmp ne i32 %call446, 0
  br i1 %tobool447, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %for.end.445
  store i32 0, i32* %try_tail_recursion, align 4
  store i32 0, i32* %try_tail_call, align 4
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.448, %for.end.445
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %lor.lhs.false.394
  %232 = load i32, i32* %try_tail_recursion, align 4
  %tobool451 = icmp ne i32 %232, 0
  br i1 %tobool451, label %if.then.452, label %if.end.470

if.then.452:                                      ; preds = %if.end.450
  %233 = load %struct.function*, %struct.function** @cfun, align 8
  %expr453 = getelementptr inbounds %struct.function, %struct.function* %233, i32 0, i32 2
  %234 = load %struct.expr_status*, %struct.expr_status** %expr453, align 8
  %x_pending_stack_adjust = getelementptr inbounds %struct.expr_status, %struct.expr_status* %234, i32 0, i32 0
  %235 = load i32, i32* %x_pending_stack_adjust, align 4
  store i32 %235, i32* %save_pending_stack_adjust, align 4
  %236 = load %struct.function*, %struct.function** @cfun, align 8
  %expr454 = getelementptr inbounds %struct.function, %struct.function* %236, i32 0, i32 2
  %237 = load %struct.expr_status*, %struct.expr_status** %expr454, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %237, i32 0, i32 2
  %238 = load i32, i32* %x_stack_pointer_delta, align 4
  store i32 %238, i32* %save_stack_pointer_delta, align 4
  call void @emit_queue()
  call void @start_sequence()
  call void @expand_start_target_temps()
  %239 = load %union.tree_node*, %union.tree_node** %actparms, align 8
  %call455 = call %struct.rtx_def* @get_last_insn()
  %call456 = call i32 @optimize_tail_recursion(%union.tree_node* %239, %struct.rtx_def* %call455)
  %tobool457 = icmp ne i32 %call456, 0
  br i1 %tobool457, label %if.then.458, label %if.end.465

if.then.458:                                      ; preds = %if.then.452
  %call459 = call i32 @any_pending_cleanups(i32 1)
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.then.461, label %if.else.462

if.then.461:                                      ; preds = %if.then.458
  store i32 0, i32* %try_tail_recursion, align 4
  store i32 0, i32* %try_tail_call, align 4
  br label %if.end.464

if.else.462:                                      ; preds = %if.then.458
  %call463 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call463, %struct.rtx_def** %tail_recursion_insns, align 8
  br label %if.end.464

if.end.464:                                       ; preds = %if.else.462, %if.then.461
  br label %if.end.465

if.end.465:                                       ; preds = %if.end.464, %if.then.452
  call void @expand_end_target_temps()
  call void @end_sequence()
  %240 = load i32, i32* %save_pending_stack_adjust, align 4
  %241 = load %struct.function*, %struct.function** @cfun, align 8
  %expr466 = getelementptr inbounds %struct.function, %struct.function* %241, i32 0, i32 2
  %242 = load %struct.expr_status*, %struct.expr_status** %expr466, align 8
  %x_pending_stack_adjust467 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %242, i32 0, i32 0
  store i32 %240, i32* %x_pending_stack_adjust467, align 4
  %243 = load i32, i32* %save_stack_pointer_delta, align 4
  %244 = load %struct.function*, %struct.function** @cfun, align 8
  %expr468 = getelementptr inbounds %struct.function, %struct.function* %244, i32 0, i32 2
  %245 = load %struct.expr_status*, %struct.expr_status** %expr468, align 8
  %x_stack_pointer_delta469 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %245, i32 0, i32 2
  store i32 %243, i32* %x_stack_pointer_delta469, align 4
  br label %if.end.470

if.end.470:                                       ; preds = %if.end.465, %if.end.450
  %246 = load i32, i32* @profile_arc_flag, align 4
  %tobool471 = icmp ne i32 %246, 0
  br i1 %tobool471, label %land.lhs.true.472, label %if.end.480

land.lhs.true.472:                                ; preds = %if.end.470
  %247 = load i32, i32* %flags, align 4
  %and473 = and i32 %247, 128
  %tobool474 = icmp ne i32 %and473, 0
  br i1 %tobool474, label %if.then.475, label %if.end.480

if.then.475:                                      ; preds = %land.lhs.true.472
  %248 = load i32, i32* @target_flags, align 4
  %and476 = and i32 %248, 33554432
  %tobool477 = icmp ne i32 %and476, 0
  %cond478 = select i1 %tobool477, i32 5, i32 4
  %call479 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond478, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0))
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %call479, i32 7, i32 0, i32 0)
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.475, %land.lhs.true.472, %if.end.470
  %249 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary481 = getelementptr inbounds %struct.function, %struct.function* %249, i32 0, i32 53
  %250 = load i32, i32* %preferred_stack_boundary481, align 4
  %conv482 = sext i32 %250 to i64
  %251 = load i64, i64* %preferred_stack_boundary, align 8
  %cmp483 = icmp slt i64 %conv482, %251
  br i1 %cmp483, label %land.lhs.true.485, label %if.end.491

land.lhs.true.485:                                ; preds = %if.end.480
  %252 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %253 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp486 = icmp ne %union.tree_node* %252, %253
  br i1 %cmp486, label %if.then.488, label %if.end.491

if.then.488:                                      ; preds = %land.lhs.true.485
  %254 = load i64, i64* %preferred_stack_boundary, align 8
  %conv489 = trunc i64 %254 to i32
  %255 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary490 = getelementptr inbounds %struct.function, %struct.function* %255, i32 0, i32 53
  store i32 %conv489, i32* %preferred_stack_boundary490, align 4
  br label %if.end.491

if.end.491:                                       ; preds = %if.then.488, %land.lhs.true.485, %if.end.480
  %256 = load i64, i64* %preferred_stack_boundary, align 8
  %div = sdiv i64 %256, 8
  store i64 %div, i64* %preferred_unit_stack_boundary, align 8
  %257 = load %struct.function*, %struct.function** @cfun, align 8
  %x_function_call_count = getelementptr inbounds %struct.function, %struct.function* %257, i32 0, i32 18
  %258 = load i32, i32* %x_function_call_count, align 4
  %inc492 = add nsw i32 %258, 1
  store i32 %inc492, i32* %x_function_call_count, align 4
  store i32 0, i32* %pass, align 4
  br label %for.cond.493

for.cond.493:                                     ; preds = %for.inc.1360, %if.end.491
  %259 = load i32, i32* %pass, align 4
  %cmp494 = icmp slt i32 %259, 2
  br i1 %cmp494, label %for.body.496, label %for.end.1362

for.body.496:                                     ; preds = %for.cond.493
  store i32 0, i32* %sibcall_failure, align 4
  store i32 0, i32* %save_pending_stack_adjust497, align 4
  store i32 0, i32* %save_stack_pointer_delta498, align 4
  %260 = load i32, i32* %pass, align 4
  %cmp499 = icmp eq i32 %260, 0
  br i1 %cmp499, label %if.then.501, label %if.end.509

if.then.501:                                      ; preds = %for.body.496
  %261 = load i32, i32* %try_tail_call, align 4
  %tobool502 = icmp ne i32 %261, 0
  br i1 %tobool502, label %if.end.504, label %if.then.503

if.then.503:                                      ; preds = %if.then.501
  br label %for.inc.1360

if.end.504:                                       ; preds = %if.then.501
  call void @emit_queue()
  %262 = load %struct.function*, %struct.function** @cfun, align 8
  %expr505 = getelementptr inbounds %struct.function, %struct.function* %262, i32 0, i32 2
  %263 = load %struct.expr_status*, %struct.expr_status** %expr505, align 8
  %x_pending_stack_adjust506 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %263, i32 0, i32 0
  %264 = load i32, i32* %x_pending_stack_adjust506, align 4
  store i32 %264, i32* %save_pending_stack_adjust497, align 4
  %265 = load %struct.function*, %struct.function** @cfun, align 8
  %expr507 = getelementptr inbounds %struct.function, %struct.function* %265, i32 0, i32 2
  %266 = load %struct.expr_status*, %struct.expr_status** %expr507, align 8
  %x_stack_pointer_delta508 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %266, i32 0, i32 2
  %267 = load i32, i32* %x_stack_pointer_delta508, align 4
  store i32 %267, i32* %save_stack_pointer_delta498, align 4
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.504, %for.body.496
  %268 = load i32, i32* %pass, align 4
  %tobool510 = icmp ne i32 %268, 0
  br i1 %tobool510, label %if.then.511, label %if.else.513

if.then.511:                                      ; preds = %if.end.509
  %269 = load i32, i32* %flags, align 4
  %and512 = and i32 %269, -257
  store i32 %and512, i32* %flags, align 4
  br label %if.end.515

if.else.513:                                      ; preds = %if.end.509
  %270 = load i32, i32* %flags, align 4
  %or514 = or i32 %270, 256
  store i32 %or514, i32* %flags, align 4
  br label %if.end.515

if.end.515:                                       ; preds = %if.else.513, %if.then.511
  store %struct.rtx_def* null, %struct.rtx_def** %argblock, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %call_fusage, align 8
  call void @start_sequence()
  %271 = load i32, i32* %pass, align 4
  %cmp516 = icmp eq i32 %271, 0
  br i1 %cmp516, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.end.515
  call void @expand_start_target_temps()
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.518, %if.end.515
  %272 = load %struct.function*, %struct.function** @cfun, align 8
  %expr520 = getelementptr inbounds %struct.function, %struct.function* %272, i32 0, i32 2
  %273 = load %struct.expr_status*, %struct.expr_status** %expr520, align 8
  %x_pending_stack_adjust521 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %273, i32 0, i32 0
  %274 = load i32, i32* %x_pending_stack_adjust521, align 4
  %cmp522 = icmp sge i32 %274, 32
  br i1 %cmp522, label %if.then.535, label %lor.lhs.false.524

lor.lhs.false.524:                                ; preds = %if.end.519
  %275 = load %struct.function*, %struct.function** @cfun, align 8
  %expr525 = getelementptr inbounds %struct.function, %struct.function* %275, i32 0, i32 2
  %276 = load %struct.expr_status*, %struct.expr_status** %expr525, align 8
  %x_pending_stack_adjust526 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %276, i32 0, i32 0
  %277 = load i32, i32* %x_pending_stack_adjust526, align 4
  %cmp527 = icmp sgt i32 %277, 0
  br i1 %cmp527, label %land.lhs.true.529, label %lor.lhs.false.532

land.lhs.true.529:                                ; preds = %lor.lhs.false.524
  %278 = load i32, i32* %flags, align 4
  %and530 = and i32 %278, 1032
  %tobool531 = icmp ne i32 %and530, 0
  br i1 %tobool531, label %if.then.535, label %lor.lhs.false.532

lor.lhs.false.532:                                ; preds = %land.lhs.true.529, %lor.lhs.false.524
  %279 = load i32, i32* %pass, align 4
  %cmp533 = icmp eq i32 %279, 0
  br i1 %cmp533, label %if.then.535, label %if.end.536

if.then.535:                                      ; preds = %lor.lhs.false.532, %land.lhs.true.529, %if.end.519
  call void @do_pending_stack_adjust()
  br label %if.end.536

if.end.536:                                       ; preds = %if.then.535, %lor.lhs.false.532
  %280 = load i32, i32* %pass, align 4
  %tobool537 = icmp ne i32 %280, 0
  br i1 %tobool537, label %land.lhs.true.538, label %if.end.545

land.lhs.true.538:                                ; preds = %if.end.536
  %281 = load i32, i32* %flags, align 4
  %and539 = and i32 %281, 4096
  %tobool540 = icmp ne i32 %and539, 0
  br i1 %tobool540, label %if.then.541, label %if.end.545

if.then.541:                                      ; preds = %land.lhs.true.538
  %282 = load %struct.function*, %struct.function** @cfun, align 8
  %expr542 = getelementptr inbounds %struct.function, %struct.function* %282, i32 0, i32 2
  %283 = load %struct.expr_status*, %struct.expr_status** %expr542, align 8
  %x_inhibit_defer_pop543 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %283, i32 0, i32 1
  %284 = load i32, i32* %x_inhibit_defer_pop543, align 4
  %add544 = add nsw i32 %284, 1
  store i32 %add544, i32* %x_inhibit_defer_pop543, align 4
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.541, %land.lhs.true.538, %if.end.536
  %285 = load i32, i32* %pass, align 4
  %tobool546 = icmp ne i32 %285, 0
  br i1 %tobool546, label %if.then.547, label %if.end.548

if.then.547:                                      ; preds = %if.end.545
  %286 = load i32, i32* %flags, align 4
  %287 = load i32, i32* %num_actuals, align 4
  %288 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  call void @precompute_arguments(i32 %286, i32 %287, %struct.arg_data* %288)
  br label %if.end.548

if.end.548:                                       ; preds = %if.then.547, %if.end.545
  %289 = load i32, i32* %pass, align 4
  %tobool549 = icmp ne i32 %289, 0
  br i1 %tobool549, label %land.lhs.true.550, label %if.end.554

land.lhs.true.550:                                ; preds = %if.end.548
  %290 = load i32, i32* %flags, align 4
  %and551 = and i32 %290, 4100
  %tobool552 = icmp ne i32 %and551, 0
  br i1 %tobool552, label %if.then.553, label %if.end.554

if.then.553:                                      ; preds = %land.lhs.true.550
  call void @start_sequence()
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.553, %land.lhs.true.550, %if.end.548
  %291 = bitcast %struct.args_size* %adjusted_args_size to i8*
  %292 = bitcast %struct.args_size* %args_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %291, i8* %292, i64 16, i32 8, i1 false)
  %293 = load i32, i32* %reg_parm_stack_space, align 4
  %294 = load i32, i32* %pass, align 4
  %cmp555 = icmp eq i32 %294, 0
  br i1 %cmp555, label %cond.true.557, label %cond.false.558

cond.true.557:                                    ; preds = %if.end.554
  br label %cond.end.559

cond.false.558:                                   ; preds = %if.end.554
  %295 = load i64, i64* %preferred_stack_boundary, align 8
  br label %cond.end.559

cond.end.559:                                     ; preds = %cond.false.558, %cond.true.557
  %cond560 = phi i64 [ 0, %cond.true.557 ], [ %295, %cond.false.558 ]
  %conv561 = trunc i64 %cond560 to i32
  %call562 = call i32 @compute_argument_block_size(i32 %293, %struct.args_size* %adjusted_args_size, i32 %conv561)
  store i32 %call562, i32* %unadjusted_args_size, align 4
  %296 = load %struct.function*, %struct.function** @cfun, align 8
  %expr563 = getelementptr inbounds %struct.function, %struct.function* %296, i32 0, i32 2
  %297 = load %struct.expr_status*, %struct.expr_status** %expr563, align 8
  %x_stack_pointer_delta564 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %297, i32 0, i32 2
  %298 = load i32, i32* %x_stack_pointer_delta564, align 4
  %299 = load %struct.function*, %struct.function** @cfun, align 8
  %expr565 = getelementptr inbounds %struct.function, %struct.function* %299, i32 0, i32 2
  %300 = load %struct.expr_status*, %struct.expr_status** %expr565, align 8
  %x_pending_stack_adjust566 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %300, i32 0, i32 0
  %301 = load i32, i32* %x_pending_stack_adjust566, align 4
  %sub567 = sub nsw i32 %298, %301
  store i32 %sub567, i32* %old_stack_allocated, align 4
  %302 = load i32, i32* %pass, align 4
  %cmp568 = icmp eq i32 %302, 0
  br i1 %cmp568, label %if.then.570, label %if.else.574

if.then.570:                                      ; preds = %cond.end.559
  %303 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  store %struct.rtx_def* %303, %struct.rtx_def** %argblock, align 8
  %constant571 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %304 = load i64, i64* %constant571, align 8
  %conv572 = trunc i64 %304 to i32
  %call573 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %conv572)
  store %struct.simple_bitmap_def* %call573, %struct.simple_bitmap_def** @stored_args_map, align 8
  %305 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %305)
  br label %if.end.708

if.else.574:                                      ; preds = %cond.end.559
  %var575 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %306 = load %union.tree_node*, %union.tree_node** %var575, align 8
  %cmp576 = icmp ne %union.tree_node* %306, null
  br i1 %cmp576, label %if.then.578, label %if.else.612

if.then.578:                                      ; preds = %if.else.574
  %307 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  %cmp579 = icmp eq %struct.rtx_def* %307, null
  br i1 %cmp579, label %if.then.581, label %if.end.586

if.then.581:                                      ; preds = %if.then.578
  call void @emit_stack_save(i32 0, %struct.rtx_def** %old_stack_level, %struct.rtx_def* null)
  %308 = load %struct.function*, %struct.function** @cfun, align 8
  %expr582 = getelementptr inbounds %struct.function, %struct.function* %308, i32 0, i32 2
  %309 = load %struct.expr_status*, %struct.expr_status** %expr582, align 8
  %x_pending_stack_adjust583 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %309, i32 0, i32 0
  %310 = load i32, i32* %x_pending_stack_adjust583, align 4
  store i32 %310, i32* %old_pending_adj, align 4
  %311 = load %struct.function*, %struct.function** @cfun, align 8
  %expr584 = getelementptr inbounds %struct.function, %struct.function* %311, i32 0, i32 2
  %312 = load %struct.expr_status*, %struct.expr_status** %expr584, align 8
  %x_pending_stack_adjust585 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %312, i32 0, i32 0
  store i32 0, i32* %x_pending_stack_adjust585, align 4
  %313 = load i32, i32* @stack_arg_under_construction, align 4
  store i32 %313, i32* %old_stack_arg_under_construction, align 4
  store i32 0, i32* @stack_arg_under_construction, align 4
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.581, %if.then.578
  %var587 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %314 = load %union.tree_node*, %union.tree_node** %var587, align 8
  %cmp588 = icmp eq %union.tree_node* %314, null
  br i1 %cmp588, label %cond.true.590, label %cond.false.593

cond.true.590:                                    ; preds = %if.end.586
  %constant591 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %315 = load i64, i64* %constant591, align 8
  %call592 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %315)
  br label %cond.end.609

cond.false.593:                                   ; preds = %if.end.586
  %var594 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %316 = load %union.tree_node*, %union.tree_node** %var594, align 8
  %cmp595 = icmp eq %union.tree_node* %316, null
  br i1 %cmp595, label %cond.true.597, label %cond.false.600

cond.true.597:                                    ; preds = %cond.false.593
  %constant598 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %317 = load i64, i64* %constant598, align 8
  %call599 = call %union.tree_node* @size_int_wide(i64 %317, i32 1)
  br label %cond.end.606

cond.false.600:                                   ; preds = %cond.false.593
  %318 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %var601 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %319 = load %union.tree_node*, %union.tree_node** %var601, align 8
  %call602 = call %union.tree_node* @convert(%union.tree_node* %318, %union.tree_node* %319)
  %constant603 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %320 = load i64, i64* %constant603, align 8
  %call604 = call %union.tree_node* @size_int_wide(i64 %320, i32 1)
  %call605 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call602, %union.tree_node* %call604)
  br label %cond.end.606

cond.end.606:                                     ; preds = %cond.false.600, %cond.true.597
  %cond607 = phi %union.tree_node* [ %call599, %cond.true.597 ], [ %call605, %cond.false.600 ]
  %call608 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond607, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.609

cond.end.609:                                     ; preds = %cond.end.606, %cond.true.590
  %cond610 = phi %struct.rtx_def* [ %call592, %cond.true.590 ], [ %call608, %cond.end.606 ]
  %call611 = call %struct.rtx_def* @push_block(%struct.rtx_def* %cond610, i32 0, i32 0)
  store %struct.rtx_def* %call611, %struct.rtx_def** %argblock, align 8
  br label %if.end.707

if.else.612:                                      ; preds = %if.else.574
  %constant613 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %321 = load i64, i64* %constant613, align 8
  %conv614 = trunc i64 %321 to i32
  store i32 %conv614, i32* %needed, align 4
  %322 = load i32, i32* %needed, align 4
  %323 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size = getelementptr inbounds %struct.function, %struct.function* %323, i32 0, i32 11
  %324 = load i32, i32* %outgoing_args_size, align 4
  %cmp615 = icmp sgt i32 %322, %324
  br i1 %cmp615, label %if.then.617, label %if.end.619

if.then.617:                                      ; preds = %if.else.612
  %325 = load i32, i32* %needed, align 4
  %326 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size618 = getelementptr inbounds %struct.function, %struct.function* %326, i32 0, i32 11
  store i32 %325, i32* %outgoing_args_size618, align 4
  br label %if.end.619

if.end.619:                                       ; preds = %if.then.617, %if.else.612
  %327 = load i32, i32* %must_preallocate, align 4
  %tobool620 = icmp ne i32 %327, 0
  br i1 %tobool620, label %if.then.621, label %if.end.706

if.then.621:                                      ; preds = %if.end.619
  %328 = load i32, i32* @target_flags, align 4
  %and622 = and i32 %328, 4096
  %tobool623 = icmp ne i32 %and622, 0
  br i1 %tobool623, label %if.then.624, label %if.else.645

if.then.624:                                      ; preds = %if.then.621
  %329 = load i32, i32* %reg_parm_stack_space, align 4
  %330 = load i32, i32* %needed, align 4
  %add625 = add nsw i32 %330, %329
  store i32 %add625, i32* %needed, align 4
  %331 = load i32, i32* %initial_highest_arg_in_use, align 4
  %332 = load i32, i32* %needed, align 4
  %cmp626 = icmp sgt i32 %331, %332
  br i1 %cmp626, label %cond.true.628, label %cond.false.629

cond.true.628:                                    ; preds = %if.then.624
  %333 = load i32, i32* %initial_highest_arg_in_use, align 4
  br label %cond.end.630

cond.false.629:                                   ; preds = %if.then.624
  %334 = load i32, i32* %needed, align 4
  br label %cond.end.630

cond.end.630:                                     ; preds = %cond.false.629, %cond.true.628
  %cond631 = phi i32 [ %333, %cond.true.628 ], [ %334, %cond.false.629 ]
  store i32 %cond631, i32* @highest_outgoing_arg_in_use, align 4
  %335 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %conv632 = sext i32 %335 to i64
  %336 = alloca i8, i64 %conv632
  store i8* %336, i8** @stack_usage_map, align 8
  %337 = load i32, i32* %initial_highest_arg_in_use, align 4
  %tobool633 = icmp ne i32 %337, 0
  br i1 %tobool633, label %if.then.634, label %if.end.636

if.then.634:                                      ; preds = %cond.end.630
  %338 = load i8*, i8** @stack_usage_map, align 8
  %339 = load i8*, i8** %initial_stack_usage_map, align 8
  %340 = load i32, i32* %initial_highest_arg_in_use, align 4
  %conv635 = sext i32 %340 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %338, i8* %339, i64 %conv635, i32 1, i1 false)
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.634, %cond.end.630
  %341 = load i32, i32* %initial_highest_arg_in_use, align 4
  %342 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %cmp637 = icmp ne i32 %341, %342
  br i1 %cmp637, label %if.then.639, label %if.end.644

if.then.639:                                      ; preds = %if.end.636
  %343 = load i32, i32* %initial_highest_arg_in_use, align 4
  %idxprom640 = sext i32 %343 to i64
  %344 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx641 = getelementptr inbounds i8, i8* %344, i64 %idxprom640
  %345 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %346 = load i32, i32* %initial_highest_arg_in_use, align 4
  %sub642 = sub nsw i32 %345, %346
  %conv643 = sext i32 %sub642 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx641, i8 0, i64 %conv643, i32 1, i1 false)
  br label %if.end.644

if.end.644:                                       ; preds = %if.then.639, %if.end.636
  store i32 0, i32* %needed, align 4
  %347 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  store %struct.rtx_def* %347, %struct.rtx_def** %argblock, align 8
  br label %if.end.705

if.else.645:                                      ; preds = %if.then.621
  %348 = load %struct.function*, %struct.function** @cfun, align 8
  %expr646 = getelementptr inbounds %struct.function, %struct.function* %348, i32 0, i32 2
  %349 = load %struct.expr_status*, %struct.expr_status** %expr646, align 8
  %x_inhibit_defer_pop647 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %349, i32 0, i32 1
  %350 = load i32, i32* %x_inhibit_defer_pop647, align 4
  %cmp648 = icmp eq i32 %350, 0
  br i1 %cmp648, label %if.then.650, label %if.end.664

if.then.650:                                      ; preds = %if.else.645
  %351 = load i32, i32* %unadjusted_args_size, align 4
  %352 = load i64, i64* %preferred_unit_stack_boundary, align 8
  %conv651 = trunc i64 %352 to i32
  %call652 = call i32 @combine_pending_stack_adjustment_and_call(i32 %351, %struct.args_size* %adjusted_args_size, i32 %conv651)
  store i32 %call652, i32* %needed, align 4
  %353 = load i32, i32* %unadjusted_args_size, align 4
  %354 = load i32, i32* %needed, align 4
  %sub653 = sub nsw i32 %353, %354
  store i32 %sub653, i32* %needed, align 4
  %355 = load i32, i32* %needed, align 4
  %cmp654 = icmp slt i32 %355, 0
  br i1 %cmp654, label %if.then.656, label %if.else.660

if.then.656:                                      ; preds = %if.then.650
  %356 = load i32, i32* %needed, align 4
  %sub657 = sub nsw i32 0, %356
  %357 = load %struct.function*, %struct.function** @cfun, align 8
  %expr658 = getelementptr inbounds %struct.function, %struct.function* %357, i32 0, i32 2
  %358 = load %struct.expr_status*, %struct.expr_status** %expr658, align 8
  %x_pending_stack_adjust659 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %358, i32 0, i32 0
  store i32 %sub657, i32* %x_pending_stack_adjust659, align 4
  call void @do_pending_stack_adjust()
  store i32 0, i32* %needed, align 4
  br label %if.end.663

if.else.660:                                      ; preds = %if.then.650
  %359 = load %struct.function*, %struct.function** @cfun, align 8
  %expr661 = getelementptr inbounds %struct.function, %struct.function* %359, i32 0, i32 2
  %360 = load %struct.expr_status*, %struct.expr_status** %expr661, align 8
  %x_pending_stack_adjust662 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %360, i32 0, i32 0
  store i32 0, i32* %x_pending_stack_adjust662, align 4
  br label %if.end.663

if.end.663:                                       ; preds = %if.else.660, %if.then.656
  br label %if.end.664

if.end.664:                                       ; preds = %if.end.663, %if.else.645
  %361 = load i32, i32* %needed, align 4
  %cmp665 = icmp eq i32 %361, 0
  br i1 %cmp665, label %if.then.667, label %if.else.668

if.then.667:                                      ; preds = %if.end.664
  %362 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  store %struct.rtx_def* %362, %struct.rtx_def** %argblock, align 8
  br label %if.end.672

if.else.668:                                      ; preds = %if.end.664
  %363 = load i32, i32* %needed, align 4
  %conv669 = sext i32 %363 to i64
  %call670 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv669)
  %call671 = call %struct.rtx_def* @push_block(%struct.rtx_def* %call670, i32 0, i32 0)
  store %struct.rtx_def* %call671, %struct.rtx_def** %argblock, align 8
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.668, %if.then.667
  %364 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %call673 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %364)
  store %struct.rtx_def* %call673, %struct.rtx_def** %argblock, align 8
  %365 = load i32, i32* @stack_arg_under_construction, align 4
  %tobool674 = icmp ne i32 %365, 0
  br i1 %tobool674, label %if.then.675, label %if.end.691

if.then.675:                                      ; preds = %if.end.672
  %366 = load i32, i32* %reg_parm_stack_space, align 4
  %conv676 = sext i32 %366 to i64
  %constant677 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %367 = load i64, i64* %constant677, align 8
  %add678 = add nsw i64 %conv676, %367
  %call679 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add678)
  store %struct.rtx_def* %call679, %struct.rtx_def** %push_size, align 8
  %368 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  %cmp680 = icmp eq %struct.rtx_def* %368, null
  br i1 %cmp680, label %if.then.682, label %if.end.689

if.then.682:                                      ; preds = %if.then.675
  call void @emit_stack_save(i32 0, %struct.rtx_def** %old_stack_level, %struct.rtx_def* null)
  %369 = load %struct.function*, %struct.function** @cfun, align 8
  %expr683 = getelementptr inbounds %struct.function, %struct.function* %369, i32 0, i32 2
  %370 = load %struct.expr_status*, %struct.expr_status** %expr683, align 8
  %x_pending_stack_adjust684 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %370, i32 0, i32 0
  %371 = load i32, i32* %x_pending_stack_adjust684, align 4
  store i32 %371, i32* %old_pending_adj, align 4
  %372 = load %struct.function*, %struct.function** @cfun, align 8
  %expr685 = getelementptr inbounds %struct.function, %struct.function* %372, i32 0, i32 2
  %373 = load %struct.expr_status*, %struct.expr_status** %expr685, align 8
  %x_pending_stack_adjust686 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %373, i32 0, i32 0
  store i32 0, i32* %x_pending_stack_adjust686, align 4
  %374 = load i32, i32* @stack_arg_under_construction, align 4
  store i32 %374, i32* %old_stack_arg_under_construction, align 4
  store i32 0, i32* @stack_arg_under_construction, align 4
  %375 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %conv687 = sext i32 %375 to i64
  %376 = alloca i8, i64 %conv687
  store i8* %376, i8** @stack_usage_map, align 8
  %377 = load i8*, i8** @stack_usage_map, align 8
  %378 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %conv688 = sext i32 %378 to i64
  call void @llvm.memset.p0i8.i64(i8* %377, i8 0, i64 %conv688, i32 1, i1 false)
  store i32 0, i32* @highest_outgoing_arg_in_use, align 4
  br label %if.end.689

if.end.689:                                       ; preds = %if.then.682, %if.then.675
  %379 = load %struct.rtx_def*, %struct.rtx_def** %push_size, align 8
  %call690 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %379, %struct.rtx_def* null, i32 8)
  br label %if.end.691

if.end.691:                                       ; preds = %if.end.689, %if.end.672
  store i32 0, i32* %i, align 4
  br label %for.cond.692

for.cond.692:                                     ; preds = %for.inc.702, %if.end.691
  %380 = load i32, i32* %i, align 4
  %381 = load i32, i32* %num_actuals, align 4
  %cmp693 = icmp slt i32 %380, %381
  br i1 %cmp693, label %for.body.695, label %for.end.704

for.body.695:                                     ; preds = %for.cond.692
  %382 = load i32, i32* %i, align 4
  %idxprom696 = sext i32 %382 to i64
  %383 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx697 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %383, i64 %idxprom696
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx697, i32 0, i32 8
  %384 = load i32, i32* %pass_on_stack, align 4
  %tobool698 = icmp ne i32 %384, 0
  br i1 %tobool698, label %if.then.699, label %if.end.701

if.then.699:                                      ; preds = %for.body.695
  %385 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %call700 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %385)
  store %struct.rtx_def* %call700, %struct.rtx_def** %argblock, align 8
  br label %for.end.704

if.end.701:                                       ; preds = %for.body.695
  br label %for.inc.702

for.inc.702:                                      ; preds = %if.end.701
  %386 = load i32, i32* %i, align 4
  %inc703 = add nsw i32 %386, 1
  store i32 %inc703, i32* %i, align 4
  br label %for.cond.692

for.end.704:                                      ; preds = %if.then.699, %for.cond.692
  br label %if.end.705

if.end.705:                                       ; preds = %for.end.704, %if.end.644
  br label %if.end.706

if.end.706:                                       ; preds = %if.end.705, %if.end.619
  br label %if.end.707

if.end.707:                                       ; preds = %if.end.706, %cond.end.609
  br label %if.end.708

if.end.708:                                       ; preds = %if.end.707, %if.then.570
  %387 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %388 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %389 = load i32, i32* %num_actuals, align 4
  call void @compute_argument_addresses(%struct.arg_data* %387, %struct.rtx_def* %388, i32 %389)
  %390 = load i32, i32* @target_flags, align 4
  %and709 = and i32 %390, 2048
  %tobool710 = icmp ne i32 %and709, 0
  br i1 %tobool710, label %if.end.748, label %land.lhs.true.711

land.lhs.true.711:                                ; preds = %if.end.708
  %391 = load i32, i32* @target_flags, align 4
  %and712 = and i32 %391, 4096
  %tobool713 = icmp ne i32 %and712, 0
  br i1 %tobool713, label %if.end.748, label %land.lhs.true.714

land.lhs.true.714:                                ; preds = %land.lhs.true.711
  %392 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %cmp715 = icmp eq %struct.rtx_def* %392, null
  br i1 %cmp715, label %land.lhs.true.717, label %if.end.748

land.lhs.true.717:                                ; preds = %land.lhs.true.714
  %constant718 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %393 = load i64, i64* %constant718, align 8
  %394 = load i32, i32* %unadjusted_args_size, align 4
  %conv719 = sext i32 %394 to i64
  %cmp720 = icmp ne i64 %393, %conv719
  br i1 %cmp720, label %if.then.722, label %if.end.748

if.then.722:                                      ; preds = %land.lhs.true.717
  %395 = load %struct.function*, %struct.function** @cfun, align 8
  %expr723 = getelementptr inbounds %struct.function, %struct.function* %395, i32 0, i32 2
  %396 = load %struct.expr_status*, %struct.expr_status** %expr723, align 8
  %x_pending_stack_adjust724 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %396, i32 0, i32 0
  %397 = load i32, i32* %x_pending_stack_adjust724, align 4
  %tobool725 = icmp ne i32 %397, 0
  br i1 %tobool725, label %land.lhs.true.726, label %if.else.738

land.lhs.true.726:                                ; preds = %if.then.722
  %398 = load i32, i32* %flags, align 4
  %and727 = and i32 %398, 4096
  %tobool728 = icmp ne i32 %and727, 0
  br i1 %tobool728, label %if.else.738, label %land.lhs.true.729

land.lhs.true.729:                                ; preds = %land.lhs.true.726
  %399 = load %struct.function*, %struct.function** @cfun, align 8
  %expr730 = getelementptr inbounds %struct.function, %struct.function* %399, i32 0, i32 2
  %400 = load %struct.expr_status*, %struct.expr_status** %expr730, align 8
  %x_inhibit_defer_pop731 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %400, i32 0, i32 1
  %401 = load i32, i32* %x_inhibit_defer_pop731, align 4
  %tobool732 = icmp ne i32 %401, 0
  br i1 %tobool732, label %if.else.738, label %if.then.733

if.then.733:                                      ; preds = %land.lhs.true.729
  %402 = load i32, i32* %unadjusted_args_size, align 4
  %403 = load i64, i64* %preferred_unit_stack_boundary, align 8
  %conv734 = trunc i64 %403 to i32
  %call735 = call i32 @combine_pending_stack_adjustment_and_call(i32 %402, %struct.args_size* %adjusted_args_size, i32 %conv734)
  %404 = load %struct.function*, %struct.function** @cfun, align 8
  %expr736 = getelementptr inbounds %struct.function, %struct.function* %404, i32 0, i32 2
  %405 = load %struct.expr_status*, %struct.expr_status** %expr736, align 8
  %x_pending_stack_adjust737 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %405, i32 0, i32 0
  store i32 %call735, i32* %x_pending_stack_adjust737, align 4
  call void @do_pending_stack_adjust()
  br label %if.end.747

if.else.738:                                      ; preds = %land.lhs.true.729, %land.lhs.true.726, %if.then.722
  %406 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %cmp739 = icmp eq %struct.rtx_def* %406, null
  br i1 %cmp739, label %if.then.741, label %if.end.746

if.then.741:                                      ; preds = %if.else.738
  %constant742 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %407 = load i64, i64* %constant742, align 8
  %408 = load i32, i32* %unadjusted_args_size, align 4
  %conv743 = sext i32 %408 to i64
  %sub744 = sub nsw i64 %407, %conv743
  %call745 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub744)
  call void @anti_adjust_stack(%struct.rtx_def* %call745)
  br label %if.end.746

if.end.746:                                       ; preds = %if.then.741, %if.else.738
  br label %if.end.747

if.end.747:                                       ; preds = %if.end.746, %if.then.733
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %land.lhs.true.717, %land.lhs.true.714, %land.lhs.true.711, %if.end.708
  %409 = load %struct.function*, %struct.function** @cfun, align 8
  %expr749 = getelementptr inbounds %struct.function, %struct.function* %409, i32 0, i32 2
  %410 = load %struct.expr_status*, %struct.expr_status** %expr749, align 8
  %x_inhibit_defer_pop750 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %410, i32 0, i32 1
  %411 = load i32, i32* %x_inhibit_defer_pop750, align 4
  %add751 = add nsw i32 %411, 1
  store i32 %add751, i32* %x_inhibit_defer_pop750, align 4
  %412 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %413 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call752 = call %struct.rtx_def* @rtx_for_function_call(%union.tree_node* %412, %union.tree_node* %413)
  store %struct.rtx_def* %call752, %struct.rtx_def** %funexp, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %valreg, align 8
  %414 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common753 = bitcast %union.tree_node* %414 to %struct.tree_common*
  %type754 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common753, i32 0, i32 1
  %415 = load %union.tree_node*, %union.tree_node** %type754, align 8
  %type755 = bitcast %union.tree_node* %415 to %struct.tree_type*
  %mode756 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type755, i32 0, i32 6
  %bf.load757 = load i32, i32* %mode756, align 4
  %bf.lshr758 = lshr i32 %bf.load757, 9
  %bf.clear759 = and i32 %bf.lshr758, 127
  %cmp760 = icmp ne i32 %bf.clear759, 0
  br i1 %cmp760, label %land.lhs.true.762, label %if.end.780

land.lhs.true.762:                                ; preds = %if.end.748
  %416 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %tobool763 = icmp ne %struct.rtx_def* %416, null
  br i1 %tobool763, label %if.end.780, label %if.then.764

if.then.764:                                      ; preds = %land.lhs.true.762
  %417 = load i32, i32* %pcc_struct_value, align 4
  %tobool765 = icmp ne i32 %417, 0
  br i1 %tobool765, label %if.then.766, label %if.else.773

if.then.766:                                      ; preds = %if.then.764
  %418 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common767 = bitcast %union.tree_node* %418 to %struct.tree_common*
  %type768 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common767, i32 0, i32 1
  %419 = load %union.tree_node*, %union.tree_node** %type768, align 8
  %call769 = call %union.tree_node* @build_pointer_type(%union.tree_node* %419)
  %420 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %421 = load i32, i32* %pass, align 4
  %cmp770 = icmp eq i32 %421, 0
  %conv771 = zext i1 %cmp770 to i32
  %call772 = call %struct.rtx_def* @hard_function_value(%union.tree_node* %call769, %union.tree_node* %420, i32 %conv771)
  store %struct.rtx_def* %call772, %struct.rtx_def** %valreg, align 8
  br label %if.end.779

if.else.773:                                      ; preds = %if.then.764
  %422 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common774 = bitcast %union.tree_node* %422 to %struct.tree_common*
  %type775 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common774, i32 0, i32 1
  %423 = load %union.tree_node*, %union.tree_node** %type775, align 8
  %424 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %425 = load i32, i32* %pass, align 4
  %cmp776 = icmp eq i32 %425, 0
  %conv777 = zext i1 %cmp776 to i32
  %call778 = call %struct.rtx_def* @hard_function_value(%union.tree_node* %423, %union.tree_node* %424, i32 %conv777)
  store %struct.rtx_def* %call778, %struct.rtx_def** %valreg, align 8
  br label %if.end.779

if.end.779:                                       ; preds = %if.else.773, %if.then.766
  br label %if.end.780

if.end.780:                                       ; preds = %if.end.779, %land.lhs.true.762, %if.end.748
  %426 = load i32, i32* %num_actuals, align 4
  %427 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  call void @precompute_register_parameters(i32 %426, %struct.arg_data* %427, i32* %reg_parm_seen)
  %428 = load i32, i32* @target_flags, align 4
  %and781 = and i32 %428, 4096
  %tobool782 = icmp ne i32 %and781, 0
  br i1 %tobool782, label %land.lhs.true.783, label %if.end.787

land.lhs.true.783:                                ; preds = %if.end.780
  %429 = load i32, i32* %pass, align 4
  %tobool784 = icmp ne i32 %429, 0
  br i1 %tobool784, label %if.then.785, label %if.end.787

if.then.785:                                      ; preds = %land.lhs.true.783
  %430 = load i32, i32* %reg_parm_stack_space, align 4
  %431 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %call786 = call %struct.rtx_def* @save_fixed_argument_area(i32 %430, %struct.rtx_def* %431, i32* %low_to_save, i32* %high_to_save)
  store %struct.rtx_def* %call786, %struct.rtx_def** %save_area, align 8
  br label %if.end.787

if.end.787:                                       ; preds = %if.then.785, %land.lhs.true.783, %if.end.780
  store i32 0, i32* %i, align 4
  br label %for.cond.788

for.cond.788:                                     ; preds = %for.inc.821, %if.end.787
  %432 = load i32, i32* %i, align 4
  %433 = load i32, i32* %num_actuals, align 4
  %cmp789 = icmp slt i32 %432, %433
  br i1 %cmp789, label %for.body.791, label %for.end.823

for.body.791:                                     ; preds = %for.cond.788
  %434 = load i32, i32* %i, align 4
  %idxprom792 = sext i32 %434 to i64
  %435 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx793 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %435, i64 %idxprom792
  %reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx793, i32 0, i32 4
  %436 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp794 = icmp eq %struct.rtx_def* %436, null
  br i1 %cmp794, label %if.then.801, label %lor.lhs.false.796

lor.lhs.false.796:                                ; preds = %for.body.791
  %437 = load i32, i32* %i, align 4
  %idxprom797 = sext i32 %437 to i64
  %438 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx798 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %438, i64 %idxprom797
  %pass_on_stack799 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx798, i32 0, i32 8
  %439 = load i32, i32* %pass_on_stack799, align 4
  %tobool800 = icmp ne i32 %439, 0
  br i1 %tobool800, label %if.then.801, label %if.end.820

if.then.801:                                      ; preds = %lor.lhs.false.796, %for.body.791
  %call802 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call802, %struct.rtx_def** %before_arg, align 8
  %440 = load i32, i32* %i, align 4
  %idxprom803 = sext i32 %440 to i64
  %441 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx804 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %441, i64 %idxprom803
  %442 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %443 = load i32, i32* %flags, align 4
  %var805 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %444 = load %union.tree_node*, %union.tree_node** %var805, align 8
  %cmp806 = icmp ne %union.tree_node* %444, null
  %conv807 = zext i1 %cmp806 to i32
  %445 = load i32, i32* %reg_parm_stack_space, align 4
  %call808 = call i32 @store_one_arg(%struct.arg_data* %arrayidx804, %struct.rtx_def* %442, i32 %443, i32 %conv807, i32 %445)
  %tobool809 = icmp ne i32 %call808, 0
  br i1 %tobool809, label %if.then.818, label %lor.lhs.false.810

lor.lhs.false.810:                                ; preds = %if.then.801
  %446 = load i32, i32* %pass, align 4
  %cmp811 = icmp eq i32 %446, 0
  br i1 %cmp811, label %land.lhs.true.813, label %if.end.819

land.lhs.true.813:                                ; preds = %lor.lhs.false.810
  %447 = load %struct.rtx_def*, %struct.rtx_def** %before_arg, align 8
  %448 = load i32, i32* %i, align 4
  %idxprom814 = sext i32 %448 to i64
  %449 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx815 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %449, i64 %idxprom814
  %call816 = call i32 @check_sibcall_argument_overlap(%struct.rtx_def* %447, %struct.arg_data* %arrayidx815)
  %tobool817 = icmp ne i32 %call816, 0
  br i1 %tobool817, label %if.then.818, label %if.end.819

if.then.818:                                      ; preds = %land.lhs.true.813, %if.then.801
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.818, %land.lhs.true.813, %lor.lhs.false.810
  br label %if.end.820

if.end.820:                                       ; preds = %if.end.819, %lor.lhs.false.796
  br label %for.inc.821

for.inc.821:                                      ; preds = %if.end.820
  %450 = load i32, i32* %i, align 4
  %inc822 = add nsw i32 %450, 1
  store i32 %inc822, i32* %i, align 4
  br label %for.cond.788

for.end.823:                                      ; preds = %for.cond.788
  %451 = load i32, i32* %reg_parm_seen, align 4
  %tobool824 = icmp ne i32 %451, 0
  br i1 %tobool824, label %if.then.825, label %if.end.863

if.then.825:                                      ; preds = %for.end.823
  store i32 0, i32* %i, align 4
  br label %for.cond.826

for.cond.826:                                     ; preds = %for.inc.860, %if.then.825
  %452 = load i32, i32* %i, align 4
  %453 = load i32, i32* %num_actuals, align 4
  %cmp827 = icmp slt i32 %452, %453
  br i1 %cmp827, label %for.body.829, label %for.end.862

for.body.829:                                     ; preds = %for.cond.826
  %454 = load i32, i32* %i, align 4
  %idxprom830 = sext i32 %454 to i64
  %455 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx831 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %455, i64 %idxprom830
  %partial = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx831, i32 0, i32 7
  %456 = load i32, i32* %partial, align 4
  %cmp832 = icmp ne i32 %456, 0
  br i1 %cmp832, label %land.lhs.true.834, label %if.end.859

land.lhs.true.834:                                ; preds = %for.body.829
  %457 = load i32, i32* %i, align 4
  %idxprom835 = sext i32 %457 to i64
  %458 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx836 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %458, i64 %idxprom835
  %pass_on_stack837 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx836, i32 0, i32 8
  %459 = load i32, i32* %pass_on_stack837, align 4
  %tobool838 = icmp ne i32 %459, 0
  br i1 %tobool838, label %if.end.859, label %if.then.839

if.then.839:                                      ; preds = %land.lhs.true.834
  %call841 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call841, %struct.rtx_def** %before_arg840, align 8
  %460 = load i32, i32* %i, align 4
  %idxprom842 = sext i32 %460 to i64
  %461 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx843 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %461, i64 %idxprom842
  %462 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %463 = load i32, i32* %flags, align 4
  %var844 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 1
  %464 = load %union.tree_node*, %union.tree_node** %var844, align 8
  %cmp845 = icmp ne %union.tree_node* %464, null
  %conv846 = zext i1 %cmp845 to i32
  %465 = load i32, i32* %reg_parm_stack_space, align 4
  %call847 = call i32 @store_one_arg(%struct.arg_data* %arrayidx843, %struct.rtx_def* %462, i32 %463, i32 %conv846, i32 %465)
  %tobool848 = icmp ne i32 %call847, 0
  br i1 %tobool848, label %if.then.857, label %lor.lhs.false.849

lor.lhs.false.849:                                ; preds = %if.then.839
  %466 = load i32, i32* %pass, align 4
  %cmp850 = icmp eq i32 %466, 0
  br i1 %cmp850, label %land.lhs.true.852, label %if.end.858

land.lhs.true.852:                                ; preds = %lor.lhs.false.849
  %467 = load %struct.rtx_def*, %struct.rtx_def** %before_arg840, align 8
  %468 = load i32, i32* %i, align 4
  %idxprom853 = sext i32 %468 to i64
  %469 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx854 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %469, i64 %idxprom853
  %call855 = call i32 @check_sibcall_argument_overlap(%struct.rtx_def* %467, %struct.arg_data* %arrayidx854)
  %tobool856 = icmp ne i32 %call855, 0
  br i1 %tobool856, label %if.then.857, label %if.end.858

if.then.857:                                      ; preds = %land.lhs.true.852, %if.then.839
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.857, %land.lhs.true.852, %lor.lhs.false.849
  br label %if.end.859

if.end.859:                                       ; preds = %if.end.858, %land.lhs.true.834, %for.body.829
  br label %for.inc.860

for.inc.860:                                      ; preds = %if.end.859
  %470 = load i32, i32* %i, align 4
  %inc861 = add nsw i32 %470, 1
  store i32 %inc861, i32* %i, align 4
  br label %for.cond.826

for.end.862:                                      ; preds = %for.cond.826
  br label %if.end.863

if.end.863:                                       ; preds = %for.end.862, %for.end.823
  %471 = load i32, i32* @target_flags, align 4
  %and864 = and i32 %471, 2048
  %tobool865 = icmp ne i32 %and864, 0
  br i1 %tobool865, label %land.lhs.true.869, label %land.lhs.true.866

land.lhs.true.866:                                ; preds = %if.end.863
  %472 = load i32, i32* @target_flags, align 4
  %and867 = and i32 %472, 4096
  %tobool868 = icmp ne i32 %and867, 0
  br i1 %tobool868, label %land.lhs.true.869, label %if.end.877

land.lhs.true.869:                                ; preds = %land.lhs.true.866, %if.end.863
  %473 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %cmp870 = icmp eq %struct.rtx_def* %473, null
  br i1 %cmp870, label %if.then.872, label %if.end.877

if.then.872:                                      ; preds = %land.lhs.true.869
  %constant873 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %474 = load i64, i64* %constant873, align 8
  %475 = load i32, i32* %unadjusted_args_size, align 4
  %conv874 = sext i32 %475 to i64
  %sub875 = sub nsw i64 %474, %conv874
  %call876 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub875)
  call void @anti_adjust_stack(%struct.rtx_def* %call876)
  br label %if.end.877

if.end.877:                                       ; preds = %if.then.872, %land.lhs.true.869, %land.lhs.true.866
  %476 = load i32, i32* %pass, align 4
  %cmp878 = icmp ne i32 %476, 0
  br i1 %cmp878, label %land.lhs.true.880, label %if.end.897

land.lhs.true.880:                                ; preds = %if.end.877
  %477 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %tobool881 = icmp ne %struct.rtx_def* %477, null
  br i1 %tobool881, label %land.lhs.true.882, label %if.end.897

land.lhs.true.882:                                ; preds = %land.lhs.true.880
  %478 = load i32, i32* %structure_value_addr_parm, align 4
  %tobool883 = icmp ne i32 %478, 0
  br i1 %tobool883, label %if.end.897, label %if.then.884

if.then.884:                                      ; preds = %land.lhs.true.882
  %479 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %480 = load i32, i32* @target_flags, align 4
  %and885 = and i32 %480, 33554432
  %tobool886 = icmp ne i32 %and885, 0
  %cond887 = select i1 %tobool886, i32 5, i32 4
  %481 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call888 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %481, %struct.rtx_def* null)
  %call889 = call %struct.rtx_def* @force_reg(i32 %cond887, %struct.rtx_def* %call888)
  %call890 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %479, %struct.rtx_def* %call889)
  %482 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %483 = bitcast %struct.rtx_def* %482 to i32*
  %bf.load891 = load i32, i32* %483, align 8
  %bf.clear892 = and i32 %bf.load891, 65535
  %cmp893 = icmp eq i32 %bf.clear892, 61
  br i1 %cmp893, label %if.then.895, label %if.end.896

if.then.895:                                      ; preds = %if.then.884
  %484 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  call void @use_reg(%struct.rtx_def** %call_fusage, %struct.rtx_def* %484)
  br label %if.end.896

if.end.896:                                       ; preds = %if.then.895, %if.then.884
  br label %if.end.897

if.end.897:                                       ; preds = %if.end.896, %land.lhs.true.882, %land.lhs.true.880, %if.end.877
  %485 = load %struct.rtx_def*, %struct.rtx_def** %funexp, align 8
  %486 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %487 = load i32, i32* %reg_parm_seen, align 4
  %488 = load i32, i32* %pass, align 4
  %cmp898 = icmp eq i32 %488, 0
  %conv899 = zext i1 %cmp898 to i32
  %call900 = call %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %485, %union.tree_node* %486, %struct.rtx_def** %call_fusage, i32 %487, i32 %conv899)
  store %struct.rtx_def* %call900, %struct.rtx_def** %funexp, align 8
  %489 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %490 = load i32, i32* %num_actuals, align 4
  %491 = load i32, i32* %flags, align 4
  call void @load_register_parameters(%struct.arg_data* %489, i32 %490, %struct.rtx_def** %call_fusage, i32 %491)
  call void @emit_queue()
  %call901 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call901, %struct.rtx_def** %before_call, align 8
  %492 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call902 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %args_so_far, i32 0, %union.tree_node* %492, i32 1)
  store %struct.rtx_def* %call902, %struct.rtx_def** %next_arg_reg, align 8
  %493 = load i32, i32* %pass, align 4
  %tobool903 = icmp ne i32 %493, 0
  br i1 %tobool903, label %land.lhs.true.904, label %if.end.910

land.lhs.true.904:                                ; preds = %if.end.897
  %494 = load %struct.function*, %struct.function** @cfun, align 8
  %expr905 = getelementptr inbounds %struct.function, %struct.function* %494, i32 0, i32 2
  %495 = load %struct.expr_status*, %struct.expr_status** %expr905, align 8
  %x_stack_pointer_delta906 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %495, i32 0, i32 2
  %496 = load i32, i32* %x_stack_pointer_delta906, align 4
  %conv907 = sext i32 %496 to i64
  %497 = load i64, i64* %preferred_unit_stack_boundary, align 8
  %rem = srem i64 %conv907, %497
  %tobool908 = icmp ne i64 %rem, 0
  br i1 %tobool908, label %if.then.909, label %if.end.910

if.then.909:                                      ; preds = %land.lhs.true.904
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3049, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #7
  unreachable

if.end.910:                                       ; preds = %land.lhs.true.904, %if.end.897
  %498 = load %struct.rtx_def*, %struct.rtx_def** %funexp, align 8
  %499 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %500 = load %union.tree_node*, %union.tree_node** %funtype, align 8
  %501 = load i32, i32* %unadjusted_args_size, align 4
  %conv911 = sext i32 %501 to i64
  %constant912 = getelementptr inbounds %struct.args_size, %struct.args_size* %adjusted_args_size, i32 0, i32 0
  %502 = load i64, i64* %constant912, align 8
  %503 = load i64, i64* %struct_value_size, align 8
  %504 = load %struct.rtx_def*, %struct.rtx_def** %next_arg_reg, align 8
  %505 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %506 = load i32, i32* %old_inhibit_defer_pop, align 4
  %507 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  %508 = load i32, i32* %flags, align 4
  call void @emit_call_1(%struct.rtx_def* %498, %union.tree_node* %499, %union.tree_node* %500, i64 %conv911, i64 %502, i64 %503, %struct.rtx_def* %504, %struct.rtx_def* %505, i32 %506, %struct.rtx_def* %507, i32 %508, %struct.ix86_args* %args_so_far)
  %509 = load i32, i32* %pass, align 4
  %tobool913 = icmp ne i32 %509, 0
  br i1 %tobool913, label %land.lhs.true.914, label %if.end.923

land.lhs.true.914:                                ; preds = %if.end.910
  %510 = load i32, i32* %old_stack_allocated, align 4
  %511 = load %struct.function*, %struct.function** @cfun, align 8
  %expr915 = getelementptr inbounds %struct.function, %struct.function* %511, i32 0, i32 2
  %512 = load %struct.expr_status*, %struct.expr_status** %expr915, align 8
  %x_stack_pointer_delta916 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %512, i32 0, i32 2
  %513 = load i32, i32* %x_stack_pointer_delta916, align 4
  %514 = load %struct.function*, %struct.function** @cfun, align 8
  %expr917 = getelementptr inbounds %struct.function, %struct.function* %514, i32 0, i32 2
  %515 = load %struct.expr_status*, %struct.expr_status** %expr917, align 8
  %x_pending_stack_adjust918 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %515, i32 0, i32 0
  %516 = load i32, i32* %x_pending_stack_adjust918, align 4
  %sub919 = sub nsw i32 %513, %516
  %cmp920 = icmp ne i32 %510, %sub919
  br i1 %cmp920, label %if.then.922, label %if.end.923

if.then.922:                                      ; preds = %land.lhs.true.914
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3060, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #7
  unreachable

if.end.923:                                       ; preds = %land.lhs.true.914, %if.end.910
  %517 = load i32, i32* %pass, align 4
  %tobool924 = icmp ne i32 %517, 0
  br i1 %tobool924, label %land.lhs.true.925, label %if.else.982

land.lhs.true.925:                                ; preds = %if.end.923
  %518 = load i32, i32* %flags, align 4
  %and926 = and i32 %518, 4096
  %tobool927 = icmp ne i32 %and926, 0
  br i1 %tobool927, label %if.then.928, label %if.else.982

if.then.928:                                      ; preds = %land.lhs.true.925
  %519 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %cmp930 = icmp eq %struct.rtx_def* %519, null
  br i1 %cmp930, label %if.then.937, label %lor.lhs.false.932

lor.lhs.false.932:                                ; preds = %if.then.928
  %520 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %521 = bitcast %struct.rtx_def* %520 to i32*
  %bf.load933 = load i32, i32* %521, align 8
  %bf.clear934 = and i32 %bf.load933, 65535
  %cmp935 = icmp eq i32 %bf.clear934, 39
  br i1 %cmp935, label %if.then.937, label %if.else.940

if.then.937:                                      ; preds = %lor.lhs.false.932, %if.then.928
  %call938 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call938, %struct.rtx_def** %insns929, align 8
  call void @end_sequence()
  %522 = load %struct.rtx_def*, %struct.rtx_def** %insns929, align 8
  %call939 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %522)
  br label %if.end.981

if.else.940:                                      ; preds = %lor.lhs.false.932
  store %struct.rtx_def* null, %struct.rtx_def** %note, align 8
  %523 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %524 = bitcast %struct.rtx_def* %523 to i32*
  %bf.load942 = load i32, i32* %524, align 8
  %bf.lshr943 = lshr i32 %bf.load942, 16
  %bf.clear944 = and i32 %bf.lshr943, 255
  %call945 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear944)
  store %struct.rtx_def* %call945, %struct.rtx_def** %temp941, align 8
  %525 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common946 = bitcast %union.tree_node* %525 to %struct.tree_common*
  %type947 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common946, i32 0, i32 1
  %526 = load %union.tree_node*, %union.tree_node** %type947, align 8
  %common948 = bitcast %union.tree_node* %526 to %struct.tree_common*
  %code949 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common948, i32 0, i32 2
  %bf.load950 = load i32, i32* %code949, align 8
  %bf.clear951 = and i32 %bf.load950, 255
  %cmp952 = icmp eq i32 %bf.clear951, 13
  br i1 %cmp952, label %if.then.954, label %if.end.960

if.then.954:                                      ; preds = %if.else.940
  %527 = load %struct.rtx_def*, %struct.rtx_def** %temp941, align 8
  %528 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common955 = bitcast %union.tree_node* %528 to %struct.tree_common*
  %type956 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common955, i32 0, i32 1
  %529 = load %union.tree_node*, %union.tree_node** %type956, align 8
  %common957 = bitcast %union.tree_node* %529 to %struct.tree_common*
  %type958 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common957, i32 0, i32 1
  %530 = load %union.tree_node*, %union.tree_node** %type958, align 8
  %type959 = bitcast %union.tree_node* %530 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type959, i32 0, i32 7
  %531 = load i32, i32* %align, align 4
  call void @mark_reg_pointer(%struct.rtx_def* %527, i32 %531)
  br label %if.end.960

if.end.960:                                       ; preds = %if.then.954, %if.else.940
  store i32 0, i32* %i, align 4
  br label %for.cond.961

for.cond.961:                                     ; preds = %for.inc.968, %if.end.960
  %532 = load i32, i32* %i, align 4
  %533 = load i32, i32* %num_actuals, align 4
  %cmp962 = icmp slt i32 %532, %533
  br i1 %cmp962, label %for.body.964, label %for.end.970

for.body.964:                                     ; preds = %for.cond.961
  %534 = load i32, i32* %i, align 4
  %idxprom965 = sext i32 %534 to i64
  %535 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx966 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %535, i64 %idxprom965
  %initial_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx966, i32 0, i32 3
  %536 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %537 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call967 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %536, %struct.rtx_def* %537)
  store %struct.rtx_def* %call967, %struct.rtx_def** %note, align 8
  br label %for.inc.968

for.inc.968:                                      ; preds = %for.body.964
  %538 = load i32, i32* %i, align 4
  %inc969 = add nsw i32 %538, 1
  store i32 %inc969, i32* %i, align 4
  br label %for.cond.961

for.end.970:                                      ; preds = %for.cond.961
  %539 = load %struct.rtx_def*, %struct.rtx_def** %funexp, align 8
  %540 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call971 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %539, %struct.rtx_def* %540)
  store %struct.rtx_def* %call971, %struct.rtx_def** %note, align 8
  %call972 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call972, %struct.rtx_def** %insns929, align 8
  call void @end_sequence()
  %541 = load i32, i32* %flags, align 4
  %and973 = and i32 %541, 512
  %tobool974 = icmp ne i32 %and973, 0
  br i1 %tobool974, label %if.then.975, label %if.end.980

if.then.975:                                      ; preds = %for.end.970
  %call976 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %call977 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %call976)
  %call978 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %call977)
  %542 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call979 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %call978, %struct.rtx_def* %542)
  store %struct.rtx_def* %call979, %struct.rtx_def** %note, align 8
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.975, %for.end.970
  %543 = load %struct.rtx_def*, %struct.rtx_def** %insns929, align 8
  %544 = load %struct.rtx_def*, %struct.rtx_def** %temp941, align 8
  %545 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %546 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @emit_libcall_block(%struct.rtx_def* %543, %struct.rtx_def* %544, %struct.rtx_def* %545, %struct.rtx_def* %546)
  %547 = load %struct.rtx_def*, %struct.rtx_def** %temp941, align 8
  store %struct.rtx_def* %547, %struct.rtx_def** %valreg, align 8
  br label %if.end.981

if.end.981:                                       ; preds = %if.end.980, %if.then.937
  br label %if.end.1016

if.else.982:                                      ; preds = %land.lhs.true.925, %if.end.923
  %548 = load i32, i32* %pass, align 4
  %tobool983 = icmp ne i32 %548, 0
  br i1 %tobool983, label %land.lhs.true.984, label %if.end.1015

land.lhs.true.984:                                ; preds = %if.else.982
  %549 = load i32, i32* %flags, align 4
  %and985 = and i32 %549, 4
  %tobool986 = icmp ne i32 %and985, 0
  br i1 %tobool986, label %if.then.987, label %if.end.1015

if.then.987:                                      ; preds = %land.lhs.true.984
  %550 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %551 = bitcast %struct.rtx_def* %550 to i32*
  %bf.load989 = load i32, i32* %551, align 8
  %bf.lshr990 = lshr i32 %bf.load989, 16
  %bf.clear991 = and i32 %bf.lshr990, 255
  %call992 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear991)
  store %struct.rtx_def* %call992, %struct.rtx_def** %temp988, align 8
  %552 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common994 = bitcast %union.tree_node* %552 to %struct.tree_common*
  %type995 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common994, i32 0, i32 1
  %553 = load %union.tree_node*, %union.tree_node** %type995, align 8
  %common996 = bitcast %union.tree_node* %553 to %struct.tree_common*
  %code997 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common996, i32 0, i32 2
  %bf.load998 = load i32, i32* %code997, align 8
  %bf.clear999 = and i32 %bf.load998, 255
  %cmp1000 = icmp eq i32 %bf.clear999, 13
  br i1 %cmp1000, label %if.then.1002, label %if.end.1003

if.then.1002:                                     ; preds = %if.then.987
  %554 = load %struct.rtx_def*, %struct.rtx_def** %temp988, align 8
  call void @mark_reg_pointer(%struct.rtx_def* %554, i32 128)
  br label %if.end.1003

if.end.1003:                                      ; preds = %if.then.1002, %if.then.987
  %555 = load %struct.rtx_def*, %struct.rtx_def** %temp988, align 8
  %556 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %call1004 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %555, %struct.rtx_def* %556)
  %call1005 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call1005, %struct.rtx_def** %last, align 8
  %557 = load %struct.rtx_def*, %struct.rtx_def** %temp988, align 8
  %558 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld1006 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %558, i32 0, i32 1
  %arrayidx1007 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1006, i32 0, i64 6
  %rtx1008 = bitcast %union.rtunion_def* %arrayidx1007 to %struct.rtx_def**
  %559 = load %struct.rtx_def*, %struct.rtx_def** %rtx1008, align 8
  %call1009 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 18, %struct.rtx_def* %557, %struct.rtx_def* %559)
  %560 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld1010 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %560, i32 0, i32 1
  %arrayidx1011 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1010, i32 0, i64 6
  %rtx1012 = bitcast %union.rtunion_def* %arrayidx1011 to %struct.rtx_def**
  store %struct.rtx_def* %call1009, %struct.rtx_def** %rtx1012, align 8
  %call1013 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1013, %struct.rtx_def** %insns993, align 8
  call void @end_sequence()
  %561 = load %struct.rtx_def*, %struct.rtx_def** %insns993, align 8
  %call1014 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %561)
  %562 = load %struct.rtx_def*, %struct.rtx_def** %temp988, align 8
  store %struct.rtx_def* %562, %struct.rtx_def** %valreg, align 8
  br label %if.end.1015

if.end.1015:                                      ; preds = %if.end.1003, %land.lhs.true.984, %if.else.982
  br label %if.end.1016

if.end.1016:                                      ; preds = %if.end.1015, %if.end.981
  %563 = load i32, i32* %flags, align 4
  %and1017 = and i32 %563, 66
  %tobool1018 = icmp ne i32 %and1017, 0
  br i1 %tobool1018, label %if.then.1022, label %lor.lhs.false.1019

lor.lhs.false.1019:                               ; preds = %if.end.1016
  %564 = load i32, i32* %pass, align 4
  %cmp1020 = icmp eq i32 %564, 0
  br i1 %cmp1020, label %if.then.1022, label %if.end.1037

if.then.1022:                                     ; preds = %lor.lhs.false.1019, %if.end.1016
  %call1024 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call1024, %struct.rtx_def** %last1023, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.1035, %if.then.1022
  %565 = load %struct.rtx_def*, %struct.rtx_def** %last1023, align 8
  %566 = bitcast %struct.rtx_def* %565 to i32*
  %bf.load1025 = load i32, i32* %566, align 8
  %bf.clear1026 = and i32 %bf.load1025, 65535
  %cmp1027 = icmp ne i32 %bf.clear1026, 34
  br i1 %cmp1027, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %567 = load %struct.rtx_def*, %struct.rtx_def** %last1023, align 8
  %fld1029 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %567, i32 0, i32 1
  %arrayidx1030 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1029, i32 0, i64 1
  %rtx1031 = bitcast %union.rtunion_def* %arrayidx1030 to %struct.rtx_def**
  %568 = load %struct.rtx_def*, %struct.rtx_def** %rtx1031, align 8
  store %struct.rtx_def* %568, %struct.rtx_def** %last1023, align 8
  %569 = load %struct.rtx_def*, %struct.rtx_def** %last1023, align 8
  %570 = load %struct.rtx_def*, %struct.rtx_def** %before_call, align 8
  %cmp1032 = icmp eq %struct.rtx_def* %569, %570
  br i1 %cmp1032, label %if.then.1034, label %if.end.1035

if.then.1034:                                     ; preds = %while.body
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3148, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_call, i32 0, i32 0)) #7
  unreachable

if.end.1035:                                      ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %571 = load %struct.rtx_def*, %struct.rtx_def** %last1023, align 8
  %call1036 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %571)
  br label %if.end.1037

if.end.1037:                                      ; preds = %while.end, %lor.lhs.false.1019
  %572 = load i32, i32* %flags, align 4
  %and1038 = and i32 %572, 64
  %tobool1039 = icmp ne i32 %and1038, 0
  br i1 %tobool1039, label %if.then.1040, label %if.end.1044

if.then.1040:                                     ; preds = %if.end.1037
  %573 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_longjmp = getelementptr inbounds %struct.function, %struct.function* %573, i32 0, i32 56
  %574 = bitcast i24* %calls_longjmp to i32*
  %bf.load1041 = load i32, i32* %574, align 8
  %bf.clear1042 = and i32 %bf.load1041, -33
  %bf.set1043 = or i32 %bf.clear1042, 32
  store i32 %bf.set1043, i32* %574, align 8
  br label %if.end.1044

if.end.1044:                                      ; preds = %if.then.1040, %if.end.1037
  %575 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1045 = icmp ne %struct.rtx_def* %575, null
  br i1 %cmp1045, label %land.lhs.true.1047, label %if.end.1063

land.lhs.true.1047:                               ; preds = %if.end.1044
  %576 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %577 = bitcast %struct.rtx_def* %576 to i32*
  %bf.load1048 = load i32, i32* %577, align 8
  %bf.clear1049 = and i32 %bf.load1048, 65535
  %cmp1050 = icmp eq i32 %bf.clear1049, 66
  br i1 %cmp1050, label %land.lhs.true.1052, label %if.end.1063

land.lhs.true.1052:                               ; preds = %land.lhs.true.1047
  %578 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %cmp1053 = icmp ne %struct.rtx_def* %578, null
  br i1 %cmp1053, label %land.lhs.true.1055, label %if.end.1063

land.lhs.true.1055:                               ; preds = %land.lhs.true.1052
  %579 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %580 = bitcast %struct.rtx_def* %579 to i32*
  %bf.load1056 = load i32, i32* %580, align 8
  %bf.lshr1057 = lshr i32 %bf.load1056, 26
  %bf.clear1058 = and i32 %bf.lshr1057, 1
  %tobool1059 = icmp ne i32 %bf.clear1058, 0
  br i1 %tobool1059, label %if.then.1060, label %if.end.1063

if.then.1060:                                     ; preds = %land.lhs.true.1055
  %581 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1061 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %581)
  %call1062 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call1061)
  br label %if.end.1063

if.end.1063:                                      ; preds = %if.then.1060, %land.lhs.true.1055, %land.lhs.true.1052, %land.lhs.true.1047, %if.end.1044
  %call1064 = call i32 @any_pending_cleanups(i32 1)
  %tobool1065 = icmp ne i32 %call1064, 0
  br i1 %tobool1065, label %if.then.1066, label %if.end.1080

if.then.1066:                                     ; preds = %if.end.1063
  %582 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1067 = icmp ne %struct.rtx_def* %582, null
  br i1 %tobool1067, label %land.lhs.true.1068, label %if.end.1079

land.lhs.true.1068:                               ; preds = %if.then.1066
  %583 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %584 = bitcast %struct.rtx_def* %583 to i32*
  %bf.load1069 = load i32, i32* %584, align 8
  %bf.clear1070 = and i32 %bf.load1069, 65535
  %cmp1071 = icmp eq i32 %bf.clear1070, 61
  br i1 %cmp1071, label %land.lhs.true.1073, label %if.end.1079

land.lhs.true.1073:                               ; preds = %land.lhs.true.1068
  %585 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld1074 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %arrayidx1075 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1074, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx1075 to i32*
  %586 = load i32, i32* %rtuint, align 4
  %cmp1076 = icmp ult i32 %586, 53
  br i1 %cmp1076, label %if.then.1078, label %if.end.1079

if.then.1078:                                     ; preds = %land.lhs.true.1073
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1079

if.end.1079:                                      ; preds = %if.then.1078, %land.lhs.true.1073, %land.lhs.true.1068, %if.then.1066
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.1080

if.end.1080:                                      ; preds = %if.end.1079, %if.end.1063
  %587 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1081 = bitcast %union.tree_node* %587 to %struct.tree_common*
  %type1082 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1081, i32 0, i32 1
  %588 = load %union.tree_node*, %union.tree_node** %type1082, align 8
  %type1083 = bitcast %union.tree_node* %588 to %struct.tree_type*
  %mode1084 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1083, i32 0, i32 6
  %bf.load1085 = load i32, i32* %mode1084, align 4
  %bf.lshr1086 = lshr i32 %bf.load1085, 9
  %bf.clear1087 = and i32 %bf.lshr1086, 127
  %cmp1088 = icmp eq i32 %bf.clear1087, 0
  br i1 %cmp1088, label %if.then.1092, label %lor.lhs.false.1090

lor.lhs.false.1090:                               ; preds = %if.end.1080
  %589 = load i32, i32* %ignore.addr, align 4
  %tobool1091 = icmp ne i32 %589, 0
  br i1 %tobool1091, label %if.then.1092, label %if.else.1093

if.then.1092:                                     ; preds = %lor.lhs.false.1090, %if.end.1080
  %590 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %590, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1244

if.else.1093:                                     ; preds = %lor.lhs.false.1090
  %591 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %tobool1094 = icmp ne %struct.rtx_def* %591, null
  br i1 %tobool1094, label %if.then.1095, label %if.else.1121

if.then.1095:                                     ; preds = %if.else.1093
  %592 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1096 = icmp eq %struct.rtx_def* %592, null
  br i1 %cmp1096, label %if.then.1103, label %lor.lhs.false.1098

lor.lhs.false.1098:                               ; preds = %if.then.1095
  %593 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %594 = bitcast %struct.rtx_def* %593 to i32*
  %bf.load1099 = load i32, i32* %594, align 8
  %bf.clear1100 = and i32 %bf.load1099, 65535
  %cmp1101 = icmp ne i32 %bf.clear1100, 66
  br i1 %cmp1101, label %if.then.1103, label %if.end.1120

if.then.1103:                                     ; preds = %lor.lhs.false.1098, %if.then.1095
  %595 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1104 = bitcast %union.tree_node* %595 to %struct.tree_common*
  %type1105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1104, i32 0, i32 1
  %596 = load %union.tree_node*, %union.tree_node** %type1105, align 8
  %type1106 = bitcast %union.tree_node* %596 to %struct.tree_type*
  %mode1107 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1106, i32 0, i32 6
  %bf.load1108 = load i32, i32* %mode1107, align 4
  %bf.lshr1109 = lshr i32 %bf.load1108, 9
  %bf.clear1110 = and i32 %bf.lshr1109, 127
  %597 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1111 = bitcast %union.tree_node* %597 to %struct.tree_common*
  %type1112 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1111, i32 0, i32 1
  %598 = load %union.tree_node*, %union.tree_node** %type1112, align 8
  %type1113 = bitcast %union.tree_node* %598 to %struct.tree_type*
  %mode1114 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1113, i32 0, i32 6
  %bf.load1115 = load i32, i32* %mode1114, align 4
  %bf.lshr1116 = lshr i32 %bf.load1115, 9
  %bf.clear1117 = and i32 %bf.lshr1116, 127
  %599 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr, align 8
  %call1118 = call %struct.rtx_def* @memory_address(i32 %bf.clear1117, %struct.rtx_def* %599)
  %call1119 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear1110, %struct.rtx_def* %call1118)
  store %struct.rtx_def* %call1119, %struct.rtx_def** %target.addr, align 8
  %600 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %601 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %600, %union.tree_node* %601, i32 1)
  br label %if.end.1120

if.end.1120:                                      ; preds = %if.then.1103, %lor.lhs.false.1098
  br label %if.end.1243

if.else.1121:                                     ; preds = %if.else.1093
  %602 = load i32, i32* %pcc_struct_value, align 4
  %tobool1122 = icmp ne i32 %602, 0
  br i1 %tobool1122, label %if.then.1123, label %if.else.1133

if.then.1123:                                     ; preds = %if.else.1121
  %603 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1124 = bitcast %union.tree_node* %603 to %struct.tree_common*
  %type1125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1124, i32 0, i32 1
  %604 = load %union.tree_node*, %union.tree_node** %type1125, align 8
  %type1126 = bitcast %union.tree_node* %604 to %struct.tree_type*
  %mode1127 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1126, i32 0, i32 6
  %bf.load1128 = load i32, i32* %mode1127, align 4
  %bf.lshr1129 = lshr i32 %bf.load1128, 9
  %bf.clear1130 = and i32 %bf.lshr1129, 127
  %605 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %call1131 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %605)
  %call1132 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear1130, %struct.rtx_def* %call1131)
  store %struct.rtx_def* %call1132, %struct.rtx_def** %target.addr, align 8
  %606 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %607 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %606, %union.tree_node* %607, i32 1)
  br label %if.end.1242

if.else.1133:                                     ; preds = %if.else.1121
  %608 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %609 = bitcast %struct.rtx_def* %608 to i32*
  %bf.load1134 = load i32, i32* %609, align 8
  %bf.clear1135 = and i32 %bf.load1134, 65535
  %cmp1136 = icmp eq i32 %bf.clear1135, 39
  br i1 %cmp1136, label %if.then.1138, label %if.else.1197

if.then.1138:                                     ; preds = %if.else.1133
  %610 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1139 = icmp eq %struct.rtx_def* %610, null
  br i1 %cmp1139, label %if.then.1141, label %if.end.1188

if.then.1141:                                     ; preds = %if.then.1138
  %611 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1142 = bitcast %union.tree_node* %611 to %struct.tree_common*
  %type1143 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1142, i32 0, i32 1
  %612 = load %union.tree_node*, %union.tree_node** %type1143, align 8
  %613 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1144 = bitcast %union.tree_node* %613 to %struct.tree_common*
  %type1145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1144, i32 0, i32 1
  %614 = load %union.tree_node*, %union.tree_node** %type1145, align 8
  %common1146 = bitcast %union.tree_node* %614 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1146, i32 0, i32 2
  %bf.load1147 = load i32, i32* %readonly_flag, align 8
  %bf.lshr1148 = lshr i32 %bf.load1147, 12
  %bf.clear1149 = and i32 %bf.lshr1148, 1
  %mul1150 = mul nsw i32 %bf.clear1149, 1
  %615 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1151 = bitcast %union.tree_node* %615 to %struct.tree_common*
  %type1152 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1151, i32 0, i32 1
  %616 = load %union.tree_node*, %union.tree_node** %type1152, align 8
  %common1153 = bitcast %union.tree_node* %616 to %struct.tree_common*
  %volatile_flag1154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1153, i32 0, i32 2
  %bf.load1155 = load i32, i32* %volatile_flag1154, align 8
  %bf.lshr1156 = lshr i32 %bf.load1155, 11
  %bf.clear1157 = and i32 %bf.lshr1156, 1
  %mul1158 = mul nsw i32 %bf.clear1157, 2
  %or1159 = or i32 %mul1150, %mul1158
  %617 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1160 = bitcast %union.tree_node* %617 to %struct.tree_common*
  %type1161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1160, i32 0, i32 1
  %618 = load %union.tree_node*, %union.tree_node** %type1161, align 8
  %type1162 = bitcast %union.tree_node* %618 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1162, i32 0, i32 6
  %bf.load1163 = load i32, i32* %restrict_flag, align 4
  %bf.lshr1164 = lshr i32 %bf.load1163, 21
  %bf.clear1165 = and i32 %bf.lshr1164, 1
  %mul1166 = mul nsw i32 %bf.clear1165, 4
  %or1167 = or i32 %or1159, %mul1166
  %619 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1168 = bitcast %union.tree_node* %619 to %struct.tree_common*
  %type1169 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1168, i32 0, i32 1
  %620 = load %union.tree_node*, %union.tree_node** %type1169, align 8
  %common1170 = bitcast %union.tree_node* %620 to %struct.tree_common*
  %code1171 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1170, i32 0, i32 2
  %bf.load1172 = load i32, i32* %code1171, align 8
  %bf.clear1173 = and i32 %bf.load1172, 255
  %cmp1174 = icmp eq i32 %bf.clear1173, 20
  br i1 %cmp1174, label %land.rhs.1176, label %land.end.1182

land.rhs.1176:                                    ; preds = %if.then.1141
  %621 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1177 = bitcast %union.tree_node* %621 to %struct.tree_common*
  %type1178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1177, i32 0, i32 1
  %622 = load %union.tree_node*, %union.tree_node** %type1178, align 8
  %common1179 = bitcast %union.tree_node* %622 to %struct.tree_common*
  %type1180 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1179, i32 0, i32 1
  %623 = load %union.tree_node*, %union.tree_node** %type1180, align 8
  %tobool1181 = icmp ne %union.tree_node* %623, null
  br label %land.end.1182

land.end.1182:                                    ; preds = %land.rhs.1176, %if.then.1141
  %624 = phi i1 [ false, %if.then.1141 ], [ %tobool1181, %land.rhs.1176 ]
  %land.ext = zext i1 %624 to i32
  %mul1183 = mul nsw i32 %land.ext, 8
  %or1184 = or i32 %or1167, %mul1183
  %or1185 = or i32 %or1184, 1
  %call1186 = call %union.tree_node* @build_qualified_type(%union.tree_node* %612, i32 %or1185)
  store %union.tree_node* %call1186, %union.tree_node** %nt, align 8
  %625 = load %union.tree_node*, %union.tree_node** %nt, align 8
  %call1187 = call %struct.rtx_def* @assign_temp(%union.tree_node* %625, i32 0, i32 1, i32 1)
  store %struct.rtx_def* %call1187, %struct.rtx_def** %target.addr, align 8
  %626 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %626)
  br label %if.end.1188

if.end.1188:                                      ; preds = %land.end.1182, %if.then.1138
  %627 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %628 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %call1189 = call i32 @rtx_equal_p(%struct.rtx_def* %627, %struct.rtx_def* %628)
  %tobool1190 = icmp ne i32 %call1189, 0
  br i1 %tobool1190, label %if.end.1196, label %if.then.1191

if.then.1191:                                     ; preds = %if.end.1188
  %629 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %630 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %631 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1192 = bitcast %union.tree_node* %631 to %struct.tree_common*
  %type1193 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1192, i32 0, i32 1
  %632 = load %union.tree_node*, %union.tree_node** %type1193, align 8
  %call1194 = call i64 @int_size_in_bytes(%union.tree_node* %632)
  %conv1195 = trunc i64 %call1194 to i32
  call void @emit_group_store(%struct.rtx_def* %629, %struct.rtx_def* %630, i32 %conv1195)
  br label %if.end.1196

if.end.1196:                                      ; preds = %if.then.1191, %if.end.1188
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.1241

if.else.1197:                                     ; preds = %if.else.1133
  %633 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1198 = icmp ne %struct.rtx_def* %633, null
  br i1 %tobool1198, label %land.lhs.true.1199, label %if.else.1223

land.lhs.true.1199:                               ; preds = %if.else.1197
  %634 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %635 = bitcast %struct.rtx_def* %634 to i32*
  %bf.load1200 = load i32, i32* %635, align 8
  %bf.lshr1201 = lshr i32 %bf.load1200, 16
  %bf.clear1202 = and i32 %bf.lshr1201, 255
  %636 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1203 = bitcast %union.tree_node* %636 to %struct.tree_common*
  %type1204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1203, i32 0, i32 1
  %637 = load %union.tree_node*, %union.tree_node** %type1204, align 8
  %type1205 = bitcast %union.tree_node* %637 to %struct.tree_type*
  %mode1206 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1205, i32 0, i32 6
  %bf.load1207 = load i32, i32* %mode1206, align 4
  %bf.lshr1208 = lshr i32 %bf.load1207, 9
  %bf.clear1209 = and i32 %bf.lshr1208, 127
  %cmp1210 = icmp eq i32 %bf.clear1202, %bf.clear1209
  br i1 %cmp1210, label %land.lhs.true.1212, label %if.else.1223

land.lhs.true.1212:                               ; preds = %land.lhs.true.1199
  %638 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %639 = bitcast %struct.rtx_def* %638 to i32*
  %bf.load1213 = load i32, i32* %639, align 8
  %bf.lshr1214 = lshr i32 %bf.load1213, 16
  %bf.clear1215 = and i32 %bf.lshr1214, 255
  %640 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %641 = bitcast %struct.rtx_def* %640 to i32*
  %bf.load1216 = load i32, i32* %641, align 8
  %bf.lshr1217 = lshr i32 %bf.load1216, 16
  %bf.clear1218 = and i32 %bf.lshr1217, 255
  %cmp1219 = icmp eq i32 %bf.clear1215, %bf.clear1218
  br i1 %cmp1219, label %if.then.1221, label %if.else.1223

if.then.1221:                                     ; preds = %land.lhs.true.1212
  %642 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %643 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %call1222 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %642, %struct.rtx_def* %643)
  br label %if.end.1240

if.else.1223:                                     ; preds = %land.lhs.true.1212, %land.lhs.true.1199, %if.else.1197
  %644 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1224 = bitcast %union.tree_node* %644 to %struct.tree_common*
  %type1225 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1224, i32 0, i32 1
  %645 = load %union.tree_node*, %union.tree_node** %type1225, align 8
  %type1226 = bitcast %union.tree_node* %645 to %struct.tree_type*
  %mode1227 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1226, i32 0, i32 6
  %bf.load1228 = load i32, i32* %mode1227, align 4
  %bf.lshr1229 = lshr i32 %bf.load1228, 9
  %bf.clear1230 = and i32 %bf.lshr1229, 127
  %cmp1231 = icmp eq i32 %bf.clear1230, 51
  br i1 %cmp1231, label %if.then.1233, label %if.else.1237

if.then.1233:                                     ; preds = %if.else.1223
  %646 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %647 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %648 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common1234 = bitcast %union.tree_node* %648 to %struct.tree_common*
  %type1235 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1234, i32 0, i32 1
  %649 = load %union.tree_node*, %union.tree_node** %type1235, align 8
  %call1236 = call %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def* %646, %struct.rtx_def* %647, %union.tree_node* %649)
  store %struct.rtx_def* %call1236, %struct.rtx_def** %target.addr, align 8
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.1239

if.else.1237:                                     ; preds = %if.else.1223
  %650 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %call1238 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %650)
  store %struct.rtx_def* %call1238, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1239

if.end.1239:                                      ; preds = %if.else.1237, %if.then.1233
  br label %if.end.1240

if.end.1240:                                      ; preds = %if.end.1239, %if.then.1221
  br label %if.end.1241

if.end.1241:                                      ; preds = %if.end.1240, %if.end.1196
  br label %if.end.1242

if.end.1242:                                      ; preds = %if.end.1241, %if.then.1123
  br label %if.end.1243

if.end.1243:                                      ; preds = %if.end.1242, %if.end.1120
  br label %if.end.1244

if.end.1244:                                      ; preds = %if.end.1243, %if.then.1092
  %651 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  %tobool1245 = icmp ne %struct.rtx_def* %651, null
  br i1 %tobool1245, label %land.lhs.true.1246, label %if.else.1252

land.lhs.true.1246:                               ; preds = %if.end.1244
  %652 = load i32, i32* %flags, align 4
  %and1247 = and i32 %652, 1024
  %tobool1248 = icmp ne i32 %and1247, 0
  br i1 %tobool1248, label %if.else.1252, label %if.then.1249

if.then.1249:                                     ; preds = %land.lhs.true.1246
  %653 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %653, %struct.rtx_def* null)
  %654 = load i32, i32* %old_pending_adj, align 4
  %655 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1250 = getelementptr inbounds %struct.function, %struct.function* %655, i32 0, i32 2
  %656 = load %struct.expr_status*, %struct.expr_status** %expr1250, align 8
  %x_pending_stack_adjust1251 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %656, i32 0, i32 0
  store i32 %654, i32* %x_pending_stack_adjust1251, align 4
  %657 = load i32, i32* %old_stack_arg_under_construction, align 4
  store i32 %657, i32* @stack_arg_under_construction, align 4
  %658 = load i32, i32* %initial_highest_arg_in_use, align 4
  store i32 %658, i32* @highest_outgoing_arg_in_use, align 4
  %659 = load i8*, i8** %initial_stack_usage_map, align 8
  store i8* %659, i8** @stack_usage_map, align 8
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.1306

if.else.1252:                                     ; preds = %land.lhs.true.1246, %if.end.1244
  %660 = load i32, i32* @target_flags, align 4
  %and1253 = and i32 %660, 4096
  %tobool1254 = icmp ne i32 %and1253, 0
  br i1 %tobool1254, label %land.lhs.true.1255, label %if.end.1305

land.lhs.true.1255:                               ; preds = %if.else.1252
  %661 = load i32, i32* %pass, align 4
  %tobool1256 = icmp ne i32 %661, 0
  br i1 %tobool1256, label %if.then.1257, label %if.end.1305

if.then.1257:                                     ; preds = %land.lhs.true.1255
  %662 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %tobool1258 = icmp ne %struct.rtx_def* %662, null
  br i1 %tobool1258, label %if.then.1259, label %if.end.1260

if.then.1259:                                     ; preds = %if.then.1257
  %663 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %664 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %665 = load i32, i32* %high_to_save, align 4
  %666 = load i32, i32* %low_to_save, align 4
  call void @restore_fixed_argument_area(%struct.rtx_def* %663, %struct.rtx_def* %664, i32 %665, i32 %666)
  br label %if.end.1260

if.end.1260:                                      ; preds = %if.then.1259, %if.then.1257
  store i32 0, i32* %i, align 4
  br label %for.cond.1261

for.cond.1261:                                    ; preds = %for.inc.1302, %if.end.1260
  %667 = load i32, i32* %i, align 4
  %668 = load i32, i32* %num_actuals, align 4
  %cmp1262 = icmp slt i32 %667, %668
  br i1 %cmp1262, label %for.body.1264, label %for.end.1304

for.body.1264:                                    ; preds = %for.cond.1261
  %669 = load i32, i32* %i, align 4
  %idxprom1265 = sext i32 %669 to i64
  %670 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1266 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %670, i64 %idxprom1265
  %save_area1267 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1266, i32 0, i32 14
  %671 = load %struct.rtx_def*, %struct.rtx_def** %save_area1267, align 8
  %tobool1268 = icmp ne %struct.rtx_def* %671, null
  br i1 %tobool1268, label %if.then.1269, label %if.end.1301

if.then.1269:                                     ; preds = %for.body.1264
  %672 = load i32, i32* %i, align 4
  %idxprom1270 = sext i32 %672 to i64
  %673 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1271 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %673, i64 %idxprom1270
  %save_area1272 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1271, i32 0, i32 14
  %674 = load %struct.rtx_def*, %struct.rtx_def** %save_area1272, align 8
  %675 = bitcast %struct.rtx_def* %674 to i32*
  %bf.load1273 = load i32, i32* %675, align 8
  %bf.lshr1274 = lshr i32 %bf.load1273, 16
  %bf.clear1275 = and i32 %bf.lshr1274, 255
  store i32 %bf.clear1275, i32* %save_mode, align 4
  %676 = load i32, i32* %save_mode, align 4
  %677 = load i32, i32* %save_mode, align 4
  %678 = load i32, i32* %i, align 4
  %idxprom1276 = sext i32 %678 to i64
  %679 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1277 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %679, i64 %idxprom1276
  %stack_slot = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1277, i32 0, i32 13
  %680 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot, align 8
  %fld1278 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %680, i32 0, i32 1
  %arrayidx1279 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1278, i32 0, i64 0
  %rtx1280 = bitcast %union.rtunion_def* %arrayidx1279 to %struct.rtx_def**
  %681 = load %struct.rtx_def*, %struct.rtx_def** %rtx1280, align 8
  %call1281 = call %struct.rtx_def* @memory_address(i32 %677, %struct.rtx_def* %681)
  %call1282 = call %struct.rtx_def* @gen_rtx_MEM(i32 %676, %struct.rtx_def* %call1281)
  store %struct.rtx_def* %call1282, %struct.rtx_def** %stack_area, align 8
  %682 = load i32, i32* %save_mode, align 4
  %cmp1283 = icmp ne i32 %682, 51
  br i1 %cmp1283, label %if.then.1285, label %if.else.1290

if.then.1285:                                     ; preds = %if.then.1269
  %683 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %684 = load i32, i32* %i, align 4
  %idxprom1286 = sext i32 %684 to i64
  %685 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1287 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %685, i64 %idxprom1286
  %save_area1288 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1287, i32 0, i32 14
  %686 = load %struct.rtx_def*, %struct.rtx_def** %save_area1288, align 8
  %call1289 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %683, %struct.rtx_def* %686)
  br label %if.end.1300

if.else.1290:                                     ; preds = %if.then.1269
  %687 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %688 = load i32, i32* %i, align 4
  %idxprom1291 = sext i32 %688 to i64
  %689 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1292 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %689, i64 %idxprom1291
  %save_area1293 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1292, i32 0, i32 14
  %690 = load %struct.rtx_def*, %struct.rtx_def** %save_area1293, align 8
  %call1294 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %690)
  %691 = load i32, i32* %i, align 4
  %idxprom1295 = sext i32 %691 to i64
  %692 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1296 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %692, i64 %idxprom1295
  %size = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1296, i32 0, i32 11
  %constant1297 = getelementptr inbounds %struct.args_size, %struct.args_size* %size, i32 0, i32 0
  %693 = load i64, i64* %constant1297, align 8
  %call1298 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %693)
  %call1299 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %687, %struct.rtx_def* %call1294, %struct.rtx_def* %call1298)
  br label %if.end.1300

if.end.1300:                                      ; preds = %if.else.1290, %if.then.1285
  br label %if.end.1301

if.end.1301:                                      ; preds = %if.end.1300, %for.body.1264
  br label %for.inc.1302

for.inc.1302:                                     ; preds = %if.end.1301
  %694 = load i32, i32* %i, align 4
  %inc1303 = add nsw i32 %694, 1
  store i32 %inc1303, i32* %i, align 4
  br label %for.cond.1261

for.end.1304:                                     ; preds = %for.cond.1261
  %695 = load i32, i32* %initial_highest_arg_in_use, align 4
  store i32 %695, i32* @highest_outgoing_arg_in_use, align 4
  %696 = load i8*, i8** %initial_stack_usage_map, align 8
  store i8* %696, i8** @stack_usage_map, align 8
  br label %if.end.1305

if.end.1305:                                      ; preds = %for.end.1304, %land.lhs.true.1255, %if.else.1252
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.end.1305, %if.then.1249
  %697 = load i32, i32* %flags, align 4
  %and1307 = and i32 %697, 8
  %tobool1308 = icmp ne i32 %and1307, 0
  br i1 %tobool1308, label %land.lhs.true.1309, label %if.end.1313

land.lhs.true.1309:                               ; preds = %if.end.1306
  %698 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_slots = getelementptr inbounds %struct.function, %struct.function* %698, i32 0, i32 20
  %699 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_slots, align 8
  %cmp1310 = icmp ne %struct.rtx_def* %699, null
  br i1 %cmp1310, label %if.then.1312, label %if.end.1313

if.then.1312:                                     ; preds = %land.lhs.true.1309
  %700 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_stack_level = getelementptr inbounds %struct.function, %struct.function* %700, i32 0, i32 22
  call void @emit_stack_save(i32 2, %struct.rtx_def** %x_nonlocal_goto_stack_level, %struct.rtx_def* null)
  br label %if.end.1313

if.end.1313:                                      ; preds = %if.then.1312, %land.lhs.true.1309, %if.end.1306
  store i32 0, i32* %i, align 4
  br label %for.cond.1314

for.cond.1314:                                    ; preds = %for.inc.1326, %if.end.1313
  %701 = load i32, i32* %i, align 4
  %702 = load i32, i32* %num_actuals, align 4
  %cmp1315 = icmp slt i32 %701, %702
  br i1 %cmp1315, label %for.body.1317, label %for.end.1328

for.body.1317:                                    ; preds = %for.cond.1314
  %703 = load i32, i32* %i, align 4
  %idxprom1318 = sext i32 %703 to i64
  %704 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1319 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %704, i64 %idxprom1318
  %aligned_regs = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1319, i32 0, i32 15
  %705 = load %struct.rtx_def**, %struct.rtx_def*** %aligned_regs, align 8
  %tobool1320 = icmp ne %struct.rtx_def** %705, null
  br i1 %tobool1320, label %if.then.1321, label %if.end.1325

if.then.1321:                                     ; preds = %for.body.1317
  %706 = load i32, i32* %i, align 4
  %idxprom1322 = sext i32 %706 to i64
  %707 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1323 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %707, i64 %idxprom1322
  %aligned_regs1324 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1323, i32 0, i32 15
  %708 = load %struct.rtx_def**, %struct.rtx_def*** %aligned_regs1324, align 8
  %709 = bitcast %struct.rtx_def** %708 to i8*
  call void @free(i8* %709) #3
  br label %if.end.1325

if.end.1325:                                      ; preds = %if.then.1321, %for.body.1317
  br label %for.inc.1326

for.inc.1326:                                     ; preds = %if.end.1325
  %710 = load i32, i32* %i, align 4
  %inc1327 = add nsw i32 %710, 1
  store i32 %inc1327, i32* %i, align 4
  br label %for.cond.1314

for.end.1328:                                     ; preds = %for.cond.1314
  %711 = load i32, i32* %pass, align 4
  %cmp1329 = icmp eq i32 %711, 0
  br i1 %cmp1329, label %if.then.1331, label %if.end.1332

if.then.1331:                                     ; preds = %for.end.1328
  call void @expand_end_target_temps()
  br label %if.end.1332

if.end.1332:                                      ; preds = %if.then.1331, %for.end.1328
  %call1333 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1333, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %712 = load i32, i32* %pass, align 4
  %cmp1334 = icmp eq i32 %712, 0
  br i1 %cmp1334, label %if.then.1336, label %if.else.1355

if.then.1336:                                     ; preds = %if.end.1332
  %713 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  store %struct.rtx_def* %713, %struct.rtx_def** %tail_call_insns, align 8
  %714 = load i32, i32* %save_pending_stack_adjust497, align 4
  %715 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1337 = getelementptr inbounds %struct.function, %struct.function* %715, i32 0, i32 2
  %716 = load %struct.expr_status*, %struct.expr_status** %expr1337, align 8
  %x_pending_stack_adjust1338 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %716, i32 0, i32 0
  store i32 %714, i32* %x_pending_stack_adjust1338, align 4
  %717 = load i32, i32* %save_stack_pointer_delta498, align 4
  %718 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1339 = getelementptr inbounds %struct.function, %struct.function* %718, i32 0, i32 2
  %719 = load %struct.expr_status*, %struct.expr_status** %expr1339, align 8
  %x_stack_pointer_delta1340 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %719, i32 0, i32 2
  store i32 %717, i32* %x_stack_pointer_delta1340, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1341

for.cond.1341:                                    ; preds = %for.inc.1352, %if.then.1336
  %720 = load i32, i32* %i, align 4
  %721 = load i32, i32* %num_actuals, align 4
  %cmp1342 = icmp slt i32 %720, %721
  br i1 %cmp1342, label %for.body.1344, label %for.end.1354

for.body.1344:                                    ; preds = %for.cond.1341
  %722 = load i32, i32* %i, align 4
  %idxprom1345 = sext i32 %722 to i64
  %723 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1346 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %723, i64 %idxprom1345
  %value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1346, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %value, align 8
  %724 = load i32, i32* %i, align 4
  %idxprom1347 = sext i32 %724 to i64
  %725 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1348 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %725, i64 %idxprom1347
  %aligned_regs1349 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1348, i32 0, i32 15
  store %struct.rtx_def** null, %struct.rtx_def*** %aligned_regs1349, align 8
  %726 = load i32, i32* %i, align 4
  %idxprom1350 = sext i32 %726 to i64
  %727 = load %struct.arg_data*, %struct.arg_data** %args, align 8
  %arrayidx1351 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %727, i64 %idxprom1350
  %stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx1351, i32 0, i32 12
  store %struct.rtx_def* null, %struct.rtx_def** %stack, align 8
  br label %for.inc.1352

for.inc.1352:                                     ; preds = %for.body.1344
  %728 = load i32, i32* %i, align 4
  %inc1353 = add nsw i32 %728, 1
  store i32 %inc1353, i32* %i, align 4
  br label %for.cond.1341

for.end.1354:                                     ; preds = %for.cond.1341
  %729 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %730 = bitcast %struct.simple_bitmap_def* %729 to i8*
  call void @free(i8* %730) #3
  br label %if.end.1356

if.else.1355:                                     ; preds = %if.end.1332
  %731 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  store %struct.rtx_def* %731, %struct.rtx_def** %normal_call_insns, align 8
  br label %if.end.1356

if.end.1356:                                      ; preds = %if.else.1355, %for.end.1354
  %732 = load i32, i32* %sibcall_failure, align 4
  %tobool1357 = icmp ne i32 %732, 0
  br i1 %tobool1357, label %if.then.1358, label %if.end.1359

if.then.1358:                                     ; preds = %if.end.1356
  store %struct.rtx_def* null, %struct.rtx_def** %tail_call_insns, align 8
  br label %if.end.1359

if.end.1359:                                      ; preds = %if.then.1358, %if.end.1356
  br label %for.inc.1360

for.inc.1360:                                     ; preds = %if.end.1359, %if.then.503
  %733 = load i32, i32* %pass, align 4
  %inc1361 = add nsw i32 %733, 1
  store i32 %inc1361, i32* %pass, align 4
  br label %for.cond.493

for.end.1362:                                     ; preds = %for.cond.493
  %734 = load %struct.rtx_def*, %struct.rtx_def** %normal_call_insns, align 8
  store %struct.rtx_def* %734, %struct.rtx_def** %insn, align 8
  br label %for.cond.1363

for.cond.1363:                                    ; preds = %for.inc.1380, %for.end.1362
  %735 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1364 = icmp ne %struct.rtx_def* %735, null
  br i1 %tobool1364, label %for.body.1365, label %for.end.1384

for.body.1365:                                    ; preds = %for.cond.1363
  %736 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %737 = bitcast %struct.rtx_def* %736 to i32*
  %bf.load1366 = load i32, i32* %737, align 8
  %bf.clear1367 = and i32 %bf.load1366, 65535
  %cmp1368 = icmp eq i32 %bf.clear1367, 34
  br i1 %cmp1368, label %land.lhs.true.1370, label %if.end.1379

land.lhs.true.1370:                               ; preds = %for.body.1365
  %738 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %738, i32 0, i32 1
  %arrayidx1372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1371, i32 0, i64 3
  %rtx1373 = bitcast %union.rtunion_def* %arrayidx1372 to %struct.rtx_def**
  %739 = load %struct.rtx_def*, %struct.rtx_def** %rtx1373, align 8
  %740 = bitcast %struct.rtx_def* %739 to i32*
  %bf.load1374 = load i32, i32* %740, align 8
  %bf.clear1375 = and i32 %bf.load1374, 65535
  %cmp1376 = icmp eq i32 %bf.clear1375, 141
  br i1 %cmp1376, label %if.then.1378, label %if.end.1379

if.then.1378:                                     ; preds = %land.lhs.true.1370
  %741 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %741, i32 1)
  br label %if.end.1379

if.end.1379:                                      ; preds = %if.then.1378, %land.lhs.true.1370, %for.body.1365
  br label %for.inc.1380

for.inc.1380:                                     ; preds = %if.end.1379
  %742 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %742, i32 0, i32 1
  %arrayidx1382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1381, i32 0, i64 2
  %rtx1383 = bitcast %union.rtunion_def* %arrayidx1382 to %struct.rtx_def**
  %743 = load %struct.rtx_def*, %struct.rtx_def** %rtx1383, align 8
  store %struct.rtx_def* %743, %struct.rtx_def** %insn, align 8
  br label %for.cond.1363

for.end.1384:                                     ; preds = %for.cond.1363
  %744 = load %struct.rtx_def*, %struct.rtx_def** %tail_call_insns, align 8
  store %struct.rtx_def* %744, %struct.rtx_def** %insn, align 8
  br label %for.cond.1385

for.cond.1385:                                    ; preds = %for.inc.1402, %for.end.1384
  %745 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1386 = icmp ne %struct.rtx_def* %745, null
  br i1 %tobool1386, label %for.body.1387, label %for.end.1406

for.body.1387:                                    ; preds = %for.cond.1385
  %746 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %747 = bitcast %struct.rtx_def* %746 to i32*
  %bf.load1388 = load i32, i32* %747, align 8
  %bf.clear1389 = and i32 %bf.load1388, 65535
  %cmp1390 = icmp eq i32 %bf.clear1389, 34
  br i1 %cmp1390, label %land.lhs.true.1392, label %if.end.1401

land.lhs.true.1392:                               ; preds = %for.body.1387
  %748 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %748, i32 0, i32 1
  %arrayidx1394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1393, i32 0, i64 3
  %rtx1395 = bitcast %union.rtunion_def* %arrayidx1394 to %struct.rtx_def**
  %749 = load %struct.rtx_def*, %struct.rtx_def** %rtx1395, align 8
  %750 = bitcast %struct.rtx_def* %749 to i32*
  %bf.load1396 = load i32, i32* %750, align 8
  %bf.clear1397 = and i32 %bf.load1396, 65535
  %cmp1398 = icmp eq i32 %bf.clear1397, 141
  br i1 %cmp1398, label %if.then.1400, label %if.end.1401

if.then.1400:                                     ; preds = %land.lhs.true.1392
  %751 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %751, i32 1)
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1400, %land.lhs.true.1392, %for.body.1387
  br label %for.inc.1402

for.inc.1402:                                     ; preds = %if.end.1401
  %752 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %752, i32 0, i32 1
  %arrayidx1404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1403, i32 0, i64 2
  %rtx1405 = bitcast %union.rtunion_def* %arrayidx1404 to %struct.rtx_def**
  %753 = load %struct.rtx_def*, %struct.rtx_def** %rtx1405, align 8
  store %struct.rtx_def* %753, %struct.rtx_def** %insn, align 8
  br label %for.cond.1385

for.end.1406:                                     ; preds = %for.cond.1385
  %754 = load %struct.rtx_def*, %struct.rtx_def** %tail_recursion_insns, align 8
  store %struct.rtx_def* %754, %struct.rtx_def** %insn, align 8
  br label %for.cond.1407

for.cond.1407:                                    ; preds = %for.inc.1424, %for.end.1406
  %755 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1408 = icmp ne %struct.rtx_def* %755, null
  br i1 %tobool1408, label %for.body.1409, label %for.end.1428

for.body.1409:                                    ; preds = %for.cond.1407
  %756 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %757 = bitcast %struct.rtx_def* %756 to i32*
  %bf.load1410 = load i32, i32* %757, align 8
  %bf.clear1411 = and i32 %bf.load1410, 65535
  %cmp1412 = icmp eq i32 %bf.clear1411, 34
  br i1 %cmp1412, label %land.lhs.true.1414, label %if.end.1423

land.lhs.true.1414:                               ; preds = %for.body.1409
  %758 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %758, i32 0, i32 1
  %arrayidx1416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1415, i32 0, i64 3
  %rtx1417 = bitcast %union.rtunion_def* %arrayidx1416 to %struct.rtx_def**
  %759 = load %struct.rtx_def*, %struct.rtx_def** %rtx1417, align 8
  %760 = bitcast %struct.rtx_def* %759 to i32*
  %bf.load1418 = load i32, i32* %760, align 8
  %bf.clear1419 = and i32 %bf.load1418, 65535
  %cmp1420 = icmp eq i32 %bf.clear1419, 141
  br i1 %cmp1420, label %if.then.1422, label %if.end.1423

if.then.1422:                                     ; preds = %land.lhs.true.1414
  %761 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @replace_call_placeholder(%struct.rtx_def* %761, i32 1)
  br label %if.end.1423

if.end.1423:                                      ; preds = %if.then.1422, %land.lhs.true.1414, %for.body.1409
  br label %for.inc.1424

for.inc.1424:                                     ; preds = %if.end.1423
  %762 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %762, i32 0, i32 1
  %arrayidx1426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1425, i32 0, i64 2
  %rtx1427 = bitcast %union.rtunion_def* %arrayidx1426 to %struct.rtx_def**
  %763 = load %struct.rtx_def*, %struct.rtx_def** %rtx1427, align 8
  store %struct.rtx_def* %763, %struct.rtx_def** %insn, align 8
  br label %for.cond.1407

for.end.1428:                                     ; preds = %for.cond.1407
  %764 = load %struct.rtx_def*, %struct.rtx_def** %tail_recursion_insns, align 8
  %tobool1429 = icmp ne %struct.rtx_def* %764, null
  br i1 %tobool1429, label %if.then.1432, label %lor.lhs.false.1430

lor.lhs.false.1430:                               ; preds = %for.end.1428
  %765 = load %struct.rtx_def*, %struct.rtx_def** %tail_call_insns, align 8
  %tobool1431 = icmp ne %struct.rtx_def* %765, null
  br i1 %tobool1431, label %if.then.1432, label %if.else.1442

if.then.1432:                                     ; preds = %lor.lhs.false.1430, %for.end.1428
  %766 = load %struct.rtx_def*, %struct.rtx_def** %tail_recursion_insns, align 8
  %tobool1433 = icmp ne %struct.rtx_def* %766, null
  br i1 %tobool1433, label %if.then.1434, label %if.end.1438

if.then.1434:                                     ; preds = %if.then.1432
  %767 = load %struct.function*, %struct.function** @cfun, align 8
  %x_tail_recursion_label = getelementptr inbounds %struct.function, %struct.function* %767, i32 0, i32 28
  %768 = load %struct.rtx_def*, %struct.rtx_def** %x_tail_recursion_label, align 8
  %769 = bitcast %struct.rtx_def* %768 to i32*
  %bf.load1435 = load i32, i32* %769, align 8
  %bf.clear1436 = and i32 %bf.load1435, -268435457
  %bf.set1437 = or i32 %bf.clear1436, 268435456
  store i32 %bf.set1437, i32* %769, align 8
  br label %if.end.1438

if.end.1438:                                      ; preds = %if.then.1434, %if.then.1432
  %770 = load %struct.rtx_def*, %struct.rtx_def** %normal_call_insns, align 8
  %771 = load %struct.rtx_def*, %struct.rtx_def** %tail_call_insns, align 8
  %772 = load %struct.rtx_def*, %struct.rtx_def** %tail_recursion_insns, align 8
  %773 = load %struct.function*, %struct.function** @cfun, align 8
  %x_tail_recursion_label1439 = getelementptr inbounds %struct.function, %struct.function* %773, i32 0, i32 28
  %774 = load %struct.rtx_def*, %struct.rtx_def** %x_tail_recursion_label1439, align 8
  %call1440 = call %struct.rtx_def* @gen_rtx_fmt_uuuu(i32 141, i32 0, %struct.rtx_def* %770, %struct.rtx_def* %771, %struct.rtx_def* %772, %struct.rtx_def* %774)
  %call1441 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %call1440)
  br label %if.end.1444

if.else.1442:                                     ; preds = %lor.lhs.false.1430
  %775 = load %struct.rtx_def*, %struct.rtx_def** %normal_call_insns, align 8
  %call1443 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %775)
  br label %if.end.1444

if.end.1444:                                      ; preds = %if.else.1442, %if.end.1438
  %776 = load i32, i32* @expand_call.currently_expanding_call, align 4
  %dec = add nsw i32 %776, -1
  store i32 %dec, i32* @expand_call.currently_expanding_call, align 4
  %777 = load i32, i32* %flags, align 4
  %and1445 = and i32 %777, 1024
  %tobool1446 = icmp ne i32 %and1445, 0
  br i1 %tobool1446, label %if.then.1447, label %if.end.1451

if.then.1447:                                     ; preds = %if.end.1444
  call void @clear_pending_stack_adjust()
  %778 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call1448 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 49, i32 0, %struct.rtx_def* %778)
  %call1449 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call1448)
  %779 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %780 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call1450 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %779, %struct.rtx_def* %780)
  call void @save_stack_pointer()
  br label %if.end.1451

if.end.1451:                                      ; preds = %if.then.1447, %if.end.1444
  %781 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %781, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.1451, %if.then.138
  %782 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %782
}

declare %union.tree_node* @get_callee_fndecl(%union.tree_node*) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

declare void @warning(i8*, ...) #1

declare i32 @mark_addressable(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flags_from_decl_or_type(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %flags = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 0, i32* %flags, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %type, align 8
  %1 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.then, label %if.end.43

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common2 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type3, align 8
  store %union.tree_node* %4, %union.tree_node** %type, align 8
  %5 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %idxprom8 = sext i32 %bf.clear7 to i64
  %arrayidx9 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom8
  %6 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %cmp11 = icmp eq i32 %conv10, 100
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %malloc_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %8 = bitcast i48* %malloc_flag to i64*
  %bf.load13 = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load13, 27
  %bf.clear14 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear14 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %9 = load i32, i32* %flags, align 4
  %or = or i32 %9, 4
  store i32 %or, i32* %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common16 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load18 = load i32, i32* %code17, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %idxprom20 = sext i32 %bf.clear19 to i64
  %arrayidx21 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom20
  %11 = load i8, i8* %arrayidx21, align 1
  %conv22 = sext i8 %11 to i32
  %cmp23 = icmp eq i32 %conv22, 100
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl26 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %pure_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 5
  %13 = bitcast i48* %pure_flag to i64*
  %bf.load27 = load i64, i64* %13, align 8
  %bf.lshr28 = lshr i64 %bf.load27, 31
  %bf.clear29 = and i64 %bf.lshr28, 1
  %bf.cast30 = trunc i64 %bf.clear29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.25
  %14 = load i32, i32* %flags, align 4
  %or33 = or i32 %14, 4608
  store i32 %or33, i32* %flags, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.25, %if.end
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common35 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %nothrow_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load36 = load i32, i32* %nothrow_flag, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 17
  %bf.clear38 = and i32 %bf.lshr37, 1
  %tobool39 = icmp ne i32 %bf.clear38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.end.34
  %16 = load i32, i32* %flags, align 4
  %or41 = or i32 %16, 16
  store i32 %or41, i32* %flags, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.end.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %entry
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common44 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load45 = load i32, i32* %readonly_flag, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 12
  %bf.clear47 = and i32 %bf.lshr46, 1
  %tobool48 = icmp ne i32 %bf.clear47, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.57

land.lhs.true.49:                                 ; preds = %if.end.43
  %18 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common50 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load51 = load i32, i32* %volatile_flag, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 11
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %if.end.57, label %if.then.55

if.then.55:                                       ; preds = %land.lhs.true.49
  %19 = load i32, i32* %flags, align 4
  %or56 = or i32 %19, 4097
  store i32 %or56, i32* %flags, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.55, %land.lhs.true.49, %if.end.43
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common58 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %volatile_flag59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 2
  %bf.load60 = load i32, i32* %volatile_flag59, align 8
  %bf.lshr61 = lshr i32 %bf.load60, 11
  %bf.clear62 = and i32 %bf.lshr61, 1
  %tobool63 = icmp ne i32 %bf.clear62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.end.57
  %21 = load i32, i32* %flags, align 4
  %or65 = or i32 %21, 2
  store i32 %or65, i32* %flags, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.end.57
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common67 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 2
  %bf.load69 = load i32, i32* %code68, align 8
  %bf.clear70 = and i32 %bf.load69, 255
  %cmp71 = icmp eq i32 %bf.clear70, 23
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %if.end.66
  %23 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type74 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type74, i32 0, i32 6
  %bf.load75 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr76 = lshr i32 %bf.load75, 17
  %bf.clear77 = and i32 %bf.lshr76, 1
  %tobool78 = icmp ne i32 %bf.clear77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.81

if.then.79:                                       ; preds = %land.lhs.true.73
  %24 = load i32, i32* %flags, align 4
  %or80 = or i32 %24, 1024
  store i32 %or80, i32* %flags, align 4
  %25 = load i32, i32* %flags, align 4
  %and = and i32 %25, -4610
  store i32 %and, i32* %flags, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.79, %land.lhs.true.73, %if.end.66
  %26 = load i32, i32* %flags, align 4
  ret i32 %26
}

declare i32 @aggregate_value_p(%union.tree_node*) #1

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare %struct.rtx_def* @assign_temp(%union.tree_node*, i32, i32, i32) #1

declare void @mark_temp_addr_taken(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @try_to_integrate(%union.tree_node* %fndecl, %union.tree_node* %actparms, %struct.rtx_def* %target, i32 %ignore, %union.tree_node* %type, %struct.rtx_def* %structure_value_addr) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %actparms.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %ignore.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %structure_value_addr.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %before_call = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %old_stack_level = alloca %struct.rtx_def*, align 8
  %reg_parm_stack_space = alloca i32, align 4
  %first_insn = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %adjust = alloca i32, align 4
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %actparms, %union.tree_node** %actparms.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %ignore, i32* %ignore.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %struct.rtx_def* %structure_value_addr, %struct.rtx_def** %structure_value_addr.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %old_stack_level, align 8
  store i32 0, i32* %reg_parm_stack_space, align 4
  store i32 0, i32* %reg_parm_stack_space, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %before_call, align 8
  call void @timevar_push(i32 12)
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %actparms.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %3 = load i32, i32* %ignore.addr, align 4
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %call1 = call %struct.rtx_def* @expand_inline_function(%union.tree_node* %0, %union.tree_node* %1, %struct.rtx_def* %2, i32 %3, %union.tree_node* %4, %struct.rtx_def* %5)
  store %struct.rtx_def* %call1, %struct.rtx_def** %temp, align 8
  call void @timevar_pop(i32 12)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp = icmp ne %struct.rtx_def* %6, inttoptr (i64 -1 to %struct.rtx_def*)
  br i1 %cmp, label %if.then, label %if.end.52

if.then:                                          ; preds = %entry
  %7 = load i32, i32* @target_flags, align 4
  %and = and i32 %7, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.2, label %if.end.44

if.then.2:                                        ; preds = %if.then
  %8 = load i32, i32* %reg_parm_stack_space, align 4
  %sub = sub nsw i32 %8, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %9 = load i32, i32* %i, align 4
  %cmp3 = icmp sge i32 %9, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %cmp4 = icmp slt i32 %10, %11
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp5 = icmp ne i32 %conv, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  %16 = load i32, i32* @stack_arg_under_construction, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %17 = load i32, i32* %i, align 4
  %cmp9 = icmp sge i32 %17, 0
  br i1 %cmp9, label %if.then.11, label %if.end.43

if.then.11:                                       ; preds = %lor.lhs.false, %for.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %before_call, align 8
  %tobool12 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.11
  %19 = load %struct.rtx_def*, %struct.rtx_def** %before_call, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.11
  %call14 = call %struct.rtx_def* @get_insns()
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %20, %cond.true ], [ %call14, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %first_insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %insn, align 8
  %21 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %22 = load %struct.function*, %struct.function** %f, align 8
  %outgoing_args_size = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 11
  %23 = load i32, i32* %outgoing_args_size, align 4
  %cmp15 = icmp eq i32 %23, 0
  br i1 %cmp15, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %cond.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %first_insn, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.25, %if.then.17
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool19 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool19, label %for.body.20, label %for.end.29

for.body.20:                                      ; preds = %for.cond.18
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp21 = icmp eq i32 %bf.clear, 34
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.20
  br label %for.end.29

if.end.24:                                        ; preds = %for.body.20
  br label %for.inc.25

for.inc.25:                                       ; preds = %if.end.24
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 2
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %insn, align 8
  br label %for.cond.18

for.end.29:                                       ; preds = %if.then.23, %for.cond.18
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %cond.end
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool31 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool31, label %if.then.32, label %if.end.42

if.then.32:                                       ; preds = %if.end.30
  %31 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl33 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %u234 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl33, i32 0, i32 19
  %f35 = bitcast %union.anon.1* %u234 to %struct.function**
  %32 = load %struct.function*, %struct.function** %f35, align 8
  %outgoing_args_size36 = getelementptr inbounds %struct.function, %struct.function* %32, i32 0, i32 11
  %33 = load i32, i32* %outgoing_args_size36, align 4
  %34 = load i32, i32* %reg_parm_stack_space, align 4
  %add = add nsw i32 %33, %34
  store i32 %add, i32* %adjust, align 4
  call void @start_sequence()
  call void @emit_stack_save(i32 0, %struct.rtx_def** %old_stack_level, %struct.rtx_def* null)
  %35 = load i32, i32* %adjust, align 4
  %conv37 = sext i32 %35 to i64
  %call38 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv37)
  %call39 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %call38, %struct.rtx_def* null, i32 8)
  %call40 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call40, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %36 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %first_insn, align 8
  %call41 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %36, %struct.rtx_def* %37)
  %38 = load %struct.rtx_def*, %struct.rtx_def** %old_stack_level, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %38, %struct.rtx_def* null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.32, %if.end.30
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then
  %39 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp45 = icmp ne %struct.rtx_def* %39, %40
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.51

land.lhs.true.47:                                 ; preds = %if.end.44
  %41 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call48 = call i32 @rtx_equal_p(%struct.rtx_def* %41, %struct.rtx_def* %42)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  %43 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.47, %if.end.44
  %44 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %retval
  br label %return

if.end.52:                                        ; preds = %entry
  %45 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl53 = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 5
  %46 = bitcast i48* %inline_flag to i64*
  %bf.load54 = load i64, i64* %46, align 8
  %bf.lshr = lshr i64 %bf.load54, 11
  %bf.clear55 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear55 to i32
  %tobool56 = icmp ne i32 %bf.cast, 0
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %if.end.52
  %47 = load i32, i32* @warn_inline, align 4
  %tobool58 = icmp ne i32 %47, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.70

land.lhs.true.59:                                 ; preds = %land.lhs.true.57
  %48 = load i32, i32* @flag_no_inline, align 4
  %tobool60 = icmp ne i32 %48, 0
  br i1 %tobool60, label %if.end.70, label %land.lhs.true.61

land.lhs.true.61:                                 ; preds = %land.lhs.true.59
  %49 = load i32, i32* @optimize, align 4
  %cmp62 = icmp sgt i32 %49, 0
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.70

land.lhs.true.64:                                 ; preds = %land.lhs.true.61
  %50 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common = bitcast %union.tree_node* %50 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load65 = load i32, i32* %addressable_flag, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 10
  %bf.clear67 = and i32 %bf.lshr66, 1
  %tobool68 = icmp ne i32 %bf.clear67, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %land.lhs.true.64
  %51 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0))
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.64, %land.lhs.true.61, %land.lhs.true.59, %land.lhs.true.57, %if.end.52
  %52 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call71 = call i32 @mark_addressable(%union.tree_node* %52)
  store %struct.rtx_def* inttoptr (i64 -1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.end.51, %if.then.50
  %53 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %53
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def*) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @make_tree(%union.tree_node*, %struct.rtx_def*) #1

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare void @init_cumulative_args(%struct.ix86_args*, %union.tree_node*, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @initialize_argument_information(i32 %num_actuals, %struct.arg_data* %args, %struct.args_size* %args_size, i32 %n_named_args, %union.tree_node* %actparms, %union.tree_node* %fndecl, %struct.ix86_args* %args_so_far, i32 %reg_parm_stack_space, %struct.rtx_def** %old_stack_level, i32* %old_pending_adj, i32* %must_preallocate, i32* %ecf_flags) #0 {
entry:
  %num_actuals.addr = alloca i32, align 4
  %args.addr = alloca %struct.arg_data*, align 8
  %args_size.addr = alloca %struct.args_size*, align 8
  %n_named_args.addr = alloca i32, align 4
  %actparms.addr = alloca %union.tree_node*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %args_so_far.addr = alloca %struct.ix86_args*, align 8
  %reg_parm_stack_space.addr = alloca i32, align 4
  %old_stack_level.addr = alloca %struct.rtx_def**, align 8
  %old_pending_adj.addr = alloca i32*, align 8
  %must_preallocate.addr = alloca i32*, align 8
  %ecf_flags.addr = alloca i32*, align 8
  %inc = alloca i32, align 4
  %argpos = alloca i32, align 4
  %alignment_pad = alloca %struct.args_size, align 8
  %i = alloca i32, align 4
  %p = alloca %union.tree_node*, align 8
  %type = alloca %union.tree_node*, align 8
  %unsignedp = alloca i32, align 4
  %mode = alloca i32, align 4
  %copy = alloca %struct.rtx_def*, align 8
  %size_rtx = alloca %struct.rtx_def*, align 8
  %inc414 = alloca %union.tree_node*, align 8
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store %struct.args_size* %args_size, %struct.args_size** %args_size.addr, align 8
  store i32 %n_named_args, i32* %n_named_args.addr, align 4
  store %union.tree_node* %actparms, %union.tree_node** %actparms.addr, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %struct.ix86_args* %args_so_far, %struct.ix86_args** %args_so_far.addr, align 8
  store i32 %reg_parm_stack_space, i32* %reg_parm_stack_space.addr, align 4
  store %struct.rtx_def** %old_stack_level, %struct.rtx_def*** %old_stack_level.addr, align 8
  store i32* %old_pending_adj, i32** %old_pending_adj.addr, align 8
  store i32* %must_preallocate, i32** %must_preallocate.addr, align 8
  store i32* %ecf_flags, i32** %ecf_flags.addr, align 8
  %0 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %0, i32 0, i32 0
  store i64 0, i64* %constant, align 8
  %1 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %1, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %var, align 8
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %3, 4096
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %num_actuals.addr, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %i, align 4
  store i32 -1, i32* %inc, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %i, align 4
  store i32 1, i32* %inc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %union.tree_node*, %union.tree_node** %actparms.addr, align 8
  store %union.tree_node* %5, %union.tree_node** %p, align 8
  store i32 0, i32* %argpos, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %union.tree_node*, %union.tree_node** %p, align 8
  %tobool3 = icmp ne %union.tree_node* %6, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %union.tree_node*, %union.tree_node** %p, align 8
  %list = bitcast %union.tree_node* %7 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type4, align 8
  store %union.tree_node* %9, %union.tree_node** %type, align 8
  %10 = load %union.tree_node*, %union.tree_node** %p, align 8
  %list5 = bitcast %union.tree_node* %10 to %struct.tree_list*
  %value6 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list5, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %value6, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_data, %struct.arg_data* %13, i64 %idxprom
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx, i32 0, i32 0
  store %union.tree_node* %11, %union.tree_node** %tree_value, align 8
  %14 = load %union.tree_node*, %union.tree_node** %type, align 8
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %14, %15
  br i1 %cmp, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type7 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 2
  %17 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp8 = icmp ne %union.tree_node* %17, null
  br i1 %cmp8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %lor.lhs.false, %for.body
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %20, i64 %idxprom10
  %tree_value12 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx11, i32 0, i32 0
  store %union.tree_node* %18, %union.tree_node** %tree_value12, align 8
  %21 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  store %union.tree_node* %21, %union.tree_node** %type, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %lor.lhs.false
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common14 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp15 = icmp eq i32 %bf.clear, 21
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.25

land.lhs.true.16:                                 ; preds = %if.end.13
  %23 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type17 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type17, i32 0, i32 6
  %bf.load18 = load i32, i32* %transparent_union_flag, align 4
  %bf.lshr = lshr i32 %bf.load18, 19
  %bf.clear19 = and i32 %bf.lshr, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %land.lhs.true.16
  %24 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type22 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %values, align 8
  %common23 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %type24, align 8
  store %union.tree_node* %26, %union.tree_node** %type, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %land.lhs.true.16, %if.end.13
  %27 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type26 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %size27 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 2
  %28 = load %union.tree_node*, %union.tree_node** %size27, align 8
  %common28 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %code29, align 8
  %bf.clear31 = and i32 %bf.load30, 255
  %cmp32 = icmp ne i32 %bf.clear31, 25
  br i1 %cmp32, label %land.lhs.true.33, label %lor.lhs.false.37

land.lhs.true.33:                                 ; preds = %if.end.25
  %29 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type34 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %size35 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type34, i32 0, i32 2
  %30 = load %union.tree_node*, %union.tree_node** %size35, align 8
  %call = call i32 @contains_placeholder_p(%union.tree_node* %30)
  %tobool36 = icmp ne i32 %call, 0
  br i1 %tobool36, label %if.then.43, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.33, %if.end.25
  %31 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common38 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load39 = load i32, i32* %addressable_flag, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 10
  %bf.clear41 = and i32 %bf.lshr40, 1
  %tobool42 = icmp ne i32 %bf.clear41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.200

if.then.43:                                       ; preds = %lor.lhs.false.37, %land.lhs.true.33
  %32 = load %struct.function*, %struct.function** @cfun, align 8
  %is_thunk = getelementptr inbounds %struct.function, %struct.function* %32, i32 0, i32 56
  %33 = bitcast i24* %is_thunk to i32*
  %bf.load44 = load i32, i32* %33, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 12
  %bf.clear46 = and i32 %bf.lshr45, 1
  %tobool47 = icmp ne i32 %bf.clear46, 0
  br i1 %tobool47, label %if.then.48, label %if.else.124

if.then.48:                                       ; preds = %if.then.43
  %34 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %35, i64 %idxprom49
  %tree_value51 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx50, i32 0, i32 0
  %36 = load %union.tree_node*, %union.tree_node** %tree_value51, align 8
  %common52 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code53 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 2
  %bf.load54 = load i32, i32* %code53, align 8
  %bf.clear55 = and i32 %bf.load54, 255
  %cmp56 = icmp eq i32 %bf.clear55, 50
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.114

land.lhs.true.57:                                 ; preds = %if.then.48
  %37 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %37 to i64
  %38 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %38, i64 %idxprom58
  %tree_value60 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx59, i32 0, i32 0
  %39 = load %union.tree_node*, %union.tree_node** %tree_value60, align 8
  %exp = bitcast %union.tree_node* %39 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %40 = load %union.tree_node*, %union.tree_node** %arrayidx61, align 8
  %common62 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %code63, align 8
  %bf.clear65 = and i32 %bf.load64, 255
  %idxprom66 = sext i32 %bf.clear65 to i64
  %arrayidx67 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom66
  %41 = load i8, i8* %arrayidx67, align 1
  %conv = sext i8 %41 to i32
  %cmp68 = icmp eq i32 %conv, 100
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.114

land.lhs.true.70:                                 ; preds = %land.lhs.true.57
  %42 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %42 to i64
  %43 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx72 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %43, i64 %idxprom71
  %tree_value73 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx72, i32 0, i32 0
  %44 = load %union.tree_node*, %union.tree_node** %tree_value73, align 8
  %exp74 = bitcast %union.tree_node* %44 to %struct.tree_exp*
  %operands75 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp74, i32 0, i32 2
  %arrayidx76 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands75, i32 0, i64 1
  %45 = load %union.tree_node*, %union.tree_node** %arrayidx76, align 8
  %decl = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool77 = icmp ne %struct.rtx_def* %46, null
  br i1 %tobool77, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.70
  %47 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %47 to i64
  %48 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx79 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %48, i64 %idxprom78
  %tree_value80 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx79, i32 0, i32 0
  %49 = load %union.tree_node*, %union.tree_node** %tree_value80, align 8
  %exp81 = bitcast %union.tree_node* %49 to %struct.tree_exp*
  %operands82 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp81, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands82, i32 0, i64 1
  %50 = load %union.tree_node*, %union.tree_node** %arrayidx83, align 8
  %decl84 = bitcast %union.tree_node* %50 to %struct.tree_decl*
  %rtl85 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl84, i32 0, i32 17
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtl85, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.70
  %52 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %52 to i64
  %53 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx87 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %idxprom86
  %tree_value88 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx87, i32 0, i32 0
  %54 = load %union.tree_node*, %union.tree_node** %tree_value88, align 8
  %exp89 = bitcast %union.tree_node* %54 to %struct.tree_exp*
  %operands90 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp89, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands90, i32 0, i64 1
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx91, align 8
  call void @make_decl_rtl(%union.tree_node* %55, i8* null)
  %56 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %56 to i64
  %57 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %57, i64 %idxprom92
  %tree_value94 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx93, i32 0, i32 0
  %58 = load %union.tree_node*, %union.tree_node** %tree_value94, align 8
  %exp95 = bitcast %union.tree_node* %58 to %struct.tree_exp*
  %operands96 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp95, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands96, i32 0, i64 1
  %59 = load %union.tree_node*, %union.tree_node** %arrayidx97, align 8
  %decl98 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %rtl99 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl98, i32 0, i32 17
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtl99, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %51, %cond.true ], [ %60, %cond.false ]
  %61 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load100 = load i32, i32* %61, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 61
  br i1 %cmp102, label %if.end.114, label %if.then.104

if.then.104:                                      ; preds = %cond.end
  %62 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %62 to i64
  %63 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %63, i64 %idxprom105
  %tree_value107 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx106, i32 0, i32 0
  %64 = load %union.tree_node*, %union.tree_node** %tree_value107, align 8
  %exp108 = bitcast %union.tree_node* %64 to %struct.tree_exp*
  %operands109 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp108, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands109, i32 0, i64 1
  %65 = load %union.tree_node*, %union.tree_node** %arrayidx110, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %66 to i64
  %67 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %67, i64 %idxprom111
  %tree_value113 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx112, i32 0, i32 0
  store %union.tree_node* %65, %union.tree_node** %tree_value113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.104, %cond.end, %land.lhs.true.57, %if.then.48
  %68 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call115 = call %union.tree_node* @build_pointer_type(%union.tree_node* %68)
  %69 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %69 to i64
  %70 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx117 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %70, i64 %idxprom116
  %tree_value118 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx117, i32 0, i32 0
  %71 = load %union.tree_node*, %union.tree_node** %tree_value118, align 8
  %call119 = call %union.tree_node* @build1(i32 121, %union.tree_node* %call115, %union.tree_node* %71)
  %72 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %72 to i64
  %73 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx121 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %73, i64 %idxprom120
  %tree_value122 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx121, i32 0, i32 0
  store %union.tree_node* %call119, %union.tree_node** %tree_value122, align 8
  %74 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call123 = call %union.tree_node* @build_pointer_type(%union.tree_node* %74)
  store %union.tree_node* %call123, %union.tree_node** %type, align 8
  br label %if.end.199

if.else.124:                                      ; preds = %if.then.43
  %75 = load i32, i32* %i, align 4
  %idxprom125 = sext i32 %75 to i64
  %76 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx126 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %76, i64 %idxprom125
  %tree_value127 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx126, i32 0, i32 0
  %77 = load %union.tree_node*, %union.tree_node** %tree_value127, align 8
  %common128 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %code129 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common128, i32 0, i32 2
  %bf.load130 = load i32, i32* %code129, align 8
  %bf.clear131 = and i32 %bf.load130, 255
  %cmp132 = icmp eq i32 %bf.clear131, 50
  br i1 %cmp132, label %if.then.134, label %if.else.144

if.then.134:                                      ; preds = %if.else.124
  %78 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call135 = call %union.tree_node* @build_pointer_type(%union.tree_node* %78)
  %79 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %79 to i64
  %80 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i64 %idxprom136
  %tree_value138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx137, i32 0, i32 0
  %81 = load %union.tree_node*, %union.tree_node** %tree_value138, align 8
  %call139 = call %union.tree_node* @build1(i32 121, %union.tree_node* %call135, %union.tree_node* %81)
  %82 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %82 to i64
  %83 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %83, i64 %idxprom140
  %tree_value142 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx141, i32 0, i32 0
  store %union.tree_node* %call139, %union.tree_node** %tree_value142, align 8
  %84 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call143 = call %union.tree_node* @build_pointer_type(%union.tree_node* %84)
  store %union.tree_node* %call143, %union.tree_node** %type, align 8
  br label %if.end.198

if.else.144:                                      ; preds = %if.else.124
  %85 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type145 = bitcast %union.tree_node* %85 to %struct.tree_type*
  %size146 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type145, i32 0, i32 2
  %86 = load %union.tree_node*, %union.tree_node** %size146, align 8
  %cmp147 = icmp ne %union.tree_node* %86, null
  br i1 %cmp147, label %lor.lhs.false.149, label %if.then.170

lor.lhs.false.149:                                ; preds = %if.else.144
  %87 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type150 = bitcast %union.tree_node* %87 to %struct.tree_type*
  %size151 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type150, i32 0, i32 2
  %88 = load %union.tree_node*, %union.tree_node** %size151, align 8
  %common152 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %code153 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common152, i32 0, i32 2
  %bf.load154 = load i32, i32* %code153, align 8
  %bf.clear155 = and i32 %bf.load154, 255
  %cmp156 = icmp ne i32 %bf.clear155, 25
  br i1 %cmp156, label %if.then.170, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %lor.lhs.false.149
  %89 = load i32, i32* @flag_stack_check, align 4
  %tobool159 = icmp ne i32 %89, 0
  br i1 %tobool159, label %land.lhs.true.160, label %if.else.183

land.lhs.true.160:                                ; preds = %lor.lhs.false.158
  %90 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type161 = bitcast %union.tree_node* %90 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type161, i32 0, i32 3
  %91 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %92 = load i32, i32* @target_flags, align 4
  %and162 = and i32 %92, 33554432
  %tobool163 = icmp ne i32 %and162, 0
  %cond164 = select i1 %tobool163, i32 8, i32 4
  %sub165 = sub nsw i32 4096, %cond164
  %div = sdiv i32 %sub165, 100
  %conv166 = sext i32 %div to i64
  %call167 = call i32 @compare_tree_int(%union.tree_node* %91, i64 %conv166)
  %cmp168 = icmp slt i32 0, %call167
  br i1 %cmp168, label %if.then.170, label %if.else.183

if.then.170:                                      ; preds = %land.lhs.true.160, %lor.lhs.false.149, %if.else.144
  %93 = load %union.tree_node*, %union.tree_node** %p, align 8
  %list171 = bitcast %union.tree_node* %93 to %struct.tree_list*
  %value172 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list171, i32 0, i32 2
  %94 = load %union.tree_node*, %union.tree_node** %value172, align 8
  %call173 = call %struct.rtx_def* @expr_size(%union.tree_node* %94)
  store %struct.rtx_def* %call173, %struct.rtx_def** %size_rtx, align 8
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %old_stack_level.addr, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %95, align 8
  %cmp174 = icmp eq %struct.rtx_def* %96, null
  br i1 %cmp174, label %if.then.176, label %if.end.179

if.then.176:                                      ; preds = %if.then.170
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %old_stack_level.addr, align 8
  call void @emit_stack_save(i32 0, %struct.rtx_def** %97, %struct.rtx_def* null)
  %98 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %98, i32 0, i32 2
  %99 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_pending_stack_adjust = getelementptr inbounds %struct.expr_status, %struct.expr_status* %99, i32 0, i32 0
  %100 = load i32, i32* %x_pending_stack_adjust, align 4
  %101 = load i32*, i32** %old_pending_adj.addr, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.function*, %struct.function** @cfun, align 8
  %expr177 = getelementptr inbounds %struct.function, %struct.function* %102, i32 0, i32 2
  %103 = load %struct.expr_status*, %struct.expr_status** %expr177, align 8
  %x_pending_stack_adjust178 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %103, i32 0, i32 0
  store i32 0, i32* %x_pending_stack_adjust178, align 4
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.176, %if.then.170
  %104 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx, align 8
  %105 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type180 = bitcast %union.tree_node* %105 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type180, i32 0, i32 7
  %106 = load i32, i32* %align, align 4
  %call181 = call %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %104, %struct.rtx_def* null, i32 %106)
  %call182 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %call181)
  store %struct.rtx_def* %call182, %struct.rtx_def** %copy, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %108 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @set_mem_attributes(%struct.rtx_def* %107, %union.tree_node* %108, i32 1)
  br label %if.end.185

if.else.183:                                      ; preds = %land.lhs.true.160, %lor.lhs.false.158
  %109 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call184 = call %struct.rtx_def* @assign_temp(%union.tree_node* %109, i32 0, i32 1, i32 0)
  store %struct.rtx_def* %call184, %struct.rtx_def** %copy, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.183, %if.end.179
  %110 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %110 to i64
  %111 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx187 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %111, i64 %idxprom186
  %tree_value188 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx187, i32 0, i32 0
  %112 = load %union.tree_node*, %union.tree_node** %tree_value188, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call189 = call %struct.rtx_def* @store_expr(%union.tree_node* %112, %struct.rtx_def* %113, i32 0)
  %114 = load i32*, i32** %ecf_flags.addr, align 8
  %115 = load i32, i32* %114, align 4
  %and190 = and i32 %115, -4610
  store i32 %and190, i32* %114, align 4
  %116 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call191 = call %union.tree_node* @build_pointer_type(%union.tree_node* %116)
  %117 = load %union.tree_node*, %union.tree_node** %type, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call192 = call %union.tree_node* @make_tree(%union.tree_node* %117, %struct.rtx_def* %118)
  %call193 = call %union.tree_node* @build1(i32 121, %union.tree_node* %call191, %union.tree_node* %call192)
  %119 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %119 to i64
  %120 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx195 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %120, i64 %idxprom194
  %tree_value196 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx195, i32 0, i32 0
  store %union.tree_node* %call193, %union.tree_node** %tree_value196, align 8
  %121 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call197 = call %union.tree_node* @build_pointer_type(%union.tree_node* %121)
  store %union.tree_node* %call197, %union.tree_node** %type, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.185, %if.then.134
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.end.114
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %lor.lhs.false.37
  %122 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type201 = bitcast %union.tree_node* %122 to %struct.tree_type*
  %mode202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type201, i32 0, i32 6
  %bf.load203 = load i32, i32* %mode202, align 4
  %bf.lshr204 = lshr i32 %bf.load203, 9
  %bf.clear205 = and i32 %bf.lshr204, 127
  store i32 %bf.clear205, i32* %mode, align 4
  %123 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common206 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common206, i32 0, i32 2
  %bf.load207 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr208 = lshr i32 %bf.load207, 13
  %bf.clear209 = and i32 %bf.lshr208, 1
  store i32 %bf.clear209, i32* %unsignedp, align 4
  %124 = load i32, i32* %unsignedp, align 4
  %125 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %125 to i64
  %126 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx211 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %126, i64 %idxprom210
  %unsignedp212 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx211, i32 0, i32 6
  store i32 %124, i32* %unsignedp212, align 4
  %127 = load i32, i32* %mode, align 4
  %128 = load i32, i32* %i, align 4
  %idxprom213 = sext i32 %128 to i64
  %129 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx214 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %129, i64 %idxprom213
  %mode215 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx214, i32 0, i32 1
  store i32 %127, i32* %mode215, align 4
  %130 = load %struct.ix86_args*, %struct.ix86_args** %args_so_far.addr, align 8
  %131 = load i32, i32* %mode, align 4
  %132 = load %union.tree_node*, %union.tree_node** %type, align 8
  %133 = load i32, i32* %argpos, align 4
  %134 = load i32, i32* %n_named_args.addr, align 4
  %cmp216 = icmp slt i32 %133, %134
  %conv217 = zext i1 %cmp216 to i32
  %call218 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %130, i32 %131, %union.tree_node* %132, i32 %conv217)
  %135 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %135 to i64
  %136 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx220 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %136, i64 %idxprom219
  %reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx220, i32 0, i32 4
  store %struct.rtx_def* %call218, %struct.rtx_def** %reg, align 8
  %137 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %137 to i64
  %138 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx222 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %138, i64 %idxprom221
  %reg223 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx222, i32 0, i32 4
  %139 = load %struct.rtx_def*, %struct.rtx_def** %reg223, align 8
  %140 = load i32, i32* %i, align 4
  %idxprom224 = sext i32 %140 to i64
  %141 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx225 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %141, i64 %idxprom224
  %tail_call_reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx225, i32 0, i32 5
  store %struct.rtx_def* %139, %struct.rtx_def** %tail_call_reg, align 8
  %142 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %142 to i64
  %143 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx227 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %143, i64 %idxprom226
  %reg228 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx227, i32 0, i32 4
  %144 = load %struct.rtx_def*, %struct.rtx_def** %reg228, align 8
  %tobool229 = icmp ne %struct.rtx_def* %144, null
  br i1 %tobool229, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %if.end.200
  %145 = load i32, i32* %i, align 4
  %idxprom231 = sext i32 %145 to i64
  %146 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx232 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %146, i64 %idxprom231
  %partial = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx232, i32 0, i32 7
  store i32 0, i32* %partial, align 4
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %if.end.200
  %147 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp234 = icmp ne %union.tree_node* %147, null
  br i1 %cmp234, label %land.rhs, label %land.end.278

land.rhs:                                         ; preds = %if.end.233
  %148 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type236 = bitcast %union.tree_node* %148 to %struct.tree_type*
  %size237 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type236, i32 0, i32 2
  %149 = load %union.tree_node*, %union.tree_node** %size237, align 8
  %common238 = bitcast %union.tree_node* %149 to %struct.tree_common*
  %code239 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common238, i32 0, i32 2
  %bf.load240 = load i32, i32* %code239, align 8
  %bf.clear241 = and i32 %bf.load240, 255
  %cmp242 = icmp ne i32 %bf.clear241, 25
  br i1 %cmp242, label %lor.end, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %land.rhs
  %150 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common245 = bitcast %union.tree_node* %150 to %struct.tree_common*
  %addressable_flag246 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common245, i32 0, i32 2
  %bf.load247 = load i32, i32* %addressable_flag246, align 8
  %bf.lshr248 = lshr i32 %bf.load247, 10
  %bf.clear249 = and i32 %bf.lshr248, 1
  %tobool250 = icmp ne i32 %bf.clear249, 0
  br i1 %tobool250, label %lor.end, label %lor.lhs.false.251

lor.lhs.false.251:                                ; preds = %lor.lhs.false.244
  %151 = load i32, i32* %mode, align 4
  %cmp252 = icmp eq i32 %151, 6
  br i1 %cmp252, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.251
  %152 = load i32, i32* %mode, align 4
  %cmp254 = icmp eq i32 %152, 51
  br i1 %cmp254, label %land.lhs.true.256, label %land.end

land.lhs.true.256:                                ; preds = %lor.rhs
  %153 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp257 = icmp ne %union.tree_node* %153, null
  br i1 %cmp257, label %land.lhs.true.259, label %land.rhs.277

land.lhs.true.259:                                ; preds = %land.lhs.true.256
  %154 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type260 = bitcast %union.tree_node* %154 to %struct.tree_type*
  %size261 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type260, i32 0, i32 2
  %155 = load %union.tree_node*, %union.tree_node** %size261, align 8
  %common262 = bitcast %union.tree_node* %155 to %struct.tree_common*
  %code263 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common262, i32 0, i32 2
  %bf.load264 = load i32, i32* %code263, align 8
  %bf.clear265 = and i32 %bf.load264, 255
  %cmp266 = icmp eq i32 %bf.clear265, 25
  br i1 %cmp266, label %land.lhs.true.268, label %land.rhs.277

land.lhs.true.268:                                ; preds = %land.lhs.true.259
  %156 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call269 = call i64 @int_size_in_bytes(%union.tree_node* %156)
  %157 = load i32, i32* @target_flags, align 4
  %and270 = and i32 %157, 33554432
  %tobool271 = icmp ne i32 %and270, 0
  %cond272 = select i1 %tobool271, i32 64, i32 32
  %div273 = sdiv i32 %cond272, 8
  %conv274 = sext i32 %div273 to i64
  %rem = srem i64 %call269, %conv274
  %cmp275 = icmp eq i64 0, %rem
  br i1 %cmp275, label %land.end, label %land.rhs.277

land.rhs.277:                                     ; preds = %land.lhs.true.268, %land.lhs.true.259, %land.lhs.true.256
  br label %land.end

land.end:                                         ; preds = %land.rhs.277, %land.lhs.true.268, %lor.rhs
  %158 = phi i1 [ false, %land.lhs.true.268 ], [ false, %lor.rhs ], [ false, %land.rhs.277 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.251, %lor.lhs.false.244, %land.rhs
  %159 = phi i1 [ true, %lor.lhs.false.251 ], [ true, %lor.lhs.false.244 ], [ true, %land.rhs ], [ %158, %land.end ]
  br label %land.end.278

land.end.278:                                     ; preds = %lor.end, %if.end.233
  %160 = phi i1 [ false, %if.end.233 ], [ %159, %lor.end ]
  %land.ext = zext i1 %160 to i32
  %161 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %161 to i64
  %162 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx280 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %162, i64 %idxprom279
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx280, i32 0, i32 8
  store i32 %land.ext, i32* %pass_on_stack, align 4
  %163 = load i32, i32* %i, align 4
  %idxprom281 = sext i32 %163 to i64
  %164 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx282 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %164, i64 %idxprom281
  %reg283 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx282, i32 0, i32 4
  %165 = load %struct.rtx_def*, %struct.rtx_def** %reg283, align 8
  %tobool284 = icmp ne %struct.rtx_def* %165, null
  br i1 %tobool284, label %land.lhs.true.285, label %if.end.307

land.lhs.true.285:                                ; preds = %land.end.278
  %166 = load i32, i32* %i, align 4
  %idxprom286 = sext i32 %166 to i64
  %167 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx287 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %167, i64 %idxprom286
  %reg288 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx287, i32 0, i32 4
  %168 = load %struct.rtx_def*, %struct.rtx_def** %reg288, align 8
  %169 = bitcast %struct.rtx_def* %168 to i32*
  %bf.load289 = load i32, i32* %169, align 8
  %bf.clear290 = and i32 %bf.load289, 65535
  %cmp291 = icmp eq i32 %bf.clear290, 39
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.307

land.lhs.true.293:                                ; preds = %land.lhs.true.285
  %170 = load i32, i32* %i, align 4
  %idxprom294 = sext i32 %170 to i64
  %171 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx295 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %171, i64 %idxprom294
  %reg296 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx295, i32 0, i32 4
  %172 = load %struct.rtx_def*, %struct.rtx_def** %reg296, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtvec_def**
  %173 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %173, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %174 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx298, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx300 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp301 = icmp eq %struct.rtx_def* %175, null
  br i1 %cmp301, label %if.then.303, label %if.end.307

if.then.303:                                      ; preds = %land.lhs.true.293
  %176 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %176 to i64
  %177 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx305 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %177, i64 %idxprom304
  %pass_on_stack306 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx305, i32 0, i32 8
  store i32 1, i32* %pass_on_stack306, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.303, %land.lhs.true.293, %land.lhs.true.285, %land.end.278
  %178 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common308 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %addressable_flag309 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common308, i32 0, i32 2
  %bf.load310 = load i32, i32* %addressable_flag309, align 8
  %bf.lshr311 = lshr i32 %bf.load310, 10
  %bf.clear312 = and i32 %bf.lshr311, 1
  %tobool313 = icmp ne i32 %bf.clear312, 0
  br i1 %tobool313, label %if.then.325, label %lor.lhs.false.314

lor.lhs.false.314:                                ; preds = %if.end.307
  %179 = load i32, i32* %i, align 4
  %idxprom315 = sext i32 %179 to i64
  %180 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx316 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %180, i64 %idxprom315
  %pass_on_stack317 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx316, i32 0, i32 8
  %181 = load i32, i32* %pass_on_stack317, align 4
  %tobool318 = icmp ne i32 %181, 0
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.326

land.lhs.true.319:                                ; preds = %lor.lhs.false.314
  %182 = load i32, i32* %i, align 4
  %idxprom320 = sext i32 %182 to i64
  %183 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx321 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %183, i64 %idxprom320
  %reg322 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx321, i32 0, i32 4
  %184 = load %struct.rtx_def*, %struct.rtx_def** %reg322, align 8
  %cmp323 = icmp ne %struct.rtx_def* %184, null
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %land.lhs.true.319, %if.end.307
  %185 = load i32*, i32** %must_preallocate.addr, align 8
  store i32 1, i32* %185, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %land.lhs.true.319, %lor.lhs.false.314
  %186 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common327 = bitcast %union.tree_node* %186 to %struct.tree_common*
  %addressable_flag328 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common327, i32 0, i32 2
  %bf.load329 = load i32, i32* %addressable_flag328, align 8
  %bf.lshr330 = lshr i32 %bf.load329, 10
  %bf.clear331 = and i32 %bf.lshr330, 1
  %tobool332 = icmp ne i32 %bf.clear331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.end.326
  %187 = load i32*, i32** %ecf_flags.addr, align 8
  %188 = load i32, i32* %187, align 4
  %and334 = and i32 %188, -4097
  store i32 %and334, i32* %187, align 4
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.end.326
  %189 = load i32, i32* %i, align 4
  %idxprom336 = sext i32 %189 to i64
  %190 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx337 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %190, i64 %idxprom336
  %reg338 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx337, i32 0, i32 4
  %191 = load %struct.rtx_def*, %struct.rtx_def** %reg338, align 8
  %cmp339 = icmp eq %struct.rtx_def* %191, null
  br i1 %cmp339, label %if.then.355, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %if.end.335
  %192 = load i32, i32* %i, align 4
  %idxprom342 = sext i32 %192 to i64
  %193 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx343 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %193, i64 %idxprom342
  %partial344 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx343, i32 0, i32 7
  %194 = load i32, i32* %partial344, align 4
  %cmp345 = icmp ne i32 %194, 0
  br i1 %cmp345, label %if.then.355, label %lor.lhs.false.347

lor.lhs.false.347:                                ; preds = %lor.lhs.false.341
  %195 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %cmp348 = icmp sgt i32 %195, 0
  br i1 %cmp348, label %if.then.355, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %lor.lhs.false.347
  %196 = load i32, i32* %i, align 4
  %idxprom351 = sext i32 %196 to i64
  %197 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx352 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %197, i64 %idxprom351
  %pass_on_stack353 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx352, i32 0, i32 8
  %198 = load i32, i32* %pass_on_stack353, align 4
  %tobool354 = icmp ne i32 %198, 0
  br i1 %tobool354, label %if.then.355, label %if.end.366

if.then.355:                                      ; preds = %lor.lhs.false.350, %lor.lhs.false.347, %lor.lhs.false.341, %if.end.335
  %199 = load i32, i32* %mode, align 4
  %200 = load %union.tree_node*, %union.tree_node** %type, align 8
  %201 = load i32, i32* %i, align 4
  %idxprom356 = sext i32 %201 to i64
  %202 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx357 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %202, i64 %idxprom356
  %reg358 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx357, i32 0, i32 4
  %203 = load %struct.rtx_def*, %struct.rtx_def** %reg358, align 8
  %cmp359 = icmp ne %struct.rtx_def* %203, null
  %conv360 = zext i1 %cmp359 to i32
  %204 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %205 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %206 = load i32, i32* %i, align 4
  %idxprom361 = sext i32 %206 to i64
  %207 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx362 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %207, i64 %idxprom361
  %offset = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx362, i32 0, i32 9
  %208 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %208 to i64
  %209 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx364 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %209, i64 %idxprom363
  %size365 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx364, i32 0, i32 11
  call void @locate_and_pad_parm(i32 %199, %union.tree_node* %200, i32 %conv360, %union.tree_node* %204, %struct.args_size* %205, %struct.args_size* %offset, %struct.args_size* %size365, %struct.args_size* %alignment_pad)
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.355, %lor.lhs.false.350
  %210 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %210 to i64
  %211 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx368 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %211, i64 %idxprom367
  %slot_offset = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx368, i32 0, i32 10
  %212 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %213 = bitcast %struct.args_size* %slot_offset to i8*
  %214 = bitcast %struct.args_size* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %213, i8* %214, i64 16, i32 8, i1 false)
  %215 = load i32, i32* %i, align 4
  %idxprom369 = sext i32 %215 to i64
  %216 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx370 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %216, i64 %idxprom369
  %alignment_pad371 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx370, i32 0, i32 17
  %217 = bitcast %struct.args_size* %alignment_pad371 to i8*
  %218 = bitcast %struct.args_size* %alignment_pad to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %218, i64 16, i32 8, i1 false)
  %219 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %cmp372 = icmp eq i32 %219, 0
  br i1 %cmp372, label %land.lhs.true.374, label %if.end.402

land.lhs.true.374:                                ; preds = %if.end.366
  %220 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %220 to i64
  %221 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx376 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %221, i64 %idxprom375
  %pass_on_stack377 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx376, i32 0, i32 8
  %222 = load i32, i32* %pass_on_stack377, align 4
  %tobool378 = icmp ne i32 %222, 0
  br i1 %tobool378, label %if.end.402, label %if.then.379

if.then.379:                                      ; preds = %land.lhs.true.374
  %223 = load i32, i32* %i, align 4
  %idxprom380 = sext i32 %223 to i64
  %224 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx381 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %224, i64 %idxprom380
  %partial382 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx381, i32 0, i32 7
  %225 = load i32, i32* %partial382, align 4
  %226 = load i32, i32* @target_flags, align 4
  %and383 = and i32 %226, 33554432
  %tobool384 = icmp ne i32 %and383, 0
  %cond385 = select i1 %tobool384, i32 8, i32 4
  %mul = mul nsw i32 %225, %cond385
  %227 = load i32, i32* @target_flags, align 4
  %and386 = and i32 %227, 33554432
  %tobool387 = icmp ne i32 %and386, 0
  %cond388 = select i1 %tobool387, i32 64, i32 32
  %div389 = sdiv i32 %cond388, 8
  %div390 = sdiv i32 %mul, %div389
  %228 = load i32, i32* @target_flags, align 4
  %and391 = and i32 %228, 33554432
  %tobool392 = icmp ne i32 %and391, 0
  %cond393 = select i1 %tobool392, i32 64, i32 32
  %div394 = sdiv i32 %cond393, 8
  %mul395 = mul nsw i32 %div390, %div394
  %conv396 = sext i32 %mul395 to i64
  %229 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %229 to i64
  %230 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx398 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %230, i64 %idxprom397
  %size399 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx398, i32 0, i32 11
  %constant400 = getelementptr inbounds %struct.args_size, %struct.args_size* %size399, i32 0, i32 0
  %231 = load i64, i64* %constant400, align 8
  %sub401 = sub nsw i64 %231, %conv396
  store i64 %sub401, i64* %constant400, align 8
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.379, %land.lhs.true.374, %if.end.366
  %232 = load i32, i32* %i, align 4
  %idxprom403 = sext i32 %232 to i64
  %233 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx404 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %233, i64 %idxprom403
  %size405 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx404, i32 0, i32 11
  %constant406 = getelementptr inbounds %struct.args_size, %struct.args_size* %size405, i32 0, i32 0
  %234 = load i64, i64* %constant406, align 8
  %235 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant407 = getelementptr inbounds %struct.args_size, %struct.args_size* %235, i32 0, i32 0
  %236 = load i64, i64* %constant407, align 8
  %add = add nsw i64 %236, %234
  store i64 %add, i64* %constant407, align 8
  %237 = load i32, i32* %i, align 4
  %idxprom408 = sext i32 %237 to i64
  %238 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx409 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %238, i64 %idxprom408
  %size410 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx409, i32 0, i32 11
  %var411 = getelementptr inbounds %struct.args_size, %struct.args_size* %size410, i32 0, i32 1
  %239 = load %union.tree_node*, %union.tree_node** %var411, align 8
  %tobool412 = icmp ne %union.tree_node* %239, null
  br i1 %tobool412, label %if.then.413, label %if.end.439

if.then.413:                                      ; preds = %if.end.402
  br label %do.body

do.body:                                          ; preds = %if.then.413
  %240 = load i32, i32* %i, align 4
  %idxprom415 = sext i32 %240 to i64
  %241 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx416 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %241, i64 %idxprom415
  %size417 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx416, i32 0, i32 11
  %var418 = getelementptr inbounds %struct.args_size, %struct.args_size* %size417, i32 0, i32 1
  %242 = load %union.tree_node*, %union.tree_node** %var418, align 8
  store %union.tree_node* %242, %union.tree_node** %inc414, align 8
  %243 = load %union.tree_node*, %union.tree_node** %inc414, align 8
  %call419 = call i32 @host_integerp(%union.tree_node* %243, i32 0)
  %tobool420 = icmp ne i32 %call419, 0
  br i1 %tobool420, label %if.then.421, label %if.else.425

if.then.421:                                      ; preds = %do.body
  %244 = load %union.tree_node*, %union.tree_node** %inc414, align 8
  %call422 = call i64 @tree_low_cst(%union.tree_node* %244, i32 0)
  %245 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant423 = getelementptr inbounds %struct.args_size, %struct.args_size* %245, i32 0, i32 0
  %246 = load i64, i64* %constant423, align 8
  %add424 = add nsw i64 %246, %call422
  store i64 %add424, i64* %constant423, align 8
  br label %if.end.438

if.else.425:                                      ; preds = %do.body
  %247 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var426 = getelementptr inbounds %struct.args_size, %struct.args_size* %247, i32 0, i32 1
  %248 = load %union.tree_node*, %union.tree_node** %var426, align 8
  %cmp427 = icmp eq %union.tree_node* %248, null
  br i1 %cmp427, label %if.then.429, label %if.else.432

if.then.429:                                      ; preds = %if.else.425
  %249 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %250 = load %union.tree_node*, %union.tree_node** %inc414, align 8
  %call430 = call %union.tree_node* @convert(%union.tree_node* %249, %union.tree_node* %250)
  %251 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var431 = getelementptr inbounds %struct.args_size, %struct.args_size* %251, i32 0, i32 1
  store %union.tree_node* %call430, %union.tree_node** %var431, align 8
  br label %if.end.437

if.else.432:                                      ; preds = %if.else.425
  %252 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var433 = getelementptr inbounds %struct.args_size, %struct.args_size* %252, i32 0, i32 1
  %253 = load %union.tree_node*, %union.tree_node** %var433, align 8
  %254 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %255 = load %union.tree_node*, %union.tree_node** %inc414, align 8
  %call434 = call %union.tree_node* @convert(%union.tree_node* %254, %union.tree_node* %255)
  %call435 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %253, %union.tree_node* %call434)
  %256 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var436 = getelementptr inbounds %struct.args_size, %struct.args_size* %256, i32 0, i32 1
  store %union.tree_node* %call435, %union.tree_node** %var436, align 8
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.432, %if.then.429
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %if.then.421
  br label %do.end

do.end:                                           ; preds = %if.end.438
  br label %if.end.439

if.end.439:                                       ; preds = %do.end, %if.end.402
  %257 = load %struct.ix86_args*, %struct.ix86_args** %args_so_far.addr, align 8
  %258 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type440 = bitcast %union.tree_node* %258 to %struct.tree_type*
  %mode441 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type440, i32 0, i32 6
  %bf.load442 = load i32, i32* %mode441, align 4
  %bf.lshr443 = lshr i32 %bf.load442, 9
  %bf.clear444 = and i32 %bf.lshr443, 127
  %259 = load %union.tree_node*, %union.tree_node** %type, align 8
  %260 = load i32, i32* %argpos, align 4
  %261 = load i32, i32* %n_named_args.addr, align 4
  %cmp445 = icmp slt i32 %260, %261
  %conv446 = zext i1 %cmp445 to i32
  call void @function_arg_advance(%struct.ix86_args* %257, i32 %bf.clear444, %union.tree_node* %259, i32 %conv446)
  br label %for.inc

for.inc:                                          ; preds = %if.end.439
  %262 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common447 = bitcast %union.tree_node* %262 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common447, i32 0, i32 0
  %263 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %263, %union.tree_node** %p, align 8
  %264 = load i32, i32* %inc, align 4
  %265 = load i32, i32* %i, align 4
  %add448 = add nsw i32 %265, %264
  store i32 %add448, i32* %i, align 4
  %266 = load i32, i32* %argpos, align 4
  %inc449 = add nsw i32 %266, 1
  store i32 %inc449, i32* %argpos, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @finalize_must_preallocate(i32 %must_preallocate, i32 %num_actuals, %struct.arg_data* %args, %struct.args_size* %args_size) #0 {
entry:
  %must_preallocate.addr = alloca i32, align 4
  %num_actuals.addr = alloca i32, align 4
  %args.addr = alloca %struct.arg_data*, align 8
  %args_size.addr = alloca %struct.args_size*, align 8
  %partial_seen = alloca i32, align 4
  %copy_to_evaluate_size = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %must_preallocate, i32* %must_preallocate.addr, align 4
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store %struct.args_size* %args_size, %struct.args_size** %args_size.addr, align 8
  %0 = load i32, i32* %must_preallocate.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.71, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %partial_seen, align 4
  store i32 0, i32* %copy_to_evaluate_size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_actuals.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %must_preallocate.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_data, %struct.arg_data* %6, i64 %idxprom
  %partial = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx, i32 0, i32 7
  %7 = load i32, i32* %partial, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %9, i64 %idxprom3
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx4, i32 0, i32 8
  %10 = load i32, i32* %pass_on_stack, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  store i32 1, i32* %partial_seen, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.lhs.true, %for.body
  %11 = load i32, i32* %partial_seen, align 4
  %tobool7 = icmp ne i32 %11, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.else
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %13, i64 %idxprom9
  %reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx10, i32 0, i32 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp11 = icmp eq %struct.rtx_def* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %must_preallocate.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true.8, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then.6
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %16, i64 %idxprom14
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx15, i32 0, i32 0
  %17 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %common = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type16 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %cmp17 = icmp eq i32 %bf.clear, 51
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.61

land.lhs.true.18:                                 ; preds = %if.end.13
  %19 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %19 to i64
  %20 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %20, i64 %idxprom19
  %tree_value21 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx20, i32 0, i32 0
  %21 = load %union.tree_node*, %union.tree_node** %tree_value21, align 8
  %common22 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load23 = load i32, i32* %code, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 53
  br i1 %cmp25, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.18
  %22 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %22 to i64
  %23 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %23, i64 %idxprom26
  %tree_value28 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx27, i32 0, i32 0
  %24 = load %union.tree_node*, %union.tree_node** %tree_value28, align 8
  %common29 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 50
  br i1 %cmp33, label %if.then.54, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %25 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %25 to i64
  %26 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %26, i64 %idxprom35
  %tree_value37 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx36, i32 0, i32 0
  %27 = load %union.tree_node*, %union.tree_node** %tree_value37, align 8
  %common38 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %code39, align 8
  %bf.clear41 = and i32 %bf.load40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 51
  br i1 %cmp42, label %if.then.54, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.34
  %28 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %28 to i64
  %29 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i64 %idxprom44
  %tree_value46 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx45, i32 0, i32 0
  %30 = load %union.tree_node*, %union.tree_node** %tree_value46, align 8
  %common47 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type48 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common47, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type48, align 8
  %common49 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 2
  %bf.load50 = load i32, i32* %addressable_flag, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 10
  %bf.clear52 = and i32 %bf.lshr51, 1
  %tobool53 = icmp ne i32 %bf.clear52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %lor.lhs.false.43, %lor.lhs.false.34, %lor.lhs.false, %land.lhs.true.18
  %32 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %32 to i64
  %33 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %33, i64 %idxprom55
  %tree_value57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx56, i32 0, i32 0
  %34 = load %union.tree_node*, %union.tree_node** %tree_value57, align 8
  %common58 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type59 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type59, align 8
  %call = call i64 @int_size_in_bytes(%union.tree_node* %35)
  %36 = load i32, i32* %copy_to_evaluate_size, align 4
  %conv = sext i32 %36 to i64
  %add = add nsw i64 %conv, %call
  %conv60 = trunc i64 %add to i32
  store i32 %conv60, i32* %copy_to_evaluate_size, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %lor.lhs.false.43, %if.end.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.61
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %38 = load i32, i32* %copy_to_evaluate_size, align 4
  %mul = mul nsw i32 %38, 2
  %conv62 = sext i32 %mul to i64
  %39 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %39, i32 0, i32 0
  %40 = load i64, i64* %constant, align 8
  %cmp63 = icmp sge i64 %conv62, %40
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.70

land.lhs.true.65:                                 ; preds = %for.end
  %41 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant66 = getelementptr inbounds %struct.args_size, %struct.args_size* %41, i32 0, i32 0
  %42 = load i64, i64* %constant66, align 8
  %cmp67 = icmp sgt i64 %42, 0
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.65
  store i32 1, i32* %must_preallocate.addr, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.65, %for.end
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %entry
  %43 = load i32, i32* %must_preallocate.addr, align 4
  ret i32 %43
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

declare i32 @any_pending_cleanups(i32) #1

declare i32 @ix86_return_pops_args(%union.tree_node*, %union.tree_node*, i32) #1

declare i32 @unsafe_for_reeval(%union.tree_node*) #1

declare %union.tree_node* @unsave_expr(%union.tree_node*) #1

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

declare void @emit_queue() #1

declare void @start_sequence() #1

declare void @expand_start_target_temps() #1

declare i32 @optimize_tail_recursion(%union.tree_node*, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @get_insns() #1

declare void @expand_end_target_temps() #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define void @emit_library_call(%struct.rtx_def* %orgfun, i32 %fn_type, i32 %outmode, i32 %nargs, ...) #0 {
entry:
  %orgfun.addr = alloca %struct.rtx_def*, align 8
  %fn_type.addr = alloca i32, align 4
  %outmode.addr = alloca i32, align 4
  %nargs.addr = alloca i32, align 4
  %p = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %orgfun, %struct.rtx_def** %orgfun.addr, align 8
  store i32 %fn_type, i32* %fn_type.addr, align 4
  store i32 %outmode, i32* %outmode.addr, align 4
  store i32 %nargs, i32* %nargs.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orgfun.addr, align 8
  %1 = load i32, i32* %fn_type.addr, align 4
  %2 = load i32, i32* %outmode.addr, align 4
  %3 = load i32, i32* %nargs.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %call = call %struct.rtx_def* @emit_library_call_value_1(i32 0, %struct.rtx_def* %0, %struct.rtx_def* null, i32 %1, i32 %2, i32 %3, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare void @do_pending_stack_adjust() #1

; Function Attrs: nounwind uwtable
define internal void @precompute_arguments(i32 %flags, i32 %num_actuals, %struct.arg_data* %args) #0 {
entry:
  %flags.addr = alloca i32, align 4
  %num_actuals.addr = alloca i32, align 4
  %args.addr = alloca %struct.arg_data*, align 8
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_actuals.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_data, %struct.arg_data* %4, i64 %idxprom
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %6 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %6, 4096
  %tobool2 = icmp ne i32 %and1, 0
  %lnot = xor i1 %tobool2, true
  %lnot.ext = zext i1 %lnot to i32
  %call = call i32 @calls_function(%union.tree_node* %5, i32 %lnot.ext)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end.53

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %8, i64 %idxprom4
  %tree_value6 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx5, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %tree_value6, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common7 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load = load i32, i32* %addressable_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 10
  %bf.clear = and i32 %bf.lshr, 1
  %tobool8 = icmp ne i32 %bf.clear, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 1512, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.precompute_arguments, i32 0, i32 0)) #7
  unreachable

if.end:                                           ; preds = %if.then
  %11 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %12, i64 %idxprom10
  %tree_value12 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx11, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %tree_value12, align 8
  %call13 = call %struct.rtx_def* @expand_expr(%union.tree_node* %13, %struct.rtx_def* null, i32 0, i32 0)
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %15, i64 %idxprom14
  %value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx15, i32 0, i32 2
  store %struct.rtx_def* %call13, %struct.rtx_def** %value, align 8
  call void @emit_queue()
  %16 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %16 to i64
  %17 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %17, i64 %idxprom16
  %value18 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx17, i32 0, i32 2
  %18 = load %struct.rtx_def*, %struct.rtx_def** %value18, align 8
  %call19 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %18, i32 0)
  %19 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %19 to i64
  %20 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %20, i64 %idxprom20
  %value22 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx21, i32 0, i32 2
  store %struct.rtx_def* %call19, %struct.rtx_def** %value22, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %22, i64 %idxprom23
  %initial_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx24, i32 0, i32 3
  store %struct.rtx_def* %call19, %struct.rtx_def** %initial_value, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %23 to i64
  %24 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %24, i64 %idxprom25
  %tree_value27 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx26, i32 0, i32 0
  %25 = load %union.tree_node*, %union.tree_node** %tree_value27, align 8
  %common28 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %type30 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %mode31 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 6
  %bf.load32 = load i32, i32* %mode31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 9
  %bf.clear34 = and i32 %bf.lshr33, 127
  store i32 %bf.clear34, i32* %mode, align 4
  %27 = load i32, i32* %mode, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %28 to i64
  %29 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i64 %idxprom35
  %mode37 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx36, i32 0, i32 1
  %30 = load i32, i32* %mode37, align 4
  %cmp38 = icmp ne i32 %27, %30
  br i1 %cmp38, label %if.then.39, label %if.end.52

if.then.39:                                       ; preds = %if.end
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx41 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i64 %idxprom40
  %mode42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx41, i32 0, i32 1
  %33 = load i32, i32* %mode42, align 4
  %34 = load i32, i32* %mode, align 4
  %35 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %35 to i64
  %36 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %36, i64 %idxprom43
  %value45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx44, i32 0, i32 2
  %37 = load %struct.rtx_def*, %struct.rtx_def** %value45, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %38 to i64
  %39 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx47 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i64 %idxprom46
  %unsignedp = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx47, i32 0, i32 6
  %40 = load i32, i32* %unsignedp, align 4
  %call48 = call %struct.rtx_def* @convert_modes(i32 %33, i32 %34, %struct.rtx_def* %37, i32 %40)
  %41 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %41 to i64
  %42 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %42, i64 %idxprom49
  %value51 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx50, i32 0, i32 2
  store %struct.rtx_def* %call48, %struct.rtx_def** %value51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.39, %if.end
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal i32 @compute_argument_block_size(i32 %reg_parm_stack_space, %struct.args_size* %args_size, i32 %preferred_stack_boundary) #0 {
entry:
  %reg_parm_stack_space.addr = alloca i32, align 4
  %args_size.addr = alloca %struct.args_size*, align 8
  %preferred_stack_boundary.addr = alloca i32, align 4
  %unadjusted_args_size = alloca i32, align 4
  store i32 %reg_parm_stack_space, i32* %reg_parm_stack_space.addr, align 4
  store %struct.args_size* %args_size, %struct.args_size** %args_size.addr, align 8
  store i32 %preferred_stack_boundary, i32* %preferred_stack_boundary.addr, align 4
  %0 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %0, i32 0, i32 0
  %1 = load i64, i64* %constant, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %unadjusted_args_size, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %4 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %4, 33554432
  %tobool2 = icmp ne i32 %and1, 0
  %cond = select i1 %tobool2, i32 64, i32 32
  %cmp = icmp sgt i32 %3, %cond
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @target_flags, align 4
  %and4 = and i32 %5, 33554432
  %tobool5 = icmp ne i32 %and4, 0
  %cond6 = select i1 %tobool5, i32 64, i32 32
  store i32 %cond6, i32* %preferred_stack_boundary.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %6, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %var, align 8
  %tobool7 = icmp ne %union.tree_node* %7, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %8 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var9 = getelementptr inbounds %struct.args_size, %struct.args_size* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %var9, align 8
  %cmp10 = icmp eq %union.tree_node* %9, null
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.8
  %10 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant12 = getelementptr inbounds %struct.args_size, %struct.args_size* %10, i32 0, i32 0
  %11 = load i64, i64* %constant12, align 8
  %call = call %union.tree_node* @size_int_wide(i64 %11, i32 1)
  br label %cond.end

cond.false:                                       ; preds = %if.then.8
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %13 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var13 = getelementptr inbounds %struct.args_size, %struct.args_size* %13, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %var13, align 8
  %call14 = call %union.tree_node* @convert(%union.tree_node* %12, %union.tree_node* %14)
  %15 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant15 = getelementptr inbounds %struct.args_size, %struct.args_size* %15, i32 0, i32 0
  %16 = load i64, i64* %constant15, align 8
  %call16 = call %union.tree_node* @size_int_wide(i64 %16, i32 1)
  %call17 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call14, %union.tree_node* %call16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi %union.tree_node* [ %call, %cond.true ], [ %call17, %cond.false ]
  %17 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var19 = getelementptr inbounds %struct.args_size, %struct.args_size* %17, i32 0, i32 1
  store %union.tree_node* %cond18, %union.tree_node** %var19, align 8
  %18 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant20 = getelementptr inbounds %struct.args_size, %struct.args_size* %18, i32 0, i32 0
  store i64 0, i64* %constant20, align 8
  %19 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %div = sdiv i32 %19, 8
  store i32 %div, i32* %preferred_stack_boundary.addr, align 4
  %20 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %cmp21 = icmp sgt i32 %20, 1
  br i1 %cmp21, label %if.then.23, label %if.end.31

if.then.23:                                       ; preds = %cond.end
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %21, i32 0, i32 2
  %22 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %22, i32 0, i32 2
  %23 = load i32, i32* %x_stack_pointer_delta, align 4
  %24 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %sub = sub nsw i32 %24, 1
  %and24 = and i32 %23, %sub
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.23
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 1425, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__FUNCTION__.compute_argument_block_size, i32 0, i32 0)) #7
  unreachable

if.end.27:                                        ; preds = %if.then.23
  %25 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var28 = getelementptr inbounds %struct.args_size, %struct.args_size* %25, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %var28, align 8
  %27 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %call29 = call %union.tree_node* @round_up(%union.tree_node* %26, i32 %27)
  %28 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var30 = getelementptr inbounds %struct.args_size, %struct.args_size* %28, i32 0, i32 1
  store %union.tree_node* %call29, %union.tree_node** %var30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.27, %cond.end
  %29 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %cmp32 = icmp sgt i32 %29, 0
  br i1 %cmp32, label %if.then.34, label %if.end.45

if.then.34:                                       ; preds = %if.end.31
  %30 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var35 = getelementptr inbounds %struct.args_size, %struct.args_size* %30, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %var35, align 8
  %32 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv36 = sext i32 %32 to i64
  %call37 = call %union.tree_node* @size_int_wide(i64 %conv36, i32 1)
  %call38 = call %union.tree_node* @size_binop(i32 79, %union.tree_node* %31, %union.tree_node* %call37)
  %33 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var39 = getelementptr inbounds %struct.args_size, %struct.args_size* %33, i32 0, i32 1
  store %union.tree_node* %call38, %union.tree_node** %var39, align 8
  %34 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var40 = getelementptr inbounds %struct.args_size, %struct.args_size* %34, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %var40, align 8
  %36 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv41 = sext i32 %36 to i64
  %call42 = call %union.tree_node* @size_int_wide(i64 %conv41, i32 1)
  %call43 = call %union.tree_node* @size_binop(i32 60, %union.tree_node* %35, %union.tree_node* %call42)
  %37 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %var44 = getelementptr inbounds %struct.args_size, %struct.args_size* %37, i32 0, i32 1
  store %union.tree_node* %call43, %union.tree_node** %var44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.34, %if.end.31
  br label %if.end.80

if.else:                                          ; preds = %if.end
  %38 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %div46 = sdiv i32 %38, 8
  store i32 %div46, i32* %preferred_stack_boundary.addr, align 4
  %39 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %cmp47 = icmp slt i32 %39, 1
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.else
  store i32 1, i32* %preferred_stack_boundary.addr, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.else
  %40 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant51 = getelementptr inbounds %struct.args_size, %struct.args_size* %40, i32 0, i32 0
  %41 = load i64, i64* %constant51, align 8
  %42 = load %struct.function*, %struct.function** @cfun, align 8
  %expr52 = getelementptr inbounds %struct.function, %struct.function* %42, i32 0, i32 2
  %43 = load %struct.expr_status*, %struct.expr_status** %expr52, align 8
  %x_stack_pointer_delta53 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %43, i32 0, i32 2
  %44 = load i32, i32* %x_stack_pointer_delta53, align 4
  %conv54 = sext i32 %44 to i64
  %add = add nsw i64 %41, %conv54
  %45 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %conv55 = sext i32 %45 to i64
  %add56 = add nsw i64 %add, %conv55
  %sub57 = sub nsw i64 %add56, 1
  %46 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %conv58 = sext i32 %46 to i64
  %div59 = sdiv i64 %sub57, %conv58
  %47 = load i32, i32* %preferred_stack_boundary.addr, align 4
  %conv60 = sext i32 %47 to i64
  %mul = mul nsw i64 %div59, %conv60
  %48 = load %struct.function*, %struct.function** @cfun, align 8
  %expr61 = getelementptr inbounds %struct.function, %struct.function* %48, i32 0, i32 2
  %49 = load %struct.expr_status*, %struct.expr_status** %expr61, align 8
  %x_stack_pointer_delta62 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %49, i32 0, i32 2
  %50 = load i32, i32* %x_stack_pointer_delta62, align 4
  %conv63 = sext i32 %50 to i64
  %sub64 = sub nsw i64 %mul, %conv63
  %51 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant65 = getelementptr inbounds %struct.args_size, %struct.args_size* %51, i32 0, i32 0
  store i64 %sub64, i64* %constant65, align 8
  %52 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant66 = getelementptr inbounds %struct.args_size, %struct.args_size* %52, i32 0, i32 0
  %53 = load i64, i64* %constant66, align 8
  %54 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv67 = sext i32 %54 to i64
  %cmp68 = icmp sgt i64 %53, %conv67
  br i1 %cmp68, label %cond.true.70, label %cond.false.72

cond.true.70:                                     ; preds = %if.end.50
  %55 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant71 = getelementptr inbounds %struct.args_size, %struct.args_size* %55, i32 0, i32 0
  %56 = load i64, i64* %constant71, align 8
  br label %cond.end.74

cond.false.72:                                    ; preds = %if.end.50
  %57 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv73 = sext i32 %57 to i64
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.72, %cond.true.70
  %cond75 = phi i64 [ %56, %cond.true.70 ], [ %conv73, %cond.false.72 ]
  %58 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant76 = getelementptr inbounds %struct.args_size, %struct.args_size* %58, i32 0, i32 0
  store i64 %cond75, i64* %constant76, align 8
  %59 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv77 = sext i32 %59 to i64
  %60 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant78 = getelementptr inbounds %struct.args_size, %struct.args_size* %60, i32 0, i32 0
  %61 = load i64, i64* %constant78, align 8
  %sub79 = sub nsw i64 %61, %conv77
  store i64 %sub79, i64* %constant78, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.74, %if.end.45
  %62 = load i32, i32* %unadjusted_args_size, align 4
  ret i32 %62
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @emit_stack_save(i32, %struct.rtx_def**, %struct.rtx_def*) #1

declare %struct.rtx_def* @push_block(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %union.tree_node* @size_int_wide(i64, i32) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i32 @combine_pending_stack_adjustment_and_call(i32 %unadjusted_args_size, %struct.args_size* %args_size, i32 %preferred_unit_stack_boundary) #0 {
entry:
  %unadjusted_args_size.addr = alloca i32, align 4
  %args_size.addr = alloca %struct.args_size*, align 8
  %preferred_unit_stack_boundary.addr = alloca i32, align 4
  %adjustment = alloca i64, align 8
  %unadjusted_alignment = alloca i64, align 8
  store i32 %unadjusted_args_size, i32* %unadjusted_args_size.addr, align 4
  store %struct.args_size* %args_size, %struct.args_size** %args_size.addr, align 8
  store i32 %preferred_unit_stack_boundary, i32* %preferred_unit_stack_boundary.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 2
  %1 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1, i32 0, i32 2
  %2 = load i32, i32* %x_stack_pointer_delta, align 4
  %3 = load i32, i32* %unadjusted_args_size.addr, align 4
  %add = add nsw i32 %2, %3
  %4 = load i32, i32* %preferred_unit_stack_boundary.addr, align 4
  %rem = srem i32 %add, %4
  %conv = sext i32 %rem to i64
  store i64 %conv, i64* %unadjusted_alignment, align 8
  %5 = load i64, i64* %unadjusted_alignment, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %expr1 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 2
  %7 = load %struct.expr_status*, %struct.expr_status** %expr1, align 8
  %x_pending_stack_adjust = getelementptr inbounds %struct.expr_status, %struct.expr_status* %7, i32 0, i32 0
  %8 = load i32, i32* %x_pending_stack_adjust, align 4
  %9 = load i32, i32* %preferred_unit_stack_boundary.addr, align 4
  %rem2 = srem i32 %8, %9
  %conv3 = sext i32 %rem2 to i64
  %sub = sub nsw i64 %5, %conv3
  store i64 %sub, i64* %unadjusted_alignment, align 8
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %expr4 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 2
  %11 = load %struct.expr_status*, %struct.expr_status** %expr4, align 8
  %x_pending_stack_adjust5 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %11, i32 0, i32 0
  %12 = load i32, i32* %x_pending_stack_adjust5, align 4
  %conv6 = sext i32 %12 to i64
  store i64 %conv6, i64* %adjustment, align 8
  %13 = load i32, i32* %preferred_unit_stack_boundary.addr, align 4
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %14 = load i64, i64* %unadjusted_alignment, align 8
  %cmp8 = icmp sgt i64 %14, 0
  br i1 %cmp8, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then
  %15 = load i32, i32* %preferred_unit_stack_boundary.addr, align 4
  %conv11 = sext i32 %15 to i64
  %16 = load i64, i64* %unadjusted_alignment, align 8
  %sub12 = sub nsw i64 %conv11, %16
  %17 = load i64, i64* %adjustment, align 8
  %sub13 = sub nsw i64 %17, %sub12
  store i64 %sub13, i64* %adjustment, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %18 = load i64, i64* %unadjusted_alignment, align 8
  %19 = load i64, i64* %adjustment, align 8
  %add14 = add nsw i64 %19, %18
  store i64 %add14, i64* %adjustment, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %expr16 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 2
  %21 = load %struct.expr_status*, %struct.expr_status** %expr16, align 8
  %x_pending_stack_adjust17 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %21, i32 0, i32 0
  %22 = load i32, i32* %x_pending_stack_adjust17, align 4
  %conv18 = sext i32 %22 to i64
  %23 = load i64, i64* %adjustment, align 8
  %sub19 = sub nsw i64 %conv18, %23
  %24 = load i32, i32* %unadjusted_args_size.addr, align 4
  %conv20 = sext i32 %24 to i64
  %add21 = add nsw i64 %sub19, %conv20
  %25 = load %struct.args_size*, %struct.args_size** %args_size.addr, align 8
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %25, i32 0, i32 0
  store i64 %add21, i64* %constant, align 8
  %26 = load i64, i64* %adjustment, align 8
  %conv22 = trunc i64 %26 to i32
  ret i32 %conv22
}

declare %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_argument_addresses(%struct.arg_data* %args, %struct.rtx_def* %argblock, i32 %num_actuals) #0 {
entry:
  %args.addr = alloca %struct.arg_data*, align 8
  %argblock.addr = alloca %struct.rtx_def*, align 8
  %num_actuals.addr = alloca i32, align 4
  %arg_reg = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %arg_offset = alloca i32, align 4
  %offset = alloca %struct.rtx_def*, align 8
  %slot_offset = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store %struct.rtx_def* %argblock, %struct.rtx_def** %argblock.addr, align 8
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.156

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %arg_reg, align 8
  store i32 0, i32* %arg_offset, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 75
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %arg_reg, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx6 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* %arg_offset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %num_actuals.addr, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %12, i64 %idxprom
  %offset10 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx9, i32 0, i32 9
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %offset10, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %var, align 8
  %cmp11 = icmp eq %union.tree_node* %13, null
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %15, i64 %idxprom13
  %offset15 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx14, i32 0, i32 9
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %offset15, i32 0, i32 0
  %16 = load i64, i64* %constant, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %16)
  br label %cond.end.41

cond.false:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %17 to i64
  %18 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %18, i64 %idxprom16
  %offset18 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx17, i32 0, i32 9
  %var19 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset18, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %var19, align 8
  %cmp20 = icmp eq %union.tree_node* %19, null
  br i1 %cmp20, label %cond.true.22, label %cond.false.28

cond.true.22:                                     ; preds = %cond.false
  %20 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %21, i64 %idxprom23
  %offset25 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx24, i32 0, i32 9
  %constant26 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset25, i32 0, i32 0
  %22 = load i64, i64* %constant26, align 8
  %call27 = call %union.tree_node* @size_int_wide(i64 %22, i32 1)
  br label %cond.end

cond.false.28:                                    ; preds = %cond.false
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %24 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %25, i64 %idxprom29
  %offset31 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx30, i32 0, i32 9
  %var32 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset31, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %var32, align 8
  %call33 = call %union.tree_node* @convert(%union.tree_node* %23, %union.tree_node* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %27 to i64
  %28 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %28, i64 %idxprom34
  %offset36 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx35, i32 0, i32 9
  %constant37 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset36, i32 0, i32 0
  %29 = load i64, i64* %constant37, align 8
  %call38 = call %union.tree_node* @size_int_wide(i64 %29, i32 1)
  %call39 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call33, %union.tree_node* %call38)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.28, %cond.true.22
  %cond = phi %union.tree_node* [ %call27, %cond.true.22 ], [ %call39, %cond.false.28 ]
  %call40 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.41

cond.end.41:                                      ; preds = %cond.end, %cond.true
  %cond42 = phi %struct.rtx_def* [ %call, %cond.true ], [ %call40, %cond.end ]
  store %struct.rtx_def* %cond42, %struct.rtx_def** %offset, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %30 to i64
  %31 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %31, i64 %idxprom43
  %slot_offset45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx44, i32 0, i32 10
  %var46 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset45, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %var46, align 8
  %cmp47 = icmp eq %union.tree_node* %32, null
  br i1 %cmp47, label %cond.true.49, label %cond.false.55

cond.true.49:                                     ; preds = %cond.end.41
  %33 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %33 to i64
  %34 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %34, i64 %idxprom50
  %slot_offset52 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx51, i32 0, i32 10
  %constant53 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset52, i32 0, i32 0
  %35 = load i64, i64* %constant53, align 8
  %call54 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %35)
  br label %cond.end.83

cond.false.55:                                    ; preds = %cond.end.41
  %36 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %36 to i64
  %37 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %37, i64 %idxprom56
  %slot_offset58 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx57, i32 0, i32 10
  %var59 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset58, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %var59, align 8
  %cmp60 = icmp eq %union.tree_node* %38, null
  br i1 %cmp60, label %cond.true.62, label %cond.false.68

cond.true.62:                                     ; preds = %cond.false.55
  %39 = load i32, i32* %i, align 4
  %idxprom63 = sext i32 %39 to i64
  %40 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx64 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %40, i64 %idxprom63
  %slot_offset65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx64, i32 0, i32 10
  %constant66 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset65, i32 0, i32 0
  %41 = load i64, i64* %constant66, align 8
  %call67 = call %union.tree_node* @size_int_wide(i64 %41, i32 1)
  br label %cond.end.80

cond.false.68:                                    ; preds = %cond.false.55
  %42 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %43 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %43 to i64
  %44 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %44, i64 %idxprom69
  %slot_offset71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx70, i32 0, i32 10
  %var72 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset71, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %var72, align 8
  %call73 = call %union.tree_node* @convert(%union.tree_node* %42, %union.tree_node* %45)
  %46 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %46 to i64
  %47 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %47, i64 %idxprom74
  %slot_offset76 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx75, i32 0, i32 10
  %constant77 = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset76, i32 0, i32 0
  %48 = load i64, i64* %constant77, align 8
  %call78 = call %union.tree_node* @size_int_wide(i64 %48, i32 1)
  %call79 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call73, %union.tree_node* %call78)
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.68, %cond.true.62
  %cond81 = phi %union.tree_node* [ %call67, %cond.true.62 ], [ %call79, %cond.false.68 ]
  %call82 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond81, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end.80, %cond.true.49
  %cond84 = phi %struct.rtx_def* [ %call54, %cond.true.49 ], [ %call82, %cond.end.80 ]
  store %struct.rtx_def* %cond84, %struct.rtx_def** %slot_offset, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %49 to i64
  %50 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %50, i64 %idxprom85
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx86, i32 0, i32 8
  %51 = load i32, i32* %pass_on_stack, align 4
  %tobool87 = icmp ne i32 %51, 0
  br i1 %tobool87, label %if.end.93, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end.83
  %52 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %52 to i64
  %53 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %idxprom88
  %reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx89, i32 0, i32 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp90 = icmp ne %struct.rtx_def* %54, null
  br i1 %cmp90, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.93:                                        ; preds = %land.lhs.true, %cond.end.83
  %55 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load94 = load i32, i32* %56, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp eq i32 %bf.clear95, 54
  br i1 %cmp96, label %if.then.98, label %if.else

if.then.98:                                       ; preds = %if.end.93
  %57 = load %struct.rtx_def*, %struct.rtx_def** %arg_reg, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtwint101 = bitcast %union.rtunion_def* %arrayidx100 to i64*
  %59 = load i64, i64* %rtwint101, align 8
  %call102 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %57, i64 %59)
  store %struct.rtx_def* %call102, %struct.rtx_def** %addr, align 8
  br label %if.end.106

if.else:                                          ; preds = %if.end.93
  %60 = load i32, i32* @target_flags, align 4
  %and = and i32 %60, 33554432
  %tobool103 = icmp ne i32 %and, 0
  %cond104 = select i1 %tobool103, i32 5, i32 4
  %61 = load %struct.rtx_def*, %struct.rtx_def** %arg_reg, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %call105 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %cond104, %struct.rtx_def* %61, %struct.rtx_def* %62)
  store %struct.rtx_def* %call105, %struct.rtx_def** %addr, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else, %if.then.98
  %63 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %64 = load i32, i32* %arg_offset, align 4
  %conv107 = sext i32 %64 to i64
  %call108 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %63, i64 %conv107)
  store %struct.rtx_def* %call108, %struct.rtx_def** %addr, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %65 to i64
  %66 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %66, i64 %idxprom109
  %mode = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx110, i32 0, i32 1
  %67 = load i32, i32* %mode, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call111 = call %struct.rtx_def* @gen_rtx_MEM(i32 %67, %struct.rtx_def* %68)
  %69 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %69 to i64
  %70 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %70, i64 %idxprom112
  %stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx113, i32 0, i32 12
  store %struct.rtx_def* %call111, %struct.rtx_def** %stack, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom114 = sext i32 %71 to i64
  %72 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx115 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %72, i64 %idxprom114
  %stack116 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx115, i32 0, i32 12
  %73 = load %struct.rtx_def*, %struct.rtx_def** %stack116, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %74 to i64
  %75 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx118 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %75, i64 %idxprom117
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx118, i32 0, i32 0
  %76 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %common = bitcast %union.tree_node* %76 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @set_mem_attributes(%struct.rtx_def* %73, %union.tree_node* %77, i32 1)
  %78 = load %struct.rtx_def*, %struct.rtx_def** %slot_offset, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load119 = load i32, i32* %79, align 8
  %bf.clear120 = and i32 %bf.load119, 65535
  %cmp121 = icmp eq i32 %bf.clear120, 54
  br i1 %cmp121, label %if.then.123, label %if.else.128

if.then.123:                                      ; preds = %if.end.106
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arg_reg, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %slot_offset, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtwint126 = bitcast %union.rtunion_def* %arrayidx125 to i64*
  %82 = load i64, i64* %rtwint126, align 8
  %call127 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %80, i64 %82)
  store %struct.rtx_def* %call127, %struct.rtx_def** %addr, align 8
  br label %if.end.133

if.else.128:                                      ; preds = %if.end.106
  %83 = load i32, i32* @target_flags, align 4
  %and129 = and i32 %83, 33554432
  %tobool130 = icmp ne i32 %and129, 0
  %cond131 = select i1 %tobool130, i32 5, i32 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %arg_reg, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %slot_offset, align 8
  %call132 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %cond131, %struct.rtx_def* %84, %struct.rtx_def* %85)
  store %struct.rtx_def* %call132, %struct.rtx_def** %addr, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.128, %if.then.123
  %86 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %87 = load i32, i32* %arg_offset, align 4
  %conv134 = sext i32 %87 to i64
  %call135 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %86, i64 %conv134)
  store %struct.rtx_def* %call135, %struct.rtx_def** %addr, align 8
  %88 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %88 to i64
  %89 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx137 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %89, i64 %idxprom136
  %mode138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx137, i32 0, i32 1
  %90 = load i32, i32* %mode138, align 4
  %91 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call139 = call %struct.rtx_def* @gen_rtx_MEM(i32 %90, %struct.rtx_def* %91)
  %92 = load i32, i32* %i, align 4
  %idxprom140 = sext i32 %92 to i64
  %93 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx141 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %93, i64 %idxprom140
  %stack_slot = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx141, i32 0, i32 13
  store %struct.rtx_def* %call139, %struct.rtx_def** %stack_slot, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %94 to i64
  %95 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx143 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %95, i64 %idxprom142
  %stack_slot144 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx143, i32 0, i32 13
  %96 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot144, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %97 to i64
  %98 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx146 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %98, i64 %idxprom145
  %tree_value147 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx146, i32 0, i32 0
  %99 = load %union.tree_node*, %union.tree_node** %tree_value147, align 8
  %common148 = bitcast %union.tree_node* %99 to %struct.tree_common*
  %type149 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common148, i32 0, i32 1
  %100 = load %union.tree_node*, %union.tree_node** %type149, align 8
  call void @set_mem_attributes(%struct.rtx_def* %96, %union.tree_node* %100, i32 1)
  %101 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %101 to i64
  %102 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx151 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %102, i64 %idxprom150
  %stack152 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx151, i32 0, i32 12
  %103 = load %struct.rtx_def*, %struct.rtx_def** %stack152, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %103, i64 0)
  %104 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %104 to i64
  %105 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx154 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %105, i64 %idxprom153
  %stack_slot155 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx154, i32 0, i32 13
  %106 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot155, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %106, i64 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.133, %if.then.92
  %107 = load i32, i32* %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.156

if.end.156:                                       ; preds = %for.end, %entry
  ret void
}

declare void @anti_adjust_stack(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @rtx_for_function_call(%union.tree_node* %fndecl, %union.tree_node* %exp) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  %funexp = alloca %struct.rtx_def*, align 8
  %funaddr = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %used_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  call void @assemble_external(%union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common3 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %used_flag4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %used_flag4, align 8
  %bf.clear6 = and i32 %bf.load5, -65537
  %bf.set = or i32 %bf.clear6, 65536
  store i32 %bf.set, i32* %used_flag4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool7 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl8 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %8, i8* null)
  %9 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl10 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl11, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %7, %cond.true ], [ %10, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %funexp, align 8
  br label %if.end.14

if.else:                                          ; preds = %entry
  call void @push_temp_slots()
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp12 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %13, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %funexp, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %funaddr, align 8
  call void @pop_temp_slots()
  call void @emit_queue()
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %cond.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %funexp, align 8
  ret %struct.rtx_def* %14
}

declare %struct.rtx_def* @hard_function_value(%union.tree_node*, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @precompute_register_parameters(i32 %num_actuals, %struct.arg_data* %args, i32* %reg_parm_seen) #0 {
entry:
  %num_actuals.addr = alloca i32, align 4
  %args.addr = alloca %struct.arg_data*, align 8
  %reg_parm_seen.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store i32* %reg_parm_seen, i32** %reg_parm_seen.addr, align 8
  %0 = load i32*, i32** %reg_parm_seen.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num_actuals.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_data, %struct.arg_data* %4, i64 %idxprom
  %reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx, i32 0, i32 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp1 = icmp ne %struct.rtx_def* %5, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx3 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %7, i64 %idxprom2
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx3, i32 0, i32 8
  %8 = load i32, i32* %pass_on_stack, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.96, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32*, i32** %reg_parm_seen.addr, align 8
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %11 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %11, i64 %idxprom4
  %value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx5, i32 0, i32 2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %cmp6 = icmp eq %struct.rtx_def* %12, null
  br i1 %cmp6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  call void @push_temp_slots()
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %14 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %14, i64 %idxprom8
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx9, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %15, %struct.rtx_def* null, i32 0, i32 0)
  %16 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %16 to i64
  %17 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %17, i64 %idxprom10
  %value12 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx11, i32 0, i32 2
  store %struct.rtx_def* %call, %struct.rtx_def** %value12, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %19, i64 %idxprom13
  %value15 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx14, i32 0, i32 2
  %20 = load %struct.rtx_def*, %struct.rtx_def** %value15, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %20)
  call void @pop_temp_slots()
  call void @emit_queue()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %21 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %21 to i64
  %22 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx17 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %22, i64 %idxprom16
  %mode = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx17, i32 0, i32 1
  %23 = load i32, i32* %mode, align 4
  %24 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %24 to i64
  %25 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %25, i64 %idxprom18
  %tree_value20 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx19, i32 0, i32 0
  %26 = load %union.tree_node*, %union.tree_node** %tree_value20, align 8
  %common = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type21 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %mode22 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 6
  %bf.load = load i32, i32* %mode22, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %cmp23 = icmp ne i32 %23, %bf.clear
  br i1 %cmp23, label %if.then.24, label %if.end.47

if.then.24:                                       ; preds = %if.end
  %28 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i64 %idxprom25
  %mode27 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx26, i32 0, i32 1
  %30 = load i32, i32* %mode27, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i64 %idxprom28
  %tree_value30 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx29, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %tree_value30, align 8
  %common31 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %type33 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %mode34 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 6
  %bf.load35 = load i32, i32* %mode34, align 4
  %bf.lshr36 = lshr i32 %bf.load35, 9
  %bf.clear37 = and i32 %bf.lshr36, 127
  %35 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %36, i64 %idxprom38
  %value40 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx39, i32 0, i32 2
  %37 = load %struct.rtx_def*, %struct.rtx_def** %value40, align 8
  %38 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %38 to i64
  %39 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %39, i64 %idxprom41
  %unsignedp = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx42, i32 0, i32 6
  %40 = load i32, i32* %unsignedp, align 4
  %call43 = call %struct.rtx_def* @convert_modes(i32 %30, i32 %bf.clear37, %struct.rtx_def* %37, i32 %40)
  %41 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %41 to i64
  %42 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %42, i64 %idxprom44
  %value46 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx45, i32 0, i32 2
  store %struct.rtx_def* %call43, %struct.rtx_def** %value46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.24, %if.end
  %43 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %43 to i64
  %44 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx49 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %44, i64 %idxprom48
  %value50 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx49, i32 0, i32 2
  %45 = load %struct.rtx_def*, %struct.rtx_def** %value50, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load51 = load i32, i32* %46, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 61
  br i1 %cmp53, label %if.end.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.47
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx55 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %48, i64 %idxprom54
  %value56 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx55, i32 0, i32 2
  %49 = load %struct.rtx_def*, %struct.rtx_def** %value56, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load57 = load i32, i32* %50, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 63
  br i1 %cmp59, label %land.lhs.true.60, label %land.lhs.true.68

land.lhs.true.60:                                 ; preds = %lor.lhs.false
  %51 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %51 to i64
  %52 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %52, i64 %idxprom61
  %value63 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx62, i32 0, i32 2
  %53 = load %struct.rtx_def*, %struct.rtx_def** %value63, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load65 = load i32, i32* %55, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 61
  br i1 %cmp67, label %if.end.95, label %land.lhs.true.68

land.lhs.true.68:                                 ; preds = %land.lhs.true.60, %lor.lhs.false
  %56 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %56 to i64
  %57 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx70 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %57, i64 %idxprom69
  %mode71 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx70, i32 0, i32 1
  %58 = load i32, i32* %mode71, align 4
  %cmp72 = icmp ne i32 %58, 51
  br i1 %cmp72, label %land.lhs.true.73, label %if.end.95

land.lhs.true.73:                                 ; preds = %land.lhs.true.68
  %59 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %59 to i64
  %60 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %60, i64 %idxprom74
  %value76 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx75, i32 0, i32 2
  %61 = load %struct.rtx_def*, %struct.rtx_def** %value76, align 8
  %call77 = call i32 @rtx_cost(%struct.rtx_def* %61, i32 47)
  %cmp78 = icmp sgt i32 %call77, 4
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.95

land.lhs.true.79:                                 ; preds = %land.lhs.true.73
  %62 = load i32*, i32** %reg_parm_seen.addr, align 8
  %63 = load i32, i32* %62, align 4
  %tobool80 = icmp ne i32 %63, 0
  br i1 %tobool80, label %if.then.84, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %land.lhs.true.79
  %call82 = call i32 @preserve_subexpressions_p()
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.95

if.then.84:                                       ; preds = %lor.lhs.false.81, %land.lhs.true.79
  %64 = load i32, i32* %i, align 4
  %idxprom85 = sext i32 %64 to i64
  %65 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx86 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %65, i64 %idxprom85
  %mode87 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx86, i32 0, i32 1
  %66 = load i32, i32* %mode87, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %67 to i64
  %68 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %68, i64 %idxprom88
  %value90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx89, i32 0, i32 2
  %69 = load %struct.rtx_def*, %struct.rtx_def** %value90, align 8
  %call91 = call %struct.rtx_def* @copy_to_mode_reg(i32 %66, %struct.rtx_def* %69)
  %70 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %70 to i64
  %71 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %71, i64 %idxprom92
  %value94 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx93, i32 0, i32 2
  store %struct.rtx_def* %call91, %struct.rtx_def** %value94, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.84, %lor.lhs.false.81, %land.lhs.true.73, %land.lhs.true.68, %land.lhs.true.60, %if.end.47
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.96
  %72 = load i32, i32* %i, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @save_fixed_argument_area(i32 %reg_parm_stack_space, %struct.rtx_def* %argblock, i32* %low_to_save, i32* %high_to_save) #0 {
entry:
  %reg_parm_stack_space.addr = alloca i32, align 4
  %argblock.addr = alloca %struct.rtx_def*, align 8
  %low_to_save.addr = alloca i32*, align 8
  %high_to_save.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %save_area = alloca %struct.rtx_def*, align 8
  %num_to_save = alloca i32, align 4
  %save_mode = alloca i32, align 4
  %stack_area = alloca %struct.rtx_def*, align 8
  store i32 %reg_parm_stack_space, i32* %reg_parm_stack_space.addr, align 4
  store %struct.rtx_def* %argblock, %struct.rtx_def** %argblock.addr, align 8
  store i32* %low_to_save, i32** %low_to_save.addr, align 8
  store i32* %high_to_save, i32** %high_to_save.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %save_area, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %cmp1 = icmp sge i32 %2, %3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %7 = load i32*, i32** %low_to_save.addr, align 8
  %8 = load i32, i32* %7, align 4
  %cmp4 = icmp eq i32 %8, -1
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32*, i32** %low_to_save.addr, align 8
  store i32 %9, i32* %10, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32*, i32** %high_to_save.addr, align 8
  store i32 %11, i32* %12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.7, %if.then
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32*, i32** %low_to_save.addr, align 8
  %15 = load i32, i32* %14, align 4
  %cmp8 = icmp sge i32 %15, 0
  br i1 %cmp8, label %if.then.10, label %if.end.49

if.then.10:                                       ; preds = %for.end
  %16 = load i32*, i32** %high_to_save.addr, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %low_to_save.addr, align 8
  %19 = load i32, i32* %18, align 4
  %sub = sub nsw i32 %17, %19
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %num_to_save, align 4
  %20 = load i32, i32* %num_to_save, align 4
  %mul = mul nsw i32 %20, 8
  %call = call i32 @mode_for_size(i32 %mul, i32 1, i32 1)
  store i32 %call, i32* %save_mode, align 4
  %21 = load i32*, i32** %low_to_save.addr, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %save_mode, align 4
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom11
  %24 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %24 to i32
  %25 = load i32, i32* @target_flags, align 4
  %and = and i32 %25, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = sdiv i32 128, %cond
  %cmp14 = icmp slt i32 %conv13, %div
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.10
  %26 = load i32, i32* %save_mode, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom16
  %27 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %27 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then.10
  %28 = load i32, i32* @target_flags, align 4
  %and19 = and i32 %28, 33554432
  %tobool20 = icmp ne i32 %and19, 0
  %cond21 = select i1 %tobool20, i32 8, i32 4
  %div22 = sdiv i32 128, %cond21
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi i32 [ %conv18, %cond.true ], [ %div22, %cond.false ]
  %sub24 = sub nsw i32 %cond23, 1
  %and25 = and i32 %22, %sub24
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %cond.end
  store i32 51, i32* %save_mode, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %cond.end
  %29 = load i32, i32* %save_mode, align 4
  %30 = load i32, i32* %save_mode, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %32 = load i32*, i32** %low_to_save.addr, align 8
  %33 = load i32, i32* %32, align 4
  %conv29 = sext i32 %33 to i64
  %call30 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %31, i64 %conv29)
  %call31 = call %struct.rtx_def* @memory_address(i32 %30, %struct.rtx_def* %call30)
  %call32 = call %struct.rtx_def* @gen_rtx_MEM(i32 %29, %struct.rtx_def* %call31)
  store %struct.rtx_def* %call32, %struct.rtx_def** %stack_area, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %35 = load i32, i32* @target_flags, align 4
  %and33 = and i32 %35, 33554432
  %tobool34 = icmp ne i32 %and33, 0
  %cond35 = select i1 %tobool34, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %34, i32 %cond35)
  %36 = load i32, i32* %save_mode, align 4
  %cmp36 = icmp eq i32 %36, 51
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.end.28
  %37 = load i32, i32* %num_to_save, align 4
  %conv39 = sext i32 %37 to i64
  %call40 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %conv39, i32 0)
  store %struct.rtx_def* %call40, %struct.rtx_def** %save_area, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %call41 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %38)
  %39 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %40 = load i32, i32* %num_to_save, align 4
  %conv42 = sext i32 %40 to i64
  %41 = load i32, i32* @target_flags, align 4
  %and43 = and i32 %41, 33554432
  %tobool44 = icmp ne i32 %and43, 0
  %cond45 = select i1 %tobool44, i32 64, i32 32
  call void @move_by_pieces(%struct.rtx_def* %call41, %struct.rtx_def* %39, i64 %conv42, i32 %cond45)
  br label %if.end.48

if.else:                                          ; preds = %if.end.28
  %42 = load i32, i32* %save_mode, align 4
  %call46 = call %struct.rtx_def* @gen_reg_rtx(i32 %42)
  store %struct.rtx_def* %call46, %struct.rtx_def** %save_area, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %call47 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %43, %struct.rtx_def* %44)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end
  %45 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  ret %struct.rtx_def* %45
}

; Function Attrs: nounwind uwtable
define internal i32 @store_one_arg(%struct.arg_data* %arg, %struct.rtx_def* %argblock, i32 %flags, i32 %variable_size, i32 %reg_parm_stack_space) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca %struct.arg_data*, align 8
  %argblock.addr = alloca %struct.rtx_def*, align 8
  %flags.addr = alloca i32, align 4
  %variable_size.addr = alloca i32, align 4
  %reg_parm_stack_space.addr = alloca i32, align 4
  %pval = alloca %union.tree_node*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %partial = alloca i32, align 4
  %used = alloca i32, align 4
  %i = alloca i32, align 4
  %lower_bound = alloca i32, align 4
  %upper_bound = alloca i32, align 4
  %sibcall_failure = alloca i32, align 4
  %save_mode = alloca i32, align 4
  %stack_area = alloca %struct.rtx_def*, align 8
  %ot = alloca %union.tree_node*, align 8
  %nt = alloca %union.tree_node*, align 8
  %size198 = alloca i32, align 4
  %excess = alloca i32, align 4
  %size_rtx = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %i357 = alloca i32, align 4
  %size_rtx1 = alloca %struct.rtx_def*, align 8
  store %struct.arg_data* %arg, %struct.arg_data** %arg.addr, align 8
  store %struct.rtx_def* %argblock, %struct.rtx_def** %argblock.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %variable_size, i32* %variable_size.addr, align 4
  store i32 %reg_parm_stack_space, i32* %reg_parm_stack_space.addr, align 4
  %0 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %0, i32 0, i32 0
  %1 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  store %union.tree_node* %1, %union.tree_node** %pval, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %reg, align 8
  store i32 0, i32* %partial, align 4
  store i32 0, i32* %used, align 4
  store i32 0, i32* %lower_bound, align 4
  store i32 0, i32* %upper_bound, align 4
  store i32 0, i32* %sibcall_failure, align 4
  %2 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @push_temp_slots()
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 4096
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.113

land.lhs.true:                                    ; preds = %if.end
  %4 = load i32, i32* %flags.addr, align 4
  %and1 = and i32 %4, 256
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.end.113, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %tobool4 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.95

land.lhs.true.5:                                  ; preds = %if.then.3
  %6 = load i32, i32* %variable_size.addr, align 4
  %tobool6 = icmp ne i32 %6, 0
  br i1 %tobool6, label %if.end.95, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %7 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %7, i32 0, i32 12
  %8 = load %struct.rtx_def*, %struct.rtx_def** %stack, align 8
  %tobool8 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool8, label %if.then.9, label %if.end.95

if.then.9:                                        ; preds = %land.lhs.true.7
  %9 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack_slot = getelementptr inbounds %struct.arg_data, %struct.arg_data* %9, i32 0, i32 13
  %10 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 75
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %13 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack_slot14 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %13, i32 0, i32 13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx22 to i64*
  %17 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %17 to i32
  store i32 %conv, i32* %lower_bound, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then.9
  store i32 0, i32* %lower_bound, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.13
  %18 = load i32, i32* %lower_bound, align 4
  %conv24 = sext i32 %18 to i64
  %19 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size = getelementptr inbounds %struct.arg_data, %struct.arg_data* %19, i32 0, i32 11
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %size, i32 0, i32 0
  %20 = load i64, i64* %constant, align 8
  %add = add nsw i64 %conv24, %20
  %conv25 = trunc i64 %add to i32
  store i32 %conv25, i32* %upper_bound, align 4
  %21 = load i32, i32* %lower_bound, align 4
  store i32 %21, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %upper_bound, align 4
  %cmp26 = icmp slt i32 %22, %23
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  %26 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %26 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %28 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %cmp32 = icmp sgt i32 %27, %28
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %land.lhs.true.31
  br label %for.end

if.end.35:                                        ; preds = %land.lhs.true.31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %upper_bound, align 4
  %cmp36 = icmp ne i32 %30, %31
  br i1 %cmp36, label %if.then.38, label %if.end.94

if.then.38:                                       ; preds = %for.end
  %32 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size39 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i32 0, i32 11
  %constant40 = getelementptr inbounds %struct.args_size, %struct.args_size* %size39, i32 0, i32 0
  %33 = load i64, i64* %constant40, align 8
  %mul = mul nsw i64 %33, 8
  %conv41 = trunc i64 %mul to i32
  %call = call i32 @mode_for_size(i32 %conv41, i32 1, i32 1)
  store i32 %call, i32* %save_mode, align 4
  %34 = load i32, i32* %save_mode, align 4
  %35 = load i32, i32* %save_mode, align 4
  %36 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack_slot42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %36, i32 0, i32 13
  %37 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %call46 = call %struct.rtx_def* @memory_address(i32 %35, %struct.rtx_def* %38)
  %call47 = call %struct.rtx_def* @gen_rtx_MEM(i32 %34, %struct.rtx_def* %call46)
  store %struct.rtx_def* %call47, %struct.rtx_def** %stack_area, align 8
  %39 = load i32, i32* %save_mode, align 4
  %cmp48 = icmp eq i32 %39, 51
  br i1 %cmp48, label %if.then.50, label %if.else.88

if.then.50:                                       ; preds = %if.then.38
  %40 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %tree_value51 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %40, i32 0, i32 0
  %41 = load %union.tree_node*, %union.tree_node** %tree_value51, align 8
  %common52 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type, align 8
  store %union.tree_node* %42, %union.tree_node** %ot, align 8
  %43 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %44 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %common53 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 2
  %bf.load54 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load54, 12
  %bf.clear55 = and i32 %bf.lshr, 1
  %mul56 = mul nsw i32 %bf.clear55, 1
  %45 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %common57 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common57, i32 0, i32 2
  %bf.load58 = load i32, i32* %volatile_flag, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 11
  %bf.clear60 = and i32 %bf.lshr59, 1
  %mul61 = mul nsw i32 %bf.clear60, 2
  %or = or i32 %mul56, %mul61
  %46 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %type62 = bitcast %union.tree_node* %46 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type62, i32 0, i32 6
  %bf.load63 = load i32, i32* %restrict_flag, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 21
  %bf.clear65 = and i32 %bf.lshr64, 1
  %mul66 = mul nsw i32 %bf.clear65, 4
  %or67 = or i32 %or, %mul66
  %47 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %common68 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %code69 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common68, i32 0, i32 2
  %bf.load70 = load i32, i32* %code69, align 8
  %bf.clear71 = and i32 %bf.load70, 255
  %cmp72 = icmp eq i32 %bf.clear71, 20
  br i1 %cmp72, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.50
  %48 = load %union.tree_node*, %union.tree_node** %ot, align 8
  %common74 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %type75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 1
  %49 = load %union.tree_node*, %union.tree_node** %type75, align 8
  %tobool76 = icmp ne %union.tree_node* %49, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.50
  %50 = phi i1 [ false, %if.then.50 ], [ %tobool76, %land.rhs ]
  %land.ext = zext i1 %50 to i32
  %mul77 = mul nsw i32 %land.ext, 8
  %or78 = or i32 %or67, %mul77
  %or79 = or i32 %or78, 1
  %call80 = call %union.tree_node* @build_qualified_type(%union.tree_node* %43, i32 %or79)
  store %union.tree_node* %call80, %union.tree_node** %nt, align 8
  %51 = load %union.tree_node*, %union.tree_node** %nt, align 8
  %call81 = call %struct.rtx_def* @assign_temp(%union.tree_node* %51, i32 0, i32 1, i32 1)
  %52 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %save_area = getelementptr inbounds %struct.arg_data, %struct.arg_data* %52, i32 0, i32 14
  store %struct.rtx_def* %call81, %struct.rtx_def** %save_area, align 8
  %53 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %save_area82 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i32 0, i32 14
  %54 = load %struct.rtx_def*, %struct.rtx_def** %save_area82, align 8
  call void @preserve_temp_slots(%struct.rtx_def* %54)
  %55 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %save_area83 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %55, i32 0, i32 14
  %56 = load %struct.rtx_def*, %struct.rtx_def** %save_area83, align 8
  %call84 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %56)
  %57 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %58 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %tree_value85 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %58, i32 0, i32 0
  %59 = load %union.tree_node*, %union.tree_node** %tree_value85, align 8
  %call86 = call %struct.rtx_def* @expr_size(%union.tree_node* %59)
  %call87 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %call84, %struct.rtx_def* %57, %struct.rtx_def* %call86)
  br label %if.end.93

if.else.88:                                       ; preds = %if.then.38
  %60 = load i32, i32* %save_mode, align 4
  %call89 = call %struct.rtx_def* @gen_reg_rtx(i32 %60)
  %61 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %save_area90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %61, i32 0, i32 14
  store %struct.rtx_def* %call89, %struct.rtx_def** %save_area90, align 8
  %62 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %save_area91 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %62, i32 0, i32 14
  %63 = load %struct.rtx_def*, %struct.rtx_def** %save_area91, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %call92 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %63, %struct.rtx_def* %64)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.88, %land.end
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %for.end
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %land.lhs.true.7, %land.lhs.true.5, %if.then.3
  %65 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %tobool96 = icmp ne %struct.rtx_def* %65, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.112

land.lhs.true.97:                                 ; preds = %if.end.95
  %66 = load i32, i32* %variable_size.addr, align 4
  %tobool98 = icmp ne i32 %66, 0
  br i1 %tobool98, label %if.end.112, label %land.lhs.true.99

land.lhs.true.99:                                 ; preds = %land.lhs.true.97
  %67 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack100 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %67, i32 0, i32 12
  %68 = load %struct.rtx_def*, %struct.rtx_def** %stack100, align 8
  %tobool101 = icmp ne %struct.rtx_def* %68, null
  br i1 %tobool101, label %if.then.102, label %if.end.112

if.then.102:                                      ; preds = %land.lhs.true.99
  %69 = load i32, i32* %lower_bound, align 4
  store i32 %69, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.109, %if.then.102
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %upper_bound, align 4
  %cmp104 = icmp slt i32 %70, %71
  br i1 %cmp104, label %for.body.106, label %for.end.111

for.body.106:                                     ; preds = %for.cond.103
  %72 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %72 to i64
  %73 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %73, i64 %idxprom107
  store i8 1, i8* %arrayidx108, align 1
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.body.106
  %74 = load i32, i32* %i, align 4
  %inc110 = add nsw i32 %74, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.103

for.end.111:                                      ; preds = %for.cond.103
  br label %if.end.112

if.end.112:                                       ; preds = %for.end.111, %land.lhs.true.99, %land.lhs.true.97, %if.end.95
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %land.lhs.true, %if.end
  %75 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %75, i32 0, i32 8
  %76 = load i32, i32* %pass_on_stack, align 4
  %tobool114 = icmp ne i32 %76, 0
  br i1 %tobool114, label %if.end.123, label %if.then.115

if.then.115:                                      ; preds = %if.end.113
  %77 = load i32, i32* %flags.addr, align 4
  %and116 = and i32 %77, 256
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %if.then.115
  %78 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %tail_call_reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %78, i32 0, i32 5
  %79 = load %struct.rtx_def*, %struct.rtx_def** %tail_call_reg, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %reg, align 8
  br label %if.end.121

if.else.119:                                      ; preds = %if.then.115
  %80 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %reg120 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %80, i32 0, i32 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %reg120, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %reg, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.119, %if.then.118
  %82 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %partial122 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %82, i32 0, i32 7
  %83 = load i32, i32* %partial122, align 4
  store i32 %83, i32* %partial, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.121, %if.end.113
  %84 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp124 = icmp ne %struct.rtx_def* %84, null
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.130

land.lhs.true.126:                                ; preds = %if.end.123
  %85 = load i32, i32* %partial, align 4
  %cmp127 = icmp eq i32 %85, 0
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.126
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4370, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.store_one_arg, i32 0, i32 0)) #7
  unreachable

if.end.130:                                       ; preds = %land.lhs.true.126, %if.end.123
  %86 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %n_aligned_regs = getelementptr inbounds %struct.arg_data, %struct.arg_data* %86, i32 0, i32 16
  %87 = load i32, i32* %n_aligned_regs, align 4
  %cmp131 = icmp ne i32 %87, 0
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.130
  store %struct.rtx_def* null, %struct.rtx_def** %reg, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.133, %if.end.130
  %88 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %88, i32 0, i32 2
  %89 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %cmp135 = icmp eq %struct.rtx_def* %89, null
  br i1 %cmp135, label %if.then.137, label %if.end.183

if.then.137:                                      ; preds = %if.end.134
  %90 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %pass_on_stack138 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %90, i32 0, i32 8
  %91 = load i32, i32* %pass_on_stack138, align 4
  %tobool139 = icmp ne i32 %91, 0
  br i1 %tobool139, label %if.then.140, label %if.end.142

if.then.140:                                      ; preds = %if.then.137
  %92 = load i32, i32* @stack_arg_under_construction, align 4
  %inc141 = add nsw i32 %92, 1
  store i32 %inc141, i32* @stack_arg_under_construction, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.140, %if.then.137
  %93 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %94 = load i32, i32* %partial, align 4
  %tobool143 = icmp ne i32 %94, 0
  br i1 %tobool143, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.142
  %95 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common144 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %type145 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common144, i32 0, i32 1
  %96 = load %union.tree_node*, %union.tree_node** %type145, align 8
  %type146 = bitcast %union.tree_node* %96 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type146, i32 0, i32 6
  %bf.load147 = load i32, i32* %mode, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 9
  %bf.clear149 = and i32 %bf.lshr148, 127
  %97 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode150 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %97, i32 0, i32 1
  %98 = load i32, i32* %mode150, align 4
  %cmp151 = icmp ne i32 %bf.clear149, %98
  br i1 %cmp151, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end.142
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %99 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack153 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %99, i32 0, i32 12
  %100 = load %struct.rtx_def*, %struct.rtx_def** %stack153, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ null, %cond.true ], [ %100, %cond.false ]
  %call154 = call %struct.rtx_def* @expand_expr(%union.tree_node* %93, %struct.rtx_def* %cond, i32 0, i32 0)
  %101 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value155 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %101, i32 0, i32 2
  store %struct.rtx_def* %call154, %struct.rtx_def** %value155, align 8
  %102 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode156 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %102, i32 0, i32 1
  %103 = load i32, i32* %mode156, align 4
  %104 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common157 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %type158 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 1
  %105 = load %union.tree_node*, %union.tree_node** %type158, align 8
  %type159 = bitcast %union.tree_node* %105 to %struct.tree_type*
  %mode160 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type159, i32 0, i32 6
  %bf.load161 = load i32, i32* %mode160, align 4
  %bf.lshr162 = lshr i32 %bf.load161, 9
  %bf.clear163 = and i32 %bf.lshr162, 127
  %cmp164 = icmp ne i32 %103, %bf.clear163
  br i1 %cmp164, label %if.then.166, label %if.end.178

if.then.166:                                      ; preds = %cond.end
  %106 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode167 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %106, i32 0, i32 1
  %107 = load i32, i32* %mode167, align 4
  %108 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common168 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %type169 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common168, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %type169, align 8
  %type170 = bitcast %union.tree_node* %109 to %struct.tree_type*
  %mode171 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type170, i32 0, i32 6
  %bf.load172 = load i32, i32* %mode171, align 4
  %bf.lshr173 = lshr i32 %bf.load172, 9
  %bf.clear174 = and i32 %bf.lshr173, 127
  %110 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value175 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %110, i32 0, i32 2
  %111 = load %struct.rtx_def*, %struct.rtx_def** %value175, align 8
  %112 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %unsignedp = getelementptr inbounds %struct.arg_data, %struct.arg_data* %112, i32 0, i32 6
  %113 = load i32, i32* %unsignedp, align 4
  %call176 = call %struct.rtx_def* @convert_modes(i32 %107, i32 %bf.clear174, %struct.rtx_def* %111, i32 %113)
  %114 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value177 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %114, i32 0, i32 2
  store %struct.rtx_def* %call176, %struct.rtx_def** %value177, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.166, %cond.end
  %115 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %pass_on_stack179 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %115, i32 0, i32 8
  %116 = load i32, i32* %pass_on_stack179, align 4
  %tobool180 = icmp ne i32 %116, 0
  br i1 %tobool180, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %if.end.178
  %117 = load i32, i32* @stack_arg_under_construction, align 4
  %dec = add nsw i32 %117, -1
  store i32 %dec, i32* @stack_arg_under_construction, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.181, %if.end.178
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.134
  %118 = load i32, i32* %flags.addr, align 4
  %and184 = and i32 %118, 8
  %tobool185 = icmp ne i32 %and184, 0
  br i1 %tobool185, label %if.then.186, label %if.end.187

if.then.186:                                      ; preds = %if.end.183
  call void @do_pending_stack_adjust()
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.186, %if.end.183
  %119 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value188 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %119, i32 0, i32 2
  %120 = load %struct.rtx_def*, %struct.rtx_def** %value188, align 8
  %121 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack189 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %121, i32 0, i32 12
  %122 = load %struct.rtx_def*, %struct.rtx_def** %stack189, align 8
  %cmp190 = icmp eq %struct.rtx_def* %120, %122
  br i1 %cmp190, label %if.then.192, label %if.else.193

if.then.192:                                      ; preds = %if.end.187
  br label %if.end.654

if.else.193:                                      ; preds = %if.end.187
  %123 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode194 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %123, i32 0, i32 1
  %124 = load i32, i32* %mode194, align 4
  %cmp195 = icmp ne i32 %124, 51
  br i1 %cmp195, label %if.then.197, label %if.else.295

if.then.197:                                      ; preds = %if.else.193
  %125 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode199 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %125, i32 0, i32 1
  %126 = load i32, i32* %mode199, align 4
  %idxprom200 = sext i32 %126 to i64
  %arrayidx201 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom200
  %127 = load i8, i8* %arrayidx201, align 1
  %conv202 = zext i8 %127 to i32
  store i32 %conv202, i32* %size198, align 4
  %128 = load i32, i32* @target_flags, align 4
  %and203 = and i32 %128, 33554432
  %tobool204 = icmp ne i32 %and203, 0
  br i1 %tobool204, label %cond.true.205, label %cond.false.208

cond.true.205:                                    ; preds = %if.then.197
  %129 = load i32, i32* %size198, align 4
  %add206 = add nsw i32 %129, 7
  %and207 = and i32 %add206, -8
  br label %cond.end.211

cond.false.208:                                   ; preds = %if.then.197
  %130 = load i32, i32* %size198, align 4
  %add209 = add nsw i32 %130, 1
  %and210 = and i32 %add209, -2
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.208, %cond.true.205
  %cond212 = phi i32 [ %and207, %cond.true.205 ], [ %and210, %cond.false.208 ]
  store i32 %cond212, i32* %size198, align 4
  %131 = load i32, i32* %size198, align 4
  store i32 %131, i32* %used, align 4
  %132 = load i32, i32* %size198, align 4
  %133 = load i32, i32* @target_flags, align 4
  %and213 = and i32 %133, 33554432
  %tobool214 = icmp ne i32 %and213, 0
  %cond215 = select i1 %tobool214, i32 64, i32 32
  %div = sdiv i32 %cond215, 8
  %add216 = add nsw i32 %132, %div
  %sub = sub nsw i32 %add216, 1
  %134 = load i32, i32* @target_flags, align 4
  %and217 = and i32 %134, 33554432
  %tobool218 = icmp ne i32 %and217, 0
  %cond219 = select i1 %tobool218, i32 64, i32 32
  %div220 = sdiv i32 %cond219, 8
  %div221 = sdiv i32 %sub, %div220
  %135 = load i32, i32* @target_flags, align 4
  %and222 = and i32 %135, 33554432
  %tobool223 = icmp ne i32 %and222, 0
  %cond224 = select i1 %tobool223, i32 64, i32 32
  %div225 = sdiv i32 %cond224, 8
  %mul226 = mul nsw i32 %div221, %div225
  store i32 %mul226, i32* %used, align 4
  %136 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value227 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %136, i32 0, i32 2
  %137 = load %struct.rtx_def*, %struct.rtx_def** %value227, align 8
  %138 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode228 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %138, i32 0, i32 1
  %139 = load i32, i32* %mode228, align 4
  %140 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common229 = bitcast %union.tree_node* %140 to %struct.tree_common*
  %type230 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common229, i32 0, i32 1
  %141 = load %union.tree_node*, %union.tree_node** %type230, align 8
  %142 = load i32, i32* %partial, align 4
  %143 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %144 = load i32, i32* %used, align 4
  %145 = load i32, i32* %size198, align 4
  %sub231 = sub nsw i32 %144, %145
  %146 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %147 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset = getelementptr inbounds %struct.arg_data, %struct.arg_data* %147, i32 0, i32 9
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %offset, i32 0, i32 1
  %148 = load %union.tree_node*, %union.tree_node** %var, align 8
  %cmp232 = icmp eq %union.tree_node* %148, null
  br i1 %cmp232, label %cond.true.234, label %cond.false.238

cond.true.234:                                    ; preds = %cond.end.211
  %149 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset235 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %149, i32 0, i32 9
  %constant236 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset235, i32 0, i32 0
  %150 = load i64, i64* %constant236, align 8
  %call237 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %150)
  br label %cond.end.258

cond.false.238:                                   ; preds = %cond.end.211
  %151 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset239 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %151, i32 0, i32 9
  %var240 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset239, i32 0, i32 1
  %152 = load %union.tree_node*, %union.tree_node** %var240, align 8
  %cmp241 = icmp eq %union.tree_node* %152, null
  br i1 %cmp241, label %cond.true.243, label %cond.false.247

cond.true.243:                                    ; preds = %cond.false.238
  %153 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset244 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %153, i32 0, i32 9
  %constant245 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset244, i32 0, i32 0
  %154 = load i64, i64* %constant245, align 8
  %call246 = call %union.tree_node* @size_int_wide(i64 %154, i32 1)
  br label %cond.end.255

cond.false.247:                                   ; preds = %cond.false.238
  %155 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %156 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset248 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %156, i32 0, i32 9
  %var249 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset248, i32 0, i32 1
  %157 = load %union.tree_node*, %union.tree_node** %var249, align 8
  %call250 = call %union.tree_node* @convert(%union.tree_node* %155, %union.tree_node* %157)
  %158 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset251 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %158, i32 0, i32 9
  %constant252 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset251, i32 0, i32 0
  %159 = load i64, i64* %constant252, align 8
  %call253 = call %union.tree_node* @size_int_wide(i64 %159, i32 1)
  %call254 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call250, %union.tree_node* %call253)
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.247, %cond.true.243
  %cond256 = phi %union.tree_node* [ %call246, %cond.true.243 ], [ %call254, %cond.false.247 ]
  %call257 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond256, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.258

cond.end.258:                                     ; preds = %cond.end.255, %cond.true.234
  %cond259 = phi %struct.rtx_def* [ %call237, %cond.true.234 ], [ %call257, %cond.end.255 ]
  %160 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %161 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad = getelementptr inbounds %struct.arg_data, %struct.arg_data* %161, i32 0, i32 17
  %var260 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 1
  %162 = load %union.tree_node*, %union.tree_node** %var260, align 8
  %cmp261 = icmp eq %union.tree_node* %162, null
  br i1 %cmp261, label %cond.true.263, label %cond.false.267

cond.true.263:                                    ; preds = %cond.end.258
  %163 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad264 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %163, i32 0, i32 17
  %constant265 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad264, i32 0, i32 0
  %164 = load i64, i64* %constant265, align 8
  %call266 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %164)
  br label %cond.end.287

cond.false.267:                                   ; preds = %cond.end.258
  %165 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad268 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %165, i32 0, i32 17
  %var269 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad268, i32 0, i32 1
  %166 = load %union.tree_node*, %union.tree_node** %var269, align 8
  %cmp270 = icmp eq %union.tree_node* %166, null
  br i1 %cmp270, label %cond.true.272, label %cond.false.276

cond.true.272:                                    ; preds = %cond.false.267
  %167 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad273 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %167, i32 0, i32 17
  %constant274 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad273, i32 0, i32 0
  %168 = load i64, i64* %constant274, align 8
  %call275 = call %union.tree_node* @size_int_wide(i64 %168, i32 1)
  br label %cond.end.284

cond.false.276:                                   ; preds = %cond.false.267
  %169 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %170 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad277 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %170, i32 0, i32 17
  %var278 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad277, i32 0, i32 1
  %171 = load %union.tree_node*, %union.tree_node** %var278, align 8
  %call279 = call %union.tree_node* @convert(%union.tree_node* %169, %union.tree_node* %171)
  %172 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad280 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %172, i32 0, i32 17
  %constant281 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad280, i32 0, i32 0
  %173 = load i64, i64* %constant281, align 8
  %call282 = call %union.tree_node* @size_int_wide(i64 %173, i32 1)
  %call283 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call279, %union.tree_node* %call282)
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.false.276, %cond.true.272
  %cond285 = phi %union.tree_node* [ %call275, %cond.true.272 ], [ %call283, %cond.false.276 ]
  %call286 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond285, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.287

cond.end.287:                                     ; preds = %cond.end.284, %cond.true.263
  %cond288 = phi %struct.rtx_def* [ %call266, %cond.true.263 ], [ %call286, %cond.end.284 ]
  call void @emit_push_insn(%struct.rtx_def* %137, i32 %139, %union.tree_node* %141, %struct.rtx_def* null, i32 0, i32 %142, %struct.rtx_def* %143, i32 %sub231, %struct.rtx_def* %146, %struct.rtx_def* %cond259, i32 %160, %struct.rtx_def* %cond288)
  %174 = load i32, i32* %partial, align 4
  %cmp289 = icmp eq i32 %174, 0
  br i1 %cmp289, label %if.then.291, label %if.end.294

if.then.291:                                      ; preds = %cond.end.287
  %175 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack292 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %175, i32 0, i32 12
  %176 = load %struct.rtx_def*, %struct.rtx_def** %stack292, align 8
  %177 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value293 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %177, i32 0, i32 2
  store %struct.rtx_def* %176, %struct.rtx_def** %value293, align 8
  br label %if.end.294

if.end.294:                                       ; preds = %if.then.291, %cond.end.287
  br label %if.end.653

if.else.295:                                      ; preds = %if.else.193
  %178 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size296 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %178, i32 0, i32 11
  %var297 = getelementptr inbounds %struct.args_size, %struct.args_size* %size296, i32 0, i32 1
  %179 = load %union.tree_node*, %union.tree_node** %var297, align 8
  %cmp298 = icmp ne %union.tree_node* %179, null
  br i1 %cmp298, label %if.then.300, label %if.else.331

if.then.300:                                      ; preds = %if.else.295
  store i32 0, i32* %excess, align 4
  %180 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size301 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %180, i32 0, i32 11
  %var302 = getelementptr inbounds %struct.args_size, %struct.args_size* %size301, i32 0, i32 1
  %181 = load %union.tree_node*, %union.tree_node** %var302, align 8
  %cmp303 = icmp eq %union.tree_node* %181, null
  br i1 %cmp303, label %cond.true.305, label %cond.false.309

cond.true.305:                                    ; preds = %if.then.300
  %182 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size306 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %182, i32 0, i32 11
  %constant307 = getelementptr inbounds %struct.args_size, %struct.args_size* %size306, i32 0, i32 0
  %183 = load i64, i64* %constant307, align 8
  %call308 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %183)
  br label %cond.end.329

cond.false.309:                                   ; preds = %if.then.300
  %184 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size310 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %184, i32 0, i32 11
  %var311 = getelementptr inbounds %struct.args_size, %struct.args_size* %size310, i32 0, i32 1
  %185 = load %union.tree_node*, %union.tree_node** %var311, align 8
  %cmp312 = icmp eq %union.tree_node* %185, null
  br i1 %cmp312, label %cond.true.314, label %cond.false.318

cond.true.314:                                    ; preds = %cond.false.309
  %186 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size315 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %186, i32 0, i32 11
  %constant316 = getelementptr inbounds %struct.args_size, %struct.args_size* %size315, i32 0, i32 0
  %187 = load i64, i64* %constant316, align 8
  %call317 = call %union.tree_node* @size_int_wide(i64 %187, i32 1)
  br label %cond.end.326

cond.false.318:                                   ; preds = %cond.false.309
  %188 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %189 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size319 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %189, i32 0, i32 11
  %var320 = getelementptr inbounds %struct.args_size, %struct.args_size* %size319, i32 0, i32 1
  %190 = load %union.tree_node*, %union.tree_node** %var320, align 8
  %call321 = call %union.tree_node* @convert(%union.tree_node* %188, %union.tree_node* %190)
  %191 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size322 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %191, i32 0, i32 11
  %constant323 = getelementptr inbounds %struct.args_size, %struct.args_size* %size322, i32 0, i32 0
  %192 = load i64, i64* %constant323, align 8
  %call324 = call %union.tree_node* @size_int_wide(i64 %192, i32 1)
  %call325 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call321, %union.tree_node* %call324)
  br label %cond.end.326

cond.end.326:                                     ; preds = %cond.false.318, %cond.true.314
  %cond327 = phi %union.tree_node* [ %call317, %cond.true.314 ], [ %call325, %cond.false.318 ]
  %call328 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond327, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.end.326, %cond.true.305
  %cond330 = phi %struct.rtx_def* [ %call308, %cond.true.305 ], [ %call328, %cond.end.326 ]
  store %struct.rtx_def* %cond330, %struct.rtx_def** %size_rtx, align 8
  br label %if.end.346

if.else.331:                                      ; preds = %if.else.295
  %193 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size332 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %193, i32 0, i32 11
  %constant333 = getelementptr inbounds %struct.args_size, %struct.args_size* %size332, i32 0, i32 0
  %194 = load i64, i64* %constant333, align 8
  %195 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common334 = bitcast %union.tree_node* %195 to %struct.tree_common*
  %type335 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common334, i32 0, i32 1
  %196 = load %union.tree_node*, %union.tree_node** %type335, align 8
  %call336 = call i64 @int_size_in_bytes(%union.tree_node* %196)
  %sub337 = sub nsw i64 %194, %call336
  %197 = load i32, i32* %partial, align 4
  %198 = load i32, i32* @target_flags, align 4
  %and338 = and i32 %198, 33554432
  %tobool339 = icmp ne i32 %and338, 0
  %cond340 = select i1 %tobool339, i32 8, i32 4
  %mul341 = mul nsw i32 %197, %cond340
  %conv342 = sext i32 %mul341 to i64
  %add343 = add nsw i64 %sub337, %conv342
  %conv344 = trunc i64 %add343 to i32
  store i32 %conv344, i32* %excess, align 4
  %199 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %call345 = call %struct.rtx_def* @expr_size(%union.tree_node* %199)
  store %struct.rtx_def* %call345, %struct.rtx_def** %size_rtx, align 8
  br label %if.end.346

if.end.346:                                       ; preds = %if.else.331, %cond.end.329
  %200 = load i32, i32* %flags.addr, align 4
  %and347 = and i32 %200, 256
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %land.lhs.true.349, label %if.end.459

land.lhs.true.349:                                ; preds = %if.end.346
  %201 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value350 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %201, i32 0, i32 2
  %202 = load %struct.rtx_def*, %struct.rtx_def** %value350, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load351 = load i32, i32* %203, align 8
  %bf.clear352 = and i32 %bf.load351, 65535
  %cmp353 = icmp eq i32 %bf.clear352, 66
  br i1 %cmp353, label %if.then.355, label %if.end.459

if.then.355:                                      ; preds = %land.lhs.true.349
  %204 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value356 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %204, i32 0, i32 2
  %205 = load %struct.rtx_def*, %struct.rtx_def** %value356, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %x, align 8
  store i32 0, i32* %i357, align 4
  %206 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 0
  %rtx360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.rtx_def**
  %207 = load %struct.rtx_def*, %struct.rtx_def** %rtx360, align 8
  %208 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %208, i32 0, i32 15
  %209 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %cmp361 = icmp eq %struct.rtx_def* %207, %209
  br i1 %cmp361, label %if.then.392, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %if.then.355
  %210 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 0
  %rtx366 = bitcast %union.rtunion_def* %arrayidx365 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx366, align 8
  %212 = bitcast %struct.rtx_def* %211 to i32*
  %bf.load367 = load i32, i32* %212, align 8
  %bf.clear368 = and i32 %bf.load367, 65535
  %cmp369 = icmp eq i32 %bf.clear368, 75
  br i1 %cmp369, label %land.lhs.true.371, label %if.end.458

land.lhs.true.371:                                ; preds = %lor.lhs.false.363
  %213 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld372 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld372, i32 0, i64 0
  %rtx374 = bitcast %union.rtunion_def* %arrayidx373 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx374, align 8
  %fld375 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx376 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld375, i32 0, i64 0
  %rtx377 = bitcast %union.rtunion_def* %arrayidx376 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx377, align 8
  %216 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer378 = getelementptr inbounds %struct.function, %struct.function* %216, i32 0, i32 15
  %217 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer378, align 8
  %cmp379 = icmp eq %struct.rtx_def* %215, %217
  br i1 %cmp379, label %land.lhs.true.381, label %if.end.458

land.lhs.true.381:                                ; preds = %land.lhs.true.371
  %218 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 0
  %rtx384 = bitcast %union.rtunion_def* %arrayidx383 to %struct.rtx_def**
  %219 = load %struct.rtx_def*, %struct.rtx_def** %rtx384, align 8
  %fld385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %219, i32 0, i32 1
  %arrayidx386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld385, i32 0, i64 1
  %rtx387 = bitcast %union.rtunion_def* %arrayidx386 to %struct.rtx_def**
  %220 = load %struct.rtx_def*, %struct.rtx_def** %rtx387, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %bf.load388 = load i32, i32* %221, align 8
  %bf.clear389 = and i32 %bf.load388, 65535
  %cmp390 = icmp eq i32 %bf.clear389, 54
  br i1 %cmp390, label %if.then.392, label %if.end.458

if.then.392:                                      ; preds = %land.lhs.true.381, %if.then.355
  %222 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld393, i32 0, i64 0
  %rtx395 = bitcast %union.rtunion_def* %arrayidx394 to %struct.rtx_def**
  %223 = load %struct.rtx_def*, %struct.rtx_def** %rtx395, align 8
  %224 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer396 = getelementptr inbounds %struct.function, %struct.function* %224, i32 0, i32 15
  %225 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer396, align 8
  %cmp397 = icmp ne %struct.rtx_def* %223, %225
  br i1 %cmp397, label %if.then.399, label %if.end.410

if.then.399:                                      ; preds = %if.then.392
  %226 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld400 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld400, i32 0, i64 0
  %rtx402 = bitcast %union.rtunion_def* %arrayidx401 to %struct.rtx_def**
  %227 = load %struct.rtx_def*, %struct.rtx_def** %rtx402, align 8
  %fld403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %227, i32 0, i32 1
  %arrayidx404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld403, i32 0, i64 1
  %rtx405 = bitcast %union.rtunion_def* %arrayidx404 to %struct.rtx_def**
  %228 = load %struct.rtx_def*, %struct.rtx_def** %rtx405, align 8
  %fld406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld406, i32 0, i64 0
  %rtwint408 = bitcast %union.rtunion_def* %arrayidx407 to i64*
  %229 = load i64, i64* %rtwint408, align 8
  %conv409 = trunc i64 %229 to i32
  store i32 %conv409, i32* %i357, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.399, %if.then.392
  %230 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset411 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %230, i32 0, i32 9
  %var412 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset411, i32 0, i32 1
  %231 = load %union.tree_node*, %union.tree_node** %var412, align 8
  %tobool413 = icmp ne %union.tree_node* %231, null
  br i1 %tobool413, label %if.then.419, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %if.end.410
  %232 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load415 = load i32, i32* %233, align 8
  %bf.clear416 = and i32 %bf.load415, 65535
  %cmp417 = icmp ne i32 %bf.clear416, 54
  br i1 %cmp417, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %lor.lhs.false.414, %if.end.410
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4515, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.store_one_arg, i32 0, i32 0)) #7
  unreachable

if.end.420:                                       ; preds = %lor.lhs.false.414
  %234 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset421 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %234, i32 0, i32 9
  %constant422 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset421, i32 0, i32 0
  %235 = load i64, i64* %constant422, align 8
  %236 = load i32, i32* %i357, align 4
  %conv423 = sext i32 %236 to i64
  %cmp424 = icmp sgt i64 %235, %conv423
  br i1 %cmp424, label %if.then.426, label %if.else.438

if.then.426:                                      ; preds = %if.end.420
  %237 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset427 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %237, i32 0, i32 9
  %constant428 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset427, i32 0, i32 0
  %238 = load i64, i64* %constant428, align 8
  %239 = load i32, i32* %i357, align 4
  %conv429 = sext i32 %239 to i64
  %240 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx, align 8
  %fld430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld430, i32 0, i64 0
  %rtwint432 = bitcast %union.rtunion_def* %arrayidx431 to i64*
  %241 = load i64, i64* %rtwint432, align 8
  %add433 = add nsw i64 %conv429, %241
  %cmp434 = icmp slt i64 %238, %add433
  br i1 %cmp434, label %if.then.436, label %if.end.437

if.then.436:                                      ; preds = %if.then.426
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.436, %if.then.426
  br label %if.end.457

if.else.438:                                      ; preds = %if.end.420
  %242 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset439 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %242, i32 0, i32 9
  %constant440 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset439, i32 0, i32 0
  %243 = load i64, i64* %constant440, align 8
  %244 = load i32, i32* %i357, align 4
  %conv441 = sext i32 %244 to i64
  %cmp442 = icmp slt i64 %243, %conv441
  br i1 %cmp442, label %if.then.444, label %if.end.456

if.then.444:                                      ; preds = %if.else.438
  %245 = load i32, i32* %i357, align 4
  %conv445 = sext i32 %245 to i64
  %246 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset446 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %246, i32 0, i32 9
  %constant447 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset446, i32 0, i32 0
  %247 = load i64, i64* %constant447, align 8
  %248 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx, align 8
  %fld448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld448, i32 0, i64 0
  %rtwint450 = bitcast %union.rtunion_def* %arrayidx449 to i64*
  %249 = load i64, i64* %rtwint450, align 8
  %add451 = add nsw i64 %247, %249
  %cmp452 = icmp slt i64 %conv445, %add451
  br i1 %cmp452, label %if.then.454, label %if.end.455

if.then.454:                                      ; preds = %if.then.444
  store i32 1, i32* %sibcall_failure, align 4
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.454, %if.then.444
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %if.else.438
  br label %if.end.457

if.end.457:                                       ; preds = %if.end.456, %if.end.437
  br label %if.end.458

if.end.458:                                       ; preds = %if.end.457, %land.lhs.true.381, %land.lhs.true.371, %lor.lhs.false.363
  br label %if.end.459

if.end.459:                                       ; preds = %if.end.458, %land.lhs.true.349, %if.end.346
  %250 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %reg460 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %250, i32 0, i32 4
  %251 = load %struct.rtx_def*, %struct.rtx_def** %reg460, align 8
  %tobool461 = icmp ne %struct.rtx_def* %251, null
  br i1 %tobool461, label %land.lhs.true.462, label %if.end.578

land.lhs.true.462:                                ; preds = %if.end.459
  %252 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %pass_on_stack463 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %252, i32 0, i32 8
  %253 = load i32, i32* %pass_on_stack463, align 4
  %tobool464 = icmp ne i32 %253, 0
  br i1 %tobool464, label %if.then.465, label %if.end.578

if.then.465:                                      ; preds = %land.lhs.true.462
  %254 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset466 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %254, i32 0, i32 9
  %constant467 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset466, i32 0, i32 0
  %255 = load i64, i64* %constant467, align 8
  %256 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv468 = sext i32 %256 to i64
  %cmp469 = icmp slt i64 %255, %conv468
  br i1 %cmp469, label %land.lhs.true.471, label %if.else.476

land.lhs.true.471:                                ; preds = %if.then.465
  %257 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset472 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %257, i32 0, i32 9
  %var473 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset472, i32 0, i32 1
  %258 = load %union.tree_node*, %union.tree_node** %var473, align 8
  %tobool474 = icmp ne %union.tree_node* %258, null
  br i1 %tobool474, label %if.then.475, label %if.else.476

if.then.475:                                      ; preds = %land.lhs.true.471
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.577

if.else.476:                                      ; preds = %land.lhs.true.471, %if.then.465
  %259 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset477 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %259, i32 0, i32 9
  %constant478 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset477, i32 0, i32 0
  %260 = load i64, i64* %constant478, align 8
  %261 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv479 = sext i32 %261 to i64
  %cmp480 = icmp slt i64 %260, %conv479
  br i1 %cmp480, label %land.lhs.true.482, label %if.else.487

land.lhs.true.482:                                ; preds = %if.else.476
  %262 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size483 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %262, i32 0, i32 11
  %var484 = getelementptr inbounds %struct.args_size, %struct.args_size* %size483, i32 0, i32 1
  %263 = load %union.tree_node*, %union.tree_node** %var484, align 8
  %tobool485 = icmp ne %union.tree_node* %263, null
  br i1 %tobool485, label %if.then.486, label %if.else.487

if.then.486:                                      ; preds = %land.lhs.true.482
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.576

if.else.487:                                      ; preds = %land.lhs.true.482, %if.else.476
  %264 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset488 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %264, i32 0, i32 9
  %constant489 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset488, i32 0, i32 0
  %265 = load i64, i64* %constant489, align 8
  %266 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv490 = sext i32 %266 to i64
  %cmp491 = icmp slt i64 %265, %conv490
  br i1 %cmp491, label %land.lhs.true.493, label %if.end.575

land.lhs.true.493:                                ; preds = %if.else.487
  %267 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset494 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %267, i32 0, i32 9
  %constant495 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset494, i32 0, i32 0
  %268 = load i64, i64* %constant495, align 8
  %269 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size496 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %269, i32 0, i32 11
  %constant497 = getelementptr inbounds %struct.args_size, %struct.args_size* %size496, i32 0, i32 0
  %270 = load i64, i64* %constant497, align 8
  %add498 = add nsw i64 %268, %270
  %271 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv499 = sext i32 %271 to i64
  %cmp500 = icmp sgt i64 %add498, %conv499
  br i1 %cmp500, label %if.then.502, label %if.end.575

if.then.502:                                      ; preds = %land.lhs.true.493
  %272 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %conv503 = sext i32 %272 to i64
  %273 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset504 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %273, i32 0, i32 9
  %constant505 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset504, i32 0, i32 0
  %274 = load i64, i64* %constant505, align 8
  %sub506 = sub nsw i64 %conv503, %274
  %call507 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub506)
  store %struct.rtx_def* %call507, %struct.rtx_def** %size_rtx1, align 8
  %275 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value508 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %275, i32 0, i32 2
  %276 = load %struct.rtx_def*, %struct.rtx_def** %value508, align 8
  %277 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode509 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %277, i32 0, i32 1
  %278 = load i32, i32* %mode509, align 4
  %279 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common510 = bitcast %union.tree_node* %279 to %struct.tree_common*
  %type511 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common510, i32 0, i32 1
  %280 = load %union.tree_node*, %union.tree_node** %type511, align 8
  %281 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx1, align 8
  %282 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common512 = bitcast %union.tree_node* %282 to %struct.tree_common*
  %type513 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common512, i32 0, i32 1
  %283 = load %union.tree_node*, %union.tree_node** %type513, align 8
  %type514 = bitcast %union.tree_node* %283 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type514, i32 0, i32 7
  %284 = load i32, i32* %align, align 4
  %285 = load i32, i32* %partial, align 4
  %286 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %287 = load i32, i32* %excess, align 4
  %288 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %289 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset515 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %289, i32 0, i32 9
  %var516 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset515, i32 0, i32 1
  %290 = load %union.tree_node*, %union.tree_node** %var516, align 8
  %cmp517 = icmp eq %union.tree_node* %290, null
  br i1 %cmp517, label %cond.true.519, label %cond.false.523

cond.true.519:                                    ; preds = %if.then.502
  %291 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset520 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %291, i32 0, i32 9
  %constant521 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset520, i32 0, i32 0
  %292 = load i64, i64* %constant521, align 8
  %call522 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %292)
  br label %cond.end.543

cond.false.523:                                   ; preds = %if.then.502
  %293 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset524 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %293, i32 0, i32 9
  %var525 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset524, i32 0, i32 1
  %294 = load %union.tree_node*, %union.tree_node** %var525, align 8
  %cmp526 = icmp eq %union.tree_node* %294, null
  br i1 %cmp526, label %cond.true.528, label %cond.false.532

cond.true.528:                                    ; preds = %cond.false.523
  %295 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset529 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %295, i32 0, i32 9
  %constant530 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset529, i32 0, i32 0
  %296 = load i64, i64* %constant530, align 8
  %call531 = call %union.tree_node* @size_int_wide(i64 %296, i32 1)
  br label %cond.end.540

cond.false.532:                                   ; preds = %cond.false.523
  %297 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %298 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset533 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %298, i32 0, i32 9
  %var534 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset533, i32 0, i32 1
  %299 = load %union.tree_node*, %union.tree_node** %var534, align 8
  %call535 = call %union.tree_node* @convert(%union.tree_node* %297, %union.tree_node* %299)
  %300 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset536 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %300, i32 0, i32 9
  %constant537 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset536, i32 0, i32 0
  %301 = load i64, i64* %constant537, align 8
  %call538 = call %union.tree_node* @size_int_wide(i64 %301, i32 1)
  %call539 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call535, %union.tree_node* %call538)
  br label %cond.end.540

cond.end.540:                                     ; preds = %cond.false.532, %cond.true.528
  %cond541 = phi %union.tree_node* [ %call531, %cond.true.528 ], [ %call539, %cond.false.532 ]
  %call542 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond541, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.543

cond.end.543:                                     ; preds = %cond.end.540, %cond.true.519
  %cond544 = phi %struct.rtx_def* [ %call522, %cond.true.519 ], [ %call542, %cond.end.540 ]
  %302 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %303 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad545 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %303, i32 0, i32 17
  %var546 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad545, i32 0, i32 1
  %304 = load %union.tree_node*, %union.tree_node** %var546, align 8
  %cmp547 = icmp eq %union.tree_node* %304, null
  br i1 %cmp547, label %cond.true.549, label %cond.false.553

cond.true.549:                                    ; preds = %cond.end.543
  %305 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad550 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %305, i32 0, i32 17
  %constant551 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad550, i32 0, i32 0
  %306 = load i64, i64* %constant551, align 8
  %call552 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %306)
  br label %cond.end.573

cond.false.553:                                   ; preds = %cond.end.543
  %307 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad554 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %307, i32 0, i32 17
  %var555 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad554, i32 0, i32 1
  %308 = load %union.tree_node*, %union.tree_node** %var555, align 8
  %cmp556 = icmp eq %union.tree_node* %308, null
  br i1 %cmp556, label %cond.true.558, label %cond.false.562

cond.true.558:                                    ; preds = %cond.false.553
  %309 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad559 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %309, i32 0, i32 17
  %constant560 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad559, i32 0, i32 0
  %310 = load i64, i64* %constant560, align 8
  %call561 = call %union.tree_node* @size_int_wide(i64 %310, i32 1)
  br label %cond.end.570

cond.false.562:                                   ; preds = %cond.false.553
  %311 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %312 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad563 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %312, i32 0, i32 17
  %var564 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad563, i32 0, i32 1
  %313 = load %union.tree_node*, %union.tree_node** %var564, align 8
  %call565 = call %union.tree_node* @convert(%union.tree_node* %311, %union.tree_node* %313)
  %314 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad566 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %314, i32 0, i32 17
  %constant567 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad566, i32 0, i32 0
  %315 = load i64, i64* %constant567, align 8
  %call568 = call %union.tree_node* @size_int_wide(i64 %315, i32 1)
  %call569 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call565, %union.tree_node* %call568)
  br label %cond.end.570

cond.end.570:                                     ; preds = %cond.false.562, %cond.true.558
  %cond571 = phi %union.tree_node* [ %call561, %cond.true.558 ], [ %call569, %cond.false.562 ]
  %call572 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond571, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.end.570, %cond.true.549
  %cond574 = phi %struct.rtx_def* [ %call552, %cond.true.549 ], [ %call572, %cond.end.570 ]
  call void @emit_push_insn(%struct.rtx_def* %276, i32 %278, %union.tree_node* %280, %struct.rtx_def* %281, i32 %284, i32 %285, %struct.rtx_def* %286, i32 %287, %struct.rtx_def* %288, %struct.rtx_def* %cond544, i32 %302, %struct.rtx_def* %cond574)
  br label %if.end.575

if.end.575:                                       ; preds = %cond.end.573, %land.lhs.true.493, %if.else.487
  br label %if.end.576

if.end.576:                                       ; preds = %if.end.575, %if.then.486
  br label %if.end.577

if.end.577:                                       ; preds = %if.end.576, %if.then.475
  br label %if.end.578

if.end.578:                                       ; preds = %if.end.577, %land.lhs.true.462, %if.end.459
  %316 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value579 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %316, i32 0, i32 2
  %317 = load %struct.rtx_def*, %struct.rtx_def** %value579, align 8
  %318 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %mode580 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %318, i32 0, i32 1
  %319 = load i32, i32* %mode580, align 4
  %320 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common581 = bitcast %union.tree_node* %320 to %struct.tree_common*
  %type582 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common581, i32 0, i32 1
  %321 = load %union.tree_node*, %union.tree_node** %type582, align 8
  %322 = load %struct.rtx_def*, %struct.rtx_def** %size_rtx, align 8
  %323 = load %union.tree_node*, %union.tree_node** %pval, align 8
  %common583 = bitcast %union.tree_node* %323 to %struct.tree_common*
  %type584 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common583, i32 0, i32 1
  %324 = load %union.tree_node*, %union.tree_node** %type584, align 8
  %type585 = bitcast %union.tree_node* %324 to %struct.tree_type*
  %align586 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type585, i32 0, i32 7
  %325 = load i32, i32* %align586, align 4
  %326 = load i32, i32* %partial, align 4
  %327 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %328 = load i32, i32* %excess, align 4
  %329 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %330 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset587 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %330, i32 0, i32 9
  %var588 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset587, i32 0, i32 1
  %331 = load %union.tree_node*, %union.tree_node** %var588, align 8
  %cmp589 = icmp eq %union.tree_node* %331, null
  br i1 %cmp589, label %cond.true.591, label %cond.false.595

cond.true.591:                                    ; preds = %if.end.578
  %332 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset592 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %332, i32 0, i32 9
  %constant593 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset592, i32 0, i32 0
  %333 = load i64, i64* %constant593, align 8
  %call594 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %333)
  br label %cond.end.615

cond.false.595:                                   ; preds = %if.end.578
  %334 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset596 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %334, i32 0, i32 9
  %var597 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset596, i32 0, i32 1
  %335 = load %union.tree_node*, %union.tree_node** %var597, align 8
  %cmp598 = icmp eq %union.tree_node* %335, null
  br i1 %cmp598, label %cond.true.600, label %cond.false.604

cond.true.600:                                    ; preds = %cond.false.595
  %336 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset601 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %336, i32 0, i32 9
  %constant602 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset601, i32 0, i32 0
  %337 = load i64, i64* %constant602, align 8
  %call603 = call %union.tree_node* @size_int_wide(i64 %337, i32 1)
  br label %cond.end.612

cond.false.604:                                   ; preds = %cond.false.595
  %338 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %339 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset605 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %339, i32 0, i32 9
  %var606 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset605, i32 0, i32 1
  %340 = load %union.tree_node*, %union.tree_node** %var606, align 8
  %call607 = call %union.tree_node* @convert(%union.tree_node* %338, %union.tree_node* %340)
  %341 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %offset608 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %341, i32 0, i32 9
  %constant609 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset608, i32 0, i32 0
  %342 = load i64, i64* %constant609, align 8
  %call610 = call %union.tree_node* @size_int_wide(i64 %342, i32 1)
  %call611 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call607, %union.tree_node* %call610)
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.604, %cond.true.600
  %cond613 = phi %union.tree_node* [ %call603, %cond.true.600 ], [ %call611, %cond.false.604 ]
  %call614 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond613, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.615

cond.end.615:                                     ; preds = %cond.end.612, %cond.true.591
  %cond616 = phi %struct.rtx_def* [ %call594, %cond.true.591 ], [ %call614, %cond.end.612 ]
  %343 = load i32, i32* %reg_parm_stack_space.addr, align 4
  %344 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad617 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %344, i32 0, i32 17
  %var618 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad617, i32 0, i32 1
  %345 = load %union.tree_node*, %union.tree_node** %var618, align 8
  %cmp619 = icmp eq %union.tree_node* %345, null
  br i1 %cmp619, label %cond.true.621, label %cond.false.625

cond.true.621:                                    ; preds = %cond.end.615
  %346 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad622 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %346, i32 0, i32 17
  %constant623 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad622, i32 0, i32 0
  %347 = load i64, i64* %constant623, align 8
  %call624 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %347)
  br label %cond.end.645

cond.false.625:                                   ; preds = %cond.end.615
  %348 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad626 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %348, i32 0, i32 17
  %var627 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad626, i32 0, i32 1
  %349 = load %union.tree_node*, %union.tree_node** %var627, align 8
  %cmp628 = icmp eq %union.tree_node* %349, null
  br i1 %cmp628, label %cond.true.630, label %cond.false.634

cond.true.630:                                    ; preds = %cond.false.625
  %350 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad631 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %350, i32 0, i32 17
  %constant632 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad631, i32 0, i32 0
  %351 = load i64, i64* %constant632, align 8
  %call633 = call %union.tree_node* @size_int_wide(i64 %351, i32 1)
  br label %cond.end.642

cond.false.634:                                   ; preds = %cond.false.625
  %352 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %353 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad635 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %353, i32 0, i32 17
  %var636 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad635, i32 0, i32 1
  %354 = load %union.tree_node*, %union.tree_node** %var636, align 8
  %call637 = call %union.tree_node* @convert(%union.tree_node* %352, %union.tree_node* %354)
  %355 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %alignment_pad638 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %355, i32 0, i32 17
  %constant639 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad638, i32 0, i32 0
  %356 = load i64, i64* %constant639, align 8
  %call640 = call %union.tree_node* @size_int_wide(i64 %356, i32 1)
  %call641 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call637, %union.tree_node* %call640)
  br label %cond.end.642

cond.end.642:                                     ; preds = %cond.false.634, %cond.true.630
  %cond643 = phi %union.tree_node* [ %call633, %cond.true.630 ], [ %call641, %cond.false.634 ]
  %call644 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond643, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.645

cond.end.645:                                     ; preds = %cond.end.642, %cond.true.621
  %cond646 = phi %struct.rtx_def* [ %call624, %cond.true.621 ], [ %call644, %cond.end.642 ]
  call void @emit_push_insn(%struct.rtx_def* %317, i32 %319, %union.tree_node* %321, %struct.rtx_def* %322, i32 %325, i32 %326, %struct.rtx_def* %327, i32 %328, %struct.rtx_def* %329, %struct.rtx_def* %cond616, i32 %343, %struct.rtx_def* %cond646)
  %357 = load i32, i32* %partial, align 4
  %cmp647 = icmp eq i32 %357, 0
  br i1 %cmp647, label %if.then.649, label %if.end.652

if.then.649:                                      ; preds = %cond.end.645
  %358 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %stack_slot650 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %358, i32 0, i32 13
  %359 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot650, align 8
  %360 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %value651 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %360, i32 0, i32 2
  store %struct.rtx_def* %359, %struct.rtx_def** %value651, align 8
  br label %if.end.652

if.end.652:                                       ; preds = %if.then.649, %cond.end.645
  br label %if.end.653

if.end.653:                                       ; preds = %if.end.652, %if.end.294
  br label %if.end.654

if.end.654:                                       ; preds = %if.end.653, %if.then.192
  %361 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %361, i32 0, i32 2
  %362 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %362, i32 0, i32 1
  %363 = load i32, i32* %x_inhibit_defer_pop, align 4
  %add655 = add nsw i32 %363, 1
  store i32 %add655, i32* %x_inhibit_defer_pop, align 4
  call void @emit_queue()
  call void @preserve_temp_slots(%struct.rtx_def* null)
  call void @free_temp_slots()
  call void @pop_temp_slots()
  %364 = load i32, i32* %sibcall_failure, align 4
  store i32 %364, i32* %retval
  br label %return

return:                                           ; preds = %if.end.654, %if.then
  %365 = load i32, i32* %retval
  ret i32 %365
}

; Function Attrs: nounwind uwtable
define internal i32 @check_sibcall_argument_overlap(%struct.rtx_def* %insn, %struct.arg_data* %arg) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %arg.addr = alloca %struct.arg_data*, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.arg_data* %arg, %struct.arg_data** %arg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %6 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %call7 = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %for.cond
  %11 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %slot_offset = getelementptr inbounds %struct.arg_data, %struct.arg_data* %11, i32 0, i32 10
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %slot_offset, i32 0, i32 0
  %12 = load i64, i64* %constant, align 8
  %conv14 = trunc i64 %12 to i32
  store i32 %conv14, i32* %low, align 4
  %13 = load i32, i32* %low, align 4
  %conv15 = sext i32 %13 to i64
  %14 = load %struct.arg_data*, %struct.arg_data** %arg.addr, align 8
  %size = getelementptr inbounds %struct.arg_data, %struct.arg_data* %14, i32 0, i32 11
  %constant16 = getelementptr inbounds %struct.args_size, %struct.args_size* %size, i32 0, i32 0
  %15 = load i64, i64* %constant16, align 8
  %add = add nsw i64 %conv15, %15
  %conv17 = trunc i64 %add to i32
  store i32 %conv17, i32* %high, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.24, %for.end
  %16 = load i32, i32* %low, align 4
  %17 = load i32, i32* %high, align 4
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %for.body.21, label %for.end.25

for.body.21:                                      ; preds = %for.cond.18
  %18 = load i32, i32* %low, align 4
  %rem = urem i32 %18, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %19 = load i32, i32* %low, align 4
  %div = udiv i32 %19, 64
  %idxprom22 = zext i32 %div to i64
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom22
  %21 = load i64, i64* %arrayidx23, align 8
  %or = or i64 %21, %shl
  store i64 %or, i64* %arrayidx23, align 8
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.body.21
  %22 = load i32, i32* %low, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %low, align 4
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp26 = icmp ne %struct.rtx_def* %23, null
  %conv27 = zext i1 %cmp26 to i32
  ret i32 %conv27
}

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @load_register_parameters(%struct.arg_data* %args, i32 %num_actuals, %struct.rtx_def** %call_fusage, i32 %flags) #0 {
entry:
  %args.addr = alloca %struct.arg_data*, align 8
  %num_actuals.addr = alloca i32, align 4
  %call_fusage.addr = alloca %struct.rtx_def**, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %partial = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.arg_data* %args, %struct.arg_data** %args.addr, align 8
  store i32 %num_actuals, i32* %num_actuals.addr, align 4
  store %struct.rtx_def** %call_fusage, %struct.rtx_def*** %call_fusage.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.120, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %num_actuals.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.122

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %flags.addr, align 4
  %and = and i32 %2, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx = getelementptr inbounds %struct.arg_data, %struct.arg_data* %4, i64 %idxprom
  %tail_call_reg = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx, i32 0, i32 5
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tail_call_reg, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %7, i64 %idxprom1
  %reg3 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx2, i32 0, i32 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %5, %cond.true ], [ %8, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %reg, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %10, i64 %idxprom4
  %partial6 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx5, i32 0, i32 7
  %11 = load i32, i32* %partial6, align 4
  store i32 %11, i32* %partial, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %tobool7 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool7, label %if.then, label %if.end.119

if.then:                                          ; preds = %cond.end
  %13 = load i32, i32* %partial, align 4
  %tobool8 = icmp ne i32 %13, 0
  br i1 %tobool8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %if.then
  %14 = load i32, i32* %partial, align 4
  %conv = sext i32 %14 to i64
  br label %cond.end.33

cond.false.10:                                    ; preds = %if.then
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %16, i64 %idxprom11
  %tree_value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx12, i32 0, i32 0
  %17 = load %union.tree_node*, %union.tree_node** %tree_value, align 8
  %common = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type13 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type13, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %cmp14 = icmp eq i32 %bf.clear, 51
  br i1 %cmp14, label %cond.true.16, label %cond.false.30

cond.true.16:                                     ; preds = %cond.false.10
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %20, i64 %idxprom17
  %tree_value19 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx18, i32 0, i32 0
  %21 = load %union.tree_node*, %union.tree_node** %tree_value19, align 8
  %common20 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %call = call i64 @int_size_in_bytes(%union.tree_node* %22)
  %23 = load i32, i32* @target_flags, align 4
  %and22 = and i32 %23, 33554432
  %tobool23 = icmp ne i32 %and22, 0
  %cond24 = select i1 %tobool23, i32 8, i32 4
  %sub = sub nsw i32 %cond24, 1
  %conv25 = sext i32 %sub to i64
  %add = add nsw i64 %call, %conv25
  %24 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %24, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 8, i32 4
  %conv29 = sext i32 %cond28 to i64
  %div = sdiv i64 %add, %conv29
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.10
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.16
  %cond32 = phi i64 [ %div, %cond.true.16 ], [ -1, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.9
  %cond34 = phi i64 [ %conv, %cond.true.9 ], [ %cond32, %cond.end.31 ]
  %conv35 = trunc i64 %cond34 to i32
  store i32 %conv35, i32* %nregs, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load36 = load i32, i32* %26, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 39
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %cond.end.33
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom41 = sext i32 %28 to i64
  %29 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %29, i64 %idxprom41
  %value = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx42, i32 0, i32 2
  %30 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %31 to i64
  %32 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx44 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %32, i64 %idxprom43
  %tree_value45 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx44, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %tree_value45, align 8
  %common46 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type47, align 8
  %call48 = call i64 @int_size_in_bytes(%union.tree_node* %34)
  %conv49 = trunc i64 %call48 to i32
  call void @emit_group_load(%struct.rtx_def* %27, %struct.rtx_def* %30, i32 %conv49)
  br label %if.end.97

if.else:                                          ; preds = %cond.end.33
  %35 = load i32, i32* %nregs, align 4
  %cmp50 = icmp eq i32 %35, -1
  br i1 %cmp50, label %if.then.52, label %if.else.57

if.then.52:                                       ; preds = %if.else
  %36 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %37 to i64
  %38 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx54 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %38, i64 %idxprom53
  %value55 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx54, i32 0, i32 2
  %39 = load %struct.rtx_def*, %struct.rtx_def** %value55, align 8
  %call56 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %36, %struct.rtx_def* %39)
  br label %if.end.96

if.else.57:                                       ; preds = %if.else
  %40 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %40 to i64
  %41 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx59 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %41, i64 %idxprom58
  %n_aligned_regs = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx59, i32 0, i32 16
  %42 = load i32, i32* %n_aligned_regs, align 4
  %cmp60 = icmp ne i32 %42, 0
  br i1 %cmp60, label %if.then.62, label %if.else.78

if.then.62:                                       ; preds = %if.else.57
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc, %if.then.62
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %44 to i64
  %45 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx65 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %45, i64 %idxprom64
  %n_aligned_regs66 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx65, i32 0, i32 16
  %46 = load i32, i32* %n_aligned_regs66, align 4
  %cmp67 = icmp slt i32 %43, %46
  br i1 %cmp67, label %for.body.69, label %for.end

for.body.69:                                      ; preds = %for.cond.63
  %47 = load i32, i32* @word_mode, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %49 = load i32, i32* %rtuint, align 4
  %50 = load i32, i32* %j, align 4
  %add71 = add i32 %49, %50
  %call72 = call %struct.rtx_def* @gen_rtx_REG(i32 %47, i32 %add71)
  %51 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %51 to i64
  %52 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %52 to i64
  %53 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %53, i64 %idxprom74
  %aligned_regs = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx75, i32 0, i32 15
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %aligned_regs, align 8
  %arrayidx76 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %54, i64 %idxprom73
  %55 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx76, align 8
  %call77 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call72, %struct.rtx_def* %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body.69
  %56 = load i32, i32* %j, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.63

for.end:                                          ; preds = %for.cond.63
  br label %if.end.95

if.else.78:                                       ; preds = %if.else.57
  %57 = load i32, i32* %partial, align 4
  %cmp79 = icmp eq i32 %57, 0
  br i1 %cmp79, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.78
  %58 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx82 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %59, i64 %idxprom81
  %pass_on_stack = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx82, i32 0, i32 8
  %60 = load i32, i32* %pass_on_stack, align 4
  %tobool83 = icmp ne i32 %60, 0
  br i1 %tobool83, label %if.then.84, label %if.end

if.then.84:                                       ; preds = %lor.lhs.false, %if.else.78
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtuint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %62 = load i32, i32* %rtuint87, align 4
  %63 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %63 to i64
  %64 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx89 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %64, i64 %idxprom88
  %value90 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx89, i32 0, i32 2
  %65 = load %struct.rtx_def*, %struct.rtx_def** %value90, align 8
  %call91 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %65)
  %66 = load i32, i32* %nregs, align 4
  %67 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %67 to i64
  %68 = load %struct.arg_data*, %struct.arg_data** %args.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %68, i64 %idxprom92
  %mode94 = getelementptr inbounds %struct.arg_data, %struct.arg_data* %arrayidx93, i32 0, i32 1
  %69 = load i32, i32* %mode94, align 4
  call void @move_block_to_reg(i32 %62, %struct.rtx_def* %call91, i32 %66, i32 %69)
  br label %if.end

if.end:                                           ; preds = %if.then.84, %lor.lhs.false
  br label %if.end.95

if.end.95:                                        ; preds = %if.end, %for.end
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then.52
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.40
  %70 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load98 = load i32, i32* %71, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 39
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %if.end.97
  %72 = load %struct.rtx_def**, %struct.rtx_def*** %call_fusage.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  call void @use_group_regs(%struct.rtx_def** %72, %struct.rtx_def* %73)
  br label %if.end.118

if.else.103:                                      ; preds = %if.end.97
  %74 = load i32, i32* %nregs, align 4
  %cmp104 = icmp eq i32 %74, -1
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %if.else.103
  %75 = load %struct.rtx_def**, %struct.rtx_def*** %call_fusage.addr, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  call void @use_reg(%struct.rtx_def** %75, %struct.rtx_def* %76)
  br label %if.end.117

if.else.107:                                      ; preds = %if.else.103
  %77 = load %struct.rtx_def**, %struct.rtx_def*** %call_fusage.addr, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtuint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %79 = load i32, i32* %rtuint110, align 4
  %80 = load i32, i32* %nregs, align 4
  %cmp111 = icmp eq i32 %80, 0
  br i1 %cmp111, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.else.107
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.else.107
  %81 = load i32, i32* %nregs, align 4
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.true.113
  %cond116 = phi i32 [ 1, %cond.true.113 ], [ %81, %cond.false.114 ]
  call void @use_regs(%struct.rtx_def** %77, i32 %79, i32 %cond116)
  br label %if.end.117

if.end.117:                                       ; preds = %cond.end.115, %if.then.106
  br label %if.end.118

if.end.118:                                       ; preds = %if.end.117, %if.then.102
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %cond.end
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %82 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %82, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond

for.end.122:                                      ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @function_arg(%struct.ix86_args*, i32, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @emit_call_1(%struct.rtx_def* %funexp, %union.tree_node* %fndecl, %union.tree_node* %funtype, i64 %stack_size, i64 %rounded_stack_size, i64 %struct_value_size, %struct.rtx_def* %next_arg_reg, %struct.rtx_def* %valreg, i32 %old_inhibit_defer_pop, %struct.rtx_def* %call_fusage, i32 %ecf_flags, %struct.ix86_args* %args_so_far) #0 {
entry:
  %funexp.addr = alloca %struct.rtx_def*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %funtype.addr = alloca %union.tree_node*, align 8
  %stack_size.addr = alloca i64, align 8
  %rounded_stack_size.addr = alloca i64, align 8
  %struct_value_size.addr = alloca i64, align 8
  %next_arg_reg.addr = alloca %struct.rtx_def*, align 8
  %valreg.addr = alloca %struct.rtx_def*, align 8
  %old_inhibit_defer_pop.addr = alloca i32, align 4
  %call_fusage.addr = alloca %struct.rtx_def*, align 8
  %ecf_flags.addr = alloca i32, align 4
  %args_so_far.addr = alloca %struct.ix86_args*, align 8
  %rounded_stack_size_rtx = alloca %struct.rtx_def*, align 8
  %call_insn = alloca %struct.rtx_def*, align 8
  %already_popped = alloca i32, align 4
  %n_popped = alloca i64, align 8
  %struct_value_size_rtx = alloca %struct.rtx_def*, align 8
  %n_pop = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %funexp, %struct.rtx_def** %funexp.addr, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %funtype, %union.tree_node** %funtype.addr, align 8
  store i64 %stack_size, i64* %stack_size.addr, align 8
  store i64 %rounded_stack_size, i64* %rounded_stack_size.addr, align 8
  store i64 %struct_value_size, i64* %struct_value_size.addr, align 8
  store %struct.rtx_def* %next_arg_reg, %struct.rtx_def** %next_arg_reg.addr, align 8
  store %struct.rtx_def* %valreg, %struct.rtx_def** %valreg.addr, align 8
  store i32 %old_inhibit_defer_pop, i32* %old_inhibit_defer_pop.addr, align 4
  store %struct.rtx_def* %call_fusage, %struct.rtx_def** %call_fusage.addr, align 8
  store i32 %ecf_flags, i32* %ecf_flags.addr, align 4
  store %struct.ix86_args* %args_so_far, %struct.ix86_args** %args_so_far.addr, align 8
  %0 = load i64, i64* %rounded_stack_size.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  store i32 0, i32* %already_popped, align 4
  %1 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %funtype.addr, align 8
  %3 = load i64, i64* %stack_size.addr, align 8
  %conv = trunc i64 %3 to i32
  %call1 = call i32 @ix86_return_pops_args(%union.tree_node* %1, %union.tree_node* %2, i32 %conv)
  %conv2 = sext i32 %call1 to i64
  store i64 %conv2, i64* %n_popped, align 8
  %4 = load i64, i64* %struct_value_size.addr, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %4)
  store %struct.rtx_def* %call3, %struct.rtx_def** %struct_value_size_rtx, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 68
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call5 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %7)
  store %struct.rtx_def* %call5, %struct.rtx_def** %funexp.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* @target_flags, align 4
  %and = and i32 %8, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else.24, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* @target_flags, align 4
  %and6 = and i32 %9, 33554432
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.else.24, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %10 = load i64, i64* %n_popped, align 8
  %cmp9 = icmp sgt i64 %10, 0
  br i1 %cmp9, label %land.lhs.true.11, label %if.else.24

land.lhs.true.11:                                 ; preds = %land.lhs.true.8
  %11 = load i32, i32* %ecf_flags.addr, align 4
  %and12 = and i32 %11, 1024
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.else.24, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.11
  %12 = load i64, i64* %n_popped, align 8
  %call15 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %12)
  store %struct.rtx_def* %call15, %struct.rtx_def** %n_pop, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %valreg.addr, align 8
  %tobool16 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %valreg.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call18 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next_arg_reg.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %n_pop, align 8
  %call19 = call %struct.rtx_def* @gen_call_value_pop(%struct.rtx_def* %14, %struct.rtx_def* %call18, %struct.rtx_def* %16, %struct.rtx_def* %17, %struct.rtx_def* %18)
  store %struct.rtx_def* %call19, %struct.rtx_def** %pat, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.14
  %19 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call20 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %19)
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %next_arg_reg.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %n_pop, align 8
  %call21 = call %struct.rtx_def* @gen_call_pop(%struct.rtx_def* %call20, %struct.rtx_def* %20, %struct.rtx_def* %21, %struct.rtx_def* %22)
  store %struct.rtx_def* %call21, %struct.rtx_def** %pat, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call23 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %23)
  store i32 1, i32* %already_popped, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %land.lhs.true.11, %land.lhs.true.8, %land.lhs.true, %if.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %valreg.addr, align 8
  %tobool25 = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.else.24
  %25 = load %struct.rtx_def*, %struct.rtx_def** %valreg.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call27 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %26)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %next_arg_reg.addr, align 8
  %call28 = call %struct.rtx_def* @gen_call_value(%struct.rtx_def* %25, %struct.rtx_def* %call27, %struct.rtx_def* %27, %struct.rtx_def* %28)
  %call29 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %call28)
  br label %if.end.34

if.else.30:                                       ; preds = %if.else.24
  %29 = load %struct.rtx_def*, %struct.rtx_def** %funexp.addr, align 8
  %call31 = call %struct.rtx_def* @gen_rtx_MEM(i32 2, %struct.rtx_def* %29)
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %next_arg_reg.addr, align 8
  %call32 = call %struct.rtx_def* @gen_call(%struct.rtx_def* %call31, %struct.rtx_def* %30, %struct.rtx_def* %31)
  %call33 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %call32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.30, %if.then.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.22
  %call36 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call36, %struct.rtx_def** %call_insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.35
  %32 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %tobool37 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %33 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load38 = load i32, i32* %34, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp ne i32 %bf.clear39, 34
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %35 = phi i1 [ false, %for.cond ], [ %cmp40, %land.rhs ]
  br i1 %35, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %call_insn, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %tobool42 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 580, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.emit_call_1, i32 0, i32 0)) #7
  unreachable

if.end.44:                                        ; preds = %for.end
  %39 = load i32, i32* %ecf_flags.addr, align 4
  %and45 = and i32 %39, 512
  %tobool46 = icmp ne i32 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.52

if.then.47:                                       ; preds = %if.end.44
  %call48 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %call49 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %call48)
  %call50 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %call49)
  %40 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage.addr, align 8
  %call51 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %call50, %struct.rtx_def* %40)
  store %struct.rtx_def* %call51, %struct.rtx_def** %call_fusage.addr, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.47, %if.end.44
  %41 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 7
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %tobool56 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool56, label %if.then.57, label %if.else.76

if.then.57:                                       ; preds = %if.end.52
  %43 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 7
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %link, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.68, %if.then.57
  %45 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %cmp65 = icmp ne %struct.rtx_def* %46, null
  br i1 %cmp65, label %for.body.67, label %for.end.72

for.body.67:                                      ; preds = %for.cond.61
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.67
  %47 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %link, align 8
  br label %for.cond.61

for.end.72:                                       ; preds = %for.cond.61
  %49 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 1
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  store %struct.rtx_def* %49, %struct.rtx_def** %rtx75, align 8
  br label %if.end.80

if.else.76:                                       ; preds = %if.end.52
  %51 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 7
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  store %struct.rtx_def* %51, %struct.rtx_def** %rtx79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.76, %for.end.72
  %53 = load i32, i32* %ecf_flags.addr, align 4
  %and81 = and i32 %53, 513
  %tobool82 = icmp ne i32 %and81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %54 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load84 = load i32, i32* %55, align 8
  %bf.clear85 = and i32 %bf.load84, -67108865
  %bf.set = or i32 %bf.clear85, 67108864
  store i32 %bf.set, i32* %55, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %56 = load i32, i32* %ecf_flags.addr, align 4
  %and87 = and i32 %56, 16
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.97

if.then.89:                                       ; preds = %if.end.86
  %57 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 6
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %call93 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 23, %struct.rtx_def* %57, %struct.rtx_def* %59)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 6
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  store %struct.rtx_def* %call93, %struct.rtx_def** %rtx96, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.89, %if.end.86
  %61 = load i32, i32* %ecf_flags.addr, align 4
  %and98 = and i32 %61, 2
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %if.end.97
  %62 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 6
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %call104 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 26, %struct.rtx_def* %62, %struct.rtx_def* %64)
  %65 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 6
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  store %struct.rtx_def* %call104, %struct.rtx_def** %rtx107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.100, %if.end.97
  %66 = load i32, i32* %ecf_flags.addr, align 4
  %and109 = and i32 %66, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.119

if.then.111:                                      ; preds = %if.end.108
  %67 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 6
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %call115 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 29, %struct.rtx_def* %67, %struct.rtx_def* %69)
  %70 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 6
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  store %struct.rtx_def* %call115, %struct.rtx_def** %rtx118, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.111, %if.end.108
  %71 = load i32, i32* %ecf_flags.addr, align 4
  %and120 = and i32 %71, 32
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.133

if.then.122:                                      ; preds = %if.end.119
  %72 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 6
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %call126 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 28, %struct.rtx_def* %72, %struct.rtx_def* %74)
  %75 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 6
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  store %struct.rtx_def* %call126, %struct.rtx_def** %rtx129, align 8
  %76 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %76, i32 0, i32 56
  %77 = bitcast i24* %calls_setjmp to i32*
  %bf.load130 = load i32, i32* %77, align 8
  %bf.clear131 = and i32 %bf.load130, -17
  %bf.set132 = or i32 %bf.clear131, 16
  store i32 %bf.set132, i32* %77, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.122, %if.end.119
  %78 = load i32, i32* %ecf_flags.addr, align 4
  %and134 = and i32 %78, 256
  %cmp135 = icmp ne i32 %and134, 0
  %conv136 = zext i1 %cmp135 to i32
  %79 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load137 = load i32, i32* %80, align 8
  %bf.value = and i32 %conv136, 1
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear138 = and i32 %bf.load137, -16777217
  %bf.set139 = or i32 %bf.clear138, %bf.shl
  store i32 %bf.set139, i32* %80, align 8
  %81 = load i32, i32* %old_inhibit_defer_pop.addr, align 4
  %82 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %82, i32 0, i32 2
  %83 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %83, i32 0, i32 1
  store i32 %81, i32* %x_inhibit_defer_pop, align 4
  %84 = load i64, i64* %n_popped, align 8
  %cmp140 = icmp sgt i64 %84, 0
  br i1 %cmp140, label %if.then.142, label %if.end.159

if.then.142:                                      ; preds = %if.end.133
  %85 = load i32, i32* %already_popped, align 4
  %tobool143 = icmp ne i32 %85, 0
  br i1 %tobool143, label %if.end.153, label %if.then.144

if.then.144:                                      ; preds = %if.then.142
  %86 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call145 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %86)
  %87 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 7
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %call149 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %call145, %struct.rtx_def* %88)
  %89 = load %struct.rtx_def*, %struct.rtx_def** %call_insn, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 7
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  store %struct.rtx_def* %call149, %struct.rtx_def** %rtx152, align 8
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.144, %if.then.142
  %90 = load i64, i64* %n_popped, align 8
  %91 = load i64, i64* %rounded_stack_size.addr, align 8
  %sub = sub nsw i64 %91, %90
  store i64 %sub, i64* %rounded_stack_size.addr, align 8
  %92 = load i64, i64* %rounded_stack_size.addr, align 8
  %call154 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %92)
  store %struct.rtx_def* %call154, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  %93 = load i64, i64* %n_popped, align 8
  %94 = load %struct.function*, %struct.function** @cfun, align 8
  %expr155 = getelementptr inbounds %struct.function, %struct.function* %94, i32 0, i32 2
  %95 = load %struct.expr_status*, %struct.expr_status** %expr155, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %95, i32 0, i32 2
  %96 = load i32, i32* %x_stack_pointer_delta, align 4
  %conv156 = sext i32 %96 to i64
  %sub157 = sub nsw i64 %conv156, %93
  %conv158 = trunc i64 %sub157 to i32
  store i32 %conv158, i32* %x_stack_pointer_delta, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.153, %if.end.133
  %97 = load i32, i32* @target_flags, align 4
  %and160 = and i32 %97, 4096
  %tobool161 = icmp ne i32 %and160, 0
  br i1 %tobool161, label %if.else.192, label %if.then.162

if.then.162:                                      ; preds = %if.end.159
  %98 = load i64, i64* %rounded_stack_size.addr, align 8
  %cmp163 = icmp ne i64 %98, 0
  br i1 %cmp163, label %if.then.165, label %if.end.191

if.then.165:                                      ; preds = %if.then.162
  %99 = load i32, i32* %ecf_flags.addr, align 4
  %and166 = and i32 %99, 1024
  %tobool167 = icmp ne i32 %and166, 0
  br i1 %tobool167, label %if.then.168, label %if.else.174

if.then.168:                                      ; preds = %if.then.165
  %100 = load i64, i64* %rounded_stack_size.addr, align 8
  %101 = load %struct.function*, %struct.function** @cfun, align 8
  %expr169 = getelementptr inbounds %struct.function, %struct.function* %101, i32 0, i32 2
  %102 = load %struct.expr_status*, %struct.expr_status** %expr169, align 8
  %x_stack_pointer_delta170 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %102, i32 0, i32 2
  %103 = load i32, i32* %x_stack_pointer_delta170, align 4
  %conv171 = sext i32 %103 to i64
  %sub172 = sub nsw i64 %conv171, %100
  %conv173 = trunc i64 %sub172 to i32
  store i32 %conv173, i32* %x_stack_pointer_delta170, align 4
  br label %if.end.190

if.else.174:                                      ; preds = %if.then.165
  %104 = load i32, i32* @flag_defer_pop, align 4
  %tobool175 = icmp ne i32 %104, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.else.188

land.lhs.true.176:                                ; preds = %if.else.174
  %105 = load %struct.function*, %struct.function** @cfun, align 8
  %expr177 = getelementptr inbounds %struct.function, %struct.function* %105, i32 0, i32 2
  %106 = load %struct.expr_status*, %struct.expr_status** %expr177, align 8
  %x_inhibit_defer_pop178 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %106, i32 0, i32 1
  %107 = load i32, i32* %x_inhibit_defer_pop178, align 4
  %cmp179 = icmp eq i32 %107, 0
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.188

land.lhs.true.181:                                ; preds = %land.lhs.true.176
  %108 = load i32, i32* %ecf_flags.addr, align 4
  %and182 = and i32 %108, 513
  %tobool183 = icmp ne i32 %and182, 0
  br i1 %tobool183, label %if.else.188, label %if.then.184

if.then.184:                                      ; preds = %land.lhs.true.181
  %109 = load i64, i64* %rounded_stack_size.addr, align 8
  %110 = load %struct.function*, %struct.function** @cfun, align 8
  %expr185 = getelementptr inbounds %struct.function, %struct.function* %110, i32 0, i32 2
  %111 = load %struct.expr_status*, %struct.expr_status** %expr185, align 8
  %x_pending_stack_adjust = getelementptr inbounds %struct.expr_status, %struct.expr_status* %111, i32 0, i32 0
  %112 = load i32, i32* %x_pending_stack_adjust, align 4
  %conv186 = sext i32 %112 to i64
  %add = add nsw i64 %conv186, %109
  %conv187 = trunc i64 %add to i32
  store i32 %conv187, i32* %x_pending_stack_adjust, align 4
  br label %if.end.189

if.else.188:                                      ; preds = %land.lhs.true.181, %land.lhs.true.176, %if.else.174
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rounded_stack_size_rtx, align 8
  call void @adjust_stack(%struct.rtx_def* %113)
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.188, %if.then.184
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.168
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190, %if.then.162
  br label %if.end.197

if.else.192:                                      ; preds = %if.end.159
  %114 = load i64, i64* %n_popped, align 8
  %tobool193 = icmp ne i64 %114, 0
  br i1 %tobool193, label %if.then.194, label %if.end.196

if.then.194:                                      ; preds = %if.else.192
  %115 = load i64, i64* %n_popped, align 8
  %call195 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %115)
  call void @anti_adjust_stack(%struct.rtx_def* %call195)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %if.else.192
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.end.191
  ret void
}

declare %struct.rtx_def* @emit_insns(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare void @mark_reg_pointer(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_0(i32, i32) #1

declare void @emit_libcall_block(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) #1

declare %union.tree_node* @build_qualified_type(%union.tree_node*, i32) #1

declare void @preserve_temp_slots(%struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_group_store(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def*, %struct.rtx_def*, %union.tree_node*) #1

declare void @emit_stack_restore(i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @restore_fixed_argument_area(%struct.rtx_def* %save_area, %struct.rtx_def* %argblock, i32 %high_to_save, i32 %low_to_save) #0 {
entry:
  %save_area.addr = alloca %struct.rtx_def*, align 8
  %argblock.addr = alloca %struct.rtx_def*, align 8
  %high_to_save.addr = alloca i32, align 4
  %low_to_save.addr = alloca i32, align 4
  %save_mode = alloca i32, align 4
  %stack_area = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %save_area, %struct.rtx_def** %save_area.addr, align 8
  store %struct.rtx_def* %argblock, %struct.rtx_def** %argblock.addr, align 8
  store i32 %high_to_save, i32* %high_to_save.addr, align 4
  store i32 %low_to_save, i32* %low_to_save.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %save_area.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %save_mode, align 4
  %2 = load i32, i32* %save_mode, align 4
  %3 = load i32, i32* %save_mode, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %argblock.addr, align 8
  %5 = load i32, i32* %low_to_save.addr, align 4
  %conv = sext i32 %5 to i64
  %call = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %4, i64 %conv)
  %call1 = call %struct.rtx_def* @memory_address(i32 %3, %struct.rtx_def* %call)
  %call2 = call %struct.rtx_def* @gen_rtx_MEM(i32 %2, %struct.rtx_def* %call1)
  store %struct.rtx_def* %call2, %struct.rtx_def** %stack_area, align 8
  %6 = load i32, i32* %save_mode, align 4
  %cmp = icmp ne i32 %6, 51
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %save_area.addr, align 8
  %call4 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %save_area.addr, align 8
  %call5 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %10)
  %11 = load i32, i32* %high_to_save.addr, align 4
  %12 = load i32, i32* %low_to_save.addr, align 4
  %sub = sub nsw i32 %11, %12
  %add = add nsw i32 %sub, 1
  %conv6 = sext i32 %add to i64
  %13 = load i32, i32* @target_flags, align 4
  %and = and i32 %13, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  call void @move_by_pieces(%struct.rtx_def* %9, %struct.rtx_def* %call5, i64 %conv6, i32 %cond)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.rtx_def* @emit_block_move(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @replace_call_placeholder(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_call_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_uuuu(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @clear_pending_stack_adjust() #1

declare %struct.rtx_def* @gen_rtx(i32, i32, ...) #1

declare void @save_stack_pointer() #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @emit_library_call_value_1(i32 %retval1, %struct.rtx_def* %orgfun, %struct.rtx_def* %value, i32 %fn_type, i32 %outmode, i32 %nargs, %struct.__va_list_tag* %p) #0 {
entry:
  %retval.addr = alloca i32, align 4
  %orgfun.addr = alloca %struct.rtx_def*, align 8
  %value.addr = alloca %struct.rtx_def*, align 8
  %fn_type.addr = alloca i32, align 4
  %outmode.addr = alloca i32, align 4
  %nargs.addr = alloca i32, align 4
  %p.addr = alloca %struct.__va_list_tag*, align 8
  %args_size = alloca %struct.args_size, align 8
  %original_args_size = alloca %struct.args_size, align 8
  %argnum = alloca i32, align 4
  %fun = alloca %struct.rtx_def*, align 8
  %inc = alloca i32, align 4
  %count = alloca i32, align 4
  %alignment_pad = alloca %struct.args_size, align 8
  %argblock = alloca %struct.rtx_def*, align 8
  %args_so_far = alloca %struct.ix86_args, align 4
  %argvec = alloca %struct.arg*, align 8
  %old_inhibit_defer_pop = alloca i32, align 4
  %call_fusage = alloca %struct.rtx_def*, align 8
  %mem_value = alloca %struct.rtx_def*, align 8
  %valreg = alloca %struct.rtx_def*, align 8
  %pcc_struct_value = alloca i32, align 4
  %struct_value_size = alloca i32, align 4
  %flags = alloca i32, align 4
  %reg_parm_stack_space = alloca i32, align 4
  %needed = alloca i32, align 4
  %before_call = alloca %struct.rtx_def*, align 8
  %low_to_save = alloca i32, align 4
  %high_to_save = alloca i32, align 4
  %save_area = alloca %struct.rtx_def*, align 8
  %initial_highest_arg_in_use = alloca i32, align 4
  %initial_stack_usage_map = alloca i8*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %val = alloca %struct.rtx_def*, align 8
  %mode152 = alloca i32, align 4
  %num_to_save = alloca i32, align 4
  %save_mode = alloca i32, align 4
  %stack_area = alloca %struct.rtx_def*, align 8
  %mode491 = alloca i32, align 4
  %val495 = alloca %struct.rtx_def*, align 8
  %reg499 = alloca %struct.rtx_def*, align 8
  %partial503 = alloca i32, align 4
  %lower_bound = alloca i32, align 4
  %upper_bound = alloca i32, align 4
  %i = alloca i32, align 4
  %save_mode547 = alloca i32, align 4
  %stack_area555 = alloca %struct.rtx_def*, align 8
  %val651 = alloca %struct.rtx_def*, align 8
  %reg655 = alloca %struct.rtx_def*, align 8
  %partial659 = alloca i32, align 4
  %reg698 = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %i819 = alloca i32, align 4
  %save_mode875 = alloca i32, align 4
  %stack_area879 = alloca %struct.rtx_def*, align 8
  %save_mode909 = alloca i32, align 4
  %stack_area916 = alloca %struct.rtx_def*, align 8
  store i32 %retval1, i32* %retval.addr, align 4
  store %struct.rtx_def* %orgfun, %struct.rtx_def** %orgfun.addr, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store i32 %fn_type, i32* %fn_type.addr, align 4
  store i32 %outmode, i32* %outmode.addr, align 4
  store i32 %nargs, i32* %nargs.addr, align 4
  store %struct.__va_list_tag* %p, %struct.__va_list_tag** %p.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %argblock, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 2
  %1 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %1, i32 0, i32 1
  %2 = load i32, i32* %x_inhibit_defer_pop, align 4
  store i32 %2, i32* %old_inhibit_defer_pop, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %call_fusage, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %mem_value, align 8
  store i32 0, i32* %pcc_struct_value, align 4
  store i32 0, i32* %struct_value_size, align 4
  store i32 0, i32* %reg_parm_stack_space, align 4
  store i32 -1, i32* %low_to_save, align 4
  store i32 0, i32* %high_to_save, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %save_area, align 8
  %3 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  store i32 %3, i32* %initial_highest_arg_in_use, align 4
  %4 = load i8*, i8** @stack_usage_map, align 8
  store i8* %4, i8** %initial_stack_usage_map, align 8
  store i32 0, i32* %reg_parm_stack_space, align 4
  store i32 16, i32* %flags, align 4
  %5 = load i32, i32* %fn_type.addr, align 4
  switch i32 %5, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %6 = load i32, i32* %flags, align 4
  %or = or i32 %6, 1
  store i32 %or, i32* %flags, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %7 = load i32, i32* %flags, align 4
  %or4 = or i32 %7, 512
  store i32 %or4, i32* %flags, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load i32, i32* %flags, align 4
  %or6 = or i32 %8, 4097
  store i32 %or6, i32* %flags, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %9 = load i32, i32* %flags, align 4
  %or8 = or i32 %9, 4608
  store i32 %or8, i32* %flags, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %10 = load i32, i32* %flags, align 4
  %or10 = or i32 %10, 2
  store i32 %or10, i32* %flags, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  store i32 2, i32* %flags, align 4
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  store i32 2048, i32* %flags, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  store i32 32, i32* %flags, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb.2, %sw.bb
  %11 = load %struct.rtx_def*, %struct.rtx_def** %orgfun.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %fun, align 8
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 53
  %13 = load i32, i32* %preferred_stack_boundary, align 4
  %14 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %15 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary14 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 53
  store i32 %15, i32* %preferred_stack_boundary14, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %17 = load i32, i32* %outmode.addr, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %land.lhs.true, label %if.end.27

land.lhs.true:                                    ; preds = %if.end
  %18 = load i32, i32* %outmode.addr, align 4
  %call = call %union.tree_node* @type_for_mode(i32 %18, i32 0)
  %call16 = call i32 @aggregate_value_p(%union.tree_node* %call)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.end.27

if.then.17:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %outmode.addr, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %20 to i32
  store i32 %conv, i32* %struct_value_size, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %cmp18 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %if.then.17
  %22 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp21 = icmp eq i32 %bf.clear, 66
  br i1 %cmp21, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.20
  %24 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %mem_value, align 8
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true.20, %if.then.17
  %25 = load i32, i32* %outmode.addr, align 4
  %call24 = call %union.tree_node* @type_for_mode(i32 %25, i32 0)
  %call25 = call %struct.rtx_def* @assign_temp(%union.tree_node* %call24, i32 0, i32 1, i32 1)
  store %struct.rtx_def* %call25, %struct.rtx_def** %mem_value, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.else, %if.then.23
  %26 = load i32, i32* %flags, align 4
  %and = and i32 %26, -4610
  store i32 %and, i32* %flags, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %land.lhs.true, %if.end
  %27 = load i32, i32* %nargs.addr, align 4
  %add = add nsw i32 %27, 1
  %conv28 = sext i32 %add to i64
  %mul = mul i64 %conv28, 72
  %28 = alloca i8, i64 %mul
  %29 = bitcast i8* %28 to %struct.arg*
  store %struct.arg* %29, %struct.arg** %argvec, align 8
  %30 = load %struct.arg*, %struct.arg** %argvec, align 8
  %31 = bitcast %struct.arg* %30 to i8*
  %32 = load i32, i32* %nargs.addr, align 4
  %add29 = add nsw i32 %32, 1
  %conv30 = sext i32 %add29 to i64
  %mul31 = mul i64 %conv30, 72
  call void @llvm.memset.p0i8.i64(i8* %31, i8 0, i64 %mul31, i32 1, i1 false)
  %33 = load %struct.rtx_def*, %struct.rtx_def** %fun, align 8
  call void @init_cumulative_args(%struct.ix86_args* %args_so_far, %union.tree_node* null, %struct.rtx_def* %33)
  %constant = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  store i64 0, i64* %constant, align 8
  %var = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %var, align 8
  store i32 0, i32* %count, align 4
  %34 = load i32, i32* %flags, align 4
  %and32 = and i32 %34, 4096
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.27
  call void @start_sequence()
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.27
  call void @push_temp_slots()
  %35 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %tobool36 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.149

land.lhs.true.37:                                 ; preds = %if.end.35
  %36 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %cmp38 = icmp eq %struct.rtx_def* %36, null
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.149

land.lhs.true.40:                                 ; preds = %land.lhs.true.37
  %37 = load i32, i32* %pcc_struct_value, align 4
  %tobool41 = icmp ne i32 %37, 0
  br i1 %tobool41, label %if.end.149, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.40
  %38 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %addr, align 8
  %40 = load i32, i32* %nargs.addr, align 4
  %inc44 = add nsw i32 %40, 1
  store i32 %inc44, i32* %nargs.addr, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load45 = load i32, i32* %42, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp ne i32 %bf.clear46, 61
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.95

land.lhs.true.49:                                 ; preds = %if.then.42
  %43 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load50 = load i32, i32* %44, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp ne i32 %bf.clear51, 66
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.95

land.lhs.true.54:                                 ; preds = %land.lhs.true.49
  %45 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load55 = load i32, i32* %46, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 67
  br i1 %cmp57, label %if.end.95, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.54
  %47 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load59 = load i32, i32* %48, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 68
  br i1 %cmp61, label %if.end.95, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %lor.lhs.false
  %49 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load64 = load i32, i32* %50, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 54
  br i1 %cmp66, label %if.end.95, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.63
  %51 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load69 = load i32, i32* %52, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 55
  br i1 %cmp71, label %if.end.95, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.68
  %53 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load74 = load i32, i32* %54, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 58
  br i1 %cmp76, label %if.end.95, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.73
  %55 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load79 = load i32, i32* %56, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 134
  br i1 %cmp81, label %if.end.95, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.78
  %57 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load84 = load i32, i32* %58, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 56
  br i1 %cmp86, label %if.end.95, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.83
  %59 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load89 = load i32, i32* %60, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 140
  br i1 %cmp91, label %if.end.95, label %if.then.93

if.then.93:                                       ; preds = %lor.lhs.false.88
  %61 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call94 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %61, %struct.rtx_def* null)
  store %struct.rtx_def* %call94, %struct.rtx_def** %addr, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.93, %lor.lhs.false.88, %lor.lhs.false.83, %lor.lhs.false.78, %lor.lhs.false.73, %lor.lhs.false.68, %lor.lhs.false.63, %lor.lhs.false, %land.lhs.true.54, %land.lhs.true.49, %if.then.42
  %62 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %63 = load i32, i32* %count, align 4
  %idxprom96 = sext i32 %63 to i64
  %64 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx97 = getelementptr inbounds %struct.arg, %struct.arg* %64, i64 %idxprom96
  %value98 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx97, i32 0, i32 0
  store %struct.rtx_def* %62, %struct.rtx_def** %value98, align 8
  %65 = load i32, i32* @target_flags, align 4
  %and99 = and i32 %65, 33554432
  %tobool100 = icmp ne i32 %and99, 0
  %cond = select i1 %tobool100, i32 5, i32 4
  %66 = load i32, i32* %count, align 4
  %idxprom101 = sext i32 %66 to i64
  %67 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx102 = getelementptr inbounds %struct.arg, %struct.arg* %67, i64 %idxprom101
  %mode = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx102, i32 0, i32 1
  store i32 %cond, i32* %mode, align 4
  %68 = load i32, i32* %count, align 4
  %idxprom103 = sext i32 %68 to i64
  %69 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx104 = getelementptr inbounds %struct.arg, %struct.arg* %69, i64 %idxprom103
  %partial = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx104, i32 0, i32 3
  store i32 0, i32* %partial, align 4
  %70 = load i32, i32* @target_flags, align 4
  %and105 = and i32 %70, 33554432
  %tobool106 = icmp ne i32 %and105, 0
  %cond107 = select i1 %tobool106, i32 5, i32 4
  %call108 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %args_so_far, i32 %cond107, %union.tree_node* null, i32 1)
  %71 = load i32, i32* %count, align 4
  %idxprom109 = sext i32 %71 to i64
  %72 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx110 = getelementptr inbounds %struct.arg, %struct.arg* %72, i64 %idxprom109
  %reg = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx110, i32 0, i32 2
  store %struct.rtx_def* %call108, %struct.rtx_def** %reg, align 8
  %73 = load i32, i32* @target_flags, align 4
  %and111 = and i32 %73, 33554432
  %tobool112 = icmp ne i32 %and111, 0
  %cond113 = select i1 %tobool112, i32 5, i32 4
  %74 = load i32, i32* %count, align 4
  %idxprom114 = sext i32 %74 to i64
  %75 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx115 = getelementptr inbounds %struct.arg, %struct.arg* %75, i64 %idxprom114
  %reg116 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx115, i32 0, i32 2
  %76 = load %struct.rtx_def*, %struct.rtx_def** %reg116, align 8
  %cmp117 = icmp ne %struct.rtx_def* %76, null
  %conv118 = zext i1 %cmp117 to i32
  %77 = load i32, i32* %count, align 4
  %idxprom119 = sext i32 %77 to i64
  %78 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx120 = getelementptr inbounds %struct.arg, %struct.arg* %78, i64 %idxprom119
  %offset = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx120, i32 0, i32 4
  %79 = load i32, i32* %count, align 4
  %idxprom121 = sext i32 %79 to i64
  %80 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx122 = getelementptr inbounds %struct.arg, %struct.arg* %80, i64 %idxprom121
  %size = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx122, i32 0, i32 5
  call void @locate_and_pad_parm(i32 %cond113, %union.tree_node* null, i32 %conv118, %union.tree_node* null, %struct.args_size* %args_size, %struct.args_size* %offset, %struct.args_size* %size, %struct.args_size* %alignment_pad)
  %81 = load i32, i32* %count, align 4
  %idxprom123 = sext i32 %81 to i64
  %82 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx124 = getelementptr inbounds %struct.arg, %struct.arg* %82, i64 %idxprom123
  %reg125 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx124, i32 0, i32 2
  %83 = load %struct.rtx_def*, %struct.rtx_def** %reg125, align 8
  %cmp126 = icmp eq %struct.rtx_def* %83, null
  br i1 %cmp126, label %if.then.137, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %if.end.95
  %84 = load i32, i32* %count, align 4
  %idxprom129 = sext i32 %84 to i64
  %85 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx130 = getelementptr inbounds %struct.arg, %struct.arg* %85, i64 %idxprom129
  %partial131 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx130, i32 0, i32 3
  %86 = load i32, i32* %partial131, align 4
  %cmp132 = icmp ne i32 %86, 0
  br i1 %cmp132, label %if.then.137, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.128
  %87 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp135 = icmp sgt i32 %87, 0
  br i1 %cmp135, label %if.then.137, label %if.end.144

if.then.137:                                      ; preds = %lor.lhs.false.134, %lor.lhs.false.128, %if.end.95
  %88 = load i32, i32* %count, align 4
  %idxprom138 = sext i32 %88 to i64
  %89 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx139 = getelementptr inbounds %struct.arg, %struct.arg* %89, i64 %idxprom138
  %size140 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx139, i32 0, i32 5
  %constant141 = getelementptr inbounds %struct.args_size, %struct.args_size* %size140, i32 0, i32 0
  %90 = load i64, i64* %constant141, align 8
  %constant142 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %91 = load i64, i64* %constant142, align 8
  %add143 = add nsw i64 %91, %90
  store i64 %add143, i64* %constant142, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.137, %lor.lhs.false.134
  %92 = load i32, i32* @target_flags, align 4
  %and145 = and i32 %92, 33554432
  %tobool146 = icmp ne i32 %and145, 0
  %cond147 = select i1 %tobool146, i32 5, i32 4
  call void @function_arg_advance(%struct.ix86_args* %args_so_far, i32 %cond147, %union.tree_node* null, i32 1)
  %93 = load i32, i32* %count, align 4
  %inc148 = add nsw i32 %93, 1
  store i32 %inc148, i32* %count, align 4
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.144, %land.lhs.true.40, %land.lhs.true.37, %if.end.35
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.149
  %94 = load i32, i32* %count, align 4
  %95 = load i32, i32* %nargs.addr, align 4
  %cmp150 = icmp slt i32 %94, %95
  br i1 %cmp150, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %96 = load %struct.__va_list_tag*, %struct.__va_list_tag** %p.addr, align 8
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %97 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 3
  %reg_save_area = load i8*, i8** %97
  %98 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %99 = bitcast i8* %98 to %struct.rtx_def**
  %100 = add i32 %gp_offset, 8
  store i32 %100, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %96, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %101 = bitcast i8* %overflow_arg_area to %struct.rtx_def**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.rtx_def** [ %99, %vaarg.in_reg ], [ %101, %vaarg.in_mem ]
  %102 = load %struct.rtx_def*, %struct.rtx_def** %vaarg.addr
  store %struct.rtx_def* %102, %struct.rtx_def** %val, align 8
  %103 = load %struct.__va_list_tag*, %struct.__va_list_tag** %p.addr, align 8
  %gp_offset_p153 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %103, i32 0, i32 0
  %gp_offset154 = load i32, i32* %gp_offset_p153
  %fits_in_gp155 = icmp ule i32 %gp_offset154, 40
  br i1 %fits_in_gp155, label %vaarg.in_reg.156, label %vaarg.in_mem.158

vaarg.in_reg.156:                                 ; preds = %vaarg.end
  %104 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %103, i32 0, i32 3
  %reg_save_area157 = load i8*, i8** %104
  %105 = getelementptr i8, i8* %reg_save_area157, i32 %gp_offset154
  %106 = bitcast i8* %105 to i32*
  %107 = add i32 %gp_offset154, 8
  store i32 %107, i32* %gp_offset_p153
  br label %vaarg.end.162

vaarg.in_mem.158:                                 ; preds = %vaarg.end
  %overflow_arg_area_p159 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %103, i32 0, i32 2
  %overflow_arg_area160 = load i8*, i8** %overflow_arg_area_p159
  %108 = bitcast i8* %overflow_arg_area160 to i32*
  %overflow_arg_area.next161 = getelementptr i8, i8* %overflow_arg_area160, i32 8
  store i8* %overflow_arg_area.next161, i8** %overflow_arg_area_p159
  br label %vaarg.end.162

vaarg.end.162:                                    ; preds = %vaarg.in_mem.158, %vaarg.in_reg.156
  %vaarg.addr163 = phi i32* [ %106, %vaarg.in_reg.156 ], [ %108, %vaarg.in_mem.158 ]
  %109 = load i32, i32* %vaarg.addr163
  store i32 %109, i32* %mode152, align 4
  %110 = load i32, i32* %mode152, align 4
  %cmp164 = icmp eq i32 %110, 51
  br i1 %cmp164, label %if.then.177, label %lor.lhs.false.166

lor.lhs.false.166:                                ; preds = %vaarg.end.162
  %111 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load167 = load i32, i32* %112, align 8
  %bf.lshr = lshr i32 %bf.load167, 16
  %bf.clear168 = and i32 %bf.lshr, 255
  %113 = load i32, i32* %mode152, align 4
  %cmp169 = icmp ne i32 %bf.clear168, %113
  br i1 %cmp169, label %land.lhs.true.171, label %if.end.178

land.lhs.true.171:                                ; preds = %lor.lhs.false.166
  %114 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load172 = load i32, i32* %115, align 8
  %bf.lshr173 = lshr i32 %bf.load172, 16
  %bf.clear174 = and i32 %bf.lshr173, 255
  %cmp175 = icmp ne i32 %bf.clear174, 0
  br i1 %cmp175, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.171, %vaarg.end.162
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3641, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #7
  unreachable

if.end.178:                                       ; preds = %land.lhs.true.171, %lor.lhs.false.166
  %116 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load179 = load i32, i32* %117, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %cmp181 = icmp ne i32 %bf.clear180, 61
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.230

land.lhs.true.183:                                ; preds = %if.end.178
  %118 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load184 = load i32, i32* %119, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %cmp186 = icmp ne i32 %bf.clear185, 66
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.230

land.lhs.true.188:                                ; preds = %land.lhs.true.183
  %120 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load189 = load i32, i32* %121, align 8
  %bf.clear190 = and i32 %bf.load189, 65535
  %cmp191 = icmp eq i32 %bf.clear190, 67
  br i1 %cmp191, label %if.end.230, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %land.lhs.true.188
  %122 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load194 = load i32, i32* %123, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp eq i32 %bf.clear195, 68
  br i1 %cmp196, label %if.end.230, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %lor.lhs.false.193
  %124 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load199 = load i32, i32* %125, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 54
  br i1 %cmp201, label %if.end.230, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %lor.lhs.false.198
  %126 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load204 = load i32, i32* %127, align 8
  %bf.clear205 = and i32 %bf.load204, 65535
  %cmp206 = icmp eq i32 %bf.clear205, 55
  br i1 %cmp206, label %if.end.230, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %lor.lhs.false.203
  %128 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load209 = load i32, i32* %129, align 8
  %bf.clear210 = and i32 %bf.load209, 65535
  %cmp211 = icmp eq i32 %bf.clear210, 58
  br i1 %cmp211, label %if.end.230, label %lor.lhs.false.213

lor.lhs.false.213:                                ; preds = %lor.lhs.false.208
  %130 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load214 = load i32, i32* %131, align 8
  %bf.clear215 = and i32 %bf.load214, 65535
  %cmp216 = icmp eq i32 %bf.clear215, 134
  br i1 %cmp216, label %if.end.230, label %lor.lhs.false.218

lor.lhs.false.218:                                ; preds = %lor.lhs.false.213
  %132 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load219 = load i32, i32* %133, align 8
  %bf.clear220 = and i32 %bf.load219, 65535
  %cmp221 = icmp eq i32 %bf.clear220, 56
  br i1 %cmp221, label %if.end.230, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.218
  %134 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load224 = load i32, i32* %135, align 8
  %bf.clear225 = and i32 %bf.load224, 65535
  %cmp226 = icmp eq i32 %bf.clear225, 140
  br i1 %cmp226, label %if.end.230, label %if.then.228

if.then.228:                                      ; preds = %lor.lhs.false.223
  %136 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %call229 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %136, %struct.rtx_def* null)
  store %struct.rtx_def* %call229, %struct.rtx_def** %val, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.228, %lor.lhs.false.223, %lor.lhs.false.218, %lor.lhs.false.213, %lor.lhs.false.208, %lor.lhs.false.203, %lor.lhs.false.198, %lor.lhs.false.193, %land.lhs.true.188, %land.lhs.true.183, %if.end.178
  %137 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %138 = load i32, i32* %count, align 4
  %idxprom231 = sext i32 %138 to i64
  %139 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx232 = getelementptr inbounds %struct.arg, %struct.arg* %139, i64 %idxprom231
  %value233 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx232, i32 0, i32 0
  store %struct.rtx_def* %137, %struct.rtx_def** %value233, align 8
  %140 = load i32, i32* %mode152, align 4
  %141 = load i32, i32* %count, align 4
  %idxprom234 = sext i32 %141 to i64
  %142 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx235 = getelementptr inbounds %struct.arg, %struct.arg* %142, i64 %idxprom234
  %mode236 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx235, i32 0, i32 1
  store i32 %140, i32* %mode236, align 4
  %143 = load i32, i32* %mode152, align 4
  %call237 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %args_so_far, i32 %143, %union.tree_node* null, i32 1)
  %144 = load i32, i32* %count, align 4
  %idxprom238 = sext i32 %144 to i64
  %145 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx239 = getelementptr inbounds %struct.arg, %struct.arg* %145, i64 %idxprom238
  %reg240 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx239, i32 0, i32 2
  store %struct.rtx_def* %call237, %struct.rtx_def** %reg240, align 8
  %146 = load i32, i32* %count, align 4
  %idxprom241 = sext i32 %146 to i64
  %147 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx242 = getelementptr inbounds %struct.arg, %struct.arg* %147, i64 %idxprom241
  %partial243 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx242, i32 0, i32 3
  store i32 0, i32* %partial243, align 4
  %148 = load i32, i32* %mode152, align 4
  %149 = load i32, i32* %count, align 4
  %idxprom244 = sext i32 %149 to i64
  %150 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx245 = getelementptr inbounds %struct.arg, %struct.arg* %150, i64 %idxprom244
  %reg246 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx245, i32 0, i32 2
  %151 = load %struct.rtx_def*, %struct.rtx_def** %reg246, align 8
  %cmp247 = icmp ne %struct.rtx_def* %151, null
  %conv248 = zext i1 %cmp247 to i32
  %152 = load i32, i32* %count, align 4
  %idxprom249 = sext i32 %152 to i64
  %153 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx250 = getelementptr inbounds %struct.arg, %struct.arg* %153, i64 %idxprom249
  %offset251 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx250, i32 0, i32 4
  %154 = load i32, i32* %count, align 4
  %idxprom252 = sext i32 %154 to i64
  %155 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx253 = getelementptr inbounds %struct.arg, %struct.arg* %155, i64 %idxprom252
  %size254 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx253, i32 0, i32 5
  call void @locate_and_pad_parm(i32 %148, %union.tree_node* null, i32 %conv248, %union.tree_node* null, %struct.args_size* %args_size, %struct.args_size* %offset251, %struct.args_size* %size254, %struct.args_size* %alignment_pad)
  %156 = load i32, i32* %count, align 4
  %idxprom255 = sext i32 %156 to i64
  %157 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx256 = getelementptr inbounds %struct.arg, %struct.arg* %157, i64 %idxprom255
  %size257 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx256, i32 0, i32 5
  %var258 = getelementptr inbounds %struct.args_size, %struct.args_size* %size257, i32 0, i32 1
  %158 = load %union.tree_node*, %union.tree_node** %var258, align 8
  %tobool259 = icmp ne %union.tree_node* %158, null
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %if.end.230
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 3724, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #7
  unreachable

if.end.261:                                       ; preds = %if.end.230
  %159 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp262 = icmp eq i32 %159, 0
  br i1 %cmp262, label %land.lhs.true.264, label %if.end.282

land.lhs.true.264:                                ; preds = %if.end.261
  %160 = load i32, i32* %count, align 4
  %idxprom265 = sext i32 %160 to i64
  %161 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx266 = getelementptr inbounds %struct.arg, %struct.arg* %161, i64 %idxprom265
  %partial267 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx266, i32 0, i32 3
  %162 = load i32, i32* %partial267, align 4
  %tobool268 = icmp ne i32 %162, 0
  br i1 %tobool268, label %if.then.269, label %if.end.282

if.then.269:                                      ; preds = %land.lhs.true.264
  %163 = load i32, i32* %count, align 4
  %idxprom270 = sext i32 %163 to i64
  %164 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx271 = getelementptr inbounds %struct.arg, %struct.arg* %164, i64 %idxprom270
  %partial272 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx271, i32 0, i32 3
  %165 = load i32, i32* %partial272, align 4
  %166 = load i32, i32* @target_flags, align 4
  %and273 = and i32 %166, 33554432
  %tobool274 = icmp ne i32 %and273, 0
  %cond275 = select i1 %tobool274, i32 8, i32 4
  %mul276 = mul nsw i32 %165, %cond275
  %conv277 = sext i32 %mul276 to i64
  %167 = load i32, i32* %count, align 4
  %idxprom278 = sext i32 %167 to i64
  %168 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx279 = getelementptr inbounds %struct.arg, %struct.arg* %168, i64 %idxprom278
  %size280 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx279, i32 0, i32 5
  %constant281 = getelementptr inbounds %struct.args_size, %struct.args_size* %size280, i32 0, i32 0
  %169 = load i64, i64* %constant281, align 8
  %sub = sub nsw i64 %169, %conv277
  store i64 %sub, i64* %constant281, align 8
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.269, %land.lhs.true.264, %if.end.261
  %170 = load i32, i32* %count, align 4
  %idxprom283 = sext i32 %170 to i64
  %171 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx284 = getelementptr inbounds %struct.arg, %struct.arg* %171, i64 %idxprom283
  %reg285 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx284, i32 0, i32 2
  %172 = load %struct.rtx_def*, %struct.rtx_def** %reg285, align 8
  %cmp286 = icmp eq %struct.rtx_def* %172, null
  br i1 %cmp286, label %if.then.297, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %if.end.282
  %173 = load i32, i32* %count, align 4
  %idxprom289 = sext i32 %173 to i64
  %174 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx290 = getelementptr inbounds %struct.arg, %struct.arg* %174, i64 %idxprom289
  %partial291 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx290, i32 0, i32 3
  %175 = load i32, i32* %partial291, align 4
  %cmp292 = icmp ne i32 %175, 0
  br i1 %cmp292, label %if.then.297, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %lor.lhs.false.288
  %176 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp295 = icmp sgt i32 %176, 0
  br i1 %cmp295, label %if.then.297, label %if.end.304

if.then.297:                                      ; preds = %lor.lhs.false.294, %lor.lhs.false.288, %if.end.282
  %177 = load i32, i32* %count, align 4
  %idxprom298 = sext i32 %177 to i64
  %178 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx299 = getelementptr inbounds %struct.arg, %struct.arg* %178, i64 %idxprom298
  %size300 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx299, i32 0, i32 5
  %constant301 = getelementptr inbounds %struct.args_size, %struct.args_size* %size300, i32 0, i32 0
  %179 = load i64, i64* %constant301, align 8
  %constant302 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %180 = load i64, i64* %constant302, align 8
  %add303 = add nsw i64 %180, %179
  store i64 %add303, i64* %constant302, align 8
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.297, %lor.lhs.false.294
  %181 = load i32, i32* %mode152, align 4
  call void @function_arg_advance(%struct.ix86_args* %args_so_far, i32 %181, %union.tree_node* null, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.304
  %182 = load i32, i32* %count, align 4
  %inc305 = add nsw i32 %182, 1
  store i32 %inc305, i32* %count, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %183 = load %struct.rtx_def*, %struct.rtx_def** %fun, align 8
  call void @assemble_external_libcall(%struct.rtx_def* %183)
  %184 = bitcast %struct.args_size* %original_args_size to i8*
  %185 = bitcast %struct.args_size* %args_size to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %184, i8* %185, i64 16, i32 8, i1 false)
  %constant306 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %186 = load i64, i64* %constant306, align 8
  %187 = load %struct.function*, %struct.function** @cfun, align 8
  %expr307 = getelementptr inbounds %struct.function, %struct.function* %187, i32 0, i32 2
  %188 = load %struct.expr_status*, %struct.expr_status** %expr307, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %188, i32 0, i32 2
  %189 = load i32, i32* %x_stack_pointer_delta, align 4
  %conv308 = sext i32 %189 to i64
  %add309 = add nsw i64 %186, %conv308
  %190 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div = sdiv i32 %190, 8
  %conv310 = sext i32 %div to i64
  %add311 = add nsw i64 %add309, %conv310
  %sub312 = sub nsw i64 %add311, 1
  %191 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div313 = sdiv i32 %191, 8
  %conv314 = sext i32 %div313 to i64
  %div315 = sdiv i64 %sub312, %conv314
  %192 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div316 = sdiv i32 %192, 8
  %conv317 = sext i32 %div316 to i64
  %mul318 = mul nsw i64 %div315, %conv317
  %193 = load %struct.function*, %struct.function** @cfun, align 8
  %expr319 = getelementptr inbounds %struct.function, %struct.function* %193, i32 0, i32 2
  %194 = load %struct.expr_status*, %struct.expr_status** %expr319, align 8
  %x_stack_pointer_delta320 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %194, i32 0, i32 2
  %195 = load i32, i32* %x_stack_pointer_delta320, align 4
  %conv321 = sext i32 %195 to i64
  %sub322 = sub nsw i64 %mul318, %conv321
  %constant323 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  store i64 %sub322, i64* %constant323, align 8
  %constant324 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %196 = load i64, i64* %constant324, align 8
  %197 = load i32, i32* %reg_parm_stack_space, align 4
  %conv325 = sext i32 %197 to i64
  %cmp326 = icmp sgt i64 %196, %conv325
  br i1 %cmp326, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %constant328 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %198 = load i64, i64* %constant328, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %199 = load i32, i32* %reg_parm_stack_space, align 4
  %conv329 = sext i32 %199 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond330 = phi i64 [ %198, %cond.true ], [ %conv329, %cond.false ]
  %constant331 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  store i64 %cond330, i64* %constant331, align 8
  %200 = load i32, i32* %reg_parm_stack_space, align 4
  %conv332 = sext i32 %200 to i64
  %constant333 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %201 = load i64, i64* %constant333, align 8
  %sub334 = sub nsw i64 %201, %conv332
  store i64 %sub334, i64* %constant333, align 8
  %constant335 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %202 = load i64, i64* %constant335, align 8
  %203 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size = getelementptr inbounds %struct.function, %struct.function* %203, i32 0, i32 11
  %204 = load i32, i32* %outgoing_args_size, align 4
  %conv336 = sext i32 %204 to i64
  %cmp337 = icmp sgt i64 %202, %conv336
  br i1 %cmp337, label %if.then.339, label %if.end.343

if.then.339:                                      ; preds = %cond.end
  %constant340 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %205 = load i64, i64* %constant340, align 8
  %conv341 = trunc i64 %205 to i32
  %206 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size342 = getelementptr inbounds %struct.function, %struct.function* %206, i32 0, i32 11
  store i32 %conv341, i32* %outgoing_args_size342, align 4
  br label %if.end.343

if.end.343:                                       ; preds = %if.then.339, %cond.end
  %207 = load i32, i32* @target_flags, align 4
  %and344 = and i32 %207, 4096
  %tobool345 = icmp ne i32 %and344, 0
  br i1 %tobool345, label %if.then.346, label %if.else.374

if.then.346:                                      ; preds = %if.end.343
  %constant347 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %208 = load i64, i64* %constant347, align 8
  %conv348 = trunc i64 %208 to i32
  store i32 %conv348, i32* %needed, align 4
  %209 = load i32, i32* %reg_parm_stack_space, align 4
  %210 = load i32, i32* %needed, align 4
  %add349 = add nsw i32 %210, %209
  store i32 %add349, i32* %needed, align 4
  %211 = load i32, i32* %initial_highest_arg_in_use, align 4
  %212 = load i32, i32* %needed, align 4
  %cmp350 = icmp sgt i32 %211, %212
  br i1 %cmp350, label %cond.true.352, label %cond.false.353

cond.true.352:                                    ; preds = %if.then.346
  %213 = load i32, i32* %initial_highest_arg_in_use, align 4
  br label %cond.end.354

cond.false.353:                                   ; preds = %if.then.346
  %214 = load i32, i32* %needed, align 4
  br label %cond.end.354

cond.end.354:                                     ; preds = %cond.false.353, %cond.true.352
  %cond355 = phi i32 [ %213, %cond.true.352 ], [ %214, %cond.false.353 ]
  store i32 %cond355, i32* @highest_outgoing_arg_in_use, align 4
  %215 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %conv356 = sext i32 %215 to i64
  %216 = alloca i8, i64 %conv356
  store i8* %216, i8** @stack_usage_map, align 8
  %217 = load i32, i32* %initial_highest_arg_in_use, align 4
  %tobool357 = icmp ne i32 %217, 0
  br i1 %tobool357, label %if.then.358, label %if.end.360

if.then.358:                                      ; preds = %cond.end.354
  %218 = load i8*, i8** @stack_usage_map, align 8
  %219 = load i8*, i8** %initial_stack_usage_map, align 8
  %220 = load i32, i32* %initial_highest_arg_in_use, align 4
  %conv359 = sext i32 %220 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %218, i8* %219, i64 %conv359, i32 1, i1 false)
  br label %if.end.360

if.end.360:                                       ; preds = %if.then.358, %cond.end.354
  %221 = load i32, i32* %initial_highest_arg_in_use, align 4
  %222 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %cmp361 = icmp ne i32 %221, %222
  br i1 %cmp361, label %if.then.363, label %if.end.368

if.then.363:                                      ; preds = %if.end.360
  %223 = load i32, i32* %initial_highest_arg_in_use, align 4
  %idxprom364 = sext i32 %223 to i64
  %224 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %224, i64 %idxprom364
  %225 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %226 = load i32, i32* %initial_highest_arg_in_use, align 4
  %sub366 = sub nsw i32 %225, %226
  %conv367 = sext i32 %sub366 to i64
  call void @llvm.memset.p0i8.i64(i8* %arrayidx365, i8 0, i64 %conv367, i32 1, i1 false)
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.363, %if.end.360
  store i32 0, i32* %needed, align 4
  %227 = load i32, i32* @virtuals_instantiated, align 4
  %tobool369 = icmp ne i32 %227, 0
  br i1 %tobool369, label %if.then.370, label %if.else.372

if.then.370:                                      ; preds = %if.end.368
  %228 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call371 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %228, i64 0)
  store %struct.rtx_def* %call371, %struct.rtx_def** %argblock, align 8
  br label %if.end.373

if.else.372:                                      ; preds = %if.end.368
  %229 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  store %struct.rtx_def* %229, %struct.rtx_def** %argblock, align 8
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.372, %if.then.370
  br label %if.end.385

if.else.374:                                      ; preds = %if.end.343
  %230 = load i32, i32* @target_flags, align 4
  %and375 = and i32 %230, 2048
  %tobool376 = icmp ne i32 %and375, 0
  br i1 %tobool376, label %if.then.380, label %land.lhs.true.377

land.lhs.true.377:                                ; preds = %if.else.374
  %231 = load i32, i32* @target_flags, align 4
  %and378 = and i32 %231, 4096
  %tobool379 = icmp ne i32 %and378, 0
  br i1 %tobool379, label %if.then.380, label %if.end.384

if.then.380:                                      ; preds = %land.lhs.true.377, %if.else.374
  %constant381 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %232 = load i64, i64* %constant381, align 8
  %call382 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %232)
  %call383 = call %struct.rtx_def* @push_block(%struct.rtx_def* %call382, i32 0, i32 0)
  store %struct.rtx_def* %call383, %struct.rtx_def** %argblock, align 8
  br label %if.end.384

if.end.384:                                       ; preds = %if.then.380, %land.lhs.true.377
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.384, %if.end.373
  %233 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %cmp386 = icmp eq %struct.rtx_def* %233, null
  br i1 %cmp386, label %land.lhs.true.388, label %if.end.399

land.lhs.true.388:                                ; preds = %if.end.385
  %234 = load i32, i32* @target_flags, align 4
  %and389 = and i32 %234, 2048
  %tobool390 = icmp ne i32 %and389, 0
  br i1 %tobool390, label %if.end.399, label %land.lhs.true.391

land.lhs.true.391:                                ; preds = %land.lhs.true.388
  %235 = load i32, i32* @target_flags, align 4
  %and392 = and i32 %235, 4096
  %tobool393 = icmp ne i32 %and392, 0
  br i1 %tobool393, label %if.end.399, label %if.then.394

if.then.394:                                      ; preds = %land.lhs.true.391
  %constant395 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %236 = load i64, i64* %constant395, align 8
  %constant396 = getelementptr inbounds %struct.args_size, %struct.args_size* %original_args_size, i32 0, i32 0
  %237 = load i64, i64* %constant396, align 8
  %sub397 = sub nsw i64 %236, %237
  %call398 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub397)
  call void @anti_adjust_stack(%struct.rtx_def* %call398)
  br label %if.end.399

if.end.399:                                       ; preds = %if.then.394, %land.lhs.true.391, %land.lhs.true.388, %if.end.385
  %238 = load i32, i32* @target_flags, align 4
  %and400 = and i32 %238, 2048
  %tobool401 = icmp ne i32 %and400, 0
  br i1 %tobool401, label %if.else.407, label %land.lhs.true.402

land.lhs.true.402:                                ; preds = %if.end.399
  %239 = load i32, i32* @target_flags, align 4
  %and403 = and i32 %239, 4096
  %tobool404 = icmp ne i32 %and403, 0
  br i1 %tobool404, label %if.else.407, label %if.then.405

if.then.405:                                      ; preds = %land.lhs.true.402
  store i32 -1, i32* %inc, align 4
  %240 = load i32, i32* %nargs.addr, align 4
  %sub406 = sub nsw i32 %240, 1
  store i32 %sub406, i32* %argnum, align 4
  br label %if.end.408

if.else.407:                                      ; preds = %land.lhs.true.402, %if.end.399
  store i32 1, i32* %inc, align 4
  store i32 0, i32* %argnum, align 4
  br label %if.end.408

if.end.408:                                       ; preds = %if.else.407, %if.then.405
  %241 = load i32, i32* @target_flags, align 4
  %and409 = and i32 %241, 4096
  %tobool410 = icmp ne i32 %and409, 0
  br i1 %tobool410, label %if.then.411, label %if.end.486

if.then.411:                                      ; preds = %if.end.408
  store i32 0, i32* %count, align 4
  br label %for.cond.412

for.cond.412:                                     ; preds = %for.inc.430, %if.then.411
  %242 = load i32, i32* %count, align 4
  %243 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp413 = icmp slt i32 %242, %243
  br i1 %cmp413, label %for.body.415, label %for.end.432

for.body.415:                                     ; preds = %for.cond.412
  %244 = load i32, i32* %count, align 4
  %245 = load i32, i32* @highest_outgoing_arg_in_use, align 4
  %cmp416 = icmp sge i32 %244, %245
  br i1 %cmp416, label %if.then.424, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %for.body.415
  %246 = load i32, i32* %count, align 4
  %idxprom419 = sext i32 %246 to i64
  %247 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx420 = getelementptr inbounds i8, i8* %247, i64 %idxprom419
  %248 = load i8, i8* %arrayidx420, align 1
  %conv421 = sext i8 %248 to i32
  %cmp422 = icmp eq i32 %conv421, 0
  br i1 %cmp422, label %if.then.424, label %if.end.425

if.then.424:                                      ; preds = %lor.lhs.false.418, %for.body.415
  br label %for.inc.430

if.end.425:                                       ; preds = %lor.lhs.false.418
  %249 = load i32, i32* %low_to_save, align 4
  %cmp426 = icmp eq i32 %249, -1
  br i1 %cmp426, label %if.then.428, label %if.end.429

if.then.428:                                      ; preds = %if.end.425
  %250 = load i32, i32* %count, align 4
  store i32 %250, i32* %low_to_save, align 4
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.428, %if.end.425
  %251 = load i32, i32* %count, align 4
  store i32 %251, i32* %high_to_save, align 4
  br label %for.inc.430

for.inc.430:                                      ; preds = %if.end.429, %if.then.424
  %252 = load i32, i32* %count, align 4
  %inc431 = add nsw i32 %252, 1
  store i32 %inc431, i32* %count, align 4
  br label %for.cond.412

for.end.432:                                      ; preds = %for.cond.412
  %253 = load i32, i32* %low_to_save, align 4
  %cmp433 = icmp sge i32 %253, 0
  br i1 %cmp433, label %if.then.435, label %if.end.485

if.then.435:                                      ; preds = %for.end.432
  %254 = load i32, i32* %high_to_save, align 4
  %255 = load i32, i32* %low_to_save, align 4
  %sub436 = sub nsw i32 %254, %255
  %add437 = add nsw i32 %sub436, 1
  store i32 %add437, i32* %num_to_save, align 4
  %256 = load i32, i32* %num_to_save, align 4
  %mul438 = mul nsw i32 %256, 8
  %call439 = call i32 @mode_for_size(i32 %mul438, i32 1, i32 1)
  store i32 %call439, i32* %save_mode, align 4
  %257 = load i32, i32* %low_to_save, align 4
  %258 = load i32, i32* %save_mode, align 4
  %idxprom440 = sext i32 %258 to i64
  %arrayidx441 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom440
  %259 = load i8, i8* %arrayidx441, align 1
  %conv442 = zext i8 %259 to i32
  %260 = load i32, i32* @target_flags, align 4
  %and443 = and i32 %260, 33554432
  %tobool444 = icmp ne i32 %and443, 0
  %cond445 = select i1 %tobool444, i32 8, i32 4
  %div446 = sdiv i32 128, %cond445
  %cmp447 = icmp slt i32 %conv442, %div446
  br i1 %cmp447, label %cond.true.449, label %cond.false.453

cond.true.449:                                    ; preds = %if.then.435
  %261 = load i32, i32* %save_mode, align 4
  %idxprom450 = sext i32 %261 to i64
  %arrayidx451 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom450
  %262 = load i8, i8* %arrayidx451, align 1
  %conv452 = zext i8 %262 to i32
  br label %cond.end.458

cond.false.453:                                   ; preds = %if.then.435
  %263 = load i32, i32* @target_flags, align 4
  %and454 = and i32 %263, 33554432
  %tobool455 = icmp ne i32 %and454, 0
  %cond456 = select i1 %tobool455, i32 8, i32 4
  %div457 = sdiv i32 128, %cond456
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.453, %cond.true.449
  %cond459 = phi i32 [ %conv452, %cond.true.449 ], [ %div457, %cond.false.453 ]
  %sub460 = sub nsw i32 %cond459, 1
  %and461 = and i32 %257, %sub460
  %tobool462 = icmp ne i32 %and461, 0
  br i1 %tobool462, label %if.then.463, label %if.end.464

if.then.463:                                      ; preds = %cond.end.458
  store i32 51, i32* %save_mode, align 4
  br label %if.end.464

if.end.464:                                       ; preds = %if.then.463, %cond.end.458
  %264 = load i32, i32* %save_mode, align 4
  %265 = load i32, i32* %save_mode, align 4
  %266 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %267 = load i32, i32* %low_to_save, align 4
  %conv465 = sext i32 %267 to i64
  %call466 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %266, i64 %conv465)
  %call467 = call %struct.rtx_def* @memory_address(i32 %265, %struct.rtx_def* %call466)
  %call468 = call %struct.rtx_def* @gen_rtx_MEM(i32 %264, %struct.rtx_def* %call467)
  store %struct.rtx_def* %call468, %struct.rtx_def** %stack_area, align 8
  %268 = load i32, i32* %save_mode, align 4
  %cmp469 = icmp eq i32 %268, 51
  br i1 %cmp469, label %if.then.471, label %if.else.481

if.then.471:                                      ; preds = %if.end.464
  %269 = load i32, i32* %num_to_save, align 4
  %conv472 = sext i32 %269 to i64
  %call473 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %conv472, i32 0)
  store %struct.rtx_def* %call473, %struct.rtx_def** %save_area, align 8
  %270 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %271 = load i32, i32* @target_flags, align 4
  %and474 = and i32 %271, 33554432
  %tobool475 = icmp ne i32 %and474, 0
  %cond476 = select i1 %tobool475, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %270, i32 %cond476)
  %272 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %call477 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %272)
  %273 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %274 = load i32, i32* %num_to_save, align 4
  %conv478 = sext i32 %274 to i64
  %call479 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv478)
  %call480 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %call477, %struct.rtx_def* %273, %struct.rtx_def* %call479)
  br label %if.end.484

if.else.481:                                      ; preds = %if.end.464
  %275 = load i32, i32* %save_mode, align 4
  %call482 = call %struct.rtx_def* @gen_reg_rtx(i32 %275)
  store %struct.rtx_def* %call482, %struct.rtx_def** %save_area, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %277 = load %struct.rtx_def*, %struct.rtx_def** %stack_area, align 8
  %call483 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %276, %struct.rtx_def* %277)
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.481, %if.then.471
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %for.end.432
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.408
  store i32 0, i32* %count, align 4
  br label %for.cond.487

for.cond.487:                                     ; preds = %for.inc.619, %if.end.486
  %278 = load i32, i32* %count, align 4
  %279 = load i32, i32* %nargs.addr, align 4
  %cmp488 = icmp slt i32 %278, %279
  br i1 %cmp488, label %for.body.490, label %for.end.622

for.body.490:                                     ; preds = %for.cond.487
  %280 = load i32, i32* %argnum, align 4
  %idxprom492 = sext i32 %280 to i64
  %281 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx493 = getelementptr inbounds %struct.arg, %struct.arg* %281, i64 %idxprom492
  %mode494 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx493, i32 0, i32 1
  %282 = load i32, i32* %mode494, align 4
  store i32 %282, i32* %mode491, align 4
  %283 = load i32, i32* %argnum, align 4
  %idxprom496 = sext i32 %283 to i64
  %284 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx497 = getelementptr inbounds %struct.arg, %struct.arg* %284, i64 %idxprom496
  %value498 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx497, i32 0, i32 0
  %285 = load %struct.rtx_def*, %struct.rtx_def** %value498, align 8
  store %struct.rtx_def* %285, %struct.rtx_def** %val495, align 8
  %286 = load i32, i32* %argnum, align 4
  %idxprom500 = sext i32 %286 to i64
  %287 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx501 = getelementptr inbounds %struct.arg, %struct.arg* %287, i64 %idxprom500
  %reg502 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx501, i32 0, i32 2
  %288 = load %struct.rtx_def*, %struct.rtx_def** %reg502, align 8
  store %struct.rtx_def* %288, %struct.rtx_def** %reg499, align 8
  %289 = load i32, i32* %argnum, align 4
  %idxprom504 = sext i32 %289 to i64
  %290 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx505 = getelementptr inbounds %struct.arg, %struct.arg* %290, i64 %idxprom504
  %partial506 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx505, i32 0, i32 3
  %291 = load i32, i32* %partial506, align 4
  store i32 %291, i32* %partial503, align 4
  store i32 0, i32* %lower_bound, align 4
  store i32 0, i32* %upper_bound, align 4
  %292 = load %struct.rtx_def*, %struct.rtx_def** %reg499, align 8
  %cmp507 = icmp ne %struct.rtx_def* %292, null
  br i1 %cmp507, label %land.lhs.true.509, label %if.then.512

land.lhs.true.509:                                ; preds = %for.body.490
  %293 = load i32, i32* %partial503, align 4
  %cmp510 = icmp eq i32 %293, 0
  br i1 %cmp510, label %if.end.618, label %if.then.512

if.then.512:                                      ; preds = %land.lhs.true.509, %for.body.490
  %294 = load i32, i32* @target_flags, align 4
  %and513 = and i32 %294, 4096
  %tobool514 = icmp ne i32 %and513, 0
  br i1 %tobool514, label %if.then.515, label %if.end.572

if.then.515:                                      ; preds = %if.then.512
  %295 = load i32, i32* %argnum, align 4
  %idxprom516 = sext i32 %295 to i64
  %296 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx517 = getelementptr inbounds %struct.arg, %struct.arg* %296, i64 %idxprom516
  %offset518 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx517, i32 0, i32 4
  %constant519 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset518, i32 0, i32 0
  %297 = load i64, i64* %constant519, align 8
  %conv520 = trunc i64 %297 to i32
  store i32 %conv520, i32* %lower_bound, align 4
  %298 = load i32, i32* %lower_bound, align 4
  %conv521 = sext i32 %298 to i64
  %299 = load i32, i32* %argnum, align 4
  %idxprom522 = sext i32 %299 to i64
  %300 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx523 = getelementptr inbounds %struct.arg, %struct.arg* %300, i64 %idxprom522
  %size524 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx523, i32 0, i32 5
  %constant525 = getelementptr inbounds %struct.args_size, %struct.args_size* %size524, i32 0, i32 0
  %301 = load i64, i64* %constant525, align 8
  %add526 = add nsw i64 %conv521, %301
  %conv527 = trunc i64 %add526 to i32
  store i32 %conv527, i32* %upper_bound, align 4
  %302 = load i32, i32* %lower_bound, align 4
  store i32 %302, i32* %i, align 4
  br label %for.cond.528

for.cond.528:                                     ; preds = %for.inc.541, %if.then.515
  %303 = load i32, i32* %i, align 4
  %304 = load i32, i32* %upper_bound, align 4
  %cmp529 = icmp slt i32 %303, %304
  br i1 %cmp529, label %for.body.531, label %for.end.543

for.body.531:                                     ; preds = %for.cond.528
  %305 = load i32, i32* %i, align 4
  %idxprom532 = sext i32 %305 to i64
  %306 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx533 = getelementptr inbounds i8, i8* %306, i64 %idxprom532
  %307 = load i8, i8* %arrayidx533, align 1
  %conv534 = sext i8 %307 to i32
  %tobool535 = icmp ne i32 %conv534, 0
  br i1 %tobool535, label %land.lhs.true.536, label %if.end.540

land.lhs.true.536:                                ; preds = %for.body.531
  %308 = load i32, i32* %i, align 4
  %309 = load i32, i32* %reg_parm_stack_space, align 4
  %cmp537 = icmp sgt i32 %308, %309
  br i1 %cmp537, label %if.then.539, label %if.end.540

if.then.539:                                      ; preds = %land.lhs.true.536
  br label %for.end.543

if.end.540:                                       ; preds = %land.lhs.true.536, %for.body.531
  br label %for.inc.541

for.inc.541:                                      ; preds = %if.end.540
  %310 = load i32, i32* %i, align 4
  %inc542 = add nsw i32 %310, 1
  store i32 %inc542, i32* %i, align 4
  br label %for.cond.528

for.end.543:                                      ; preds = %if.then.539, %for.cond.528
  %311 = load i32, i32* %i, align 4
  %312 = load i32, i32* %upper_bound, align 4
  %cmp544 = icmp ne i32 %311, %312
  br i1 %cmp544, label %if.then.546, label %if.end.571

if.then.546:                                      ; preds = %for.end.543
  %313 = load i32, i32* %argnum, align 4
  %idxprom548 = sext i32 %313 to i64
  %314 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx549 = getelementptr inbounds %struct.arg, %struct.arg* %314, i64 %idxprom548
  %size550 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx549, i32 0, i32 5
  %constant551 = getelementptr inbounds %struct.args_size, %struct.args_size* %size550, i32 0, i32 0
  %315 = load i64, i64* %constant551, align 8
  %mul552 = mul nsw i64 %315, 8
  %conv553 = trunc i64 %mul552 to i32
  %call554 = call i32 @mode_for_size(i32 %conv553, i32 1, i32 1)
  store i32 %call554, i32* %save_mode547, align 4
  %316 = load i32, i32* %save_mode547, align 4
  %317 = load i32, i32* %save_mode547, align 4
  %318 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %319 = load i32, i32* %argnum, align 4
  %idxprom556 = sext i32 %319 to i64
  %320 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx557 = getelementptr inbounds %struct.arg, %struct.arg* %320, i64 %idxprom556
  %offset558 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx557, i32 0, i32 4
  %constant559 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset558, i32 0, i32 0
  %321 = load i64, i64* %constant559, align 8
  %call560 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %318, i64 %321)
  %call561 = call %struct.rtx_def* @memory_address(i32 %317, %struct.rtx_def* %call560)
  %call562 = call %struct.rtx_def* @gen_rtx_MEM(i32 %316, %struct.rtx_def* %call561)
  store %struct.rtx_def* %call562, %struct.rtx_def** %stack_area555, align 8
  %322 = load i32, i32* %save_mode547, align 4
  %call563 = call %struct.rtx_def* @gen_reg_rtx(i32 %322)
  %323 = load i32, i32* %argnum, align 4
  %idxprom564 = sext i32 %323 to i64
  %324 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx565 = getelementptr inbounds %struct.arg, %struct.arg* %324, i64 %idxprom564
  %save_area566 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx565, i32 0, i32 6
  store %struct.rtx_def* %call563, %struct.rtx_def** %save_area566, align 8
  %325 = load i32, i32* %argnum, align 4
  %idxprom567 = sext i32 %325 to i64
  %326 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx568 = getelementptr inbounds %struct.arg, %struct.arg* %326, i64 %idxprom567
  %save_area569 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx568, i32 0, i32 6
  %327 = load %struct.rtx_def*, %struct.rtx_def** %save_area569, align 8
  %328 = load %struct.rtx_def*, %struct.rtx_def** %stack_area555, align 8
  %call570 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %327, %struct.rtx_def* %328)
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.546, %for.end.543
  br label %if.end.572

if.end.572:                                       ; preds = %if.end.571, %if.then.512
  %329 = load %struct.rtx_def*, %struct.rtx_def** %val495, align 8
  %330 = load i32, i32* %mode491, align 4
  %331 = load i32, i32* %partial503, align 4
  %332 = load %struct.rtx_def*, %struct.rtx_def** %reg499, align 8
  %333 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %334 = load i32, i32* %argnum, align 4
  %idxprom573 = sext i32 %334 to i64
  %335 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx574 = getelementptr inbounds %struct.arg, %struct.arg* %335, i64 %idxprom573
  %offset575 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx574, i32 0, i32 4
  %constant576 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset575, i32 0, i32 0
  %336 = load i64, i64* %constant576, align 8
  %call577 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %336)
  %337 = load i32, i32* %reg_parm_stack_space, align 4
  %var578 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 1
  %338 = load %union.tree_node*, %union.tree_node** %var578, align 8
  %cmp579 = icmp eq %union.tree_node* %338, null
  br i1 %cmp579, label %cond.true.581, label %cond.false.584

cond.true.581:                                    ; preds = %if.end.572
  %constant582 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 0
  %339 = load i64, i64* %constant582, align 8
  %call583 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %339)
  br label %cond.end.600

cond.false.584:                                   ; preds = %if.end.572
  %var585 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 1
  %340 = load %union.tree_node*, %union.tree_node** %var585, align 8
  %cmp586 = icmp eq %union.tree_node* %340, null
  br i1 %cmp586, label %cond.true.588, label %cond.false.591

cond.true.588:                                    ; preds = %cond.false.584
  %constant589 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 0
  %341 = load i64, i64* %constant589, align 8
  %call590 = call %union.tree_node* @size_int_wide(i64 %341, i32 1)
  br label %cond.end.597

cond.false.591:                                   ; preds = %cond.false.584
  %342 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %var592 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 1
  %343 = load %union.tree_node*, %union.tree_node** %var592, align 8
  %call593 = call %union.tree_node* @convert(%union.tree_node* %342, %union.tree_node* %343)
  %constant594 = getelementptr inbounds %struct.args_size, %struct.args_size* %alignment_pad, i32 0, i32 0
  %344 = load i64, i64* %constant594, align 8
  %call595 = call %union.tree_node* @size_int_wide(i64 %344, i32 1)
  %call596 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %call593, %union.tree_node* %call595)
  br label %cond.end.597

cond.end.597:                                     ; preds = %cond.false.591, %cond.true.588
  %cond598 = phi %union.tree_node* [ %call590, %cond.true.588 ], [ %call596, %cond.false.591 ]
  %call599 = call %struct.rtx_def* @expand_expr(%union.tree_node* %cond598, %struct.rtx_def* null, i32 0, i32 0)
  br label %cond.end.600

cond.end.600:                                     ; preds = %cond.end.597, %cond.true.581
  %cond601 = phi %struct.rtx_def* [ %call583, %cond.true.581 ], [ %call599, %cond.end.597 ]
  call void @emit_push_insn(%struct.rtx_def* %329, i32 %330, %union.tree_node* null, %struct.rtx_def* null, i32 0, i32 %331, %struct.rtx_def* %332, i32 0, %struct.rtx_def* %333, %struct.rtx_def* %call577, i32 %337, %struct.rtx_def* %cond601)
  %345 = load i32, i32* @target_flags, align 4
  %and602 = and i32 %345, 4096
  %tobool603 = icmp ne i32 %and602, 0
  br i1 %tobool603, label %if.then.604, label %if.end.614

if.then.604:                                      ; preds = %cond.end.600
  %346 = load i32, i32* %lower_bound, align 4
  store i32 %346, i32* %i, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.611, %if.then.604
  %347 = load i32, i32* %i, align 4
  %348 = load i32, i32* %upper_bound, align 4
  %cmp606 = icmp slt i32 %347, %348
  br i1 %cmp606, label %for.body.608, label %for.end.613

for.body.608:                                     ; preds = %for.cond.605
  %349 = load i32, i32* %i, align 4
  %idxprom609 = sext i32 %349 to i64
  %350 = load i8*, i8** @stack_usage_map, align 8
  %arrayidx610 = getelementptr inbounds i8, i8* %350, i64 %idxprom609
  store i8 1, i8* %arrayidx610, align 1
  br label %for.inc.611

for.inc.611:                                      ; preds = %for.body.608
  %351 = load i32, i32* %i, align 4
  %inc612 = add nsw i32 %351, 1
  store i32 %inc612, i32* %i, align 4
  br label %for.cond.605

for.end.613:                                      ; preds = %for.cond.605
  br label %if.end.614

if.end.614:                                       ; preds = %for.end.613, %cond.end.600
  %352 = load %struct.function*, %struct.function** @cfun, align 8
  %expr615 = getelementptr inbounds %struct.function, %struct.function* %352, i32 0, i32 2
  %353 = load %struct.expr_status*, %struct.expr_status** %expr615, align 8
  %x_inhibit_defer_pop616 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %353, i32 0, i32 1
  %354 = load i32, i32* %x_inhibit_defer_pop616, align 4
  %add617 = add nsw i32 %354, 1
  store i32 %add617, i32* %x_inhibit_defer_pop616, align 4
  br label %if.end.618

if.end.618:                                       ; preds = %if.end.614, %land.lhs.true.509
  br label %for.inc.619

for.inc.619:                                      ; preds = %if.end.618
  %355 = load i32, i32* %count, align 4
  %inc620 = add nsw i32 %355, 1
  store i32 %inc620, i32* %count, align 4
  %356 = load i32, i32* %inc, align 4
  %357 = load i32, i32* %argnum, align 4
  %add621 = add nsw i32 %357, %356
  store i32 %add621, i32* %argnum, align 4
  br label %for.cond.487

for.end.622:                                      ; preds = %for.cond.487
  %358 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %cmp623 = icmp eq %struct.rtx_def* %358, null
  br i1 %cmp623, label %land.lhs.true.625, label %if.end.636

land.lhs.true.625:                                ; preds = %for.end.622
  %359 = load i32, i32* @target_flags, align 4
  %and626 = and i32 %359, 2048
  %tobool627 = icmp ne i32 %and626, 0
  br i1 %tobool627, label %if.then.631, label %land.lhs.true.628

land.lhs.true.628:                                ; preds = %land.lhs.true.625
  %360 = load i32, i32* @target_flags, align 4
  %and629 = and i32 %360, 4096
  %tobool630 = icmp ne i32 %and629, 0
  br i1 %tobool630, label %if.then.631, label %if.end.636

if.then.631:                                      ; preds = %land.lhs.true.628, %land.lhs.true.625
  %constant632 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %361 = load i64, i64* %constant632, align 8
  %constant633 = getelementptr inbounds %struct.args_size, %struct.args_size* %original_args_size, i32 0, i32 0
  %362 = load i64, i64* %constant633, align 8
  %sub634 = sub nsw i64 %361, %362
  %call635 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub634)
  call void @anti_adjust_stack(%struct.rtx_def* %call635)
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.631, %land.lhs.true.628, %for.end.622
  %363 = load i32, i32* @target_flags, align 4
  %and637 = and i32 %363, 2048
  %tobool638 = icmp ne i32 %and637, 0
  br i1 %tobool638, label %if.else.644, label %land.lhs.true.639

land.lhs.true.639:                                ; preds = %if.end.636
  %364 = load i32, i32* @target_flags, align 4
  %and640 = and i32 %364, 4096
  %tobool641 = icmp ne i32 %and640, 0
  br i1 %tobool641, label %if.else.644, label %if.then.642

if.then.642:                                      ; preds = %land.lhs.true.639
  %365 = load i32, i32* %nargs.addr, align 4
  %sub643 = sub nsw i32 %365, 1
  store i32 %sub643, i32* %argnum, align 4
  br label %if.end.645

if.else.644:                                      ; preds = %land.lhs.true.639, %if.end.636
  store i32 0, i32* %argnum, align 4
  br label %if.end.645

if.end.645:                                       ; preds = %if.else.644, %if.then.642
  %366 = load %struct.rtx_def*, %struct.rtx_def** %fun, align 8
  %call646 = call %struct.rtx_def* @prepare_call_address(%struct.rtx_def* %366, %union.tree_node* null, %struct.rtx_def** %call_fusage, i32 0, i32 0)
  store %struct.rtx_def* %call646, %struct.rtx_def** %fun, align 8
  store i32 0, i32* %count, align 4
  br label %for.cond.647

for.cond.647:                                     ; preds = %for.inc.690, %if.end.645
  %367 = load i32, i32* %count, align 4
  %368 = load i32, i32* %nargs.addr, align 4
  %cmp648 = icmp slt i32 %367, %368
  br i1 %cmp648, label %for.body.650, label %for.end.693

for.body.650:                                     ; preds = %for.cond.647
  %369 = load i32, i32* %argnum, align 4
  %idxprom652 = sext i32 %369 to i64
  %370 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx653 = getelementptr inbounds %struct.arg, %struct.arg* %370, i64 %idxprom652
  %value654 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx653, i32 0, i32 0
  %371 = load %struct.rtx_def*, %struct.rtx_def** %value654, align 8
  store %struct.rtx_def* %371, %struct.rtx_def** %val651, align 8
  %372 = load i32, i32* %argnum, align 4
  %idxprom656 = sext i32 %372 to i64
  %373 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx657 = getelementptr inbounds %struct.arg, %struct.arg* %373, i64 %idxprom656
  %reg658 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx657, i32 0, i32 2
  %374 = load %struct.rtx_def*, %struct.rtx_def** %reg658, align 8
  store %struct.rtx_def* %374, %struct.rtx_def** %reg655, align 8
  %375 = load i32, i32* %argnum, align 4
  %idxprom660 = sext i32 %375 to i64
  %376 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx661 = getelementptr inbounds %struct.arg, %struct.arg* %376, i64 %idxprom660
  %partial662 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx661, i32 0, i32 3
  %377 = load i32, i32* %partial662, align 4
  store i32 %377, i32* %partial659, align 4
  %378 = load %struct.rtx_def*, %struct.rtx_def** %reg655, align 8
  %cmp663 = icmp ne %struct.rtx_def* %378, null
  br i1 %cmp663, label %land.lhs.true.665, label %if.else.677

land.lhs.true.665:                                ; preds = %for.body.650
  %379 = load %struct.rtx_def*, %struct.rtx_def** %reg655, align 8
  %380 = bitcast %struct.rtx_def* %379 to i32*
  %bf.load666 = load i32, i32* %380, align 8
  %bf.clear667 = and i32 %bf.load666, 65535
  %cmp668 = icmp eq i32 %bf.clear667, 39
  br i1 %cmp668, label %if.then.670, label %if.else.677

if.then.670:                                      ; preds = %land.lhs.true.665
  %381 = load %struct.rtx_def*, %struct.rtx_def** %reg655, align 8
  %382 = load %struct.rtx_def*, %struct.rtx_def** %val651, align 8
  %383 = load %struct.rtx_def*, %struct.rtx_def** %val651, align 8
  %384 = bitcast %struct.rtx_def* %383 to i32*
  %bf.load671 = load i32, i32* %384, align 8
  %bf.lshr672 = lshr i32 %bf.load671, 16
  %bf.clear673 = and i32 %bf.lshr672, 255
  %idxprom674 = sext i32 %bf.clear673 to i64
  %arrayidx675 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom674
  %385 = load i8, i8* %arrayidx675, align 1
  %conv676 = zext i8 %385 to i32
  call void @emit_group_load(%struct.rtx_def* %381, %struct.rtx_def* %382, i32 %conv676)
  br label %if.end.686

if.else.677:                                      ; preds = %land.lhs.true.665, %for.body.650
  %386 = load %struct.rtx_def*, %struct.rtx_def** %reg655, align 8
  %cmp678 = icmp ne %struct.rtx_def* %386, null
  br i1 %cmp678, label %land.lhs.true.680, label %if.end.685

land.lhs.true.680:                                ; preds = %if.else.677
  %387 = load i32, i32* %partial659, align 4
  %cmp681 = icmp eq i32 %387, 0
  br i1 %cmp681, label %if.then.683, label %if.end.685

if.then.683:                                      ; preds = %land.lhs.true.680
  %388 = load %struct.rtx_def*, %struct.rtx_def** %reg655, align 8
  %389 = load %struct.rtx_def*, %struct.rtx_def** %val651, align 8
  %call684 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %388, %struct.rtx_def* %389)
  br label %if.end.685

if.end.685:                                       ; preds = %if.then.683, %land.lhs.true.680, %if.else.677
  br label %if.end.686

if.end.686:                                       ; preds = %if.end.685, %if.then.670
  %390 = load %struct.function*, %struct.function** @cfun, align 8
  %expr687 = getelementptr inbounds %struct.function, %struct.function* %390, i32 0, i32 2
  %391 = load %struct.expr_status*, %struct.expr_status** %expr687, align 8
  %x_inhibit_defer_pop688 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %391, i32 0, i32 1
  %392 = load i32, i32* %x_inhibit_defer_pop688, align 4
  %add689 = add nsw i32 %392, 1
  store i32 %add689, i32* %x_inhibit_defer_pop688, align 4
  br label %for.inc.690

for.inc.690:                                      ; preds = %if.end.686
  %393 = load i32, i32* %count, align 4
  %inc691 = add nsw i32 %393, 1
  store i32 %inc691, i32* %count, align 4
  %394 = load i32, i32* %inc, align 4
  %395 = load i32, i32* %argnum, align 4
  %add692 = add nsw i32 %395, %394
  store i32 %add692, i32* %argnum, align 4
  br label %for.cond.647

for.end.693:                                      ; preds = %for.cond.647
  store i32 0, i32* %count, align 4
  br label %for.cond.694

for.cond.694:                                     ; preds = %for.inc.716, %for.end.693
  %396 = load i32, i32* %count, align 4
  %397 = load i32, i32* %nargs.addr, align 4
  %cmp695 = icmp slt i32 %396, %397
  br i1 %cmp695, label %for.body.697, label %for.end.718

for.body.697:                                     ; preds = %for.cond.694
  %398 = load i32, i32* %count, align 4
  %idxprom699 = sext i32 %398 to i64
  %399 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx700 = getelementptr inbounds %struct.arg, %struct.arg* %399, i64 %idxprom699
  %reg701 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx700, i32 0, i32 2
  %400 = load %struct.rtx_def*, %struct.rtx_def** %reg701, align 8
  store %struct.rtx_def* %400, %struct.rtx_def** %reg698, align 8
  %401 = load %struct.rtx_def*, %struct.rtx_def** %reg698, align 8
  %cmp702 = icmp ne %struct.rtx_def* %401, null
  br i1 %cmp702, label %land.lhs.true.704, label %if.else.710

land.lhs.true.704:                                ; preds = %for.body.697
  %402 = load %struct.rtx_def*, %struct.rtx_def** %reg698, align 8
  %403 = bitcast %struct.rtx_def* %402 to i32*
  %bf.load705 = load i32, i32* %403, align 8
  %bf.clear706 = and i32 %bf.load705, 65535
  %cmp707 = icmp eq i32 %bf.clear706, 39
  br i1 %cmp707, label %if.then.709, label %if.else.710

if.then.709:                                      ; preds = %land.lhs.true.704
  %404 = load %struct.rtx_def*, %struct.rtx_def** %reg698, align 8
  call void @use_group_regs(%struct.rtx_def** %call_fusage, %struct.rtx_def* %404)
  br label %if.end.715

if.else.710:                                      ; preds = %land.lhs.true.704, %for.body.697
  %405 = load %struct.rtx_def*, %struct.rtx_def** %reg698, align 8
  %cmp711 = icmp ne %struct.rtx_def* %405, null
  br i1 %cmp711, label %if.then.713, label %if.end.714

if.then.713:                                      ; preds = %if.else.710
  %406 = load %struct.rtx_def*, %struct.rtx_def** %reg698, align 8
  call void @use_reg(%struct.rtx_def** %call_fusage, %struct.rtx_def* %406)
  br label %if.end.714

if.end.714:                                       ; preds = %if.then.713, %if.else.710
  br label %if.end.715

if.end.715:                                       ; preds = %if.end.714, %if.then.709
  br label %for.inc.716

for.inc.716:                                      ; preds = %if.end.715
  %407 = load i32, i32* %count, align 4
  %inc717 = add nsw i32 %407, 1
  store i32 %inc717, i32* %count, align 4
  br label %for.cond.694

for.end.718:                                      ; preds = %for.cond.694
  %408 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %cmp719 = icmp ne %struct.rtx_def* %408, null
  br i1 %cmp719, label %land.lhs.true.721, label %if.end.742

land.lhs.true.721:                                ; preds = %for.end.718
  %409 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %cmp722 = icmp ne %struct.rtx_def* %409, null
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.742

land.lhs.true.724:                                ; preds = %land.lhs.true.721
  %410 = load i32, i32* %pcc_struct_value, align 4
  %tobool725 = icmp ne i32 %410, 0
  br i1 %tobool725, label %if.end.742, label %if.then.726

if.then.726:                                      ; preds = %land.lhs.true.724
  %411 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %412 = load i32, i32* @target_flags, align 4
  %and727 = and i32 %412, 33554432
  %tobool728 = icmp ne i32 %and727, 0
  %cond729 = select i1 %tobool728, i32 5, i32 4
  %413 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %fld730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %413, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld730, i32 0, i64 0
  %rtx732 = bitcast %union.rtunion_def* %arrayidx731 to %struct.rtx_def**
  %414 = load %struct.rtx_def*, %struct.rtx_def** %rtx732, align 8
  %call733 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %414, %struct.rtx_def* null)
  %call734 = call %struct.rtx_def* @force_reg(i32 %cond729, %struct.rtx_def* %call733)
  %call735 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %411, %struct.rtx_def* %call734)
  %415 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  %416 = bitcast %struct.rtx_def* %415 to i32*
  %bf.load736 = load i32, i32* %416, align 8
  %bf.clear737 = and i32 %bf.load736, 65535
  %cmp738 = icmp eq i32 %bf.clear737, 61
  br i1 %cmp738, label %if.then.740, label %if.end.741

if.then.740:                                      ; preds = %if.then.726
  %417 = load %struct.rtx_def*, %struct.rtx_def** @struct_value_rtx, align 8
  call void @use_reg(%struct.rtx_def** %call_fusage, %struct.rtx_def* %417)
  br label %if.end.741

if.end.741:                                       ; preds = %if.then.740, %if.then.726
  br label %if.end.742

if.end.742:                                       ; preds = %if.end.741, %land.lhs.true.724, %land.lhs.true.721, %for.end.718
  %418 = load %struct.function*, %struct.function** @cfun, align 8
  %expr743 = getelementptr inbounds %struct.function, %struct.function* %418, i32 0, i32 2
  %419 = load %struct.expr_status*, %struct.expr_status** %expr743, align 8
  %x_inhibit_defer_pop744 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %419, i32 0, i32 1
  %420 = load i32, i32* %x_inhibit_defer_pop744, align 4
  %add745 = add nsw i32 %420, 1
  store i32 %add745, i32* %x_inhibit_defer_pop744, align 4
  %421 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %cmp746 = icmp eq %struct.rtx_def* %421, null
  br i1 %cmp746, label %land.lhs.true.748, label %cond.false.753

land.lhs.true.748:                                ; preds = %if.end.742
  %422 = load i32, i32* %outmode.addr, align 4
  %cmp749 = icmp ne i32 %422, 0
  br i1 %cmp749, label %cond.true.751, label %cond.false.753

cond.true.751:                                    ; preds = %land.lhs.true.748
  %423 = load i32, i32* %outmode.addr, align 4
  %call752 = call %struct.rtx_def* @hard_libcall_value(i32 %423)
  br label %cond.end.754

cond.false.753:                                   ; preds = %land.lhs.true.748, %if.end.742
  br label %cond.end.754

cond.end.754:                                     ; preds = %cond.false.753, %cond.true.751
  %cond755 = phi %struct.rtx_def* [ %call752, %cond.true.751 ], [ null, %cond.false.753 ]
  store %struct.rtx_def* %cond755, %struct.rtx_def** %valreg, align 8
  %424 = load %struct.function*, %struct.function** @cfun, align 8
  %expr756 = getelementptr inbounds %struct.function, %struct.function* %424, i32 0, i32 2
  %425 = load %struct.expr_status*, %struct.expr_status** %expr756, align 8
  %x_stack_pointer_delta757 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %425, i32 0, i32 2
  %426 = load i32, i32* %x_stack_pointer_delta757, align 4
  %427 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div758 = sdiv i32 %427, 8
  %sub759 = sub nsw i32 %div758, 1
  %and760 = and i32 %426, %sub759
  %tobool761 = icmp ne i32 %and760, 0
  br i1 %tobool761, label %if.then.762, label %if.end.763

if.then.762:                                      ; preds = %cond.end.754
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4032, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #7
  unreachable

if.end.763:                                       ; preds = %cond.end.754
  %call764 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call764, %struct.rtx_def** %before_call, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %fun, align 8
  %429 = load %struct.rtx_def*, %struct.rtx_def** %orgfun.addr, align 8
  %fld765 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %429, i32 0, i32 1
  %arrayidx766 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld765, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx766 to i8**
  %430 = load i8*, i8** %rtstr, align 8
  %call767 = call %union.tree_node* @get_identifier(i8* %430)
  %431 = load i32, i32* %outmode.addr, align 4
  %cmp768 = icmp eq i32 %431, 0
  br i1 %cmp768, label %cond.true.770, label %cond.false.771

cond.true.770:                                    ; preds = %if.end.763
  %432 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  br label %cond.end.773

cond.false.771:                                   ; preds = %if.end.763
  %433 = load i32, i32* %outmode.addr, align 4
  %call772 = call %union.tree_node* @type_for_mode(i32 %433, i32 0)
  br label %cond.end.773

cond.end.773:                                     ; preds = %cond.false.771, %cond.true.770
  %cond774 = phi %union.tree_node* [ %432, %cond.true.770 ], [ %call772, %cond.false.771 ]
  %call775 = call %union.tree_node* @build_function_type(%union.tree_node* %cond774, %union.tree_node* null)
  %constant776 = getelementptr inbounds %struct.args_size, %struct.args_size* %original_args_size, i32 0, i32 0
  %434 = load i64, i64* %constant776, align 8
  %constant777 = getelementptr inbounds %struct.args_size, %struct.args_size* %args_size, i32 0, i32 0
  %435 = load i64, i64* %constant777, align 8
  %436 = load i32, i32* %struct_value_size, align 4
  %conv778 = sext i32 %436 to i64
  %437 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call779 = call %struct.rtx_def* @function_arg(%struct.ix86_args* %args_so_far, i32 0, %union.tree_node* %437, i32 1)
  %438 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %439 = load i32, i32* %old_inhibit_defer_pop, align 4
  %add780 = add nsw i32 %439, 1
  %440 = load %struct.rtx_def*, %struct.rtx_def** %call_fusage, align 8
  %441 = load i32, i32* %flags, align 4
  call void @emit_call_1(%struct.rtx_def* %428, %union.tree_node* %call767, %union.tree_node* %call775, i64 %434, i64 %435, i64 %conv778, %struct.rtx_def* %call779, %struct.rtx_def* %438, i32 %add780, %struct.rtx_def* %440, i32 %441, %struct.ix86_args* %args_so_far)
  %442 = load i32, i32* %flags, align 4
  %and781 = and i32 %442, 66
  %tobool782 = icmp ne i32 %and781, 0
  br i1 %tobool782, label %if.then.783, label %if.end.797

if.then.783:                                      ; preds = %cond.end.773
  %call784 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call784, %struct.rtx_def** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.795, %if.then.783
  %443 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %444 = bitcast %struct.rtx_def* %443 to i32*
  %bf.load785 = load i32, i32* %444, align 8
  %bf.clear786 = and i32 %bf.load785, 65535
  %cmp787 = icmp ne i32 %bf.clear786, 34
  br i1 %cmp787, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %445 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld789 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %445, i32 0, i32 1
  %arrayidx790 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld789, i32 0, i64 1
  %rtx791 = bitcast %union.rtunion_def* %arrayidx790 to %struct.rtx_def**
  %446 = load %struct.rtx_def*, %struct.rtx_def** %rtx791, align 8
  store %struct.rtx_def* %446, %struct.rtx_def** %last, align 8
  %447 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %448 = load %struct.rtx_def*, %struct.rtx_def** %before_call, align 8
  %cmp792 = icmp eq %struct.rtx_def* %447, %448
  br i1 %cmp792, label %if.then.794, label %if.end.795

if.then.794:                                      ; preds = %while.body
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 4069, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.emit_library_call_value_1, i32 0, i32 0)) #7
  unreachable

if.end.795:                                       ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %449 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call796 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %449)
  br label %if.end.797

if.end.797:                                       ; preds = %while.end, %cond.end.773
  %450 = load %struct.function*, %struct.function** @cfun, align 8
  %expr798 = getelementptr inbounds %struct.function, %struct.function* %450, i32 0, i32 2
  %451 = load %struct.expr_status*, %struct.expr_status** %expr798, align 8
  %x_inhibit_defer_pop799 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %451, i32 0, i32 1
  %452 = load i32, i32* %x_inhibit_defer_pop799, align 4
  %sub800 = sub nsw i32 %452, 1
  store i32 %sub800, i32* %x_inhibit_defer_pop799, align 4
  %453 = load i32, i32* %flags, align 4
  %and801 = and i32 %453, 4096
  %tobool802 = icmp ne i32 %and801, 0
  br i1 %tobool802, label %if.then.803, label %if.end.842

if.then.803:                                      ; preds = %if.end.797
  %454 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %cmp804 = icmp eq %struct.rtx_def* %454, null
  br i1 %cmp804, label %if.then.811, label %lor.lhs.false.806

lor.lhs.false.806:                                ; preds = %if.then.803
  %455 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %456 = bitcast %struct.rtx_def* %455 to i32*
  %bf.load807 = load i32, i32* %456, align 8
  %bf.clear808 = and i32 %bf.load807, 65535
  %cmp809 = icmp eq i32 %bf.clear808, 39
  br i1 %cmp809, label %if.then.811, label %if.else.814

if.then.811:                                      ; preds = %lor.lhs.false.806, %if.then.803
  %call812 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call812, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %457 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %call813 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %457)
  br label %if.end.841

if.else.814:                                      ; preds = %lor.lhs.false.806
  store %struct.rtx_def* null, %struct.rtx_def** %note, align 8
  %458 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %459 = bitcast %struct.rtx_def* %458 to i32*
  %bf.load815 = load i32, i32* %459, align 8
  %bf.lshr816 = lshr i32 %bf.load815, 16
  %bf.clear817 = and i32 %bf.lshr816, 255
  %call818 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear817)
  store %struct.rtx_def* %call818, %struct.rtx_def** %temp, align 8
  store i32 0, i32* %i819, align 4
  br label %for.cond.820

for.cond.820:                                     ; preds = %for.inc.828, %if.else.814
  %460 = load i32, i32* %i819, align 4
  %461 = load i32, i32* %nargs.addr, align 4
  %cmp821 = icmp slt i32 %460, %461
  br i1 %cmp821, label %for.body.823, label %for.end.830

for.body.823:                                     ; preds = %for.cond.820
  %462 = load i32, i32* %i819, align 4
  %idxprom824 = sext i32 %462 to i64
  %463 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx825 = getelementptr inbounds %struct.arg, %struct.arg* %463, i64 %idxprom824
  %value826 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx825, i32 0, i32 0
  %464 = load %struct.rtx_def*, %struct.rtx_def** %value826, align 8
  %465 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call827 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %464, %struct.rtx_def* %465)
  store %struct.rtx_def* %call827, %struct.rtx_def** %note, align 8
  br label %for.inc.828

for.inc.828:                                      ; preds = %for.body.823
  %466 = load i32, i32* %i819, align 4
  %inc829 = add nsw i32 %466, 1
  store i32 %inc829, i32* %i819, align 4
  br label %for.cond.820

for.end.830:                                      ; preds = %for.cond.820
  %467 = load %struct.rtx_def*, %struct.rtx_def** %fun, align 8
  %468 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call831 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %467, %struct.rtx_def* %468)
  store %struct.rtx_def* %call831, %struct.rtx_def** %note, align 8
  %call832 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call832, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %469 = load i32, i32* %flags, align 4
  %and833 = and i32 %469, 512
  %tobool834 = icmp ne i32 %and833, 0
  br i1 %tobool834, label %if.then.835, label %if.end.840

if.then.835:                                      ; preds = %for.end.830
  %call836 = call %struct.rtx_def* @gen_rtx_fmt_0(i32 62, i32 0)
  %call837 = call %struct.rtx_def* @gen_rtx_MEM(i32 51, %struct.rtx_def* %call836)
  %call838 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %call837)
  %470 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call839 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 0, %struct.rtx_def* %call838, %struct.rtx_def* %470)
  store %struct.rtx_def* %call839, %struct.rtx_def** %note, align 8
  br label %if.end.840

if.end.840:                                       ; preds = %if.then.835, %for.end.830
  %471 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %472 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %473 = load %struct.rtx_def*, %struct.rtx_def** %valreg, align 8
  %474 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @emit_libcall_block(%struct.rtx_def* %471, %struct.rtx_def* %472, %struct.rtx_def* %473, %struct.rtx_def* %474)
  %475 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %475, %struct.rtx_def** %valreg, align 8
  br label %if.end.841

if.end.841:                                       ; preds = %if.end.840, %if.then.811
  br label %if.end.842

if.end.842:                                       ; preds = %if.end.841, %if.end.797
  call void @pop_temp_slots()
  %476 = load i32, i32* %outmode.addr, align 4
  %cmp843 = icmp ne i32 %476, 0
  br i1 %cmp843, label %land.lhs.true.845, label %if.end.869

land.lhs.true.845:                                ; preds = %if.end.842
  %477 = load i32, i32* %retval.addr, align 4
  %tobool846 = icmp ne i32 %477, 0
  br i1 %tobool846, label %if.then.847, label %if.end.869

if.then.847:                                      ; preds = %land.lhs.true.845
  %478 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %tobool848 = icmp ne %struct.rtx_def* %478, null
  br i1 %tobool848, label %if.then.849, label %if.else.859

if.then.849:                                      ; preds = %if.then.847
  %479 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %cmp850 = icmp eq %struct.rtx_def* %479, null
  br i1 %cmp850, label %if.then.852, label %if.end.853

if.then.852:                                      ; preds = %if.then.849
  %480 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  store %struct.rtx_def* %480, %struct.rtx_def** %value.addr, align 8
  br label %if.end.853

if.end.853:                                       ; preds = %if.then.852, %if.then.849
  %481 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %482 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %cmp854 = icmp ne %struct.rtx_def* %481, %482
  br i1 %cmp854, label %if.then.856, label %if.end.858

if.then.856:                                      ; preds = %if.end.853
  %483 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %484 = load %struct.rtx_def*, %struct.rtx_def** %mem_value, align 8
  %call857 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %483, %struct.rtx_def* %484)
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.856, %if.end.853
  br label %if.end.868

if.else.859:                                      ; preds = %if.then.847
  %485 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %cmp860 = icmp ne %struct.rtx_def* %485, null
  br i1 %cmp860, label %if.then.862, label %if.else.865

if.then.862:                                      ; preds = %if.else.859
  %486 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %487 = load i32, i32* %outmode.addr, align 4
  %call863 = call %struct.rtx_def* @hard_libcall_value(i32 %487)
  %call864 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %486, %struct.rtx_def* %call863)
  br label %if.end.867

if.else.865:                                      ; preds = %if.else.859
  %488 = load i32, i32* %outmode.addr, align 4
  %call866 = call %struct.rtx_def* @hard_libcall_value(i32 %488)
  store %struct.rtx_def* %call866, %struct.rtx_def** %value.addr, align 8
  br label %if.end.867

if.end.867:                                       ; preds = %if.else.865, %if.then.862
  br label %if.end.868

if.end.868:                                       ; preds = %if.end.867, %if.end.858
  br label %if.end.869

if.end.869:                                       ; preds = %if.end.868, %land.lhs.true.845, %if.end.842
  %489 = load i32, i32* @target_flags, align 4
  %and870 = and i32 %489, 4096
  %tobool871 = icmp ne i32 %and870, 0
  br i1 %tobool871, label %if.then.872, label %if.end.932

if.then.872:                                      ; preds = %if.end.869
  %490 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %tobool873 = icmp ne %struct.rtx_def* %490, null
  br i1 %tobool873, label %if.then.874, label %if.end.899

if.then.874:                                      ; preds = %if.then.872
  %491 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %492 = bitcast %struct.rtx_def* %491 to i32*
  %bf.load876 = load i32, i32* %492, align 8
  %bf.lshr877 = lshr i32 %bf.load876, 16
  %bf.clear878 = and i32 %bf.lshr877, 255
  store i32 %bf.clear878, i32* %save_mode875, align 4
  %493 = load i32, i32* %save_mode875, align 4
  %494 = load i32, i32* %save_mode875, align 4
  %495 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %496 = load i32, i32* %low_to_save, align 4
  %conv880 = sext i32 %496 to i64
  %call881 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %495, i64 %conv880)
  %call882 = call %struct.rtx_def* @memory_address(i32 %494, %struct.rtx_def* %call881)
  %call883 = call %struct.rtx_def* @gen_rtx_MEM(i32 %493, %struct.rtx_def* %call882)
  store %struct.rtx_def* %call883, %struct.rtx_def** %stack_area879, align 8
  %497 = load %struct.rtx_def*, %struct.rtx_def** %stack_area879, align 8
  %498 = load i32, i32* @target_flags, align 4
  %and884 = and i32 %498, 33554432
  %tobool885 = icmp ne i32 %and884, 0
  %cond886 = select i1 %tobool885, i32 64, i32 32
  call void @set_mem_align(%struct.rtx_def* %497, i32 %cond886)
  %499 = load i32, i32* %save_mode875, align 4
  %cmp887 = icmp ne i32 %499, 51
  br i1 %cmp887, label %if.then.889, label %if.else.891

if.then.889:                                      ; preds = %if.then.874
  %500 = load %struct.rtx_def*, %struct.rtx_def** %stack_area879, align 8
  %501 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %call890 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %500, %struct.rtx_def* %501)
  br label %if.end.898

if.else.891:                                      ; preds = %if.then.874
  %502 = load %struct.rtx_def*, %struct.rtx_def** %stack_area879, align 8
  %503 = load %struct.rtx_def*, %struct.rtx_def** %save_area, align 8
  %call892 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %503)
  %504 = load i32, i32* %high_to_save, align 4
  %505 = load i32, i32* %low_to_save, align 4
  %sub893 = sub nsw i32 %504, %505
  %add894 = add nsw i32 %sub893, 1
  %conv895 = sext i32 %add894 to i64
  %call896 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv895)
  %call897 = call %struct.rtx_def* @emit_block_move(%struct.rtx_def* %502, %struct.rtx_def* %call892, %struct.rtx_def* %call896)
  br label %if.end.898

if.end.898:                                       ; preds = %if.else.891, %if.then.889
  br label %if.end.899

if.end.899:                                       ; preds = %if.end.898, %if.then.872
  store i32 0, i32* %count, align 4
  br label %for.cond.900

for.cond.900:                                     ; preds = %for.inc.929, %if.end.899
  %506 = load i32, i32* %count, align 4
  %507 = load i32, i32* %nargs.addr, align 4
  %cmp901 = icmp slt i32 %506, %507
  br i1 %cmp901, label %for.body.903, label %for.end.931

for.body.903:                                     ; preds = %for.cond.900
  %508 = load i32, i32* %count, align 4
  %idxprom904 = sext i32 %508 to i64
  %509 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx905 = getelementptr inbounds %struct.arg, %struct.arg* %509, i64 %idxprom904
  %save_area906 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx905, i32 0, i32 6
  %510 = load %struct.rtx_def*, %struct.rtx_def** %save_area906, align 8
  %tobool907 = icmp ne %struct.rtx_def* %510, null
  br i1 %tobool907, label %if.then.908, label %if.end.928

if.then.908:                                      ; preds = %for.body.903
  %511 = load i32, i32* %count, align 4
  %idxprom910 = sext i32 %511 to i64
  %512 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx911 = getelementptr inbounds %struct.arg, %struct.arg* %512, i64 %idxprom910
  %save_area912 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx911, i32 0, i32 6
  %513 = load %struct.rtx_def*, %struct.rtx_def** %save_area912, align 8
  %514 = bitcast %struct.rtx_def* %513 to i32*
  %bf.load913 = load i32, i32* %514, align 8
  %bf.lshr914 = lshr i32 %bf.load913, 16
  %bf.clear915 = and i32 %bf.lshr914, 255
  store i32 %bf.clear915, i32* %save_mode909, align 4
  %515 = load i32, i32* %save_mode909, align 4
  %516 = load i32, i32* %save_mode909, align 4
  %517 = load %struct.rtx_def*, %struct.rtx_def** %argblock, align 8
  %518 = load i32, i32* %count, align 4
  %idxprom917 = sext i32 %518 to i64
  %519 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx918 = getelementptr inbounds %struct.arg, %struct.arg* %519, i64 %idxprom917
  %offset919 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx918, i32 0, i32 4
  %constant920 = getelementptr inbounds %struct.args_size, %struct.args_size* %offset919, i32 0, i32 0
  %520 = load i64, i64* %constant920, align 8
  %call921 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %517, i64 %520)
  %call922 = call %struct.rtx_def* @memory_address(i32 %516, %struct.rtx_def* %call921)
  %call923 = call %struct.rtx_def* @gen_rtx_MEM(i32 %515, %struct.rtx_def* %call922)
  store %struct.rtx_def* %call923, %struct.rtx_def** %stack_area916, align 8
  %521 = load %struct.rtx_def*, %struct.rtx_def** %stack_area916, align 8
  %522 = load i32, i32* %count, align 4
  %idxprom924 = sext i32 %522 to i64
  %523 = load %struct.arg*, %struct.arg** %argvec, align 8
  %arrayidx925 = getelementptr inbounds %struct.arg, %struct.arg* %523, i64 %idxprom924
  %save_area926 = getelementptr inbounds %struct.arg, %struct.arg* %arrayidx925, i32 0, i32 6
  %524 = load %struct.rtx_def*, %struct.rtx_def** %save_area926, align 8
  %call927 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %521, %struct.rtx_def* %524)
  br label %if.end.928

if.end.928:                                       ; preds = %if.then.908, %for.body.903
  br label %for.inc.929

for.inc.929:                                      ; preds = %if.end.928
  %525 = load i32, i32* %count, align 4
  %inc930 = add nsw i32 %525, 1
  store i32 %inc930, i32* %count, align 4
  br label %for.cond.900

for.end.931:                                      ; preds = %for.cond.900
  %526 = load i32, i32* %initial_highest_arg_in_use, align 4
  store i32 %526, i32* @highest_outgoing_arg_in_use, align 4
  %527 = load i8*, i8** %initial_stack_usage_map, align 8
  store i8* %527, i8** @stack_usage_map, align 8
  br label %if.end.932

if.end.932:                                       ; preds = %for.end.931, %if.end.869
  %528 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  ret %struct.rtx_def* %528
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_library_call_value(%struct.rtx_def* %orgfun, %struct.rtx_def* %value, i32 %fn_type, i32 %outmode, i32 %nargs, ...) #0 {
entry:
  %orgfun.addr = alloca %struct.rtx_def*, align 8
  %value.addr = alloca %struct.rtx_def*, align 8
  %fn_type.addr = alloca i32, align 4
  %outmode.addr = alloca i32, align 4
  %nargs.addr = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  %p = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.rtx_def* %orgfun, %struct.rtx_def** %orgfun.addr, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store i32 %fn_type, i32* %fn_type.addr, align 4
  store i32 %outmode, i32* %outmode.addr, align 4
  store i32 %nargs, i32* %nargs.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orgfun.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %2 = load i32, i32* %fn_type.addr, align 4
  %3 = load i32, i32* %outmode.addr, align 4
  %4 = load i32, i32* %nargs.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %call = call %struct.rtx_def* @emit_library_call_value_1(i32 1, %struct.rtx_def* %0, %struct.rtx_def* %1, i32 %2, i32 %3, i32 %4, %struct.__va_list_tag* %arraydecay2)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  ret %struct.rtx_def* %5
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare void @timevar_push(i32) #1

declare %struct.rtx_def* @expand_inline_function(%union.tree_node*, %union.tree_node*, %struct.rtx_def*, i32, %union.tree_node*, %struct.rtx_def*) #1

declare void @timevar_pop(i32) #1

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @contains_placeholder_p(%union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

declare %struct.rtx_def* @expr_size(%union.tree_node*) #1

declare %struct.rtx_def* @store_expr(%union.tree_node*, %struct.rtx_def*, i32) #1

declare void @locate_and_pad_parm(i32, %union.tree_node*, i32, %union.tree_node*, %struct.args_size*, %struct.args_size*, %struct.args_size*, %struct.args_size*) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare void @function_arg_advance(%struct.ix86_args*, i32, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @calls_function(%union.tree_node* %exp, i32 %which) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %which.addr = alloca i32, align 4
  %val = alloca i32, align 4
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %which, i32* %which.addr, align 4
  store %union.tree_node* null, %union.tree_node** @calls_function_save_exprs, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %1 = load i32, i32* %which.addr, align 4
  %call = call i32 @calls_function_1(%union.tree_node* %0, i32 %1)
  store i32 %call, i32* %val, align 4
  store %union.tree_node* null, %union.tree_node** @calls_function_save_exprs, align 8
  %2 = load i32, i32* %val, align 4
  ret i32 %2
}

declare %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @calls_function_1(%union.tree_node* %exp, i32 %which) #0 {
entry:
  %retval = alloca i32, align 4
  %exp.addr = alloca %union.tree_node*, align 8
  %which.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %class = alloca i32, align 4
  %length = alloca i32, align 4
  %tem = alloca %union.tree_node*, align 8
  %local = alloca %union.tree_node*, align 8
  %subblock = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  store i32 %which, i32* %which.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  store i32 %conv, i32* %class, align 4
  %3 = load i32, i32* %code, align 4
  %call = call i32 @first_rtl_op(i32 %3)
  store i32 %call, i32* %length, align 4
  %4 = load i32, i32* %code, align 4
  %cmp = icmp sge i32 %4, 147
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default [
    i32 53, label %sw.bb
    i32 46, label %sw.bb.64
    i32 118, label %sw.bb.75
    i32 4, label %sw.bb.98
    i32 2, label %sw.bb.127
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load i32, i32* %which.addr, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb
  %7 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp6 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp6, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  %common8 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type10, align 8
  %common11 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp eq i32 %bf.clear14, 23
  br i1 %cmp15, label %land.lhs.true, label %if.else.28

land.lhs.true:                                    ; preds = %if.else
  %11 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp17 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %common20 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %13 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %common22 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 1
  %14 = load %union.tree_node*, %union.tree_node** %type23, align 8
  %type24 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i32 0, i32 6
  %bf.load25 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr = lshr i32 %bf.load25, 17
  %bf.clear26 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear26, 0
  br i1 %tobool, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.28:                                       ; preds = %land.lhs.true, %if.else
  %15 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp29 = bitcast %union.tree_node* %15 to %struct.tree_exp*
  %operands30 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp29, i32 0, i32 2
  %arrayidx31 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands30, i32 0, i64 0
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx31, align 8
  %common32 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load34 = load i32, i32* %code33, align 8
  %bf.clear35 = and i32 %bf.load34, 255
  %cmp36 = icmp eq i32 %bf.clear35, 121
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.61

land.lhs.true.38:                                 ; preds = %if.else.28
  %17 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp39 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands40 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp39, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands40, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx41, align 8
  %exp42 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands43 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands43, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx44, align 8
  %common45 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 2
  %bf.load47 = load i32, i32* %code46, align 8
  %bf.clear48 = and i32 %bf.load47, 255
  %cmp49 = icmp eq i32 %bf.clear48, 30
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.61

land.lhs.true.51:                                 ; preds = %land.lhs.true.38
  %20 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp52 = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands53 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands53, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8
  %exp55 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands56 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp55, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands56, i32 0, i64 0
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx57, align 8
  %call58 = call i32 @special_function_p(%union.tree_node* %22, i32 0)
  %and = and i32 %call58, 8
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.51
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.51, %land.lhs.true.38, %if.else.28
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62
  br label %sw.epilog

sw.bb.64:                                         ; preds = %if.end
  %23 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp65 = bitcast %union.tree_node* %23 to %struct.tree_exp*
  %operands66 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp65, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands66, i32 0, i64 1
  %24 = load %union.tree_node*, %union.tree_node** %arrayidx67, align 8
  store %union.tree_node* %24, %union.tree_node** %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.64
  %25 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %cmp68 = icmp ne %union.tree_node* %25, null
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %list = bitcast %union.tree_node* %26 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %27 = load %union.tree_node*, %union.tree_node** %value, align 8
  %28 = load i32, i32* %which.addr, align 4
  %call70 = call i32 @calls_function_1(%union.tree_node* %27, i32 %28)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.73:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.73
  %29 = load %union.tree_node*, %union.tree_node** %tem, align 8
  %common74 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 0
  %30 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %30, %union.tree_node** %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

sw.bb.75:                                         ; preds = %if.end
  %31 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp76 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands77 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp76, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands77, i32 0, i64 2
  %32 = bitcast %union.tree_node** %arrayidx78 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %cmp79 = icmp ne %struct.rtx_def* %33, null
  br i1 %cmp79, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %sw.bb.75
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %sw.bb.75
  %34 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %35 = load %union.tree_node*, %union.tree_node** @calls_function_save_exprs, align 8
  %call83 = call %union.tree_node* @value_member(%union.tree_node* %34, %union.tree_node* %35)
  %tobool84 = icmp ne %union.tree_node* %call83, null
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.82
  store i32 0, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.end.82
  %36 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %37 = load %union.tree_node*, %union.tree_node** @calls_function_save_exprs, align 8
  %call87 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %36, %union.tree_node* %37)
  store %union.tree_node* %call87, %union.tree_node** @calls_function_save_exprs, align 8
  %38 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp88 = bitcast %union.tree_node* %38 to %struct.tree_exp*
  %operands89 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp88, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands89, i32 0, i64 0
  %39 = load %union.tree_node*, %union.tree_node** %arrayidx90, align 8
  %cmp91 = icmp ne %union.tree_node* %39, null
  br i1 %cmp91, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.86
  %40 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp93 = bitcast %union.tree_node* %40 to %struct.tree_exp*
  %operands94 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp93, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands94, i32 0, i64 0
  %41 = load %union.tree_node*, %union.tree_node** %arrayidx95, align 8
  %42 = load i32, i32* %which.addr, align 4
  %call96 = call i32 @calls_function_1(%union.tree_node* %41, i32 %42)
  %tobool97 = icmp ne i32 %call96, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.86
  %43 = phi i1 [ false, %if.end.86 ], [ %tobool97, %land.rhs ]
  %land.ext = zext i1 %43 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.bb.98:                                         ; preds = %if.end
  %44 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %block = bitcast %union.tree_node* %44 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  %45 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %45, %union.tree_node** %local, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.111, %sw.bb.98
  %46 = load %union.tree_node*, %union.tree_node** %local, align 8
  %tobool100 = icmp ne %union.tree_node* %46, null
  br i1 %tobool100, label %for.body.101, label %for.end.114

for.body.101:                                     ; preds = %for.cond.99
  %47 = load %union.tree_node*, %union.tree_node** %local, align 8
  %decl = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %48 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp102 = icmp ne %union.tree_node* %48, null
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.110

land.lhs.true.104:                                ; preds = %for.body.101
  %49 = load %union.tree_node*, %union.tree_node** %local, align 8
  %decl105 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %initial106 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl105, i32 0, i32 12
  %50 = load %union.tree_node*, %union.tree_node** %initial106, align 8
  %51 = load i32, i32* %which.addr, align 4
  %call107 = call i32 @calls_function_1(%union.tree_node* %50, i32 %51)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.104
  store i32 1, i32* %retval
  br label %return

if.end.110:                                       ; preds = %land.lhs.true.104, %for.body.101
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %52 = load %union.tree_node*, %union.tree_node** %local, align 8
  %common112 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %chain113 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common112, i32 0, i32 0
  %53 = load %union.tree_node*, %union.tree_node** %chain113, align 8
  store %union.tree_node* %53, %union.tree_node** %local, align 8
  br label %for.cond.99

for.end.114:                                      ; preds = %for.cond.99
  %54 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %block115 = bitcast %union.tree_node* %54 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block115, i32 0, i32 3
  %55 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %55, %union.tree_node** %subblock, align 8
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.123, %for.end.114
  %56 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %tobool117 = icmp ne %union.tree_node* %56, null
  br i1 %tobool117, label %for.body.118, label %for.end.126

for.body.118:                                     ; preds = %for.cond.116
  %57 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %58 = load i32, i32* %which.addr, align 4
  %call119 = call i32 @calls_function_1(%union.tree_node* %57, i32 %58)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.body.118
  store i32 1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %for.body.118
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %59 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %common124 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %chain125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 0
  %60 = load %union.tree_node*, %union.tree_node** %chain125, align 8
  store %union.tree_node* %60, %union.tree_node** %subblock, align 8
  br label %for.cond.116

for.end.126:                                      ; preds = %for.cond.116
  store i32 0, i32* %retval
  br label %return

sw.bb.127:                                        ; preds = %if.end
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.138, %sw.bb.127
  %61 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %cmp129 = icmp ne %union.tree_node* %61, null
  br i1 %cmp129, label %for.body.131, label %for.end.141

for.body.131:                                     ; preds = %for.cond.128
  %62 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %list132 = bitcast %union.tree_node* %62 to %struct.tree_list*
  %value133 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list132, i32 0, i32 2
  %63 = load %union.tree_node*, %union.tree_node** %value133, align 8
  %64 = load i32, i32* %which.addr, align 4
  %call134 = call i32 @calls_function_1(%union.tree_node* %63, i32 %64)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %for.body.131
  store i32 1, i32* %retval
  br label %return

if.end.137:                                       ; preds = %for.body.131
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %65 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common139 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %chain140 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common139, i32 0, i32 0
  %66 = load %union.tree_node*, %union.tree_node** %chain140, align 8
  store %union.tree_node* %66, %union.tree_node** %exp.addr, align 8
  br label %for.cond.128

for.end.141:                                      ; preds = %for.cond.128
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.63
  %67 = load i32, i32* %class, align 4
  %cmp142 = icmp eq i32 %67, 60
  br i1 %cmp142, label %if.end.159, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %68 = load i32, i32* %class, align 4
  %cmp144 = icmp eq i32 %68, 49
  br i1 %cmp144, label %if.end.159, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false
  %69 = load i32, i32* %class, align 4
  %cmp147 = icmp eq i32 %69, 50
  br i1 %cmp147, label %if.end.159, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %lor.lhs.false.146
  %70 = load i32, i32* %class, align 4
  %cmp150 = icmp eq i32 %70, 101
  br i1 %cmp150, label %if.end.159, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %lor.lhs.false.149
  %71 = load i32, i32* %class, align 4
  %cmp153 = icmp ne i32 %71, 114
  br i1 %cmp153, label %land.lhs.true.155, label %if.end.159

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %72 = load i32, i32* %class, align 4
  %cmp156 = icmp ne i32 %72, 98
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %land.lhs.true.155
  store i32 0, i32* %retval
  br label %return

if.end.159:                                       ; preds = %land.lhs.true.155, %land.lhs.true.152, %lor.lhs.false.149, %lor.lhs.false.146, %lor.lhs.false, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.179, %if.end.159
  %73 = load i32, i32* %i, align 4
  %74 = load i32, i32* %length, align 4
  %cmp161 = icmp slt i32 %73, %74
  br i1 %cmp161, label %for.body.163, label %for.end.180

for.body.163:                                     ; preds = %for.cond.160
  %75 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %75 to i64
  %76 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp165 = bitcast %union.tree_node* %76 to %struct.tree_exp*
  %operands166 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp165, i32 0, i32 2
  %arrayidx167 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands166, i32 0, i64 %idxprom164
  %77 = load %union.tree_node*, %union.tree_node** %arrayidx167, align 8
  %cmp168 = icmp ne %union.tree_node* %77, null
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.178

land.lhs.true.170:                                ; preds = %for.body.163
  %78 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %78 to i64
  %79 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %exp172 = bitcast %union.tree_node* %79 to %struct.tree_exp*
  %operands173 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp172, i32 0, i32 2
  %arrayidx174 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands173, i32 0, i64 %idxprom171
  %80 = load %union.tree_node*, %union.tree_node** %arrayidx174, align 8
  %81 = load i32, i32* %which.addr, align 4
  %call175 = call i32 @calls_function_1(%union.tree_node* %80, i32 %81)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.end.178

if.then.177:                                      ; preds = %land.lhs.true.170
  store i32 1, i32* %retval
  br label %return

if.end.178:                                       ; preds = %land.lhs.true.170, %for.body.163
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %82 = load i32, i32* %i, align 4
  %inc = add nsw i32 %82, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.160

for.end.180:                                      ; preds = %for.cond.160
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.180, %if.then.177, %if.then.158, %for.end.141, %if.then.136, %for.end.126, %if.then.121, %if.then.109, %land.end, %if.then.85, %if.then.81, %for.end, %if.then.72, %if.then.60, %if.then.27, %if.then.5, %if.then
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare i32 @first_rtl_op(i32) #1

declare %union.tree_node* @value_member(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @round_up(%union.tree_node*, i32) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare void @assemble_external(%union.tree_node*) #1

declare void @push_temp_slots() #1

declare void @pop_temp_slots() #1

declare i32 @rtx_cost(%struct.rtx_def*, i32) #1

declare i32 @preserve_subexpressions_p() #1

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #1

declare i32 @mode_for_size(i32, i32, i32) #1

declare void @set_mem_align(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @assign_stack_temp(i32, i64, i32) #1

declare void @move_by_pieces(%struct.rtx_def*, %struct.rtx_def*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %3, 66
  br i1 %cmp1, label %if.then.2, label %if.end.56

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 15
  %7 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %cmp3 = icmp eq %struct.rtx_def* %5, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  store i32 0, i32* %i, align 4
  br label %if.end.40

if.else:                                          ; preds = %if.then.2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 75
  br i1 %cmp10, label %land.lhs.true, label %if.else.38

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %14 = load %struct.function*, %struct.function** @cfun, align 8
  %internal_arg_pointer17 = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer17, align 8
  %cmp18 = icmp eq %struct.rtx_def* %13, %15
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.38

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 54
  br i1 %cmp28, label %if.then.29, label %if.else.38

if.then.29:                                       ; preds = %land.lhs.true.19
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx37 to i64*
  %23 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %23 to i32
  store i32 %conv, i32* %i, align 4
  br label %if.end.39

if.else.38:                                       ; preds = %land.lhs.true.19, %land.lhs.true, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.29
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %24 = load i32, i32* %k, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load41 = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load41, 16
  %bf.clear42 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear42 to i64
  %arrayidx43 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  %cmp45 = icmp ult i32 %24, %conv44
  br i1 %cmp45, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %k, align 4
  %add = add i32 %28, %29
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %30, i32 0, i32 0
  %31 = load i32, i32* %n_bits, align 4
  %cmp47 = icmp ult i32 %add, %31
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.55

land.lhs.true.49:                                 ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %k, align 4
  %add50 = add i32 %32, %33
  %div = udiv i32 %add50, 64
  %idxprom51 = zext i32 %div to i64
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @stored_args_map, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %34, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom51
  %35 = load i64, i64* %arrayidx52, align 8
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %k, align 4
  %add53 = add i32 %36, %37
  %rem = urem i32 %add53, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %35, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.49
  store i32 1, i32* %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.49, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %38 = load i32, i32* %k, align 4
  %inc = add i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end
  %39 = load i32, i32* %code, align 4
  %idxprom57 = sext i32 %39 to i64
  %arrayidx58 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom57
  %40 = load i8*, i8** %arrayidx58, align 8
  store i8* %40, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.104, %if.end.56
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* %code, align 4
  %idxprom60 = sext i32 %42 to i64
  %arrayidx61 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom60
  %43 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %43 to i32
  %cmp63 = icmp slt i32 %41, %conv62
  br i1 %cmp63, label %for.body.65, label %for.end.106

for.body.65:                                      ; preds = %for.cond.59
  %44 = load i8*, i8** %fmt, align 8
  %45 = load i8, i8* %44, align 1
  %conv66 = sext i8 %45 to i32
  %cmp67 = icmp eq i32 %conv66, 101
  br i1 %cmp67, label %if.then.69, label %if.else.77

if.then.69:                                       ; preds = %for.body.65
  %46 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 %idxprom70
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %call = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %48)
  %tobool74 = icmp ne i32 %call, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.then.69
  store i32 1, i32* %retval
  br label %return

if.end.76:                                        ; preds = %if.then.69
  br label %if.end.103

if.else.77:                                       ; preds = %for.body.65
  %49 = load i8*, i8** %fmt, align 8
  %50 = load i8, i8* %49, align 1
  %conv78 = sext i8 %50 to i32
  %cmp79 = icmp eq i32 %conv78, 69
  br i1 %cmp79, label %if.then.81, label %if.end.102

if.then.81:                                       ; preds = %if.else.77
  store i32 0, i32* %j, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.99, %if.then.81
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %52 to i64
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 %idxprom83
  %rtvec = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtvec_def**
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i32 0, i32 0
  %55 = load i32, i32* %num_elem, align 4
  %cmp86 = icmp slt i32 %51, %55
  br i1 %cmp86, label %for.body.88, label %for.end.101

for.body.88:                                      ; preds = %for.cond.82
  %56 = load i32, i32* %j, align 4
  %idxprom89 = sext i32 %56 to i64
  %57 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 %idxprom90
  %rtvec93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtvec_def**
  %59 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec93, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %59, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom89
  %60 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx94, align 8
  %call95 = call i32 @check_sibcall_argument_overlap_1(%struct.rtx_def* %60)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %for.body.88
  store i32 1, i32* %retval
  br label %return

if.end.98:                                        ; preds = %for.body.88
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %61 = load i32, i32* %j, align 4
  %inc100 = add nsw i32 %61, 1
  store i32 %inc100, i32* %j, align 4
  br label %for.cond.82

for.end.101:                                      ; preds = %for.cond.82
  br label %if.end.102

if.end.102:                                       ; preds = %for.end.101, %if.else.77
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.76
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %62 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %62, 1
  store i32 %inc105, i32* %i, align 4
  %63 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  br label %for.cond.59

for.end.106:                                      ; preds = %for.cond.59
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.106, %if.then.97, %if.then.75, %for.end, %if.then.54, %if.else.38, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

declare void @emit_group_load(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare void @move_block_to_reg(i32, %struct.rtx_def*, i32, i32) #1

declare void @use_group_regs(%struct.rtx_def**, %struct.rtx_def*) #1

declare void @use_regs(%struct.rtx_def**, i32, i32) #1

declare %struct.rtx_def* @gen_call_value_pop(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call_pop(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call_value(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_call(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @adjust_stack(%struct.rtx_def*) #1

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare void @assemble_external_libcall(%struct.rtx_def*) #1

declare void @emit_push_insn(%struct.rtx_def*, i32, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @hard_libcall_value(i32) #1

declare %union.tree_node* @get_identifier(i8*) #1

declare %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) #1

declare void @error(i8*, ...) #1

declare void @free_temp_slots() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
