; ModuleID = 'integrate.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type { i32, i32, %struct.initial_value_pair* }
%struct.initial_value_pair = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.param_info = type { i8*, i32, i8* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%struct.inline_remap = type { i32, %union.tree_node*, %struct.rtx_def*, %struct.varray_head_tag*, %struct.rtx_def**, %struct.rtx_def**, %struct.rtx_def**, i32, i32, %struct.varray_head_tag*, i32, %struct.rtx_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtx_def*, i8*, %struct.rtx_def**, i32, [30 x %struct.equiv_table], %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.equiv_table = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.realvaluetype = type { [3 x i64] }
%union.real_extract = type { %struct.realvaluetype }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@targetm = external global %struct.gcc_target, align 8
@compiler_params = external global %struct.param_info*, align 8
@optimize_size = external global i32, align 4
@.str = private unnamed_addr constant [26 x i8] c"function cannot be inline\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@cfun = external global %struct.function*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"varargs function cannot be inline\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"function using alloca cannot be inline\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"function using setjmp cannot be inline\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"function uses __builtin_eh_return\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"function with nested functions cannot be inline\00", align 1
@.str.6 = private unnamed_addr constant [65 x i8] c"function with label addresses used in initializers cannot inline\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"function too large to be inline\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"inline functions not supported for this return value type\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"function with varying-size return value cannot be inline\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"function with varying-size parameter cannot be inline\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"function with transparent unit parameter cannot be inline\00", align 1
@rtx_class = external constant [153 x i8], align 16
@.str.12 = private unnamed_addr constant [42 x i8] c"function with computed jump cannot inline\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"function with nonlocal goto cannot be inline\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"function with target specific attribute(s) cannot be inlined\00", align 1
@flag_no_inline = external global i32, align 4
@parmdecl_map = internal global %union.tree_node** null, align 8
@.str.15 = private unnamed_addr constant [12 x i8] c"integrate.c\00", align 1
@__FUNCTION__.save_for_inline = private unnamed_addr constant [16 x i8] c"save_for_inline\00", align 1
@in_nonparm_insns = internal global i32 0, align 4
@write_symbols = external global i32, align 4
@__FUNCTION__.expand_inline_function = private unnamed_addr constant [23 x i8] c"expand_inline_function\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"block_map\00", align 1
@global_const_equiv_varray = common global %struct.varray_head_tag* null, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@inlining = internal global %struct.function* null, align 8
@target_flags = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@inline_function_decl = external global %union.tree_node*, align 8
@current_function_decl = external global %union.tree_node*, align 8
@flag_test_coverage = external global i32, align 4
@input_filename = external global i8*, align 8
@lineno = external global i32, align 4
@rtx_equal_function_value_matters = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.copy_rtx_and_substitute = private unnamed_addr constant [24 x i8] c"copy_rtx_and_substitute\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@do_nothing_debug_hooks = external global %struct.gcc_debug_hooks, align 8
@__FUNCTION__.copy_insn_list = private unnamed_addr constant [15 x i8] c"copy_insn_list\00", align 1
@static_chain_incoming_rtx = external global %struct.rtx_def*, align 8
@mode_size = external constant [59 x i8], align 16
@__FUNCTION__.subst_constants = private unnamed_addr constant [16 x i8] c"subst_constants\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %map, i32 %i) #0 {
entry:
  %map.addr = alloca %struct.inline_remap*, align 8
  %i.addr = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %label_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %1, i32 0, i32 5
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %label_map, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2, i64 %idxprom
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.rtx_def* @gen_label_rtx()
  %5 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %label_map2 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %6, i32 0, i32 5
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %label_map2, align 8
  %arrayidx3 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 %idxprom1
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx3, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  ret %struct.rtx_def* %8
}

declare %struct.rtx_def* @gen_label_rtx() #1

; Function Attrs: nounwind uwtable
define zeroext i1 @function_attribute_inlinable_p(%union.tree_node* %fndecl) #0 {
entry:
  %retval = alloca i1, align 1
  %fndecl.addr = alloca %union.tree_node*, align 8
  %has_machine_attr = alloca i8, align 1
  %a = alloca %union.tree_node*, align 8
  %name = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store i8 0, i8* %has_machine_attr, align 1
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  store %union.tree_node* %1, %union.tree_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %2 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list = bitcast %union.tree_node* %3 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  store %union.tree_node* %4, %union.tree_node** %name, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.attribute_spec*, %struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 4), align 8
  %arrayidx = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %6, i64 %idxprom
  %name2 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %arrayidx, i32 0, i32 0
  %7 = load i8*, i8** %name2, align 8
  %cmp = icmp ne i8* %7, null
  br i1 %cmp, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load %struct.attribute_spec*, %struct.attribute_spec** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 4), align 8
  %arrayidx5 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %9, i64 %idxprom4
  %name6 = getelementptr inbounds %struct.attribute_spec, %struct.attribute_spec* %arrayidx5, i32 0, i32 0
  %10 = load i8*, i8** %name6, align 8
  %11 = load %union.tree_node*, %union.tree_node** %name, align 8
  %call = call i32 @is_attribute_p(i8* %10, %union.tree_node* %11)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  store i8 1, i8* %has_machine_attr, align 1
  br label %for.end

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.1

for.end:                                          ; preds = %if.then, %for.cond.1
  %13 = load i8, i8* %has_machine_attr, align 1
  %tobool8 = trunc i8 %13 to i1
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.end
  br label %for.end.12

if.end.10:                                        ; preds = %for.end
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.10
  %14 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common = bitcast %union.tree_node* %14 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %15, %union.tree_node** %a, align 8
  br label %for.cond

for.end.12:                                       ; preds = %if.then.9, %for.cond
  %16 = load i8, i8* %has_machine_attr, align 1
  %tobool13 = trunc i8 %16 to i1
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %for.end.12
  %17 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 8), align 8
  %18 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call15 = call zeroext i1 %17(%union.tree_node* %18)
  store i1 %call15, i1* %retval
  br label %return

if.else:                                          ; preds = %for.end.12
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.14
  %19 = load i1, i1* %retval
  ret i1 %19
}

declare i32 @is_attribute_p(i8*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define i8* @function_cannot_inline_p(%union.tree_node* %fndecl) #0 {
entry:
  %retval = alloca i8*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %last = alloca %union.tree_node*, align 8
  %max_insns = alloca i32, align 4
  %ninsns = alloca i32, align 4
  %parms = alloca %union.tree_node*, align 8
  %result159 = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %values, align 8
  %call = call %union.tree_node* @tree_last(%union.tree_node* %2)
  store %union.tree_node* %call, %union.tree_node** %last, align 8
  %3 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %4 = bitcast i48* %inline_flag to i64*
  %bf.load = load i64, i64* %4, align 8
  %bf.lshr = lshr i64 %bf.load, 11
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx = getelementptr inbounds %struct.param_info, %struct.param_info* %5, i64 0
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx, i32 0, i32 1
  %6 = load i32, i32* %value, align 4
  %7 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl2 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 10
  %8 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call3 = call i32 @list_length(%union.tree_node* %8)
  %mul = mul nsw i32 8, %call3
  %add = add nsw i32 %6, %mul
  br label %cond.end.17

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* @optimize_size, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %cond.true.5, label %cond.false.11

cond.true.5:                                      ; preds = %cond.false
  %10 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl6 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %arguments7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 10
  %11 = load %union.tree_node*, %union.tree_node** %arguments7, align 8
  %call8 = call i32 @list_length(%union.tree_node* %11)
  %mul9 = mul nsw i32 3, %call8
  %div = sdiv i32 %mul9, 2
  %add10 = add nsw i32 1, %div
  br label %cond.end

cond.false.11:                                    ; preds = %cond.false
  %12 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl12 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %arguments13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 10
  %13 = load %union.tree_node*, %union.tree_node** %arguments13, align 8
  %call14 = call i32 @list_length(%union.tree_node* %13)
  %add15 = add nsw i32 8, %call14
  %mul16 = mul nsw i32 8, %add15
  br label %cond.end

cond.end:                                         ; preds = %cond.false.11, %cond.true.5
  %cond = phi i32 [ %add10, %cond.true.5 ], [ %mul16, %cond.false.11 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i32 [ %add, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond18, i32* %max_insns, align 4
  store i32 0, i32* %ninsns, align 4
  %14 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl19 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %uninlinable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl19, i32 0, i32 5
  %15 = bitcast i48* %uninlinable to i64*
  %bf.load20 = load i64, i64* %15, align 8
  %bf.lshr21 = lshr i64 %bf.load20, 36
  %bf.clear22 = and i64 %bf.lshr21, 1
  %bf.cast23 = trunc i64 %bf.clear22 to i32
  %tobool24 = icmp ne i32 %bf.cast23, 0
  br i1 %tobool24, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.17
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8** %retval
  br label %return

if.end:                                           ; preds = %cond.end.17
  %16 = load %union.tree_node*, %union.tree_node** %last, align 8
  %tobool25 = icmp ne %union.tree_node* %16, null
  br i1 %tobool25, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %17 = load %union.tree_node*, %union.tree_node** %last, align 8
  %list = bitcast %union.tree_node* %17 to %struct.tree_list*
  %value26 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %18 = load %union.tree_node*, %union.tree_node** %value26, align 8
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %cmp = icmp ne %union.tree_node* %18, %19
  br i1 %cmp, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %varargs = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 56
  %21 = bitcast i24* %varargs to i32*
  %bf.load27 = load i32, i32* %21, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 16
  %bf.clear29 = and i32 %bf.lshr28, 1
  %tobool30 = icmp ne i32 %bf.clear29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0), i8** %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 56
  %23 = bitcast i24* %calls_alloca to i32*
  %bf.load33 = load i32, i32* %23, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 6
  %bf.clear35 = and i32 %bf.lshr34, 1
  %tobool36 = icmp ne i32 %bf.clear35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8** %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_setjmp = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 56
  %25 = bitcast i24* %calls_setjmp to i32*
  %bf.load39 = load i32, i32* %25, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 4
  %bf.clear41 = and i32 %bf.lshr40, 1
  %tobool42 = icmp ne i32 %bf.clear41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0), i8** %retval
  br label %return

if.end.44:                                        ; preds = %if.end.38
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_eh_return = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 56
  %27 = bitcast i24* %calls_eh_return to i32*
  %bf.load45 = load i32, i32* %27, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 7
  %bf.clear47 = and i32 %bf.lshr46, 1
  %tobool48 = icmp ne i32 %bf.clear47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i8** %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %contains_functions = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 56
  %29 = bitcast i24* %contains_functions to i32*
  %bf.load51 = load i32, i32* %29, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 10
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.50
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.50
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 2
  %31 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_forced_labels = getelementptr inbounds %struct.expr_status, %struct.expr_status* %31, i32 0, i32 5
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels, align 8
  %tobool57 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.6, i32 0, i32 0), i8** %retval
  br label %return

if.end.59:                                        ; preds = %if.end.56
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %cannot_inline = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 16
  %34 = load i8*, i8** %cannot_inline, align 8
  %tobool60 = icmp ne i8* %34, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.end.59
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %cannot_inline62 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 16
  %36 = load i8*, i8** %cannot_inline62, align 8
  store i8* %36, i8** %retval
  br label %return

if.end.63:                                        ; preds = %if.end.59
  %call64 = call i32 @get_max_uid()
  %37 = load i32, i32* %max_insns, align 4
  %mul65 = mul nsw i32 3, %37
  %cmp66 = icmp sgt i32 %call64, %mul65
  br i1 %cmp66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.end.63
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.63
  %38 = load %struct.function*, %struct.function** @cfun, align 8
  %returns_pcc_struct = getelementptr inbounds %struct.function, %struct.function* %38, i32 0, i32 56
  %39 = bitcast i24* %returns_pcc_struct to i32*
  %bf.load69 = load i32, i32* %39, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 1
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.end.68
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

if.end.74:                                        ; preds = %if.end.68
  %40 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common75 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %type76 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common75, i32 0, i32 1
  %41 = load %union.tree_node*, %union.tree_node** %type76, align 8
  %common77 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type78 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common77, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type78, align 8
  %common79 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load80 = load i32, i32* %code, align 8
  %bf.clear81 = and i32 %bf.load80, 255
  %cmp82 = icmp ne i32 %bf.clear81, 5
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.91

land.lhs.true.83:                                 ; preds = %if.end.74
  %43 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common84 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %type85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common84, i32 0, i32 1
  %44 = load %union.tree_node*, %union.tree_node** %type85, align 8
  %common86 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %type87 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %type87, align 8
  %call88 = call i64 @int_size_in_bytes(%union.tree_node* %45)
  %cmp89 = icmp slt i64 %call88, 0
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true.83
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0), i8** %retval
  br label %return

if.end.91:                                        ; preds = %land.lhs.true.83, %if.end.74
  %46 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl92 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %arguments93 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 10
  %47 = load %union.tree_node*, %union.tree_node** %arguments93, align 8
  store %union.tree_node* %47, %union.tree_node** %parms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %48 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %tobool94 = icmp ne %union.tree_node* %48, null
  br i1 %tobool94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common95 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type96 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common95, i32 0, i32 1
  %50 = load %union.tree_node*, %union.tree_node** %type96, align 8
  %call97 = call i64 @int_size_in_bytes(%union.tree_node* %50)
  %cmp98 = icmp slt i64 %call97, 0
  br i1 %cmp98, label %if.then.99, label %if.else

if.then.99:                                       ; preds = %for.body
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i8** %retval
  br label %return

if.else:                                          ; preds = %for.body
  %51 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common100 = bitcast %union.tree_node* %51 to %struct.tree_common*
  %type101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 1
  %52 = load %union.tree_node*, %union.tree_node** %type101, align 8
  %common102 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %code103 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common102, i32 0, i32 2
  %bf.load104 = load i32, i32* %code103, align 8
  %bf.clear105 = and i32 %bf.load104, 255
  %cmp106 = icmp eq i32 %bf.clear105, 21
  br i1 %cmp106, label %land.lhs.true.107, label %if.end.116

land.lhs.true.107:                                ; preds = %if.else
  %53 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common108 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %type109 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common108, i32 0, i32 1
  %54 = load %union.tree_node*, %union.tree_node** %type109, align 8
  %type110 = bitcast %union.tree_node* %54 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type110, i32 0, i32 6
  %bf.load111 = load i32, i32* %transparent_union_flag, align 4
  %bf.lshr112 = lshr i32 %bf.load111, 19
  %bf.clear113 = and i32 %bf.lshr112, 1
  %tobool114 = icmp ne i32 %bf.clear113, 0
  br i1 %tobool114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %land.lhs.true.107
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i32 0, i32 0), i8** %retval
  br label %return

if.end.116:                                       ; preds = %land.lhs.true.107, %if.else
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116
  br label %for.inc

for.inc:                                          ; preds = %if.end.117
  %55 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common118 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common118, i32 0, i32 0
  %56 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %56, %union.tree_node** %parms, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call119 = call i32 @get_max_uid()
  %57 = load i32, i32* %max_insns, align 4
  %cmp120 = icmp sgt i32 %call119, %57
  br i1 %cmp120, label %if.then.121, label %if.end.141

if.then.121:                                      ; preds = %for.end
  store i32 0, i32* %ninsns, align 4
  %call122 = call %struct.rtx_def* @get_first_nonparm_insn()
  store %struct.rtx_def* %call122, %struct.rtx_def** %insn, align 8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.134, %if.then.121
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool124 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool124, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.123
  %59 = load i32, i32* %ninsns, align 4
  %60 = load i32, i32* %max_insns, align 4
  %cmp125 = icmp slt i32 %59, %60
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.123
  %61 = phi i1 [ false, %for.cond.123 ], [ %cmp125, %land.rhs ]
  br i1 %61, label %for.body.126, label %for.end.136

for.body.126:                                     ; preds = %land.end
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load127 = load i32, i32* %63, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %idxprom = sext i32 %bf.clear128 to i64
  %arrayidx129 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %64 = load i8, i8* %arrayidx129, align 1
  %conv = sext i8 %64 to i32
  %cmp130 = icmp eq i32 %conv, 105
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body.126
  %65 = load i32, i32* %ninsns, align 4
  %inc = add nsw i32 %65, 1
  store i32 %inc, i32* %ninsns, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.132, %for.body.126
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %insn, align 8
  br label %for.cond.123

for.end.136:                                      ; preds = %land.end
  %68 = load i32, i32* %ninsns, align 4
  %69 = load i32, i32* %max_insns, align 4
  %cmp137 = icmp sge i32 %68, %69
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.end.136
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0), i8** %retval
  br label %return

if.end.140:                                       ; preds = %for.end.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %for.end
  %70 = load %struct.function*, %struct.function** @cfun, align 8
  %has_computed_jump = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 56
  %71 = bitcast i24* %has_computed_jump to i32*
  %bf.load142 = load i32, i32* %71, align 8
  %bf.lshr143 = lshr i32 %bf.load142, 11
  %bf.clear144 = and i32 %bf.lshr143, 1
  %tobool145 = icmp ne i32 %bf.clear144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %if.end.141
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i32 0, i32 0), i8** %retval
  br label %return

if.end.147:                                       ; preds = %if.end.141
  %72 = load %struct.function*, %struct.function** @cfun, align 8
  %has_nonlocal_goto = getelementptr inbounds %struct.function, %struct.function* %72, i32 0, i32 56
  %73 = bitcast i24* %has_nonlocal_goto to i32*
  %bf.load148 = load i32, i32* %73, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 9
  %bf.clear150 = and i32 %bf.lshr149, 1
  %tobool151 = icmp ne i32 %bf.clear150, 0
  br i1 %tobool151, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.147
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8** %retval
  br label %return

if.end.153:                                       ; preds = %if.end.147
  %74 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl154 = bitcast %union.tree_node* %74 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl154, i32 0, i32 11
  %75 = load %union.tree_node*, %union.tree_node** %result, align 8
  %decl155 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl155, i32 0, i32 17
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp156 = icmp ne %struct.rtx_def* %76, null
  br i1 %cmp156, label %if.then.158, label %if.end.185

if.then.158:                                      ; preds = %if.end.153
  %77 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl160 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %result161 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl160, i32 0, i32 11
  %78 = load %union.tree_node*, %union.tree_node** %result161, align 8
  %decl162 = bitcast %union.tree_node* %78 to %struct.tree_decl*
  %rtl163 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl162, i32 0, i32 17
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtl163, align 8
  %tobool164 = icmp ne %struct.rtx_def* %79, null
  br i1 %tobool164, label %cond.true.165, label %cond.false.170

cond.true.165:                                    ; preds = %if.then.158
  %80 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl166 = bitcast %union.tree_node* %80 to %struct.tree_decl*
  %result167 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl166, i32 0, i32 11
  %81 = load %union.tree_node*, %union.tree_node** %result167, align 8
  %decl168 = bitcast %union.tree_node* %81 to %struct.tree_decl*
  %rtl169 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl168, i32 0, i32 17
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtl169, align 8
  br label %cond.end.177

cond.false.170:                                   ; preds = %if.then.158
  %83 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl171 = bitcast %union.tree_node* %83 to %struct.tree_decl*
  %result172 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl171, i32 0, i32 11
  %84 = load %union.tree_node*, %union.tree_node** %result172, align 8
  call void @make_decl_rtl(%union.tree_node* %84, i8* null)
  %85 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl173 = bitcast %union.tree_node* %85 to %struct.tree_decl*
  %result174 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl173, i32 0, i32 11
  %86 = load %union.tree_node*, %union.tree_node** %result174, align 8
  %decl175 = bitcast %union.tree_node* %86 to %struct.tree_decl*
  %rtl176 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl175, i32 0, i32 17
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtl176, align 8
  br label %cond.end.177

cond.end.177:                                     ; preds = %cond.false.170, %cond.true.165
  %cond178 = phi %struct.rtx_def* [ %82, %cond.true.165 ], [ %87, %cond.false.170 ]
  store %struct.rtx_def* %cond178, %struct.rtx_def** %result159, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %result159, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load179 = load i32, i32* %89, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %cmp181 = icmp eq i32 %bf.clear180, 39
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %cond.end.177
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i32 0, i32 0), i8** %retval
  br label %return

if.end.184:                                       ; preds = %cond.end.177
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.end.153
  %90 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call186 = call zeroext i1 @function_attribute_inlinable_p(%union.tree_node* %90)
  br i1 %call186, label %if.end.188, label %if.then.187

if.then.187:                                      ; preds = %if.end.185
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i32 0, i32 0), i8** %retval
  br label %return

if.end.188:                                       ; preds = %if.end.185
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.end.188, %if.then.187, %if.then.183, %if.then.152, %if.then.146, %if.then.139, %if.then.115, %if.then.99, %if.then.90, %if.then.73, %if.then.67, %if.then.61, %if.then.58, %if.then.55, %if.then.49, %if.then.43, %if.then.37, %if.then.31, %if.then
  %91 = load i8*, i8** %retval
  ret i8* %91
}

declare %union.tree_node* @tree_last(%union.tree_node*) #1

declare i32 @list_length(%union.tree_node*) #1

declare i32 @get_max_uid() #1

declare i64 @int_size_in_bytes(%union.tree_node*) #1

declare %struct.rtx_def* @get_first_nonparm_insn() #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %decl, %union.tree_node* %from_fn, %union.tree_node* %to_fn) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %from_fn.addr = alloca %union.tree_node*, align 8
  %to_fn.addr = alloca %union.tree_node*, align 8
  %copy = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %union.tree_node* %from_fn, %union.tree_node** %from_fn.addr, align 8
  store %union.tree_node* %to_fn, %union.tree_node** %to_fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 35
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 36
  br i1 %cmp5, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 8
  %3 = load %union.tree_node*, %union.tree_node** %name, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common7 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @build_decl(i32 34, %union.tree_node* %3, %union.tree_node* %5)
  store %union.tree_node* %call, %union.tree_node** %copy, align 8
  %6 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common8 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load9 = load i32, i32* %addressable_flag, align 8
  %bf.lshr = lshr i32 %bf.load9, 10
  %bf.clear10 = and i32 %bf.lshr, 1
  %7 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common11 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %addressable_flag12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load13 = load i32, i32* %addressable_flag12, align 8
  %bf.value = and i32 %bf.clear10, 1
  %bf.shl = shl i32 %bf.value, 10
  %bf.clear14 = and i32 %bf.load13, -1025
  %bf.set = or i32 %bf.clear14, %bf.shl
  store i32 %bf.set, i32* %addressable_flag12, align 8
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common15 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load16 = load i32, i32* %readonly_flag, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 12
  %bf.clear18 = and i32 %bf.lshr17, 1
  %9 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common19 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %readonly_flag20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %readonly_flag20, align 8
  %bf.value22 = and i32 %bf.clear18, 1
  %bf.shl23 = shl i32 %bf.value22, 12
  %bf.clear24 = and i32 %bf.load21, -4097
  %bf.set25 = or i32 %bf.clear24, %bf.shl23
  store i32 %bf.set25, i32* %readonly_flag20, align 8
  %10 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common26 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %volatile_flag, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 11
  %bf.clear29 = and i32 %bf.lshr28, 1
  %11 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common30 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %volatile_flag31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 2
  %bf.load32 = load i32, i32* %volatile_flag31, align 8
  %bf.value33 = and i32 %bf.clear29, 1
  %bf.shl34 = shl i32 %bf.value33, 11
  %bf.clear35 = and i32 %bf.load32, -2049
  %bf.set36 = or i32 %bf.clear35, %bf.shl34
  store i32 %bf.set36, i32* %volatile_flag31, align 8
  br label %if.end.51

if.else:                                          ; preds = %lor.lhs.false
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %call37 = call %union.tree_node* @copy_node(%union.tree_node* %12)
  store %union.tree_node* %call37, %union.tree_node** %copy, align 8
  %13 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %decl38 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %lang_specific = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl38, i32 0, i32 24
  %14 = load %struct.lang_decl*, %struct.lang_decl** %lang_specific, align 8
  %tobool = icmp ne %struct.lang_decl* %14, null
  br i1 %tobool, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.else
  %15 = load %union.tree_node*, %union.tree_node** %copy, align 8
  call void @copy_lang_decl(%union.tree_node* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.39, %if.else
  %16 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common40 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %code41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 2
  %bf.load42 = load i32, i32* %code41, align 8
  %bf.clear43 = and i32 %bf.load42, 255
  %cmp44 = icmp eq i32 %bf.clear43, 31
  br i1 %cmp44, label %if.then.45, label %if.end.50

if.then.45:                                       ; preds = %if.end
  %17 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common46 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %addressable_flag47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 2
  %bf.load48 = load i32, i32* %addressable_flag47, align 8
  %bf.clear49 = and i32 %bf.load48, -1025
  store i32 %bf.clear49, i32* %addressable_flag47, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.45, %if.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  %18 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl52 = bitcast %union.tree_node* %18 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl52, i32 0, i32 13
  %19 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %tobool53 = icmp ne %union.tree_node* %19, null
  br i1 %tobool53, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.51
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl54 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %abstract_origin55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl54, i32 0, i32 13
  %21 = load %union.tree_node*, %union.tree_node** %abstract_origin55, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.51
  %22 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %21, %cond.true ], [ %22, %cond.false ]
  %23 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %decl56 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %abstract_origin57 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl56, i32 0, i32 13
  store %union.tree_node* %cond, %union.tree_node** %abstract_origin57, align 8
  %24 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %decl58 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 17
  store %struct.rtx_def* null, %struct.rtx_def** %rtl, align 8
  %25 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %common59 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load60 = load i32, i32* %used_flag, align 8
  %bf.clear61 = and i32 %bf.load60, -65537
  %bf.set62 = or i32 %bf.clear61, 65536
  store i32 %bf.set62, i32* %used_flag, align 8
  %26 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl63 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl63, i32 0, i32 9
  %27 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool64 = icmp ne %union.tree_node* %27, null
  br i1 %tobool64, label %if.else.66, label %if.then.65

if.then.65:                                       ; preds = %cond.end
  br label %if.end.83

if.else.66:                                       ; preds = %cond.end
  %28 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl67 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %context68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 9
  %29 = load %union.tree_node*, %union.tree_node** %context68, align 8
  %30 = load %union.tree_node*, %union.tree_node** %from_fn.addr, align 8
  %cmp69 = icmp ne %union.tree_node* %29, %30
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.else.66
  br label %if.end.82

if.else.71:                                       ; preds = %if.else.66
  %31 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common72 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 2
  %bf.load73 = load i32, i32* %static_flag, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 18
  %bf.clear75 = and i32 %bf.lshr74, 1
  %tobool76 = icmp ne i32 %bf.clear75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %if.else.71
  br label %if.end.81

if.else.78:                                       ; preds = %if.else.71
  %32 = load %union.tree_node*, %union.tree_node** %to_fn.addr, align 8
  %33 = load %union.tree_node*, %union.tree_node** %copy, align 8
  %decl79 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %context80 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl79, i32 0, i32 9
  store %union.tree_node* %32, %union.tree_node** %context80, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.70
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.65
  %34 = load %union.tree_node*, %union.tree_node** %copy, align 8
  ret %union.tree_node* %34
}

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @copy_node(%union.tree_node*) #1

declare void @copy_lang_decl(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @save_for_inline(%union.tree_node* %fndecl) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %argvec = alloca %struct.rtvec_def*, align 8
  %first_nonparm_insn = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load i32, i32* @flag_no_inline, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %x_max_parm_reg = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 37
  %2 = load i32, i32* %x_max_parm_reg, align 4
  %conv = zext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to %union.tree_node**
  store %union.tree_node** %3, %union.tree_node*** @parmdecl_map, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %x_return_label = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 24
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x_return_label, align 8
  %cmp = icmp eq %struct.rtx_def* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct.rtx_def* @gen_label_rtx()
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %x_return_label4 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 24
  store %struct.rtx_def* %call3, %struct.rtx_def** %x_return_label4, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %x_return_label5 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 24
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x_return_label5, align 8
  %call6 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.2, %if.end
  %9 = load i32, i32* @flag_no_inline, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %10 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call10 = call %struct.rtvec_def* @initialize_for_inline(%union.tree_node* %10)
  store %struct.rtvec_def* %call10, %struct.rtvec_def** %argvec, align 8
  br label %if.end.11

if.else:                                          ; preds = %if.end.7
  store %struct.rtvec_def* null, %struct.rtvec_def** %argvec, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %call12 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call12, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool13 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp14 = icmp eq i32 %bf.clear, 37
  br i1 %cmp14, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %15 = load i32, i32* %rtint, align 4
  %cmp16 = icmp eq i32 %15, -80
  br i1 %cmp16, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call19 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %16)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call23 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call23, %struct.rtx_def** %insn, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load24 = load i32, i32* %20, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp ne i32 %bf.clear25, 37
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 472, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.save_for_inline, i32 0, i32 0)) #5
  unreachable

if.end.29:                                        ; preds = %for.end
  %21 = load i32, i32* @flag_no_inline, align 4
  %tobool30 = icmp ne i32 %21, 0
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %if.end.29
  %call32 = call %struct.rtx_def* @get_first_nonparm_insn()
  store %struct.rtx_def* %call32, %struct.rtx_def** %first_nonparm_insn, align 8
  store i32 0, i32* @in_nonparm_insns, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %first_nonparm_insn, align 8
  call void @save_parm_insns(%struct.rtx_def* %22, %struct.rtx_def* %23)
  %call33 = call i32 @max_label_num()
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %inl_max_label_num = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 49
  store i32 %call33, i32* %inl_max_label_num, align 4
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %x_last_parm_insn = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 36
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x_last_parm_insn, align 8
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %inl_last_parm_insn = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 48
  store %struct.rtx_def* %26, %struct.rtx_def** %inl_last_parm_insn, align 8
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %argvec, align 8
  %29 = bitcast %struct.rtvec_def* %28 to i8*
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %original_arg_vector = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 46
  store i8* %29, i8** %original_arg_vector, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.29
  %31 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %32 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %original_decl_initial = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 47
  store %union.tree_node* %32, %union.tree_node** %original_decl_initial, align 8
  %34 = load i32, i32* @write_symbols, align 4
  %cmp35 = icmp eq i32 %34, 0
  %conv36 = zext i1 %cmp35 to i32
  %35 = load %struct.function*, %struct.function** @cfun, align 8
  %no_debugging_symbols = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 45
  store i32 %conv36, i32* %no_debugging_symbols, align 4
  %36 = load %struct.function*, %struct.function** @cfun, align 8
  %37 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl37 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  store %struct.function* %36, %struct.function** %f, align 8
  %38 = load i32, i32* @flag_no_inline, align 4
  %tobool38 = icmp ne i32 %38, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  %39 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %40 = bitcast %union.tree_node** %39 to i8*
  call void @free(i8* %40) #4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.34
  ret void
}

declare noalias i8* @xmalloc(i64) #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtvec_def* @initialize_for_inline(%union.tree_node* %fndecl) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %arg_vector = alloca %struct.rtvec_def*, align 8
  %parms = alloca %union.tree_node*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %preal = alloca %struct.rtx_def*, align 8
  %pimag = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %1 = bitcast %union.tree_node** %0 to i8*
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %x_max_parm_reg = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 37
  %3 = load i32, i32* %x_max_parm_reg, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 %conv, 8
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 1, i1 false)
  %4 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %5 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call = call i32 @list_length(%union.tree_node* %5)
  %call1 = call %struct.rtvec_def* @rtvec_alloc(i32 %call)
  store %struct.rtvec_def* %call1, %struct.rtvec_def** %arg_vector, align 8
  %6 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl2 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %arguments3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 10
  %7 = load %union.tree_node*, %union.tree_node** %arguments3, align 8
  store %union.tree_node* %7, %union.tree_node** %parms, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %tobool = icmp ne %union.tree_node* %8, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %decl4 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool5 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %decl6 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %rtl7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtl7, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %13 = load %union.tree_node*, %union.tree_node** %parms, align 8
  call void @make_decl_rtl(%union.tree_node* %13, i8* null)
  %14 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %decl8 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %12, %cond.true ], [ %15, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %p, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load11 = load i32, i32* %20, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 70
  br i1 %cmp13, label %land.lhs.true.15, label %if.end

land.lhs.true.15:                                 ; preds = %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load22 = load i32, i32* %24, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 66
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.15
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.15, %land.lhs.true, %cond.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  store %struct.rtx_def* %28, %struct.rtx_def** %arrayidx32, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load33 = load i32, i32* %32, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 61
  br i1 %cmp35, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %if.end
  %33 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %35 = load i32, i32* %rtuint, align 4
  %idxprom40 = zext i32 %35 to i64
  %36 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %arrayidx41 = getelementptr inbounds %union.tree_node*, %union.tree_node** %36, i64 %idxprom40
  store %union.tree_node* %33, %union.tree_node** %arrayidx41, align 8
  br label %if.end.80

if.else:                                          ; preds = %if.end
  %37 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load42 = load i32, i32* %38, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 65
  br i1 %cmp44, label %if.then.46, label %if.end.79

if.then.46:                                       ; preds = %if.else
  %39 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load50 = load i32, i32* %41, align 8
  %bf.lshr = lshr i32 %bf.load50, 16
  %bf.clear51 = and i32 %bf.lshr, 255
  %42 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call52 = call %struct.rtx_def* @gen_realpart(i32 %bf.clear51, %struct.rtx_def* %42)
  store %struct.rtx_def* %call52, %struct.rtx_def** %preal, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %preal, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load53 = load i32, i32* %44, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %45 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %call56 = call %struct.rtx_def* @gen_imagpart(i32 %bf.clear55, %struct.rtx_def* %45)
  store %struct.rtx_def* %call56, %struct.rtx_def** %pimag, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %preal, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load57 = load i32, i32* %47, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 61
  br i1 %cmp59, label %if.then.61, label %if.end.67

if.then.61:                                       ; preds = %if.then.46
  %48 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %preal, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %50 = load i32, i32* %rtuint64, align 4
  %idxprom65 = zext i32 %50 to i64
  %51 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %arrayidx66 = getelementptr inbounds %union.tree_node*, %union.tree_node** %51, i64 %idxprom65
  store %union.tree_node* %48, %union.tree_node** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.61, %if.then.46
  %52 = load %struct.rtx_def*, %struct.rtx_def** %pimag, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load68 = load i32, i32* %53, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 61
  br i1 %cmp70, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.end.67
  %54 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %pimag, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtuint75 = bitcast %union.rtunion_def* %arrayidx74 to i32*
  %56 = load i32, i32* %rtuint75, align 4
  %idxprom76 = zext i32 %56 to i64
  %57 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %arrayidx77 = getelementptr inbounds %union.tree_node*, %union.tree_node** %57, i64 %idxprom76
  store %union.tree_node* %54, %union.tree_node** %arrayidx77, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.72, %if.end.67
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.else
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.37
  %58 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common = bitcast %union.tree_node* %58 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load81 = load i32, i32* %readonly_flag, align 8
  %bf.clear82 = and i32 %bf.load81, -4097
  %bf.set = or i32 %bf.clear82, 4096
  store i32 %bf.set, i32* %readonly_flag, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %59 = load %union.tree_node*, %union.tree_node** %parms, align 8
  %common83 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 0
  %60 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %60, %union.tree_node** %parms, align 8
  %61 = load i32, i32* %i, align 4
  %inc = add nsw i32 %61, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %62 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  ret %struct.rtvec_def* %62
}

declare %struct.rtx_def* @get_insns() #1

declare %struct.rtx_def* @delete_related_insns(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @save_parm_insns(%struct.rtx_def* %insn, %struct.rtx_def* %first_nonparm_insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %first_nonparm_insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %first_nonparm_insn, %struct.rtx_def** %first_nonparm_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.40

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %first_nonparm_insn.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %for.body
  store i32 1, i32* @in_nonparm_insns, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx4 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx4, align 1
  %conv = sext i8 %8 to i32
  %cmp5 = icmp eq i32 %conv, 105
  br i1 %cmp5, label %if.then.7, label %if.end.35

if.then.7:                                        ; preds = %if.end.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  call void @note_stores(%struct.rtx_def* %10, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @note_modified_parmregs, i8* null)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 34
  br i1 %cmp13, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.then.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 141
  br i1 %cmp20, label %if.then.22, label %if.end.34

if.then.22:                                       ; preds = %land.lhs.true
  store i32 0, i32* %i, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc, %if.then.22
  %16 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %16, 3
  br i1 %cmp24, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.23
  %17 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 %idxprom27
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %first_nonparm_insn.addr, align 8
  call void @save_parm_insns(%struct.rtx_def* %20, %struct.rtx_def* %21)
  br label %for.inc

for.inc:                                          ; preds = %for.body.26
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.23

for.end:                                          ; preds = %for.cond.23
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %land.lhs.true, %if.then.7
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.3
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 2
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end.40:                                       ; preds = %if.then, %for.cond
  ret void
}

declare i32 @max_label_num() #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_inline_function(%union.tree_node* %fndecl, %union.tree_node* %parms, %struct.rtx_def* %target, i32 %ignore, %union.tree_node* %type, %struct.rtx_def* %structure_value_addr) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  %parms.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %ignore.addr = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %structure_value_addr.addr = alloca %struct.rtx_def*, align 8
  %inlining_previous = alloca %struct.function*, align 8
  %inl_f = alloca %struct.function*, align 8
  %formal = alloca %union.tree_node*, align 8
  %actual = alloca %union.tree_node*, align 8
  %block = alloca %union.tree_node*, align 8
  %parm_insns = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %arg_trees = alloca %union.tree_node**, align 8
  %arg_vals = alloca %struct.rtx_def**, align 8
  %max_regno = alloca i32, align 4
  %i = alloca i32, align 4
  %min_labelno = alloca i32, align 4
  %max_labelno = alloca i32, align 4
  %nargs = alloca i32, align 4
  %loc = alloca %struct.rtx_def*, align 8
  %stack_save = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %map = alloca %struct.inline_remap*, align 8
  %arg_vector = alloca %struct.rtvec_def*, align 8
  %static_chain_value = alloca %struct.rtx_def*, align 8
  %inl_max_uid = alloca i32, align 4
  %eh_region_offset = alloca i32, align 4
  %real_label_map = alloca %struct.rtx_def**, align 8
  %arg = alloca %union.tree_node*, align 8
  %mode = alloca i32, align 4
  %arg72 = alloca %union.tree_node*, align 8
  %mode78 = alloca i32, align 4
  %invisiref = alloca i32, align 4
  %stack_slot = alloca %struct.rtx_def*, align 8
  %unsignedp = alloca i32, align 4
  %pmode = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.const_equiv_data*, align 8
  %is_global = alloca i32, align 4
  %locreal = alloca %struct.rtx_def*, align 8
  %locimag = alloca %struct.rtx_def*, align 8
  %copyreal = alloca %struct.rtx_def*, align 8
  %copyimag = alloca %struct.rtx_def*, align 8
  %note603 = alloca %struct.rtx_def*, align 8
  %p800 = alloca %struct.const_equiv_data*, align 8
  %is_global810 = alloca i32, align 4
  %departing_mode = alloca i32, align 4
  %arriving_mode = alloca i32, align 4
  %reg_to_map = alloca %struct.rtx_def*, align 8
  %departing_mode987 = alloca i32, align 4
  %arriving_mode993 = alloca i32, align 4
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %parms, %union.tree_node** %parms.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %ignore, i32* %ignore.addr, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %struct.rtx_def* %structure_value_addr, %struct.rtx_def** %structure_value_addr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %1 = load %struct.function*, %struct.function** %f, align 8
  store %struct.function* %1, %struct.function** %inl_f, align 8
  %2 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 2
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %parm_insns, align 8
  %5 = load %struct.function*, %struct.function** %inl_f, align 8
  %inl_last_parm_insn = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 48
  %6 = load %struct.rtx_def*, %struct.rtx_def** %inl_last_parm_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.function*, %struct.function** %inl_f, align 8
  %inl_last_parm_insn1 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 48
  %8 = load %struct.rtx_def*, %struct.rtx_def** %inl_last_parm_insn1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %parm_insns, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %9, %cond.true ], [ %10, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %insns, align 8
  %11 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 3
  %12 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_first_label_num = getelementptr inbounds %struct.emit_status, %struct.emit_status* %12, i32 0, i32 1
  %13 = load i32, i32* %x_first_label_num, align 4
  store i32 %13, i32* %min_labelno, align 4
  %14 = load %struct.function*, %struct.function** %inl_f, align 8
  %inl_max_label_num = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 49
  %15 = load i32, i32* %inl_max_label_num, align 4
  store i32 %15, i32* %max_labelno, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %stack_save, align 8
  store %struct.inline_remap* null, %struct.inline_remap** %map, align 8
  %16 = load %struct.function*, %struct.function** %inl_f, align 8
  %original_arg_vector = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 46
  %17 = load i8*, i8** %original_arg_vector, align 8
  %18 = bitcast i8* %17 to %struct.rtvec_def*
  store %struct.rtvec_def* %18, %struct.rtvec_def** %arg_vector, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %static_chain_value, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %real_label_map, align 8
  %19 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 3
  %20 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %x_reg_rtx_no = getelementptr inbounds %struct.emit_status, %struct.emit_status* %20, i32 0, i32 0
  %21 = load i32, i32* %x_reg_rtx_no, align 4
  %add = add nsw i32 %21, 3
  store i32 %add, i32* %max_regno, align 4
  %22 = load i32, i32* %max_regno, align 4
  %cmp = icmp slt i32 %22, 53
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 686, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end
  %23 = load %struct.function*, %struct.function** %inl_f, align 8
  %decl4 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 6
  %24 = load %union.tree_node*, %union.tree_node** %decl4, align 8
  store %union.tree_node* %24, %union.tree_node** %fndecl.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl5 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 10
  %26 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call = call i32 @list_length(%union.tree_node* %26)
  store i32 %call, i32* %nargs, align 4
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 53
  %28 = load i32, i32* %preferred_stack_boundary, align 4
  %29 = load %struct.function*, %struct.function** %inl_f, align 8
  %preferred_stack_boundary6 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 53
  %30 = load i32, i32* %preferred_stack_boundary6, align 4
  %cmp7 = icmp slt i32 %28, %30
  br i1 %cmp7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end
  %31 = load %struct.function*, %struct.function** %inl_f, align 8
  %preferred_stack_boundary9 = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 53
  %32 = load i32, i32* %preferred_stack_boundary9, align 4
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary10 = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 53
  store i32 %32, i32* %preferred_stack_boundary10, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %34 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl12 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %arguments13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 10
  %35 = load %union.tree_node*, %union.tree_node** %arguments13, align 8
  store %union.tree_node* %35, %union.tree_node** %formal, align 8
  %36 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  store %union.tree_node* %36, %union.tree_node** %actual, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %37 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %tobool14 = icmp ne %union.tree_node* %37, null
  br i1 %tobool14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %cmp15 = icmp eq %union.tree_node* %38, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  store %struct.rtx_def* inttoptr (i64 -1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %for.body
  %39 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %list = bitcast %union.tree_node* %39 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %40 = load %union.tree_node*, %union.tree_node** %value, align 8
  store %union.tree_node* %40, %union.tree_node** %arg, align 8
  %41 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %decl18 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl18, i32 0, i32 12
  %42 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %type19 = bitcast %union.tree_node* %42 to %struct.tree_type*
  %mode20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load = load i32, i32* %mode20, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  store i32 %bf.clear, i32* %mode, align 4
  %43 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %44 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp21 = icmp eq %union.tree_node* %43, %44
  br i1 %cmp21, label %if.then.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %45 = load i32, i32* %mode, align 4
  %46 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common = bitcast %union.tree_node* %46 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %47 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %type23 = bitcast %union.tree_node* %47 to %struct.tree_type*
  %mode24 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type23, i32 0, i32 6
  %bf.load25 = load i32, i32* %mode24, align 4
  %bf.lshr26 = lshr i32 %bf.load25, 9
  %bf.clear27 = and i32 %bf.lshr26, 127
  %cmp28 = icmp ne i32 %45, %bf.clear27
  br i1 %cmp28, label %if.then.39, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %48 = load i32, i32* %mode, align 4
  %cmp30 = icmp eq i32 %48, 51
  br i1 %cmp30, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %lor.lhs.false.29
  %49 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common31 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 1
  %50 = load %union.tree_node*, %union.tree_node** %type32, align 8
  %type33 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type33, i32 0, i32 15
  %51 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %52 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common34 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %type35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 1
  %53 = load %union.tree_node*, %union.tree_node** %type35, align 8
  %type36 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %main_variant37 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i32 0, i32 15
  %54 = load %union.tree_node*, %union.tree_node** %main_variant37, align 8
  %cmp38 = icmp ne %union.tree_node* %51, %54
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true, %lor.lhs.false, %if.end.17
  store %struct.rtx_def* inttoptr (i64 -1 to %struct.rtx_def*), %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true, %lor.lhs.false.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %55 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common41 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 0
  %56 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %56, %union.tree_node** %formal, align 8
  %57 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %common42 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %chain43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 0
  %58 = load %union.tree_node*, %union.tree_node** %chain43, align 8
  store %union.tree_node* %58, %union.tree_node** %actual, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.59, %for.end
  %59 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %tobool45 = icmp ne %union.tree_node* %59, null
  br i1 %tobool45, label %for.body.46, label %for.end.62

for.body.46:                                      ; preds = %for.cond.44
  %60 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %list47 = bitcast %union.tree_node* %60 to %struct.tree_list*
  %value48 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list47, i32 0, i32 2
  %61 = load %union.tree_node*, %union.tree_node** %value48, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %63 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %list49 = bitcast %union.tree_node* %63 to %struct.tree_list*
  %value50 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list49, i32 0, i32 2
  %64 = load %union.tree_node*, %union.tree_node** %value50, align 8
  %common51 = bitcast %union.tree_node* %64 to %struct.tree_common*
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 1
  %65 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %type53 = bitcast %union.tree_node* %65 to %struct.tree_type*
  %mode54 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type53, i32 0, i32 6
  %bf.load55 = load i32, i32* %mode54, align 4
  %bf.lshr56 = lshr i32 %bf.load55, 9
  %bf.clear57 = and i32 %bf.lshr56, 127
  %call58 = call %struct.rtx_def* @expand_expr(%union.tree_node* %61, %struct.rtx_def* %62, i32 %bf.clear57, i32 0)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.46
  %66 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %common60 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %chain61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 0
  %67 = load %union.tree_node*, %union.tree_node** %chain61, align 8
  store %union.tree_node* %67, %union.tree_node** %actual, align 8
  br label %for.cond.44

for.end.62:                                       ; preds = %for.cond.44
  %68 = load i32, i32* %nargs, align 4
  %conv = sext i32 %68 to i64
  %mul = mul i64 %conv, 8
  %call63 = call noalias i8* @xmalloc(i64 %mul)
  %69 = bitcast i8* %call63 to %struct.rtx_def**
  store %struct.rtx_def** %69, %struct.rtx_def*** %arg_vals, align 8
  %70 = load i32, i32* %nargs, align 4
  %conv64 = sext i32 %70 to i64
  %mul65 = mul i64 %conv64, 8
  %call66 = call noalias i8* @xmalloc(i64 %mul65)
  %71 = bitcast i8* %call66 to %union.tree_node**
  store %union.tree_node** %71, %union.tree_node*** %arg_trees, align 8
  %72 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl67 = bitcast %union.tree_node* %72 to %struct.tree_decl*
  %arguments68 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl67, i32 0, i32 10
  %73 = load %union.tree_node*, %union.tree_node** %arguments68, align 8
  store %union.tree_node* %73, %union.tree_node** %formal, align 8
  %74 = load %union.tree_node*, %union.tree_node** %parms.addr, align 8
  store %union.tree_node* %74, %union.tree_node** %actual, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.276, %for.end.62
  %75 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %tobool70 = icmp ne %union.tree_node* %75, null
  br i1 %tobool70, label %for.body.71, label %for.end.281

for.body.71:                                      ; preds = %for.cond.69
  %76 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common73 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %type74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 1
  %77 = load %union.tree_node*, %union.tree_node** %type74, align 8
  %78 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %list75 = bitcast %union.tree_node* %78 to %struct.tree_list*
  %value76 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list75, i32 0, i32 2
  %79 = load %union.tree_node*, %union.tree_node** %value76, align 8
  %call77 = call %union.tree_node* @convert(%union.tree_node* %77, %union.tree_node* %79)
  store %union.tree_node* %call77, %union.tree_node** %arg72, align 8
  %80 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common79 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %type80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 1
  %81 = load %union.tree_node*, %union.tree_node** %type80, align 8
  %type81 = bitcast %union.tree_node* %81 to %struct.tree_type*
  %mode82 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type81, i32 0, i32 6
  %bf.load83 = load i32, i32* %mode82, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 9
  %bf.clear85 = and i32 %bf.lshr84, 127
  store i32 %bf.clear85, i32* %mode78, align 4
  store i32 0, i32* %invisiref, align 4
  %82 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %83 = load i32, i32* %i, align 4
  %idxprom = sext i32 %83 to i64
  %84 = load %union.tree_node**, %union.tree_node*** %arg_trees, align 8
  %arrayidx86 = getelementptr inbounds %union.tree_node*, %union.tree_node** %84, i64 %idxprom
  store %union.tree_node* %82, %union.tree_node** %arrayidx86, align 8
  %85 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %85 to i64
  %86 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %86, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom87
  %87 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %loc, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load89 = load i32, i32* %89, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 66
  br i1 %cmp91, label %land.lhs.true.93, label %if.else

land.lhs.true.93:                                 ; preds = %for.body.71
  %90 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load97 = load i32, i32* %92, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp eq i32 %bf.clear98, 61
  br i1 %cmp99, label %land.lhs.true.101, label %if.else

land.lhs.true.101:                                ; preds = %land.lhs.true.93
  %93 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx106 to i32*
  %95 = load i32, i32* %rtuint, align 4
  %cmp107 = icmp ugt i32 %95, 57
  br i1 %cmp107, label %if.then.109, label %if.else

if.then.109:                                      ; preds = %land.lhs.true.101
  %96 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %common110 = bitcast %union.tree_node* %96 to %struct.tree_common*
  %type111 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common110, i32 0, i32 1
  %97 = load %union.tree_node*, %union.tree_node** %type111, align 8
  %call112 = call %struct.rtx_def* @assign_temp(%union.tree_node* %97, i32 1, i32 1, i32 1)
  store %struct.rtx_def* %call112, %struct.rtx_def** %stack_slot, align 8
  %98 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot, align 8
  %call113 = call %struct.rtx_def* @store_expr(%union.tree_node* %98, %struct.rtx_def* %99, i32 0)
  %100 = load %struct.rtx_def*, %struct.rtx_def** %stack_slot, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %102 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %102 to i64
  %103 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx118 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %103, i64 %idxprom117
  store %struct.rtx_def* %101, %struct.rtx_def** %arrayidx118, align 8
  store i32 1, i32* %invisiref, align 4
  br label %if.end.180

if.else:                                          ; preds = %land.lhs.true.101, %land.lhs.true.93, %for.body.71
  %104 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load119 = load i32, i32* %105, align 8
  %bf.clear120 = and i32 %bf.load119, 65535
  %cmp121 = icmp ne i32 %bf.clear120, 66
  br i1 %cmp121, label %if.then.123, label %if.else.176

if.then.123:                                      ; preds = %if.else
  %106 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load124 = load i32, i32* %107, align 8
  %bf.lshr125 = lshr i32 %bf.load124, 16
  %bf.clear126 = and i32 %bf.lshr125, 255
  %108 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %common127 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %type128 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common127, i32 0, i32 1
  %109 = load %union.tree_node*, %union.tree_node** %type128, align 8
  %type129 = bitcast %union.tree_node* %109 to %struct.tree_type*
  %mode130 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type129, i32 0, i32 6
  %bf.load131 = load i32, i32* %mode130, align 4
  %bf.lshr132 = lshr i32 %bf.load131, 9
  %bf.clear133 = and i32 %bf.lshr132, 127
  %cmp134 = icmp ne i32 %bf.clear126, %bf.clear133
  br i1 %cmp134, label %if.then.136, label %if.else.171

if.then.136:                                      ; preds = %if.then.123
  %110 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common137 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %type138 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common137, i32 0, i32 1
  %111 = load %union.tree_node*, %union.tree_node** %type138, align 8
  %common139 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common139, i32 0, i32 2
  %bf.load140 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr141 = lshr i32 %bf.load140, 13
  %bf.clear142 = and i32 %bf.lshr141, 1
  store i32 %bf.clear142, i32* %unsignedp, align 4
  %112 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common143 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %type144 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common143, i32 0, i32 1
  %113 = load %union.tree_node*, %union.tree_node** %type144, align 8
  %type145 = bitcast %union.tree_node* %113 to %struct.tree_type*
  %mode146 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type145, i32 0, i32 6
  %bf.load147 = load i32, i32* %mode146, align 4
  %bf.lshr148 = lshr i32 %bf.load147, 9
  %bf.clear149 = and i32 %bf.lshr148, 127
  store i32 %bf.clear149, i32* %pmode, align 4
  %114 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common150 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %type151 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common150, i32 0, i32 1
  %115 = load %union.tree_node*, %union.tree_node** %type151, align 8
  %116 = load i32, i32* %pmode, align 4
  %call152 = call i32 @promote_mode(%union.tree_node* %115, i32 %116, i32* %unsignedp, i32 0)
  store i32 %call152, i32* %pmode, align 4
  %117 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load153 = load i32, i32* %118, align 8
  %bf.lshr154 = lshr i32 %bf.load153, 16
  %bf.clear155 = and i32 %bf.lshr154, 255
  %119 = load i32, i32* %pmode, align 4
  %cmp156 = icmp ne i32 %bf.clear155, %119
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.then.136
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 775, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.159:                                       ; preds = %if.then.136
  %120 = load i32, i32* %pmode, align 4
  %121 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %common160 = bitcast %union.tree_node* %121 to %struct.tree_common*
  %type161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common160, i32 0, i32 1
  %122 = load %union.tree_node*, %union.tree_node** %type161, align 8
  %type162 = bitcast %union.tree_node* %122 to %struct.tree_type*
  %mode163 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type162, i32 0, i32 6
  %bf.load164 = load i32, i32* %mode163, align 4
  %bf.lshr165 = lshr i32 %bf.load164, 9
  %bf.clear166 = and i32 %bf.lshr165, 127
  %123 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %124 = load i32, i32* %mode78, align 4
  %call167 = call %struct.rtx_def* @expand_expr(%union.tree_node* %123, %struct.rtx_def* null, i32 %124, i32 1)
  %125 = load i32, i32* %unsignedp, align 4
  %call168 = call %struct.rtx_def* @convert_modes(i32 %120, i32 %bf.clear166, %struct.rtx_def* %call167, i32 %125)
  %126 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %126 to i64
  %127 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx170 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %127, i64 %idxprom169
  store %struct.rtx_def* %call168, %struct.rtx_def** %arrayidx170, align 8
  br label %if.end.175

if.else.171:                                      ; preds = %if.then.123
  %128 = load %union.tree_node*, %union.tree_node** %arg72, align 8
  %129 = load i32, i32* %mode78, align 4
  %call172 = call %struct.rtx_def* @expand_expr(%union.tree_node* %128, %struct.rtx_def* null, i32 %129, i32 1)
  %130 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %130 to i64
  %131 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx174 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %131, i64 %idxprom173
  store %struct.rtx_def* %call172, %struct.rtx_def** %arrayidx174, align 8
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.171, %if.end.159
  br label %if.end.179

if.else.176:                                      ; preds = %if.else
  %132 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %132 to i64
  %133 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx178 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %133, i64 %idxprom177
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx178, align 8
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.end.175
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %if.then.109
  %134 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %134 to i64
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx182 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %135, i64 %idxprom181
  %136 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx182, align 8
  %cmp183 = icmp ne %struct.rtx_def* %136, null
  br i1 %cmp183, label %land.lhs.true.185, label %if.end.238

land.lhs.true.185:                                ; preds = %if.end.180
  %137 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common186 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common186, i32 0, i32 2
  %bf.load187 = load i32, i32* %readonly_flag, align 8
  %bf.lshr188 = lshr i32 %bf.load187, 12
  %bf.clear189 = and i32 %bf.lshr188, 1
  %tobool190 = icmp ne i32 %bf.clear189, 0
  br i1 %tobool190, label %lor.lhs.false.191, label %if.then.229

lor.lhs.false.191:                                ; preds = %land.lhs.true.185
  %138 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp192 = icmp ne %struct.rtx_def* %138, null
  br i1 %cmp192, label %land.lhs.true.194, label %lor.lhs.false.222

land.lhs.true.194:                                ; preds = %lor.lhs.false.191
  %139 = load i32, i32* %invisiref, align 4
  %tobool195 = icmp ne i32 %139, 0
  br i1 %tobool195, label %lor.lhs.false.222, label %land.lhs.true.196

land.lhs.true.196:                                ; preds = %land.lhs.true.194
  %140 = load i32, i32* %i, align 4
  %idxprom197 = sext i32 %140 to i64
  %141 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx198 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %141, i64 %idxprom197
  %142 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx198, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load199 = load i32, i32* %143, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 61
  br i1 %cmp201, label %land.lhs.true.217, label %lor.lhs.false.203

lor.lhs.false.203:                                ; preds = %land.lhs.true.196
  %144 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %144 to i64
  %145 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx205 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %145, i64 %idxprom204
  %146 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx205, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %bf.load206 = load i32, i32* %147, align 8
  %bf.clear207 = and i32 %bf.load206, 65535
  %cmp208 = icmp eq i32 %bf.clear207, 63
  br i1 %cmp208, label %land.lhs.true.217, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %lor.lhs.false.203
  %148 = load i32, i32* %i, align 4
  %idxprom211 = sext i32 %148 to i64
  %149 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx212 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %149, i64 %idxprom211
  %150 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx212, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %bf.load213 = load i32, i32* %151, align 8
  %bf.clear214 = and i32 %bf.load213, 65535
  %cmp215 = icmp eq i32 %bf.clear214, 66
  br i1 %cmp215, label %land.lhs.true.217, label %lor.lhs.false.222

land.lhs.true.217:                                ; preds = %lor.lhs.false.210, %lor.lhs.false.203, %land.lhs.true.196
  %152 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %152 to i64
  %153 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx219 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %153, i64 %idxprom218
  %154 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx219, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call220 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %154, %struct.rtx_def* %155)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.then.229, label %lor.lhs.false.222

lor.lhs.false.222:                                ; preds = %land.lhs.true.217, %lor.lhs.false.210, %land.lhs.true.194, %lor.lhs.false.191
  %156 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %156 to i64
  %157 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx224 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %157, i64 %idxprom223
  %158 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx224, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load225 = load i32, i32* %159, align 8
  %bf.clear226 = and i32 %bf.load225, 65535
  %cmp227 = icmp eq i32 %bf.clear226, 63
  br i1 %cmp227, label %if.then.229, label %if.end.238

if.then.229:                                      ; preds = %lor.lhs.false.222, %land.lhs.true.217, %land.lhs.true.185
  %160 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load230 = load i32, i32* %161, align 8
  %bf.lshr231 = lshr i32 %bf.load230, 16
  %bf.clear232 = and i32 %bf.lshr231, 255
  %162 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %162 to i64
  %163 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx234 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %163, i64 %idxprom233
  %164 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx234, align 8
  %call235 = call %struct.rtx_def* @copy_to_mode_reg(i32 %bf.clear232, %struct.rtx_def* %164)
  %165 = load i32, i32* %i, align 4
  %idxprom236 = sext i32 %165 to i64
  %166 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx237 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %166, i64 %idxprom236
  store %struct.rtx_def* %call235, %struct.rtx_def** %arrayidx237, align 8
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.229, %lor.lhs.false.222, %if.end.180
  %167 = load i32, i32* %i, align 4
  %idxprom239 = sext i32 %167 to i64
  %168 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx240 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %168, i64 %idxprom239
  %169 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx240, align 8
  %cmp241 = icmp ne %struct.rtx_def* %169, null
  br i1 %cmp241, label %land.lhs.true.243, label %if.end.275

land.lhs.true.243:                                ; preds = %if.end.238
  %170 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %170 to i64
  %171 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx245 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %171, i64 %idxprom244
  %172 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx245, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load246 = load i32, i32* %173, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp eq i32 %bf.clear247, 61
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.275

land.lhs.true.250:                                ; preds = %land.lhs.true.243
  %174 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common251 = bitcast %union.tree_node* %174 to %struct.tree_common*
  %type252 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common251, i32 0, i32 1
  %175 = load %union.tree_node*, %union.tree_node** %type252, align 8
  %common253 = bitcast %union.tree_node* %175 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common253, i32 0, i32 2
  %bf.load254 = load i32, i32* %code, align 8
  %bf.clear255 = and i32 %bf.load254, 255
  %cmp256 = icmp eq i32 %bf.clear255, 13
  br i1 %cmp256, label %if.then.267, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %land.lhs.true.250
  %176 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common259 = bitcast %union.tree_node* %176 to %struct.tree_common*
  %type260 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common259, i32 0, i32 1
  %177 = load %union.tree_node*, %union.tree_node** %type260, align 8
  %common261 = bitcast %union.tree_node* %177 to %struct.tree_common*
  %code262 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common261, i32 0, i32 2
  %bf.load263 = load i32, i32* %code262, align 8
  %bf.clear264 = and i32 %bf.load263, 255
  %cmp265 = icmp eq i32 %bf.clear264, 15
  br i1 %cmp265, label %if.then.267, label %if.end.275

if.then.267:                                      ; preds = %lor.lhs.false.258, %land.lhs.true.250
  %178 = load i32, i32* %i, align 4
  %idxprom268 = sext i32 %178 to i64
  %179 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx269 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %179, i64 %idxprom268
  %180 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx269, align 8
  %181 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common270 = bitcast %union.tree_node* %181 to %struct.tree_common*
  %type271 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common270, i32 0, i32 1
  %182 = load %union.tree_node*, %union.tree_node** %type271, align 8
  %common272 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %type273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 1
  %183 = load %union.tree_node*, %union.tree_node** %type273, align 8
  %type274 = bitcast %union.tree_node* %183 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type274, i32 0, i32 7
  %184 = load i32, i32* %align, align 4
  call void @mark_reg_pointer(%struct.rtx_def* %180, i32 %184)
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.267, %lor.lhs.false.258, %land.lhs.true.243, %if.end.238
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.275
  %185 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common277 = bitcast %union.tree_node* %185 to %struct.tree_common*
  %chain278 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common277, i32 0, i32 0
  %186 = load %union.tree_node*, %union.tree_node** %chain278, align 8
  store %union.tree_node* %186, %union.tree_node** %formal, align 8
  %187 = load %union.tree_node*, %union.tree_node** %actual, align 8
  %common279 = bitcast %union.tree_node* %187 to %struct.tree_common*
  %chain280 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common279, i32 0, i32 0
  %188 = load %union.tree_node*, %union.tree_node** %chain280, align 8
  store %union.tree_node* %188, %union.tree_node** %actual, align 8
  %189 = load i32, i32* %i, align 4
  %inc = add nsw i32 %189, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.69

for.end.281:                                      ; preds = %for.cond.69
  %call282 = call noalias i8* @xcalloc(i64 1, i64 648)
  %190 = bitcast i8* %call282 to %struct.inline_remap*
  store %struct.inline_remap* %190, %struct.inline_remap** %map, align 8
  %191 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %192 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %fndecl283 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %192, i32 0, i32 1
  store %union.tree_node* %191, %union.tree_node** %fndecl283, align 8
  %call284 = call %struct.varray_head_tag* @varray_init(i64 10, i64 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0))
  %193 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %193, i32 0, i32 3
  store %struct.varray_head_tag* %call284, %struct.varray_head_tag** %block_map, align 8
  %194 = load i32, i32* %max_regno, align 4
  %conv285 = sext i32 %194 to i64
  %call286 = call noalias i8* @xcalloc(i64 %conv285, i64 8)
  %195 = bitcast i8* %call286 to %struct.rtx_def**
  %196 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %196, i32 0, i32 4
  store %struct.rtx_def** %195, %struct.rtx_def*** %reg_map, align 8
  %197 = load i32, i32* %max_labelno, align 4
  %conv287 = sext i32 %197 to i64
  %mul288 = mul i64 %conv287, 8
  %call289 = call noalias i8* @xmalloc(i64 %mul288)
  %198 = bitcast i8* %call289 to %struct.rtx_def**
  store %struct.rtx_def** %198, %struct.rtx_def*** %real_label_map, align 8
  %199 = load %struct.rtx_def**, %struct.rtx_def*** %real_label_map, align 8
  %200 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %200, i32 0, i32 5
  store %struct.rtx_def** %199, %struct.rtx_def*** %label_map, align 8
  %201 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %local_return_label = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %201, i32 0, i32 15
  store %struct.rtx_def* null, %struct.rtx_def** %local_return_label, align 8
  %202 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit290 = getelementptr inbounds %struct.function, %struct.function* %202, i32 0, i32 3
  %203 = load %struct.emit_status*, %struct.emit_status** %emit290, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %203, i32 0, i32 6
  %204 = load i32, i32* %x_cur_insn_uid, align 4
  %add291 = add nsw i32 %204, 1
  store i32 %add291, i32* %inl_max_uid, align 4
  %205 = load i32, i32* %inl_max_uid, align 4
  %conv292 = sext i32 %205 to i64
  %call293 = call noalias i8* @xcalloc(i64 %conv292, i64 8)
  %206 = bitcast i8* %call293 to %struct.rtx_def**
  %207 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %207, i32 0, i32 6
  store %struct.rtx_def** %206, %struct.rtx_def*** %insn_map, align 8
  %208 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %min_insnno = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %208, i32 0, i32 7
  store i32 0, i32* %min_insnno, align 4
  %209 = load i32, i32* %inl_max_uid, align 4
  %210 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %max_insnno = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %210, i32 0, i32 8
  store i32 %209, i32* %max_insnno, align 4
  %211 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %integrating = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %211, i32 0, i32 0
  store i32 1, i32* %integrating, align 4
  %212 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %compare_src = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %212, i32 0, i32 21
  store %struct.rtx_def* null, %struct.rtx_def** %compare_src, align 8
  %213 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %compare_mode = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %213, i32 0, i32 22
  store i32 0, i32* %compare_mode, align 4
  %call294 = call i32 @max_reg_num()
  %214 = load i32, i32* %max_regno, align 4
  %sub = sub nsw i32 %214, 53
  %add295 = add nsw i32 %call294, %sub
  %215 = load i32, i32* %nargs, align 4
  %mul296 = mul nsw i32 15, %215
  %add297 = add nsw i32 %add295, %mul296
  %add298 = add nsw i32 %add297, 10
  %conv299 = sext i32 %add298 to i64
  %call300 = call %struct.varray_head_tag* @varray_init(i64 %conv299, i64 16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0))
  %216 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %216, i32 0, i32 9
  store %struct.varray_head_tag* %call300, %struct.varray_head_tag** %const_equiv_varray, align 8
  %217 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %217, i32 0, i32 10
  store i32 0, i32* %const_age, align 4
  %call301 = call %struct.rtx_def* @get_last_insn()
  %218 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insns_at_start = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %218, i32 0, i32 2
  store %struct.rtx_def* %call301, %struct.rtx_def** %insns_at_start, align 8
  %219 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insns_at_start302 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %219, i32 0, i32 2
  %220 = load %struct.rtx_def*, %struct.rtx_def** %insns_at_start302, align 8
  %cmp303 = icmp eq %struct.rtx_def* %220, null
  br i1 %cmp303, label %if.then.305, label %if.end.308

if.then.305:                                      ; preds = %for.end.281
  %call306 = call %struct.rtx_def* @emit_note(i8* null, i32 -99)
  %221 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insns_at_start307 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %221, i32 0, i32 2
  store %struct.rtx_def* %call306, %struct.rtx_def** %insns_at_start307, align 8
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.305, %for.end.281
  %222 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit309 = getelementptr inbounds %struct.function, %struct.function* %222, i32 0, i32 3
  %223 = load %struct.emit_status*, %struct.emit_status** %emit309, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %223, i32 0, i32 10
  %224 = load i8*, i8** %regno_pointer_align, align 8
  %225 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %regno_pointer_align310 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %225, i32 0, i32 16
  store i8* %224, i8** %regno_pointer_align310, align 8
  %226 = load %struct.function*, %struct.function** %inl_f, align 8
  %emit311 = getelementptr inbounds %struct.function, %struct.function* %226, i32 0, i32 3
  %227 = load %struct.emit_status*, %struct.emit_status** %emit311, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %227, i32 0, i32 12
  %228 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %229 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %x_regno_reg_rtx312 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %229, i32 0, i32 17
  store %struct.rtx_def** %228, %struct.rtx_def*** %x_regno_reg_rtx312, align 8
  %230 = load %struct.function*, %struct.function** %inl_f, align 8
  %outgoing_args_size = getelementptr inbounds %struct.function, %struct.function* %230, i32 0, i32 11
  %231 = load i32, i32* %outgoing_args_size, align 4
  %232 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size313 = getelementptr inbounds %struct.function, %struct.function* %232, i32 0, i32 11
  %233 = load i32, i32* %outgoing_args_size313, align 4
  %cmp314 = icmp sgt i32 %231, %233
  br i1 %cmp314, label %if.then.316, label %if.end.319

if.then.316:                                      ; preds = %if.end.308
  %234 = load %struct.function*, %struct.function** %inl_f, align 8
  %outgoing_args_size317 = getelementptr inbounds %struct.function, %struct.function* %234, i32 0, i32 11
  %235 = load i32, i32* %outgoing_args_size317, align 4
  %236 = load %struct.function*, %struct.function** @cfun, align 8
  %outgoing_args_size318 = getelementptr inbounds %struct.function, %struct.function* %236, i32 0, i32 11
  store i32 %235, i32* %outgoing_args_size318, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.316, %if.end.308
  %237 = load %struct.function*, %struct.function** %inl_f, align 8
  %uses_pic_offset_table = getelementptr inbounds %struct.function, %struct.function* %237, i32 0, i32 56
  %238 = bitcast i24* %uses_pic_offset_table to i32*
  %bf.load320 = load i32, i32* %238, align 8
  %bf.lshr321 = lshr i32 %bf.load320, 21
  %bf.clear322 = and i32 %bf.lshr321, 1
  %tobool323 = icmp ne i32 %bf.clear322, 0
  br i1 %tobool323, label %if.then.324, label %if.end.328

if.then.324:                                      ; preds = %if.end.319
  %239 = load %struct.function*, %struct.function** @cfun, align 8
  %uses_pic_offset_table325 = getelementptr inbounds %struct.function, %struct.function* %239, i32 0, i32 56
  %240 = bitcast i24* %uses_pic_offset_table325 to i32*
  %bf.load326 = load i32, i32* %240, align 8
  %bf.clear327 = and i32 %bf.load326, -2097153
  %bf.set = or i32 %bf.clear327, 2097152
  store i32 %bf.set, i32* %240, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.324, %if.end.319
  %241 = load %struct.function*, %struct.function** %inl_f, align 8
  %needs_context = getelementptr inbounds %struct.function, %struct.function* %241, i32 0, i32 56
  %242 = bitcast i24* %needs_context to i32*
  %bf.load329 = load i32, i32* %242, align 8
  %bf.lshr330 = lshr i32 %bf.load329, 3
  %bf.clear331 = and i32 %bf.lshr330, 1
  %tobool332 = icmp ne i32 %bf.clear331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.335

if.then.333:                                      ; preds = %if.end.328
  %243 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %call334 = call %struct.rtx_def* @lookup_static_chain(%union.tree_node* %243)
  store %struct.rtx_def* %call334, %struct.rtx_def** %static_chain_value, align 8
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.333, %if.end.328
  %244 = load %struct.rtx_def*, %struct.rtx_def** %parm_insns, align 8
  %245 = bitcast %struct.rtx_def* %244 to i32*
  %bf.load336 = load i32, i32* %245, align 8
  %bf.clear337 = and i32 %bf.load336, 65535
  %cmp338 = icmp eq i32 %bf.clear337, 37
  br i1 %cmp338, label %land.lhs.true.340, label %if.end.358

land.lhs.true.340:                                ; preds = %if.end.335
  %246 = load %struct.rtx_def*, %struct.rtx_def** %parm_insns, align 8
  %fld341 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx342 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld341, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx342 to i32*
  %247 = load i32, i32* %rtint, align 4
  %cmp343 = icmp sgt i32 %247, 0
  br i1 %cmp343, label %if.then.345, label %if.end.358

if.then.345:                                      ; preds = %land.lhs.true.340
  %248 = load %struct.rtx_def*, %struct.rtx_def** %parm_insns, align 8
  %fld346 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld346, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx347 to i8**
  %249 = load i8*, i8** %rtstr, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %parm_insns, align 8
  %fld348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld348, i32 0, i64 4
  %rtint350 = bitcast %union.rtunion_def* %arrayidx349 to i32*
  %251 = load i32, i32* %rtint350, align 4
  %call351 = call %struct.rtx_def* @emit_note(i8* %249, i32 %251)
  store %struct.rtx_def* %call351, %struct.rtx_def** %note, align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool352 = icmp ne %struct.rtx_def* %252, null
  br i1 %tobool352, label %if.then.353, label %if.end.357

if.then.353:                                      ; preds = %if.then.345
  %253 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load354 = load i32, i32* %254, align 8
  %bf.clear355 = and i32 %bf.load354, -1073741825
  %bf.set356 = or i32 %bf.clear355, 1073741824
  store i32 %bf.set356, i32* %254, align 8
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.353, %if.then.345
  br label %if.end.358

if.end.358:                                       ; preds = %if.end.357, %land.lhs.true.340, %if.end.335
  store i32 0, i32* %i, align 4
  br label %for.cond.359

for.cond.359:                                     ; preds = %for.inc.570, %if.end.358
  %255 = load i32, i32* %i, align 4
  %256 = load i32, i32* %nargs, align 4
  %cmp360 = icmp slt i32 %255, %256
  br i1 %cmp360, label %for.body.362, label %for.end.572

for.body.362:                                     ; preds = %for.cond.359
  %257 = load i32, i32* %i, align 4
  %idxprom363 = sext i32 %257 to i64
  %258 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %arrayidx364 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %258, i64 %idxprom363
  %259 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx364, align 8
  store %struct.rtx_def* %259, %struct.rtx_def** %copy, align 8
  %260 = load i32, i32* %i, align 4
  %idxprom365 = sext i32 %260 to i64
  %261 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  %elem366 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %261, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem366, i32 0, i64 %idxprom365
  %262 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx367, align 8
  store %struct.rtx_def* %262, %struct.rtx_def** %loc, align 8
  %263 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %264 = bitcast %struct.rtx_def* %263 to i32*
  %bf.load368 = load i32, i32* %264, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 66
  br i1 %cmp370, label %land.lhs.true.372, label %if.else.517

land.lhs.true.372:                                ; preds = %for.body.362
  %265 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 0
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %bf.load376 = load i32, i32* %267, align 8
  %bf.clear377 = and i32 %bf.load376, 65535
  %cmp378 = icmp eq i32 %bf.clear377, 61
  br i1 %cmp378, label %land.lhs.true.380, label %if.else.517

land.lhs.true.380:                                ; preds = %land.lhs.true.372
  %268 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld381, i32 0, i64 0
  %rtx383 = bitcast %union.rtunion_def* %arrayidx382 to %struct.rtx_def**
  %269 = load %struct.rtx_def*, %struct.rtx_def** %rtx383, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 0
  %rtuint386 = bitcast %union.rtunion_def* %arrayidx385 to i32*
  %270 = load i32, i32* %rtuint386, align 4
  %cmp387 = icmp ugt i32 %270, 57
  br i1 %cmp387, label %if.then.389, label %if.else.517

if.then.389:                                      ; preds = %land.lhs.true.380
  %271 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %272 = bitcast %struct.rtx_def* %271 to i32*
  %bf.load390 = load i32, i32* %272, align 8
  %bf.clear391 = and i32 %bf.load390, 65535
  %cmp392 = icmp ne i32 %bf.clear391, 61
  br i1 %cmp392, label %if.then.394, label %if.end.507

if.then.394:                                      ; preds = %if.then.389
  %273 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call395 = call %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %273)
  store %struct.rtx_def* %call395, %struct.rtx_def** %temp, align 8
  %274 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %275 = bitcast %struct.rtx_def* %274 to i32*
  %bf.load396 = load i32, i32* %275, align 8
  %bf.clear397 = and i32 %bf.load396, 65535
  %cmp398 = icmp eq i32 %bf.clear397, 67
  br i1 %cmp398, label %if.then.474, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %if.then.394
  %276 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %277 = bitcast %struct.rtx_def* %276 to i32*
  %bf.load401 = load i32, i32* %277, align 8
  %bf.clear402 = and i32 %bf.load401, 65535
  %cmp403 = icmp eq i32 %bf.clear402, 68
  br i1 %cmp403, label %if.then.474, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %lor.lhs.false.400
  %278 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %279 = bitcast %struct.rtx_def* %278 to i32*
  %bf.load406 = load i32, i32* %279, align 8
  %bf.clear407 = and i32 %bf.load406, 65535
  %cmp408 = icmp eq i32 %bf.clear407, 54
  br i1 %cmp408, label %if.then.474, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %lor.lhs.false.405
  %280 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %281 = bitcast %struct.rtx_def* %280 to i32*
  %bf.load411 = load i32, i32* %281, align 8
  %bf.clear412 = and i32 %bf.load411, 65535
  %cmp413 = icmp eq i32 %bf.clear412, 55
  br i1 %cmp413, label %if.then.474, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %lor.lhs.false.410
  %282 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %283 = bitcast %struct.rtx_def* %282 to i32*
  %bf.load416 = load i32, i32* %283, align 8
  %bf.clear417 = and i32 %bf.load416, 65535
  %cmp418 = icmp eq i32 %bf.clear417, 58
  br i1 %cmp418, label %if.then.474, label %lor.lhs.false.420

lor.lhs.false.420:                                ; preds = %lor.lhs.false.415
  %284 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %285 = bitcast %struct.rtx_def* %284 to i32*
  %bf.load421 = load i32, i32* %285, align 8
  %bf.clear422 = and i32 %bf.load421, 65535
  %cmp423 = icmp eq i32 %bf.clear422, 134
  br i1 %cmp423, label %if.then.474, label %lor.lhs.false.425

lor.lhs.false.425:                                ; preds = %lor.lhs.false.420
  %286 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %287 = bitcast %struct.rtx_def* %286 to i32*
  %bf.load426 = load i32, i32* %287, align 8
  %bf.clear427 = and i32 %bf.load426, 65535
  %cmp428 = icmp eq i32 %bf.clear427, 56
  br i1 %cmp428, label %if.then.474, label %lor.lhs.false.430

lor.lhs.false.430:                                ; preds = %lor.lhs.false.425
  %288 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %bf.load431 = load i32, i32* %289, align 8
  %bf.clear432 = and i32 %bf.load431, 65535
  %cmp433 = icmp eq i32 %bf.clear432, 140
  br i1 %cmp433, label %if.then.474, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %lor.lhs.false.430
  %290 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %291 = bitcast %struct.rtx_def* %290 to i32*
  %bf.load436 = load i32, i32* %291, align 8
  %bf.clear437 = and i32 %bf.load436, 65535
  %cmp438 = icmp eq i32 %bf.clear437, 75
  br i1 %cmp438, label %land.lhs.true.440, label %if.end.506

land.lhs.true.440:                                ; preds = %lor.lhs.false.435
  %292 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld441 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx442 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld441, i32 0, i64 1
  %rtx443 = bitcast %union.rtunion_def* %arrayidx442 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx443, align 8
  %294 = bitcast %struct.rtx_def* %293 to i32*
  %bf.load444 = load i32, i32* %294, align 8
  %bf.clear445 = and i32 %bf.load444, 65535
  %cmp446 = icmp eq i32 %bf.clear445, 54
  br i1 %cmp446, label %land.lhs.true.448, label %if.end.506

land.lhs.true.448:                                ; preds = %land.lhs.true.440
  %295 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %296 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  %297 = bitcast %struct.rtx_def* %296 to i32*
  %bf.load452 = load i32, i32* %297, align 8
  %bf.clear453 = and i32 %bf.load452, 65535
  %cmp454 = icmp eq i32 %bf.clear453, 61
  br i1 %cmp454, label %land.lhs.true.456, label %if.end.506

land.lhs.true.456:                                ; preds = %land.lhs.true.448
  %298 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld457 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx458 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld457, i32 0, i64 0
  %rtx459 = bitcast %union.rtunion_def* %arrayidx458 to %struct.rtx_def**
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx459, align 8
  %fld460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %arrayidx461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld460, i32 0, i64 0
  %rtuint462 = bitcast %union.rtunion_def* %arrayidx461 to i32*
  %300 = load i32, i32* %rtuint462, align 4
  %cmp463 = icmp uge i32 %300, 53
  br i1 %cmp463, label %land.lhs.true.465, label %if.end.506

land.lhs.true.465:                                ; preds = %land.lhs.true.456
  %301 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 0
  %rtx468 = bitcast %union.rtunion_def* %arrayidx467 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx468, align 8
  %fld469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld469, i32 0, i64 0
  %rtuint471 = bitcast %union.rtunion_def* %arrayidx470 to i32*
  %303 = load i32, i32* %rtuint471, align 4
  %cmp472 = icmp ule i32 %303, 57
  br i1 %cmp472, label %if.then.474, label %if.end.506

if.then.474:                                      ; preds = %land.lhs.true.465, %lor.lhs.false.430, %lor.lhs.false.425, %lor.lhs.false.420, %lor.lhs.false.415, %lor.lhs.false.410, %lor.lhs.false.405, %lor.lhs.false.400, %if.then.394
  %304 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtuint477 = bitcast %union.rtunion_def* %arrayidx476 to i32*
  %305 = load i32, i32* %rtuint477, align 4
  %conv478 = zext i32 %305 to i64
  %306 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray479 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %306, i32 0, i32 9
  %307 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray479, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %307, i32 0, i32 0
  %308 = load i64, i64* %num_elements, align 8
  %cmp480 = icmp uge i64 %conv478, %308
  br i1 %cmp480, label %if.then.482, label %if.end.498

if.then.482:                                      ; preds = %if.then.474
  %309 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %310 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray483 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %310, i32 0, i32 9
  %311 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray483, align 8
  %cmp484 = icmp eq %struct.varray_head_tag* %309, %311
  %conv485 = zext i1 %cmp484 to i32
  store i32 %conv485, i32* %is_global, align 4
  %312 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray486 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %312, i32 0, i32 9
  %313 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray486, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld487, i32 0, i64 0
  %rtuint489 = bitcast %union.rtunion_def* %arrayidx488 to i32*
  %315 = load i32, i32* %rtuint489, align 4
  %add490 = add i32 %315, 1
  %conv491 = zext i32 %add490 to i64
  %call492 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %313, i64 %conv491)
  %316 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray493 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %316, i32 0, i32 9
  store %struct.varray_head_tag* %call492, %struct.varray_head_tag** %const_equiv_varray493, align 8
  %317 = load i32, i32* %is_global, align 4
  %tobool494 = icmp ne i32 %317, 0
  br i1 %tobool494, label %if.then.495, label %if.end.497

if.then.495:                                      ; preds = %if.then.482
  %318 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray496 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %318, i32 0, i32 9
  %319 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray496, align 8
  store %struct.varray_head_tag* %319, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end.497

if.end.497:                                       ; preds = %if.then.495, %if.then.482
  br label %if.end.498

if.end.498:                                       ; preds = %if.end.497, %if.then.474
  %320 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %arrayidx500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld499, i32 0, i64 0
  %rtuint501 = bitcast %union.rtunion_def* %arrayidx500 to i32*
  %321 = load i32, i32* %rtuint501, align 4
  %idxprom502 = zext i32 %321 to i64
  %322 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray503 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %322, i32 0, i32 9
  %323 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray503, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %323, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx504 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom502
  store %struct.const_equiv_data* %arrayidx504, %struct.const_equiv_data** %p, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %325 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx505 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %325, i32 0, i32 0
  store %struct.rtx_def* %324, %struct.rtx_def** %rtx505, align 8
  %326 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %326, i32 0, i32 1
  store i32 -1, i32* %age, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.end.498, %land.lhs.true.465, %land.lhs.true.456, %land.lhs.true.448, %land.lhs.true.440, %lor.lhs.false.435
  %327 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %327, %struct.rtx_def** %copy, align 8
  br label %if.end.507

if.end.507:                                       ; preds = %if.end.506, %if.then.389
  %328 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %329 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld508 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %329, i32 0, i32 1
  %arrayidx509 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld508, i32 0, i64 0
  %rtx510 = bitcast %union.rtunion_def* %arrayidx509 to %struct.rtx_def**
  %330 = load %struct.rtx_def*, %struct.rtx_def** %rtx510, align 8
  %fld511 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld511, i32 0, i64 0
  %rtuint513 = bitcast %union.rtunion_def* %arrayidx512 to i32*
  %331 = load i32, i32* %rtuint513, align 4
  %idxprom514 = zext i32 %331 to i64
  %332 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map515 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %332, i32 0, i32 4
  %333 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map515, align 8
  %arrayidx516 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %333, i64 %idxprom514
  store %struct.rtx_def* %328, %struct.rtx_def** %arrayidx516, align 8
  br label %if.end.569

if.else.517:                                      ; preds = %land.lhs.true.380, %land.lhs.true.372, %for.body.362
  %334 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %335 = bitcast %struct.rtx_def* %334 to i32*
  %bf.load518 = load i32, i32* %335, align 8
  %bf.clear519 = and i32 %bf.load518, 65535
  %cmp520 = icmp eq i32 %bf.clear519, 66
  br i1 %cmp520, label %if.then.522, label %if.else.531

if.then.522:                                      ; preds = %if.else.517
  %336 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl523 = bitcast %union.tree_node* %336 to %struct.tree_decl*
  %u2524 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl523, i32 0, i32 19
  %f525 = bitcast %union.anon.1* %u2524 to %struct.function**
  %337 = load %struct.function*, %struct.function** %f525, align 8
  %args_size = getelementptr inbounds %struct.function, %struct.function* %337, i32 0, i32 9
  %338 = load i32, i32* %args_size, align 4
  %cmp526 = icmp ne i32 %338, 0
  br i1 %cmp526, label %if.then.528, label %if.end.530

if.then.528:                                      ; preds = %if.then.522
  %339 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %340 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call529 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %339, %struct.inline_remap* %340, i32 0)
  br label %if.end.530

if.end.530:                                       ; preds = %if.then.528, %if.then.522
  br label %if.end.568

if.else.531:                                      ; preds = %if.else.517
  %341 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %bf.load532 = load i32, i32* %342, align 8
  %bf.clear533 = and i32 %bf.load532, 65535
  %cmp534 = icmp eq i32 %bf.clear533, 61
  br i1 %cmp534, label %if.then.536, label %if.else.537

if.then.536:                                      ; preds = %if.else.531
  %343 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %344 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %345 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  call void @process_reg_param(%struct.inline_remap* %343, %struct.rtx_def* %344, %struct.rtx_def* %345)
  br label %if.end.567

if.else.537:                                      ; preds = %if.else.531
  %346 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %347 = bitcast %struct.rtx_def* %346 to i32*
  %bf.load538 = load i32, i32* %347, align 8
  %bf.clear539 = and i32 %bf.load538, 65535
  %cmp540 = icmp eq i32 %bf.clear539, 65
  br i1 %cmp540, label %if.then.542, label %if.else.565

if.then.542:                                      ; preds = %if.else.537
  %348 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld543 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %arrayidx544 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld543, i32 0, i64 0
  %rtx545 = bitcast %union.rtunion_def* %arrayidx544 to %struct.rtx_def**
  %349 = load %struct.rtx_def*, %struct.rtx_def** %rtx545, align 8
  %350 = bitcast %struct.rtx_def* %349 to i32*
  %bf.load546 = load i32, i32* %350, align 8
  %bf.lshr547 = lshr i32 %bf.load546, 16
  %bf.clear548 = and i32 %bf.lshr547, 255
  %351 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %call549 = call %struct.rtx_def* @gen_realpart(i32 %bf.clear548, %struct.rtx_def* %351)
  store %struct.rtx_def* %call549, %struct.rtx_def** %locreal, align 8
  %352 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %352, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 0
  %rtx552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtx_def**
  %353 = load %struct.rtx_def*, %struct.rtx_def** %rtx552, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load553 = load i32, i32* %354, align 8
  %bf.lshr554 = lshr i32 %bf.load553, 16
  %bf.clear555 = and i32 %bf.lshr554, 255
  %355 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %call556 = call %struct.rtx_def* @gen_imagpart(i32 %bf.clear555, %struct.rtx_def* %355)
  store %struct.rtx_def* %call556, %struct.rtx_def** %locimag, align 8
  %356 = load %struct.rtx_def*, %struct.rtx_def** %locreal, align 8
  %357 = bitcast %struct.rtx_def* %356 to i32*
  %bf.load557 = load i32, i32* %357, align 8
  %bf.lshr558 = lshr i32 %bf.load557, 16
  %bf.clear559 = and i32 %bf.lshr558, 255
  %358 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call560 = call %struct.rtx_def* @gen_realpart(i32 %bf.clear559, %struct.rtx_def* %358)
  store %struct.rtx_def* %call560, %struct.rtx_def** %copyreal, align 8
  %359 = load %struct.rtx_def*, %struct.rtx_def** %locimag, align 8
  %360 = bitcast %struct.rtx_def* %359 to i32*
  %bf.load561 = load i32, i32* %360, align 8
  %bf.lshr562 = lshr i32 %bf.load561, 16
  %bf.clear563 = and i32 %bf.lshr562, 255
  %361 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call564 = call %struct.rtx_def* @gen_imagpart(i32 %bf.clear563, %struct.rtx_def* %361)
  store %struct.rtx_def* %call564, %struct.rtx_def** %copyimag, align 8
  %362 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %363 = load %struct.rtx_def*, %struct.rtx_def** %locreal, align 8
  %364 = load %struct.rtx_def*, %struct.rtx_def** %copyreal, align 8
  call void @process_reg_param(%struct.inline_remap* %362, %struct.rtx_def* %363, %struct.rtx_def* %364)
  %365 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %366 = load %struct.rtx_def*, %struct.rtx_def** %locimag, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %copyimag, align 8
  call void @process_reg_param(%struct.inline_remap* %365, %struct.rtx_def* %366, %struct.rtx_def* %367)
  br label %if.end.566

if.else.565:                                      ; preds = %if.else.537
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 964, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.566:                                       ; preds = %if.then.542
  br label %if.end.567

if.end.567:                                       ; preds = %if.end.566, %if.then.536
  br label %if.end.568

if.end.568:                                       ; preds = %if.end.567, %if.end.530
  br label %if.end.569

if.end.569:                                       ; preds = %if.end.568, %if.end.507
  br label %for.inc.570

for.inc.570:                                      ; preds = %if.end.569
  %368 = load i32, i32* %i, align 4
  %inc571 = add nsw i32 %368, 1
  store i32 %inc571, i32* %i, align 4
  br label %for.cond.359

for.end.572:                                      ; preds = %for.cond.359
  %369 = load %struct.function*, %struct.function** @inlining, align 8
  store %struct.function* %369, %struct.function** %inlining_previous, align 8
  %370 = load %struct.function*, %struct.function** %inl_f, align 8
  store %struct.function* %370, %struct.function** @inlining, align 8
  %371 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl573 = bitcast %union.tree_node* %371 to %struct.tree_decl*
  %arguments574 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl573, i32 0, i32 10
  %372 = load %union.tree_node*, %union.tree_node** %arguments574, align 8
  store %union.tree_node* %372, %union.tree_node** %formal, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.575

for.cond.575:                                     ; preds = %for.inc.633, %for.end.572
  %373 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %tobool576 = icmp ne %union.tree_node* %373, null
  br i1 %tobool576, label %for.body.577, label %for.end.637

for.body.577:                                     ; preds = %for.cond.575
  %374 = load i32, i32* %i, align 4
  %idxprom578 = sext i32 %374 to i64
  %375 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  %elem579 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %375, i32 0, i32 1
  %arrayidx580 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem579, i32 0, i64 %idxprom578
  %376 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx580, align 8
  store %struct.rtx_def* %376, %struct.rtx_def** %loc, align 8
  %377 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %378 = bitcast %struct.rtx_def* %377 to i32*
  %bf.load581 = load i32, i32* %378, align 8
  %bf.clear582 = and i32 %bf.load581, 65535
  %cmp583 = icmp eq i32 %bf.clear582, 66
  br i1 %cmp583, label %land.lhs.true.585, label %if.end.632

land.lhs.true.585:                                ; preds = %for.body.577
  %379 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld586 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %379, i32 0, i32 1
  %arrayidx587 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld586, i32 0, i64 0
  %rtx588 = bitcast %union.rtunion_def* %arrayidx587 to %struct.rtx_def**
  %380 = load %struct.rtx_def*, %struct.rtx_def** %rtx588, align 8
  %381 = bitcast %struct.rtx_def* %380 to i32*
  %bf.load589 = load i32, i32* %381, align 8
  %bf.clear590 = and i32 %bf.load589, 65535
  %cmp591 = icmp eq i32 %bf.clear590, 61
  br i1 %cmp591, label %land.lhs.true.593, label %if.then.602

land.lhs.true.593:                                ; preds = %land.lhs.true.585
  %382 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld594 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %382, i32 0, i32 1
  %arrayidx595 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld594, i32 0, i64 0
  %rtx596 = bitcast %union.rtunion_def* %arrayidx595 to %struct.rtx_def**
  %383 = load %struct.rtx_def*, %struct.rtx_def** %rtx596, align 8
  %fld597 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %383, i32 0, i32 1
  %arrayidx598 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld597, i32 0, i64 0
  %rtuint599 = bitcast %union.rtunion_def* %arrayidx598 to i32*
  %384 = load i32, i32* %rtuint599, align 4
  %cmp600 = icmp ugt i32 %384, 57
  br i1 %cmp600, label %if.end.632, label %if.then.602

if.then.602:                                      ; preds = %land.lhs.true.593, %land.lhs.true.585
  %385 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %decl604 = bitcast %union.tree_node* %385 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl604, i32 0, i32 1
  %386 = load i8*, i8** %filename, align 8
  %387 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %decl605 = bitcast %union.tree_node* %387 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl605, i32 0, i32 2
  %388 = load i32, i32* %linenum, align 4
  %call606 = call %struct.rtx_def* @emit_note(i8* %386, i32 %388)
  store %struct.rtx_def* %call606, %struct.rtx_def** %note603, align 8
  %389 = load %struct.rtx_def*, %struct.rtx_def** %note603, align 8
  %tobool607 = icmp ne %struct.rtx_def* %389, null
  br i1 %tobool607, label %if.then.608, label %if.end.612

if.then.608:                                      ; preds = %if.then.602
  %390 = load %struct.rtx_def*, %struct.rtx_def** %note603, align 8
  %391 = bitcast %struct.rtx_def* %390 to i32*
  %bf.load609 = load i32, i32* %391, align 8
  %bf.clear610 = and i32 %bf.load609, -1073741825
  %bf.set611 = or i32 %bf.clear610, 1073741824
  store i32 %bf.set611, i32* %391, align 8
  br label %if.end.612

if.end.612:                                       ; preds = %if.then.608, %if.then.602
  %392 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %393 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call613 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %392, %struct.inline_remap* %393, i32 1)
  store %struct.rtx_def* %call613, %struct.rtx_def** %temp, align 8
  %394 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  call void @subst_constants(%struct.rtx_def** %temp, %struct.rtx_def* null, %struct.inline_remap* %394, i32 1)
  %call614 = call i32 @apply_change_group()
  %395 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %396 = bitcast %struct.rtx_def* %395 to i32*
  %bf.load615 = load i32, i32* %396, align 8
  %bf.lshr616 = lshr i32 %bf.load615, 16
  %bf.clear617 = and i32 %bf.lshr616, 255
  %397 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld618 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %arrayidx619 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld618, i32 0, i64 0
  %rtx620 = bitcast %union.rtunion_def* %arrayidx619 to %struct.rtx_def**
  %398 = load %struct.rtx_def*, %struct.rtx_def** %rtx620, align 8
  %call621 = call i32 @memory_address_p(i32 %bf.clear617, %struct.rtx_def* %398)
  %tobool622 = icmp ne i32 %call621, 0
  br i1 %tobool622, label %if.end.628, label %if.then.623

if.then.623:                                      ; preds = %if.end.612
  %399 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %400 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld624 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx625 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld624, i32 0, i64 0
  %rtx626 = bitcast %union.rtunion_def* %arrayidx625 to %struct.rtx_def**
  %401 = load %struct.rtx_def*, %struct.rtx_def** %rtx626, align 8
  %call627 = call %struct.rtx_def* @change_address(%struct.rtx_def* %399, i32 0, %struct.rtx_def* %401)
  store %struct.rtx_def* %call627, %struct.rtx_def** %temp, align 8
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.623, %if.end.612
  %402 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %402 to i64
  %403 = load %union.tree_node**, %union.tree_node*** %arg_trees, align 8
  %arrayidx630 = getelementptr inbounds %union.tree_node*, %union.tree_node** %403, i64 %idxprom629
  %404 = load %union.tree_node*, %union.tree_node** %arrayidx630, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call631 = call %struct.rtx_def* @store_expr(%union.tree_node* %404, %struct.rtx_def* %405, i32 0)
  br label %if.end.632

if.end.632:                                       ; preds = %if.end.628, %land.lhs.true.593, %for.body.577
  br label %for.inc.633

for.inc.633:                                      ; preds = %if.end.632
  %406 = load %union.tree_node*, %union.tree_node** %formal, align 8
  %common634 = bitcast %union.tree_node* %406 to %struct.tree_common*
  %chain635 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common634, i32 0, i32 0
  %407 = load %union.tree_node*, %union.tree_node** %chain635, align 8
  store %union.tree_node* %407, %union.tree_node** %formal, align 8
  %408 = load i32, i32* %i, align 4
  %inc636 = add nsw i32 %408, 1
  store i32 %inc636, i32* %i, align 4
  br label %for.cond.575

for.end.637:                                      ; preds = %for.cond.575
  %409 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %inline_target = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %409, i32 0, i32 11
  store %struct.rtx_def* null, %struct.rtx_def** %inline_target, align 8
  %410 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl638 = bitcast %union.tree_node* %410 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl638, i32 0, i32 11
  %411 = load %union.tree_node*, %union.tree_node** %result, align 8
  %decl639 = bitcast %union.tree_node* %411 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl639, i32 0, i32 17
  %412 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp640 = icmp ne %struct.rtx_def* %412, null
  br i1 %cmp640, label %cond.true.642, label %cond.false.662

cond.true.642:                                    ; preds = %for.end.637
  %413 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl643 = bitcast %union.tree_node* %413 to %struct.tree_decl*
  %result644 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl643, i32 0, i32 11
  %414 = load %union.tree_node*, %union.tree_node** %result644, align 8
  %decl645 = bitcast %union.tree_node* %414 to %struct.tree_decl*
  %rtl646 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl645, i32 0, i32 17
  %415 = load %struct.rtx_def*, %struct.rtx_def** %rtl646, align 8
  %tobool647 = icmp ne %struct.rtx_def* %415, null
  br i1 %tobool647, label %cond.true.648, label %cond.false.653

cond.true.648:                                    ; preds = %cond.true.642
  %416 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl649 = bitcast %union.tree_node* %416 to %struct.tree_decl*
  %result650 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl649, i32 0, i32 11
  %417 = load %union.tree_node*, %union.tree_node** %result650, align 8
  %decl651 = bitcast %union.tree_node* %417 to %struct.tree_decl*
  %rtl652 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl651, i32 0, i32 17
  %418 = load %struct.rtx_def*, %struct.rtx_def** %rtl652, align 8
  br label %cond.end.660

cond.false.653:                                   ; preds = %cond.true.642
  %419 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl654 = bitcast %union.tree_node* %419 to %struct.tree_decl*
  %result655 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl654, i32 0, i32 11
  %420 = load %union.tree_node*, %union.tree_node** %result655, align 8
  call void @make_decl_rtl(%union.tree_node* %420, i8* null)
  %421 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl656 = bitcast %union.tree_node* %421 to %struct.tree_decl*
  %result657 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl656, i32 0, i32 11
  %422 = load %union.tree_node*, %union.tree_node** %result657, align 8
  %decl658 = bitcast %union.tree_node* %422 to %struct.tree_decl*
  %rtl659 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl658, i32 0, i32 17
  %423 = load %struct.rtx_def*, %struct.rtx_def** %rtl659, align 8
  br label %cond.end.660

cond.end.660:                                     ; preds = %cond.false.653, %cond.true.648
  %cond661 = phi %struct.rtx_def* [ %418, %cond.true.648 ], [ %423, %cond.false.653 ]
  br label %cond.end.663

cond.false.662:                                   ; preds = %for.end.637
  br label %cond.end.663

cond.end.663:                                     ; preds = %cond.false.662, %cond.end.660
  %cond664 = phi %struct.rtx_def* [ %cond661, %cond.end.660 ], [ null, %cond.false.662 ]
  store %struct.rtx_def* %cond664, %struct.rtx_def** %loc, align 8
  %424 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type665 = bitcast %union.tree_node* %424 to %struct.tree_type*
  %mode666 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type665, i32 0, i32 6
  %bf.load667 = load i32, i32* %mode666, align 4
  %bf.lshr668 = lshr i32 %bf.load667, 9
  %bf.clear669 = and i32 %bf.lshr668, 127
  %cmp670 = icmp eq i32 %bf.clear669, 0
  br i1 %cmp670, label %if.then.672, label %if.else.673

if.then.672:                                      ; preds = %cond.end.663
  br label %if.end.1088

if.else.673:                                      ; preds = %cond.end.663
  %425 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %426 = bitcast %struct.rtx_def* %425 to i32*
  %bf.load674 = load i32, i32* %426, align 8
  %bf.clear675 = and i32 %bf.load674, 65535
  %cmp676 = icmp eq i32 %bf.clear675, 66
  br i1 %cmp676, label %if.then.678, label %if.else.844

if.then.678:                                      ; preds = %if.else.673
  %427 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld679 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %427, i32 0, i32 1
  %arrayidx680 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld679, i32 0, i64 0
  %rtx681 = bitcast %union.rtunion_def* %arrayidx680 to %struct.rtx_def**
  %428 = load %struct.rtx_def*, %struct.rtx_def** %rtx681, align 8
  %429 = bitcast %struct.rtx_def* %428 to i32*
  %bf.load682 = load i32, i32* %429, align 8
  %bf.clear683 = and i32 %bf.load682, 65535
  %cmp684 = icmp eq i32 %bf.clear683, 70
  br i1 %cmp684, label %if.then.686, label %if.else.689

if.then.686:                                      ; preds = %if.then.678
  %430 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %431 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call687 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %430, %struct.inline_remap* %431, i32 1)
  store %struct.rtx_def* %call687, %struct.rtx_def** %temp, align 8
  %432 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  call void @subst_constants(%struct.rtx_def** %temp, %struct.rtx_def* null, %struct.inline_remap* %432, i32 1)
  %call688 = call i32 @apply_change_group()
  %433 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %433, %struct.rtx_def** %target.addr, align 8
  br label %if.end.843

if.else.689:                                      ; preds = %if.then.678
  %434 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %tobool690 = icmp ne %struct.rtx_def* %434, null
  br i1 %tobool690, label %lor.lhs.false.691, label %if.then.696

lor.lhs.false.691:                                ; preds = %if.else.689
  %435 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl692 = bitcast %union.tree_node* %435 to %struct.tree_decl*
  %result693 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl692, i32 0, i32 11
  %436 = load %union.tree_node*, %union.tree_node** %result693, align 8
  %call694 = call i32 @aggregate_value_p(%union.tree_node* %436)
  %tobool695 = icmp ne i32 %call694, 0
  br i1 %tobool695, label %if.end.697, label %if.then.696

if.then.696:                                      ; preds = %lor.lhs.false.691, %if.else.689
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1027, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.697:                                       ; preds = %lor.lhs.false.691
  %437 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld698 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %437, i32 0, i32 1
  %arrayidx699 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld698, i32 0, i64 0
  %rtx700 = bitcast %union.rtunion_def* %arrayidx699 to %struct.rtx_def**
  %438 = load %struct.rtx_def*, %struct.rtx_def** %rtx700, align 8
  %439 = bitcast %struct.rtx_def* %438 to i32*
  %bf.load701 = load i32, i32* %439, align 8
  %bf.clear702 = and i32 %bf.load701, 65535
  %cmp703 = icmp eq i32 %bf.clear702, 61
  br i1 %cmp703, label %if.then.705, label %if.else.838

if.then.705:                                      ; preds = %if.end.697
  %440 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %call706 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %440, %struct.rtx_def* null)
  store %struct.rtx_def* %call706, %struct.rtx_def** %temp, align 8
  %441 = load i32, i32* @target_flags, align 4
  %and = and i32 %441, 33554432
  %tobool707 = icmp ne i32 %and, 0
  %cond708 = select i1 %tobool707, i32 5, i32 4
  %442 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call709 = call %struct.rtx_def* @force_reg(i32 %cond708, %struct.rtx_def* %442)
  store %struct.rtx_def* %call709, %struct.rtx_def** %temp, align 8
  %443 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld710 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld710, i32 0, i64 0
  %rtuint712 = bitcast %union.rtunion_def* %arrayidx711 to i32*
  %444 = load i32, i32* %rtuint712, align 4
  %cmp713 = icmp uge i32 %444, 53
  br i1 %cmp713, label %land.lhs.true.715, label %if.end.726

land.lhs.true.715:                                ; preds = %if.then.705
  %445 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld716 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %445, i32 0, i32 1
  %arrayidx717 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld716, i32 0, i64 0
  %rtuint718 = bitcast %union.rtunion_def* %arrayidx717 to i32*
  %446 = load i32, i32* %rtuint718, align 4
  %cmp719 = icmp ule i32 %446, 57
  br i1 %cmp719, label %if.then.721, label %if.end.726

if.then.721:                                      ; preds = %land.lhs.true.715
  %447 = load i32, i32* @target_flags, align 4
  %and722 = and i32 %447, 33554432
  %tobool723 = icmp ne i32 %and722, 0
  %cond724 = select i1 %tobool723, i32 5, i32 4
  %448 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call725 = call %struct.rtx_def* @copy_to_mode_reg(i32 %cond724, %struct.rtx_def* %448)
  store %struct.rtx_def* %call725, %struct.rtx_def** %temp, align 8
  br label %if.end.726

if.end.726:                                       ; preds = %if.then.721, %land.lhs.true.715, %if.then.705
  %449 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %450 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld727 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %450, i32 0, i32 1
  %arrayidx728 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld727, i32 0, i64 0
  %rtx729 = bitcast %union.rtunion_def* %arrayidx728 to %struct.rtx_def**
  %451 = load %struct.rtx_def*, %struct.rtx_def** %rtx729, align 8
  %fld730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %451, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld730, i32 0, i64 0
  %rtuint732 = bitcast %union.rtunion_def* %arrayidx731 to i32*
  %452 = load i32, i32* %rtuint732, align 4
  %idxprom733 = zext i32 %452 to i64
  %453 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map734 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %453, i32 0, i32 4
  %454 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map734, align 8
  %arrayidx735 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %454, i64 %idxprom733
  store %struct.rtx_def* %449, %struct.rtx_def** %arrayidx735, align 8
  %455 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %456 = bitcast %struct.rtx_def* %455 to i32*
  %bf.load736 = load i32, i32* %456, align 8
  %bf.clear737 = and i32 %bf.load736, 65535
  %cmp738 = icmp eq i32 %bf.clear737, 67
  br i1 %cmp738, label %if.then.799, label %lor.lhs.false.740

lor.lhs.false.740:                                ; preds = %if.end.726
  %457 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %458 = bitcast %struct.rtx_def* %457 to i32*
  %bf.load741 = load i32, i32* %458, align 8
  %bf.clear742 = and i32 %bf.load741, 65535
  %cmp743 = icmp eq i32 %bf.clear742, 68
  br i1 %cmp743, label %if.then.799, label %lor.lhs.false.745

lor.lhs.false.745:                                ; preds = %lor.lhs.false.740
  %459 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %460 = bitcast %struct.rtx_def* %459 to i32*
  %bf.load746 = load i32, i32* %460, align 8
  %bf.clear747 = and i32 %bf.load746, 65535
  %cmp748 = icmp eq i32 %bf.clear747, 54
  br i1 %cmp748, label %if.then.799, label %lor.lhs.false.750

lor.lhs.false.750:                                ; preds = %lor.lhs.false.745
  %461 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %462 = bitcast %struct.rtx_def* %461 to i32*
  %bf.load751 = load i32, i32* %462, align 8
  %bf.clear752 = and i32 %bf.load751, 65535
  %cmp753 = icmp eq i32 %bf.clear752, 55
  br i1 %cmp753, label %if.then.799, label %lor.lhs.false.755

lor.lhs.false.755:                                ; preds = %lor.lhs.false.750
  %463 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %464 = bitcast %struct.rtx_def* %463 to i32*
  %bf.load756 = load i32, i32* %464, align 8
  %bf.clear757 = and i32 %bf.load756, 65535
  %cmp758 = icmp eq i32 %bf.clear757, 58
  br i1 %cmp758, label %if.then.799, label %lor.lhs.false.760

lor.lhs.false.760:                                ; preds = %lor.lhs.false.755
  %465 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %466 = bitcast %struct.rtx_def* %465 to i32*
  %bf.load761 = load i32, i32* %466, align 8
  %bf.clear762 = and i32 %bf.load761, 65535
  %cmp763 = icmp eq i32 %bf.clear762, 134
  br i1 %cmp763, label %if.then.799, label %lor.lhs.false.765

lor.lhs.false.765:                                ; preds = %lor.lhs.false.760
  %467 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %468 = bitcast %struct.rtx_def* %467 to i32*
  %bf.load766 = load i32, i32* %468, align 8
  %bf.clear767 = and i32 %bf.load766, 65535
  %cmp768 = icmp eq i32 %bf.clear767, 56
  br i1 %cmp768, label %if.then.799, label %lor.lhs.false.770

lor.lhs.false.770:                                ; preds = %lor.lhs.false.765
  %469 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %470 = bitcast %struct.rtx_def* %469 to i32*
  %bf.load771 = load i32, i32* %470, align 8
  %bf.clear772 = and i32 %bf.load771, 65535
  %cmp773 = icmp eq i32 %bf.clear772, 140
  br i1 %cmp773, label %if.then.799, label %lor.lhs.false.775

lor.lhs.false.775:                                ; preds = %lor.lhs.false.770
  %471 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %472 = bitcast %struct.rtx_def* %471 to i32*
  %bf.load776 = load i32, i32* %472, align 8
  %bf.clear777 = and i32 %bf.load776, 65535
  %cmp778 = icmp eq i32 %bf.clear777, 70
  br i1 %cmp778, label %if.then.799, label %lor.lhs.false.780

lor.lhs.false.780:                                ; preds = %lor.lhs.false.775
  %473 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %474 = bitcast %struct.rtx_def* %473 to i32*
  %bf.load781 = load i32, i32* %474, align 8
  %bf.clear782 = and i32 %bf.load781, 65535
  %cmp783 = icmp eq i32 %bf.clear782, 75
  br i1 %cmp783, label %land.lhs.true.785, label %if.end.837

land.lhs.true.785:                                ; preds = %lor.lhs.false.780
  %475 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %fld786 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %475, i32 0, i32 1
  %arrayidx787 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld786, i32 0, i64 0
  %rtx788 = bitcast %union.rtunion_def* %arrayidx787 to %struct.rtx_def**
  %476 = load %struct.rtx_def*, %struct.rtx_def** %rtx788, align 8
  %477 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp789 = icmp eq %struct.rtx_def* %476, %477
  br i1 %cmp789, label %land.lhs.true.791, label %if.end.837

land.lhs.true.791:                                ; preds = %land.lhs.true.785
  %478 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %fld792 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %478, i32 0, i32 1
  %arrayidx793 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld792, i32 0, i64 1
  %rtx794 = bitcast %union.rtunion_def* %arrayidx793 to %struct.rtx_def**
  %479 = load %struct.rtx_def*, %struct.rtx_def** %rtx794, align 8
  %480 = bitcast %struct.rtx_def* %479 to i32*
  %bf.load795 = load i32, i32* %480, align 8
  %bf.clear796 = and i32 %bf.load795, 65535
  %cmp797 = icmp eq i32 %bf.clear796, 54
  br i1 %cmp797, label %if.then.799, label %if.end.837

if.then.799:                                      ; preds = %land.lhs.true.791, %lor.lhs.false.775, %lor.lhs.false.770, %lor.lhs.false.765, %lor.lhs.false.760, %lor.lhs.false.755, %lor.lhs.false.750, %lor.lhs.false.745, %lor.lhs.false.740, %if.end.726
  %481 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld801 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %481, i32 0, i32 1
  %arrayidx802 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld801, i32 0, i64 0
  %rtuint803 = bitcast %union.rtunion_def* %arrayidx802 to i32*
  %482 = load i32, i32* %rtuint803, align 4
  %conv804 = zext i32 %482 to i64
  %483 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray805 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %483, i32 0, i32 9
  %484 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray805, align 8
  %num_elements806 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %484, i32 0, i32 0
  %485 = load i64, i64* %num_elements806, align 8
  %cmp807 = icmp uge i64 %conv804, %485
  br i1 %cmp807, label %if.then.809, label %if.end.826

if.then.809:                                      ; preds = %if.then.799
  %486 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %487 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray811 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %487, i32 0, i32 9
  %488 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray811, align 8
  %cmp812 = icmp eq %struct.varray_head_tag* %486, %488
  %conv813 = zext i1 %cmp812 to i32
  store i32 %conv813, i32* %is_global810, align 4
  %489 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray814 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %489, i32 0, i32 9
  %490 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray814, align 8
  %491 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld815 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %491, i32 0, i32 1
  %arrayidx816 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld815, i32 0, i64 0
  %rtuint817 = bitcast %union.rtunion_def* %arrayidx816 to i32*
  %492 = load i32, i32* %rtuint817, align 4
  %add818 = add i32 %492, 1
  %conv819 = zext i32 %add818 to i64
  %call820 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %490, i64 %conv819)
  %493 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray821 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %493, i32 0, i32 9
  store %struct.varray_head_tag* %call820, %struct.varray_head_tag** %const_equiv_varray821, align 8
  %494 = load i32, i32* %is_global810, align 4
  %tobool822 = icmp ne i32 %494, 0
  br i1 %tobool822, label %if.then.823, label %if.end.825

if.then.823:                                      ; preds = %if.then.809
  %495 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray824 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %495, i32 0, i32 9
  %496 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray824, align 8
  store %struct.varray_head_tag* %496, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end.825

if.end.825:                                       ; preds = %if.then.823, %if.then.809
  br label %if.end.826

if.end.826:                                       ; preds = %if.end.825, %if.then.799
  %497 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld827 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %497, i32 0, i32 1
  %arrayidx828 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld827, i32 0, i64 0
  %rtuint829 = bitcast %union.rtunion_def* %arrayidx828 to i32*
  %498 = load i32, i32* %rtuint829, align 4
  %idxprom830 = zext i32 %498 to i64
  %499 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray831 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %499, i32 0, i32 9
  %500 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray831, align 8
  %data832 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %500, i32 0, i32 4
  %const_equiv833 = bitcast %union.varray_data_tag* %data832 to [1 x %struct.const_equiv_data]*
  %arrayidx834 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv833, i32 0, i64 %idxprom830
  store %struct.const_equiv_data* %arrayidx834, %struct.const_equiv_data** %p800, align 8
  %501 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %502 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p800, align 8
  %rtx835 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %502, i32 0, i32 0
  store %struct.rtx_def* %501, %struct.rtx_def** %rtx835, align 8
  %503 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p800, align 8
  %age836 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %503, i32 0, i32 1
  store i32 -1, i32* %age836, align 4
  br label %if.end.837

if.end.837:                                       ; preds = %if.end.826, %land.lhs.true.791, %land.lhs.true.785, %lor.lhs.false.780
  br label %if.end.842

if.else.838:                                      ; preds = %if.end.697
  %504 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %505 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call839 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %504, %struct.inline_remap* %505, i32 1)
  store %struct.rtx_def* %call839, %struct.rtx_def** %temp, align 8
  %506 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  call void @subst_constants(%struct.rtx_def** %temp, %struct.rtx_def* null, %struct.inline_remap* %506, i32 0)
  %call840 = call i32 @apply_change_group()
  %507 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %508 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %call841 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %507, %struct.rtx_def* %508)
  br label %if.end.842

if.end.842:                                       ; preds = %if.else.838, %if.end.837
  br label %if.end.843

if.end.843:                                       ; preds = %if.end.842, %if.then.686
  br label %if.end.1087

if.else.844:                                      ; preds = %if.else.673
  %509 = load i32, i32* %ignore.addr, align 4
  %tobool845 = icmp ne i32 %509, 0
  br i1 %tobool845, label %if.then.846, label %if.else.847

if.then.846:                                      ; preds = %if.else.844
  br label %if.end.1086

if.else.847:                                      ; preds = %if.else.844
  %510 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %511 = bitcast %struct.rtx_def* %510 to i32*
  %bf.load848 = load i32, i32* %511, align 8
  %bf.clear849 = and i32 %bf.load848, 65535
  %cmp850 = icmp eq i32 %bf.clear849, 61
  br i1 %cmp850, label %if.then.852, label %if.else.981

if.then.852:                                      ; preds = %if.else.847
  %512 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type853 = bitcast %union.tree_node* %512 to %struct.tree_type*
  %mode854 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type853, i32 0, i32 6
  %bf.load855 = load i32, i32* %mode854, align 4
  %bf.lshr856 = lshr i32 %bf.load855, 9
  %bf.clear857 = and i32 %bf.lshr856, 127
  store i32 %bf.clear857, i32* %departing_mode, align 4
  %513 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl858 = bitcast %union.tree_node* %513 to %struct.tree_decl*
  %result859 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl858, i32 0, i32 11
  %514 = load %union.tree_node*, %union.tree_node** %result859, align 8
  %decl860 = bitcast %union.tree_node* %514 to %struct.tree_decl*
  %rtl861 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl860, i32 0, i32 17
  %515 = load %struct.rtx_def*, %struct.rtx_def** %rtl861, align 8
  %tobool862 = icmp ne %struct.rtx_def* %515, null
  br i1 %tobool862, label %cond.true.863, label %cond.false.868

cond.true.863:                                    ; preds = %if.then.852
  %516 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl864 = bitcast %union.tree_node* %516 to %struct.tree_decl*
  %result865 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl864, i32 0, i32 11
  %517 = load %union.tree_node*, %union.tree_node** %result865, align 8
  %decl866 = bitcast %union.tree_node* %517 to %struct.tree_decl*
  %rtl867 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl866, i32 0, i32 17
  %518 = load %struct.rtx_def*, %struct.rtx_def** %rtl867, align 8
  br label %cond.end.875

cond.false.868:                                   ; preds = %if.then.852
  %519 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl869 = bitcast %union.tree_node* %519 to %struct.tree_decl*
  %result870 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl869, i32 0, i32 11
  %520 = load %union.tree_node*, %union.tree_node** %result870, align 8
  call void @make_decl_rtl(%union.tree_node* %520, i8* null)
  %521 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl871 = bitcast %union.tree_node* %521 to %struct.tree_decl*
  %result872 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl871, i32 0, i32 11
  %522 = load %union.tree_node*, %union.tree_node** %result872, align 8
  %decl873 = bitcast %union.tree_node* %522 to %struct.tree_decl*
  %rtl874 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl873, i32 0, i32 17
  %523 = load %struct.rtx_def*, %struct.rtx_def** %rtl874, align 8
  br label %cond.end.875

cond.end.875:                                     ; preds = %cond.false.868, %cond.true.863
  %cond876 = phi %struct.rtx_def* [ %518, %cond.true.863 ], [ %523, %cond.false.868 ]
  %524 = bitcast %struct.rtx_def* %cond876 to i32*
  %bf.load877 = load i32, i32* %524, align 8
  %bf.lshr878 = lshr i32 %bf.load877, 16
  %bf.clear879 = and i32 %bf.lshr878, 255
  store i32 %bf.clear879, i32* %arriving_mode, align 4
  %525 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp880 = icmp eq %struct.rtx_def* %525, null
  br i1 %cmp880, label %if.then.893, label %lor.lhs.false.882

lor.lhs.false.882:                                ; preds = %cond.end.875
  %526 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %527 = bitcast %struct.rtx_def* %526 to i32*
  %bf.load883 = load i32, i32* %527, align 8
  %bf.clear884 = and i32 %bf.load883, 65535
  %cmp885 = icmp ne i32 %bf.clear884, 61
  br i1 %cmp885, label %if.then.893, label %lor.lhs.false.887

lor.lhs.false.887:                                ; preds = %lor.lhs.false.882
  %528 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %529 = bitcast %struct.rtx_def* %528 to i32*
  %bf.load888 = load i32, i32* %529, align 8
  %bf.lshr889 = lshr i32 %bf.load888, 16
  %bf.clear890 = and i32 %bf.lshr889, 255
  %530 = load i32, i32* %departing_mode, align 4
  %cmp891 = icmp ne i32 %bf.clear890, %530
  br i1 %cmp891, label %if.then.893, label %if.end.947

if.then.893:                                      ; preds = %lor.lhs.false.887, %lor.lhs.false.882, %cond.end.875
  %531 = load i32, i32* %departing_mode, align 4
  %cmp894 = icmp eq i32 %531, 51
  br i1 %cmp894, label %if.then.896, label %if.end.945

if.then.896:                                      ; preds = %if.then.893
  %532 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl897 = bitcast %union.tree_node* %532 to %struct.tree_decl*
  %result898 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl897, i32 0, i32 11
  %533 = load %union.tree_node*, %union.tree_node** %result898, align 8
  %decl899 = bitcast %union.tree_node* %533 to %struct.tree_decl*
  %rtl900 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl899, i32 0, i32 17
  %534 = load %struct.rtx_def*, %struct.rtx_def** %rtl900, align 8
  %tobool901 = icmp ne %struct.rtx_def* %534, null
  br i1 %tobool901, label %cond.true.902, label %cond.false.907

cond.true.902:                                    ; preds = %if.then.896
  %535 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl903 = bitcast %union.tree_node* %535 to %struct.tree_decl*
  %result904 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl903, i32 0, i32 11
  %536 = load %union.tree_node*, %union.tree_node** %result904, align 8
  %decl905 = bitcast %union.tree_node* %536 to %struct.tree_decl*
  %rtl906 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl905, i32 0, i32 17
  %537 = load %struct.rtx_def*, %struct.rtx_def** %rtl906, align 8
  br label %cond.end.914

cond.false.907:                                   ; preds = %if.then.896
  %538 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl908 = bitcast %union.tree_node* %538 to %struct.tree_decl*
  %result909 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl908, i32 0, i32 11
  %539 = load %union.tree_node*, %union.tree_node** %result909, align 8
  call void @make_decl_rtl(%union.tree_node* %539, i8* null)
  %540 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl910 = bitcast %union.tree_node* %540 to %struct.tree_decl*
  %result911 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl910, i32 0, i32 11
  %541 = load %union.tree_node*, %union.tree_node** %result911, align 8
  %decl912 = bitcast %union.tree_node* %541 to %struct.tree_decl*
  %rtl913 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl912, i32 0, i32 17
  %542 = load %struct.rtx_def*, %struct.rtx_def** %rtl913, align 8
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.false.907, %cond.true.902
  %cond915 = phi %struct.rtx_def* [ %537, %cond.true.902 ], [ %542, %cond.false.907 ]
  %543 = bitcast %struct.rtx_def* %cond915 to i32*
  %bf.load916 = load i32, i32* %543, align 8
  %bf.clear917 = and i32 %bf.load916, 65535
  %cmp918 = icmp eq i32 61, %bf.clear917
  br i1 %cmp918, label %if.then.920, label %if.else.943

if.then.920:                                      ; preds = %cond.end.914
  %544 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl921 = bitcast %union.tree_node* %544 to %struct.tree_decl*
  %result922 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl921, i32 0, i32 11
  %545 = load %union.tree_node*, %union.tree_node** %result922, align 8
  %decl923 = bitcast %union.tree_node* %545 to %struct.tree_decl*
  %rtl924 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl923, i32 0, i32 17
  %546 = load %struct.rtx_def*, %struct.rtx_def** %rtl924, align 8
  %tobool925 = icmp ne %struct.rtx_def* %546, null
  br i1 %tobool925, label %cond.true.926, label %cond.false.931

cond.true.926:                                    ; preds = %if.then.920
  %547 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl927 = bitcast %union.tree_node* %547 to %struct.tree_decl*
  %result928 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl927, i32 0, i32 11
  %548 = load %union.tree_node*, %union.tree_node** %result928, align 8
  %decl929 = bitcast %union.tree_node* %548 to %struct.tree_decl*
  %rtl930 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl929, i32 0, i32 17
  %549 = load %struct.rtx_def*, %struct.rtx_def** %rtl930, align 8
  br label %cond.end.938

cond.false.931:                                   ; preds = %if.then.920
  %550 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl932 = bitcast %union.tree_node* %550 to %struct.tree_decl*
  %result933 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl932, i32 0, i32 11
  %551 = load %union.tree_node*, %union.tree_node** %result933, align 8
  call void @make_decl_rtl(%union.tree_node* %551, i8* null)
  %552 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl934 = bitcast %union.tree_node* %552 to %struct.tree_decl*
  %result935 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl934, i32 0, i32 11
  %553 = load %union.tree_node*, %union.tree_node** %result935, align 8
  %decl936 = bitcast %union.tree_node* %553 to %struct.tree_decl*
  %rtl937 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl936, i32 0, i32 17
  %554 = load %struct.rtx_def*, %struct.rtx_def** %rtl937, align 8
  br label %cond.end.938

cond.end.938:                                     ; preds = %cond.false.931, %cond.true.926
  %cond939 = phi %struct.rtx_def* [ %549, %cond.true.926 ], [ %554, %cond.false.931 ]
  %555 = bitcast %struct.rtx_def* %cond939 to i32*
  %bf.load940 = load i32, i32* %555, align 8
  %bf.lshr941 = lshr i32 %bf.load940, 16
  %bf.clear942 = and i32 %bf.lshr941, 255
  store i32 %bf.clear942, i32* %departing_mode, align 4
  %556 = load i32, i32* %departing_mode, align 4
  store i32 %556, i32* %arriving_mode, align 4
  br label %if.end.944

if.else.943:                                      ; preds = %cond.end.914
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.944:                                       ; preds = %cond.end.938
  br label %if.end.945

if.end.945:                                       ; preds = %if.end.944, %if.then.893
  %557 = load i32, i32* %departing_mode, align 4
  %call946 = call %struct.rtx_def* @gen_reg_rtx(i32 %557)
  store %struct.rtx_def* %call946, %struct.rtx_def** %target.addr, align 8
  br label %if.end.947

if.end.947:                                       ; preds = %if.end.945, %lor.lhs.false.887
  %558 = load i32, i32* %arriving_mode, align 4
  %559 = load i32, i32* %departing_mode, align 4
  %cmp948 = icmp ne i32 %558, %559
  br i1 %cmp948, label %if.then.950, label %if.else.965

if.then.950:                                      ; preds = %if.end.947
  %560 = load i32, i32* %arriving_mode, align 4
  %idxprom951 = sext i32 %560 to i64
  %arrayidx952 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom951
  %561 = load i16, i16* %arrayidx952, align 2
  %conv953 = zext i16 %561 to i32
  %562 = load i32, i32* @target_flags, align 4
  %and954 = and i32 %562, 33554432
  %tobool955 = icmp ne i32 %and954, 0
  %cond956 = select i1 %tobool955, i32 64, i32 32
  %cmp957 = icmp sgt i32 %conv953, %cond956
  br i1 %cmp957, label %if.then.959, label %if.else.962

if.then.959:                                      ; preds = %if.then.950
  %563 = load i32, i32* %arriving_mode, align 4
  %call960 = call %struct.rtx_def* @gen_reg_rtx(i32 %563)
  store %struct.rtx_def* %call960, %struct.rtx_def** %reg_to_map, align 8
  %564 = load i32, i32* %departing_mode, align 4
  %565 = load %struct.rtx_def*, %struct.rtx_def** %reg_to_map, align 8
  %call961 = call %struct.rtx_def* @gen_lowpart(i32 %564, %struct.rtx_def* %565)
  store %struct.rtx_def* %call961, %struct.rtx_def** %target.addr, align 8
  br label %if.end.964

if.else.962:                                      ; preds = %if.then.950
  %566 = load i32, i32* %arriving_mode, align 4
  %567 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call963 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %566, %struct.rtx_def* %567, i32 0)
  store %struct.rtx_def* %call963, %struct.rtx_def** %reg_to_map, align 8
  br label %if.end.964

if.end.964:                                       ; preds = %if.else.962, %if.then.959
  br label %if.end.966

if.else.965:                                      ; preds = %if.end.947
  %568 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %568, %struct.rtx_def** %reg_to_map, align 8
  br label %if.end.966

if.end.966:                                       ; preds = %if.else.965, %if.end.964
  %569 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %570 = bitcast %struct.rtx_def* %569 to i32*
  %bf.load967 = load i32, i32* %570, align 8
  %bf.lshr968 = lshr i32 %bf.load967, 30
  %bf.clear969 = and i32 %bf.lshr968, 1
  %tobool970 = icmp ne i32 %bf.clear969, 0
  br i1 %tobool970, label %if.then.971, label %if.else.973

if.then.971:                                      ; preds = %if.end.966
  %571 = load %struct.rtx_def*, %struct.rtx_def** %reg_to_map, align 8
  %572 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %inline_target972 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %572, i32 0, i32 11
  store %struct.rtx_def* %571, %struct.rtx_def** %inline_target972, align 8
  br label %if.end.980

if.else.973:                                      ; preds = %if.end.966
  %573 = load %struct.rtx_def*, %struct.rtx_def** %reg_to_map, align 8
  %574 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld974 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %574, i32 0, i32 1
  %arrayidx975 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld974, i32 0, i64 0
  %rtuint976 = bitcast %union.rtunion_def* %arrayidx975 to i32*
  %575 = load i32, i32* %rtuint976, align 4
  %idxprom977 = zext i32 %575 to i64
  %576 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map978 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %576, i32 0, i32 4
  %577 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map978, align 8
  %arrayidx979 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %577, i64 %idxprom977
  store %struct.rtx_def* %573, %struct.rtx_def** %arrayidx979, align 8
  br label %if.end.980

if.end.980:                                       ; preds = %if.else.973, %if.then.971
  br label %if.end.1085

if.else.981:                                      ; preds = %if.else.847
  %578 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %579 = bitcast %struct.rtx_def* %578 to i32*
  %bf.load982 = load i32, i32* %579, align 8
  %bf.clear983 = and i32 %bf.load982, 65535
  %cmp984 = icmp eq i32 %bf.clear983, 65
  br i1 %cmp984, label %if.then.986, label %if.else.1083

if.then.986:                                      ; preds = %if.else.981
  %580 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type988 = bitcast %union.tree_node* %580 to %struct.tree_type*
  %mode989 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type988, i32 0, i32 6
  %bf.load990 = load i32, i32* %mode989, align 4
  %bf.lshr991 = lshr i32 %bf.load990, 9
  %bf.clear992 = and i32 %bf.lshr991, 127
  store i32 %bf.clear992, i32* %departing_mode987, align 4
  %581 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl994 = bitcast %union.tree_node* %581 to %struct.tree_decl*
  %result995 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl994, i32 0, i32 11
  %582 = load %union.tree_node*, %union.tree_node** %result995, align 8
  %decl996 = bitcast %union.tree_node* %582 to %struct.tree_decl*
  %rtl997 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl996, i32 0, i32 17
  %583 = load %struct.rtx_def*, %struct.rtx_def** %rtl997, align 8
  %tobool998 = icmp ne %struct.rtx_def* %583, null
  br i1 %tobool998, label %cond.true.999, label %cond.false.1004

cond.true.999:                                    ; preds = %if.then.986
  %584 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1000 = bitcast %union.tree_node* %584 to %struct.tree_decl*
  %result1001 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1000, i32 0, i32 11
  %585 = load %union.tree_node*, %union.tree_node** %result1001, align 8
  %decl1002 = bitcast %union.tree_node* %585 to %struct.tree_decl*
  %rtl1003 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1002, i32 0, i32 17
  %586 = load %struct.rtx_def*, %struct.rtx_def** %rtl1003, align 8
  br label %cond.end.1011

cond.false.1004:                                  ; preds = %if.then.986
  %587 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1005 = bitcast %union.tree_node* %587 to %struct.tree_decl*
  %result1006 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1005, i32 0, i32 11
  %588 = load %union.tree_node*, %union.tree_node** %result1006, align 8
  call void @make_decl_rtl(%union.tree_node* %588, i8* null)
  %589 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1007 = bitcast %union.tree_node* %589 to %struct.tree_decl*
  %result1008 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1007, i32 0, i32 11
  %590 = load %union.tree_node*, %union.tree_node** %result1008, align 8
  %decl1009 = bitcast %union.tree_node* %590 to %struct.tree_decl*
  %rtl1010 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1009, i32 0, i32 17
  %591 = load %struct.rtx_def*, %struct.rtx_def** %rtl1010, align 8
  br label %cond.end.1011

cond.end.1011:                                    ; preds = %cond.false.1004, %cond.true.999
  %cond1012 = phi %struct.rtx_def* [ %586, %cond.true.999 ], [ %591, %cond.false.1004 ]
  %592 = bitcast %struct.rtx_def* %cond1012 to i32*
  %bf.load1013 = load i32, i32* %592, align 8
  %bf.lshr1014 = lshr i32 %bf.load1013, 16
  %bf.clear1015 = and i32 %bf.lshr1014, 255
  store i32 %bf.clear1015, i32* %arriving_mode993, align 4
  %593 = load i32, i32* %departing_mode987, align 4
  %594 = load i32, i32* %arriving_mode993, align 4
  %cmp1016 = icmp ne i32 %593, %594
  br i1 %cmp1016, label %if.then.1018, label %if.end.1019

if.then.1018:                                     ; preds = %cond.end.1011
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1154, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.1019:                                      ; preds = %cond.end.1011
  %595 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld1020 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %595, i32 0, i32 1
  %arrayidx1021 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1020, i32 0, i64 0
  %rtx1022 = bitcast %union.rtunion_def* %arrayidx1021 to %struct.rtx_def**
  %596 = load %struct.rtx_def*, %struct.rtx_def** %rtx1022, align 8
  %597 = bitcast %struct.rtx_def* %596 to i32*
  %bf.load1023 = load i32, i32* %597, align 8
  %bf.clear1024 = and i32 %bf.load1023, 65535
  %cmp1025 = icmp ne i32 %bf.clear1024, 61
  br i1 %cmp1025, label %if.then.1035, label %lor.lhs.false.1027

lor.lhs.false.1027:                               ; preds = %if.end.1019
  %598 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld1028 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %598, i32 0, i32 1
  %arrayidx1029 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1028, i32 0, i64 1
  %rtx1030 = bitcast %union.rtunion_def* %arrayidx1029 to %struct.rtx_def**
  %599 = load %struct.rtx_def*, %struct.rtx_def** %rtx1030, align 8
  %600 = bitcast %struct.rtx_def* %599 to i32*
  %bf.load1031 = load i32, i32* %600, align 8
  %bf.clear1032 = and i32 %bf.load1031, 65535
  %cmp1033 = icmp ne i32 %bf.clear1032, 61
  br i1 %cmp1033, label %if.then.1035, label %if.end.1036

if.then.1035:                                     ; preds = %lor.lhs.false.1027, %if.end.1019
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.1036:                                      ; preds = %lor.lhs.false.1027
  %601 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1037 = icmp eq %struct.rtx_def* %601, null
  br i1 %cmp1037, label %if.then.1050, label %lor.lhs.false.1039

lor.lhs.false.1039:                               ; preds = %if.end.1036
  %602 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %603 = bitcast %struct.rtx_def* %602 to i32*
  %bf.load1040 = load i32, i32* %603, align 8
  %bf.clear1041 = and i32 %bf.load1040, 65535
  %cmp1042 = icmp ne i32 %bf.clear1041, 61
  br i1 %cmp1042, label %if.then.1050, label %lor.lhs.false.1044

lor.lhs.false.1044:                               ; preds = %lor.lhs.false.1039
  %604 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %605 = bitcast %struct.rtx_def* %604 to i32*
  %bf.load1045 = load i32, i32* %605, align 8
  %bf.lshr1046 = lshr i32 %bf.load1045, 16
  %bf.clear1047 = and i32 %bf.lshr1046, 255
  %606 = load i32, i32* %departing_mode987, align 4
  %cmp1048 = icmp ne i32 %bf.clear1047, %606
  br i1 %cmp1048, label %if.then.1050, label %if.end.1052

if.then.1050:                                     ; preds = %lor.lhs.false.1044, %lor.lhs.false.1039, %if.end.1036
  %607 = load i32, i32* %departing_mode987, align 4
  %call1051 = call %struct.rtx_def* @gen_reg_rtx(i32 %607)
  store %struct.rtx_def* %call1051, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1052

if.end.1052:                                      ; preds = %if.then.1050, %lor.lhs.false.1044
  %608 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %609 = bitcast %struct.rtx_def* %608 to i32*
  %bf.load1053 = load i32, i32* %609, align 8
  %bf.clear1054 = and i32 %bf.load1053, 65535
  %cmp1055 = icmp ne i32 %bf.clear1054, 65
  br i1 %cmp1055, label %if.then.1057, label %if.end.1058

if.then.1057:                                     ; preds = %if.end.1052
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.1058:                                      ; preds = %if.end.1052
  %610 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld1059 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %610, i32 0, i32 1
  %arrayidx1060 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1059, i32 0, i64 0
  %rtx1061 = bitcast %union.rtunion_def* %arrayidx1060 to %struct.rtx_def**
  %611 = load %struct.rtx_def*, %struct.rtx_def** %rtx1061, align 8
  %612 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld1062 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %612, i32 0, i32 1
  %arrayidx1063 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1062, i32 0, i64 0
  %rtx1064 = bitcast %union.rtunion_def* %arrayidx1063 to %struct.rtx_def**
  %613 = load %struct.rtx_def*, %struct.rtx_def** %rtx1064, align 8
  %fld1065 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %613, i32 0, i32 1
  %arrayidx1066 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1065, i32 0, i64 0
  %rtuint1067 = bitcast %union.rtunion_def* %arrayidx1066 to i32*
  %614 = load i32, i32* %rtuint1067, align 4
  %idxprom1068 = zext i32 %614 to i64
  %615 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1069 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %615, i32 0, i32 4
  %616 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1069, align 8
  %arrayidx1070 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %616, i64 %idxprom1068
  store %struct.rtx_def* %611, %struct.rtx_def** %arrayidx1070, align 8
  %617 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld1071 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %617, i32 0, i32 1
  %arrayidx1072 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1071, i32 0, i64 1
  %rtx1073 = bitcast %union.rtunion_def* %arrayidx1072 to %struct.rtx_def**
  %618 = load %struct.rtx_def*, %struct.rtx_def** %rtx1073, align 8
  %619 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld1074 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %619, i32 0, i32 1
  %arrayidx1075 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1074, i32 0, i64 1
  %rtx1076 = bitcast %union.rtunion_def* %arrayidx1075 to %struct.rtx_def**
  %620 = load %struct.rtx_def*, %struct.rtx_def** %rtx1076, align 8
  %fld1077 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %620, i32 0, i32 1
  %arrayidx1078 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1077, i32 0, i64 0
  %rtuint1079 = bitcast %union.rtunion_def* %arrayidx1078 to i32*
  %621 = load i32, i32* %rtuint1079, align 4
  %idxprom1080 = zext i32 %621 to i64
  %622 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1081 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %622, i32 0, i32 4
  %623 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1081, align 8
  %arrayidx1082 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %623, i64 %idxprom1080
  store %struct.rtx_def* %618, %struct.rtx_def** %arrayidx1082, align 8
  br label %if.end.1084

if.else.1083:                                     ; preds = %if.else.981
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1173, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.expand_inline_function, i32 0, i32 0)) #5
  unreachable

if.end.1084:                                      ; preds = %if.end.1058
  br label %if.end.1085

if.end.1085:                                      ; preds = %if.end.1084, %if.end.980
  br label %if.end.1086

if.end.1086:                                      ; preds = %if.end.1085, %if.then.846
  br label %if.end.1087

if.end.1087:                                      ; preds = %if.end.1086, %if.end.843
  br label %if.end.1088

if.end.1088:                                      ; preds = %if.end.1087, %if.then.672
  %624 = load %struct.function*, %struct.function** %inl_f, align 8
  %call1089 = call %struct.rtx_def* @get_exception_pointer(%struct.function* %624)
  store %struct.rtx_def* %call1089, %struct.rtx_def** %temp, align 8
  %625 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool1090 = icmp ne %struct.rtx_def* %625, null
  br i1 %tobool1090, label %if.then.1091, label %if.end.1099

if.then.1091:                                     ; preds = %if.end.1088
  %626 = load %struct.function*, %struct.function** @cfun, align 8
  %call1092 = call %struct.rtx_def* @get_exception_pointer(%struct.function* %626)
  %627 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld1093 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %627, i32 0, i32 1
  %arrayidx1094 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1093, i32 0, i64 0
  %rtuint1095 = bitcast %union.rtunion_def* %arrayidx1094 to i32*
  %628 = load i32, i32* %rtuint1095, align 4
  %idxprom1096 = zext i32 %628 to i64
  %629 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1097 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %629, i32 0, i32 4
  %630 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1097, align 8
  %arrayidx1098 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %630, i64 %idxprom1096
  store %struct.rtx_def* %call1092, %struct.rtx_def** %arrayidx1098, align 8
  br label %if.end.1099

if.end.1099:                                      ; preds = %if.then.1091, %if.end.1088
  %631 = load i32, i32* %min_labelno, align 4
  %idxprom1100 = sext i32 %631 to i64
  %632 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map1101 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %632, i32 0, i32 5
  %633 = load %struct.rtx_def**, %struct.rtx_def*** %label_map1101, align 8
  %arrayidx1102 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %633, i64 %idxprom1100
  %634 = bitcast %struct.rtx_def** %arrayidx1102 to i8*
  %635 = load i32, i32* %max_labelno, align 4
  %636 = load i32, i32* %min_labelno, align 4
  %sub1103 = sub nsw i32 %635, %636
  %conv1104 = sext i32 %sub1103 to i64
  %mul1105 = mul i64 %conv1104, 8
  call void @llvm.memset.p0i8.i64(i8* %634, i8 0, i64 %mul1105, i32 1, i1 false)
  %637 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %637, %union.tree_node** @inline_function_decl, align 8
  %638 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1106 = bitcast %union.tree_node* %638 to %struct.tree_decl*
  %arguments1107 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1106, i32 0, i32 10
  %639 = load %union.tree_node*, %union.tree_node** %arguments1107, align 8
  %640 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %641 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector, align 8
  call void @integrate_parm_decls(%union.tree_node* %639, %struct.inline_remap* %640, %struct.rtvec_def* %641)
  %642 = load %struct.function*, %struct.function** %inl_f, align 8
  %original_decl_initial = getelementptr inbounds %struct.function, %struct.function* %642, i32 0, i32 47
  %643 = load %union.tree_node*, %union.tree_node** %original_decl_initial, align 8
  %644 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call1108 = call %union.tree_node* @integrate_decl_tree(%union.tree_node* %643, %struct.inline_remap* %644)
  store %union.tree_node* %call1108, %union.tree_node** %block, align 8
  %645 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1109 = bitcast %union.tree_node* %645 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1109, i32 0, i32 13
  %646 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %tobool1110 = icmp ne %union.tree_node* %646, null
  br i1 %tobool1110, label %cond.true.1111, label %cond.false.1114

cond.true.1111:                                   ; preds = %if.end.1099
  %647 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1112 = bitcast %union.tree_node* %647 to %struct.tree_decl*
  %abstract_origin1113 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1112, i32 0, i32 13
  %648 = load %union.tree_node*, %union.tree_node** %abstract_origin1113, align 8
  br label %cond.end.1115

cond.false.1114:                                  ; preds = %if.end.1099
  %649 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  br label %cond.end.1115

cond.end.1115:                                    ; preds = %cond.false.1114, %cond.true.1111
  %cond1116 = phi %union.tree_node* [ %648, %cond.true.1111 ], [ %649, %cond.false.1114 ]
  %650 = load %union.tree_node*, %union.tree_node** %block, align 8
  %block1117 = bitcast %union.tree_node* %650 to %struct.tree_block*
  %abstract_origin1118 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1117, i32 0, i32 5
  store %union.tree_node* %cond1116, %union.tree_node** %abstract_origin1118, align 8
  store %union.tree_node* null, %union.tree_node** @inline_function_decl, align 8
  %651 = load %union.tree_node*, %union.tree_node** %block, align 8
  call void @expand_start_bindings_and_block(i32 0, %union.tree_node* %651)
  %652 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map1119 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %652, i32 0, i32 3
  %653 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map1119, align 8
  %data1120 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %653, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data1120 to [1 x %union.tree_node*]*
  %arrayidx1121 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 0
  %654 = bitcast %union.tree_node** %arrayidx1121 to i8*
  %655 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map1122 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %655, i32 0, i32 3
  %656 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map1122, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %656, i32 0, i32 1
  %657 = load i64, i64* %elements_used, align 8
  %conv1123 = trunc i64 %657 to i32
  call void @specqsort(i8* %654, i32 %conv1123, i32 8, i32 (...)* bitcast (i32 (i8*, i8*)* @compare_blocks to i32 (...)*))
  call void @emit_queue()
  call void @do_pending_stack_adjust()
  %658 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1124 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %658, i32 0, i32 9
  %659 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1124, align 8
  store %struct.varray_head_tag* %659, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %660 = load %struct.function*, %struct.function** %inl_f, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %660, i32 0, i32 56
  %661 = bitcast i24* %calls_alloca to i32*
  %bf.load1125 = load i32, i32* %661, align 8
  %bf.lshr1126 = lshr i32 %bf.load1125, 6
  %bf.clear1127 = and i32 %bf.lshr1126, 1
  %tobool1128 = icmp ne i32 %bf.clear1127, 0
  br i1 %tobool1128, label %if.then.1129, label %if.end.1130

if.then.1129:                                     ; preds = %cond.end.1115
  call void @emit_stack_save(i32 0, %struct.rtx_def** %stack_save, %struct.rtx_def* null)
  br label %if.end.1130

if.end.1130:                                      ; preds = %if.then.1129, %cond.end.1115
  %662 = load %struct.function*, %struct.function** %inl_f, align 8
  %663 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  call void @setup_initial_hard_reg_value_integration(%struct.function* %662, %struct.inline_remap* %663)
  %664 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %665 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %666 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value, align 8
  call void @copy_insn_list(%struct.rtx_def* %664, %struct.inline_remap* %665, %struct.rtx_def* %666)
  %667 = load %struct.function*, %struct.function** %inl_f, align 8
  %668 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %call1131 = call i32 @duplicate_eh_regions(%struct.function* %667, %struct.inline_remap* %668)
  store i32 %call1131, i32* %eh_region_offset, align 4
  %669 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %670 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %671 = load i32, i32* %eh_region_offset, align 4
  call void @copy_insn_notes(%struct.rtx_def* %669, %struct.inline_remap* %670, i32 %671)
  %672 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %local_return_label1132 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %672, i32 0, i32 15
  %673 = load %struct.rtx_def*, %struct.rtx_def** %local_return_label1132, align 8
  %tobool1133 = icmp ne %struct.rtx_def* %673, null
  br i1 %tobool1133, label %if.then.1134, label %if.end.1137

if.then.1134:                                     ; preds = %if.end.1130
  %674 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %local_return_label1135 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %674, i32 0, i32 15
  %675 = load %struct.rtx_def*, %struct.rtx_def** %local_return_label1135, align 8
  %call1136 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %675)
  br label %if.end.1137

if.end.1137:                                      ; preds = %if.then.1134, %if.end.1130
  %676 = load %struct.function*, %struct.function** %inl_f, align 8
  %calls_alloca1138 = getelementptr inbounds %struct.function, %struct.function* %676, i32 0, i32 56
  %677 = bitcast i24* %calls_alloca1138 to i32*
  %bf.load1139 = load i32, i32* %677, align 8
  %bf.lshr1140 = lshr i32 %bf.load1139, 6
  %bf.clear1141 = and i32 %bf.lshr1140, 1
  %tobool1142 = icmp ne i32 %bf.clear1141, 0
  br i1 %tobool1142, label %if.then.1143, label %if.end.1144

if.then.1143:                                     ; preds = %if.end.1137
  %678 = load %struct.rtx_def*, %struct.rtx_def** %stack_save, align 8
  call void @emit_stack_restore(i32 0, %struct.rtx_def* %678, %struct.rtx_def* null)
  br label %if.end.1144

if.end.1144:                                      ; preds = %if.then.1143, %if.end.1137
  %679 = load %struct.function*, %struct.function** @cfun, align 8
  %x_whole_function_mode_p = getelementptr inbounds %struct.function, %struct.function* %679, i32 0, i32 56
  %680 = bitcast i24* %x_whole_function_mode_p to i32*
  %bf.load1145 = load i32, i32* %680, align 8
  %bf.lshr1146 = lshr i32 %bf.load1145, 18
  %bf.clear1147 = and i32 %bf.lshr1146, 1
  %tobool1148 = icmp ne i32 %bf.clear1147, 0
  br i1 %tobool1148, label %if.else.1150, label %if.then.1149

if.then.1149:                                     ; preds = %if.end.1144
  %681 = load %union.tree_node*, %union.tree_node** %block, align 8
  call void @insert_block(%union.tree_node* %681)
  br label %if.end.1161

if.else.1150:                                     ; preds = %if.end.1144
  %682 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl1151 = bitcast %union.tree_node* %682 to %struct.tree_decl*
  %initial1152 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1151, i32 0, i32 12
  %683 = load %union.tree_node*, %union.tree_node** %initial1152, align 8
  %common1153 = bitcast %union.tree_node* %683 to %struct.tree_common*
  %chain1154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1153, i32 0, i32 0
  %684 = load %union.tree_node*, %union.tree_node** %chain1154, align 8
  %685 = load %union.tree_node*, %union.tree_node** %block, align 8
  %common1155 = bitcast %union.tree_node* %685 to %struct.tree_common*
  %chain1156 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1155, i32 0, i32 0
  store %union.tree_node* %684, %union.tree_node** %chain1156, align 8
  %686 = load %union.tree_node*, %union.tree_node** %block, align 8
  %687 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl1157 = bitcast %union.tree_node* %687 to %struct.tree_decl*
  %initial1158 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1157, i32 0, i32 12
  %688 = load %union.tree_node*, %union.tree_node** %initial1158, align 8
  %common1159 = bitcast %union.tree_node* %688 to %struct.tree_common*
  %chain1160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1159, i32 0, i32 0
  store %union.tree_node* %686, %union.tree_node** %chain1160, align 8
  br label %if.end.1161

if.end.1161:                                      ; preds = %if.else.1150, %if.then.1149
  call void @expand_end_bindings(%union.tree_node* null, i32 1, i32 1)
  %689 = load i32, i32* @flag_test_coverage, align 4
  %tobool1162 = icmp ne i32 %689, 0
  br i1 %tobool1162, label %if.then.1163, label %if.end.1165

if.then.1163:                                     ; preds = %if.end.1161
  %call1164 = call %struct.rtx_def* @emit_note(i8* null, i32 -84)
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.then.1163, %if.end.1161
  %690 = load i8*, i8** @input_filename, align 8
  %691 = load i32, i32* @lineno, align 4
  %call1166 = call %struct.rtx_def* @emit_line_note(i8* %690, i32 %691)
  %692 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1167 = icmp ne %struct.rtx_def* %692, null
  br i1 %tobool1167, label %land.lhs.true.1168, label %if.end.1193

land.lhs.true.1168:                               ; preds = %if.end.1165
  %693 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common1169 = bitcast %union.tree_node* %693 to %struct.tree_common*
  %type1170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1169, i32 0, i32 1
  %694 = load %union.tree_node*, %union.tree_node** %type1170, align 8
  %common1171 = bitcast %union.tree_node* %694 to %struct.tree_common*
  %type1172 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1171, i32 0, i32 1
  %695 = load %union.tree_node*, %union.tree_node** %type1172, align 8
  %type1173 = bitcast %union.tree_node* %695 to %struct.tree_type*
  %mode1174 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1173, i32 0, i32 6
  %bf.load1175 = load i32, i32* %mode1174, align 4
  %bf.lshr1176 = lshr i32 %bf.load1175, 9
  %bf.clear1177 = and i32 %bf.lshr1176, 127
  %cmp1178 = icmp eq i32 %bf.clear1177, 51
  br i1 %cmp1178, label %land.lhs.true.1180, label %if.end.1193

land.lhs.true.1180:                               ; preds = %land.lhs.true.1168
  %696 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common1181 = bitcast %union.tree_node* %696 to %struct.tree_common*
  %type1182 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1181, i32 0, i32 1
  %697 = load %union.tree_node*, %union.tree_node** %type1182, align 8
  %common1183 = bitcast %union.tree_node* %697 to %struct.tree_common*
  %type1184 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1183, i32 0, i32 1
  %698 = load %union.tree_node*, %union.tree_node** %type1184, align 8
  %call1185 = call i32 @aggregate_value_p(%union.tree_node* %698)
  %tobool1186 = icmp ne i32 %call1185, 0
  br i1 %tobool1186, label %if.end.1193, label %if.then.1187

if.then.1187:                                     ; preds = %land.lhs.true.1180
  %699 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %700 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %common1188 = bitcast %union.tree_node* %700 to %struct.tree_common*
  %type1189 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1188, i32 0, i32 1
  %701 = load %union.tree_node*, %union.tree_node** %type1189, align 8
  %common1190 = bitcast %union.tree_node* %701 to %struct.tree_common*
  %type1191 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1190, i32 0, i32 1
  %702 = load %union.tree_node*, %union.tree_node** %type1191, align 8
  %call1192 = call %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def* null, %struct.rtx_def* %699, %union.tree_node* %702)
  store %struct.rtx_def* %call1192, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1193

if.end.1193:                                      ; preds = %if.then.1187, %land.lhs.true.1180, %land.lhs.true.1168, %if.end.1165
  %703 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %tobool1194 = icmp ne %struct.rtx_def* %703, null
  br i1 %tobool1194, label %if.then.1195, label %if.end.1208

if.then.1195:                                     ; preds = %if.end.1193
  %704 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1196 = bitcast %union.tree_node* %704 to %struct.tree_type*
  %mode1197 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1196, i32 0, i32 6
  %bf.load1198 = load i32, i32* %mode1197, align 4
  %bf.lshr1199 = lshr i32 %bf.load1198, 9
  %bf.clear1200 = and i32 %bf.lshr1199, 127
  %705 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1201 = bitcast %union.tree_node* %705 to %struct.tree_type*
  %mode1202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1201, i32 0, i32 6
  %bf.load1203 = load i32, i32* %mode1202, align 4
  %bf.lshr1204 = lshr i32 %bf.load1203, 9
  %bf.clear1205 = and i32 %bf.lshr1204, 127
  %706 = load %struct.rtx_def*, %struct.rtx_def** %structure_value_addr.addr, align 8
  %call1206 = call %struct.rtx_def* @memory_address(i32 %bf.clear1205, %struct.rtx_def* %706)
  %call1207 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear1200, %struct.rtx_def* %call1206)
  store %struct.rtx_def* %call1207, %struct.rtx_def** %target.addr, align 8
  %707 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %708 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @set_mem_attributes(%struct.rtx_def* %707, %union.tree_node* %708, i32 1)
  br label %if.end.1208

if.end.1208:                                      ; preds = %if.then.1195, %if.end.1193
  %709 = load %struct.rtx_def**, %struct.rtx_def*** %real_label_map, align 8
  %tobool1209 = icmp ne %struct.rtx_def** %709, null
  br i1 %tobool1209, label %if.then.1210, label %if.end.1211

if.then.1210:                                     ; preds = %if.end.1208
  %710 = load %struct.rtx_def**, %struct.rtx_def*** %real_label_map, align 8
  %711 = bitcast %struct.rtx_def** %710 to i8*
  call void @free(i8* %711) #4
  br label %if.end.1211

if.end.1211:                                      ; preds = %if.then.1210, %if.end.1208
  br label %do.body

do.body:                                          ; preds = %if.end.1211
  %712 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1212 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %712, i32 0, i32 9
  %713 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1212, align 8
  %tobool1213 = icmp ne %struct.varray_head_tag* %713, null
  br i1 %tobool1213, label %if.then.1214, label %if.end.1217

if.then.1214:                                     ; preds = %do.body
  %714 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1215 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %714, i32 0, i32 9
  %715 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1215, align 8
  %716 = bitcast %struct.varray_head_tag* %715 to i8*
  call void @free(i8* %716) #4
  %717 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1216 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %717, i32 0, i32 9
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %const_equiv_varray1216, align 8
  br label %if.end.1217

if.end.1217:                                      ; preds = %if.then.1214, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.1217
  %718 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1218 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %718, i32 0, i32 4
  %719 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1218, align 8
  %720 = bitcast %struct.rtx_def** %719 to i8*
  call void @free(i8* %720) #4
  br label %do.body.1219

do.body.1219:                                     ; preds = %do.end
  %721 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map1220 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %721, i32 0, i32 3
  %722 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map1220, align 8
  %tobool1221 = icmp ne %struct.varray_head_tag* %722, null
  br i1 %tobool1221, label %if.then.1222, label %if.end.1225

if.then.1222:                                     ; preds = %do.body.1219
  %723 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map1223 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %723, i32 0, i32 3
  %724 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map1223, align 8
  %725 = bitcast %struct.varray_head_tag* %724 to i8*
  call void @free(i8* %725) #4
  %726 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %block_map1224 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %726, i32 0, i32 3
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %block_map1224, align 8
  br label %if.end.1225

if.end.1225:                                      ; preds = %if.then.1222, %do.body.1219
  br label %do.end.1226

do.end.1226:                                      ; preds = %if.end.1225
  %727 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map1227 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %727, i32 0, i32 6
  %728 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map1227, align 8
  %729 = bitcast %struct.rtx_def** %728 to i8*
  call void @free(i8* %729) #4
  %730 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %731 = bitcast %struct.inline_remap* %730 to i8*
  call void @free(i8* %731) #4
  %732 = load %struct.rtx_def**, %struct.rtx_def*** %arg_vals, align 8
  %733 = bitcast %struct.rtx_def** %732 to i8*
  call void @free(i8* %733) #4
  %734 = load %union.tree_node**, %union.tree_node*** %arg_trees, align 8
  %735 = bitcast %union.tree_node** %734 to i8*
  call void @free(i8* %735) #4
  %736 = load %struct.function*, %struct.function** %inlining_previous, align 8
  store %struct.function* %736, %struct.function** @inlining, align 8
  %737 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %737, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %do.end.1226, %if.then.39, %if.then.16
  %738 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %738
}

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare %struct.rtx_def* @assign_temp(%union.tree_node*, i32, i32, i32) #1

declare %struct.rtx_def* @store_expr(%union.tree_node*, %struct.rtx_def*, i32) #1

declare i32 @promote_mode(%union.tree_node*, i32, i32*, i32) #1

declare %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #1

declare void @mark_reg_pointer(%struct.rtx_def*, i32) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

declare i32 @max_reg_num() #1

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare %struct.rtx_def* @lookup_static_chain(%union.tree_node*) #1

declare %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def*) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %orig, %struct.inline_remap* %map, i32 %for_lhs) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %for_lhs.addr = alloca i32, align 4
  %copy = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %mode = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %loc = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %alignment = alloca i32, align 4
  %p = alloca %struct.const_equiv_data*, align 8
  %is_global = alloca i32, align 4
  %loc92 = alloca %struct.rtx_def*, align 8
  %seq93 = alloca %struct.rtx_def*, align 8
  %size94 = alloca i32, align 4
  %p118 = alloca %struct.const_equiv_data*, align 8
  %is_global128 = alloca i32, align 4
  %f486 = alloca %struct.function*, align 8
  %constant = alloca %struct.rtx_def*, align 8
  %const_mode = alloca i32, align 4
  %temp496 = alloca %struct.rtx_def*, align 8
  %d = alloca %struct.realvaluetype, align 8
  %u = alloca %union.real_extract, align 8
  %copy610 = alloca %struct.rtx_def*, align 8
  %equiv_reg = alloca %struct.rtx_def*, align 8
  %equiv_loc = alloca %struct.rtx_def*, align 8
  %loc_offset = alloca i64, align 8
  %const_mode784 = alloca i32, align 4
  %constant789 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store i32 %for_lhs, i32* %for_lhs.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode, align 4
  %5 = load i32, i32* %code, align 4
  switch i32 %5, label %sw.default [
    i32 61, label %sw.bb
    i32 63, label %sw.bb.252
    i32 70, label %sw.bb.270
    i32 48, label %sw.bb.365
    i32 49, label %sw.bb.365
    i32 37, label %sw.bb.390
    i32 36, label %sw.bb.397
    i32 67, label %sw.bb.414
    i32 59, label %sw.bb.479
    i32 69, label %sw.bb.479
    i32 54, label %sw.bb.479
    i32 56, label %sw.bb.479
    i32 68, label %sw.bb.480
    i32 55, label %sw.bb.519
    i32 58, label %sw.bb.543
    i32 41, label %sw.bb.550
    i32 50, label %sw.bb.609
    i32 47, label %sw.bb.695
    i32 66, label %sw.bb.765
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  store i32 %7, i32* %regno, align 4
  %8 = load i32, i32* %regno, align 4
  %cmp3 = icmp sle i32 %8, 57
  br i1 %cmp3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %integrating = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %9, i32 0, i32 0
  %10 = load i32, i32* %integrating, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.194

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %11, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 19
  %f = bitcast %union.anon.1* %u2 to %struct.function**
  %13 = load %struct.function*, %struct.function** %f, align 8
  %internal_arg_pointer = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 15
  %14 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %cmp4 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp4, label %if.then.5, label %if.end.194

if.then.5:                                        ; preds = %land.lhs.true, %sw.bb
  %16 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %17, i32 0, i32 4
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %18, i64 %idxprom
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  %cmp7 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  %20 = load i32, i32* %regno, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map10 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %21, i32 0, i32 4
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map10, align 8
  %arrayidx11 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %22, i64 %idxprom9
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.then.5
  %24 = load i32, i32* %regno, align 4
  %cmp12 = icmp eq i32 %24, 54
  br i1 %cmp12, label %if.then.13, label %if.else.77

if.then.13:                                       ; preds = %if.else
  %25 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl14 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %25, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %fndecl14, align 8
  %decl15 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %u216 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 19
  %f17 = bitcast %union.anon.1* %u216 to %struct.function**
  %27 = load %struct.function*, %struct.function** %f17, align 8
  %call = call i64 @get_func_frame_size(%struct.function* %27)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %28 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl18 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %28, i32 0, i32 1
  %29 = load %union.tree_node*, %union.tree_node** %fndecl18, align 8
  %decl19 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %u220 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl19, i32 0, i32 19
  %f21 = bitcast %union.anon.1* %u220 to %struct.function**
  %30 = load %struct.function*, %struct.function** %f21, align 8
  %stack_alignment_needed = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 52
  %31 = load i32, i32* %stack_alignment_needed, align 4
  %div = sdiv i32 %31, 8
  store i32 %div, i32* %alignment, align 4
  %32 = load i32, i32* %alignment, align 4
  %tobool22 = icmp ne i32 %32, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.13
  %33 = load i32, i32* %size, align 4
  %34 = load i32, i32* %alignment, align 4
  %add = add nsw i32 %33, %34
  %sub = sub nsw i32 %add, 1
  %35 = load i32, i32* %alignment, align 4
  %sub24 = sub nsw i32 %35, 1
  %neg = xor i32 %sub24, -1
  %and = and i32 %sub, %neg
  store i32 %and, i32* %size, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.13
  call void @start_sequence()
  %36 = load i32, i32* %size, align 4
  %conv26 = sext i32 %36 to i64
  %call27 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %conv26, i32 1)
  store %struct.rtx_def* %call27, %struct.rtx_def** %loc, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %loc, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %40 = load i32, i32* %size, align 4
  %conv30 = sext i32 %40 to i64
  %call31 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %39, i64 %conv30)
  store %struct.rtx_def* %call31, %struct.rtx_def** %loc, align 8
  %41 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %41, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond = select i1 %tobool33, i32 5, i32 4
  %42 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %call34 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %42, %struct.rtx_def* null)
  %call35 = call %struct.rtx_def* @force_reg(i32 %cond, %struct.rtx_def* %call34)
  store %struct.rtx_def* %call35, %struct.rtx_def** %temp, align 8
  %43 = load i32, i32* %regno, align 4
  %idxprom36 = sext i32 %43 to i64
  %44 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map37 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %44, i32 0, i32 4
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map37, align 8
  %arrayidx38 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %45, i64 %idxprom36
  store %struct.rtx_def* %call35, %struct.rtx_def** %arrayidx38, align 8
  %46 = load i32, i32* %regno, align 4
  %idxprom39 = sext i32 %46 to i64
  %47 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map40 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %47, i32 0, i32 4
  %48 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map40, align 8
  %arrayidx41 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %48, i64 %idxprom39
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx41, align 8
  %50 = load i32, i32* @target_flags, align 4
  %and42 = and i32 %50, 33554432
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 64, i32 32
  call void @mark_reg_pointer(%struct.rtx_def* %49, i32 %cond44)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtuint47 = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %52 = load i32, i32* %rtuint47, align 4
  %conv48 = zext i32 %52 to i64
  %53 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %53, i32 0, i32 9
  %54 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %54, i32 0, i32 0
  %55 = load i64, i64* %num_elements, align 8
  %cmp49 = icmp uge i64 %conv48, %55
  br i1 %cmp49, label %if.then.51, label %if.end.67

if.then.51:                                       ; preds = %if.end.25
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %57 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray52 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %57, i32 0, i32 9
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray52, align 8
  %cmp53 = icmp eq %struct.varray_head_tag* %56, %58
  %conv54 = zext i1 %cmp53 to i32
  store i32 %conv54, i32* %is_global, align 4
  %59 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray55 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %59, i32 0, i32 9
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray55, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtuint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %62 = load i32, i32* %rtuint58, align 4
  %add59 = add i32 %62, 1
  %conv60 = zext i32 %add59 to i64
  %call61 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %60, i64 %conv60)
  %63 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray62 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %63, i32 0, i32 9
  store %struct.varray_head_tag* %call61, %struct.varray_head_tag** %const_equiv_varray62, align 8
  %64 = load i32, i32* %is_global, align 4
  %tobool63 = icmp ne i32 %64, 0
  br i1 %tobool63, label %if.then.64, label %if.end.66

if.then.64:                                       ; preds = %if.then.51
  %65 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray65 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %65, i32 0, i32 9
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray65, align 8
  store %struct.varray_head_tag* %66, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %if.then.51
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.25
  %67 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtuint70 = bitcast %union.rtunion_def* %arrayidx69 to i32*
  %68 = load i32, i32* %rtuint70, align 4
  %idxprom71 = zext i32 %68 to i64
  %69 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray72 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %69, i32 0, i32 9
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray72, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx73 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom71
  store %struct.const_equiv_data* %arrayidx73, %struct.const_equiv_data** %p, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %72 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx74 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %72, i32 0, i32 0
  store %struct.rtx_def* %71, %struct.rtx_def** %rtx74, align 8
  %73 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %73, i32 0, i32 1
  store i32 -1, i32* %age, align 4
  %call75 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call75, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %74 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %75 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insns_at_start = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %75, i32 0, i32 2
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insns_at_start, align 8
  %call76 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %74, %struct.rtx_def* %76)
  %77 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %retval
  br label %return

if.else.77:                                       ; preds = %if.else
  %78 = load i32, i32* %regno, align 4
  %cmp78 = icmp eq i32 %78, 53
  br i1 %cmp78, label %if.then.91, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.else.77
  %79 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %integrating81 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %79, i32 0, i32 0
  %80 = load i32, i32* %integrating81, align 4
  %tobool82 = icmp ne i32 %80, 0
  br i1 %tobool82, label %land.lhs.true.83, label %if.else.158

land.lhs.true.83:                                 ; preds = %lor.lhs.false.80
  %81 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl84 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %81, i32 0, i32 1
  %82 = load %union.tree_node*, %union.tree_node** %fndecl84, align 8
  %decl85 = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %u286 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl85, i32 0, i32 19
  %f87 = bitcast %union.anon.1* %u286 to %struct.function**
  %83 = load %struct.function*, %struct.function** %f87, align 8
  %internal_arg_pointer88 = getelementptr inbounds %struct.function, %struct.function* %83, i32 0, i32 15
  %84 = load %struct.rtx_def*, %struct.rtx_def** %internal_arg_pointer88, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %cmp89 = icmp eq %struct.rtx_def* %84, %85
  br i1 %cmp89, label %if.then.91, label %if.else.158

if.then.91:                                       ; preds = %land.lhs.true.83, %if.else.77
  %86 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl95 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %86, i32 0, i32 1
  %87 = load %union.tree_node*, %union.tree_node** %fndecl95, align 8
  %decl96 = bitcast %union.tree_node* %87 to %struct.tree_decl*
  %u297 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl96, i32 0, i32 19
  %f98 = bitcast %union.anon.1* %u297 to %struct.function**
  %88 = load %struct.function*, %struct.function** %f98, align 8
  %args_size = getelementptr inbounds %struct.function, %struct.function* %88, i32 0, i32 9
  %89 = load i32, i32* %args_size, align 4
  store i32 %89, i32* %size94, align 4
  call void @start_sequence()
  %90 = load i32, i32* %size94, align 4
  %conv99 = sext i32 %90 to i64
  %call100 = call %struct.rtx_def* @assign_stack_temp(i32 51, i64 %conv99, i32 1)
  store %struct.rtx_def* %call100, %struct.rtx_def** %loc92, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %loc92, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %loc92, align 8
  %93 = load i32, i32* @target_flags, align 4
  %and104 = and i32 %93, 33554432
  %tobool105 = icmp ne i32 %and104, 0
  %cond106 = select i1 %tobool105, i32 5, i32 4
  %94 = load %struct.rtx_def*, %struct.rtx_def** %loc92, align 8
  %call107 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %94, %struct.rtx_def* null)
  %call108 = call %struct.rtx_def* @force_reg(i32 %cond106, %struct.rtx_def* %call107)
  store %struct.rtx_def* %call108, %struct.rtx_def** %temp, align 8
  %95 = load i32, i32* %regno, align 4
  %idxprom109 = sext i32 %95 to i64
  %96 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map110 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %96, i32 0, i32 4
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map110, align 8
  %arrayidx111 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %97, i64 %idxprom109
  store %struct.rtx_def* %call108, %struct.rtx_def** %arrayidx111, align 8
  %98 = load i32, i32* %regno, align 4
  %idxprom112 = sext i32 %98 to i64
  %99 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map113 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %99, i32 0, i32 4
  %100 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map113, align 8
  %arrayidx114 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %100, i64 %idxprom112
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx114, align 8
  %102 = load i32, i32* @target_flags, align 4
  %and115 = and i32 %102, 33554432
  %tobool116 = icmp ne i32 %and115, 0
  %cond117 = select i1 %tobool116, i32 64, i32 32
  call void @mark_reg_pointer(%struct.rtx_def* %101, i32 %cond117)
  %103 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtuint121 = bitcast %union.rtunion_def* %arrayidx120 to i32*
  %104 = load i32, i32* %rtuint121, align 4
  %conv122 = zext i32 %104 to i64
  %105 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray123 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %105, i32 0, i32 9
  %106 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray123, align 8
  %num_elements124 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %106, i32 0, i32 0
  %107 = load i64, i64* %num_elements124, align 8
  %cmp125 = icmp uge i64 %conv122, %107
  br i1 %cmp125, label %if.then.127, label %if.end.144

if.then.127:                                      ; preds = %if.then.91
  %108 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %109 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray129 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %109, i32 0, i32 9
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray129, align 8
  %cmp130 = icmp eq %struct.varray_head_tag* %108, %110
  %conv131 = zext i1 %cmp130 to i32
  store i32 %conv131, i32* %is_global128, align 4
  %111 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray132 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %111, i32 0, i32 9
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray132, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtuint135 = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %114 = load i32, i32* %rtuint135, align 4
  %add136 = add i32 %114, 1
  %conv137 = zext i32 %add136 to i64
  %call138 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %112, i64 %conv137)
  %115 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray139 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %115, i32 0, i32 9
  store %struct.varray_head_tag* %call138, %struct.varray_head_tag** %const_equiv_varray139, align 8
  %116 = load i32, i32* %is_global128, align 4
  %tobool140 = icmp ne i32 %116, 0
  br i1 %tobool140, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %if.then.127
  %117 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray142 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %117, i32 0, i32 9
  %118 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray142, align 8
  store %struct.varray_head_tag* %118, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %if.then.127
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.91
  %119 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtuint147 = bitcast %union.rtunion_def* %arrayidx146 to i32*
  %120 = load i32, i32* %rtuint147, align 4
  %idxprom148 = zext i32 %120 to i64
  %121 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray149 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %121, i32 0, i32 9
  %122 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray149, align 8
  %data150 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %122, i32 0, i32 4
  %const_equiv151 = bitcast %union.varray_data_tag* %data150 to [1 x %struct.const_equiv_data]*
  %arrayidx152 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv151, i32 0, i64 %idxprom148
  store %struct.const_equiv_data* %arrayidx152, %struct.const_equiv_data** %p118, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %loc92, align 8
  %124 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p118, align 8
  %rtx153 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %124, i32 0, i32 0
  store %struct.rtx_def* %123, %struct.rtx_def** %rtx153, align 8
  %125 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p118, align 8
  %age154 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %125, i32 0, i32 1
  store i32 -1, i32* %age154, align 4
  %call155 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call155, %struct.rtx_def** %seq93, align 8
  call void @end_sequence()
  %126 = load %struct.rtx_def*, %struct.rtx_def** %seq93, align 8
  %127 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insns_at_start156 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %127, i32 0, i32 2
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insns_at_start156, align 8
  %call157 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %126, %struct.rtx_def* %128)
  %129 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %retval
  br label %return

if.else.158:                                      ; preds = %land.lhs.true.83, %lor.lhs.false.80
  %130 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load159 = load i32, i32* %131, align 8
  %bf.lshr160 = lshr i32 %bf.load159, 30
  %bf.clear161 = and i32 %bf.lshr160, 1
  %tobool162 = icmp ne i32 %bf.clear161, 0
  br i1 %tobool162, label %if.then.163, label %if.else.193

if.then.163:                                      ; preds = %if.else.158
  %132 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %132, i32 0, i32 11
  %133 = load %struct.rtx_def*, %struct.rtx_def** %inline_target, align 8
  %cmp164 = icmp eq %struct.rtx_def* %133, null
  br i1 %cmp164, label %if.then.166, label %if.else.174

if.then.166:                                      ; preds = %if.then.163
  %134 = load i32, i32* @rtx_equal_function_value_matters, align 4
  %tobool167 = icmp ne i32 %134, 0
  br i1 %tobool167, label %if.then.168, label %if.else.173

if.then.168:                                      ; preds = %if.then.166
  %135 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load169 = load i32, i32* %136, align 8
  %bf.lshr170 = lshr i32 %bf.load169, 16
  %bf.clear171 = and i32 %bf.lshr170, 255
  %137 = load i32, i32* %regno, align 4
  %call172 = call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear171, i32 %137)
  store %struct.rtx_def* %call172, %struct.rtx_def** %retval
  br label %return

if.else.173:                                      ; preds = %if.then.166
  %138 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %138, %struct.rtx_def** %retval
  br label %return

if.else.174:                                      ; preds = %if.then.163
  %139 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target175 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %139, i32 0, i32 11
  %140 = load %struct.rtx_def*, %struct.rtx_def** %inline_target175, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load176 = load i32, i32* %141, align 8
  %bf.lshr177 = lshr i32 %bf.load176, 16
  %bf.clear178 = and i32 %bf.lshr177, 255
  %cmp179 = icmp ne i32 %bf.clear178, 51
  br i1 %cmp179, label %land.lhs.true.181, label %if.else.191

land.lhs.true.181:                                ; preds = %if.else.174
  %142 = load i32, i32* %mode, align 4
  %143 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target182 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %143, i32 0, i32 11
  %144 = load %struct.rtx_def*, %struct.rtx_def** %inline_target182, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load183 = load i32, i32* %145, align 8
  %bf.lshr184 = lshr i32 %bf.load183, 16
  %bf.clear185 = and i32 %bf.lshr184, 255
  %cmp186 = icmp ne i32 %142, %bf.clear185
  br i1 %cmp186, label %if.then.188, label %if.else.191

if.then.188:                                      ; preds = %land.lhs.true.181
  %146 = load i32, i32* %mode, align 4
  %147 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target189 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %147, i32 0, i32 11
  %148 = load %struct.rtx_def*, %struct.rtx_def** %inline_target189, align 8
  %call190 = call %struct.rtx_def* @gen_lowpart(i32 %146, %struct.rtx_def* %148)
  store %struct.rtx_def* %call190, %struct.rtx_def** %retval
  br label %return

if.else.191:                                      ; preds = %land.lhs.true.181, %if.else.174
  %149 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target192 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %149, i32 0, i32 11
  %150 = load %struct.rtx_def*, %struct.rtx_def** %inline_target192, align 8
  store %struct.rtx_def* %150, %struct.rtx_def** %retval
  br label %return

if.else.193:                                      ; preds = %if.else.158
  %151 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %151, %struct.rtx_def** %retval
  br label %return

if.end.194:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %152 = load i32, i32* %regno, align 4
  %idxprom195 = sext i32 %152 to i64
  %153 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map196 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %153, i32 0, i32 4
  %154 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map196, align 8
  %arrayidx197 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %154, i64 %idxprom195
  %155 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx197, align 8
  %cmp198 = icmp eq %struct.rtx_def* %155, null
  br i1 %cmp198, label %if.then.200, label %if.end.248

if.then.200:                                      ; preds = %if.end.194
  %156 = load i32, i32* %mode, align 4
  %call201 = call %struct.rtx_def* @gen_reg_rtx(i32 %156)
  %157 = load i32, i32* %regno, align 4
  %idxprom202 = sext i32 %157 to i64
  %158 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map203 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %158, i32 0, i32 4
  %159 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map203, align 8
  %arrayidx204 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %159, i64 %idxprom202
  store %struct.rtx_def* %call201, %struct.rtx_def** %arrayidx204, align 8
  %160 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load205 = load i32, i32* %161, align 8
  %bf.lshr206 = lshr i32 %bf.load205, 27
  %bf.clear207 = and i32 %bf.lshr206, 1
  %162 = load i32, i32* %regno, align 4
  %idxprom208 = sext i32 %162 to i64
  %163 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map209 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %163, i32 0, i32 4
  %164 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map209, align 8
  %arrayidx210 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %164, i64 %idxprom208
  %165 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx210, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load211 = load i32, i32* %166, align 8
  %bf.value = and i32 %bf.clear207, 1
  %bf.shl = shl i32 %bf.value, 27
  %bf.clear212 = and i32 %bf.load211, -134217729
  %bf.set = or i32 %bf.clear212, %bf.shl
  store i32 %bf.set, i32* %166, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load213 = load i32, i32* %168, align 8
  %bf.lshr214 = lshr i32 %bf.load213, 28
  %bf.clear215 = and i32 %bf.lshr214, 1
  %169 = load i32, i32* %regno, align 4
  %idxprom216 = sext i32 %169 to i64
  %170 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map217 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %170, i32 0, i32 4
  %171 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map217, align 8
  %arrayidx218 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %171, i64 %idxprom216
  %172 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx218, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load219 = load i32, i32* %173, align 8
  %bf.value220 = and i32 %bf.clear215, 1
  %bf.shl221 = shl i32 %bf.value220, 28
  %bf.clear222 = and i32 %bf.load219, -268435457
  %bf.set223 = or i32 %bf.clear222, %bf.shl221
  store i32 %bf.set223, i32* %173, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load224 = load i32, i32* %175, align 8
  %bf.lshr225 = lshr i32 %bf.load224, 26
  %bf.clear226 = and i32 %bf.lshr225, 1
  %176 = load i32, i32* %regno, align 4
  %idxprom227 = sext i32 %176 to i64
  %177 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map228 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %177, i32 0, i32 4
  %178 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map228, align 8
  %arrayidx229 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %178, i64 %idxprom227
  %179 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx229, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load230 = load i32, i32* %180, align 8
  %bf.value231 = and i32 %bf.clear226, 1
  %bf.shl232 = shl i32 %bf.value231, 26
  %bf.clear233 = and i32 %bf.load230, -67108865
  %bf.set234 = or i32 %bf.clear233, %bf.shl232
  store i32 %bf.set234, i32* %180, align 8
  %181 = load i32, i32* %regno, align 4
  %idxprom235 = sext i32 %181 to i64
  %182 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %182, i32 0, i32 17
  %183 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx236 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %183, i64 %idxprom235
  %184 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx236, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %bf.load237 = load i32, i32* %185, align 8
  %bf.lshr238 = lshr i32 %bf.load237, 31
  %tobool239 = icmp ne i32 %bf.lshr238, 0
  br i1 %tobool239, label %if.then.240, label %if.end.247

if.then.240:                                      ; preds = %if.then.200
  %186 = load i32, i32* %regno, align 4
  %idxprom241 = sext i32 %186 to i64
  %187 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map242 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %187, i32 0, i32 4
  %188 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map242, align 8
  %arrayidx243 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %188, i64 %idxprom241
  %189 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx243, align 8
  %190 = load i32, i32* %regno, align 4
  %idxprom244 = sext i32 %190 to i64
  %191 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %regno_pointer_align = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %191, i32 0, i32 16
  %192 = load i8*, i8** %regno_pointer_align, align 8
  %arrayidx245 = getelementptr inbounds i8, i8* %192, i64 %idxprom244
  %193 = load i8, i8* %arrayidx245, align 1
  %conv246 = zext i8 %193 to i32
  call void @mark_reg_pointer(%struct.rtx_def* %189, i32 %conv246)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.240, %if.then.200
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.end.194
  %194 = load i32, i32* %regno, align 4
  %idxprom249 = sext i32 %194 to i64
  %195 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map250 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %195, i32 0, i32 4
  %196 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map250, align 8
  %arrayidx251 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %196, i64 %idxprom249
  %197 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx251, align 8
  store %struct.rtx_def* %197, %struct.rtx_def** %retval
  br label %return

sw.bb.252:                                        ; preds = %if.end
  %198 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  %200 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %201 = load i32, i32* %for_lhs.addr, align 4
  %call256 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %199, %struct.inline_remap* %200, i32 %201)
  store %struct.rtx_def* %call256, %struct.rtx_def** %copy, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load257 = load i32, i32* %203, align 8
  %bf.lshr258 = lshr i32 %bf.load257, 16
  %bf.clear259 = and i32 %bf.lshr258, 255
  %204 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx262, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load263 = load i32, i32* %207, align 8
  %bf.lshr264 = lshr i32 %bf.load263, 16
  %bf.clear265 = and i32 %bf.lshr264, 255
  %208 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 1
  %rtuint268 = bitcast %union.rtunion_def* %arrayidx267 to i32*
  %209 = load i32, i32* %rtuint268, align 4
  %call269 = call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear259, %struct.rtx_def* %204, i32 %bf.clear265, i32 %209)
  store %struct.rtx_def* %call269, %struct.rtx_def** %retval
  br label %return

sw.bb.270:                                        ; preds = %if.end
  %210 = load i32, i32* %mode, align 4
  %211 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld271 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld271, i32 0, i64 0
  %rtx273 = bitcast %union.rtunion_def* %arrayidx272 to %struct.rtx_def**
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtx273, align 8
  %213 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %214 = load i32, i32* %for_lhs.addr, align 4
  %call274 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %212, %struct.inline_remap* %213, i32 %214)
  %215 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 2
  %rttree = bitcast %union.rtunion_def* %arrayidx276 to %union.tree_node**
  %216 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %call277 = call %struct.rtx_def* @gen_rtx_fmt_eit(i32 70, i32 %210, %struct.rtx_def* %call274, i32 0, %union.tree_node* %216)
  store %struct.rtx_def* %call277, %struct.rtx_def** %copy, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld278 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx279 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld278, i32 0, i64 1
  %rtuint280 = bitcast %union.rtunion_def* %arrayidx279 to i32*
  %218 = load i32, i32* %rtuint280, align 4
  store i32 %218, i32* %regno, align 4
  %219 = load i32, i32* %regno, align 4
  %idxprom281 = sext i32 %219 to i64
  %220 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map282 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %220, i32 0, i32 4
  %221 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map282, align 8
  %arrayidx283 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %221, i64 %idxprom281
  %222 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx283, align 8
  %tobool284 = icmp ne %struct.rtx_def* %222, null
  br i1 %tobool284, label %if.then.285, label %if.else.292

if.then.285:                                      ; preds = %sw.bb.270
  %223 = load i32, i32* %regno, align 4
  %idxprom286 = sext i32 %223 to i64
  %224 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map287 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %224, i32 0, i32 4
  %225 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map287, align 8
  %arrayidx288 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %225, i64 %idxprom286
  %226 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx288, align 8
  %fld289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld289, i32 0, i64 0
  %rtuint291 = bitcast %union.rtunion_def* %arrayidx290 to i32*
  %227 = load i32, i32* %rtuint291, align 4
  store i32 %227, i32* %regno, align 4
  br label %if.end.361

if.else.292:                                      ; preds = %sw.bb.270
  %228 = load i32, i32* %regno, align 4
  %cmp293 = icmp sgt i32 %228, 57
  br i1 %cmp293, label %if.then.295, label %if.end.360

if.then.295:                                      ; preds = %if.else.292
  %229 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %230 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  store %struct.rtx_def* %230, %struct.rtx_def** %temp, align 8
  %231 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %232 = bitcast %struct.rtx_def* %231 to i32*
  %bf.load299 = load i32, i32* %232, align 8
  %bf.lshr300 = lshr i32 %bf.load299, 16
  %bf.clear301 = and i32 %bf.lshr300, 255
  %call302 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear301)
  %233 = load i32, i32* %regno, align 4
  %idxprom303 = sext i32 %233 to i64
  %234 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map304 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %234, i32 0, i32 4
  %235 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map304, align 8
  %arrayidx305 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %235, i64 %idxprom303
  store %struct.rtx_def* %call302, %struct.rtx_def** %arrayidx305, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load306 = load i32, i32* %237, align 8
  %bf.lshr307 = lshr i32 %bf.load306, 27
  %bf.clear308 = and i32 %bf.lshr307, 1
  %238 = load i32, i32* %regno, align 4
  %idxprom309 = sext i32 %238 to i64
  %239 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map310 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %239, i32 0, i32 4
  %240 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map310, align 8
  %arrayidx311 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %240, i64 %idxprom309
  %241 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx311, align 8
  %242 = bitcast %struct.rtx_def* %241 to i32*
  %bf.load312 = load i32, i32* %242, align 8
  %bf.value313 = and i32 %bf.clear308, 1
  %bf.shl314 = shl i32 %bf.value313, 27
  %bf.clear315 = and i32 %bf.load312, -134217729
  %bf.set316 = or i32 %bf.clear315, %bf.shl314
  store i32 %bf.set316, i32* %242, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load317 = load i32, i32* %244, align 8
  %bf.lshr318 = lshr i32 %bf.load317, 28
  %bf.clear319 = and i32 %bf.lshr318, 1
  %245 = load i32, i32* %regno, align 4
  %idxprom320 = sext i32 %245 to i64
  %246 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map321 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %246, i32 0, i32 4
  %247 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map321, align 8
  %arrayidx322 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %247, i64 %idxprom320
  %248 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx322, align 8
  %249 = bitcast %struct.rtx_def* %248 to i32*
  %bf.load323 = load i32, i32* %249, align 8
  %bf.value324 = and i32 %bf.clear319, 1
  %bf.shl325 = shl i32 %bf.value324, 28
  %bf.clear326 = and i32 %bf.load323, -268435457
  %bf.set327 = or i32 %bf.clear326, %bf.shl325
  store i32 %bf.set327, i32* %249, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %251 = bitcast %struct.rtx_def* %250 to i32*
  %bf.load328 = load i32, i32* %251, align 8
  %bf.lshr329 = lshr i32 %bf.load328, 26
  %bf.clear330 = and i32 %bf.lshr329, 1
  %252 = load i32, i32* %regno, align 4
  %idxprom331 = sext i32 %252 to i64
  %253 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map332 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %253, i32 0, i32 4
  %254 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map332, align 8
  %arrayidx333 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %254, i64 %idxprom331
  %255 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx333, align 8
  %256 = bitcast %struct.rtx_def* %255 to i32*
  %bf.load334 = load i32, i32* %256, align 8
  %bf.value335 = and i32 %bf.clear330, 1
  %bf.shl336 = shl i32 %bf.value335, 26
  %bf.clear337 = and i32 %bf.load334, -67108865
  %bf.set338 = or i32 %bf.clear337, %bf.shl336
  store i32 %bf.set338, i32* %256, align 8
  %257 = load i32, i32* %regno, align 4
  %idxprom339 = sext i32 %257 to i64
  %258 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %x_regno_reg_rtx340 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %258, i32 0, i32 17
  %259 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx340, align 8
  %arrayidx341 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %259, i64 %idxprom339
  %260 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx341, align 8
  %261 = bitcast %struct.rtx_def* %260 to i32*
  %bf.load342 = load i32, i32* %261, align 8
  %bf.lshr343 = lshr i32 %bf.load342, 31
  %tobool344 = icmp ne i32 %bf.lshr343, 0
  br i1 %tobool344, label %if.then.345, label %if.end.353

if.then.345:                                      ; preds = %if.then.295
  %262 = load i32, i32* %regno, align 4
  %idxprom346 = sext i32 %262 to i64
  %263 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map347 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %263, i32 0, i32 4
  %264 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map347, align 8
  %arrayidx348 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %264, i64 %idxprom346
  %265 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx348, align 8
  %266 = load i32, i32* %regno, align 4
  %idxprom349 = sext i32 %266 to i64
  %267 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %regno_pointer_align350 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %267, i32 0, i32 16
  %268 = load i8*, i8** %regno_pointer_align350, align 8
  %arrayidx351 = getelementptr inbounds i8, i8* %268, i64 %idxprom349
  %269 = load i8, i8* %arrayidx351, align 1
  %conv352 = zext i8 %269 to i32
  call void @mark_reg_pointer(%struct.rtx_def* %265, i32 %conv352)
  br label %if.end.353

if.end.353:                                       ; preds = %if.then.345, %if.then.295
  %270 = load i32, i32* %regno, align 4
  %idxprom354 = sext i32 %270 to i64
  %271 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map355 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %271, i32 0, i32 4
  %272 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map355, align 8
  %arrayidx356 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %272, i64 %idxprom354
  %273 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx356, align 8
  %fld357 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %arrayidx358 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld357, i32 0, i64 0
  %rtuint359 = bitcast %union.rtunion_def* %arrayidx358 to i32*
  %274 = load i32, i32* %rtuint359, align 4
  store i32 %274, i32* %regno, align 4
  br label %if.end.360

if.end.360:                                       ; preds = %if.end.353, %if.else.292
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.then.285
  %275 = load i32, i32* %regno, align 4
  %276 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld362 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %276, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld362, i32 0, i64 1
  %rtuint364 = bitcast %union.rtunion_def* %arrayidx363 to i32*
  store i32 %275, i32* %rtuint364, align 4
  %277 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %277, %struct.rtx_def** %retval
  br label %return

sw.bb.365:                                        ; preds = %if.end, %if.end
  %278 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %279 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  %280 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %281 = load i32, i32* %code, align 4
  %cmp369 = icmp eq i32 %281, 49
  %conv370 = zext i1 %cmp369 to i32
  %call371 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %279, %struct.inline_remap* %280, i32 %conv370)
  store %struct.rtx_def* %call371, %struct.rtx_def** %copy, align 8
  %282 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %283 = bitcast %struct.rtx_def* %282 to i32*
  %bf.load372 = load i32, i32* %283, align 8
  %bf.clear373 = and i32 %bf.load372, 65535
  %cmp374 = icmp eq i32 %bf.clear373, 63
  br i1 %cmp374, label %land.lhs.true.376, label %if.end.388

land.lhs.true.376:                                ; preds = %sw.bb.365
  %284 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld377 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %284, i32 0, i32 1
  %arrayidx378 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld377, i32 0, i64 0
  %rtx379 = bitcast %union.rtunion_def* %arrayidx378 to %struct.rtx_def**
  %285 = load %struct.rtx_def*, %struct.rtx_def** %rtx379, align 8
  %286 = bitcast %struct.rtx_def* %285 to i32*
  %bf.load380 = load i32, i32* %286, align 8
  %bf.clear381 = and i32 %bf.load380, 65535
  %cmp382 = icmp ne i32 %bf.clear381, 63
  br i1 %cmp382, label %if.then.384, label %if.end.388

if.then.384:                                      ; preds = %land.lhs.true.376
  %287 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld385 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx386 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld385, i32 0, i64 0
  %rtx387 = bitcast %union.rtunion_def* %arrayidx386 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %rtx387, align 8
  store %struct.rtx_def* %288, %struct.rtx_def** %copy, align 8
  br label %if.end.388

if.end.388:                                       ; preds = %if.then.384, %land.lhs.true.376, %sw.bb.365
  %289 = load i32, i32* %code, align 4
  %290 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call389 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %289, i32 0, %struct.rtx_def* %290)
  store %struct.rtx_def* %call389, %struct.rtx_def** %retval
  br label %return

sw.bb.390:                                        ; preds = %if.end
  %291 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld391 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx392 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld391, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx392 to i32*
  %292 = load i32, i32* %rtint, align 4
  %cmp393 = icmp ne i32 %292, -88
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %sw.bb.390
  br label %sw.epilog

if.end.396:                                       ; preds = %sw.bb.390
  br label %sw.bb.397

sw.bb.397:                                        ; preds = %if.end, %if.end.396
  %293 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %294 = bitcast %struct.rtx_def* %293 to i32*
  %bf.load398 = load i32, i32* %294, align 8
  %bf.lshr399 = lshr i32 %bf.load398, 28
  %bf.clear400 = and i32 %bf.lshr399, 1
  %295 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %296 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld401 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld401, i32 0, i64 5
  %rtint403 = bitcast %union.rtunion_def* %arrayidx402 to i32*
  %297 = load i32, i32* %rtint403, align 4
  %call404 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %295, i32 %297)
  %298 = bitcast %struct.rtx_def* %call404 to i32*
  %bf.load405 = load i32, i32* %298, align 8
  %bf.value406 = and i32 %bf.clear400, 1
  %bf.shl407 = shl i32 %bf.value406, 28
  %bf.clear408 = and i32 %bf.load405, -268435457
  %bf.set409 = or i32 %bf.clear408, %bf.shl407
  store i32 %bf.set409, i32* %298, align 8
  %299 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %300 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %300, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 5
  %rtint412 = bitcast %union.rtunion_def* %arrayidx411 to i32*
  %301 = load i32, i32* %rtint412, align 4
  %call413 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %299, i32 %301)
  store %struct.rtx_def* %call413, %struct.rtx_def** %retval
  br label %return

sw.bb.414:                                        ; preds = %if.end
  %302 = load i32, i32* %mode, align 4
  %303 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load415 = load i32, i32* %304, align 8
  %bf.lshr416 = lshr i32 %bf.load415, 27
  %bf.clear417 = and i32 %bf.lshr416, 1
  %tobool418 = icmp ne i32 %bf.clear417, 0
  br i1 %tobool418, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb.414
  %305 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 0
  %rtx421 = bitcast %union.rtunion_def* %arrayidx420 to %struct.rtx_def**
  %306 = load %struct.rtx_def*, %struct.rtx_def** %rtx421, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb.414
  %307 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld422 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx423 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld422, i32 0, i64 0
  %rtx424 = bitcast %union.rtunion_def* %arrayidx423 to %struct.rtx_def**
  %309 = load %struct.rtx_def*, %struct.rtx_def** %rtx424, align 8
  %fld425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %309, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld425, i32 0, i64 5
  %rtint427 = bitcast %union.rtunion_def* %arrayidx426 to i32*
  %310 = load i32, i32* %rtint427, align 4
  %call428 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %307, i32 %310)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond429 = phi %struct.rtx_def* [ %306, %cond.true ], [ %call428, %cond.false ]
  %call430 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 %302, %struct.rtx_def* %cond429)
  store %struct.rtx_def* %call430, %struct.rtx_def** %copy, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %312 = bitcast %struct.rtx_def* %311 to i32*
  %bf.load431 = load i32, i32* %312, align 8
  %bf.lshr432 = lshr i32 %bf.load431, 28
  %bf.clear433 = and i32 %bf.lshr432, 1
  %313 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %314 = bitcast %struct.rtx_def* %313 to i32*
  %bf.load434 = load i32, i32* %314, align 8
  %bf.value435 = and i32 %bf.clear433, 1
  %bf.shl436 = shl i32 %bf.value435, 28
  %bf.clear437 = and i32 %bf.load434, -268435457
  %bf.set438 = or i32 %bf.clear437, %bf.shl436
  store i32 %bf.set438, i32* %314, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %316 = bitcast %struct.rtx_def* %315 to i32*
  %bf.load439 = load i32, i32* %316, align 8
  %bf.lshr440 = lshr i32 %bf.load439, 27
  %bf.clear441 = and i32 %bf.lshr440, 1
  %tobool442 = icmp ne i32 %bf.clear441, 0
  br i1 %tobool442, label %land.rhs, label %land.end.462

land.rhs:                                         ; preds = %cond.end
  %317 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld443 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx444 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld443, i32 0, i64 0
  %rtx445 = bitcast %union.rtunion_def* %arrayidx444 to %struct.rtx_def**
  %318 = load %struct.rtx_def*, %struct.rtx_def** %rtx445, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 5
  %rtint448 = bitcast %union.rtunion_def* %arrayidx447 to i32*
  %319 = load i32, i32* %rtint448, align 4
  %call449 = call i32 @get_first_label_num()
  %cmp450 = icmp sge i32 %319, %call449
  br i1 %cmp450, label %land.rhs.452, label %land.end

land.rhs.452:                                     ; preds = %land.rhs
  %320 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %320, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 0
  %rtx455 = bitcast %union.rtunion_def* %arrayidx454 to %struct.rtx_def**
  %321 = load %struct.rtx_def*, %struct.rtx_def** %rtx455, align 8
  %fld456 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %arrayidx457 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld456, i32 0, i64 5
  %rtint458 = bitcast %union.rtunion_def* %arrayidx457 to i32*
  %322 = load i32, i32* %rtint458, align 4
  %call459 = call i32 @max_label_num()
  %cmp460 = icmp slt i32 %322, %call459
  br label %land.end

land.end:                                         ; preds = %land.rhs.452, %land.rhs
  %323 = phi i1 [ false, %land.rhs ], [ %cmp460, %land.rhs.452 ]
  %lnot = xor i1 %323, true
  br label %land.end.462

land.end.462:                                     ; preds = %land.end, %cond.end
  %324 = phi i1 [ false, %cond.end ], [ %lnot, %land.end ]
  %land.ext = zext i1 %324 to i32
  %325 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %326 = bitcast %struct.rtx_def* %325 to i32*
  %bf.load463 = load i32, i32* %326, align 8
  %bf.value464 = and i32 %land.ext, 1
  %bf.shl465 = shl i32 %bf.value464, 27
  %bf.clear466 = and i32 %bf.load463, -134217729
  %bf.set467 = or i32 %bf.clear466, %bf.shl465
  store i32 %bf.set467, i32* %326, align 8
  %327 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %328 = bitcast %struct.rtx_def* %327 to i32*
  %bf.load468 = load i32, i32* %328, align 8
  %bf.lshr469 = lshr i32 %bf.load468, 27
  %bf.clear470 = and i32 %bf.lshr469, 1
  %tobool471 = icmp ne i32 %bf.clear470, 0
  br i1 %tobool471, label %land.lhs.true.472, label %if.end.478

land.lhs.true.472:                                ; preds = %land.end.462
  %329 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %330 = bitcast %struct.rtx_def* %329 to i32*
  %bf.load473 = load i32, i32* %330, align 8
  %bf.lshr474 = lshr i32 %bf.load473, 27
  %bf.clear475 = and i32 %bf.lshr474, 1
  %tobool476 = icmp ne i32 %bf.clear475, 0
  br i1 %tobool476, label %if.end.478, label %if.then.477

if.then.477:                                      ; preds = %land.lhs.true.472
  %331 = load %struct.function*, %struct.function** @cfun, align 8
  %x_function_call_count = getelementptr inbounds %struct.function, %struct.function* %331, i32 0, i32 18
  %332 = load i32, i32* %x_function_call_count, align 4
  %inc = add nsw i32 %332, 1
  store i32 %inc, i32* %x_function_call_count, align 4
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.477, %land.lhs.true.472, %land.end.462
  %333 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %333, %struct.rtx_def** %retval
  br label %return

sw.bb.479:                                        ; preds = %if.end, %if.end, %if.end, %if.end
  %334 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %334, %struct.rtx_def** %retval
  br label %return

sw.bb.480:                                        ; preds = %if.end
  %335 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %336 = bitcast %struct.rtx_def* %335 to i32*
  %bf.load481 = load i32, i32* %336, align 8
  %bf.lshr482 = lshr i32 %bf.load481, 26
  %bf.clear483 = and i32 %bf.lshr482, 1
  %tobool484 = icmp ne i32 %bf.clear483, 0
  br i1 %tobool484, label %if.then.485, label %if.end.518

if.then.485:                                      ; preds = %sw.bb.480
  %337 = load %struct.function*, %struct.function** @inlining, align 8
  %tobool487 = icmp ne %struct.function* %337, null
  br i1 %tobool487, label %cond.true.488, label %cond.false.489

cond.true.488:                                    ; preds = %if.then.485
  %338 = load %struct.function*, %struct.function** @inlining, align 8
  br label %cond.end.490

cond.false.489:                                   ; preds = %if.then.485
  %339 = load %struct.function*, %struct.function** @cfun, align 8
  br label %cond.end.490

cond.end.490:                                     ; preds = %cond.false.489, %cond.true.488
  %cond491 = phi %struct.function* [ %338, %cond.true.488 ], [ %339, %cond.false.489 ]
  store %struct.function* %cond491, %struct.function** %f486, align 8
  %340 = load %struct.function*, %struct.function** %f486, align 8
  %341 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %call492 = call %struct.rtx_def* @get_pool_constant_for_function(%struct.function* %340, %struct.rtx_def* %341)
  store %struct.rtx_def* %call492, %struct.rtx_def** %constant, align 8
  %342 = load %struct.function*, %struct.function** %f486, align 8
  %343 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %call493 = call i32 @get_pool_mode_for_function(%struct.function* %342, %struct.rtx_def* %343)
  store i32 %call493, i32* %const_mode, align 4
  %344 = load %struct.function*, %struct.function** @inlining, align 8
  %tobool494 = icmp ne %struct.function* %344, null
  br i1 %tobool494, label %if.then.495, label %if.else.502

if.then.495:                                      ; preds = %cond.end.490
  %345 = load i32, i32* %const_mode, align 4
  %346 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  %347 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call497 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %346, %struct.inline_remap* %347, i32 0)
  %call498 = call %struct.rtx_def* @force_const_mem(i32 %345, %struct.rtx_def* %call497)
  store %struct.rtx_def* %call498, %struct.rtx_def** %temp496, align 8
  %348 = load %struct.rtx_def*, %struct.rtx_def** %temp496, align 8
  %fld499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %arrayidx500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld499, i32 0, i64 0
  %rtx501 = bitcast %union.rtunion_def* %arrayidx500 to %struct.rtx_def**
  %349 = load %struct.rtx_def*, %struct.rtx_def** %rtx501, align 8
  store %struct.rtx_def* %349, %struct.rtx_def** %temp496, align 8
  %350 = load %struct.rtx_def*, %struct.rtx_def** %temp496, align 8
  store %struct.rtx_def* %350, %struct.rtx_def** %retval
  br label %return

if.else.502:                                      ; preds = %cond.end.490
  %351 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  %352 = bitcast %struct.rtx_def* %351 to i32*
  %bf.load503 = load i32, i32* %352, align 8
  %bf.clear504 = and i32 %bf.load503, 65535
  %cmp505 = icmp eq i32 %bf.clear504, 67
  br i1 %cmp505, label %if.then.507, label %if.end.516

if.then.507:                                      ; preds = %if.else.502
  %353 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load508 = load i32, i32* %354, align 8
  %bf.lshr509 = lshr i32 %bf.load508, 16
  %bf.clear510 = and i32 %bf.lshr509, 255
  %355 = load %struct.rtx_def*, %struct.rtx_def** %constant, align 8
  %356 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %357 = load i32, i32* %for_lhs.addr, align 4
  %call511 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %355, %struct.inline_remap* %356, i32 %357)
  %call512 = call %struct.rtx_def* @force_const_mem(i32 %bf.clear510, %struct.rtx_def* %call511)
  %fld513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call512, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld513, i32 0, i64 0
  %rtx515 = bitcast %union.rtunion_def* %arrayidx514 to %struct.rtx_def**
  %358 = load %struct.rtx_def*, %struct.rtx_def** %rtx515, align 8
  store %struct.rtx_def* %358, %struct.rtx_def** %retval
  br label %return

if.end.516:                                       ; preds = %if.else.502
  br label %if.end.517

if.end.517:                                       ; preds = %if.end.516
  br label %if.end.518

if.end.518:                                       ; preds = %if.end.517, %sw.bb.480
  %359 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %359, %struct.rtx_def** %retval
  br label %return

sw.bb.519:                                        ; preds = %if.end
  %360 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %361 = bitcast %struct.rtx_def* %360 to i32*
  %bf.load520 = load i32, i32* %361, align 8
  %bf.lshr521 = lshr i32 %bf.load520, 16
  %bf.clear522 = and i32 %bf.lshr521, 255
  %idxprom523 = sext i32 %bf.clear522 to i64
  %arrayidx524 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom523
  %362 = load i32, i32* %arrayidx524, align 4
  %cmp525 = icmp eq i32 %362, 2
  br i1 %cmp525, label %if.then.527, label %if.else.535

if.then.527:                                      ; preds = %sw.bb.519
  br label %do.body

do.body:                                          ; preds = %if.then.527
  %363 = bitcast %union.real_extract* %u to i8*
  %364 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %364, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld528, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx529 to i64*
  %365 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %363, i8* %365, i64 24, i32 8, i1 false)
  %d530 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %366 = bitcast %struct.realvaluetype* %d to i8*
  %367 = bitcast %struct.realvaluetype* %d530 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %366, i8* %367, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %368 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %369 = bitcast %struct.rtx_def* %368 to i32*
  %bf.load531 = load i32, i32* %369, align 8
  %bf.lshr532 = lshr i32 %bf.load531, 16
  %bf.clear533 = and i32 %bf.lshr532, 255
  %call534 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %d, i32 %bf.clear533)
  store %struct.rtx_def* %call534, %struct.rtx_def** %retval
  br label %return

if.else.535:                                      ; preds = %sw.bb.519
  %370 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld536 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %370, i32 0, i32 1
  %arrayidx537 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld536, i32 0, i64 1
  %rtwint538 = bitcast %union.rtunion_def* %arrayidx537 to i64*
  %371 = load i64, i64* %rtwint538, align 8
  %372 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld539 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %372, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld539, i32 0, i64 2
  %rtwint541 = bitcast %union.rtunion_def* %arrayidx540 to i64*
  %373 = load i64, i64* %rtwint541, align 8
  %call542 = call %struct.rtx_def* @immed_double_const(i64 %371, i64 %373, i32 0)
  store %struct.rtx_def* %call542, %struct.rtx_def** %retval
  br label %return

sw.bb.543:                                        ; preds = %if.end
  %374 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %375 = bitcast %struct.rtx_def* %374 to i32*
  %bf.load544 = load i32, i32* %375, align 8
  %bf.lshr545 = lshr i32 %bf.load544, 30
  %bf.clear546 = and i32 %bf.lshr545, 1
  %tobool547 = icmp ne i32 %bf.clear546, 0
  br i1 %tobool547, label %if.then.548, label %if.end.549

if.then.548:                                      ; preds = %sw.bb.543
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 2202, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.copy_rtx_and_substitute, i32 0, i32 0)) #5
  unreachable

if.end.549:                                       ; preds = %sw.bb.543
  br label %sw.epilog

sw.bb.550:                                        ; preds = %if.end
  %376 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %orig_asm_operands_vector = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %376, i32 0, i32 12
  %377 = load %struct.rtvec_def*, %struct.rtvec_def** %orig_asm_operands_vector, align 8
  %378 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %378, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld551, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx552 to %struct.rtvec_def**
  %379 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp553 = icmp eq %struct.rtvec_def* %377, %379
  br i1 %cmp553, label %if.then.555, label %if.end.608

if.then.555:                                      ; preds = %sw.bb.550
  %call556 = call %struct.rtx_def* @rtx_alloc(i32 41)
  store %struct.rtx_def* %call556, %struct.rtx_def** %copy, align 8
  %380 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %381 = bitcast %struct.rtx_def* %380 to i32*
  %bf.load557 = load i32, i32* %381, align 8
  %bf.lshr558 = lshr i32 %bf.load557, 27
  %bf.clear559 = and i32 %bf.lshr558, 1
  %382 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %383 = bitcast %struct.rtx_def* %382 to i32*
  %bf.load560 = load i32, i32* %383, align 8
  %bf.value561 = and i32 %bf.clear559, 1
  %bf.shl562 = shl i32 %bf.value561, 27
  %bf.clear563 = and i32 %bf.load560, -134217729
  %bf.set564 = or i32 %bf.clear563, %bf.shl562
  store i32 %bf.set564, i32* %383, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %385 = bitcast %struct.rtx_def* %384 to i32*
  %bf.load565 = load i32, i32* %385, align 8
  %bf.lshr566 = lshr i32 %bf.load565, 16
  %bf.clear567 = and i32 %bf.lshr566, 255
  %386 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %387 = bitcast %struct.rtx_def* %386 to i32*
  %bf.load568 = load i32, i32* %387, align 8
  %bf.value569 = and i32 %bf.clear567, 255
  %bf.shl570 = shl i32 %bf.value569, 16
  %bf.clear571 = and i32 %bf.load568, -16711681
  %bf.set572 = or i32 %bf.clear571, %bf.shl570
  store i32 %bf.set572, i32* %387, align 8
  %388 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld573 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx574 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld573, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx574 to i8**
  %389 = load i8*, i8** %rtstr, align 8
  %390 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld575 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %390, i32 0, i32 1
  %arrayidx576 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld575, i32 0, i64 0
  %rtstr577 = bitcast %union.rtunion_def* %arrayidx576 to i8**
  store i8* %389, i8** %rtstr577, align 8
  %391 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld578 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %391, i32 0, i32 1
  %arrayidx579 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld578, i32 0, i64 1
  %rtstr580 = bitcast %union.rtunion_def* %arrayidx579 to i8**
  %392 = load i8*, i8** %rtstr580, align 8
  %393 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld581 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %393, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld581, i32 0, i64 1
  %rtstr583 = bitcast %union.rtunion_def* %arrayidx582 to i8**
  store i8* %392, i8** %rtstr583, align 8
  %394 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld584 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %394, i32 0, i32 1
  %arrayidx585 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld584, i32 0, i64 2
  %rtint586 = bitcast %union.rtunion_def* %arrayidx585 to i32*
  %395 = load i32, i32* %rtint586, align 4
  %396 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld587 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %396, i32 0, i32 1
  %arrayidx588 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld587, i32 0, i64 2
  %rtint589 = bitcast %union.rtunion_def* %arrayidx588 to i32*
  store i32 %395, i32* %rtint589, align 4
  %397 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %copy_asm_operands_vector = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %397, i32 0, i32 13
  %398 = load %struct.rtvec_def*, %struct.rtvec_def** %copy_asm_operands_vector, align 8
  %399 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld590 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %399, i32 0, i32 1
  %arrayidx591 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld590, i32 0, i64 3
  %rtvec592 = bitcast %union.rtunion_def* %arrayidx591 to %struct.rtvec_def**
  store %struct.rtvec_def* %398, %struct.rtvec_def** %rtvec592, align 8
  %400 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %copy_asm_constraints_vector = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %400, i32 0, i32 14
  %401 = load %struct.rtvec_def*, %struct.rtvec_def** %copy_asm_constraints_vector, align 8
  %402 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %402, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld593, i32 0, i64 4
  %rtvec595 = bitcast %union.rtunion_def* %arrayidx594 to %struct.rtvec_def**
  store %struct.rtvec_def* %401, %struct.rtvec_def** %rtvec595, align 8
  %403 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %403, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 5
  %rtstr598 = bitcast %union.rtunion_def* %arrayidx597 to i8**
  %404 = load i8*, i8** %rtstr598, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld599 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %405, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld599, i32 0, i64 5
  %rtstr601 = bitcast %union.rtunion_def* %arrayidx600 to i8**
  store i8* %404, i8** %rtstr601, align 8
  %406 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld602 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %406, i32 0, i32 1
  %arrayidx603 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld602, i32 0, i64 6
  %rtint604 = bitcast %union.rtunion_def* %arrayidx603 to i32*
  %407 = load i32, i32* %rtint604, align 4
  %408 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld605 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %408, i32 0, i32 1
  %arrayidx606 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld605, i32 0, i64 6
  %rtint607 = bitcast %union.rtunion_def* %arrayidx606 to i32*
  store i32 %407, i32* %rtint607, align 4
  %409 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %409, %struct.rtx_def** %retval
  br label %return

if.end.608:                                       ; preds = %sw.bb.550
  br label %sw.epilog

sw.bb.609:                                        ; preds = %if.end
  %410 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %410, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld611, i32 0, i64 0
  %rtx613 = bitcast %union.rtunion_def* %arrayidx612 to %struct.rtx_def**
  %411 = load %struct.rtx_def*, %struct.rtx_def** %rtx613, align 8
  %412 = bitcast %struct.rtx_def* %411 to i32*
  %bf.load614 = load i32, i32* %412, align 8
  %bf.lshr615 = lshr i32 %bf.load614, 16
  %bf.clear616 = and i32 %bf.lshr615, 255
  %413 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %413, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 0
  %rtx619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.rtx_def**
  %414 = load %struct.rtx_def*, %struct.rtx_def** %rtx619, align 8
  %fld620 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %414, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld620, i32 0, i64 0
  %rtx622 = bitcast %union.rtunion_def* %arrayidx621 to %struct.rtx_def**
  %415 = load %struct.rtx_def*, %struct.rtx_def** %rtx622, align 8
  %416 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call623 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %415, %struct.inline_remap* %416, i32 0)
  %call624 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear616, %struct.rtx_def* %call623)
  store %struct.rtx_def* %call624, %struct.rtx_def** %copy610, align 8
  %417 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld625 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %417, i32 0, i32 1
  %arrayidx626 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld625, i32 0, i64 0
  %rtx627 = bitcast %union.rtunion_def* %arrayidx626 to %struct.rtx_def**
  %418 = load %struct.rtx_def*, %struct.rtx_def** %rtx627, align 8
  %419 = bitcast %struct.rtx_def* %418 to i32*
  %bf.load628 = load i32, i32* %419, align 8
  %bf.lshr629 = lshr i32 %bf.load628, 27
  %bf.clear630 = and i32 %bf.lshr629, 1
  %420 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %421 = bitcast %struct.rtx_def* %420 to i32*
  %bf.load631 = load i32, i32* %421, align 8
  %bf.value632 = and i32 %bf.clear630, 1
  %bf.shl633 = shl i32 %bf.value632, 27
  %bf.clear634 = and i32 %bf.load631, -134217729
  %bf.set635 = or i32 %bf.clear634, %bf.shl633
  store i32 %bf.set635, i32* %421, align 8
  %422 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld636 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %422, i32 0, i32 1
  %arrayidx637 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld636, i32 0, i64 0
  %rtx638 = bitcast %union.rtunion_def* %arrayidx637 to %struct.rtx_def**
  %423 = load %struct.rtx_def*, %struct.rtx_def** %rtx638, align 8
  %424 = bitcast %struct.rtx_def* %423 to i32*
  %bf.load639 = load i32, i32* %424, align 8
  %bf.lshr640 = lshr i32 %bf.load639, 28
  %bf.clear641 = and i32 %bf.lshr640, 1
  %425 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %426 = bitcast %struct.rtx_def* %425 to i32*
  %bf.load642 = load i32, i32* %426, align 8
  %bf.value643 = and i32 %bf.clear641, 1
  %bf.shl644 = shl i32 %bf.value643, 28
  %bf.clear645 = and i32 %bf.load642, -268435457
  %bf.set646 = or i32 %bf.clear645, %bf.shl644
  store i32 %bf.set646, i32* %426, align 8
  %427 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld647 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %427, i32 0, i32 1
  %arrayidx648 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld647, i32 0, i64 0
  %rtx649 = bitcast %union.rtunion_def* %arrayidx648 to %struct.rtx_def**
  %428 = load %struct.rtx_def*, %struct.rtx_def** %rtx649, align 8
  %429 = bitcast %struct.rtx_def* %428 to i32*
  %bf.load650 = load i32, i32* %429, align 8
  %bf.lshr651 = lshr i32 %bf.load650, 31
  %430 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %431 = bitcast %struct.rtx_def* %430 to i32*
  %bf.load652 = load i32, i32* %431, align 8
  %bf.value653 = and i32 %bf.lshr651, 1
  %bf.shl654 = shl i32 %bf.value653, 31
  %bf.clear655 = and i32 %bf.load652, 2147483647
  %bf.set656 = or i32 %bf.clear655, %bf.shl654
  store i32 %bf.set656, i32* %431, align 8
  %432 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld657 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %432, i32 0, i32 1
  %arrayidx658 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld657, i32 0, i64 0
  %rtx659 = bitcast %union.rtunion_def* %arrayidx658 to %struct.rtx_def**
  %433 = load %struct.rtx_def*, %struct.rtx_def** %rtx659, align 8
  %434 = bitcast %struct.rtx_def* %433 to i32*
  %bf.load660 = load i32, i32* %434, align 8
  %bf.lshr661 = lshr i32 %bf.load660, 26
  %bf.clear662 = and i32 %bf.lshr661, 1
  %435 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %436 = bitcast %struct.rtx_def* %435 to i32*
  %bf.load663 = load i32, i32* %436, align 8
  %bf.value664 = and i32 %bf.clear662, 1
  %bf.shl665 = shl i32 %bf.value664, 26
  %bf.clear666 = and i32 %bf.load663, -67108865
  %bf.set667 = or i32 %bf.clear666, %bf.shl665
  store i32 %bf.set667, i32* %436, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld668 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %437, i32 0, i32 1
  %arrayidx669 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld668, i32 0, i64 0
  %rtx670 = bitcast %union.rtunion_def* %arrayidx669 to %struct.rtx_def**
  %438 = load %struct.rtx_def*, %struct.rtx_def** %rtx670, align 8
  %439 = bitcast %struct.rtx_def* %438 to i32*
  %bf.load671 = load i32, i32* %439, align 8
  %bf.lshr672 = lshr i32 %bf.load671, 24
  %bf.clear673 = and i32 %bf.lshr672, 1
  %440 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %441 = bitcast %struct.rtx_def* %440 to i32*
  %bf.load674 = load i32, i32* %441, align 8
  %bf.value675 = and i32 %bf.clear673, 1
  %bf.shl676 = shl i32 %bf.value675, 24
  %bf.clear677 = and i32 %bf.load674, -16777217
  %bf.set678 = or i32 %bf.clear677, %bf.shl676
  store i32 %bf.set678, i32* %441, align 8
  %442 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld679 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %442, i32 0, i32 1
  %arrayidx680 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld679, i32 0, i64 0
  %rtx681 = bitcast %union.rtunion_def* %arrayidx680 to %struct.rtx_def**
  %443 = load %struct.rtx_def*, %struct.rtx_def** %rtx681, align 8
  %fld682 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx683 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld682, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx683 to %struct.mem_attrs**
  %444 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %445 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %fld684 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %445, i32 0, i32 1
  %arrayidx685 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld684, i32 0, i64 1
  %rtmem686 = bitcast %union.rtunion_def* %arrayidx685 to %struct.mem_attrs**
  store %struct.mem_attrs* %444, %struct.mem_attrs** %rtmem686, align 8
  %446 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %447 = bitcast %struct.rtx_def* %446 to i32*
  %bf.load687 = load i32, i32* %447, align 8
  %bf.lshr688 = lshr i32 %bf.load687, 16
  %bf.clear689 = and i32 %bf.lshr688, 255
  %448 = load %struct.rtx_def*, %struct.rtx_def** %copy610, align 8
  %449 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %449, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld690, i32 0, i64 1
  %rtx692 = bitcast %union.rtunion_def* %arrayidx691 to %struct.rtx_def**
  %450 = load %struct.rtx_def*, %struct.rtx_def** %rtx692, align 8
  %451 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call693 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %450, %struct.inline_remap* %451, i32 0)
  %call694 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 50, i32 %bf.clear689, %struct.rtx_def* %448, %struct.rtx_def* %call693)
  store %struct.rtx_def* %call694, %struct.rtx_def** %retval
  br label %return

sw.bb.695:                                        ; preds = %if.end
  %452 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld696 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %452, i32 0, i32 1
  %arrayidx697 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld696, i32 0, i64 0
  %rtx698 = bitcast %union.rtunion_def* %arrayidx697 to %struct.rtx_def**
  %453 = load %struct.rtx_def*, %struct.rtx_def** %rtx698, align 8
  %454 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp699 = icmp eq %struct.rtx_def* %453, %454
  br i1 %cmp699, label %if.then.707, label %lor.lhs.false.701

lor.lhs.false.701:                                ; preds = %sw.bb.695
  %455 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld702 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %455, i32 0, i32 1
  %arrayidx703 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld702, i32 0, i64 0
  %rtx704 = bitcast %union.rtunion_def* %arrayidx703 to %struct.rtx_def**
  %456 = load %struct.rtx_def*, %struct.rtx_def** %rtx704, align 8
  %457 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp705 = icmp eq %struct.rtx_def* %456, %457
  br i1 %cmp705, label %if.then.707, label %if.else.755

if.then.707:                                      ; preds = %lor.lhs.false.701, %sw.bb.695
  %458 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld708 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %458, i32 0, i32 1
  %arrayidx709 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld708, i32 0, i64 0
  %rtx710 = bitcast %union.rtunion_def* %arrayidx709 to %struct.rtx_def**
  %459 = load %struct.rtx_def*, %struct.rtx_def** %rtx710, align 8
  %460 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %461 = load i32, i32* %for_lhs.addr, align 4
  %call711 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %459, %struct.inline_remap* %460, i32 %461)
  %462 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld712 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %462, i32 0, i32 1
  %arrayidx713 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld712, i32 0, i64 0
  %rtx714 = bitcast %union.rtunion_def* %arrayidx713 to %struct.rtx_def**
  %463 = load %struct.rtx_def*, %struct.rtx_def** %rtx714, align 8
  %fld715 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %463, i32 0, i32 1
  %arrayidx716 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld715, i32 0, i64 0
  %rtuint717 = bitcast %union.rtunion_def* %arrayidx716 to i32*
  %464 = load i32, i32* %rtuint717, align 4
  %idxprom718 = zext i32 %464 to i64
  %465 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map719 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %465, i32 0, i32 4
  %466 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map719, align 8
  %arrayidx720 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %466, i64 %idxprom718
  %467 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx720, align 8
  store %struct.rtx_def* %467, %struct.rtx_def** %equiv_reg, align 8
  %468 = load %struct.rtx_def*, %struct.rtx_def** %equiv_reg, align 8
  %fld721 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %468, i32 0, i32 1
  %arrayidx722 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld721, i32 0, i64 0
  %rtuint723 = bitcast %union.rtunion_def* %arrayidx722 to i32*
  %469 = load i32, i32* %rtuint723, align 4
  %idxprom724 = zext i32 %469 to i64
  %470 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray725 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %470, i32 0, i32 9
  %471 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray725, align 8
  %data726 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %471, i32 0, i32 4
  %const_equiv727 = bitcast %union.varray_data_tag* %data726 to [1 x %struct.const_equiv_data]*
  %arrayidx728 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv727, i32 0, i64 %idxprom724
  %rtx729 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx728, i32 0, i32 0
  %472 = load %struct.rtx_def*, %struct.rtx_def** %rtx729, align 8
  store %struct.rtx_def* %472, %struct.rtx_def** %equiv_loc, align 8
  %473 = load %struct.rtx_def*, %struct.rtx_def** %equiv_loc, align 8
  %474 = bitcast %struct.rtx_def* %473 to i32*
  %bf.load730 = load i32, i32* %474, align 8
  %bf.clear731 = and i32 %bf.load730, 65535
  %cmp732 = icmp eq i32 %bf.clear731, 61
  br i1 %cmp732, label %cond.true.734, label %cond.false.735

cond.true.734:                                    ; preds = %if.then.707
  br label %cond.end.742

cond.false.735:                                   ; preds = %if.then.707
  %475 = load %struct.rtx_def*, %struct.rtx_def** %equiv_loc, align 8
  %fld736 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %475, i32 0, i32 1
  %arrayidx737 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld736, i32 0, i64 1
  %rtx738 = bitcast %union.rtunion_def* %arrayidx737 to %struct.rtx_def**
  %476 = load %struct.rtx_def*, %struct.rtx_def** %rtx738, align 8
  %fld739 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %476, i32 0, i32 1
  %arrayidx740 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld739, i32 0, i64 0
  %rtwint741 = bitcast %union.rtunion_def* %arrayidx740 to i64*
  %477 = load i64, i64* %rtwint741, align 8
  br label %cond.end.742

cond.end.742:                                     ; preds = %cond.false.735, %cond.true.734
  %cond743 = phi i64 [ 0, %cond.true.734 ], [ %477, %cond.false.735 ]
  store i64 %cond743, i64* %loc_offset, align 8
  %478 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld744 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %478, i32 0, i32 1
  %arrayidx745 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld744, i32 0, i64 0
  %rtx746 = bitcast %union.rtunion_def* %arrayidx745 to %struct.rtx_def**
  %479 = load %struct.rtx_def*, %struct.rtx_def** %rtx746, align 8
  %480 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld747 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %480, i32 0, i32 1
  %arrayidx748 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld747, i32 0, i64 1
  %rtx749 = bitcast %union.rtunion_def* %arrayidx748 to %struct.rtx_def**
  %481 = load %struct.rtx_def*, %struct.rtx_def** %rtx749, align 8
  %482 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call750 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %481, %struct.inline_remap* %482, i32 0)
  %483 = load i64, i64* %loc_offset, align 8
  %sub751 = sub nsw i64 0, %483
  %call752 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %call750, i64 %sub751)
  %call753 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call752, %struct.rtx_def* null)
  %call754 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %479, %struct.rtx_def* %call753)
  store %struct.rtx_def* %call754, %struct.rtx_def** %retval
  br label %return

if.else.755:                                      ; preds = %lor.lhs.false.701
  %484 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld756 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %484, i32 0, i32 1
  %arrayidx757 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld756, i32 0, i64 0
  %rtx758 = bitcast %union.rtunion_def* %arrayidx757 to %struct.rtx_def**
  %485 = load %struct.rtx_def*, %struct.rtx_def** %rtx758, align 8
  %486 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call759 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %485, %struct.inline_remap* %486, i32 1)
  %487 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld760 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %487, i32 0, i32 1
  %arrayidx761 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld760, i32 0, i64 1
  %rtx762 = bitcast %union.rtunion_def* %arrayidx761 to %struct.rtx_def**
  %488 = load %struct.rtx_def*, %struct.rtx_def** %rtx762, align 8
  %489 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call763 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %488, %struct.inline_remap* %489, i32 0)
  %call764 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %call759, %struct.rtx_def* %call763)
  store %struct.rtx_def* %call764, %struct.rtx_def** %retval
  br label %return

sw.bb.765:                                        ; preds = %if.end
  %490 = load %struct.function*, %struct.function** @inlining, align 8
  %tobool766 = icmp ne %struct.function* %490, null
  br i1 %tobool766, label %land.lhs.true.767, label %if.end.838

land.lhs.true.767:                                ; preds = %sw.bb.765
  %491 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld768 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %491, i32 0, i32 1
  %arrayidx769 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld768, i32 0, i64 0
  %rtx770 = bitcast %union.rtunion_def* %arrayidx769 to %struct.rtx_def**
  %492 = load %struct.rtx_def*, %struct.rtx_def** %rtx770, align 8
  %493 = bitcast %struct.rtx_def* %492 to i32*
  %bf.load771 = load i32, i32* %493, align 8
  %bf.clear772 = and i32 %bf.load771, 65535
  %cmp773 = icmp eq i32 %bf.clear772, 68
  br i1 %cmp773, label %land.lhs.true.775, label %if.end.838

land.lhs.true.775:                                ; preds = %land.lhs.true.767
  %494 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %494, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld776, i32 0, i64 0
  %rtx778 = bitcast %union.rtunion_def* %arrayidx777 to %struct.rtx_def**
  %495 = load %struct.rtx_def*, %struct.rtx_def** %rtx778, align 8
  %496 = bitcast %struct.rtx_def* %495 to i32*
  %bf.load779 = load i32, i32* %496, align 8
  %bf.lshr780 = lshr i32 %bf.load779, 26
  %bf.clear781 = and i32 %bf.lshr780, 1
  %tobool782 = icmp ne i32 %bf.clear781, 0
  br i1 %tobool782, label %if.then.783, label %if.end.838

if.then.783:                                      ; preds = %land.lhs.true.775
  %497 = load %struct.function*, %struct.function** @inlining, align 8
  %498 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld785 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %498, i32 0, i32 1
  %arrayidx786 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld785, i32 0, i64 0
  %rtx787 = bitcast %union.rtunion_def* %arrayidx786 to %struct.rtx_def**
  %499 = load %struct.rtx_def*, %struct.rtx_def** %rtx787, align 8
  %call788 = call i32 @get_pool_mode_for_function(%struct.function* %497, %struct.rtx_def* %499)
  store i32 %call788, i32* %const_mode784, align 4
  %500 = load %struct.function*, %struct.function** @inlining, align 8
  %501 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld790 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %501, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld790, i32 0, i64 0
  %rtx792 = bitcast %union.rtunion_def* %arrayidx791 to %struct.rtx_def**
  %502 = load %struct.rtx_def*, %struct.rtx_def** %rtx792, align 8
  %call793 = call %struct.rtx_def* @get_pool_constant_for_function(%struct.function* %500, %struct.rtx_def* %502)
  store %struct.rtx_def* %call793, %struct.rtx_def** %constant789, align 8
  %503 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %504 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call794 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %503, %struct.inline_remap* %504, i32 0)
  store %struct.rtx_def* %call794, %struct.rtx_def** %constant789, align 8
  %505 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %506 = bitcast %struct.rtx_def* %505 to i32*
  %bf.load795 = load i32, i32* %506, align 8
  %bf.clear796 = and i32 %bf.load795, 65535
  %cmp797 = icmp eq i32 %bf.clear796, 67
  br i1 %cmp797, label %if.end.835, label %lor.lhs.false.799

lor.lhs.false.799:                                ; preds = %if.then.783
  %507 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %508 = bitcast %struct.rtx_def* %507 to i32*
  %bf.load800 = load i32, i32* %508, align 8
  %bf.clear801 = and i32 %bf.load800, 65535
  %cmp802 = icmp eq i32 %bf.clear801, 68
  br i1 %cmp802, label %if.end.835, label %lor.lhs.false.804

lor.lhs.false.804:                                ; preds = %lor.lhs.false.799
  %509 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %510 = bitcast %struct.rtx_def* %509 to i32*
  %bf.load805 = load i32, i32* %510, align 8
  %bf.clear806 = and i32 %bf.load805, 65535
  %cmp807 = icmp eq i32 %bf.clear806, 54
  br i1 %cmp807, label %if.end.835, label %lor.lhs.false.809

lor.lhs.false.809:                                ; preds = %lor.lhs.false.804
  %511 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %512 = bitcast %struct.rtx_def* %511 to i32*
  %bf.load810 = load i32, i32* %512, align 8
  %bf.clear811 = and i32 %bf.load810, 65535
  %cmp812 = icmp eq i32 %bf.clear811, 55
  br i1 %cmp812, label %if.end.835, label %lor.lhs.false.814

lor.lhs.false.814:                                ; preds = %lor.lhs.false.809
  %513 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %514 = bitcast %struct.rtx_def* %513 to i32*
  %bf.load815 = load i32, i32* %514, align 8
  %bf.clear816 = and i32 %bf.load815, 65535
  %cmp817 = icmp eq i32 %bf.clear816, 58
  br i1 %cmp817, label %if.end.835, label %lor.lhs.false.819

lor.lhs.false.819:                                ; preds = %lor.lhs.false.814
  %515 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %516 = bitcast %struct.rtx_def* %515 to i32*
  %bf.load820 = load i32, i32* %516, align 8
  %bf.clear821 = and i32 %bf.load820, 65535
  %cmp822 = icmp eq i32 %bf.clear821, 134
  br i1 %cmp822, label %if.end.835, label %lor.lhs.false.824

lor.lhs.false.824:                                ; preds = %lor.lhs.false.819
  %517 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %518 = bitcast %struct.rtx_def* %517 to i32*
  %bf.load825 = load i32, i32* %518, align 8
  %bf.clear826 = and i32 %bf.load825, 65535
  %cmp827 = icmp eq i32 %bf.clear826, 56
  br i1 %cmp827, label %if.end.835, label %lor.lhs.false.829

lor.lhs.false.829:                                ; preds = %lor.lhs.false.824
  %519 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %520 = bitcast %struct.rtx_def* %519 to i32*
  %bf.load830 = load i32, i32* %520, align 8
  %bf.clear831 = and i32 %bf.load830, 65535
  %cmp832 = icmp eq i32 %bf.clear831, 140
  br i1 %cmp832, label %if.end.835, label %if.then.834

if.then.834:                                      ; preds = %lor.lhs.false.829
  %521 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  store %struct.rtx_def* %521, %struct.rtx_def** %retval
  br label %return

if.end.835:                                       ; preds = %lor.lhs.false.829, %lor.lhs.false.824, %lor.lhs.false.819, %lor.lhs.false.814, %lor.lhs.false.809, %lor.lhs.false.804, %lor.lhs.false.799, %if.then.783
  %522 = load i32, i32* %const_mode784, align 4
  %523 = load %struct.rtx_def*, %struct.rtx_def** %constant789, align 8
  %call836 = call %struct.rtx_def* @force_const_mem(i32 %522, %struct.rtx_def* %523)
  %call837 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %call836)
  store %struct.rtx_def* %call837, %struct.rtx_def** %retval
  br label %return

if.end.838:                                       ; preds = %land.lhs.true.775, %land.lhs.true.767, %sw.bb.765
  %524 = load i32, i32* %mode, align 4
  %525 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld839 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %525, i32 0, i32 1
  %arrayidx840 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld839, i32 0, i64 0
  %rtx841 = bitcast %union.rtunion_def* %arrayidx840 to %struct.rtx_def**
  %526 = load %struct.rtx_def*, %struct.rtx_def** %rtx841, align 8
  %527 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call842 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %526, %struct.inline_remap* %527, i32 0)
  %call843 = call %struct.rtx_def* @gen_rtx_MEM(i32 %524, %struct.rtx_def* %call842)
  store %struct.rtx_def* %call843, %struct.rtx_def** %copy, align 8
  %528 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %529 = bitcast %struct.rtx_def* %528 to i32*
  %bf.load844 = load i32, i32* %529, align 8
  %bf.lshr845 = lshr i32 %bf.load844, 27
  %bf.clear846 = and i32 %bf.lshr845, 1
  %530 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %531 = bitcast %struct.rtx_def* %530 to i32*
  %bf.load847 = load i32, i32* %531, align 8
  %bf.value848 = and i32 %bf.clear846, 1
  %bf.shl849 = shl i32 %bf.value848, 27
  %bf.clear850 = and i32 %bf.load847, -134217729
  %bf.set851 = or i32 %bf.clear850, %bf.shl849
  store i32 %bf.set851, i32* %531, align 8
  %532 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %533 = bitcast %struct.rtx_def* %532 to i32*
  %bf.load852 = load i32, i32* %533, align 8
  %bf.lshr853 = lshr i32 %bf.load852, 28
  %bf.clear854 = and i32 %bf.lshr853, 1
  %534 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %535 = bitcast %struct.rtx_def* %534 to i32*
  %bf.load855 = load i32, i32* %535, align 8
  %bf.value856 = and i32 %bf.clear854, 1
  %bf.shl857 = shl i32 %bf.value856, 28
  %bf.clear858 = and i32 %bf.load855, -268435457
  %bf.set859 = or i32 %bf.clear858, %bf.shl857
  store i32 %bf.set859, i32* %535, align 8
  %536 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %537 = bitcast %struct.rtx_def* %536 to i32*
  %bf.load860 = load i32, i32* %537, align 8
  %bf.lshr861 = lshr i32 %bf.load860, 31
  %538 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %539 = bitcast %struct.rtx_def* %538 to i32*
  %bf.load862 = load i32, i32* %539, align 8
  %bf.value863 = and i32 %bf.lshr861, 1
  %bf.shl864 = shl i32 %bf.value863, 31
  %bf.clear865 = and i32 %bf.load862, 2147483647
  %bf.set866 = or i32 %bf.clear865, %bf.shl864
  store i32 %bf.set866, i32* %539, align 8
  %540 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %541 = bitcast %struct.rtx_def* %540 to i32*
  %bf.load867 = load i32, i32* %541, align 8
  %bf.lshr868 = lshr i32 %bf.load867, 26
  %bf.clear869 = and i32 %bf.lshr868, 1
  %542 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %543 = bitcast %struct.rtx_def* %542 to i32*
  %bf.load870 = load i32, i32* %543, align 8
  %bf.value871 = and i32 %bf.clear869, 1
  %bf.shl872 = shl i32 %bf.value871, 26
  %bf.clear873 = and i32 %bf.load870, -67108865
  %bf.set874 = or i32 %bf.clear873, %bf.shl872
  store i32 %bf.set874, i32* %543, align 8
  %544 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %545 = bitcast %struct.rtx_def* %544 to i32*
  %bf.load875 = load i32, i32* %545, align 8
  %bf.lshr876 = lshr i32 %bf.load875, 24
  %bf.clear877 = and i32 %bf.lshr876, 1
  %546 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %547 = bitcast %struct.rtx_def* %546 to i32*
  %bf.load878 = load i32, i32* %547, align 8
  %bf.value879 = and i32 %bf.clear877, 1
  %bf.shl880 = shl i32 %bf.value879, 24
  %bf.clear881 = and i32 %bf.load878, -16777217
  %bf.set882 = or i32 %bf.clear881, %bf.shl880
  store i32 %bf.set882, i32* %547, align 8
  %548 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld883 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %548, i32 0, i32 1
  %arrayidx884 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld883, i32 0, i64 1
  %rtmem885 = bitcast %union.rtunion_def* %arrayidx884 to %struct.mem_attrs**
  %549 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem885, align 8
  %550 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld886 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %550, i32 0, i32 1
  %arrayidx887 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld886, i32 0, i64 1
  %rtmem888 = bitcast %union.rtunion_def* %arrayidx887 to %struct.mem_attrs**
  store %struct.mem_attrs* %549, %struct.mem_attrs** %rtmem888, align 8
  %551 = load %struct.function*, %struct.function** @inlining, align 8
  %tobool889 = icmp ne %struct.function* %551, null
  br i1 %tobool889, label %land.lhs.true.890, label %if.end.895

land.lhs.true.890:                                ; preds = %if.end.838
  %552 = load i32, i32* %for_lhs.addr, align 4
  %tobool891 = icmp ne i32 %552, 0
  br i1 %tobool891, label %if.end.895, label %if.then.892

if.then.892:                                      ; preds = %land.lhs.true.890
  %553 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %554 = bitcast %struct.rtx_def* %553 to i32*
  %bf.load893 = load i32, i32* %554, align 8
  %bf.clear894 = and i32 %bf.load893, -67108865
  store i32 %bf.clear894, i32* %554, align 8
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.892, %land.lhs.true.890, %if.end.838
  %555 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %555, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.608, %if.end.549, %if.then.395
  %556 = load i32, i32* %code, align 4
  %call896 = call %struct.rtx_def* @rtx_alloc(i32 %556)
  store %struct.rtx_def* %call896, %struct.rtx_def** %copy, align 8
  %557 = load i32, i32* %mode, align 4
  %558 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %559 = bitcast %struct.rtx_def* %558 to i32*
  %bf.load897 = load i32, i32* %559, align 8
  %bf.value898 = and i32 %557, 255
  %bf.shl899 = shl i32 %bf.value898, 16
  %bf.clear900 = and i32 %bf.load897, -16711681
  %bf.set901 = or i32 %bf.clear900, %bf.shl899
  store i32 %bf.set901, i32* %559, align 8
  %560 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %561 = bitcast %struct.rtx_def* %560 to i32*
  %bf.load902 = load i32, i32* %561, align 8
  %bf.lshr903 = lshr i32 %bf.load902, 28
  %bf.clear904 = and i32 %bf.lshr903, 1
  %562 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %563 = bitcast %struct.rtx_def* %562 to i32*
  %bf.load905 = load i32, i32* %563, align 8
  %bf.value906 = and i32 %bf.clear904, 1
  %bf.shl907 = shl i32 %bf.value906, 28
  %bf.clear908 = and i32 %bf.load905, -268435457
  %bf.set909 = or i32 %bf.clear908, %bf.shl907
  store i32 %bf.set909, i32* %563, align 8
  %564 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %565 = bitcast %struct.rtx_def* %564 to i32*
  %bf.load910 = load i32, i32* %565, align 8
  %bf.lshr911 = lshr i32 %bf.load910, 27
  %bf.clear912 = and i32 %bf.lshr911, 1
  %566 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %567 = bitcast %struct.rtx_def* %566 to i32*
  %bf.load913 = load i32, i32* %567, align 8
  %bf.value914 = and i32 %bf.clear912, 1
  %bf.shl915 = shl i32 %bf.value914, 27
  %bf.clear916 = and i32 %bf.load913, -134217729
  %bf.set917 = or i32 %bf.clear916, %bf.shl915
  store i32 %bf.set917, i32* %567, align 8
  %568 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %569 = bitcast %struct.rtx_def* %568 to i32*
  %bf.load918 = load i32, i32* %569, align 8
  %bf.lshr919 = lshr i32 %bf.load918, 26
  %bf.clear920 = and i32 %bf.lshr919, 1
  %570 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %571 = bitcast %struct.rtx_def* %570 to i32*
  %bf.load921 = load i32, i32* %571, align 8
  %bf.value922 = and i32 %bf.clear920, 1
  %bf.shl923 = shl i32 %bf.value922, 26
  %bf.clear924 = and i32 %bf.load921, -67108865
  %bf.set925 = or i32 %bf.clear924, %bf.shl923
  store i32 %bf.set925, i32* %571, align 8
  %572 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %573 = bitcast %struct.rtx_def* %572 to i32*
  %bf.load926 = load i32, i32* %573, align 8
  %bf.clear927 = and i32 %bf.load926, 65535
  %idxprom928 = sext i32 %bf.clear927 to i64
  %arrayidx929 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom928
  %574 = load i8*, i8** %arrayidx929, align 8
  store i8* %574, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1067, %sw.epilog
  %575 = load i32, i32* %i, align 4
  %576 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %577 = bitcast %struct.rtx_def* %576 to i32*
  %bf.load930 = load i32, i32* %577, align 8
  %bf.clear931 = and i32 %bf.load930, 65535
  %idxprom932 = sext i32 %bf.clear931 to i64
  %arrayidx933 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom932
  %578 = load i8, i8* %arrayidx933, align 1
  %conv934 = zext i8 %578 to i32
  %cmp935 = icmp slt i32 %575, %conv934
  br i1 %cmp935, label %for.body, label %for.end.1069

for.body:                                         ; preds = %for.cond
  %579 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %579, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %580 = load i8, i8* %579, align 1
  %conv937 = sext i8 %580 to i32
  switch i32 %conv937, label %sw.default.1065 [
    i32 48, label %sw.bb.938
    i32 101, label %sw.bb.947
    i32 117, label %sw.bb.957
    i32 69, label %sw.bb.971
    i32 119, label %sw.bb.1029
    i32 105, label %sw.bb.1038
    i32 115, label %sw.bb.1047
    i32 116, label %sw.bb.1056
  ]

sw.bb.938:                                        ; preds = %for.body
  %581 = load i32, i32* %i, align 4
  %idxprom939 = sext i32 %581 to i64
  %582 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld940 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %582, i32 0, i32 1
  %arrayidx941 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld940, i32 0, i64 %idxprom939
  %rtwint942 = bitcast %union.rtunion_def* %arrayidx941 to i64*
  %583 = load i64, i64* %rtwint942, align 8
  %584 = load i32, i32* %i, align 4
  %idxprom943 = sext i32 %584 to i64
  %585 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld944 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %585, i32 0, i32 1
  %arrayidx945 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld944, i32 0, i64 %idxprom943
  %rtwint946 = bitcast %union.rtunion_def* %arrayidx945 to i64*
  store i64 %583, i64* %rtwint946, align 8
  br label %sw.epilog.1066

sw.bb.947:                                        ; preds = %for.body
  %586 = load i32, i32* %i, align 4
  %idxprom948 = sext i32 %586 to i64
  %587 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld949 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %587, i32 0, i32 1
  %arrayidx950 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld949, i32 0, i64 %idxprom948
  %rtx951 = bitcast %union.rtunion_def* %arrayidx950 to %struct.rtx_def**
  %588 = load %struct.rtx_def*, %struct.rtx_def** %rtx951, align 8
  %589 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %590 = load i32, i32* %for_lhs.addr, align 4
  %call952 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %588, %struct.inline_remap* %589, i32 %590)
  %591 = load i32, i32* %i, align 4
  %idxprom953 = sext i32 %591 to i64
  %592 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld954 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %592, i32 0, i32 1
  %arrayidx955 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld954, i32 0, i64 %idxprom953
  %rtx956 = bitcast %union.rtunion_def* %arrayidx955 to %struct.rtx_def**
  store %struct.rtx_def* %call952, %struct.rtx_def** %rtx956, align 8
  br label %sw.epilog.1066

sw.bb.957:                                        ; preds = %for.body
  %593 = load i32, i32* %i, align 4
  %idxprom958 = sext i32 %593 to i64
  %594 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld959 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %594, i32 0, i32 1
  %arrayidx960 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld959, i32 0, i64 %idxprom958
  %rtx961 = bitcast %union.rtunion_def* %arrayidx960 to %struct.rtx_def**
  %595 = load %struct.rtx_def*, %struct.rtx_def** %rtx961, align 8
  %fld962 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %595, i32 0, i32 1
  %arrayidx963 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld962, i32 0, i64 0
  %rtint964 = bitcast %union.rtunion_def* %arrayidx963 to i32*
  %596 = load i32, i32* %rtint964, align 4
  %idxprom965 = sext i32 %596 to i64
  %597 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %597, i32 0, i32 6
  %598 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx966 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %598, i64 %idxprom965
  %599 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx966, align 8
  %600 = load i32, i32* %i, align 4
  %idxprom967 = sext i32 %600 to i64
  %601 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld968 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %601, i32 0, i32 1
  %arrayidx969 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld968, i32 0, i64 %idxprom967
  %rtx970 = bitcast %union.rtunion_def* %arrayidx969 to %struct.rtx_def**
  store %struct.rtx_def* %599, %struct.rtx_def** %rtx970, align 8
  br label %sw.epilog.1066

sw.bb.971:                                        ; preds = %for.body
  %602 = load i32, i32* %i, align 4
  %idxprom972 = sext i32 %602 to i64
  %603 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld973 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %603, i32 0, i32 1
  %arrayidx974 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld973, i32 0, i64 %idxprom972
  %rtvec975 = bitcast %union.rtunion_def* %arrayidx974 to %struct.rtvec_def**
  %604 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec975, align 8
  %605 = load i32, i32* %i, align 4
  %idxprom976 = sext i32 %605 to i64
  %606 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld977 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %606, i32 0, i32 1
  %arrayidx978 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld977, i32 0, i64 %idxprom976
  %rtvec979 = bitcast %union.rtunion_def* %arrayidx978 to %struct.rtvec_def**
  store %struct.rtvec_def* %604, %struct.rtvec_def** %rtvec979, align 8
  %607 = load i32, i32* %i, align 4
  %idxprom980 = sext i32 %607 to i64
  %608 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld981 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %608, i32 0, i32 1
  %arrayidx982 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld981, i32 0, i64 %idxprom980
  %rtvec983 = bitcast %union.rtunion_def* %arrayidx982 to %struct.rtvec_def**
  %609 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec983, align 8
  %cmp984 = icmp ne %struct.rtvec_def* %609, null
  br i1 %cmp984, label %land.lhs.true.986, label %if.end.1028

land.lhs.true.986:                                ; preds = %sw.bb.971
  %610 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %610 to i64
  %611 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld988 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %611, i32 0, i32 1
  %arrayidx989 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld988, i32 0, i64 %idxprom987
  %rtvec990 = bitcast %union.rtunion_def* %arrayidx989 to %struct.rtvec_def**
  %612 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec990, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %612, i32 0, i32 0
  %613 = load i32, i32* %num_elem, align 4
  %cmp991 = icmp ne i32 %613, 0
  br i1 %cmp991, label %if.then.993, label %if.end.1028

if.then.993:                                      ; preds = %land.lhs.true.986
  %614 = load i32, i32* %i, align 4
  %idxprom994 = sext i32 %614 to i64
  %615 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld995 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %615, i32 0, i32 1
  %arrayidx996 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld995, i32 0, i64 %idxprom994
  %rtvec997 = bitcast %union.rtunion_def* %arrayidx996 to %struct.rtvec_def**
  %616 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec997, align 8
  %num_elem998 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %616, i32 0, i32 0
  %617 = load i32, i32* %num_elem998, align 4
  %call999 = call %struct.rtvec_def* @rtvec_alloc(i32 %617)
  %618 = load i32, i32* %i, align 4
  %idxprom1000 = sext i32 %618 to i64
  %619 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1001 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %619, i32 0, i32 1
  %arrayidx1002 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1001, i32 0, i64 %idxprom1000
  %rtvec1003 = bitcast %union.rtunion_def* %arrayidx1002 to %struct.rtvec_def**
  store %struct.rtvec_def* %call999, %struct.rtvec_def** %rtvec1003, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1004

for.cond.1004:                                    ; preds = %for.inc, %if.then.993
  %620 = load i32, i32* %j, align 4
  %621 = load i32, i32* %i, align 4
  %idxprom1005 = sext i32 %621 to i64
  %622 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1006 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %622, i32 0, i32 1
  %arrayidx1007 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1006, i32 0, i64 %idxprom1005
  %rtvec1008 = bitcast %union.rtunion_def* %arrayidx1007 to %struct.rtvec_def**
  %623 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1008, align 8
  %num_elem1009 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %623, i32 0, i32 0
  %624 = load i32, i32* %num_elem1009, align 4
  %cmp1010 = icmp slt i32 %620, %624
  br i1 %cmp1010, label %for.body.1012, label %for.end

for.body.1012:                                    ; preds = %for.cond.1004
  %625 = load i32, i32* %j, align 4
  %idxprom1013 = sext i32 %625 to i64
  %626 = load i32, i32* %i, align 4
  %idxprom1014 = sext i32 %626 to i64
  %627 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1015 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %627, i32 0, i32 1
  %arrayidx1016 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1015, i32 0, i64 %idxprom1014
  %rtvec1017 = bitcast %union.rtunion_def* %arrayidx1016 to %struct.rtvec_def**
  %628 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1017, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %628, i32 0, i32 1
  %arrayidx1018 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom1013
  %629 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1018, align 8
  %630 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %631 = load i32, i32* %for_lhs.addr, align 4
  %call1019 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %629, %struct.inline_remap* %630, i32 %631)
  %632 = load i32, i32* %j, align 4
  %idxprom1020 = sext i32 %632 to i64
  %633 = load i32, i32* %i, align 4
  %idxprom1021 = sext i32 %633 to i64
  %634 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1022 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %634, i32 0, i32 1
  %arrayidx1023 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1022, i32 0, i64 %idxprom1021
  %rtvec1024 = bitcast %union.rtunion_def* %arrayidx1023 to %struct.rtvec_def**
  %635 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1024, align 8
  %elem1025 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %635, i32 0, i32 1
  %arrayidx1026 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem1025, i32 0, i64 %idxprom1020
  store %struct.rtx_def* %call1019, %struct.rtx_def** %arrayidx1026, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.1012
  %636 = load i32, i32* %j, align 4
  %inc1027 = add nsw i32 %636, 1
  store i32 %inc1027, i32* %j, align 4
  br label %for.cond.1004

for.end:                                          ; preds = %for.cond.1004
  br label %if.end.1028

if.end.1028:                                      ; preds = %for.end, %land.lhs.true.986, %sw.bb.971
  br label %sw.epilog.1066

sw.bb.1029:                                       ; preds = %for.body
  %637 = load i32, i32* %i, align 4
  %idxprom1030 = sext i32 %637 to i64
  %638 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1031 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %638, i32 0, i32 1
  %arrayidx1032 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1031, i32 0, i64 %idxprom1030
  %rtwint1033 = bitcast %union.rtunion_def* %arrayidx1032 to i64*
  %639 = load i64, i64* %rtwint1033, align 8
  %640 = load i32, i32* %i, align 4
  %idxprom1034 = sext i32 %640 to i64
  %641 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1035 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %641, i32 0, i32 1
  %arrayidx1036 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1035, i32 0, i64 %idxprom1034
  %rtwint1037 = bitcast %union.rtunion_def* %arrayidx1036 to i64*
  store i64 %639, i64* %rtwint1037, align 8
  br label %sw.epilog.1066

sw.bb.1038:                                       ; preds = %for.body
  %642 = load i32, i32* %i, align 4
  %idxprom1039 = sext i32 %642 to i64
  %643 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1040 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %643, i32 0, i32 1
  %arrayidx1041 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1040, i32 0, i64 %idxprom1039
  %rtint1042 = bitcast %union.rtunion_def* %arrayidx1041 to i32*
  %644 = load i32, i32* %rtint1042, align 4
  %645 = load i32, i32* %i, align 4
  %idxprom1043 = sext i32 %645 to i64
  %646 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1044 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %646, i32 0, i32 1
  %arrayidx1045 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1044, i32 0, i64 %idxprom1043
  %rtint1046 = bitcast %union.rtunion_def* %arrayidx1045 to i32*
  store i32 %644, i32* %rtint1046, align 4
  br label %sw.epilog.1066

sw.bb.1047:                                       ; preds = %for.body
  %647 = load i32, i32* %i, align 4
  %idxprom1048 = sext i32 %647 to i64
  %648 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1049 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %648, i32 0, i32 1
  %arrayidx1050 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1049, i32 0, i64 %idxprom1048
  %rtstr1051 = bitcast %union.rtunion_def* %arrayidx1050 to i8**
  %649 = load i8*, i8** %rtstr1051, align 8
  %650 = load i32, i32* %i, align 4
  %idxprom1052 = sext i32 %650 to i64
  %651 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1053 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %651, i32 0, i32 1
  %arrayidx1054 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1053, i32 0, i64 %idxprom1052
  %rtstr1055 = bitcast %union.rtunion_def* %arrayidx1054 to i8**
  store i8* %649, i8** %rtstr1055, align 8
  br label %sw.epilog.1066

sw.bb.1056:                                       ; preds = %for.body
  %652 = load i32, i32* %i, align 4
  %idxprom1057 = sext i32 %652 to i64
  %653 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1058 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %653, i32 0, i32 1
  %arrayidx1059 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1058, i32 0, i64 %idxprom1057
  %rttree1060 = bitcast %union.rtunion_def* %arrayidx1059 to %union.tree_node**
  %654 = load %union.tree_node*, %union.tree_node** %rttree1060, align 8
  %655 = load i32, i32* %i, align 4
  %idxprom1061 = sext i32 %655 to i64
  %656 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1062 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %656, i32 0, i32 1
  %arrayidx1063 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1062, i32 0, i64 %idxprom1061
  %rttree1064 = bitcast %union.rtunion_def* %arrayidx1063 to %union.tree_node**
  store %union.tree_node* %654, %union.tree_node** %rttree1064, align 8
  br label %sw.epilog.1066

sw.default.1065:                                  ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 2387, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.copy_rtx_and_substitute, i32 0, i32 0)) #5
  unreachable

sw.epilog.1066:                                   ; preds = %sw.bb.1056, %sw.bb.1047, %sw.bb.1038, %sw.bb.1029, %if.end.1028, %sw.bb.957, %sw.bb.947, %sw.bb.938
  br label %for.inc.1067

for.inc.1067:                                     ; preds = %sw.epilog.1066
  %657 = load i32, i32* %i, align 4
  %inc1068 = add nsw i32 %657, 1
  store i32 %inc1068, i32* %i, align 4
  br label %for.cond

for.end.1069:                                     ; preds = %for.cond
  %658 = load i32, i32* %code, align 4
  %cmp1070 = icmp eq i32 %658, 41
  br i1 %cmp1070, label %land.lhs.true.1072, label %if.end.1089

land.lhs.true.1072:                               ; preds = %for.end.1069
  %659 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %orig_asm_operands_vector1073 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %659, i32 0, i32 12
  %660 = load %struct.rtvec_def*, %struct.rtvec_def** %orig_asm_operands_vector1073, align 8
  %cmp1074 = icmp eq %struct.rtvec_def* %660, null
  br i1 %cmp1074, label %if.then.1076, label %if.end.1089

if.then.1076:                                     ; preds = %land.lhs.true.1072
  %661 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld1077 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %661, i32 0, i32 1
  %arrayidx1078 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1077, i32 0, i64 3
  %rtvec1079 = bitcast %union.rtunion_def* %arrayidx1078 to %struct.rtvec_def**
  %662 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1079, align 8
  %663 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %orig_asm_operands_vector1080 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %663, i32 0, i32 12
  store %struct.rtvec_def* %662, %struct.rtvec_def** %orig_asm_operands_vector1080, align 8
  %664 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1081 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %664, i32 0, i32 1
  %arrayidx1082 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1081, i32 0, i64 3
  %rtvec1083 = bitcast %union.rtunion_def* %arrayidx1082 to %struct.rtvec_def**
  %665 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1083, align 8
  %666 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %copy_asm_operands_vector1084 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %666, i32 0, i32 13
  store %struct.rtvec_def* %665, %struct.rtvec_def** %copy_asm_operands_vector1084, align 8
  %667 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld1085 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %667, i32 0, i32 1
  %arrayidx1086 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1085, i32 0, i64 4
  %rtvec1087 = bitcast %union.rtunion_def* %arrayidx1086 to %struct.rtvec_def**
  %668 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec1087, align 8
  %669 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %copy_asm_constraints_vector1088 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %669, i32 0, i32 14
  store %struct.rtvec_def* %668, %struct.rtvec_def** %copy_asm_constraints_vector1088, align 8
  br label %if.end.1089

if.end.1089:                                      ; preds = %if.then.1076, %land.lhs.true.1072, %for.end.1069
  %670 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %670, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.1089, %if.end.895, %if.end.835, %if.then.834, %if.else.755, %cond.end.742, %sw.bb.609, %if.then.555, %if.else.535, %do.end, %if.end.518, %if.then.507, %if.then.495, %sw.bb.479, %if.end.478, %sw.bb.397, %if.end.388, %if.end.361, %sw.bb.252, %if.end.248, %if.else.193, %if.else.191, %if.then.188, %if.else.173, %if.then.168, %if.end.144, %if.end.67, %if.then.8, %if.then
  %671 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %671
}

; Function Attrs: nounwind uwtable
define internal void @process_reg_param(%struct.inline_remap* %map, %struct.rtx_def* %loc, %struct.rtx_def* %copy) #0 {
entry:
  %map.addr = alloca %struct.inline_remap*, align 8
  %loc.addr = alloca %struct.rtx_def*, align 8
  %copy.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.const_equiv_data*, align 8
  %is_global = alloca i32, align 4
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store %struct.rtx_def* %loc, %struct.rtx_def** %loc.addr, align 8
  store %struct.rtx_def* %copy, %struct.rtx_def** %copy.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.15

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load8, 27
  %bf.clear9 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear9, 0
  br i1 %tobool, label %land.lhs.true.10, label %lor.lhs.false.15

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %8 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load11 = load i32, i32* %9, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 27
  %bf.clear13 = and i32 %bf.lshr12, 1
  %tobool14 = icmp ne i32 %bf.clear13, 0
  br i1 %tobool14, label %lor.lhs.false.15, label %if.then

lor.lhs.false.15:                                 ; preds = %land.lhs.true.10, %land.lhs.true.7, %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load16 = load i32, i32* %11, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 61
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.121

land.lhs.true.19:                                 ; preds = %lor.lhs.false.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %13 = load i32, i32* %rtuint, align 4
  %cmp20 = icmp ult i32 %13, 53
  br i1 %cmp20, label %if.then, label %if.end.121

if.then:                                          ; preds = %land.lhs.true.19, %land.lhs.true.10, %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load21 = load i32, i32* %15, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %bf.clear23 = and i32 %bf.lshr22, 255
  %16 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %call = call %struct.rtx_def* @copy_to_mode_reg(i32 %bf.clear23, %struct.rtx_def* %16)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load24 = load i32, i32* %18, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 27
  %bf.clear26 = and i32 %bf.lshr25, 1
  %19 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load27 = load i32, i32* %20, align 8
  %bf.value = and i32 %bf.clear26, 1
  %bf.shl = shl i32 %bf.value, 27
  %bf.clear28 = and i32 %bf.load27, -134217729
  %bf.set = or i32 %bf.clear28, %bf.shl
  store i32 %bf.set, i32* %20, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load29 = load i32, i32* %22, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 67
  br i1 %cmp31, label %if.then.93, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 68
  br i1 %cmp35, label %if.then.93, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.32
  %25 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load37 = load i32, i32* %26, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 54
  br i1 %cmp39, label %if.then.93, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.36
  %27 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load41 = load i32, i32* %28, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 55
  br i1 %cmp43, label %if.then.93, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.40
  %29 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load45 = load i32, i32* %30, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 58
  br i1 %cmp47, label %if.then.93, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.44
  %31 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load49 = load i32, i32* %32, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 134
  br i1 %cmp51, label %if.then.93, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.48
  %33 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load53 = load i32, i32* %34, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 56
  br i1 %cmp55, label %if.then.93, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.52
  %35 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load57 = load i32, i32* %36, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 140
  br i1 %cmp59, label %if.then.93, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.56
  %37 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load61 = load i32, i32* %38, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 75
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.120

land.lhs.true.64:                                 ; preds = %lor.lhs.false.60
  %39 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load67 = load i32, i32* %41, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 54
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.120

land.lhs.true.70:                                 ; preds = %land.lhs.true.64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load74 = load i32, i32* %44, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 61
  br i1 %cmp76, label %land.lhs.true.77, label %if.end.120

land.lhs.true.77:                                 ; preds = %land.lhs.true.70
  %45 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint83 = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %47 = load i32, i32* %rtuint83, align 4
  %cmp84 = icmp uge i32 %47, 53
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.120

land.lhs.true.85:                                 ; preds = %land.lhs.true.77
  %48 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtuint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %50 = load i32, i32* %rtuint91, align 4
  %cmp92 = icmp ule i32 %50, 57
  br i1 %cmp92, label %if.then.93, label %if.end.120

if.then.93:                                       ; preds = %land.lhs.true.85, %lor.lhs.false.56, %lor.lhs.false.52, %lor.lhs.false.48, %lor.lhs.false.44, %lor.lhs.false.40, %lor.lhs.false.36, %lor.lhs.false.32, %if.then
  %51 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtuint96 = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %52 = load i32, i32* %rtuint96, align 4
  %conv = zext i32 %52 to i64
  %53 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %53, i32 0, i32 9
  %54 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %54, i32 0, i32 0
  %55 = load i64, i64* %num_elements, align 8
  %cmp97 = icmp uge i64 %conv, %55
  br i1 %cmp97, label %if.then.99, label %if.end.113

if.then.99:                                       ; preds = %if.then.93
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %57 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray100 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %57, i32 0, i32 9
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray100, align 8
  %cmp101 = icmp eq %struct.varray_head_tag* %56, %58
  %conv102 = zext i1 %cmp101 to i32
  store i32 %conv102, i32* %is_global, align 4
  %59 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray103 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %59, i32 0, i32 9
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray103, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtuint106 = bitcast %union.rtunion_def* %arrayidx105 to i32*
  %62 = load i32, i32* %rtuint106, align 4
  %add = add i32 %62, 1
  %conv107 = zext i32 %add to i64
  %call108 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %60, i64 %conv107)
  %63 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray109 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %63, i32 0, i32 9
  store %struct.varray_head_tag* %call108, %struct.varray_head_tag** %const_equiv_varray109, align 8
  %64 = load i32, i32* %is_global, align 4
  %tobool110 = icmp ne i32 %64, 0
  br i1 %tobool110, label %if.then.111, label %if.end

if.then.111:                                      ; preds = %if.then.99
  %65 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray112 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %65, i32 0, i32 9
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray112, align 8
  store %struct.varray_head_tag* %66, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.111, %if.then.99
  br label %if.end.113

if.end.113:                                       ; preds = %if.end, %if.then.93
  %67 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %68 = load i32, i32* %rtuint116, align 4
  %idxprom = zext i32 %68 to i64
  %69 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray117 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %69, i32 0, i32 9
  %70 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray117, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %70, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx118 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom
  store %struct.const_equiv_data* %arrayidx118, %struct.const_equiv_data** %p, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %72 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx119 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %72, i32 0, i32 0
  store %struct.rtx_def* %71, %struct.rtx_def** %rtx119, align 8
  %73 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %73, i32 0, i32 1
  store i32 -1, i32* %age, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.113, %land.lhs.true.85, %land.lhs.true.77, %land.lhs.true.70, %land.lhs.true.64, %lor.lhs.false.60
  %74 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %copy.addr, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %land.lhs.true.19, %lor.lhs.false.15
  %75 = load %struct.rtx_def*, %struct.rtx_def** %copy.addr, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 0
  %rtuint124 = bitcast %union.rtunion_def* %arrayidx123 to i32*
  %77 = load i32, i32* %rtuint124, align 4
  %idxprom125 = zext i32 %77 to i64
  %78 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %78, i32 0, i32 4
  %79 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx126 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %79, i64 %idxprom125
  store %struct.rtx_def* %75, %struct.rtx_def** %arrayidx126, align 8
  ret void
}

declare %struct.rtx_def* @gen_realpart(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_imagpart(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @subst_constants(%struct.rtx_def** %loc, %struct.rtx_def* %insn, %struct.inline_remap* %map, i32 %memonly) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %memonly.addr = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %num_changes = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  %op0_mode = alloca i32, align 4
  %regno = alloca i32, align 4
  %p = alloca %struct.const_equiv_data*, align 8
  %inner = alloca %struct.rtx_def*, align 8
  %new49 = alloca %struct.rtx_def*, align 8
  %dest_loc = alloca %struct.rtx_def**, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %compare_mode = alloca i32, align 4
  %src_copy = alloca %struct.rtx_def*, align 8
  %tem612 = alloca %struct.rtx_def*, align 8
  %op_mode = alloca i32, align 4
  %op0 = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store i32 %memonly, i32* %memonly.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %call = call i32 @num_validated_changes()
  store i32 %call, i32* %num_changes, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %new, align 8
  store i32 59, i32* %op0_mode, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 59, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 25, label %sw.bb
    i32 48, label %sw.bb.1
    i32 49, label %sw.bb.1
    i32 61, label %sw.bb.10
    i32 63, label %sw.bb.35
    i32 66, label %sw.bb.68
    i32 47, label %sw.bb.91
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %if.end.772

sw.bb.1:                                          ; preds = %entry, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp eq i32 %bf.clear3, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %rtx9, %struct.rtx_def* %10, %struct.inline_remap* %11, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  br label %if.end.772

sw.bb.10:                                         ; preds = %entry
  %12 = load i32, i32* %memonly.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.34, label %if.then.11

if.then.11:                                       ; preds = %sw.bb.10
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %14 = load i32, i32* %rtuint, align 4
  store i32 %14, i32* %regno, align 4
  %15 = load i32, i32* %regno, align 4
  %cmp14 = icmp slt i32 %15, 53
  br i1 %cmp14, label %land.lhs.true, label %land.lhs.true.18

land.lhs.true:                                    ; preds = %if.then.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load15 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load15, 27
  %bf.clear16 = and i32 %bf.lshr, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %if.end.33, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true, %if.then.11
  %18 = load i32, i32* %regno, align 4
  %conv = sext i32 %18 to i64
  %19 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %19, i32 0, i32 9
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 0
  %21 = load i64, i64* %num_elements, align 8
  %cmp19 = icmp ult i64 %conv, %21
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.33

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %22 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray22 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %23, i32 0, i32 9
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray22, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom
  store %struct.const_equiv_data* %arrayidx23, %struct.const_equiv_data** %p, align 8
  %25 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx24 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %25, i32 0, i32 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %cmp25 = icmp ne %struct.rtx_def* %26, null
  br i1 %cmp25, label %land.lhs.true.27, label %if.end.33

land.lhs.true.27:                                 ; preds = %land.lhs.true.21
  %27 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %27, i32 0, i32 1
  %28 = load i32, i32* %age, align 4
  %29 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %29, i32 0, i32 10
  %30 = load i32, i32* %const_age, align 4
  %cmp28 = icmp uge i32 %28, %30
  br i1 %cmp28, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %land.lhs.true.27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %33 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx31 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %call32 = call i32 @validate_change(%struct.rtx_def* %31, %struct.rtx_def** %32, %struct.rtx_def* %34, i32 1)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.30, %land.lhs.true.27, %land.lhs.true.21, %land.lhs.true.18, %land.lhs.true
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %sw.bb.10
  br label %if.end.772

sw.bb.35:                                         ; preds = %entry
  %35 = load i32, i32* %memonly.addr, align 4
  %tobool36 = icmp ne i32 %35, 0
  br i1 %tobool36, label %if.end.67, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %sw.bb.35
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load41 = load i32, i32* %38, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 61
  br i1 %cmp43, label %if.then.45, label %if.end.67

if.then.45:                                       ; preds = %land.lhs.true.37
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %inner, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %new49, align 8
  %41 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %inner, %struct.rtx_def* null, %struct.inline_remap* %41, i32 0)
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load50 = load i32, i32* %43, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 16
  %bf.clear52 = and i32 %bf.lshr51, 255
  %44 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load56 = load i32, i32* %47, align 8
  %bf.lshr57 = lshr i32 %bf.load56, 16
  %bf.clear58 = and i32 %bf.lshr57, 255
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 1
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %49 = load i32, i32* %rtuint61, align 4
  %call62 = call %struct.rtx_def* @simplify_gen_subreg(i32 %bf.clear52, %struct.rtx_def* %44, i32 %bf.clear58, i32 %49)
  store %struct.rtx_def* %call62, %struct.rtx_def** %new49, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %new49, align 8
  %tobool63 = icmp ne %struct.rtx_def* %50, null
  br i1 %tobool63, label %if.then.64, label %if.else

if.then.64:                                       ; preds = %if.then.45
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %52 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %new49, align 8
  %call65 = call i32 @validate_change(%struct.rtx_def* %51, %struct.rtx_def** %52, %struct.rtx_def* %53, i32 1)
  br label %if.end.66

if.else:                                          ; preds = %if.then.45
  %54 = load i32, i32* %num_changes, align 4
  call void @cancel_changes(i32 %54)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.64
  br label %if.end.772

if.end.67:                                        ; preds = %land.lhs.true.37, %sw.bb.35
  br label %sw.epilog

sw.bb.68:                                         ; preds = %entry
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %57 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %rtx71, %struct.rtx_def* %56, %struct.inline_remap* %57, i32 0)
  %58 = load i32, i32* %memonly.addr, align 4
  %tobool72 = icmp ne i32 %58, 0
  br i1 %tobool72, label %if.end.90, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %sw.bb.68
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp74 = icmp ne %struct.rtx_def* %59, null
  br i1 %cmp74, label %land.lhs.true.76, label %if.end.90

land.lhs.true.76:                                 ; preds = %land.lhs.true.73
  %call77 = call i32 @num_validated_changes()
  %60 = load i32, i32* %num_changes, align 4
  %cmp78 = icmp ne i32 %call77, %60
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.90

land.lhs.true.80:                                 ; preds = %land.lhs.true.76
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load81 = load i32, i32* %62, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 16
  %bf.clear83 = and i32 %bf.lshr82, 255
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %call87 = call i32 @memory_address_p(i32 %bf.clear83, %struct.rtx_def* %64)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true.80
  %65 = load i32, i32* %num_changes, align 4
  call void @cancel_changes(i32 %65)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %land.lhs.true.80, %land.lhs.true.76, %land.lhs.true.73, %sw.bb.68
  br label %if.end.772

sw.bb.91:                                         ; preds = %entry
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  store %struct.rtx_def** %rtx94, %struct.rtx_def*** %dest_loc, align 8
  %67 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %67, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %dest, align 8
  store i32 0, i32* %compare_mode, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load98 = load i32, i32* %71, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 74
  br i1 %cmp100, label %if.then.102, label %if.end.131

if.then.102:                                      ; preds = %sw.bb.91
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 1
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %src, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load106 = load i32, i32* %75, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %idxprom109 = sext i32 %bf.clear108 to i64
  %arrayidx110 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom109
  %76 = load i32, i32* %arrayidx110, align 4
  %cmp111 = icmp eq i32 %76, 4
  br i1 %cmp111, label %if.then.113, label %if.end.130

if.then.113:                                      ; preds = %if.then.102
  %77 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load117 = load i32, i32* %79, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  store i32 %bf.clear119, i32* %compare_mode, align 4
  %80 = load i32, i32* %compare_mode, align 4
  %cmp120 = icmp eq i32 %80, 0
  br i1 %cmp120, label %if.then.122, label %if.end.129

if.then.122:                                      ; preds = %if.then.113
  %81 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 1
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load126 = load i32, i32* %83, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 16
  %bf.clear128 = and i32 %bf.lshr127, 255
  store i32 %bf.clear128, i32* %compare_mode, align 4
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.122, %if.then.113
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.102
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %sw.bb.91
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 1
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %86 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %87 = load i32, i32* %memonly.addr, align 4
  call void @subst_constants(%struct.rtx_def** %rtx134, %struct.rtx_def* %85, %struct.inline_remap* %86, i32 %87)
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 1
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.161, %if.end.131
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load138 = load i32, i32* %92, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 133
  br i1 %cmp140, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %93, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load142 = load i32, i32* %95, align 8
  %bf.clear143 = and i32 %bf.load142, 65535
  %cmp144 = icmp eq i32 %bf.clear143, 63
  br i1 %cmp144, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %96 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %96, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load146 = load i32, i32* %98, align 8
  %bf.clear147 = and i32 %bf.load146, 65535
  %cmp148 = icmp eq i32 %bf.clear147, 64
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %99 = phi i1 [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp148, %lor.rhs ]
  br i1 %99, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %100 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %100, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load150 = load i32, i32* %102, align 8
  %bf.clear151 = and i32 %bf.load150, 65535
  %cmp152 = icmp eq i32 %bf.clear151, 133
  br i1 %cmp152, label %if.then.154, label %if.end.161

if.then.154:                                      ; preds = %while.body
  %103 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %103, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %106 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %107 = load i32, i32* %memonly.addr, align 4
  call void @subst_constants(%struct.rtx_def** %rtx157, %struct.rtx_def* %105, %struct.inline_remap* %106, i32 %107)
  %108 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %108, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 2
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %111 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %112 = load i32, i32* %memonly.addr, align 4
  call void @subst_constants(%struct.rtx_def** %rtx160, %struct.rtx_def* %110, %struct.inline_remap* %111, i32 %112)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.154, %while.body
  %113 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %113, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  store %struct.rtx_def** %rtx164, %struct.rtx_def*** %dest_loc, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %115 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %115, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load165 = load i32, i32* %117, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %cmp167 = icmp eq i32 %bf.clear166, 66
  br i1 %cmp167, label %if.then.169, label %if.end.173

if.then.169:                                      ; preds = %while.end
  %118 = load %struct.rtx_def**, %struct.rtx_def*** %dest_loc, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %118, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %121 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %rtx172, %struct.rtx_def* %120, %struct.inline_remap* %121, i32 0)
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.169, %while.end
  %122 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load174 = load i32, i32* %123, align 8
  %bf.clear175 = and i32 %bf.load174, 65535
  %cmp176 = icmp eq i32 %bf.clear175, 63
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.234

land.lhs.true.178:                                ; preds = %if.end.173
  %124 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load179 = load i32, i32* %125, align 8
  %bf.lshr180 = lshr i32 %bf.load179, 16
  %bf.clear181 = and i32 %bf.lshr180, 255
  %idxprom182 = sext i32 %bf.clear181 to i64
  %arrayidx183 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom182
  %126 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %126 to i32
  %127 = load i32, i32* @target_flags, align 4
  %and = and i32 %127, 33554432
  %tobool185 = icmp ne i32 %and, 0
  %cond = select i1 %tobool185, i32 8, i32 4
  %cmp186 = icmp sle i32 %conv184, %cond
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.234

land.lhs.true.188:                                ; preds = %land.lhs.true.178
  %128 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load192 = load i32, i32* %130, align 8
  %bf.lshr193 = lshr i32 %bf.load192, 16
  %bf.clear194 = and i32 %bf.lshr193, 255
  %idxprom195 = sext i32 %bf.clear194 to i64
  %arrayidx196 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom195
  %131 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %131 to i32
  %132 = load i32, i32* @target_flags, align 4
  %and198 = and i32 %132, 33554432
  %tobool199 = icmp ne i32 %and198, 0
  %cond200 = select i1 %tobool199, i32 8, i32 4
  %cmp201 = icmp sle i32 %conv197, %cond200
  br i1 %cmp201, label %land.lhs.true.203, label %if.end.234

land.lhs.true.203:                                ; preds = %land.lhs.true.188
  %133 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 0
  %rtx206 = bitcast %union.rtunion_def* %arrayidx205 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx206, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load207 = load i32, i32* %135, align 8
  %bf.lshr208 = lshr i32 %bf.load207, 16
  %bf.clear209 = and i32 %bf.lshr208, 255
  %idxprom210 = sext i32 %bf.clear209 to i64
  %arrayidx211 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom210
  %136 = load i8, i8* %arrayidx211, align 1
  %conv212 = zext i8 %136 to i32
  %137 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %138 = bitcast %struct.rtx_def* %137 to i32*
  %bf.load213 = load i32, i32* %138, align 8
  %bf.lshr214 = lshr i32 %bf.load213, 16
  %bf.clear215 = and i32 %bf.lshr214, 255
  %idxprom216 = sext i32 %bf.clear215 to i64
  %arrayidx217 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom216
  %139 = load i8, i8* %arrayidx217, align 1
  %conv218 = zext i8 %139 to i32
  %cmp219 = icmp sle i32 %conv212, %conv218
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.234

land.lhs.true.221:                                ; preds = %land.lhs.true.203
  %140 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld222, i32 0, i64 0
  %rtx224 = bitcast %union.rtunion_def* %arrayidx223 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx224, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load225 = load i32, i32* %142, align 8
  %bf.lshr226 = lshr i32 %bf.load225, 16
  %bf.clear227 = and i32 %bf.lshr226, 255
  %143 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call228 = call %struct.rtx_def* @gen_lowpart_if_possible(i32 %bf.clear227, %struct.rtx_def* %143)
  store %struct.rtx_def* %call228, %struct.rtx_def** %tem, align 8
  %tobool229 = icmp ne %struct.rtx_def* %call228, null
  br i1 %tobool229, label %if.then.230, label %if.end.234

if.then.230:                                      ; preds = %land.lhs.true.221
  %144 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %src, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %dest, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.230, %land.lhs.true.221, %land.lhs.true.203, %land.lhs.true.188, %land.lhs.true.178, %if.end.173
  %147 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %num_sets = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %147, i32 0, i32 18
  %148 = load i32, i32* %num_sets, align 4
  %cmp235 = icmp slt i32 %148, 30
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.456

land.lhs.true.237:                                ; preds = %if.end.234
  %149 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %150 = bitcast %struct.rtx_def* %149 to i32*
  %bf.load238 = load i32, i32* %150, align 8
  %bf.clear239 = and i32 %bf.load238, 65535
  %cmp240 = icmp eq i32 %bf.clear239, 67
  br i1 %cmp240, label %if.then.410, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %land.lhs.true.237
  %151 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load243 = load i32, i32* %152, align 8
  %bf.clear244 = and i32 %bf.load243, 65535
  %cmp245 = icmp eq i32 %bf.clear244, 68
  br i1 %cmp245, label %if.then.410, label %lor.lhs.false.247

lor.lhs.false.247:                                ; preds = %lor.lhs.false.242
  %153 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load248 = load i32, i32* %154, align 8
  %bf.clear249 = and i32 %bf.load248, 65535
  %cmp250 = icmp eq i32 %bf.clear249, 54
  br i1 %cmp250, label %if.then.410, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %lor.lhs.false.247
  %155 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load253 = load i32, i32* %156, align 8
  %bf.clear254 = and i32 %bf.load253, 65535
  %cmp255 = icmp eq i32 %bf.clear254, 55
  br i1 %cmp255, label %if.then.410, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %lor.lhs.false.252
  %157 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load258 = load i32, i32* %158, align 8
  %bf.clear259 = and i32 %bf.load258, 65535
  %cmp260 = icmp eq i32 %bf.clear259, 58
  br i1 %cmp260, label %if.then.410, label %lor.lhs.false.262

lor.lhs.false.262:                                ; preds = %lor.lhs.false.257
  %159 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load263 = load i32, i32* %160, align 8
  %bf.clear264 = and i32 %bf.load263, 65535
  %cmp265 = icmp eq i32 %bf.clear264, 134
  br i1 %cmp265, label %if.then.410, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %lor.lhs.false.262
  %161 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load268 = load i32, i32* %162, align 8
  %bf.clear269 = and i32 %bf.load268, 65535
  %cmp270 = icmp eq i32 %bf.clear269, 56
  br i1 %cmp270, label %if.then.410, label %lor.lhs.false.272

lor.lhs.false.272:                                ; preds = %lor.lhs.false.267
  %163 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %bf.load273 = load i32, i32* %164, align 8
  %bf.clear274 = and i32 %bf.load273, 65535
  %cmp275 = icmp eq i32 %bf.clear274, 140
  br i1 %cmp275, label %if.then.410, label %lor.lhs.false.277

lor.lhs.false.277:                                ; preds = %lor.lhs.false.272
  %165 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load278 = load i32, i32* %166, align 8
  %bf.clear279 = and i32 %bf.load278, 65535
  %cmp280 = icmp eq i32 %bf.clear279, 61
  br i1 %cmp280, label %land.lhs.true.282, label %lor.lhs.false.294

land.lhs.true.282:                                ; preds = %lor.lhs.false.277
  %167 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 0
  %rtuint285 = bitcast %union.rtunion_def* %arrayidx284 to i32*
  %168 = load i32, i32* %rtuint285, align 4
  %cmp286 = icmp eq i32 %168, 53
  br i1 %cmp286, label %if.then.410, label %lor.lhs.false.288

lor.lhs.false.288:                                ; preds = %land.lhs.true.282
  %169 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld289 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx290 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld289, i32 0, i64 0
  %rtuint291 = bitcast %union.rtunion_def* %arrayidx290 to i32*
  %170 = load i32, i32* %rtuint291, align 4
  %cmp292 = icmp eq i32 %170, 54
  br i1 %cmp292, label %if.then.410, label %lor.lhs.false.294

lor.lhs.false.294:                                ; preds = %lor.lhs.false.288, %lor.lhs.false.277
  %171 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %bf.load295 = load i32, i32* %172, align 8
  %bf.clear296 = and i32 %bf.load295, 65535
  %cmp297 = icmp eq i32 %bf.clear296, 75
  br i1 %cmp297, label %land.lhs.true.299, label %lor.lhs.false.389

land.lhs.true.299:                                ; preds = %lor.lhs.false.294
  %173 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 0
  %rtx302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx302, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load303 = load i32, i32* %175, align 8
  %bf.clear304 = and i32 %bf.load303, 65535
  %cmp305 = icmp eq i32 %bf.clear304, 61
  br i1 %cmp305, label %land.lhs.true.307, label %lor.lhs.false.389

land.lhs.true.307:                                ; preds = %land.lhs.true.299
  %176 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 0
  %rtx310 = bitcast %union.rtunion_def* %arrayidx309 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx310, align 8
  %fld311 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx312 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld311, i32 0, i64 0
  %rtuint313 = bitcast %union.rtunion_def* %arrayidx312 to i32*
  %178 = load i32, i32* %rtuint313, align 4
  %cmp314 = icmp eq i32 %178, 53
  br i1 %cmp314, label %land.lhs.true.325, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %land.lhs.true.307
  %179 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 0
  %rtuint322 = bitcast %union.rtunion_def* %arrayidx321 to i32*
  %181 = load i32, i32* %rtuint322, align 4
  %cmp323 = icmp eq i32 %181, 54
  br i1 %cmp323, label %land.lhs.true.325, label %lor.lhs.false.389

land.lhs.true.325:                                ; preds = %lor.lhs.false.316, %land.lhs.true.307
  %182 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 1
  %rtx328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtx328, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %bf.load329 = load i32, i32* %184, align 8
  %bf.clear330 = and i32 %bf.load329, 65535
  %cmp331 = icmp eq i32 %bf.clear330, 67
  br i1 %cmp331, label %if.then.410, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %land.lhs.true.325
  %185 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld334, i32 0, i64 1
  %rtx336 = bitcast %union.rtunion_def* %arrayidx335 to %struct.rtx_def**
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtx336, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load337 = load i32, i32* %187, align 8
  %bf.clear338 = and i32 %bf.load337, 65535
  %cmp339 = icmp eq i32 %bf.clear338, 68
  br i1 %cmp339, label %if.then.410, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %lor.lhs.false.333
  %188 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 1
  %rtx344 = bitcast %union.rtunion_def* %arrayidx343 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx344, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load345 = load i32, i32* %190, align 8
  %bf.clear346 = and i32 %bf.load345, 65535
  %cmp347 = icmp eq i32 %bf.clear346, 54
  br i1 %cmp347, label %if.then.410, label %lor.lhs.false.349

lor.lhs.false.349:                                ; preds = %lor.lhs.false.341
  %191 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld350, i32 0, i64 1
  %rtx352 = bitcast %union.rtunion_def* %arrayidx351 to %struct.rtx_def**
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtx352, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load353 = load i32, i32* %193, align 8
  %bf.clear354 = and i32 %bf.load353, 65535
  %cmp355 = icmp eq i32 %bf.clear354, 55
  br i1 %cmp355, label %if.then.410, label %lor.lhs.false.357

lor.lhs.false.357:                                ; preds = %lor.lhs.false.349
  %194 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 1
  %rtx360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx360, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load361 = load i32, i32* %196, align 8
  %bf.clear362 = and i32 %bf.load361, 65535
  %cmp363 = icmp eq i32 %bf.clear362, 58
  br i1 %cmp363, label %if.then.410, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %lor.lhs.false.357
  %197 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 1
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load369 = load i32, i32* %199, align 8
  %bf.clear370 = and i32 %bf.load369, 65535
  %cmp371 = icmp eq i32 %bf.clear370, 134
  br i1 %cmp371, label %if.then.410, label %lor.lhs.false.373

lor.lhs.false.373:                                ; preds = %lor.lhs.false.365
  %200 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld374, i32 0, i64 1
  %rtx376 = bitcast %union.rtunion_def* %arrayidx375 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtx376, align 8
  %202 = bitcast %struct.rtx_def* %201 to i32*
  %bf.load377 = load i32, i32* %202, align 8
  %bf.clear378 = and i32 %bf.load377, 65535
  %cmp379 = icmp eq i32 %bf.clear378, 56
  br i1 %cmp379, label %if.then.410, label %lor.lhs.false.381

lor.lhs.false.381:                                ; preds = %lor.lhs.false.373
  %203 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 1
  %rtx384 = bitcast %union.rtunion_def* %arrayidx383 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx384, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load385 = load i32, i32* %205, align 8
  %bf.clear386 = and i32 %bf.load385, 65535
  %cmp387 = icmp eq i32 %bf.clear386, 140
  br i1 %cmp387, label %if.then.410, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %lor.lhs.false.381, %lor.lhs.false.316, %land.lhs.true.299, %lor.lhs.false.294
  %206 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load390 = load i32, i32* %207, align 8
  %bf.clear391 = and i32 %bf.load390, 65535
  %cmp392 = icmp eq i32 %bf.clear391, 74
  br i1 %cmp392, label %if.then.410, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %lor.lhs.false.389
  %208 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp395 = icmp eq %struct.rtx_def* %208, %209
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.456

land.lhs.true.397:                                ; preds = %lor.lhs.false.394
  %210 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp398 = icmp eq %struct.rtx_def* %210, %211
  br i1 %cmp398, label %if.then.410, label %lor.lhs.false.400

lor.lhs.false.400:                                ; preds = %land.lhs.true.397
  %212 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load401 = load i32, i32* %213, align 8
  %bf.clear402 = and i32 %bf.load401, 65535
  %cmp403 = icmp eq i32 %bf.clear402, 51
  br i1 %cmp403, label %if.then.410, label %lor.lhs.false.405

lor.lhs.false.405:                                ; preds = %lor.lhs.false.400
  %214 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load406 = load i32, i32* %215, align 8
  %bf.clear407 = and i32 %bf.load406, 65535
  %cmp408 = icmp eq i32 %bf.clear407, 67
  br i1 %cmp408, label %if.then.410, label %if.end.456

if.then.410:                                      ; preds = %lor.lhs.false.405, %lor.lhs.false.400, %land.lhs.true.397, %lor.lhs.false.389, %lor.lhs.false.381, %lor.lhs.false.373, %lor.lhs.false.365, %lor.lhs.false.357, %lor.lhs.false.349, %lor.lhs.false.341, %lor.lhs.false.333, %land.lhs.true.325, %lor.lhs.false.288, %land.lhs.true.282, %lor.lhs.false.272, %lor.lhs.false.267, %lor.lhs.false.262, %lor.lhs.false.257, %lor.lhs.false.252, %lor.lhs.false.247, %lor.lhs.false.242, %land.lhs.true.237
  %216 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call411 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %216)
  store %struct.rtx_def* %call411, %struct.rtx_def** %src_copy, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %src_copy, align 8
  %218 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %num_sets412 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %218, i32 0, i32 18
  %219 = load i32, i32* %num_sets412, align 4
  %idxprom413 = sext i32 %219 to i64
  %220 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %220, i32 0, i32 19
  %arrayidx414 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets, i32 0, i64 %idxprom413
  %equiv = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx414, i32 0, i32 1
  store %struct.rtx_def* %217, %struct.rtx_def** %equiv, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %222 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %num_sets415 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %222, i32 0, i32 18
  %223 = load i32, i32* %num_sets415, align 4
  %inc = add nsw i32 %223, 1
  store i32 %inc, i32* %num_sets415, align 4
  %idxprom416 = sext i32 %223 to i64
  %224 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets417 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %224, i32 0, i32 19
  %arrayidx418 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets417, i32 0, i64 %idxprom416
  %dest419 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx418, i32 0, i32 0
  store %struct.rtx_def* %221, %struct.rtx_def** %dest419, align 8
  %225 = load i32, i32* %compare_mode, align 4
  %cmp420 = icmp ne i32 %225, 0
  br i1 %cmp420, label %land.lhs.true.422, label %if.end.455

land.lhs.true.422:                                ; preds = %if.then.410
  %226 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load423 = load i32, i32* %227, align 8
  %bf.clear424 = and i32 %bf.load423, 65535
  %cmp425 = icmp eq i32 %bf.clear424, 74
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.455

land.lhs.true.427:                                ; preds = %land.lhs.true.422
  %228 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load428 = load i32, i32* %229, align 8
  %bf.lshr429 = lshr i32 %bf.load428, 16
  %bf.clear430 = and i32 %bf.lshr429, 255
  %idxprom431 = sext i32 %bf.clear430 to i64
  %arrayidx432 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom431
  %230 = load i32, i32* %arrayidx432, align 4
  %cmp433 = icmp eq i32 %230, 4
  br i1 %cmp433, label %land.lhs.true.435, label %if.end.455

land.lhs.true.435:                                ; preds = %land.lhs.true.427
  %231 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld436 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %231, i32 0, i32 1
  %arrayidx437 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld436, i32 0, i64 0
  %rtx438 = bitcast %union.rtunion_def* %arrayidx437 to %struct.rtx_def**
  %232 = load %struct.rtx_def*, %struct.rtx_def** %rtx438, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load439 = load i32, i32* %233, align 8
  %bf.lshr440 = lshr i32 %bf.load439, 16
  %bf.clear441 = and i32 %bf.lshr440, 255
  %cmp442 = icmp eq i32 %bf.clear441, 0
  br i1 %cmp442, label %land.lhs.true.444, label %if.end.455

land.lhs.true.444:                                ; preds = %land.lhs.true.435
  %234 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld445 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx446 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld445, i32 0, i64 1
  %rtx447 = bitcast %union.rtunion_def* %arrayidx446 to %struct.rtx_def**
  %235 = load %struct.rtx_def*, %struct.rtx_def** %rtx447, align 8
  %236 = bitcast %struct.rtx_def* %235 to i32*
  %bf.load448 = load i32, i32* %236, align 8
  %bf.lshr449 = lshr i32 %bf.load448, 16
  %bf.clear450 = and i32 %bf.lshr449, 255
  %cmp451 = icmp eq i32 %bf.clear450, 0
  br i1 %cmp451, label %if.then.453, label %if.end.455

if.then.453:                                      ; preds = %land.lhs.true.444
  %237 = load %struct.rtx_def*, %struct.rtx_def** %src_copy, align 8
  %238 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %compare_src = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %238, i32 0, i32 21
  store %struct.rtx_def* %237, %struct.rtx_def** %compare_src, align 8
  %239 = load i32, i32* %compare_mode, align 4
  %240 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %compare_mode454 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %240, i32 0, i32 22
  store i32 %239, i32* %compare_mode454, align 4
  br label %if.end.455

if.end.455:                                       ; preds = %if.then.453, %land.lhs.true.444, %land.lhs.true.435, %land.lhs.true.427, %land.lhs.true.422, %if.then.410
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %lor.lhs.false.405, %lor.lhs.false.394, %if.end.234
  br label %if.end.772

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.67
  %241 = load i32, i32* %code, align 4
  %idxprom457 = sext i32 %241 to i64
  %arrayidx458 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom457
  %242 = load i8*, i8** %arrayidx458, align 8
  store i8* %242, i8** %format_ptr, align 8
  %243 = load i8*, i8** %format_ptr, align 8
  %244 = load i8, i8* %243, align 1
  %conv459 = sext i8 %244 to i32
  %cmp460 = icmp eq i32 %conv459, 101
  br i1 %cmp460, label %if.then.462, label %if.end.469

if.then.462:                                      ; preds = %sw.epilog
  %245 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  %246 = load %struct.rtx_def*, %struct.rtx_def** %rtx465, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load466 = load i32, i32* %247, align 8
  %bf.lshr467 = lshr i32 %bf.load466, 16
  %bf.clear468 = and i32 %bf.lshr467, 255
  store i32 %bf.clear468, i32* %op0_mode, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.462, %sw.epilog
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.523, %if.end.469
  %248 = load i32, i32* %i, align 4
  %249 = load i32, i32* %code, align 4
  %idxprom470 = sext i32 %249 to i64
  %arrayidx471 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom470
  %250 = load i8, i8* %arrayidx471, align 1
  %conv472 = zext i8 %250 to i32
  %cmp473 = icmp slt i32 %248, %conv472
  br i1 %cmp473, label %for.body, label %for.end.525

for.body:                                         ; preds = %for.cond
  %251 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %252 = load i8, i8* %251, align 1
  %conv475 = sext i8 %252 to i32
  switch i32 %conv475, label %sw.default.521 [
    i32 48, label %sw.bb.476
    i32 101, label %sw.bb.477
    i32 117, label %sw.bb.489
    i32 105, label %sw.bb.489
    i32 115, label %sw.bb.489
    i32 119, label %sw.bb.489
    i32 110, label %sw.bb.489
    i32 116, label %sw.bb.489
    i32 69, label %sw.bb.490
  ]

sw.bb.476:                                        ; preds = %for.body
  br label %sw.epilog.522

sw.bb.477:                                        ; preds = %for.body
  %253 = load i32, i32* %i, align 4
  %idxprom478 = sext i32 %253 to i64
  %254 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld479 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld479, i32 0, i64 %idxprom478
  %rtx481 = bitcast %union.rtunion_def* %arrayidx480 to %struct.rtx_def**
  %255 = load %struct.rtx_def*, %struct.rtx_def** %rtx481, align 8
  %tobool482 = icmp ne %struct.rtx_def* %255, null
  br i1 %tobool482, label %if.then.483, label %if.end.488

if.then.483:                                      ; preds = %sw.bb.477
  %256 = load i32, i32* %i, align 4
  %idxprom484 = sext i32 %256 to i64
  %257 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 %idxprom484
  %rtx487 = bitcast %union.rtunion_def* %arrayidx486 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %259 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %260 = load i32, i32* %memonly.addr, align 4
  call void @subst_constants(%struct.rtx_def** %rtx487, %struct.rtx_def* %258, %struct.inline_remap* %259, i32 %260)
  br label %if.end.488

if.end.488:                                       ; preds = %if.then.483, %sw.bb.477
  br label %sw.epilog.522

sw.bb.489:                                        ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog.522

sw.bb.490:                                        ; preds = %for.body
  %261 = load i32, i32* %i, align 4
  %idxprom491 = sext i32 %261 to i64
  %262 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %262, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 %idxprom491
  %rtvec = bitcast %union.rtunion_def* %arrayidx493 to %struct.rtvec_def**
  %263 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp494 = icmp ne %struct.rtvec_def* %263, null
  br i1 %cmp494, label %land.lhs.true.496, label %if.end.520

land.lhs.true.496:                                ; preds = %sw.bb.490
  %264 = load i32, i32* %i, align 4
  %idxprom497 = sext i32 %264 to i64
  %265 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 %idxprom497
  %rtvec500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtvec_def**
  %266 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec500, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %266, i32 0, i32 0
  %267 = load i32, i32* %num_elem, align 4
  %cmp501 = icmp ne i32 %267, 0
  br i1 %cmp501, label %if.then.503, label %if.end.520

if.then.503:                                      ; preds = %land.lhs.true.496
  store i32 0, i32* %j, align 4
  br label %for.cond.504

for.cond.504:                                     ; preds = %for.inc, %if.then.503
  %268 = load i32, i32* %j, align 4
  %269 = load i32, i32* %i, align 4
  %idxprom505 = sext i32 %269 to i64
  %270 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 %idxprom505
  %rtvec508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtvec_def**
  %271 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec508, align 8
  %num_elem509 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %271, i32 0, i32 0
  %272 = load i32, i32* %num_elem509, align 4
  %cmp510 = icmp slt i32 %268, %272
  br i1 %cmp510, label %for.body.512, label %for.end

for.body.512:                                     ; preds = %for.cond.504
  %273 = load i32, i32* %j, align 4
  %idxprom513 = sext i32 %273 to i64
  %274 = load i32, i32* %i, align 4
  %idxprom514 = sext i32 %274 to i64
  %275 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld515 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx516 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld515, i32 0, i64 %idxprom514
  %rtvec517 = bitcast %union.rtunion_def* %arrayidx516 to %struct.rtvec_def**
  %276 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec517, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %276, i32 0, i32 1
  %arrayidx518 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom513
  %277 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %278 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %279 = load i32, i32* %memonly.addr, align 4
  call void @subst_constants(%struct.rtx_def** %arrayidx518, %struct.rtx_def* %277, %struct.inline_remap* %278, i32 %279)
  br label %for.inc

for.inc:                                          ; preds = %for.body.512
  %280 = load i32, i32* %j, align 4
  %inc519 = add nsw i32 %280, 1
  store i32 %inc519, i32* %j, align 4
  br label %for.cond.504

for.end:                                          ; preds = %for.cond.504
  br label %if.end.520

if.end.520:                                       ; preds = %for.end, %land.lhs.true.496, %sw.bb.490
  br label %sw.epilog.522

sw.default.521:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 2710, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.subst_constants, i32 0, i32 0)) #5
  unreachable

sw.epilog.522:                                    ; preds = %if.end.520, %sw.bb.489, %if.end.488, %sw.bb.476
  br label %for.inc.523

for.inc.523:                                      ; preds = %sw.epilog.522
  %281 = load i32, i32* %i, align 4
  %inc524 = add nsw i32 %281, 1
  store i32 %inc524, i32* %i, align 4
  br label %for.cond

for.end.525:                                      ; preds = %for.cond
  %282 = load i32, i32* %memonly.addr, align 4
  %tobool526 = icmp ne i32 %282, 0
  br i1 %tobool526, label %if.end.627, label %land.lhs.true.527

land.lhs.true.527:                                ; preds = %for.end.525
  %283 = load i32, i32* %code, align 4
  %idxprom528 = sext i32 %283 to i64
  %arrayidx529 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom528
  %284 = load i8, i8* %arrayidx529, align 1
  %conv530 = sext i8 %284 to i32
  %cmp531 = icmp eq i32 %conv530, 99
  br i1 %cmp531, label %land.lhs.true.539, label %lor.lhs.false.533

lor.lhs.false.533:                                ; preds = %land.lhs.true.527
  %285 = load i32, i32* %code, align 4
  %cmp534 = icmp eq i32 %285, 102
  br i1 %cmp534, label %land.lhs.true.539, label %lor.lhs.false.536

lor.lhs.false.536:                                ; preds = %lor.lhs.false.533
  %286 = load i32, i32* %code, align 4
  %cmp537 = icmp eq i32 %286, 103
  br i1 %cmp537, label %land.lhs.true.539, label %if.end.627

land.lhs.true.539:                                ; preds = %lor.lhs.false.536, %lor.lhs.false.533, %land.lhs.true.527
  %287 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld540, i32 0, i64 0
  %rtx542 = bitcast %union.rtunion_def* %arrayidx541 to %struct.rtx_def**
  %288 = load %struct.rtx_def*, %struct.rtx_def** %rtx542, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %bf.load543 = load i32, i32* %289, align 8
  %bf.clear544 = and i32 %bf.load543, 65535
  %cmp545 = icmp eq i32 %bf.clear544, 67
  br i1 %cmp545, label %land.lhs.true.603, label %lor.lhs.false.547

lor.lhs.false.547:                                ; preds = %land.lhs.true.539
  %290 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld548 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx549 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld548, i32 0, i64 0
  %rtx550 = bitcast %union.rtunion_def* %arrayidx549 to %struct.rtx_def**
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx550, align 8
  %292 = bitcast %struct.rtx_def* %291 to i32*
  %bf.load551 = load i32, i32* %292, align 8
  %bf.clear552 = and i32 %bf.load551, 65535
  %cmp553 = icmp eq i32 %bf.clear552, 68
  br i1 %cmp553, label %land.lhs.true.603, label %lor.lhs.false.555

lor.lhs.false.555:                                ; preds = %lor.lhs.false.547
  %293 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld556 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %293, i32 0, i32 1
  %arrayidx557 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld556, i32 0, i64 0
  %rtx558 = bitcast %union.rtunion_def* %arrayidx557 to %struct.rtx_def**
  %294 = load %struct.rtx_def*, %struct.rtx_def** %rtx558, align 8
  %295 = bitcast %struct.rtx_def* %294 to i32*
  %bf.load559 = load i32, i32* %295, align 8
  %bf.clear560 = and i32 %bf.load559, 65535
  %cmp561 = icmp eq i32 %bf.clear560, 54
  br i1 %cmp561, label %land.lhs.true.603, label %lor.lhs.false.563

lor.lhs.false.563:                                ; preds = %lor.lhs.false.555
  %296 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld564, i32 0, i64 0
  %rtx566 = bitcast %union.rtunion_def* %arrayidx565 to %struct.rtx_def**
  %297 = load %struct.rtx_def*, %struct.rtx_def** %rtx566, align 8
  %298 = bitcast %struct.rtx_def* %297 to i32*
  %bf.load567 = load i32, i32* %298, align 8
  %bf.clear568 = and i32 %bf.load567, 65535
  %cmp569 = icmp eq i32 %bf.clear568, 55
  br i1 %cmp569, label %land.lhs.true.603, label %lor.lhs.false.571

lor.lhs.false.571:                                ; preds = %lor.lhs.false.563
  %299 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld572 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %arrayidx573 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld572, i32 0, i64 0
  %rtx574 = bitcast %union.rtunion_def* %arrayidx573 to %struct.rtx_def**
  %300 = load %struct.rtx_def*, %struct.rtx_def** %rtx574, align 8
  %301 = bitcast %struct.rtx_def* %300 to i32*
  %bf.load575 = load i32, i32* %301, align 8
  %bf.clear576 = and i32 %bf.load575, 65535
  %cmp577 = icmp eq i32 %bf.clear576, 58
  br i1 %cmp577, label %land.lhs.true.603, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %lor.lhs.false.571
  %302 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld580, i32 0, i64 0
  %rtx582 = bitcast %union.rtunion_def* %arrayidx581 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %rtx582, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load583 = load i32, i32* %304, align 8
  %bf.clear584 = and i32 %bf.load583, 65535
  %cmp585 = icmp eq i32 %bf.clear584, 134
  br i1 %cmp585, label %land.lhs.true.603, label %lor.lhs.false.587

lor.lhs.false.587:                                ; preds = %lor.lhs.false.579
  %305 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld588 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx589 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld588, i32 0, i64 0
  %rtx590 = bitcast %union.rtunion_def* %arrayidx589 to %struct.rtx_def**
  %306 = load %struct.rtx_def*, %struct.rtx_def** %rtx590, align 8
  %307 = bitcast %struct.rtx_def* %306 to i32*
  %bf.load591 = load i32, i32* %307, align 8
  %bf.clear592 = and i32 %bf.load591, 65535
  %cmp593 = icmp eq i32 %bf.clear592, 56
  br i1 %cmp593, label %land.lhs.true.603, label %lor.lhs.false.595

lor.lhs.false.595:                                ; preds = %lor.lhs.false.587
  %308 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 0
  %rtx598 = bitcast %union.rtunion_def* %arrayidx597 to %struct.rtx_def**
  %309 = load %struct.rtx_def*, %struct.rtx_def** %rtx598, align 8
  %310 = bitcast %struct.rtx_def* %309 to i32*
  %bf.load599 = load i32, i32* %310, align 8
  %bf.clear600 = and i32 %bf.load599, 65535
  %cmp601 = icmp eq i32 %bf.clear600, 140
  br i1 %cmp601, label %land.lhs.true.603, label %if.end.627

land.lhs.true.603:                                ; preds = %lor.lhs.false.595, %lor.lhs.false.587, %lor.lhs.false.579, %lor.lhs.false.571, %lor.lhs.false.563, %lor.lhs.false.555, %lor.lhs.false.547, %land.lhs.true.539
  %311 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld604, i32 0, i64 1
  %rtx606 = bitcast %union.rtunion_def* %arrayidx605 to %struct.rtx_def**
  %312 = load %struct.rtx_def*, %struct.rtx_def** %rtx606, align 8
  %313 = bitcast %struct.rtx_def* %312 to i32*
  %bf.load607 = load i32, i32* %313, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp ne i32 %bf.clear608, 54
  br i1 %cmp609, label %if.then.611, label %if.end.627

if.then.611:                                      ; preds = %land.lhs.true.603
  %314 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld613 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx614 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld613, i32 0, i64 0
  %rtx615 = bitcast %union.rtunion_def* %arrayidx614 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %rtx615, align 8
  store %struct.rtx_def* %315, %struct.rtx_def** %tem612, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld616 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx617 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld616, i32 0, i64 0
  %rtx618 = bitcast %union.rtunion_def* %arrayidx617 to %struct.rtx_def**
  %318 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld619 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx620 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld619, i32 0, i64 1
  %rtx621 = bitcast %union.rtunion_def* %arrayidx620 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %rtx621, align 8
  %call622 = call i32 @validate_change(%struct.rtx_def* %316, %struct.rtx_def** %rtx618, %struct.rtx_def* %319, i32 1)
  %320 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %321 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld623 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %arrayidx624 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld623, i32 0, i64 1
  %rtx625 = bitcast %union.rtunion_def* %arrayidx624 to %struct.rtx_def**
  %322 = load %struct.rtx_def*, %struct.rtx_def** %tem612, align 8
  %call626 = call i32 @validate_change(%struct.rtx_def* %320, %struct.rtx_def** %rtx625, %struct.rtx_def* %322, i32 1)
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.611, %land.lhs.true.603, %lor.lhs.false.595, %lor.lhs.false.536, %for.end.525
  %323 = load i32, i32* %memonly.addr, align 4
  %tobool628 = icmp ne i32 %323, 0
  br i1 %tobool628, label %if.end.768, label %if.then.629

if.then.629:                                      ; preds = %if.end.627
  %324 = load i32, i32* %code, align 4
  %idxprom630 = sext i32 %324 to i64
  %arrayidx631 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom630
  %325 = load i8, i8* %arrayidx631, align 1
  %conv632 = sext i8 %325 to i32
  switch i32 %conv632, label %sw.epilog.767 [
    i32 49, label %sw.bb.633
    i32 60, label %sw.bb.645
    i32 50, label %sw.bb.669
    i32 99, label %sw.bb.669
    i32 98, label %sw.bb.680
    i32 51, label %sw.bb.680
  ]

sw.bb.633:                                        ; preds = %if.then.629
  %326 = load i32, i32* %op0_mode, align 4
  %cmp634 = icmp eq i32 %326, 59
  br i1 %cmp634, label %if.then.636, label %if.end.637

if.then.636:                                      ; preds = %sw.bb.633
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 2731, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.subst_constants, i32 0, i32 0)) #5
  unreachable

if.end.637:                                       ; preds = %sw.bb.633
  %327 = load i32, i32* %code, align 4
  %328 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %329 = bitcast %struct.rtx_def* %328 to i32*
  %bf.load638 = load i32, i32* %329, align 8
  %bf.lshr639 = lshr i32 %bf.load638, 16
  %bf.clear640 = and i32 %bf.lshr639, 255
  %330 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld641 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %arrayidx642 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld641, i32 0, i64 0
  %rtx643 = bitcast %union.rtunion_def* %arrayidx642 to %struct.rtx_def**
  %331 = load %struct.rtx_def*, %struct.rtx_def** %rtx643, align 8
  %332 = load i32, i32* %op0_mode, align 4
  %call644 = call %struct.rtx_def* @simplify_unary_operation(i32 %327, i32 %bf.clear640, %struct.rtx_def* %331, i32 %332)
  store %struct.rtx_def* %call644, %struct.rtx_def** %new, align 8
  br label %sw.epilog.767

sw.bb.645:                                        ; preds = %if.then.629
  %333 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld646 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %333, i32 0, i32 1
  %arrayidx647 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld646, i32 0, i64 0
  %rtx648 = bitcast %union.rtunion_def* %arrayidx647 to %struct.rtx_def**
  %334 = load %struct.rtx_def*, %struct.rtx_def** %rtx648, align 8
  %335 = bitcast %struct.rtx_def* %334 to i32*
  %bf.load649 = load i32, i32* %335, align 8
  %bf.lshr650 = lshr i32 %bf.load649, 16
  %bf.clear651 = and i32 %bf.lshr650, 255
  store i32 %bf.clear651, i32* %op_mode, align 4
  %336 = load i32, i32* %op_mode, align 4
  %cmp652 = icmp eq i32 %336, 0
  br i1 %cmp652, label %if.then.654, label %if.end.661

if.then.654:                                      ; preds = %sw.bb.645
  %337 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld655 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %337, i32 0, i32 1
  %arrayidx656 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld655, i32 0, i64 1
  %rtx657 = bitcast %union.rtunion_def* %arrayidx656 to %struct.rtx_def**
  %338 = load %struct.rtx_def*, %struct.rtx_def** %rtx657, align 8
  %339 = bitcast %struct.rtx_def* %338 to i32*
  %bf.load658 = load i32, i32* %339, align 8
  %bf.lshr659 = lshr i32 %bf.load658, 16
  %bf.clear660 = and i32 %bf.lshr659, 255
  store i32 %bf.clear660, i32* %op_mode, align 4
  br label %if.end.661

if.end.661:                                       ; preds = %if.then.654, %sw.bb.645
  %340 = load i32, i32* %code, align 4
  %341 = load i32, i32* %op_mode, align 4
  %342 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld662 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %342, i32 0, i32 1
  %arrayidx663 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld662, i32 0, i64 0
  %rtx664 = bitcast %union.rtunion_def* %arrayidx663 to %struct.rtx_def**
  %343 = load %struct.rtx_def*, %struct.rtx_def** %rtx664, align 8
  %344 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld665 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %344, i32 0, i32 1
  %arrayidx666 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld665, i32 0, i64 1
  %rtx667 = bitcast %union.rtunion_def* %arrayidx666 to %struct.rtx_def**
  %345 = load %struct.rtx_def*, %struct.rtx_def** %rtx667, align 8
  %call668 = call %struct.rtx_def* @simplify_relational_operation(i32 %340, i32 %341, %struct.rtx_def* %343, %struct.rtx_def* %345)
  store %struct.rtx_def* %call668, %struct.rtx_def** %new, align 8
  br label %sw.epilog.767

sw.bb.669:                                        ; preds = %if.then.629, %if.then.629
  %346 = load i32, i32* %code, align 4
  %347 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %348 = bitcast %struct.rtx_def* %347 to i32*
  %bf.load670 = load i32, i32* %348, align 8
  %bf.lshr671 = lshr i32 %bf.load670, 16
  %bf.clear672 = and i32 %bf.lshr671, 255
  %349 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld673 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %349, i32 0, i32 1
  %arrayidx674 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld673, i32 0, i64 0
  %rtx675 = bitcast %union.rtunion_def* %arrayidx674 to %struct.rtx_def**
  %350 = load %struct.rtx_def*, %struct.rtx_def** %rtx675, align 8
  %351 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld676 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %351, i32 0, i32 1
  %arrayidx677 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld676, i32 0, i64 1
  %rtx678 = bitcast %union.rtunion_def* %arrayidx677 to %struct.rtx_def**
  %352 = load %struct.rtx_def*, %struct.rtx_def** %rtx678, align 8
  %call679 = call %struct.rtx_def* @simplify_binary_operation(i32 %346, i32 %bf.clear672, %struct.rtx_def* %350, %struct.rtx_def* %352)
  store %struct.rtx_def* %call679, %struct.rtx_def** %new, align 8
  br label %sw.epilog.767

sw.bb.680:                                        ; preds = %if.then.629, %if.then.629
  %353 = load i32, i32* %op0_mode, align 4
  %cmp681 = icmp eq i32 %353, 59
  br i1 %cmp681, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %sw.bb.680
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 2772, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.subst_constants, i32 0, i32 0)) #5
  unreachable

if.end.684:                                       ; preds = %sw.bb.680
  %354 = load i32, i32* %code, align 4
  %cmp685 = icmp eq i32 %354, 72
  br i1 %cmp685, label %if.then.687, label %if.end.750

if.then.687:                                      ; preds = %if.end.684
  %355 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %355, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld688, i32 0, i64 0
  %rtx690 = bitcast %union.rtunion_def* %arrayidx689 to %struct.rtx_def**
  %356 = load %struct.rtx_def*, %struct.rtx_def** %rtx690, align 8
  store %struct.rtx_def* %356, %struct.rtx_def** %op0, align 8
  %357 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %358 = bitcast %struct.rtx_def* %357 to i32*
  %bf.load691 = load i32, i32* %358, align 8
  %bf.clear692 = and i32 %bf.load691, 65535
  %idxprom693 = sext i32 %bf.clear692 to i64
  %arrayidx694 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom693
  %359 = load i8, i8* %arrayidx694, align 1
  %conv695 = sext i8 %359 to i32
  %cmp696 = icmp eq i32 %conv695, 60
  br i1 %cmp696, label %land.lhs.true.698, label %if.end.749

land.lhs.true.698:                                ; preds = %if.then.687
  %360 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %361 = bitcast %struct.rtx_def* %360 to i32*
  %bf.load699 = load i32, i32* %361, align 8
  %bf.lshr700 = lshr i32 %bf.load699, 16
  %bf.clear701 = and i32 %bf.lshr700, 255
  %cmp702 = icmp eq i32 %bf.clear701, 0
  br i1 %cmp702, label %land.lhs.true.704, label %if.end.749

land.lhs.true.704:                                ; preds = %land.lhs.true.698
  %362 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call705 = call i32 @side_effects_p(%struct.rtx_def* %362)
  %tobool706 = icmp ne i32 %call705, 0
  br i1 %tobool706, label %if.end.749, label %land.lhs.true.707

land.lhs.true.707:                                ; preds = %land.lhs.true.704
  %363 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld708 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %363, i32 0, i32 1
  %arrayidx709 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld708, i32 0, i64 0
  %rtx710 = bitcast %union.rtunion_def* %arrayidx709 to %struct.rtx_def**
  %364 = load %struct.rtx_def*, %struct.rtx_def** %rtx710, align 8
  %365 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %compare_src711 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %365, i32 0, i32 21
  %366 = load %struct.rtx_def*, %struct.rtx_def** %compare_src711, align 8
  %cmp712 = icmp eq %struct.rtx_def* %364, %366
  br i1 %cmp712, label %land.lhs.true.714, label %if.end.749

land.lhs.true.714:                                ; preds = %land.lhs.true.707
  %367 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld715 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx716 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld715, i32 0, i64 1
  %rtx717 = bitcast %union.rtunion_def* %arrayidx716 to %struct.rtx_def**
  %368 = load %struct.rtx_def*, %struct.rtx_def** %rtx717, align 8
  %369 = bitcast %struct.rtx_def* %368 to i32*
  %bf.load718 = load i32, i32* %369, align 8
  %bf.lshr719 = lshr i32 %bf.load718, 16
  %bf.clear720 = and i32 %bf.lshr719, 255
  %cmp721 = icmp eq i32 %bf.clear720, 0
  br i1 %cmp721, label %if.then.723, label %if.end.749

if.then.723:                                      ; preds = %land.lhs.true.714
  %370 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %371 = bitcast %struct.rtx_def* %370 to i32*
  %bf.load724 = load i32, i32* %371, align 8
  %bf.clear725 = and i32 %bf.load724, 65535
  %372 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %compare_mode726 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %372, i32 0, i32 22
  %373 = load i32, i32* %compare_mode726, align 4
  %374 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld727 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %374, i32 0, i32 1
  %arrayidx728 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld727, i32 0, i64 0
  %rtx729 = bitcast %union.rtunion_def* %arrayidx728 to %struct.rtx_def**
  %375 = load %struct.rtx_def*, %struct.rtx_def** %rtx729, align 8
  %376 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld730, i32 0, i64 1
  %rtx732 = bitcast %union.rtunion_def* %arrayidx731 to %struct.rtx_def**
  %377 = load %struct.rtx_def*, %struct.rtx_def** %rtx732, align 8
  %call733 = call %struct.rtx_def* @simplify_relational_operation(i32 %bf.clear725, i32 %373, %struct.rtx_def* %375, %struct.rtx_def* %377)
  store %struct.rtx_def* %call733, %struct.rtx_def** %temp, align 8
  %378 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %379 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp734 = icmp eq %struct.rtx_def* %378, %379
  br i1 %cmp734, label %if.then.736, label %if.else.740

if.then.736:                                      ; preds = %if.then.723
  %380 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld737 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %arrayidx738 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld737, i32 0, i64 2
  %rtx739 = bitcast %union.rtunion_def* %arrayidx738 to %struct.rtx_def**
  %381 = load %struct.rtx_def*, %struct.rtx_def** %rtx739, align 8
  store %struct.rtx_def* %381, %struct.rtx_def** %new, align 8
  br label %if.end.748

if.else.740:                                      ; preds = %if.then.723
  %382 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %383 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp741 = icmp eq %struct.rtx_def* %382, %383
  br i1 %cmp741, label %if.then.743, label %if.end.747

if.then.743:                                      ; preds = %if.else.740
  %384 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld744 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %384, i32 0, i32 1
  %arrayidx745 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld744, i32 0, i64 1
  %rtx746 = bitcast %union.rtunion_def* %arrayidx745 to %struct.rtx_def**
  %385 = load %struct.rtx_def*, %struct.rtx_def** %rtx746, align 8
  store %struct.rtx_def* %385, %struct.rtx_def** %new, align 8
  br label %if.end.747

if.end.747:                                       ; preds = %if.then.743, %if.else.740
  br label %if.end.748

if.end.748:                                       ; preds = %if.end.747, %if.then.736
  br label %if.end.749

if.end.749:                                       ; preds = %if.end.748, %land.lhs.true.714, %land.lhs.true.707, %land.lhs.true.704, %land.lhs.true.698, %if.then.687
  br label %if.end.750

if.end.750:                                       ; preds = %if.end.749, %if.end.684
  %386 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool751 = icmp ne %struct.rtx_def* %386, null
  br i1 %tobool751, label %if.end.766, label %if.then.752

if.then.752:                                      ; preds = %if.end.750
  %387 = load i32, i32* %code, align 4
  %388 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %389 = bitcast %struct.rtx_def* %388 to i32*
  %bf.load753 = load i32, i32* %389, align 8
  %bf.lshr754 = lshr i32 %bf.load753, 16
  %bf.clear755 = and i32 %bf.lshr754, 255
  %390 = load i32, i32* %op0_mode, align 4
  %391 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld756 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %391, i32 0, i32 1
  %arrayidx757 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld756, i32 0, i64 0
  %rtx758 = bitcast %union.rtunion_def* %arrayidx757 to %struct.rtx_def**
  %392 = load %struct.rtx_def*, %struct.rtx_def** %rtx758, align 8
  %393 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld759 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %393, i32 0, i32 1
  %arrayidx760 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld759, i32 0, i64 1
  %rtx761 = bitcast %union.rtunion_def* %arrayidx760 to %struct.rtx_def**
  %394 = load %struct.rtx_def*, %struct.rtx_def** %rtx761, align 8
  %395 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld762 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %395, i32 0, i32 1
  %arrayidx763 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld762, i32 0, i64 2
  %rtx764 = bitcast %union.rtunion_def* %arrayidx763 to %struct.rtx_def**
  %396 = load %struct.rtx_def*, %struct.rtx_def** %rtx764, align 8
  %call765 = call %struct.rtx_def* @simplify_ternary_operation(i32 %387, i32 %bf.clear755, i32 %390, %struct.rtx_def* %392, %struct.rtx_def* %394, %struct.rtx_def* %396)
  store %struct.rtx_def* %call765, %struct.rtx_def** %new, align 8
  br label %if.end.766

if.end.766:                                       ; preds = %if.then.752, %if.end.750
  br label %sw.epilog.767

sw.epilog.767:                                    ; preds = %if.then.629, %if.end.766, %sw.bb.669, %if.end.661, %if.end.637
  br label %if.end.768

if.end.768:                                       ; preds = %sw.epilog.767, %if.end.627
  %397 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool769 = icmp ne %struct.rtx_def* %397, null
  br i1 %tobool769, label %if.then.770, label %if.end.772

if.then.770:                                      ; preds = %if.end.768
  %398 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %399 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %400 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call771 = call i32 @validate_change(%struct.rtx_def* %398, %struct.rtx_def** %399, %struct.rtx_def* %400, i32 1)
  br label %if.end.772

if.end.772:                                       ; preds = %sw.bb, %if.end, %if.end.34, %if.end.66, %if.end.90, %if.end.456, %if.then.770, %if.end.768
  ret void
}

declare i32 @apply_change_group() #1

declare i32 @memory_address_p(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @change_address(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @aggregate_value_p(%union.tree_node*) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @gen_lowpart(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @get_exception_pointer(%struct.function*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @integrate_parm_decls(%union.tree_node* %args, %struct.inline_remap* %map, %struct.rtvec_def* %arg_vector) #0 {
entry:
  %args.addr = alloca %union.tree_node*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %arg_vector.addr = alloca %struct.rtvec_def*, align 8
  %tail = alloca %union.tree_node*, align 8
  %i = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  %new_decl_rtl = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store %struct.rtvec_def* %arg_vector, %struct.rtvec_def** %arg_vector.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %tail, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %3 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %3, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %call = call %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %2, %union.tree_node* %4, %union.tree_node* %5)
  store %union.tree_node* %call, %union.tree_node** %decl, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %arg_vector.addr, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  %9 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call1 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %8, %struct.inline_remap* %9, i32 1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %new_decl_rtl, align 8
  %10 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %new_decl_rtl, %struct.rtx_def* null, %struct.inline_remap* %10, i32 1)
  %call2 = call i32 @apply_change_group()
  %11 = load %struct.rtx_def*, %struct.rtx_def** %new_decl_rtl, align 8
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl3 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 17
  store %struct.rtx_def* %11, %struct.rtx_def** %rtl, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %union.tree_node*, %union.tree_node** %tail, align 8
  %common = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %14, %union.tree_node** %tail, align 8
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @integrate_decl_tree(%union.tree_node* %let, %struct.inline_remap* %map) #0 {
entry:
  %let.addr = alloca %union.tree_node*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %t = alloca %union.tree_node*, align 8
  %new_block = alloca %union.tree_node*, align 8
  %next = alloca %union.tree_node**, align 8
  %d = alloca %union.tree_node*, align 8
  %r = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %let, %union.tree_node** %let.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  %call = call %union.tree_node* @make_node(i32 4)
  store %union.tree_node* %call, %union.tree_node** %new_block, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %0, i32 0, i32 3
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %3 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map1 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %3, i32 0, i32 3
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map1, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 0
  %5 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %2, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map2 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %6, i32 0, i32 3
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map2, align 8
  %8 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map3 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %8, i32 0, i32 3
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map3, align 8
  %num_elements4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 0
  %10 = load i64, i64* %num_elements4, align 8
  %mul = mul i64 2, %10
  %call5 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %7, i64 %mul)
  %11 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map6 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %11, i32 0, i32 3
  store %struct.varray_head_tag* %call5, %struct.varray_head_tag** %block_map6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %12 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %13 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map7 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %13, i32 0, i32 3
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map7, align 8
  %elements_used8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 1
  %15 = load i64, i64* %elements_used8, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %elements_used8, align 8
  %16 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map9 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %16, i32 0, i32 3
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map9, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %15
  store %union.tree_node* %12, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  %18 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block = bitcast %union.tree_node* %18 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  store %union.tree_node** %vars, %union.tree_node*** %next, align 8
  %19 = load %union.tree_node*, %union.tree_node** %let.addr, align 8
  %block10 = bitcast %union.tree_node* %19 to %struct.tree_block*
  %vars11 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block10, i32 0, i32 2
  %20 = load %union.tree_node*, %union.tree_node** %vars11, align 8
  store %union.tree_node* %20, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %21 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %21, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %union.tree_node*, %union.tree_node** %t, align 8
  %23 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %fndecl = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %23, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %fndecl, align 8
  %25 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %call12 = call %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %22, %union.tree_node* %24, %union.tree_node* %25)
  store %union.tree_node* %call12, %union.tree_node** %d, align 8
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp13 = icmp ne %struct.rtx_def* %27, null
  br i1 %cmp13, label %if.then.14, label %if.end.68

if.then.14:                                       ; preds = %for.body
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl15 = bitcast %union.tree_node* %28 to %struct.tree_decl*
  %rtl16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 17
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtl16, align 8
  %tobool17 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.14
  %30 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl18 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %rtl19 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl18, i32 0, i32 17
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtl19, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.14
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @make_decl_rtl(%union.tree_node* %32, i8* null)
  %33 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl20 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %rtl21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 17
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtl21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %31, %cond.true ], [ %34, %cond.false ]
  %35 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call22 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %cond, %struct.inline_remap* %35, i32 1)
  %36 = load %union.tree_node*, %union.tree_node** %d, align 8
  %decl23 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %rtl24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 17
  store %struct.rtx_def* %call22, %struct.rtx_def** %rtl24, align 8
  %37 = load %union.tree_node*, %union.tree_node** %d, align 8
  %decl25 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %rtl26 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl25, i32 0, i32 17
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtl26, align 8
  %tobool27 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool27, label %cond.true.28, label %cond.false.31

cond.true.28:                                     ; preds = %cond.end
  %39 = load %union.tree_node*, %union.tree_node** %d, align 8
  %decl29 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %rtl30 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl29, i32 0, i32 17
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtl30, align 8
  br label %cond.end.34

cond.false.31:                                    ; preds = %cond.end
  %41 = load %union.tree_node*, %union.tree_node** %d, align 8
  call void @make_decl_rtl(%union.tree_node* %41, i8* null)
  %42 = load %union.tree_node*, %union.tree_node** %d, align 8
  %decl32 = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %rtl33 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl32, i32 0, i32 17
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtl33, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.31, %cond.true.28
  %cond35 = phi %struct.rtx_def* [ %40, %cond.true.28 ], [ %43, %cond.false.31 ]
  store %struct.rtx_def* %cond35, %struct.rtx_def** %r, align 8
  %44 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %r, %struct.rtx_def* null, %struct.inline_remap* %44, i32 1)
  %45 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %46 = load %union.tree_node*, %union.tree_node** %d, align 8
  %decl36 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %rtl37 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl36, i32 0, i32 17
  store %struct.rtx_def* %45, %struct.rtx_def** %rtl37, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load = load i32, i32* %48, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp38 = icmp eq i32 %bf.clear, 61
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %cond.end.34
  %49 = load %union.tree_node*, %union.tree_node** %d, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %51 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %51 to i64
  %52 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %52, i32 0, i32 3
  %53 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %53, i32 0, i32 11
  %54 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  %arrayidx41 = getelementptr inbounds %union.tree_node*, %union.tree_node** %54, i64 %idxprom
  store %union.tree_node* %49, %union.tree_node** %arrayidx41, align 8
  br label %if.end.66

if.else:                                          ; preds = %cond.end.34
  %55 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load42 = load i32, i32* %56, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 65
  br i1 %cmp44, label %if.then.45, label %if.end.65

if.then.45:                                       ; preds = %if.else
  %57 = load %union.tree_node*, %union.tree_node** %d, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %60 = load i32, i32* %rtuint50, align 4
  %idxprom51 = zext i32 %60 to i64
  %61 = load %struct.function*, %struct.function** @cfun, align 8
  %emit52 = getelementptr inbounds %struct.function, %struct.function* %61, i32 0, i32 3
  %62 = load %struct.emit_status*, %struct.emit_status** %emit52, align 8
  %regno_decl53 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %62, i32 0, i32 11
  %63 = load %union.tree_node**, %union.tree_node*** %regno_decl53, align 8
  %arrayidx54 = getelementptr inbounds %union.tree_node*, %union.tree_node** %63, i64 %idxprom51
  store %union.tree_node* %57, %union.tree_node** %arrayidx54, align 8
  %64 = load %union.tree_node*, %union.tree_node** %d, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtuint60 = bitcast %union.rtunion_def* %arrayidx59 to i32*
  %67 = load i32, i32* %rtuint60, align 4
  %idxprom61 = zext i32 %67 to i64
  %68 = load %struct.function*, %struct.function** @cfun, align 8
  %emit62 = getelementptr inbounds %struct.function, %struct.function* %68, i32 0, i32 3
  %69 = load %struct.emit_status*, %struct.emit_status** %emit62, align 8
  %regno_decl63 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %69, i32 0, i32 11
  %70 = load %union.tree_node**, %union.tree_node*** %regno_decl63, align 8
  %arrayidx64 = getelementptr inbounds %union.tree_node*, %union.tree_node** %70, i64 %idxprom61
  store %union.tree_node* %64, %union.tree_node** %arrayidx64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.45, %if.else
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then.39
  %call67 = call i32 @apply_change_group()
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.66, %for.body
  %71 = load %union.tree_node*, %union.tree_node** %d, align 8
  %72 = load %union.tree_node**, %union.tree_node*** %next, align 8
  store %union.tree_node* %71, %union.tree_node** %72, align 8
  %73 = load %union.tree_node*, %union.tree_node** %d, align 8
  %common = bitcast %union.tree_node* %73 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  store %union.tree_node** %chain, %union.tree_node*** %next, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %74 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common69 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %chain70 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 0
  %75 = load %union.tree_node*, %union.tree_node** %chain70, align 8
  store %union.tree_node* %75, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block71 = bitcast %union.tree_node* %76 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block71, i32 0, i32 3
  store %union.tree_node** %subblocks, %union.tree_node*** %next, align 8
  %77 = load %union.tree_node*, %union.tree_node** %let.addr, align 8
  %block72 = bitcast %union.tree_node* %77 to %struct.tree_block*
  %subblocks73 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block72, i32 0, i32 3
  %78 = load %union.tree_node*, %union.tree_node** %subblocks73, align 8
  store %union.tree_node* %78, %union.tree_node** %t, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.81, %for.end
  %79 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool75 = icmp ne %union.tree_node* %79, null
  br i1 %tobool75, label %for.body.76, label %for.end.84

for.body.76:                                      ; preds = %for.cond.74
  %80 = load %union.tree_node*, %union.tree_node** %t, align 8
  %81 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call77 = call %union.tree_node* @integrate_decl_tree(%union.tree_node* %80, %struct.inline_remap* %81)
  %82 = load %union.tree_node**, %union.tree_node*** %next, align 8
  store %union.tree_node* %call77, %union.tree_node** %82, align 8
  %83 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %84 = load %union.tree_node**, %union.tree_node*** %next, align 8
  %85 = load %union.tree_node*, %union.tree_node** %84, align 8
  %block78 = bitcast %union.tree_node* %85 to %struct.tree_block*
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block78, i32 0, i32 4
  store %union.tree_node* %83, %union.tree_node** %supercontext, align 8
  %86 = load %union.tree_node**, %union.tree_node*** %next, align 8
  %87 = load %union.tree_node*, %union.tree_node** %86, align 8
  %common79 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %chain80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 0
  store %union.tree_node** %chain80, %union.tree_node*** %next, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.76
  %88 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common82 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %chain83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 0
  %89 = load %union.tree_node*, %union.tree_node** %chain83, align 8
  store %union.tree_node* %89, %union.tree_node** %t, align 8
  br label %for.cond.74

for.end.84:                                       ; preds = %for.cond.74
  %90 = load %union.tree_node*, %union.tree_node** %let.addr, align 8
  %common85 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 2
  %bf.load86 = load i32, i32* %used_flag, align 8
  %bf.lshr = lshr i32 %bf.load86, 16
  %bf.clear87 = and i32 %bf.lshr, 1
  %91 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %common88 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %used_flag89 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common88, i32 0, i32 2
  %bf.load90 = load i32, i32* %used_flag89, align 8
  %bf.value = and i32 %bf.clear87, 1
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear91 = and i32 %bf.load90, -65537
  %bf.set = or i32 %bf.clear91, %bf.shl
  store i32 %bf.set, i32* %used_flag89, align 8
  %92 = load %union.tree_node*, %union.tree_node** %let.addr, align 8
  %93 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block92 = bitcast %union.tree_node* %93 to %struct.tree_block*
  %abstract_origin = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block92, i32 0, i32 5
  store %union.tree_node* %92, %union.tree_node** %abstract_origin, align 8
  %94 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  ret %union.tree_node* %94
}

declare void @expand_start_bindings_and_block(i32, %union.tree_node*) #1

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @compare_blocks(i8* %v1, i8* %v2) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  %b1 = alloca %union.tree_node*, align 8
  %b2 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %v1, i8** %v1.addr, align 8
  store i8* %v2, i8** %v2.addr, align 8
  %0 = load i8*, i8** %v1.addr, align 8
  %1 = bitcast i8* %0 to %union.tree_node**
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8
  store %union.tree_node* %2, %union.tree_node** %b1, align 8
  %3 = load i8*, i8** %v2.addr, align 8
  %4 = bitcast i8* %3 to %union.tree_node**
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  store %union.tree_node* %5, %union.tree_node** %b2, align 8
  %6 = load %union.tree_node*, %union.tree_node** %b1, align 8
  %block = bitcast %union.tree_node* %6 to %struct.tree_block*
  %abstract_origin = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 5
  %7 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %8 = bitcast %union.tree_node* %7 to i8*
  store i8* %8, i8** %p1, align 8
  %9 = load %union.tree_node*, %union.tree_node** %b2, align 8
  %block1 = bitcast %union.tree_node* %9 to %struct.tree_block*
  %abstract_origin2 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1, i32 0, i32 5
  %10 = load %union.tree_node*, %union.tree_node** %abstract_origin2, align 8
  %11 = bitcast %union.tree_node* %10 to i8*
  store i8* %11, i8** %p2, align 8
  %12 = load i8*, i8** %p1, align 8
  %13 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %12, %13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %14 = load i8*, i8** %p1, align 8
  %15 = load i8*, i8** %p2, align 8
  %cmp3 = icmp ult i8* %14, %15
  %cond = select i1 %cmp3, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @emit_queue() #1

declare void @do_pending_stack_adjust() #1

declare void @emit_stack_save(i32, %struct.rtx_def**, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @setup_initial_hard_reg_value_integration(%struct.function* %inl_f, %struct.inline_remap* %remap) #0 {
entry:
  %inl_f.addr = alloca %struct.function*, align 8
  %remap.addr = alloca %struct.inline_remap*, align 8
  %ivs = alloca %struct.initial_value_struct*, align 8
  %i = alloca i32, align 4
  store %struct.function* %inl_f, %struct.function** %inl_f.addr, align 8
  store %struct.inline_remap* %remap, %struct.inline_remap** %remap.addr, align 8
  %0 = load %struct.function*, %struct.function** %inl_f.addr, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %num_entries, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %8, i32 0, i32 2
  %9 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %9, i64 %idxprom
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %call = call %struct.rtx_def* @get_func_hard_reg_initial_val(%struct.function* %6, %struct.rtx_def* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries3 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %12, i32 0, i32 2
  %13 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries3, align 8
  %arrayidx4 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %13, i64 %idxprom2
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx4, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %15 = load i32, i32* %rtuint, align 4
  %idxprom6 = zext i32 %15 to i64
  %16 = load %struct.inline_remap*, %struct.inline_remap** %remap.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %16, i32 0, i32 4
  %17 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx7 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %17, i64 %idxprom6
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx7, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_insn_list(%struct.rtx_def* %insns, %struct.inline_remap* %map, %struct.rtx_def* %static_chain_value) #0 {
entry:
  %insns.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %static_chain_value.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %static_chain_mem = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %new_set = alloca %struct.rtx_def*, align 8
  %newdest = alloca %struct.rtx_def*, align 8
  %offset = alloca i64, align 8
  %sequence = alloca [3 x %struct.rtx_def*], align 16
  %tail_label = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %mapped_block_p = alloca %union.tree_node**, align 8
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store %struct.rtx_def* %static_chain_value, %struct.rtx_def** %static_chain_value.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %static_chain_mem, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.568, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.572

for.body:                                         ; preds = %for.cond
  %2 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %orig_asm_operands_vector = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %2, i32 0, i32 12
  store %struct.rtvec_def* null, %struct.rtvec_def** %orig_asm_operands_vector, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb.329
    i32 34, label %sw.bb.367
    i32 36, label %sw.bb.446
    i32 35, label %sw.bb.457
    i32 37, label %sw.bb.459
  ]

sw.bb:                                            ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %pattern, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.19

cond.true:                                        ; preds = %sw.bb
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load8 = load i32, i32* %12, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 47
  br i1 %cmp10, label %cond.true.12, label %cond.false

cond.true.12:                                     ; preds = %cond.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %15, %struct.rtx_def* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.12
  %cond = phi %struct.rtx_def* [ %14, %cond.true.12 ], [ %call, %cond.false ]
  br label %cond.end.20

cond.false.19:                                    ; preds = %sw.bb
  br label %cond.end.20

cond.end.20:                                      ; preds = %cond.false.19, %cond.end
  %cond21 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.19 ]
  store %struct.rtx_def* %cond21, %struct.rtx_def** %set, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load22 = load i32, i32* %19, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 48
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %cond.end.20
  %20 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load29 = load i32, i32* %22, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 61
  br i1 %cmp31, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load37 = load i32, i32* %25, align 8
  %bf.lshr = lshr i32 %bf.load37, 30
  %bf.clear38 = and i32 %bf.lshr, 1
  %tobool39 = icmp ne i32 %bf.clear38, 0
  br i1 %tobool39, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.33
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.33, %land.lhs.true, %cond.end.20
  %26 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %26, i32 0, i32 11
  %27 = load %struct.rtx_def*, %struct.rtx_def** %inline_target, align 8
  %cmp40 = icmp eq %struct.rtx_def* %27, null
  br i1 %cmp40, label %land.lhs.true.42, label %if.else.133

land.lhs.true.42:                                 ; preds = %if.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp43 = icmp ne %struct.rtx_def* %28, null
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.133

land.lhs.true.45:                                 ; preds = %land.lhs.true.42
  %29 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load49 = load i32, i32* %31, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 61
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.133

land.lhs.true.53:                                 ; preds = %land.lhs.true.45
  %32 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load57 = load i32, i32* %34, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 30
  %bf.clear59 = and i32 %bf.lshr58, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %if.then.61, label %if.else.133

if.then.61:                                       ; preds = %land.lhs.true.53
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 1
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %call65 = call i32 @volatile_refs_p(%struct.rtx_def* %36)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else

if.then.67:                                       ; preds = %if.then.61
  %37 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %38 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call68 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %37, %struct.inline_remap* %38, i32 0)
  %call69 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call68)
  store %struct.rtx_def* %call69, %struct.rtx_def** %copy, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load70 = load i32, i32* %40, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %idxprom72 = sext i32 %bf.clear71 to i64
  %arrayidx73 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom72
  %41 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %41 to i32
  %cmp75 = icmp eq i32 %conv74, 105
  br i1 %cmp75, label %cond.true.77, label %cond.false.96

cond.true.77:                                     ; preds = %if.then.67
  %42 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load81 = load i32, i32* %44, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 47
  br i1 %cmp83, label %cond.true.85, label %cond.false.89

cond.true.85:                                     ; preds = %cond.true.77
  %45 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 3
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  br label %cond.end.94

cond.false.89:                                    ; preds = %cond.true.77
  %47 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 3
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %call93 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %47, %struct.rtx_def* %49)
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.false.89, %cond.true.85
  %cond95 = phi %struct.rtx_def* [ %46, %cond.true.85 ], [ %call93, %cond.false.89 ]
  br label %cond.end.97

cond.false.96:                                    ; preds = %if.then.67
  br label %cond.end.97

cond.end.97:                                      ; preds = %cond.false.96, %cond.end.94
  %cond98 = phi %struct.rtx_def* [ %cond95, %cond.end.94 ], [ null, %cond.false.96 ]
  store %struct.rtx_def* %cond98, %struct.rtx_def** %new_set, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %new_set, align 8
  %cmp99 = icmp eq %struct.rtx_def* %50, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %cond.end.97
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1373, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_insn_list, i32 0, i32 0)) #5
  unreachable

if.end.102:                                       ; preds = %cond.end.97
  %51 = load %struct.rtx_def*, %struct.rtx_def** %new_set, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load106 = load i32, i32* %53, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %call109 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear108)
  %54 = load %struct.rtx_def*, %struct.rtx_def** %new_set, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  store %struct.rtx_def* %call109, %struct.rtx_def** %rtx112, align 8
  br label %if.end.132

if.else:                                          ; preds = %if.then.61
  %55 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 1
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %call119 = call i32 @rtx_equal_p(%struct.rtx_def* %56, %struct.rtx_def* %58)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %land.lhs.true.121, label %if.else.130

land.lhs.true.121:                                ; preds = %if.else
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 6
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %cmp125 = icmp ne %struct.rtx_def* %60, null
  br i1 %cmp125, label %if.then.127, label %if.else.130

if.then.127:                                      ; preds = %land.lhs.true.121
  %61 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %62 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call128 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %61, %struct.inline_remap* %62, i32 0)
  %call129 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call128)
  store %struct.rtx_def* %call129, %struct.rtx_def** %copy, align 8
  br label %if.end.131

if.else.130:                                      ; preds = %land.lhs.true.121, %if.else
  br label %sw.epilog

if.end.131:                                       ; preds = %if.then.127
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.end.102
  br label %if.end.328

if.else.133:                                      ; preds = %land.lhs.true.53, %land.lhs.true.45, %land.lhs.true.42, %if.end
  %63 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %inline_target134 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %63, i32 0, i32 11
  %64 = load %struct.rtx_def*, %struct.rtx_def** %inline_target134, align 8
  %cmp135 = icmp eq %struct.rtx_def* %64, null
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.159

land.lhs.true.137:                                ; preds = %if.else.133
  %65 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load138 = load i32, i32* %66, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 49
  br i1 %cmp140, label %land.lhs.true.142, label %if.else.159

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %67 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load146 = load i32, i32* %69, align 8
  %bf.clear147 = and i32 %bf.load146, 65535
  %cmp148 = icmp eq i32 %bf.clear147, 61
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.159

land.lhs.true.150:                                ; preds = %land.lhs.true.142
  %70 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load154 = load i32, i32* %72, align 8
  %bf.lshr155 = lshr i32 %bf.load154, 30
  %bf.clear156 = and i32 %bf.lshr155, 1
  %tobool157 = icmp ne i32 %bf.clear156, 0
  br i1 %tobool157, label %if.then.158, label %if.else.159

if.then.158:                                      ; preds = %land.lhs.true.150
  br label %sw.epilog

if.else.159:                                      ; preds = %land.lhs.true.150, %land.lhs.true.142, %land.lhs.true.137, %if.else.133
  %73 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value.addr, align 8
  %cmp160 = icmp ne %struct.rtx_def* %73, null
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.197

land.lhs.true.162:                                ; preds = %if.else.159
  %74 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp163 = icmp ne %struct.rtx_def* %74, null
  br i1 %cmp163, label %land.lhs.true.165, label %if.else.197

land.lhs.true.165:                                ; preds = %land.lhs.true.162
  %75 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load166 = load i32, i32* %76, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp eq i32 %bf.clear167, 66
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.197

land.lhs.true.170:                                ; preds = %land.lhs.true.165
  %77 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load174 = load i32, i32* %79, align 8
  %bf.clear175 = and i32 %bf.load174, 65535
  %cmp176 = icmp eq i32 %bf.clear175, 61
  br i1 %cmp176, label %land.lhs.true.178, label %if.else.197

land.lhs.true.178:                                ; preds = %land.lhs.true.170
  %80 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 1
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %call185 = call i32 @rtx_equal_p(%struct.rtx_def* %81, %struct.rtx_def* %83)
  %tobool186 = icmp ne i32 %call185, 0
  br i1 %tobool186, label %if.then.187, label %if.else.197

if.then.187:                                      ; preds = %land.lhs.true.178
  %84 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load188 = load i32, i32* %85, align 8
  %bf.lshr189 = lshr i32 %bf.load188, 16
  %bf.clear190 = and i32 %bf.lshr189, 255
  %86 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %call194 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear190, %struct.rtx_def* %87)
  store %struct.rtx_def* %call194, %struct.rtx_def** %static_chain_mem, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %89 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call195 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %88, %struct.inline_remap* %89, i32 0)
  %call196 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call195)
  store %struct.rtx_def* %call196, %struct.rtx_def** %copy, align 8
  br label %if.end.326

if.else.197:                                      ; preds = %land.lhs.true.178, %land.lhs.true.170, %land.lhs.true.165, %land.lhs.true.162, %if.else.159
  %90 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value.addr, align 8
  %cmp198 = icmp ne %struct.rtx_def* %90, null
  br i1 %cmp198, label %land.lhs.true.200, label %if.else.217

land.lhs.true.200:                                ; preds = %if.else.197
  %91 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp201 = icmp ne %struct.rtx_def* %91, null
  br i1 %cmp201, label %land.lhs.true.203, label %if.else.217

land.lhs.true.203:                                ; preds = %land.lhs.true.200
  %92 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 0
  %rtx206 = bitcast %union.rtunion_def* %arrayidx205 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx206, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %call207 = call i32 @rtx_equal_p(%struct.rtx_def* %93, %struct.rtx_def* %94)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.then.216, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.203
  %95 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_mem, align 8
  %tobool209 = icmp ne %struct.rtx_def* %95, null
  br i1 %tobool209, label %land.lhs.true.210, label %if.else.217

land.lhs.true.210:                                ; preds = %lor.lhs.false
  %96 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 0
  %rtx213 = bitcast %union.rtunion_def* %arrayidx212 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx213, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_mem, align 8
  %call214 = call i32 @rtx_equal_p(%struct.rtx_def* %97, %struct.rtx_def* %98)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.216, label %if.else.217

if.then.216:                                      ; preds = %land.lhs.true.210, %land.lhs.true.203
  br label %sw.epilog

if.else.217:                                      ; preds = %land.lhs.true.210, %lor.lhs.false, %land.lhs.true.200, %if.else.197
  %99 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value.addr, align 8
  %cmp218 = icmp ne %struct.rtx_def* %99, null
  br i1 %cmp218, label %land.lhs.true.220, label %if.else.249

land.lhs.true.220:                                ; preds = %if.else.217
  %100 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp221 = icmp ne %struct.rtx_def* %100, null
  br i1 %cmp221, label %land.lhs.true.223, label %if.else.249

land.lhs.true.223:                                ; preds = %land.lhs.true.220
  %101 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 1
  %rtx226 = bitcast %union.rtunion_def* %arrayidx225 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx226, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %call227 = call i32 @rtx_equal_p(%struct.rtx_def* %102, %struct.rtx_def* %103)
  %tobool228 = icmp ne i32 %call227, 0
  br i1 %tobool228, label %if.then.237, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %land.lhs.true.223
  %104 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_mem, align 8
  %tobool230 = icmp ne %struct.rtx_def* %104, null
  br i1 %tobool230, label %land.lhs.true.231, label %if.else.249

land.lhs.true.231:                                ; preds = %lor.lhs.false.229
  %105 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 1
  %rtx234 = bitcast %union.rtunion_def* %arrayidx233 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx234, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_mem, align 8
  %call235 = call i32 @rtx_equal_p(%struct.rtx_def* %106, %struct.rtx_def* %107)
  %tobool236 = icmp ne i32 %call235, 0
  br i1 %tobool236, label %if.then.237, label %if.else.249

if.then.237:                                      ; preds = %land.lhs.true.231, %land.lhs.true.223
  %108 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %110 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call241 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %109, %struct.inline_remap* %110, i32 1)
  store %struct.rtx_def* %call241, %struct.rtx_def** %newdest, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %newdest, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value.addr, align 8
  %call242 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %111, %struct.rtx_def* %112)
  store %struct.rtx_def* %call242, %struct.rtx_def** %copy, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load243 = load i32, i32* %114, align 8
  %bf.clear244 = and i32 %bf.load243, 65535
  %cmp245 = icmp ne i32 %bf.clear244, 66
  br i1 %cmp245, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %if.then.237
  store %struct.rtx_def* null, %struct.rtx_def** %static_chain_value.addr, align 8
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.247, %if.then.237
  br label %if.end.324

if.else.249:                                      ; preds = %land.lhs.true.231, %lor.lhs.false.229, %land.lhs.true.220, %if.else.217
  %115 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp250 = icmp ne %struct.rtx_def* %115, null
  br i1 %cmp250, label %land.lhs.true.252, label %if.else.320

land.lhs.true.252:                                ; preds = %if.else.249
  %116 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %call256 = call i32 @rtx_equal_p(%struct.rtx_def* %117, %struct.rtx_def* %118)
  %tobool257 = icmp ne i32 %call256, 0
  br i1 %tobool257, label %if.then.258, label %if.else.320

if.then.258:                                      ; preds = %land.lhs.true.252
  %119 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 0
  %rtx261 = bitcast %union.rtunion_def* %arrayidx260 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx261, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx263 to i32*
  %121 = load i32, i32* %rtuint, align 4
  %idxprom264 = zext i32 %121 to i64
  %122 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %122, i32 0, i32 4
  %123 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx265 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %123, i64 %idxprom264
  %124 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx265, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %temp, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 0
  %rtuint268 = bitcast %union.rtunion_def* %arrayidx267 to i32*
  %126 = load i32, i32* %rtuint268, align 4
  %idxprom269 = zext i32 %126 to i64
  %127 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %127, i32 0, i32 9
  %128 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %128, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx270 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom269
  %rtx271 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx270, i32 0, i32 0
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx271, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %temp, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %call272 = call i32 @rtx_equal_p(%struct.rtx_def* %130, %struct.rtx_def* %131)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.then.274, label %if.else.275

if.then.274:                                      ; preds = %if.then.258
  store i64 0, i64* %offset, align 8
  br label %if.end.302

if.else.275:                                      ; preds = %if.then.258
  %132 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load276 = load i32, i32* %133, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 75
  br i1 %cmp278, label %land.lhs.true.280, label %if.else.300

land.lhs.true.280:                                ; preds = %if.else.275
  %134 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 0
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %call284 = call i32 @rtx_equal_p(%struct.rtx_def* %135, %struct.rtx_def* %136)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %land.lhs.true.286, label %if.else.300

land.lhs.true.286:                                ; preds = %land.lhs.true.280
  %137 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 1
  %rtx289 = bitcast %union.rtunion_def* %arrayidx288 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx289, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load290 = load i32, i32* %139, align 8
  %bf.clear291 = and i32 %bf.load290, 65535
  %cmp292 = icmp eq i32 %bf.clear291, 54
  br i1 %cmp292, label %if.then.294, label %if.else.300

if.then.294:                                      ; preds = %land.lhs.true.286
  %140 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld295, i32 0, i64 1
  %rtx297 = bitcast %union.rtunion_def* %arrayidx296 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx297, align 8
  %fld298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld298, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx299 to i64*
  %142 = load i64, i64* %rtwint, align 8
  store i64 %142, i64* %offset, align 8
  br label %if.end.301

if.else.300:                                      ; preds = %land.lhs.true.286, %land.lhs.true.280, %if.else.275
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1474, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_insn_list, i32 0, i32 0)) #5
  unreachable

if.end.301:                                       ; preds = %if.then.294
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.then.274
  %143 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 1
  %rtx305 = bitcast %union.rtunion_def* %arrayidx304 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx305, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call306 = call i32 @rtx_equal_p(%struct.rtx_def* %144, %struct.rtx_def* %145)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.then.308, label %if.else.312

if.then.308:                                      ; preds = %if.end.302
  %146 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 1
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  store %struct.rtx_def* %147, %struct.rtx_def** %temp, align 8
  br label %if.end.318

if.else.312:                                      ; preds = %if.end.302
  %148 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 1
  %rtx315 = bitcast %union.rtunion_def* %arrayidx314 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx315, align 8
  %150 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 0, %150
  %call316 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %149, i64 %sub)
  %call317 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call316, %struct.rtx_def* null)
  store %struct.rtx_def* %call317, %struct.rtx_def** %temp, align 8
  br label %if.end.318

if.end.318:                                       ; preds = %if.else.312, %if.then.308
  %151 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call319 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %151, %struct.rtx_def* %152)
  store %struct.rtx_def* %call319, %struct.rtx_def** %copy, align 8
  br label %if.end.323

if.else.320:                                      ; preds = %land.lhs.true.252, %if.else.249
  %153 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %154 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call321 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %153, %struct.inline_remap* %154, i32 0)
  %call322 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call321)
  store %struct.rtx_def* %call322, %struct.rtx_def** %copy, align 8
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.320, %if.end.318
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.end.248
  br label %if.end.325

if.end.325:                                       ; preds = %if.end.324
  br label %if.end.326

if.end.326:                                       ; preds = %if.end.325, %if.then.187
  br label %if.end.327

if.end.327:                                       ; preds = %if.end.326
  br label %if.end.328

if.end.328:                                       ; preds = %if.end.327, %if.end.132
  %155 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %156 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %155, %struct.inline_remap* %156)
  br label %sw.epilog

sw.bb.329:                                        ; preds = %for.body
  %157 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %integrating = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %157, i32 0, i32 0
  %158 = load i32, i32* %integrating, align 4
  %tobool330 = icmp ne i32 %158, 0
  br i1 %tobool330, label %land.lhs.true.331, label %if.else.343

land.lhs.true.331:                                ; preds = %sw.bb.329
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call332 = call i32 @returnjump_p(%struct.rtx_def* %159)
  %tobool333 = icmp ne i32 %call332, 0
  br i1 %tobool333, label %if.then.334, label %if.else.343

if.then.334:                                      ; preds = %land.lhs.true.331
  %160 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %local_return_label = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %160, i32 0, i32 15
  %161 = load %struct.rtx_def*, %struct.rtx_def** %local_return_label, align 8
  %cmp335 = icmp eq %struct.rtx_def* %161, null
  br i1 %cmp335, label %if.then.337, label %if.end.340

if.then.337:                                      ; preds = %if.then.334
  %call338 = call %struct.rtx_def* @gen_label_rtx()
  %162 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %local_return_label339 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %162, i32 0, i32 15
  store %struct.rtx_def* %call338, %struct.rtx_def** %local_return_label339, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.then.337, %if.then.334
  %163 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %local_return_label341 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %163, i32 0, i32 15
  %164 = load %struct.rtx_def*, %struct.rtx_def** %local_return_label341, align 8
  %call342 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %164)
  store %struct.rtx_def* %call342, %struct.rtx_def** %pattern, align 8
  br label %if.end.348

if.else.343:                                      ; preds = %land.lhs.true.331, %sw.bb.329
  %165 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 3
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  %167 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call347 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %166, %struct.inline_remap* %167, i32 0)
  store %struct.rtx_def* %call347, %struct.rtx_def** %pattern, align 8
  br label %if.end.348

if.end.348:                                       ; preds = %if.else.343, %if.end.340
  %168 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call349 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %168)
  store %struct.rtx_def* %call349, %struct.rtx_def** %copy, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %170 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %169, %struct.inline_remap* %170)
  %171 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call350 = call i32 @any_condjump_p(%struct.rtx_def* %171)
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %land.lhs.true.352, label %if.end.366

land.lhs.true.352:                                ; preds = %if.end.348
  %172 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call353 = call i32 @onlyjump_p(%struct.rtx_def* %172)
  %tobool354 = icmp ne i32 %call353, 0
  br i1 %tobool354, label %land.lhs.true.355, label %if.end.366

land.lhs.true.355:                                ; preds = %land.lhs.true.352
  %173 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %173, i32 0, i32 20
  %174 = load %struct.rtx_def*, %struct.rtx_def** %last_pc_value, align 8
  %tobool356 = icmp ne %struct.rtx_def* %174, null
  br i1 %tobool356, label %if.then.357, label %if.end.366

if.then.357:                                      ; preds = %land.lhs.true.355
  %175 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value358 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %175, i32 0, i32 20
  %176 = load %struct.rtx_def*, %struct.rtx_def** %last_pc_value358, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp359 = icmp eq %struct.rtx_def* %176, %177
  br i1 %cmp359, label %if.then.361, label %if.else.363

if.then.361:                                      ; preds = %if.then.357
  %178 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call362 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %178)
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  br label %if.end.365

if.else.363:                                      ; preds = %if.then.357
  %call364 = call %struct.rtx_def* @emit_barrier()
  br label %if.end.365

if.end.365:                                       ; preds = %if.else.363, %if.then.361
  br label %if.end.366

if.end.366:                                       ; preds = %if.end.365, %land.lhs.true.355, %land.lhs.true.352, %if.end.348
  br label %sw.epilog

sw.bb.367:                                        ; preds = %for.body
  %179 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld368, i32 0, i64 3
  %rtx370 = bitcast %union.rtunion_def* %arrayidx369 to %struct.rtx_def**
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtx370, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %bf.load371 = load i32, i32* %181, align 8
  %bf.clear372 = and i32 %bf.load371, 65535
  %cmp373 = icmp eq i32 %bf.clear372, 141
  br i1 %cmp373, label %if.then.375, label %if.end.407

if.then.375:                                      ; preds = %sw.bb.367
  store i32 0, i32* %i, align 4
  br label %for.cond.376

for.cond.376:                                     ; preds = %for.inc, %if.then.375
  %182 = load i32, i32* %i, align 4
  %cmp377 = icmp slt i32 %182, 3
  br i1 %cmp377, label %for.body.379, label %for.end

for.body.379:                                     ; preds = %for.cond.376
  %183 = load i32, i32* %i, align 4
  %idxprom380 = sext i32 %183 to i64
  %arrayidx381 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %sequence, i32 0, i64 %idxprom380
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx381, align 8
  %184 = load i32, i32* %i, align 4
  %idxprom382 = sext i32 %184 to i64
  %185 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld383, i32 0, i64 3
  %rtx385 = bitcast %union.rtunion_def* %arrayidx384 to %struct.rtx_def**
  %186 = load %struct.rtx_def*, %struct.rtx_def** %rtx385, align 8
  %fld386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld386, i32 0, i64 %idxprom382
  %rtx388 = bitcast %union.rtunion_def* %arrayidx387 to %struct.rtx_def**
  %187 = load %struct.rtx_def*, %struct.rtx_def** %rtx388, align 8
  store %struct.rtx_def* %187, %struct.rtx_def** %seq, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %tobool389 = icmp ne %struct.rtx_def* %188, null
  br i1 %tobool389, label %if.then.390, label %if.end.394

if.then.390:                                      ; preds = %for.body.379
  call void @start_sequence()
  %189 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %190 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %static_chain_value.addr, align 8
  call void @copy_insn_list(%struct.rtx_def* %189, %struct.inline_remap* %190, %struct.rtx_def* %191)
  %call391 = call %struct.rtx_def* @get_insns()
  %192 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %192 to i64
  %arrayidx393 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %sequence, i32 0, i64 %idxprom392
  store %struct.rtx_def* %call391, %struct.rtx_def** %arrayidx393, align 8
  call void @end_sequence()
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.390, %for.body.379
  br label %for.inc

for.inc:                                          ; preds = %if.end.394
  %193 = load i32, i32* %i, align 4
  %inc = add nsw i32 %193, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.376

for.end:                                          ; preds = %for.cond.376
  %194 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 3
  %rtx397 = bitcast %union.rtunion_def* %arrayidx396 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx397, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 3
  %rtx400 = bitcast %union.rtunion_def* %arrayidx399 to %struct.rtx_def**
  %196 = load %struct.rtx_def*, %struct.rtx_def** %rtx400, align 8
  %197 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call401 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %196, %struct.inline_remap* %197, i32 0)
  store %struct.rtx_def* %call401, %struct.rtx_def** %tail_label, align 8
  %arrayidx402 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %sequence, i32 0, i64 0
  %198 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx402, align 8
  %arrayidx403 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %sequence, i32 0, i64 1
  %199 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx403, align 8
  %arrayidx404 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %sequence, i32 0, i64 2
  %200 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx404, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %tail_label, align 8
  %call405 = call %struct.rtx_def* @gen_rtx_fmt_uuuu(i32 141, i32 0, %struct.rtx_def* %198, %struct.rtx_def* %199, %struct.rtx_def* %200, %struct.rtx_def* %201)
  %call406 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %call405)
  store %struct.rtx_def* %call406, %struct.rtx_def** %copy, align 8
  br label %sw.epilog

if.end.407:                                       ; preds = %sw.bb.367
  %202 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld408 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx409 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld408, i32 0, i64 3
  %rtx410 = bitcast %union.rtunion_def* %arrayidx409 to %struct.rtx_def**
  %203 = load %struct.rtx_def*, %struct.rtx_def** %rtx410, align 8
  %204 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call411 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %203, %struct.inline_remap* %204, i32 0)
  store %struct.rtx_def* %call411, %struct.rtx_def** %pattern, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call412 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %205)
  store %struct.rtx_def* %call412, %struct.rtx_def** %copy, align 8
  %206 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load413 = load i32, i32* %207, align 8
  %bf.lshr414 = lshr i32 %bf.load413, 24
  %bf.clear415 = and i32 %bf.lshr414, 1
  %208 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %209 = bitcast %struct.rtx_def* %208 to i32*
  %bf.load416 = load i32, i32* %209, align 8
  %bf.value = and i32 %bf.clear415, 1
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear417 = and i32 %bf.load416, -16777217
  %bf.set = or i32 %bf.clear417, %bf.shl
  store i32 %bf.set, i32* %209, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load418 = load i32, i32* %211, align 8
  %bf.lshr419 = lshr i32 %bf.load418, 26
  %bf.clear420 = and i32 %bf.lshr419, 1
  %212 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load421 = load i32, i32* %213, align 8
  %bf.value422 = and i32 %bf.clear420, 1
  %bf.shl423 = shl i32 %bf.value422, 26
  %bf.clear424 = and i32 %bf.load421, -67108865
  %bf.set425 = or i32 %bf.clear424, %bf.shl423
  store i32 %bf.set425, i32* %213, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld426, i32 0, i64 7
  %rtx428 = bitcast %union.rtunion_def* %arrayidx427 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx428, align 8
  %216 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call429 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %215, %struct.inline_remap* %216, i32 0)
  %217 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld430 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx431 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld430, i32 0, i64 7
  %rtx432 = bitcast %union.rtunion_def* %arrayidx431 to %struct.rtx_def**
  store %struct.rtx_def* %call429, %struct.rtx_def** %rtx432, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %219 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %218, %struct.inline_remap* %219)
  store i32 0, i32* %i, align 4
  br label %for.cond.433

for.cond.433:                                     ; preds = %for.inc.443, %if.end.407
  %220 = load i32, i32* %i, align 4
  %cmp434 = icmp slt i32 %220, 53
  br i1 %cmp434, label %for.body.436, label %for.end.445

for.body.436:                                     ; preds = %for.cond.433
  %221 = load i32, i32* %i, align 4
  %idxprom437 = sext i32 %221 to i64
  %222 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray438 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %222, i32 0, i32 9
  %223 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray438, align 8
  %data439 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %223, i32 0, i32 4
  %const_equiv440 = bitcast %union.varray_data_tag* %data439 to [1 x %struct.const_equiv_data]*
  %arrayidx441 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv440, i32 0, i64 %idxprom437
  %rtx442 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx441, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %rtx442, align 8
  br label %for.inc.443

for.inc.443:                                      ; preds = %for.body.436
  %224 = load i32, i32* %i, align 4
  %inc444 = add nsw i32 %224, 1
  store i32 %inc444, i32* %i, align 4
  br label %for.cond.433

for.end.445:                                      ; preds = %for.cond.433
  br label %sw.epilog

sw.bb.446:                                        ; preds = %for.body
  %225 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %226 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld447 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld447, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx448 to i32*
  %227 = load i32, i32* %rtint, align 4
  %call449 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %225, i32 %227)
  %call450 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %call449)
  store %struct.rtx_def* %call450, %struct.rtx_def** %copy, align 8
  %228 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld451 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx452 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld451, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx452 to i8**
  %229 = load i8*, i8** %rtstr, align 8
  %230 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 6
  %rtstr455 = bitcast %union.rtunion_def* %arrayidx454 to i8**
  store i8* %229, i8** %rtstr455, align 8
  %231 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %231, i32 0, i32 10
  %232 = load i32, i32* %const_age, align 4
  %inc456 = add i32 %232, 1
  store i32 %inc456, i32* %const_age, align 4
  br label %sw.epilog

sw.bb.457:                                        ; preds = %for.body
  %call458 = call %struct.rtx_def* @emit_barrier()
  store %struct.rtx_def* %call458, %struct.rtx_def** %copy, align 8
  br label %sw.epilog

sw.bb.459:                                        ; preds = %for.body
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld460, i32 0, i64 4
  %rtint462 = bitcast %union.rtunion_def* %arrayidx461 to i32*
  %234 = load i32, i32* %rtint462, align 4
  %cmp463 = icmp eq i32 %234, -88
  br i1 %cmp463, label %if.then.465, label %if.end.479

if.then.465:                                      ; preds = %sw.bb.459
  %235 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 5
  %rtint468 = bitcast %union.rtunion_def* %arrayidx467 to i32*
  %237 = load i32, i32* %rtint468, align 4
  %call469 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %235, i32 %237)
  %call470 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %call469)
  store %struct.rtx_def* %call470, %struct.rtx_def** %copy, align 8
  %238 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld471, i32 0, i64 3
  %rtstr473 = bitcast %union.rtunion_def* %arrayidx472 to i8**
  %239 = load i8*, i8** %rtstr473, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld474, i32 0, i64 6
  %rtstr476 = bitcast %union.rtunion_def* %arrayidx475 to i8**
  store i8* %239, i8** %rtstr476, align 8
  %241 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age477 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %241, i32 0, i32 10
  %242 = load i32, i32* %const_age477, align 4
  %inc478 = add i32 %242, 1
  store i32 %inc478, i32* %const_age477, align 4
  br label %sw.epilog

if.end.479:                                       ; preds = %sw.bb.459
  %243 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 4
  %rtint482 = bitcast %union.rtunion_def* %arrayidx481 to i32*
  %244 = load i32, i32* %rtint482, align 4
  %cmp483 = icmp ne i32 %244, -91
  br i1 %cmp483, label %land.lhs.true.485, label %if.else.555

land.lhs.true.485:                                ; preds = %if.end.479
  %245 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld486, i32 0, i64 4
  %rtint488 = bitcast %union.rtunion_def* %arrayidx487 to i32*
  %246 = load i32, i32* %rtint488, align 4
  %cmp489 = icmp ne i32 %246, -87
  br i1 %cmp489, label %land.lhs.true.491, label %if.else.555

land.lhs.true.491:                                ; preds = %land.lhs.true.485
  %247 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld492 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx493 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld492, i32 0, i64 4
  %rtint494 = bitcast %union.rtunion_def* %arrayidx493 to i32*
  %248 = load i32, i32* %rtint494, align 4
  %cmp495 = icmp ne i32 %248, -99
  br i1 %cmp495, label %if.then.497, label %if.else.555

if.then.497:                                      ; preds = %land.lhs.true.491
  %249 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 3
  %rtstr500 = bitcast %union.rtunion_def* %arrayidx499 to i8**
  %250 = load i8*, i8** %rtstr500, align 8
  %251 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %251, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld501, i32 0, i64 4
  %rtint503 = bitcast %union.rtunion_def* %arrayidx502 to i32*
  %252 = load i32, i32* %rtint503, align 4
  %call504 = call %struct.rtx_def* @emit_note(i8* %250, i32 %252)
  store %struct.rtx_def* %call504, %struct.rtx_def** %copy, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %tobool505 = icmp ne %struct.rtx_def* %253, null
  br i1 %tobool505, label %land.lhs.true.506, label %if.else.537

land.lhs.true.506:                                ; preds = %if.then.497
  %254 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld507, i32 0, i64 4
  %rtint509 = bitcast %union.rtunion_def* %arrayidx508 to i32*
  %255 = load i32, i32* %rtint509, align 4
  %cmp510 = icmp eq i32 %255, -98
  br i1 %cmp510, label %land.lhs.true.518, label %lor.lhs.false.512

lor.lhs.false.512:                                ; preds = %land.lhs.true.506
  %256 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld513, i32 0, i64 4
  %rtint515 = bitcast %union.rtunion_def* %arrayidx514 to i32*
  %257 = load i32, i32* %rtint515, align 4
  %cmp516 = icmp eq i32 %257, -97
  br i1 %cmp516, label %land.lhs.true.518, label %if.else.537

land.lhs.true.518:                                ; preds = %lor.lhs.false.512, %land.lhs.true.506
  %258 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld519 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld519, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx520 to %union.tree_node**
  %259 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %tobool521 = icmp ne %union.tree_node* %259, null
  br i1 %tobool521, label %if.then.522, label %if.else.537

if.then.522:                                      ; preds = %land.lhs.true.518
  %260 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 3
  %rttree525 = bitcast %union.rtunion_def* %arrayidx524 to %union.tree_node**
  %261 = load %union.tree_node*, %union.tree_node** %rttree525, align 8
  %262 = bitcast %union.tree_node* %261 to i8*
  %263 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %263, i32 0, i32 3
  %264 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map, align 8
  %data526 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %264, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data526 to [1 x %union.tree_node*]*
  %arrayidx527 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 0
  %265 = bitcast %union.tree_node** %arrayidx527 to i8*
  %266 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %block_map528 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %266, i32 0, i32 3
  %267 = load %struct.varray_head_tag*, %struct.varray_head_tag** %block_map528, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %267, i32 0, i32 1
  %268 = load i64, i64* %elements_used, align 8
  %call529 = call i8* @bsearch(i8* %262, i8* %265, i64 %268, i64 8, i32 (i8*, i8*)* @find_block)
  %269 = bitcast i8* %call529 to %union.tree_node**
  store %union.tree_node** %269, %union.tree_node*** %mapped_block_p, align 8
  %270 = load %union.tree_node**, %union.tree_node*** %mapped_block_p, align 8
  %tobool530 = icmp ne %union.tree_node** %270, null
  br i1 %tobool530, label %if.else.532, label %if.then.531

if.then.531:                                      ; preds = %if.then.522
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1671, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_insn_list, i32 0, i32 0)) #5
  unreachable

if.else.532:                                      ; preds = %if.then.522
  %271 = load %union.tree_node**, %union.tree_node*** %mapped_block_p, align 8
  %272 = load %union.tree_node*, %union.tree_node** %271, align 8
  %273 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld533 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %arrayidx534 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld533, i32 0, i64 3
  %rttree535 = bitcast %union.rtunion_def* %arrayidx534 to %union.tree_node**
  store %union.tree_node* %272, %union.tree_node** %rttree535, align 8
  br label %if.end.536

if.end.536:                                       ; preds = %if.else.532
  br label %if.end.554

if.else.537:                                      ; preds = %land.lhs.true.518, %lor.lhs.false.512, %if.then.497
  %274 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %tobool538 = icmp ne %struct.rtx_def* %274, null
  br i1 %tobool538, label %land.lhs.true.539, label %if.end.553

land.lhs.true.539:                                ; preds = %if.else.537
  %275 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld540 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx541 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld540, i32 0, i64 4
  %rtint542 = bitcast %union.rtunion_def* %arrayidx541 to i32*
  %276 = load i32, i32* %rtint542, align 4
  %cmp543 = icmp eq i32 %276, -79
  br i1 %cmp543, label %if.then.545, label %if.end.553

if.then.545:                                      ; preds = %land.lhs.true.539
  %277 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld546 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx547 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld546, i32 0, i64 3
  %rtx548 = bitcast %union.rtunion_def* %arrayidx547 to %struct.rtx_def**
  %278 = load %struct.rtx_def*, %struct.rtx_def** %rtx548, align 8
  %279 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call549 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %278, %struct.inline_remap* %279, i32 0)
  %280 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 3
  %rtx552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtx_def**
  store %struct.rtx_def* %call549, %struct.rtx_def** %rtx552, align 8
  br label %if.end.553

if.end.553:                                       ; preds = %if.then.545, %land.lhs.true.539, %if.else.537
  br label %if.end.554

if.end.554:                                       ; preds = %if.end.553, %if.end.536
  br label %if.end.556

if.else.555:                                      ; preds = %land.lhs.true.491, %land.lhs.true.485, %if.end.479
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  br label %if.end.556

if.end.556:                                       ; preds = %if.else.555, %if.end.554
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 1686, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_insn_list, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %if.end.556, %if.then.465, %sw.bb.457, %sw.bb.446, %for.end.445, %for.end, %if.end.366, %if.end.328, %if.then.216, %if.then.158, %if.else.130, %if.then
  %281 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %tobool557 = icmp ne %struct.rtx_def* %281, null
  br i1 %tobool557, label %if.then.558, label %if.end.562

if.then.558:                                      ; preds = %sw.epilog
  %282 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %283 = bitcast %struct.rtx_def* %282 to i32*
  %bf.load559 = load i32, i32* %283, align 8
  %bf.clear560 = and i32 %bf.load559, -1073741825
  %bf.set561 = or i32 %bf.clear560, 1073741824
  store i32 %bf.set561, i32* %283, align 8
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.558, %sw.epilog
  %284 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld563 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %285, i32 0, i32 1
  %arrayidx564 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld563, i32 0, i64 0
  %rtint565 = bitcast %union.rtunion_def* %arrayidx564 to i32*
  %286 = load i32, i32* %rtint565, align 4
  %idxprom566 = sext i32 %286 to i64
  %287 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %287, i32 0, i32 6
  %288 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx567 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %288, i64 %idxprom566
  store %struct.rtx_def* %284, %struct.rtx_def** %arrayidx567, align 8
  br label %for.inc.568

for.inc.568:                                      ; preds = %if.end.562
  %289 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld569 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx570 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld569, i32 0, i64 2
  %rtx571 = bitcast %union.rtunion_def* %arrayidx570 to %struct.rtx_def**
  %290 = load %struct.rtx_def*, %struct.rtx_def** %rtx571, align 8
  store %struct.rtx_def* %290, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.572:                                      ; preds = %for.cond
  ret void
}

declare i32 @duplicate_eh_regions(%struct.function*, %struct.inline_remap*) #1

; Function Attrs: nounwind uwtable
define internal void @copy_insn_notes(%struct.rtx_def* %insns, %struct.inline_remap* %map, i32 %eh_region_offset) #0 {
entry:
  %insns.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %eh_region_offset.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store i32 %eh_region_offset, i32* %eh_region_offset.addr, align 4
  %0 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %0, i32 0, i32 10
  %1 = load i32, i32* %const_age, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %const_age, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end.110

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc.106

if.end:                                           ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %8 = load i32, i32* %rtint, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %9, i32 0, i32 6
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %10, i64 %idxprom3
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %new_insn, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %tobool5 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  br label %for.inc.106

if.end.7:                                         ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool10 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool10, label %if.then.11, label %if.end.56

if.then.11:                                       ; preds = %if.end.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 6
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %17 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %16, %struct.inline_remap* %17, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %18 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %note, %struct.rtx_def* null, %struct.inline_remap* %18, i32 0)
  %call15 = call i32 @apply_change_group()
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 6
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx18, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.11
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool20 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %next, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load25 = load i32, i32* %25, align 8
  %bf.lshr = lshr i32 %bf.load25, 16
  %bf.clear26 = and i32 %bf.lshr, 255
  %cmp27 = icmp eq i32 %bf.clear26, 13
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %for.body.21
  %26 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %26, %struct.rtx_def* %27)
  br label %if.end.55

if.else:                                          ; preds = %for.body.21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load30 = load i32, i32* %29, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 23
  br i1 %cmp33, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %if.else
  %30 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx39 to i64*
  %32 = load i64, i64* %rtwint, align 8
  %cmp40 = icmp sgt i64 %32, 0
  br i1 %cmp40, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %land.lhs.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtwint48 = bitcast %union.rtunion_def* %arrayidx47 to i64*
  %35 = load i64, i64* %rtwint48, align 8
  %36 = load i32, i32* %eh_region_offset.addr, align 4
  %conv49 = sext i32 %36 to i64
  %add = add nsw i64 %35, %conv49
  %call50 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add)
  %37 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  store %struct.rtx_def* %call50, %struct.rtx_def** %rtx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.42, %land.lhs.true, %if.else
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %38 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %note, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %if.end.56

if.end.56:                                        ; preds = %for.end, %if.end.7
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load57 = load i32, i32* %40, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 34
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.84

land.lhs.true.61:                                 ; preds = %if.end.56
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 3
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load65 = load i32, i32* %43, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 141
  br i1 %cmp67, label %if.then.69, label %if.end.84

if.then.69:                                       ; preds = %land.lhs.true.61
  store i32 0, i32* %i, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.81, %if.then.69
  %44 = load i32, i32* %i, align 4
  %cmp71 = icmp slt i32 %44, 3
  br i1 %cmp71, label %for.body.73, label %for.end.83

for.body.73:                                      ; preds = %for.cond.70
  %45 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 3
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 %idxprom74
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %49 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %50 = load i32, i32* %eh_region_offset.addr, align 4
  call void @copy_insn_notes(%struct.rtx_def* %48, %struct.inline_remap* %49, i32 %50)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.73
  %51 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %51, 1
  store i32 %inc82, i32* %i, align 4
  br label %for.cond.70

for.end.83:                                       ; preds = %for.cond.70
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %land.lhs.true.61, %if.end.56
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load85 = load i32, i32* %53, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 33
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.105

land.lhs.true.89:                                 ; preds = %if.end.84
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 3
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load93 = load i32, i32* %56, align 8
  %bf.clear94 = and i32 %bf.load93, 65535
  %cmp95 = icmp eq i32 %bf.clear94, 53
  br i1 %cmp95, label %if.then.97, label %if.end.105

if.then.97:                                       ; preds = %land.lhs.true.89
  %57 = load i32, i32* %eh_region_offset.addr, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 3
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %60 = load i32, i32* %rtint103, align 4
  %add104 = add nsw i32 %60, %57
  store i32 %add104, i32* %rtint103, align 4
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.97, %land.lhs.true.89, %if.end.84
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105, %if.then.6, %if.then
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 2
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.110:                                      ; preds = %for.cond
  ret void
}

declare void @emit_stack_restore(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @insert_block(%union.tree_node*) #1

declare void @expand_end_bindings(%union.tree_node*, i32, i32) #1

declare %struct.rtx_def* @emit_line_note(i8*, i32) #1

declare %struct.rtx_def* @copy_blkmode_from_reg(%struct.rtx_def*, %struct.rtx_def*, %union.tree_node*) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @memory_address(i32, %struct.rtx_def*) #1

declare void @set_mem_attributes(%struct.rtx_def*, %union.tree_node*, i32) #1

declare i64 @get_func_frame_size(%struct.function*) #1

declare void @start_sequence() #1

declare %struct.rtx_def* @assign_stack_temp(i32, i64, i32) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_eit(i32, i32, %struct.rtx_def*, i32, %union.tree_node*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare i32 @get_first_label_num() #1

declare %struct.rtx_def* @get_pool_constant_for_function(%struct.function*, %struct.rtx_def*) #1

declare i32 @get_pool_mode_for_function(%struct.function*, %struct.rtx_def*) #1

declare %struct.rtx_def* @force_const_mem(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8, i32) #1

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

declare %struct.rtx_def* @rtx_alloc(i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

declare %struct.rtvec_def* @rtvec_alloc(i32) #1

; Function Attrs: nounwind uwtable
define void @try_constants(%struct.rtx_def* %insn, %struct.inline_remap* %map) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %i = alloca i32, align 4
  %regno = alloca i32, align 4
  %is_global = alloca i32, align 4
  %p = alloca %struct.const_equiv_data*, align 8
  %is_global61 = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  %0 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %num_sets = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %0, i32 0, i32 18
  store i32 0, i32* %num_sets, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %rtx, %struct.rtx_def* %2, %struct.inline_remap* %3, i32 1)
  %call = call i32 @apply_change_group()
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @subst_constants(%struct.rtx_def** %rtx3, %struct.rtx_def* %5, %struct.inline_remap* %6, i32 0)
  %call4 = call i32 @apply_change_group()
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  call void @note_stores(%struct.rtx_def* %8, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_stores, i8* null)
  %9 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %9, i32 0, i32 20
  store %struct.rtx_def* null, %struct.rtx_def** %last_pc_value, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %num_sets8 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %11, i32 0, i32 18
  %12 = load i32, i32* %num_sets8, align 4
  %cmp = icmp slt i32 %10, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %14, i32 0, i32 19
  %arrayidx9 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets, i32 0, i64 %idxprom
  %dest = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx9, i32 0, i32 0
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 61
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets12 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %18, i32 0, i32 19
  %arrayidx13 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets12, i32 0, i64 %idxprom11
  %dest14 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx13, i32 0, i32 0
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %20 = load i32, i32* %rtuint, align 4
  store i32 %20, i32* %regno, align 4
  %21 = load i32, i32* %regno, align 4
  %conv = sext i32 %21 to i64
  %22 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %22, i32 0, i32 9
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 0
  %24 = load i64, i64* %num_elements, align 8
  %cmp17 = icmp uge i64 %conv, %24
  br i1 %cmp17, label %if.then.19, label %if.end.29

if.then.19:                                       ; preds = %if.then
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %26 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray20 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %26, i32 0, i32 9
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray20, align 8
  %cmp21 = icmp eq %struct.varray_head_tag* %25, %27
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %is_global, align 4
  %28 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray23 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %28, i32 0, i32 9
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray23, align 8
  %30 = load i32, i32* %regno, align 4
  %add = add nsw i32 %30, 1
  %conv24 = sext i32 %add to i64
  %call25 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %29, i64 %conv24)
  %31 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray26 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %31, i32 0, i32 9
  store %struct.varray_head_tag* %call25, %struct.varray_head_tag** %const_equiv_varray26, align 8
  %32 = load i32, i32* %is_global, align 4
  %tobool = icmp ne i32 %32, 0
  br i1 %tobool, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then.19
  %33 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray28 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %33, i32 0, i32 9
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray28, align 8
  store %struct.varray_head_tag* %34, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then.19
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  %35 = load i32, i32* %regno, align 4
  %idxprom30 = sext i32 %35 to i64
  %36 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray31 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %36, i32 0, i32 9
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray31, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx32 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom30
  %rtx33 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx32, i32 0, i32 0
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %cmp34 = icmp eq %struct.rtx_def* %38, null
  br i1 %cmp34, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.29
  %39 = load i32, i32* %regno, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray37 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %40, i32 0, i32 9
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray37, align 8
  %data38 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %41, i32 0, i32 4
  %const_equiv39 = bitcast %union.varray_data_tag* %data38 to [1 x %struct.const_equiv_data]*
  %arrayidx40 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv39, i32 0, i64 %idxprom36
  %rtx41 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx40, i32 0, i32 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %43 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %43 to i64
  %44 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets43 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %44, i32 0, i32 19
  %arrayidx44 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets43, i32 0, i64 %idxprom42
  %equiv = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx44, i32 0, i32 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %equiv, align 8
  %call45 = call i32 @rtx_equal_p(%struct.rtx_def* %42, %struct.rtx_def* %45)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.99, label %if.then.47

if.then.47:                                       ; preds = %lor.lhs.false, %if.end.29
  %46 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %46 to i64
  %47 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets49 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %47, i32 0, i32 19
  %arrayidx50 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets49, i32 0, i64 %idxprom48
  %dest51 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx50, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtuint54 = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %49 = load i32, i32* %rtuint54, align 4
  %conv55 = zext i32 %49 to i64
  %50 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray56 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %50, i32 0, i32 9
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray56, align 8
  %num_elements57 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 0
  %52 = load i64, i64* %num_elements57, align 8
  %cmp58 = icmp uge i64 %conv55, %52
  br i1 %cmp58, label %if.then.60, label %if.end.81

if.then.60:                                       ; preds = %if.then.47
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %54 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray62 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %54, i32 0, i32 9
  %55 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray62, align 8
  %cmp63 = icmp eq %struct.varray_head_tag* %53, %55
  %conv64 = zext i1 %cmp63 to i32
  store i32 %conv64, i32* %is_global61, align 4
  %56 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray65 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %56, i32 0, i32 9
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray65, align 8
  %58 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %58 to i64
  %59 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets67 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %59, i32 0, i32 19
  %arrayidx68 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets67, i32 0, i64 %idxprom66
  %dest69 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx68, i32 0, i32 0
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dest69, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint72 = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %61 = load i32, i32* %rtuint72, align 4
  %add73 = add i32 %61, 1
  %conv74 = zext i32 %add73 to i64
  %call75 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %57, i64 %conv74)
  %62 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray76 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %62, i32 0, i32 9
  store %struct.varray_head_tag* %call75, %struct.varray_head_tag** %const_equiv_varray76, align 8
  %63 = load i32, i32* %is_global61, align 4
  %tobool77 = icmp ne i32 %63, 0
  br i1 %tobool77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.60
  %64 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray79 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %64, i32 0, i32 9
  %65 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray79, align 8
  store %struct.varray_head_tag* %65, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.60
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then.47
  %66 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %66 to i64
  %67 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets83 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %67, i32 0, i32 19
  %arrayidx84 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets83, i32 0, i64 %idxprom82
  %dest85 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx84, i32 0, i32 0
  %68 = load %struct.rtx_def*, %struct.rtx_def** %dest85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %69 = load i32, i32* %rtuint88, align 4
  %idxprom89 = zext i32 %69 to i64
  %70 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray90 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %70, i32 0, i32 9
  %71 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray90, align 8
  %data91 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %71, i32 0, i32 4
  %const_equiv92 = bitcast %union.varray_data_tag* %data91 to [1 x %struct.const_equiv_data]*
  %arrayidx93 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv92, i32 0, i64 %idxprom89
  store %struct.const_equiv_data* %arrayidx93, %struct.const_equiv_data** %p, align 8
  %72 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %72 to i64
  %73 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets95 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %73, i32 0, i32 19
  %arrayidx96 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets95, i32 0, i64 %idxprom94
  %equiv97 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx96, i32 0, i32 1
  %74 = load %struct.rtx_def*, %struct.rtx_def** %equiv97, align 8
  %75 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %rtx98 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %75, i32 0, i32 0
  store %struct.rtx_def* %74, %struct.rtx_def** %rtx98, align 8
  %76 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %76, i32 0, i32 10
  %77 = load i32, i32* %const_age, align 4
  %78 = load %struct.const_equiv_data*, %struct.const_equiv_data** %p, align 8
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %78, i32 0, i32 1
  store i32 %77, i32* %age, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.81, %lor.lhs.false
  br label %if.end.113

if.else:                                          ; preds = %for.body
  %79 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %79 to i64
  %80 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets101 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %80, i32 0, i32 19
  %arrayidx102 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets101, i32 0, i64 %idxprom100
  %dest103 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx102, i32 0, i32 0
  %81 = load %struct.rtx_def*, %struct.rtx_def** %dest103, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp104 = icmp eq %struct.rtx_def* %81, %82
  br i1 %cmp104, label %if.then.106, label %if.end.112

if.then.106:                                      ; preds = %if.else
  %83 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %83 to i64
  %84 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %equiv_sets108 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %84, i32 0, i32 19
  %arrayidx109 = getelementptr inbounds [30 x %struct.equiv_table], [30 x %struct.equiv_table]* %equiv_sets108, i32 0, i64 %idxprom107
  %equiv110 = getelementptr inbounds %struct.equiv_table, %struct.equiv_table* %arrayidx109, i32 0, i32 1
  %85 = load %struct.rtx_def*, %struct.rtx_def** %equiv110, align 8
  %86 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value111 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %86, i32 0, i32 20
  store %struct.rtx_def* %85, %struct.rtx_def** %last_pc_value111, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.106, %if.else
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.99
  br label %for.inc

for.inc:                                          ; preds = %if.end.113
  %87 = load i32, i32* %i, align 4
  %inc = add nsw i32 %87, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_stores(%struct.rtx_def* %dest, %struct.rtx_def* %x, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %mode = alloca i32, align 4
  %uregno = alloca i32, align 4
  %last_reg = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 -1, i32* %regno, align 4
  store i32 0, i32* %mode, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode, align 4
  br label %if.end.45

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 63
  br i1 %cmp5, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 61
  br i1 %cmp10, label %if.then.11, label %if.end.44

if.then.11:                                       ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtuint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %13 = load i32, i32* %rtuint17, align 4
  store i32 %13, i32* %regno, align 4
  %14 = load i32, i32* %regno, align 4
  %cmp18 = icmp slt i32 %14, 53
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then.11
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtuint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %17 = load i32, i32* %rtuint25, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load29 = load i32, i32* %20, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %21 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtuint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %22 = load i32, i32* %rtuint34, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load35 = load i32, i32* %24, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 16
  %bf.clear37 = and i32 %bf.lshr36, 255
  %call = call i32 @subreg_regno_offset(i32 %17, i32 %bf.clear31, i32 %22, i32 %bf.clear37)
  %25 = load i32, i32* %regno, align 4
  %add = add i32 %25, %call
  store i32 %add, i32* %regno, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then.11
  %26 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load41 = load i32, i32* %28, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 16
  %bf.clear43 = and i32 %bf.lshr42, 255
  store i32 %bf.clear43, i32* %mode, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.end, %land.lhs.true, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  %29 = load i32, i32* %regno, align 4
  %cmp46 = icmp sge i32 %29, 0
  br i1 %cmp46, label %if.then.47, label %if.end.116

if.then.47:                                       ; preds = %if.end.45
  %30 = load i32, i32* %regno, align 4
  store i32 %30, i32* %uregno, align 4
  %31 = load i32, i32* %uregno, align 4
  %cmp48 = icmp uge i32 %31, 53
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.47
  %32 = load i32, i32* %uregno, align 4
  br label %cond.end.96

cond.false:                                       ; preds = %if.then.47
  %33 = load i32, i32* %uregno, align 4
  %34 = load i32, i32* %uregno, align 4
  %cmp49 = icmp uge i32 %34, 8
  br i1 %cmp49, label %land.lhs.true.50, label %lor.lhs.false

land.lhs.true.50:                                 ; preds = %cond.false
  %35 = load i32, i32* %uregno, align 4
  %cmp51 = icmp ule i32 %35, 15
  br i1 %cmp51, label %cond.true.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.50, %cond.false
  %36 = load i32, i32* %uregno, align 4
  %cmp52 = icmp uge i32 %36, 21
  br i1 %cmp52, label %land.lhs.true.53, label %lor.lhs.false.55

land.lhs.true.53:                                 ; preds = %lor.lhs.false
  %37 = load i32, i32* %uregno, align 4
  %cmp54 = icmp ule i32 %37, 28
  br i1 %cmp54, label %cond.true.63, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53, %lor.lhs.false
  %38 = load i32, i32* %uregno, align 4
  %cmp56 = icmp uge i32 %38, 45
  br i1 %cmp56, label %land.lhs.true.57, label %lor.lhs.false.59

land.lhs.true.57:                                 ; preds = %lor.lhs.false.55
  %39 = load i32, i32* %uregno, align 4
  %cmp58 = icmp ule i32 %39, 52
  br i1 %cmp58, label %cond.true.63, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.57, %lor.lhs.false.55
  %40 = load i32, i32* %uregno, align 4
  %cmp60 = icmp uge i32 %40, 29
  br i1 %cmp60, label %land.lhs.true.61, label %cond.false.69

land.lhs.true.61:                                 ; preds = %lor.lhs.false.59
  %41 = load i32, i32* %uregno, align 4
  %cmp62 = icmp ule i32 %41, 36
  br i1 %cmp62, label %cond.true.63, label %cond.false.69

cond.true.63:                                     ; preds = %land.lhs.true.61, %land.lhs.true.57, %land.lhs.true.53, %land.lhs.true.50
  %42 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx64 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %43 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %43, 5
  br i1 %cmp65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.63
  %44 = load i32, i32* %mode, align 4
  %idxprom66 = sext i32 %44 to i64
  %arrayidx67 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom66
  %45 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %45, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.63
  %46 = phi i1 [ true, %cond.true.63 ], [ %cmp68, %lor.rhs ]
  %cond = select i1 %46, i32 2, i32 1
  br label %cond.end.92

cond.false.69:                                    ; preds = %land.lhs.true.61, %lor.lhs.false.59
  %47 = load i32, i32* %mode, align 4
  %cmp70 = icmp eq i32 %47, 18
  br i1 %cmp70, label %cond.true.71, label %cond.false.73

cond.true.71:                                     ; preds = %cond.false.69
  %48 = load i32, i32* @target_flags, align 4
  %and = and i32 %48, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond72 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.90

cond.false.73:                                    ; preds = %cond.false.69
  %49 = load i32, i32* %mode, align 4
  %cmp74 = icmp eq i32 %49, 24
  br i1 %cmp74, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %cond.false.73
  %50 = load i32, i32* @target_flags, align 4
  %and76 = and i32 %50, 33554432
  %tobool77 = icmp ne i32 %and76, 0
  %cond78 = select i1 %tobool77, i32 4, i32 6
  br label %cond.end

cond.false.79:                                    ; preds = %cond.false.73
  %51 = load i32, i32* %mode, align 4
  %idxprom80 = sext i32 %51 to i64
  %arrayidx81 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom80
  %52 = load i8, i8* %arrayidx81, align 1
  %conv = zext i8 %52 to i32
  %53 = load i32, i32* @target_flags, align 4
  %and82 = and i32 %53, 33554432
  %tobool83 = icmp ne i32 %and82, 0
  %cond84 = select i1 %tobool83, i32 8, i32 4
  %add85 = add nsw i32 %conv, %cond84
  %sub = sub nsw i32 %add85, 1
  %54 = load i32, i32* @target_flags, align 4
  %and86 = and i32 %54, 33554432
  %tobool87 = icmp ne i32 %and86, 0
  %cond88 = select i1 %tobool87, i32 8, i32 4
  %div = sdiv i32 %sub, %cond88
  br label %cond.end

cond.end:                                         ; preds = %cond.false.79, %cond.true.75
  %cond89 = phi i32 [ %cond78, %cond.true.75 ], [ %div, %cond.false.79 ]
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end, %cond.true.71
  %cond91 = phi i32 [ %cond72, %cond.true.71 ], [ %cond89, %cond.end ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %lor.end
  %cond93 = phi i32 [ %cond, %lor.end ], [ %cond91, %cond.end.90 ]
  %add94 = add i32 %33, %cond93
  %sub95 = sub i32 %add94, 1
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.end.92, %cond.true
  %cond97 = phi i32 [ %32, %cond.true ], [ %sub95, %cond.end.92 ]
  store i32 %cond97, i32* %last_reg, align 4
  %55 = load i32, i32* %uregno, align 4
  %cmp98 = icmp ne i32 %55, 53
  br i1 %cmp98, label %land.lhs.true.100, label %if.end.115

land.lhs.true.100:                                ; preds = %cond.end.96
  %56 = load i32, i32* %uregno, align 4
  %cmp101 = icmp ne i32 %56, 54
  br i1 %cmp101, label %if.then.103, label %if.end.115

if.then.103:                                      ; preds = %land.lhs.true.100
  %57 = load i32, i32* %uregno, align 4
  store i32 %57, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.103
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %last_reg, align 4
  %cmp104 = icmp ule i32 %58, %59
  br i1 %cmp104, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load i32, i32* %i, align 4
  %conv106 = zext i32 %60 to i64
  %61 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %61, i32 0, i32 0
  %62 = load i64, i64* %num_elements, align 8
  %cmp107 = icmp ult i64 %conv106, %62
  br i1 %cmp107, label %if.then.109, label %if.end.114

if.then.109:                                      ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %idxprom110 = zext i32 %63 to i64
  %64 = load %struct.varray_head_tag*, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %data111 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %64, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data111 to [1 x %struct.const_equiv_data]*
  %arrayidx112 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom110
  %rtx113 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx112, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %rtx113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.109, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.114
  %65 = load i32, i32* %i, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.115

if.end.115:                                       ; preds = %for.end, %land.lhs.true.100, %cond.end.96
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.45
  ret void
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @set_decl_origin_self(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 13
  %1 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %abstract_origin3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 13
  store %union.tree_node* %2, %union.tree_node** %abstract_origin3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp eq i32 %bf.clear, 30
  br i1 %cmp4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %if.then
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 10
  %6 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %6, %union.tree_node** %arg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %tobool = icmp ne %union.tree_node* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %9 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl7 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %abstract_origin8 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl7, i32 0, i32 13
  store %union.tree_node* %8, %union.tree_node** %abstract_origin8, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common9 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %11, %union.tree_node** %arg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl10 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 12
  %13 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp11 = icmp ne %union.tree_node* %13, null
  br i1 %cmp11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl12 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %initial13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 12
  %15 = load %union.tree_node*, %union.tree_node** %initial13, align 8
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp14 = icmp ne %union.tree_node* %15, %16
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl16 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %initial17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 12
  %18 = load %union.tree_node*, %union.tree_node** %initial17, align 8
  call void @set_block_origin_self(%union.tree_node* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.15, %land.lhs.true, %for.end
  br label %if.end.18

if.end.18:                                        ; preds = %if.end, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_block_origin_self(%union.tree_node* %stmt) #0 {
entry:
  %stmt.addr = alloca %union.tree_node*, align 8
  %local_decl = alloca %union.tree_node*, align 8
  %subblock = alloca %union.tree_node*, align 8
  store %union.tree_node* %stmt, %union.tree_node** %stmt.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block = bitcast %union.tree_node* %0 to %struct.tree_block*
  %abstract_origin = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 5
  %1 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %cmp = icmp eq %union.tree_node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block1 = bitcast %union.tree_node* %3 to %struct.tree_block*
  %abstract_origin2 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1, i32 0, i32 5
  store %union.tree_node* %2, %union.tree_node** %abstract_origin2, align 8
  %4 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block3 = bitcast %union.tree_node* %4 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block3, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %5, %union.tree_node** %local_decl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  %cmp4 = icmp ne %union.tree_node* %6, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  call void @set_decl_origin_self(%union.tree_node* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %9 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %9, %union.tree_node** %local_decl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block5 = bitcast %union.tree_node* %10 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block5, i32 0, i32 3
  %11 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %11, %union.tree_node** %subblock, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.9, %for.end
  %12 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %cmp7 = icmp ne %union.tree_node* %12, null
  br i1 %cmp7, label %for.body.8, label %for.end.12

for.body.8:                                       ; preds = %for.cond.6
  %13 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  call void @set_block_origin_self(%union.tree_node* %13)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.8
  %14 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %common10 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %chain11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %chain11, align 8
  store %union.tree_node* %15, %union.tree_node** %subblock, align 8
  br label %for.cond.6

for.end.12:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.12, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_decl_abstract_flags(%union.tree_node* %decl, i32 %setting) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %setting.addr = alloca i32, align 4
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %setting, i32* %setting.addr, align 4
  %0 = load i32, i32* %setting.addr, align 4
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %abstract_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 5
  %2 = bitcast i48* %abstract_flag to i64*
  %3 = zext i32 %0 to i64
  %bf.load = load i64, i64* %2, align 8
  %bf.value = and i64 %3, 1
  %bf.shl = shl i64 %bf.value, 15
  %bf.clear = and i64 %bf.load, -32769
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, i64* %2, align 8
  %bf.result.cast = trunc i64 %bf.value to i32
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  %cmp = icmp eq i32 %bf.clear3, 30
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl4 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 10
  %6 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %6, %union.tree_node** %arg, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %tobool = icmp ne %union.tree_node* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %setting.addr, align 4
  %9 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %decl5 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %abstract_flag6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 5
  %10 = bitcast i48* %abstract_flag6 to i64*
  %11 = zext i32 %8 to i64
  %bf.load7 = load i64, i64* %10, align 8
  %bf.value8 = and i64 %11, 1
  %bf.shl9 = shl i64 %bf.value8, 15
  %bf.clear10 = and i64 %bf.load7, -32769
  %bf.set11 = or i64 %bf.clear10, %bf.shl9
  store i64 %bf.set11, i64* %10, align 8
  %bf.result.cast12 = trunc i64 %bf.value8 to i32
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common13 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %13, %union.tree_node** %arg, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl14 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 12
  %15 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp15 = icmp ne %union.tree_node* %15, null
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %16 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl16 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %initial17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 12
  %17 = load %union.tree_node*, %union.tree_node** %initial17, align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp18 = icmp ne %union.tree_node* %17, %18
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true
  %19 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl20 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %initial21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 12
  %20 = load %union.tree_node*, %union.tree_node** %initial21, align 8
  %21 = load i32, i32* %setting.addr, align 4
  call void @set_block_abstract_flags(%union.tree_node* %20, i32 %21)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true, %for.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_block_abstract_flags(%union.tree_node* %stmt, i32 %setting) #0 {
entry:
  %stmt.addr = alloca %union.tree_node*, align 8
  %setting.addr = alloca i32, align 4
  %local_decl = alloca %union.tree_node*, align 8
  %subblock = alloca %union.tree_node*, align 8
  store %union.tree_node* %stmt, %union.tree_node** %stmt.addr, align 8
  store i32 %setting, i32* %setting.addr, align 4
  %0 = load i32, i32* %setting.addr, align 4
  %1 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block = bitcast %union.tree_node* %1 to %struct.tree_block*
  %abstract_flag = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 1
  %bf.load = load i32, i32* %abstract_flag, align 8
  %bf.value = and i32 %0, 1
  %bf.shl = shl i32 %bf.value, 1
  %bf.clear = and i32 %bf.load, -3
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %abstract_flag, align 8
  %2 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block1 = bitcast %union.tree_node* %2 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block1, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %3, %union.tree_node** %local_decl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  %cmp = icmp ne %union.tree_node* %4, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  %6 = load i32, i32* %setting.addr, align 4
  call void @set_decl_abstract_flags(%union.tree_node* %5, i32 %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %local_decl, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %8, %union.tree_node** %local_decl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %union.tree_node*, %union.tree_node** %stmt.addr, align 8
  %block2 = bitcast %union.tree_node* %9 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block2, i32 0, i32 3
  %10 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %10, %union.tree_node** %subblock, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.6, %for.end
  %11 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %cmp4 = icmp ne %union.tree_node* %11, null
  br i1 %cmp4, label %for.body.5, label %for.end.9

for.body.5:                                       ; preds = %for.cond.3
  %12 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %13 = load i32, i32* %setting.addr, align 4
  call void @set_block_abstract_flags(%union.tree_node* %12, i32 %13)
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.5
  %14 = load %union.tree_node*, %union.tree_node** %subblock, align 8
  %common7 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %chain8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 0
  %15 = load %union.tree_node*, %union.tree_node** %chain8, align 8
  store %union.tree_node* %15, %union.tree_node** %subblock, align 8
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_inline_function(%union.tree_node* %fndecl) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %old_cfun = alloca %struct.function*, align 8
  %old_write_symbols = alloca i32, align 4
  %old_debug_hooks = alloca %struct.gcc_debug_hooks*, align 8
  %f = alloca %struct.function*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %0, %struct.function** %old_cfun, align 8
  %1 = load i32, i32* @write_symbols, align 4
  store i32 %1, i32* %old_write_symbols, align 4
  %2 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  store %struct.gcc_debug_hooks* %2, %struct.gcc_debug_hooks** %old_debug_hooks, align 8
  %3 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 19
  %f1 = bitcast %union.anon.1* %u2 to %struct.function**
  %4 = load %struct.function*, %struct.function** %f1, align 8
  store %struct.function* %4, %struct.function** %f, align 8
  %5 = load %struct.function*, %struct.function** %f, align 8
  store %struct.function* %5, %struct.function** @cfun, align 8
  %6 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  store %union.tree_node* %6, %union.tree_node** @current_function_decl, align 8
  call void @clear_emit_caches()
  %7 = load %struct.function*, %struct.function** %f, align 8
  %inl_max_label_num = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 49
  %8 = load i32, i32* %inl_max_label_num, align 4
  call void @set_new_last_label_num(i32 %8)
  %9 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl2 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 5
  %10 = bitcast i48* %defer_output to i64*
  %bf.load = load i64, i64* %10, align 8
  %bf.clear = and i64 %bf.load, -262145
  store i64 %bf.clear, i64* %10, align 8
  %11 = load %struct.function*, %struct.function** %f, align 8
  %no_debugging_symbols = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 45
  %12 = load i32, i32* %no_debugging_symbols, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* @write_symbols, align 4
  store %struct.gcc_debug_hooks* @do_nothing_debug_hooks, %struct.gcc_debug_hooks** @debug_hooks, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  call void @rest_of_compilation(%union.tree_node* %13)
  %14 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl3 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 5
  %15 = bitcast i48* %inline_flag to i64*
  %bf.load4 = load i64, i64* %15, align 8
  %bf.clear5 = and i64 %bf.load4, -2049
  store i64 %bf.clear5, i64* %15, align 8
  %16 = load %struct.function*, %struct.function** %old_cfun, align 8
  store %struct.function* %16, %struct.function** @cfun, align 8
  %17 = load %struct.function*, %struct.function** %old_cfun, align 8
  %tobool6 = icmp ne %struct.function* %17, null
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %18 = load %struct.function*, %struct.function** %old_cfun, align 8
  %decl7 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 6
  %19 = load %union.tree_node*, %union.tree_node** %decl7, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %19, %cond.true ], [ null, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** @current_function_decl, align 8
  %20 = load i32, i32* %old_write_symbols, align 4
  store i32 %20, i32* @write_symbols, align 4
  %21 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** %old_debug_hooks, align 8
  store %struct.gcc_debug_hooks* %21, %struct.gcc_debug_hooks** @debug_hooks, align 8
  ret void
}

declare void @clear_emit_caches() #1

declare void @set_new_last_label_num(i32) #1

declare void @rest_of_compilation(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_hard_reg_initial_reg(%struct.function* %fun, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fun.addr = alloca %struct.function*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.initial_value_struct*, align 8
  %i = alloca i32, align 4
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %num_entries, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %7, i32 0, i32 2
  %8 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %idxprom
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %9, %struct.rtx_def* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries4 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %12, i32 0, i32 2
  %13 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries4, align 8
  %arrayidx5 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %13, i64 %idxprom3
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx5, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @has_func_hard_reg_initial_val(%struct.function* %fun, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fun.addr = alloca %struct.function*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.initial_value_struct*, align 8
  %i = alloca i32, align 4
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %num_entries, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %7, i32 0, i32 2
  %8 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %idxprom
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %9, %struct.rtx_def* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries4 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %12, i32 0, i32 2
  %13 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries4, align 8
  %arrayidx5 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %13, i64 %idxprom3
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx5, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.6
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_func_hard_reg_initial_val(%struct.function* %fun, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %fun.addr = alloca %struct.function*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.initial_value_struct*, align 8
  %rv = alloca %struct.rtx_def*, align 8
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.function*, %struct.function** %fun.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call %struct.rtx_def* @has_func_hard_reg_initial_val(%struct.function* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %rv, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rv, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rv, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %6, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %if.end
  %call2 = call noalias i8* @xmalloc(i64 16)
  %7 = bitcast i8* %call2 to %struct.initial_value_struct*
  %8 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals3 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 17
  store %struct.initial_value_struct* %7, %struct.initial_value_struct** %hard_reg_initial_vals3, align 8
  %9 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals4 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 17
  %10 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals4, align 8
  store %struct.initial_value_struct* %10, %struct.initial_value_struct** %ivs, align 8
  %11 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %11, i32 0, i32 0
  store i32 0, i32* %num_entries, align 4
  %12 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %max_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %12, i32 0, i32 1
  store i32 5, i32* %max_entries, align 4
  %call5 = call noalias i8* @xmalloc(i64 80)
  %13 = bitcast i8* %call5 to %struct.initial_value_pair*
  %14 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %14, i32 0, i32 2
  store %struct.initial_value_pair* %13, %struct.initial_value_pair** %entries, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.1, %if.end
  %15 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries7 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %15, i32 0, i32 0
  %16 = load i32, i32* %num_entries7, align 4
  %17 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %max_entries8 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %17, i32 0, i32 1
  %18 = load i32, i32* %max_entries8, align 4
  %cmp9 = icmp sge i32 %16, %18
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.6
  %19 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %max_entries11 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %19, i32 0, i32 1
  %20 = load i32, i32* %max_entries11, align 4
  %add = add nsw i32 %20, 5
  store i32 %add, i32* %max_entries11, align 4
  %21 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries12 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %21, i32 0, i32 2
  %22 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries12, align 8
  %23 = bitcast %struct.initial_value_pair* %22 to i8*
  %24 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %max_entries13 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %24, i32 0, i32 1
  %25 = load i32, i32* %max_entries13, align 4
  %conv = sext i32 %25 to i64
  %mul = mul i64 %conv, 16
  %call14 = call i8* @xrealloc(i8* %23, i64 %mul)
  %26 = bitcast i8* %call14 to %struct.initial_value_pair*
  %27 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries15 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %27, i32 0, i32 2
  store %struct.initial_value_pair* %26, %struct.initial_value_pair** %entries15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.10, %if.end.6
  %28 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %29 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries17 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %29, i32 0, i32 0
  %30 = load i32, i32* %num_entries17, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries18 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %31, i32 0, i32 2
  %32 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries18, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %32, i64 %idxprom
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 0
  store %struct.rtx_def* %28, %struct.rtx_def** %hard_reg, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load = load i32, i32* %34, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call19 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  %35 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries20 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %35, i32 0, i32 0
  %36 = load i32, i32* %num_entries20, align 4
  %idxprom21 = sext i32 %36 to i64
  %37 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries22 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %37, i32 0, i32 2
  %38 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries22, align 8
  %arrayidx23 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %38, i64 %idxprom21
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx23, i32 0, i32 1
  store %struct.rtx_def* %call19, %struct.rtx_def** %pseudo, align 8
  %39 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries24 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %39, i32 0, i32 0
  %40 = load i32, i32* %num_entries24, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %num_entries24, align 4
  %idxprom25 = sext i32 %40 to i64
  %41 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries26 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %41, i32 0, i32 2
  %42 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries26, align 8
  %arrayidx27 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %42, i64 %idxprom25
  %pseudo28 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx27, i32 0, i32 1
  %43 = load %struct.rtx_def*, %struct.rtx_def** %pseudo28, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %44 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %44
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_hard_reg_initial_val(i32 %mode, i32 %regno) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %1, i32 %2)
  %call1 = call %struct.rtx_def* @get_func_hard_reg_initial_val(%struct.function* %0, %struct.rtx_def* %call)
  ret %struct.rtx_def* %call1
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @has_hard_reg_initial_val(i32 %mode, i32 %regno) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %1, i32 %2)
  %call1 = call %struct.rtx_def* @has_func_hard_reg_initial_val(%struct.function* %0, %struct.rtx_def* %call)
  ret %struct.rtx_def* %call1
}

; Function Attrs: nounwind uwtable
define void @mark_hard_reg_initial_vals(%struct.function* %fun) #0 {
entry:
  %fun.addr = alloca %struct.function*, align 8
  %ivs = alloca %struct.initial_value_struct*, align 8
  %i = alloca i32, align 4
  %r__ = alloca %struct.rtx_def*, align 8
  %r__6 = alloca %struct.rtx_def*, align 8
  store %struct.function* %fun, %struct.function** %fun.addr, align 8
  %0 = load %struct.function*, %struct.function** %fun.addr, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %num_entries, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %7, i32 0, i32 2
  %8 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %idxprom
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %r__, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp2 = icmp ne %struct.rtx_def* %10, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %12 = bitcast %struct.rtx_def* %11 to i8*
  %call = call i32 @ggc_set_mark(i8* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries8 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %15, i32 0, i32 2
  %16 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries8, align 8
  %arrayidx9 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %16, i64 %idxprom7
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx9, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %r__6, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %r__6, align 8
  %cmp10 = icmp ne %struct.rtx_def* %18, null
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.15

land.lhs.true.11:                                 ; preds = %do.body.5
  %19 = load %struct.rtx_def*, %struct.rtx_def** %r__6, align 8
  %20 = bitcast %struct.rtx_def* %19 to i8*
  %call12 = call i32 @ggc_set_mark(i8* %20)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true.11
  %21 = load %struct.rtx_def*, %struct.rtx_def** %r__6, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %land.lhs.true.11, %do.body.5
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %do.end.16
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

declare i32 @ggc_set_mark(i8*) #1

declare void @ggc_mark_rtx_children(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @emit_initial_value_sets() #0 {
entry:
  %ivs = alloca %struct.initial_value_struct*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %hard_reg_initial_vals = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 17
  %1 = load %struct.initial_value_struct*, %struct.initial_value_struct** %hard_reg_initial_vals, align 8
  store %struct.initial_value_struct* %1, %struct.initial_value_struct** %ivs, align 8
  %2 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %cmp = icmp eq %struct.initial_value_struct* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @start_sequence()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %num_entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %4, i32 0, i32 0
  %5 = load i32, i32* %num_entries, align 4
  %cmp1 = icmp slt i32 %3, %5
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %7, i32 0, i32 2
  %8 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries, align 8
  %arrayidx = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %8, i64 %idxprom
  %pseudo = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pseudo, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.initial_value_struct*, %struct.initial_value_struct** %ivs, align 8
  %entries3 = getelementptr inbounds %struct.initial_value_struct, %struct.initial_value_struct* %11, i32 0, i32 2
  %12 = load %struct.initial_value_pair*, %struct.initial_value_pair** %entries3, align 8
  %arrayidx4 = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %12, i64 %idxprom2
  %hard_reg = getelementptr inbounds %struct.initial_value_pair, %struct.initial_value_pair* %arrayidx4, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg, align 8
  %call = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %9, %struct.rtx_def* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call5, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %15 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call6 = call %struct.rtx_def* @get_insns()
  %call7 = call %struct.rtx_def* @emit_insns_after(%struct.rtx_def* %15, %struct.rtx_def* %call6)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare %struct.rtx_def* @emit_insns_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @allocate_initial_values(%struct.rtx_def** %reg_equiv_memory_loc) #0 {
entry:
  %reg_equiv_memory_loc.addr = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def** %reg_equiv_memory_loc, %struct.rtx_def*** %reg_equiv_memory_loc.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @note_modified_parmregs(%struct.rtx_def* %reg, %struct.rtx_def* %x, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @in_nonparm_insns, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %x_max_parm_reg = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 37
  %6 = load i32, i32* %x_max_parm_reg, align 4
  %cmp2 = icmp ult i32 %4, %6
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %8 = load i32, i32* %rtuint6, align 4
  %cmp7 = icmp uge i32 %8, 53
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %10 = load i32, i32* %rtuint11, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %arrayidx12 = getelementptr inbounds %union.tree_node*, %union.tree_node** %11, i64 %idxprom
  %12 = load %union.tree_node*, %union.tree_node** %arrayidx12, align 8
  %cmp13 = icmp ne %union.tree_node* %12, null
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtuint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %14 = load i32, i32* %rtuint16, align 4
  %idxprom17 = zext i32 %14 to i64
  %15 = load %union.tree_node**, %union.tree_node*** @parmdecl_map, align 8
  %arrayidx18 = getelementptr inbounds %union.tree_node*, %union.tree_node** %15, i64 %idxprom17
  %16 = load %union.tree_node*, %union.tree_node** %arrayidx18, align 8
  %common = bitcast %union.tree_node* %16 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load19 = load i32, i32* %readonly_flag, align 8
  %bf.clear20 = and i32 %bf.load19, -4097
  store i32 %bf.clear20, i32* %readonly_flag, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.8, %land.lhs.true.3, %land.lhs.true.1, %land.lhs.true, %entry
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @volatile_refs_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare i32 @returnjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier() #1

declare %struct.rtx_def* @emit_call_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_uuuu(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_block(i8* %v1, i8* %v2) #0 {
entry:
  %retval = alloca i32, align 4
  %v1.addr = alloca i8*, align 8
  %v2.addr = alloca i8*, align 8
  %b1 = alloca %union.tree_node*, align 8
  %b2 = alloca %union.tree_node*, align 8
  %p1 = alloca i8*, align 8
  %p2 = alloca i8*, align 8
  store i8* %v1, i8** %v1.addr, align 8
  store i8* %v2, i8** %v2.addr, align 8
  %0 = load i8*, i8** %v1.addr, align 8
  %1 = bitcast i8* %0 to %union.tree_node*
  store %union.tree_node* %1, %union.tree_node** %b1, align 8
  %2 = load i8*, i8** %v2.addr, align 8
  %3 = bitcast i8* %2 to %union.tree_node**
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  store %union.tree_node* %4, %union.tree_node** %b2, align 8
  %5 = load %union.tree_node*, %union.tree_node** %b1, align 8
  %6 = bitcast %union.tree_node* %5 to i8*
  store i8* %6, i8** %p1, align 8
  %7 = load %union.tree_node*, %union.tree_node** %b2, align 8
  %block = bitcast %union.tree_node* %7 to %struct.tree_block*
  %abstract_origin = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 5
  %8 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %9 = bitcast %union.tree_node* %8 to i8*
  store i8* %9, i8** %p2, align 8
  %10 = load i8*, i8** %p1, align 8
  %11 = load i8*, i8** %p2, align 8
  %cmp = icmp eq i8* %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %p1, align 8
  %13 = load i8*, i8** %p2, align 8
  %cmp1 = icmp ult i8* %12, %13
  %cond = select i1 %cmp1, i32 -1, i32 1
  store i32 %cond, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %union.tree_node* @make_node(i32) #1

declare i32 @num_validated_changes() #1

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare void @cancel_changes(i32) #1

declare %struct.rtx_def* @gen_lowpart_if_possible(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_unary_operation(i32, i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @simplify_relational_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_ternary_operation(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
