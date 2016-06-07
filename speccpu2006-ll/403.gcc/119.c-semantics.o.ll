; ModuleID = 'c-semantics.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
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
%struct.machine_function = type opaque
%struct.language_function = type { %struct.stmt_tree_s, %union.tree_node* }
%struct.stmt_tree_s = type { %union.tree_node*, %union.tree_node*, i8*, i32 }
%struct.lang_decl = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }
%struct.nesting = type opaque
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@c_global_trees = external global [32 x %union.tree_node*], align 16
@input_filename = external global i8*, align 8
@current_function_decl = external global %union.tree_node*, align 8
@cfun = external global %struct.function*, align 8
@lineno = external global i32, align 4
@tree_code_length = external global [256 x i32], align 16
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@.str = private unnamed_addr constant [14 x i8] c"c-semantics.c\00", align 1
@__FUNCTION__.genrtl_goto_stmt = private unnamed_addr constant [17 x i8] c"genrtl_goto_stmt\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@lang_expand_decl_stmt = common global void (%union.tree_node*)* null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"break statement not within loop or switch\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"continue statement not within a loop\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"switch statement\00", align 1
@genrtl_case_label.explained = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"destructor needed for `%#D'\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"where case label appears here\00", align 1
@.str.6 = private unnamed_addr constant [88 x i8] c"(enclose actions of previous case statements requiring destructors in their own scope.)\00", align 1
@ridpointers = external global %union.tree_node**, align 8
@.str.7 = private unnamed_addr constant [28 x i8] c"%s qualifier ignored on asm\00", align 1
@lang_expand_stmt = common global void (%union.tree_node*)* null, align 8
@__FUNCTION__.expand_stmt = private unnamed_addr constant [12 x i8] c"expand_stmt\00", align 1

; Function Attrs: nounwind uwtable
define void @begin_stmt_tree(%union.tree_node** %t) #0 {
entry:
  %t.addr = alloca %union.tree_node**, align 8
  store %union.tree_node** %t, %union.tree_node*** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 31), align 8
  %call = call %union.tree_node* (i32, ...) @build_nt(i32 152, %union.tree_node* %0)
  %1 = load %union.tree_node**, %union.tree_node*** %t.addr, align 8
  store %union.tree_node* %call, %union.tree_node** %1, align 8
  %2 = load %union.tree_node**, %union.tree_node*** %t.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %call1 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1, i32 0, i32 0
  store %union.tree_node* %3, %union.tree_node** %x_last_stmt, align 8
  %call2 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_type = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call2, i32 0, i32 1
  store %union.tree_node* null, %union.tree_node** %x_last_expr_type, align 8
  %4 = load i8*, i8** @input_filename, align 8
  %call3 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_filename = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call3, i32 0, i32 2
  store i8* %4, i8** %x_last_expr_filename, align 8
  ret void
}

declare %union.tree_node* @build_nt(i32, ...) #1

declare %struct.stmt_tree_s* @current_stmt_tree() #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @add_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %add = alloca i32, align 4
  %pos = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load i8*, i8** @input_filename, align 8
  %call = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_filename = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call, i32 0, i32 2
  %1 = load i8*, i8** %x_last_expr_filename, align 8
  %cmp = icmp ne i8* %0, %1
  br i1 %cmp, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** @input_filename, align 8
  %call1 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_filename2 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call1, i32 0, i32 2
  %3 = load i8*, i8** %x_last_expr_filename2, align 8
  %call3 = call i32 @strcmp(i8* %2, i8* %3) #5
  %cmp4 = icmp ne i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %add, align 4
  %4 = load i8*, i8** @input_filename, align 8
  %call5 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_expr_filename6 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call5, i32 0, i32 2
  store i8* %4, i8** %x_last_expr_filename6, align 8
  %5 = load i32, i32* %add, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %6 = load i8*, i8** @input_filename, align 8
  %call8 = call %union.tree_node* @get_identifier(i8* %6)
  %call9 = call %union.tree_node* (i32, ...) @build_nt(i32 167, %union.tree_node* %call8)
  store %union.tree_node* %call9, %union.tree_node** %pos, align 8
  %7 = load %union.tree_node*, %union.tree_node** %pos, align 8
  %call10 = call %union.tree_node* @add_stmt(%union.tree_node* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %8 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call12 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call12, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %x_last_stmt, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  store %union.tree_node* %8, %union.tree_node** %chain, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call13 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt14 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call13, i32 0, i32 0
  store %union.tree_node* %10, %union.tree_node** %x_last_stmt14, align 8
  %call15 = call i32 @stmts_are_full_exprs_p()
  %call16 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt17 = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call16, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %x_last_stmt17, align 8
  %common18 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_1, align 8
  %bf.value = and i32 %call15, 1
  %bf.shl = shl i32 %bf.value, 25
  %bf.clear = and i32 %bf.load, -33554433
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %lang_flag_1, align 8
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %tobool19 = icmp ne %union.tree_node* %12, null
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.11
  %13 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %i = bitcast %union.anon* %u1 to i64*
  %14 = load i64, i64* %i, align 8
  %inc = add nsw i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.end.11
  %15 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  ret %union.tree_node* %15
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.tree_node* @get_identifier(i8*) #1

declare i32 @stmts_are_full_exprs_p() #1

; Function Attrs: nounwind uwtable
define void @add_decl_stmt(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %decl_stmt = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 154, %union.tree_node* %0)
  store %union.tree_node* %call, %union.tree_node** %decl_stmt, align 8
  %1 = load %union.tree_node*, %union.tree_node** %decl_stmt, align 8
  %call1 = call %union.tree_node* @add_stmt(%union.tree_node* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_stmt(i32 %code, ...) #0 {
entry:
  %code.addr = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %code, i32* %code.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %code.addr, align 4
  %call = call %union.tree_node* @make_node(i32 %0)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %1 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @tree_code_length, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %length, align 4
  %3 = load i32, i32* @lineno, align 4
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  store i32 %3, i32* %complexity, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %7 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %7
  %8 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %9 = bitcast i8* %8 to %union.tree_node**
  %10 = add i32 %gp_offset, 8
  store i32 %10, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %11 = bitcast i8* %overflow_arg_area to %union.tree_node**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %union.tree_node** [ %9, %vaarg.in_reg ], [ %11, %vaarg.in_mem ]
  %12 = load %union.tree_node*, %union.tree_node** %vaarg.addr
  %13 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %13 to i64
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp4 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 %idxprom3
  store %union.tree_node* %12, %union.tree_node** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay67 = bitcast %struct.__va_list_tag* %arraydecay6 to i8*
  call void @llvm.va_end(i8* %arraydecay67)
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  ret %union.tree_node* %16
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @add_scope_stmt(i32 %begin_p, i32 %partial_p) #0 {
entry:
  %begin_p.addr = alloca i32, align 4
  %partial_p.addr = alloca i32, align 4
  %stack_ptr = alloca %union.tree_node**, align 8
  %ss = alloca %union.tree_node*, align 8
  %top = alloca %union.tree_node*, align 8
  store i32 %begin_p, i32* %begin_p.addr, align 4
  store i32 %partial_p, i32* %partial_p.addr, align 4
  %call = call %union.tree_node** @current_scope_stmt_stack()
  store %union.tree_node** %call, %union.tree_node*** %stack_ptr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %stack_ptr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %top, align 8
  %call1 = call %union.tree_node* (i32, ...) @build_stmt(i32 166, %union.tree_node* null)
  store %union.tree_node* %call1, %union.tree_node** %ss, align 8
  %2 = load i32, i32* %begin_p.addr, align 4
  %3 = load %union.tree_node*, %union.tree_node** %ss, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_0, align 8
  %bf.value = and i32 %2, 1
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear = and i32 %bf.load, -16777217
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %lang_flag_0, align 8
  %4 = load i32, i32* %partial_p.addr, align 4
  %5 = load %union.tree_node*, %union.tree_node** %ss, align 8
  %common2 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %lang_flag_4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %lang_flag_4, align 8
  %bf.value4 = and i32 %4, 1
  %bf.shl5 = shl i32 %bf.value4, 28
  %bf.clear6 = and i32 %bf.load3, -268435457
  %bf.set7 = or i32 %bf.clear6, %bf.shl5
  store i32 %bf.set7, i32* %lang_flag_4, align 8
  %6 = load i32, i32* %begin_p.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %ss, align 8
  %8 = load %union.tree_node*, %union.tree_node** %top, align 8
  %call8 = call %union.tree_node* @tree_cons(%union.tree_node* %7, %union.tree_node* null, %union.tree_node* %8)
  store %union.tree_node* %call8, %union.tree_node** %top, align 8
  %9 = load %union.tree_node*, %union.tree_node** %top, align 8
  %10 = load %union.tree_node**, %union.tree_node*** %stack_ptr, align 8
  store %union.tree_node* %9, %union.tree_node** %10, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %union.tree_node*, %union.tree_node** %ss, align 8
  %12 = load %union.tree_node*, %union.tree_node** %top, align 8
  %list = bitcast %union.tree_node* %12 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  store %union.tree_node* %11, %union.tree_node** %value, align 8
  %13 = load %union.tree_node*, %union.tree_node** %top, align 8
  %common9 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %15 = load %union.tree_node**, %union.tree_node*** %stack_ptr, align 8
  store %union.tree_node* %14, %union.tree_node** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %ss, align 8
  %call10 = call %union.tree_node* @add_stmt(%union.tree_node* %16)
  %17 = load %union.tree_node*, %union.tree_node** %top, align 8
  ret %union.tree_node* %17
}

declare %union.tree_node** @current_scope_stmt_stack() #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @finish_stmt_tree(%union.tree_node** %t) #0 {
entry:
  %t.addr = alloca %union.tree_node**, align 8
  %stmt = alloca %union.tree_node*, align 8
  store %union.tree_node** %t, %union.tree_node*** %t.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %t.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %2, %union.tree_node** %stmt, align 8
  %3 = load %union.tree_node*, %union.tree_node** %stmt, align 8
  %4 = load %union.tree_node**, %union.tree_node*** %t.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %4, align 8
  %call = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %x_last_stmt, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %tobool = icmp ne %struct.function* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %stmt, align 8
  %tobool1 = icmp ne %union.tree_node* %6, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* @lineno, align 4
  %8 = load %union.tree_node*, %union.tree_node** %stmt, align 8
  %exp = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  store i32 %7, i32* %complexity, align 4
  %9 = load %union.tree_node*, %union.tree_node** %stmt, align 8
  %common2 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %lang_flag_2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_2, align 8
  %bf.clear = and i32 %bf.load, -67108865
  %bf.set = or i32 %bf.clear, 67108864
  store i32 %bf.set, i32* %lang_flag_2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define %union.tree_node* @expand_cond(%union.tree_node* %t) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  call void @expand_stmt(%union.tree_node* %3)
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %list1 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list1, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %5, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %7
}

; Function Attrs: nounwind uwtable
define void @expand_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %saved_stmts_are_full_exprs_p = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp ne %union.tree_node* %1, %2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call = call i32 @stmts_are_full_exprs_p()
  store i32 %call, i32* %saved_stmts_are_full_exprs_p, align 4
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @prep_stmt(%union.tree_node* %4)
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 167, label %sw.bb
    i32 159, label %sw.bb.1
    i32 152, label %sw.bb.2
    i32 154, label %sw.bb.25
    i32 156, label %sw.bb.26
    i32 157, label %sw.bb.27
    i32 158, label %sw.bb.28
    i32 155, label %sw.bb.29
    i32 153, label %sw.bb.30
    i32 160, label %sw.bb.31
    i32 161, label %sw.bb.32
    i32 162, label %sw.bb.33
    i32 168, label %sw.bb.34
    i32 164, label %sw.bb.35
    i32 163, label %sw.bb.39
    i32 165, label %sw.bb.43
    i32 166, label %sw.bb.63
    i32 171, label %sw.bb.64
  ]

sw.bb:                                            ; preds = %while.body
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %identifier = bitcast %union.tree_node* %7 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %8 = load i8*, i8** %str, align 8
  store i8* %8, i8** @input_filename, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_return_stmt(%union.tree_node* %9)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp3 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 0
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common6 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load7 = load i32, i32* %addressable_flag, align 8
  %bf.lshr = lshr i32 %bf.load7, 10
  %bf.clear8 = and i32 %bf.lshr, 1
  %13 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common9 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %cmp10 = icmp eq %union.tree_node* %14, null
  br i1 %cmp10, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %sw.bb.2
  %15 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common11 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %chain12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %chain12, align 8
  %common13 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load15 = load i32, i32* %code14, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 166
  br i1 %cmp17, label %land.rhs.18, label %land.end.24

land.rhs.18:                                      ; preds = %lor.rhs
  %17 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common19 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %chain20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 0
  %18 = load %union.tree_node*, %union.tree_node** %chain20, align 8
  %common21 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 0
  %19 = load %union.tree_node*, %union.tree_node** %chain22, align 8
  %cmp23 = icmp eq %union.tree_node* %19, null
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.18, %lor.rhs
  %20 = phi i1 [ false, %lor.rhs ], [ %cmp23, %land.rhs.18 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.24, %sw.bb.2
  %21 = phi i1 [ true, %sw.bb.2 ], [ %20, %land.end.24 ]
  %lor.ext = zext i1 %21 to i32
  call void @genrtl_expr_stmt_value(%union.tree_node* %11, i32 %bf.clear8, i32 %lor.ext)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %while.body
  %22 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_decl_stmt(%union.tree_node* %22)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %while.body
  %23 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_for_stmt(%union.tree_node* %23)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %while.body
  %24 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_while_stmt(%union.tree_node* %24)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.body
  %25 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_do_stmt(%union.tree_node* %25)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %while.body
  %26 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_if_stmt(%union.tree_node* %26)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %while.body
  %27 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_compound_stmt(%union.tree_node* %27)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %while.body
  call void @genrtl_break_stmt()
  br label %sw.epilog

sw.bb.32:                                         ; preds = %while.body
  call void @genrtl_continue_stmt()
  br label %sw.epilog

sw.bb.33:                                         ; preds = %while.body
  %28 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_switch_stmt(%union.tree_node* %28)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %while.body
  %29 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_case_label(%union.tree_node* %29)
  br label %sw.epilog

sw.bb.35:                                         ; preds = %while.body
  %30 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp36 = bitcast %union.tree_node* %30 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 0
  %31 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  call void @expand_label(%union.tree_node* %31)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %while.body
  %32 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp40 = bitcast %union.tree_node* %32 to %struct.tree_exp*
  %operands41 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp40, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands41, i32 0, i64 0
  %33 = load %union.tree_node*, %union.tree_node** %arrayidx42, align 8
  call void @genrtl_goto_stmt(%union.tree_node* %33)
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %34 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp44 = bitcast %union.tree_node* %34 to %struct.tree_exp*
  %operands45 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp44, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands45, i32 0, i64 0
  %35 = load %union.tree_node*, %union.tree_node** %arrayidx46, align 8
  %36 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp47 = bitcast %union.tree_node* %36 to %struct.tree_exp*
  %operands48 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp47, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands48, i32 0, i64 1
  %37 = load %union.tree_node*, %union.tree_node** %arrayidx49, align 8
  %38 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp50 = bitcast %union.tree_node* %38 to %struct.tree_exp*
  %operands51 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp50, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands51, i32 0, i64 2
  %39 = load %union.tree_node*, %union.tree_node** %arrayidx52, align 8
  %40 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp53 = bitcast %union.tree_node* %40 to %struct.tree_exp*
  %operands54 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp53, i32 0, i32 2
  %arrayidx55 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands54, i32 0, i64 3
  %41 = load %union.tree_node*, %union.tree_node** %arrayidx55, align 8
  %42 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp56 = bitcast %union.tree_node* %42 to %struct.tree_exp*
  %operands57 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp56, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands57, i32 0, i64 4
  %43 = load %union.tree_node*, %union.tree_node** %arrayidx58, align 8
  %44 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common59 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load60 = load i32, i32* %lang_flag_0, align 8
  %bf.lshr61 = lshr i32 %bf.load60, 24
  %bf.clear62 = and i32 %bf.lshr61, 1
  call void @genrtl_asm_stmt(%union.tree_node* %35, %union.tree_node* %37, %union.tree_node* %39, %union.tree_node* %41, %union.tree_node* %43, i32 %bf.clear62)
  br label %sw.epilog

sw.bb.63:                                         ; preds = %while.body
  %45 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_scope_stmt(%union.tree_node* %45)
  br label %sw.epilog

sw.bb.64:                                         ; preds = %while.body
  %46 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @genrtl_decl_cleanup(%union.tree_node* %46)
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %47 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_expand_stmt, align 8
  %tobool65 = icmp ne void (%union.tree_node*)* %47, null
  br i1 %tobool65, label %if.then, label %if.else

if.then:                                          ; preds = %sw.default
  %48 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_expand_stmt, align 8
  %49 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void %48(%union.tree_node* %49)
  br label %if.end

if.else:                                          ; preds = %sw.default
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 858, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_stmt, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.64, %sw.bb.63, %sw.bb.43, %sw.bb.39, %sw.bb.35, %sw.bb.34, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %lor.end, %sw.bb.1, %sw.bb
  %50 = load i32, i32* %saved_stmts_are_full_exprs_p, align 4
  %call66 = call %struct.stmt_tree_s* @current_stmt_tree()
  %stmts_are_full_exprs_p = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call66, i32 0, i32 3
  store i32 %50, i32* %stmts_are_full_exprs_p, align 4
  %51 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common67 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %chain68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 0
  %52 = load %union.tree_node*, %union.tree_node** %chain68, align 8
  store %union.tree_node* %52, %union.tree_node** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @make_rtl_for_local_static(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %asmspec = alloca i8*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i8* null, i8** %asmspec, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %asm_written_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 14
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %3 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %3(%union.tree_node* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name3, align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 8
  %8 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp5 = icmp ne %union.tree_node* %6, %8
  br i1 %cmp5, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %cond.end
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp7 = icmp ne %struct.rtx_def* %10, null
  br i1 %cmp7, label %if.end.17, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl9 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %assembler_name10 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl9, i32 0, i32 14
  %12 = load %union.tree_node*, %union.tree_node** %assembler_name10, align 8
  %cmp11 = icmp ne %union.tree_node* %12, null
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %if.then.8
  br label %cond.end.14

cond.false.13:                                    ; preds = %if.then.8
  %13 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %13(%union.tree_node* %14)
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.13, %cond.true.12
  %15 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl15 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %assembler_name16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 14
  %16 = load %union.tree_node*, %union.tree_node** %assembler_name16, align 8
  %identifier = bitcast %union.tree_node* %16 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %17 = load i8*, i8** %str, align 8
  store i8* %17, i8** %asmspec, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %cond.end.14, %land.lhs.true, %cond.end
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %19 = load i8*, i8** %asmspec, align 8
  call void @rest_of_decl_compilation(%union.tree_node* %18, i8* %19, i32 0, i32 0)
  br label %return

return:                                           ; preds = %if.end.17, %if.then
  ret void
}

declare void @rest_of_decl_compilation(%union.tree_node*, i8*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @emit_local_var(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp = icmp ne %struct.rtx_def* %1, null
  br i1 %cmp, label %if.end.8, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %lang_flag_4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 5
  %3 = bitcast i48* %lang_flag_4 to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.lshr = lshr i64 %bf.load, 41
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp5 = icmp ne %union.tree_node* %6, null
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.3
  br label %cond.end

cond.false:                                       ; preds = %if.then.3
  %7 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %7(%union.tree_node* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %9 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %assembler_name7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 14
  %10 = load %union.tree_node*, %union.tree_node** %assembler_name7, align 8
  %identifier = bitcast %union.tree_node* %10 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %11 = load i8*, i8** %str, align 8
  call void @rest_of_decl_compilation(%union.tree_node* %4, i8* %11, i32 0, i32 0)
  br label %if.end

if.else:                                          ; preds = %if.then
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @expand_decl(%union.tree_node* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %call = call i32 @stmts_are_full_exprs_p()
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  call void @expand_start_target_temps()
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.end.8
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void @expand_decl_init(%union.tree_node* %13)
  %call12 = call i32 @stmts_are_full_exprs_p()
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  call void @expand_end_target_temps()
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  ret void
}

declare void @expand_decl(%union.tree_node*) #1

declare void @expand_start_target_temps() #1

declare void @expand_decl_init(%union.tree_node*) #1

declare void @expand_end_target_temps() #1

; Function Attrs: nounwind uwtable
define void @genrtl_do_pushlevel() #0 {
entry:
  %0 = load i8*, i8** @input_filename, align 8
  %1 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %0, i32 %1)
  call void @clear_last_expr()
  ret void
}

declare %struct.rtx_def* @emit_line_note(i8*, i32) #1

declare void @clear_last_expr() #1

; Function Attrs: nounwind uwtable
define void @genrtl_goto_stmt(%union.tree_node* %destination) #0 {
entry:
  %destination.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %destination, %union.tree_node** %destination.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 304, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.genrtl_goto_stmt, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 31
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end
  %2 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load8 = load i32, i32* %used_flag, align 8
  %bf.clear9 = and i32 %bf.load8, -65537
  %bf.set = or i32 %bf.clear9, 65536
  store i32 %bf.set, i32* %used_flag, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %3 = load i8*, i8** @input_filename, align 8
  %4 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %3, i32 %4)
  %5 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  %common11 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %code12, align 8
  %bf.clear14 = and i32 %bf.load13, 255
  %cmp15 = icmp eq i32 %bf.clear14, 31
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.10
  %6 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  %call17 = call %struct.rtx_def* @label_rtx(%union.tree_node* %6)
  %7 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  call void @expand_goto(%union.tree_node* %7)
  br label %if.end.18

if.else:                                          ; preds = %if.end.10
  %8 = load %union.tree_node*, %union.tree_node** %destination.addr, align 8
  call void @expand_computed_goto(%union.tree_node* %8)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.16
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

declare %struct.rtx_def* @label_rtx(%union.tree_node*) #1

declare void @expand_goto(%union.tree_node*) #1

declare void @expand_computed_goto(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @genrtl_expr_stmt(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  call void @genrtl_expr_stmt_value(%union.tree_node* %0, i32 -1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @genrtl_expr_stmt_value(%union.tree_node* %expr, i32 %want_value, i32 %maybe_last) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  %want_value.addr = alloca i32, align 4
  %maybe_last.addr = alloca i32, align 4
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  store i32 %want_value, i32* %want_value.addr, align 4
  store i32 %maybe_last, i32* %maybe_last.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @input_filename, align 8
  %2 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %1, i32 %2)
  %call1 = call i32 @stmts_are_full_exprs_p()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void @expand_start_target_temps()
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %3 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp3 = icmp ne %union.tree_node* %3, %4
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %6 = load i32, i32* %want_value.addr, align 4
  %7 = load i32, i32* %maybe_last.addr, align 4
  call void @expand_expr_stmt_value(%union.tree_node* %5, i32 %6, i32 %7)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %call6 = call i32 @stmts_are_full_exprs_p()
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  call void @expand_end_target_temps()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %entry
  ret void
}

declare void @expand_expr_stmt_value(%union.tree_node*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @genrtl_decl_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load i8*, i8** @input_filename, align 8
  %1 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %0, i32 %1)
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %3, %union.tree_node** %decl, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %land.lhs.true, label %if.else.15

land.lhs.true:                                    ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common1 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load2, 18
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %if.else.15, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl5 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 5
  %7 = bitcast i48* %external_flag to i64*
  %bf.load6 = load i64, i64* %7, align 8
  %bf.lshr7 = lshr i64 %bf.load6, 8
  %bf.clear8 = and i64 %bf.lshr7, 1
  %bf.cast = trunc i64 %bf.clear8 to i32
  %tobool9 = icmp ne i32 %bf.cast, 0
  br i1 %tobool9, label %if.else.15, label %if.then

if.then:                                          ; preds = %land.lhs.true.4
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common10 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call11 = call i32 @anon_aggr_type_p(%union.tree_node* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.else, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @emit_local_var(%union.tree_node* %10)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl14 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 10
  %13 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  call void @expand_anon_union_decl(%union.tree_node* %11, %union.tree_node* null, %union.tree_node* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %if.end.48

if.else.15:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %14 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common16 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 2
  %bf.load18 = load i32, i32* %code17, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %cmp20 = icmp eq i32 %bf.clear19, 34
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.29

land.lhs.true.21:                                 ; preds = %if.else.15
  %15 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common22 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %static_flag23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %static_flag23, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 18
  %bf.clear26 = and i32 %bf.lshr25, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.21
  %16 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_rtl_for_local_static(%union.tree_node* %16)
  br label %if.end.47

if.else.29:                                       ; preds = %land.lhs.true.21, %if.else.15
  %17 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common30 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %code31, align 8
  %bf.clear33 = and i32 %bf.load32, 255
  %cmp34 = icmp eq i32 %bf.clear33, 31
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.42

land.lhs.true.35:                                 ; preds = %if.else.29
  %18 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common36 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load37 = load i32, i32* %lang_flag_1, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 25
  %bf.clear39 = and i32 %bf.lshr38, 1
  %tobool40 = icmp ne i32 %bf.clear39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.35
  %19 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @declare_nonlocal_label(%union.tree_node* %19)
  br label %if.end.46

if.else.42:                                       ; preds = %land.lhs.true.35, %if.else.29
  %20 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_expand_decl_stmt, align 8
  %tobool43 = icmp ne void (%union.tree_node*)* %20, null
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.else.42
  %21 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_expand_decl_stmt, align 8
  %22 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void %21(%union.tree_node* %22)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.else.42
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.28
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  ret void
}

declare i32 @anon_aggr_type_p(%union.tree_node*) #1

declare void @expand_anon_union_decl(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare void @declare_nonlocal_label(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @genrtl_if_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %cond = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  call void @genrtl_do_pushlevel()
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call = call %union.tree_node* @expand_cond(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %cond, align 8
  %2 = load i8*, i8** @input_filename, align 8
  %3 = load i32, i32* @lineno, align 4
  %call1 = call %struct.rtx_def* @emit_line_note(i8* %2, i32 %3)
  %4 = load %union.tree_node*, %union.tree_node** %cond, align 8
  call void @expand_start_cond(%union.tree_node* %4, i32 0)
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp2 = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 1
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  %tobool = icmp ne %union.tree_node* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp5 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  call void @expand_stmt(%union.tree_node* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp8 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands9 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands9, i32 0, i64 2
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8
  %tobool11 = icmp ne %union.tree_node* %10, null
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  call void @expand_start_else()
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp13 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands14 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands14, i32 0, i64 2
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx15, align 8
  call void @expand_stmt(%union.tree_node* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  call void @expand_end_cond()
  ret void
}

declare void @expand_start_cond(%union.tree_node*, i32) #1

declare void @expand_start_else() #1

declare void @expand_end_cond() #1

; Function Attrs: nounwind uwtable
define void @genrtl_while_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %cond = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  call void @emit_nop()
  %0 = load i8*, i8** @input_filename, align 8
  %1 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %0, i32 %1)
  %call1 = call %struct.nesting* @expand_start_loop(i32 1)
  call void @genrtl_do_pushlevel()
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call2 = call %union.tree_node* @expand_cond(%union.tree_node* %3)
  store %union.tree_node* %call2, %union.tree_node** %cond, align 8
  %4 = load i8*, i8** @input_filename, align 8
  %5 = load i32, i32* @lineno, align 4
  %call3 = call %struct.rtx_def* @emit_line_note(i8* %4, i32 %5)
  %6 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %call4 = call i32 @expand_exit_loop_top_cond(%struct.nesting* null, %union.tree_node* %6)
  call void @genrtl_do_pushlevel()
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp5 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 1
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  call void @expand_stmt(%union.tree_node* %8)
  call void @expand_end_loop()
  ret void
}

declare void @emit_nop() #1

declare %struct.nesting* @expand_start_loop(i32) #1

declare i32 @expand_exit_loop_top_cond(%struct.nesting*, %union.tree_node*) #1

declare void @expand_end_loop() #1

; Function Attrs: nounwind uwtable
define void @genrtl_do_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %cond = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %cond, align 8
  %2 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %call = call i32 @integer_zerop(%union.tree_node* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct.nesting* @expand_start_null_loop()
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp2 = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  call void @expand_stmt(%union.tree_node* %4)
  call void @expand_end_null_loop()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @emit_nop()
  %5 = load i8*, i8** @input_filename, align 8
  %6 = load i32, i32* @lineno, align 4
  %call5 = call %struct.rtx_def* @emit_line_note(i8* %5, i32 %6)
  %call6 = call %struct.nesting* @expand_start_loop_continue_elsewhere(i32 1)
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp7 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands8 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands8, i32 0, i64 1
  %8 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8
  call void @expand_stmt(%union.tree_node* %8)
  call void @expand_loop_continue_here()
  %9 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %call10 = call %union.tree_node* @expand_cond(%union.tree_node* %9)
  store %union.tree_node* %call10, %union.tree_node** %cond, align 8
  %10 = load i8*, i8** @input_filename, align 8
  %11 = load i32, i32* @lineno, align 4
  %call11 = call %struct.rtx_def* @emit_line_note(i8* %10, i32 %11)
  %12 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %call12 = call i32 @expand_exit_loop_if_false(%struct.nesting* null, %union.tree_node* %12)
  call void @expand_end_loop()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @integer_zerop(%union.tree_node*) #1

declare %struct.nesting* @expand_start_null_loop() #1

declare void @expand_end_null_loop() #1

declare %struct.nesting* @expand_start_loop_continue_elsewhere(i32) #1

declare void @expand_loop_continue_here() #1

declare i32 @expand_exit_loop_if_false(%struct.nesting*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_return_stmt(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 159, %union.tree_node* %0)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define void @genrtl_return_stmt(%union.tree_node* %stmt) #0 {
entry:
  %stmt.addr = alloca %union.tree_node*, align 8
  %expr = alloca %union.tree_node*, align 8
  store %union.tree_node* %stmt, %union.tree_node** %stmt.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %expr, align 8
  %2 = load i8*, i8** @input_filename, align 8
  %3 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %2, i32 %3)
  %4 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @expand_null_return()
  br label %if.end

if.else:                                          ; preds = %entry
  call void @expand_start_target_temps()
  %5 = load %union.tree_node*, %union.tree_node** %expr, align 8
  call void @expand_return(%union.tree_node* %5)
  call void @expand_end_target_temps()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare void @expand_null_return() #1

declare void @expand_return(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @genrtl_for_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %cond = alloca %union.tree_node*, align 8
  %saved_filename = alloca i8*, align 8
  %saved_lineno = alloca i32, align 4
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_0, align 8
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @genrtl_do_pushlevel()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  call void @expand_stmt(%union.tree_node* %2)
  call void @emit_nop()
  %3 = load i8*, i8** @input_filename, align 8
  %4 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %3, i32 %4)
  %call1 = call %struct.nesting* @expand_start_loop_continue_elsewhere(i32 1)
  call void @genrtl_do_pushlevel()
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp2 = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 1
  %6 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  %call5 = call %union.tree_node* @expand_cond(%union.tree_node* %6)
  store %union.tree_node* %call5, %union.tree_node** %cond, align 8
  %7 = load i8*, i8** @input_filename, align 8
  store i8* %7, i8** %saved_filename, align 8
  %8 = load i32, i32* @lineno, align 4
  store i32 %8, i32* %saved_lineno, align 4
  %9 = load i8*, i8** @input_filename, align 8
  %10 = load i32, i32* @lineno, align 4
  %call6 = call %struct.rtx_def* @emit_line_note(i8* %9, i32 %10)
  %11 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %tobool7 = icmp ne %union.tree_node* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %call9 = call i32 @expand_exit_loop_top_cond(%struct.nesting* null, %union.tree_node* %12)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  call void @genrtl_do_pushlevel()
  %13 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp11 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 3
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  call void @expand_stmt(%union.tree_node* %14)
  %15 = load i8*, i8** %saved_filename, align 8
  store i8* %15, i8** @input_filename, align 8
  %16 = load i32, i32* %saved_lineno, align 4
  store i32 %16, i32* @lineno, align 4
  %17 = load i8*, i8** @input_filename, align 8
  %18 = load i32, i32* @lineno, align 4
  %call14 = call %struct.rtx_def* @emit_line_note(i8* %17, i32 %18)
  call void @expand_loop_continue_here()
  %19 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp15 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands16 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp15, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands16, i32 0, i64 2
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx17, align 8
  %tobool18 = icmp ne %union.tree_node* %20, null
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.end.10
  %21 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp20 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands21 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands21, i32 0, i64 2
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx22, align 8
  call void @genrtl_expr_stmt(%union.tree_node* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.19, %if.end.10
  call void @expand_end_loop()
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_break_stmt() #0 {
entry:
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 160)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define void @genrtl_break_stmt() #0 {
entry:
  %0 = load i8*, i8** @input_filename, align 8
  %1 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %0, i32 %1)
  %call1 = call i32 @expand_exit_something()
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @expand_exit_something() #1

declare void @error(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_continue_stmt() #0 {
entry:
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 161)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define void @genrtl_continue_stmt() #0 {
entry:
  %0 = load i8*, i8** @input_filename, align 8
  %1 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %0, i32 %1)
  %call1 = call i32 @expand_continue_loop(%struct.nesting* null)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void (i8*, ...) @error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @expand_continue_loop(%struct.nesting*) #1

; Function Attrs: nounwind uwtable
define void @genrtl_scope_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %block = alloca %union.tree_node*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %fn = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %block, align 8
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %lang_flag_3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_3, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.else.23, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %lang_flag_0, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 24
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp7 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands8 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands8, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8
  %cmp = icmp eq %union.tree_node* %5, null
  %conv = zext i1 %cmp to i32
  %mul = mul nsw i32 2, %conv
  %6 = load %union.tree_node*, %union.tree_node** %block, align 8
  call void @expand_start_bindings_and_block(i32 %mul, %union.tree_node* %6)
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common10 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %lang_flag_011 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %lang_flag_011, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 24
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %if.end, label %if.then.16

if.then.16:                                       ; preds = %if.else
  %8 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp17 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %cmp20 = icmp eq %union.tree_node* %9, null
  %lnot = xor i1 %cmp20, true
  %lnot.ext = zext i1 %lnot to i32
  call void @expand_end_bindings(%union.tree_node* null, i32 %lnot.ext, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.6
  br label %if.end.38

if.else.23:                                       ; preds = %entry
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp24 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands25 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp24, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands25, i32 0, i64 0
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx26, align 8
  %cmp27 = icmp eq %union.tree_node* %11, null
  br i1 %cmp27, label %if.end.37, label %if.then.29

if.then.29:                                       ; preds = %if.else.23
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common30 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %lang_flag_031 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %lang_flag_031, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 24
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  %cond = select i1 %tobool35, i32 -98, i32 -97
  %call = call %struct.rtx_def* @emit_note(i8* null, i32 %cond)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %13 = load %union.tree_node*, %union.tree_node** %block, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx36 to %union.tree_node**
  store %union.tree_node* %13, %union.tree_node** %rttree, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.29, %if.else.23
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.22
  %15 = load %union.tree_node*, %union.tree_node** %block, align 8
  %tobool39 = icmp ne %union.tree_node* %15, null
  br i1 %tobool39, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %if.end.38
  %16 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common40 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %lang_flag_041 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %lang_flag_041, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 24
  %bf.clear44 = and i32 %bf.lshr43, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %if.end.72, label %if.then.46

if.then.46:                                       ; preds = %land.lhs.true
  %17 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block47 = bitcast %union.tree_node* %17 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block47, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %18, %union.tree_node** %fn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.46
  %19 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool48 = icmp ne %union.tree_node* %19, null
  br i1 %tobool48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common49 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 2
  %bf.load50 = load i32, i32* %code, align 8
  %bf.clear51 = and i32 %bf.load50, 255
  %cmp52 = icmp eq i32 %bf.clear51, 30
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.70

land.lhs.true.54:                                 ; preds = %for.body
  %21 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 9
  %22 = load %union.tree_node*, %union.tree_node** %context, align 8
  %23 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp55 = icmp eq %union.tree_node* %22, %23
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.70

land.lhs.true.57:                                 ; preds = %land.lhs.true.54
  %24 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common58 = bitcast %union.tree_node* %24 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common58, i32 0, i32 2
  %bf.load59 = load i32, i32* %asm_written_flag, align 8
  %bf.lshr60 = lshr i32 %bf.load59, 14
  %bf.clear61 = and i32 %bf.lshr60, 1
  %tobool62 = icmp ne i32 %bf.clear61, 0
  br i1 %tobool62, label %if.end.70, label %land.lhs.true.63

land.lhs.true.63:                                 ; preds = %land.lhs.true.57
  %25 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common64 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load65 = load i32, i32* %addressable_flag, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 10
  %bf.clear67 = and i32 %bf.lshr66, 1
  %tobool68 = icmp ne i32 %bf.clear67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.63
  call void @push_function_context()
  %26 = load %union.tree_node*, %union.tree_node** %fn, align 8
  call void @output_inline_function(%union.tree_node* %26)
  call void @pop_function_context()
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.63, %land.lhs.true.57, %land.lhs.true.54, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.70
  %27 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common71 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 0
  %28 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %28, %union.tree_node** %fn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %land.lhs.true, %if.end.38
  ret void
}

declare void @expand_start_bindings_and_block(i32, %union.tree_node*) #1

declare void @expand_end_bindings(%union.tree_node*, i32, i32) #1

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare void @push_function_context() #1

declare void @output_inline_function(%union.tree_node*) #1

declare void @pop_function_context() #1

; Function Attrs: nounwind uwtable
define void @genrtl_switch_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %cond = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  call void @genrtl_do_pushlevel()
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %call = call %union.tree_node* @expand_cond(%union.tree_node* %1)
  store %union.tree_node* %call, %union.tree_node** %cond, align 8
  %2 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([32 x %union.tree_node*], [32 x %union.tree_node*]* @c_global_trees, i32 0, i64 18), align 8
  store %union.tree_node* %4, %union.tree_node** %cond, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** @input_filename, align 8
  %6 = load i32, i32* @lineno, align 4
  %call1 = call %struct.rtx_def* @emit_line_note(i8* %5, i32 %6)
  %7 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %8 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @expand_start_case(i32 1, %union.tree_node* %7, %union.tree_node* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp2 = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 1
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  call void @expand_stmt(%union.tree_node* %11)
  %12 = load %union.tree_node*, %union.tree_node** %cond, align 8
  %13 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp5 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands6 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp5, i32 0, i32 2
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands6, i32 0, i64 2
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  call void @expand_end_case_type(%union.tree_node* %12, %union.tree_node* %14)
  ret void
}

declare void @expand_start_case(i32, %union.tree_node*, %union.tree_node*, i8*) #1

declare void @expand_end_case_type(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @build_case_label(%union.tree_node* %low_value, %union.tree_node* %high_value, %union.tree_node* %label_decl) #0 {
entry:
  %low_value.addr = alloca %union.tree_node*, align 8
  %high_value.addr = alloca %union.tree_node*, align 8
  %label_decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %low_value, %union.tree_node** %low_value.addr, align 8
  store %union.tree_node* %high_value, %union.tree_node** %high_value.addr, align 8
  store %union.tree_node* %label_decl, %union.tree_node** %label_decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %low_value.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %high_value.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %label_decl.addr, align 8
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 168, %union.tree_node* %0, %union.tree_node* %1, %union.tree_node* %2)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define void @genrtl_case_label(%union.tree_node* %case_label) #0 {
entry:
  %case_label.addr = alloca %union.tree_node*, align 8
  %duplicate = alloca %union.tree_node*, align 8
  %cleanup = alloca %union.tree_node*, align 8
  store %union.tree_node* %case_label, %union.tree_node** %case_label.addr, align 8
  %call = call %union.tree_node* @last_cleanup_this_contour()
  store %union.tree_node* %call, %union.tree_node** %cleanup, align 8
  %0 = load %union.tree_node*, %union.tree_node** %cleanup, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %cleanup, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0))
  %3 = load i32, i32* @genrtl_case_label.explained, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* @genrtl_case_label.explained, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %4 = load %union.tree_node*, %union.tree_node** %case_label.addr, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %6 = load %union.tree_node*, %union.tree_node** %case_label.addr, align 8
  %exp4 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands5 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp4, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands5, i32 0, i64 1
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8
  %8 = load %union.tree_node*, %union.tree_node** %case_label.addr, align 8
  %exp7 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands8 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands8, i32 0, i64 2
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8
  %call10 = call i32 @add_case_node(%union.tree_node* %5, %union.tree_node* %7, %union.tree_node* %9, %union.tree_node** %duplicate)
  ret void
}

declare %union.tree_node* @last_cleanup_this_contour() #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

declare void @warning(i8*, ...) #1

declare i32 @add_case_node(%union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node**) #1

; Function Attrs: nounwind uwtable
define void @genrtl_compound_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  call void @expand_stmt(%union.tree_node* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @genrtl_asm_stmt(%union.tree_node* %cv_qualifier, %union.tree_node* %string, %union.tree_node* %output_operands, %union.tree_node* %input_operands, %union.tree_node* %clobbers, i32 %asm_input_p) #0 {
entry:
  %cv_qualifier.addr = alloca %union.tree_node*, align 8
  %string.addr = alloca %union.tree_node*, align 8
  %output_operands.addr = alloca %union.tree_node*, align 8
  %input_operands.addr = alloca %union.tree_node*, align 8
  %clobbers.addr = alloca %union.tree_node*, align 8
  %asm_input_p.addr = alloca i32, align 4
  store %union.tree_node* %cv_qualifier, %union.tree_node** %cv_qualifier.addr, align 8
  store %union.tree_node* %string, %union.tree_node** %string.addr, align 8
  store %union.tree_node* %output_operands, %union.tree_node** %output_operands.addr, align 8
  store %union.tree_node* %input_operands, %union.tree_node** %input_operands.addr, align 8
  store %union.tree_node* %clobbers, %union.tree_node** %clobbers.addr, align 8
  store i32 %asm_input_p, i32* %asm_input_p.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %cv_qualifier.addr, align 8
  %cmp = icmp ne %union.tree_node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %cv_qualifier.addr, align 8
  %2 = load %union.tree_node**, %union.tree_node*** @ridpointers, align 8
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %2, i64 9
  %3 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %cmp1 = icmp ne %union.tree_node* %1, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %cv_qualifier.addr, align 8
  %identifier = bitcast %union.tree_node* %4 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %5 = load i8*, i8** %str, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), i8* %5)
  store %union.tree_node* null, %union.tree_node** %cv_qualifier.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8*, i8** @input_filename, align 8
  %7 = load i32, i32* @lineno, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %6, i32 %7)
  %8 = load i32, i32* %asm_input_p.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %string.addr, align 8
  call void @expand_asm(%union.tree_node* %9)
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %string.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %output_operands.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %input_operands.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %clobbers.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %cv_qualifier.addr, align 8
  %cmp3 = icmp ne %union.tree_node* %14, null
  %conv = zext i1 %cmp3 to i32
  %15 = load i8*, i8** @input_filename, align 8
  %16 = load i32, i32* @lineno, align 4
  call void @c_expand_asm_operands(%union.tree_node* %10, %union.tree_node* %11, %union.tree_node* %12, %union.tree_node* %13, i32 %conv, i8* %15, i32 %16)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  ret void
}

declare void @expand_asm(%union.tree_node*) #1

declare void @c_expand_asm_operands(%union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @genrtl_decl_cleanup(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl1 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 4
  %4 = load %union.tree_node*, %union.tree_node** %size, align 8
  %tobool2 = icmp ne %union.tree_node* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp ne %union.tree_node* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp3 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 1
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common6 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 18
  %bf.clear = and i32 %bf.lshr, 1
  %call = call i32 @expand_decl_cleanup_eh(%union.tree_node* %8, %union.tree_node* %10, i32 %bf.clear)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  ret void
}

declare i32 @expand_decl_cleanup_eh(%union.tree_node*, %union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define void @prep_stmt(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %lang_flag_2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_2, align 8
  %bf.lshr = lshr i32 %bf.load, 26
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  %2 = load i32, i32* %complexity, align 4
  store i32 %2, i32* @lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %lang_flag_1, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 25
  %bf.clear4 = and i32 %bf.lshr3, 1
  %call = call %struct.stmt_tree_s* @current_stmt_tree()
  %stmts_are_full_exprs_p = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call, i32 0, i32 3
  store i32 %bf.clear4, i32* %stmts_are_full_exprs_p, align 4
  ret void
}

declare void @expand_label(%union.tree_node*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
