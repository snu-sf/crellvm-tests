; ModuleID = 'explow.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.lang_decl = type opaque
%struct.optab = type { i32, [59 x %struct.anon.3] }
%struct.anon.3 = type { i32, %struct.rtx_def* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque

@mode_bitsize = external constant [59 x i16], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@call_used_regs = external global [53 x i8], align 16
@.str = private unnamed_addr constant [9 x i8] c"explow.c\00", align 1
@__FUNCTION__.find_next_ref = private unnamed_addr constant [14 x i8] c"find_next_ref\00", align 1
@tree_code_type = external global [256 x i8], align 16
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@target_flags = external global i32, align 4
@cse_not_expected = external global i32, align 4
@flag_force_addr = external global i32, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.copy_to_mode_reg = private unnamed_addr constant [17 x i8] c"copy_to_mode_reg\00", align 1
@rtx_class = external constant [153 x i8], align 16
@x86_promote_hi_regs = external constant i32, align 4
@ix86_cpu = external global i32, align 4
@x86_promote_qi_regs = external constant i32, align 4
@cfun = external global %struct.function*, align 8
@optab_table = external global [49 x %struct.optab*], align 16
@ix86_preferred_stack_boundary = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@__FUNCTION__.emit_stack_save = private unnamed_addr constant [16 x i8] c"emit_stack_save\00", align 1
@__FUNCTION__.allocate_dynamic_stack_space = private unnamed_addr constant [29 x i8] c"allocate_dynamic_stack_space\00", align 1
@flag_stack_check = external global i32, align 4
@word_mode = external global i32, align 4
@insn_data = external constant [0 x %struct.insn_data], align 8
@stack_limit_rtx = external global %struct.rtx_def*, align 8
@stack_check_libfunc = internal global %struct.rtx_def* null, align 8
@ptr_mode = external global i32, align 4
@__FUNCTION__.probe_stack_range = private unnamed_addr constant [18 x i8] c"probe_stack_range\00", align 1
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@__FUNCTION__.hard_function_value = private unnamed_addr constant [20 x i8] c"hard_function_value\00", align 1

; Function Attrs: nounwind uwtable
define i64 @trunc_int_for_mode(i64 %c, i32 %mode) #0 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  %width = alloca i32, align 4
  %sign = alloca i64, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  store i32 %conv, i32* %width, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %c.addr, align 8
  %and = and i64 %3, 1
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 1, i32 0
  %conv2 = sext i32 %cond to i64
  store i64 %conv2, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %width, align 4
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %width, align 4
  %cmp5 = icmp slt i32 %5, 64
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %land.lhs.true
  store i64 1, i64* %sign, align 8
  %6 = load i32, i32* %width, align 4
  %sub = sub nsw i32 %6, 1
  %7 = load i64, i64* %sign, align 8
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %7, %sh_prom
  store i64 %shl, i64* %sign, align 8
  %8 = load i64, i64* %sign, align 8
  %shl8 = shl i64 %8, 1
  %sub9 = sub nsw i64 %shl8, 1
  %9 = load i64, i64* %c.addr, align 8
  %and10 = and i64 %9, %sub9
  store i64 %and10, i64* %c.addr, align 8
  %10 = load i64, i64* %sign, align 8
  %11 = load i64, i64* %c.addr, align 8
  %xor = xor i64 %11, %10
  store i64 %xor, i64* %c.addr, align 8
  %12 = load i64, i64* %sign, align 8
  %13 = load i64, i64* %c.addr, align 8
  %sub11 = sub nsw i64 %13, %12
  store i64 %sub11, i64* %c.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %land.lhs.true, %if.end
  %14 = load i64, i64* %c.addr, align 8
  store i64 %14, i64* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %15 = load i64, i64* %retval
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %x, i64 %c) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %c.addr = alloca i64, align 8
  %code = alloca i32, align 4
  %y = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %all_constant = alloca i32, align 4
  %l1 = alloca i64, align 8
  %h1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %h2 = alloca i64, align 8
  %lv = alloca i64, align 8
  %hv = alloca i64, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %const_loc = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  store i32 0, i32* %all_constant, align 4
  %0 = load i64, i64* %c.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %restart

restart:                                          ; preds = %if.end.78, %sw.bb.47, %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %y, align 8
  %7 = load i32, i32* %code, align 4
  switch i32 %7, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb.3
    i32 66, label %sw.bb.13
    i32 58, label %sw.bb.47
    i32 68, label %sw.bb.51
    i32 67, label %sw.bb.51
    i32 75, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %restart
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %9 = load i64, i64* %rtwint, align 8
  %10 = load i64, i64* %c.addr, align 8
  %add = add nsw i64 %9, %10
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

sw.bb.3:                                          ; preds = %restart
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtwint6 = bitcast %union.rtunion_def* %arrayidx5 to i64*
  %12 = load i64, i64* %rtwint6, align 8
  store i64 %12, i64* %l1, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtwint9 = bitcast %union.rtunion_def* %arrayidx8 to i64*
  %14 = load i64, i64* %rtwint9, align 8
  store i64 %14, i64* %h1, align 8
  %15 = load i64, i64* %c.addr, align 8
  store i64 %15, i64* %l2, align 8
  %16 = load i64, i64* %c.addr, align 8
  %cmp10 = icmp slt i64 %16, 0
  %cond = select i1 %cmp10, i32 -1, i32 0
  %conv = sext i32 %cond to i64
  store i64 %conv, i64* %h2, align 8
  %17 = load i64, i64* %l1, align 8
  %18 = load i64, i64* %h1, align 8
  %19 = load i64, i64* %l2, align 8
  %20 = load i64, i64* %h2, align 8
  %call11 = call i32 @add_double(i64 %17, i64 %18, i64 %19, i64 %20, i64* %lv, i64* %hv)
  %21 = load i64, i64* %lv, align 8
  %22 = load i64, i64* %hv, align 8
  %call12 = call %struct.rtx_def* @immed_double_const(i64 %21, i64 %22, i32 0)
  store %struct.rtx_def* %call12, %struct.rtx_def** %retval
  br label %return

sw.bb.13:                                         ; preds = %restart
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load16 = load i32, i32* %25, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 68
  br i1 %cmp18, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %sw.bb.13
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load23 = load i32, i32* %28, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 26
  %bf.clear25 = and i32 %bf.lshr24, 1
  %tobool = icmp ne i32 %bf.clear25, 0
  br i1 %tobool, label %if.then.26, label %if.end.46

if.then.26:                                       ; preds = %land.lhs.true
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load27 = load i32, i32* %30, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 16
  %bf.clear29 = and i32 %bf.lshr28, 255
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %call33 = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %32)
  %33 = load i64, i64* %c.addr, align 8
  %call34 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %call33, i64 %33)
  %call35 = call %struct.rtx_def* @force_const_mem(i32 %bf.clear29, %struct.rtx_def* %call34)
  store %struct.rtx_def* %call35, %struct.rtx_def** %tem, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load36 = load i32, i32* %35, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 16
  %bf.clear38 = and i32 %bf.lshr37, 255
  %36 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %call42 = call i32 @memory_address_p(i32 %bf.clear38, %struct.rtx_def* %37)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.then.26
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %retval
  br label %return

if.end.45:                                        ; preds = %if.then.26
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %land.lhs.true, %sw.bb.13
  br label %sw.epilog

sw.bb.47:                                         ; preds = %restart
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %x.addr, align 8
  store i32 1, i32* %all_constant, align 4
  br label %restart

sw.bb.51:                                         ; preds = %restart, %restart
  store i32 1, i32* %all_constant, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %restart
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load56 = load i32, i32* %43, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 54
  br i1 %cmp58, label %if.then.60, label %if.else

if.then.60:                                       ; preds = %sw.bb.52
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtwint66 = bitcast %union.rtunion_def* %arrayidx65 to i64*
  %46 = load i64, i64* %rtwint66, align 8
  %47 = load i64, i64* %c.addr, align 8
  %add67 = add nsw i64 %47, %46
  store i64 %add67, i64* %c.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load68 = load i32, i32* %49, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 16
  %bf.clear70 = and i32 %bf.lshr69, 255
  %cmp71 = icmp ne i32 %bf.clear70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.78

if.then.73:                                       ; preds = %if.then.60
  %50 = load i64, i64* %c.addr, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load74 = load i32, i32* %52, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  %call77 = call i64 @trunc_int_for_mode(i64 %50, i32 %bf.clear76)
  store i64 %call77, i64* %c.addr, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.73, %if.then.60
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %x.addr, align 8
  br label %restart

if.else:                                          ; preds = %sw.bb.52
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load85 = load i32, i32* %57, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 67
  br i1 %cmp87, label %if.then.144, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 1
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load92 = load i32, i32* %60, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 68
  br i1 %cmp94, label %if.then.144, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %lor.lhs.false
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 1
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load100 = load i32, i32* %63, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 54
  br i1 %cmp102, label %if.then.144, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.96
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 1
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load108 = load i32, i32* %66, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 55
  br i1 %cmp110, label %if.then.144, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.104
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load116 = load i32, i32* %69, align 8
  %bf.clear117 = and i32 %bf.load116, 65535
  %cmp118 = icmp eq i32 %bf.clear117, 58
  br i1 %cmp118, label %if.then.144, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.112
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load124 = load i32, i32* %72, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %cmp126 = icmp eq i32 %bf.clear125, 134
  br i1 %cmp126, label %if.then.144, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.120
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load132 = load i32, i32* %75, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 56
  br i1 %cmp134, label %if.then.144, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.128
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 1
  %rtx139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx139, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load140 = load i32, i32* %78, align 8
  %bf.clear141 = and i32 %bf.load140, 65535
  %cmp142 = icmp eq i32 %bf.clear141, 140
  br i1 %cmp142, label %if.then.144, label %if.else.153

if.then.144:                                      ; preds = %lor.lhs.false.136, %lor.lhs.false.128, %lor.lhs.false.120, %lor.lhs.false.112, %lor.lhs.false.104, %lor.lhs.false.96, %lor.lhs.false, %if.else
  %79 = load i32, i32* %mode, align 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 1
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %84 = load i64, i64* %c.addr, align 8
  %call151 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %83, i64 %84)
  %call152 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %79, %struct.rtx_def* %81, %struct.rtx_def* %call151)
  store %struct.rtx_def* %call152, %struct.rtx_def** %x.addr, align 8
  store i64 0, i64* %c.addr, align 8
  br label %if.end.161

if.else.153:                                      ; preds = %lor.lhs.false.136
  %call154 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %y)
  %tobool155 = icmp ne %struct.rtx_def** %call154, null
  br i1 %tobool155, label %if.then.156, label %if.end.160

if.then.156:                                      ; preds = %if.else.153
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call157 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %85)
  store %struct.rtx_def* %call157, %struct.rtx_def** %copy, align 8
  %call158 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %copy)
  store %struct.rtx_def** %call158, %struct.rtx_def*** %const_loc, align 8
  %86 = load %struct.rtx_def**, %struct.rtx_def*** %const_loc, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %86, align 8
  %88 = load i64, i64* %c.addr, align 8
  %call159 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %87, i64 %88)
  %89 = load %struct.rtx_def**, %struct.rtx_def*** %const_loc, align 8
  store %struct.rtx_def* %call159, %struct.rtx_def** %89, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %x.addr, align 8
  store i64 0, i64* %c.addr, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.156, %if.else.153
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %if.then.144
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161
  br label %sw.epilog

sw.default:                                       ; preds = %restart
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.162, %sw.bb.51, %if.end.46
  %91 = load i64, i64* %c.addr, align 8
  %cmp163 = icmp ne i64 %91, 0
  br i1 %cmp163, label %if.then.165, label %if.end.168

if.then.165:                                      ; preds = %sw.epilog
  %92 = load i32, i32* %mode, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %94 = load i64, i64* %c.addr, align 8
  %call166 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %94)
  %call167 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %92, %struct.rtx_def* %93, %struct.rtx_def* %call166)
  store %struct.rtx_def* %call167, %struct.rtx_def** %x.addr, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.165, %sw.epilog
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load169 = load i32, i32* %96, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp eq i32 %bf.clear170, 68
  br i1 %cmp171, label %if.then.178, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %if.end.168
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load174 = load i32, i32* %98, align 8
  %bf.clear175 = and i32 %bf.load174, 65535
  %cmp176 = icmp eq i32 %bf.clear175, 67
  br i1 %cmp176, label %if.then.178, label %if.else.179

if.then.178:                                      ; preds = %lor.lhs.false.173, %if.end.168
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %retval
  br label %return

if.else.179:                                      ; preds = %lor.lhs.false.173
  %100 = load i32, i32* %all_constant, align 4
  %tobool180 = icmp ne i32 %100, 0
  br i1 %tobool180, label %if.then.181, label %if.else.183

if.then.181:                                      ; preds = %if.else.179
  %101 = load i32, i32* %mode, align 4
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call182 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 58, i32 %101, %struct.rtx_def* %102)
  store %struct.rtx_def* %call182, %struct.rtx_def** %retval
  br label %return

if.else.183:                                      ; preds = %if.else.179
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else.183, %if.then.181, %if.then.178, %if.then.44, %sw.bb.3, %sw.bb, %if.then
  %104 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %104
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i32 @add_double(i64, i64, i64, i64, i64*, i64*) #1

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

declare %struct.rtx_def* @force_const_mem(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare i32 @memory_address_p(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def**) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %x, %struct.rtx_def** %constptr) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %constptr.addr = alloca %struct.rtx_def**, align 8
  %x0 = alloca %struct.rtx_def*, align 8
  %x1 = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def** %constptr, %struct.rtx_def*** %constptr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 75
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 54
  br i1 %cmp3, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %constptr.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %call = call %struct.rtx_def* @simplify_binary_operation(i32 75, i32 %bf.clear5, %struct.rtx_def* %9, %struct.rtx_def* %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %cmp9 = icmp ne %struct.rtx_def* null, %call
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.19

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load11 = load i32, i32* %13, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 54
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %land.lhs.true.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %constptr.addr, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %15, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %constptr.addr, align 8
  %call18 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %17, %struct.rtx_def** %18)
  store %struct.rtx_def* %call18, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.10, %land.lhs.true, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %tem, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %call23 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %21, %struct.rtx_def** %tem)
  store %struct.rtx_def* %call23, %struct.rtx_def** %x0, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %call27 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %23, %struct.rtx_def** %tem)
  store %struct.rtx_def* %call27, %struct.rtx_def** %x1, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %cmp31 = icmp ne %struct.rtx_def* %24, %26
  br i1 %cmp31, label %land.lhs.true.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp ne %struct.rtx_def* %27, %29
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.51

land.lhs.true.36:                                 ; preds = %lor.lhs.false, %if.end.19
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load37 = load i32, i32* %31, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %bf.clear39 = and i32 %bf.lshr38, 255
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %constptr.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %32, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call40 = call %struct.rtx_def* @simplify_binary_operation(i32 75, i32 %bf.clear39, %struct.rtx_def* %33, %struct.rtx_def* %34)
  store %struct.rtx_def* %call40, %struct.rtx_def** %tem, align 8
  %cmp41 = icmp ne %struct.rtx_def* null, %call40
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.51

land.lhs.true.42:                                 ; preds = %land.lhs.true.36
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load43 = load i32, i32* %36, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 54
  br i1 %cmp45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.42
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %constptr.addr, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %38, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load47 = load i32, i32* %40, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %call50 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear49, %struct.rtx_def* %41, %struct.rtx_def* %42)
  store %struct.rtx_def* %call50, %struct.rtx_def** %retval
  br label %return

if.end.51:                                        ; preds = %land.lhs.true.42, %land.lhs.true.36, %lor.lhs.false
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.46, %if.then.14, %if.then
  %44 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %44
}

declare %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @find_next_ref(%struct.rtx_def* %reg, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 36
  br i1 %cmp6, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 35
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 32
  br i1 %cmp14, label %if.then.23, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.end.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load16 = load i32, i32* %14, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 33
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load20 = load i32, i32* %16, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 34
  br i1 %cmp22, label %if.then.23, label %if.else.60

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false.15, %if.end.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @reg_set_p(%struct.rtx_def* %17, %struct.rtx_def* %18)
  %tobool24 = icmp ne i32 %call, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.23
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %if.then.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %call30 = call i32 @reg_mentioned_p(%struct.rtx_def* %19, %struct.rtx_def* %21)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.26
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.26
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load34 = load i32, i32* %24, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 33
  br i1 %cmp36, label %if.then.37, label %if.end.45

if.then.37:                                       ; preds = %if.end.33
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call38 = call i32 @any_uncondjump_p(%struct.rtx_def* %25)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %if.then.37
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 7
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %next, align 8
  br label %if.end.44

if.else:                                          ; preds = %if.then.37
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.44:                                        ; preds = %if.then.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.33
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load46 = load i32, i32* %29, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 34
  br i1 %cmp48, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %if.end.45
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %31 = load i32, i32* %rtuint, align 4
  %cmp51 = icmp ult i32 %31, 53
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.59

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtuint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %33 = load i32, i32* %rtuint55, align 4
  %idxprom = zext i32 %33 to i64
  %arrayidx56 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom
  %34 = load i8, i8* %arrayidx56, align 1
  %conv = sext i8 %34 to i32
  %tobool57 = icmp ne i32 %conv, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.52
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.59:                                        ; preds = %land.lhs.true.52, %land.lhs.true, %if.end.45
  br label %if.end.61

if.else.60:                                       ; preds = %lor.lhs.false.19
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.find_next_ref, i32 0, i32 0)) #3
  unreachable

if.end.61:                                        ; preds = %if.end.59
  br label %for.inc

for.inc:                                          ; preds = %if.end.61, %if.then
  %35 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.58, %if.else, %if.then.32, %if.then.25, %if.then.10
  %36 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %36
}

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expr_size(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  %size = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 7
  %3 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %cmp2 = icmp ne %union.tree_node* %3, null
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %decl4 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %size_unit5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 7
  %5 = load %union.tree_node*, %union.tree_node** %size_unit5, align 8
  store %union.tree_node* %5, %union.tree_node** %size, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %common6 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @size_in_bytes(%union.tree_node* %7)
  store %union.tree_node* %call, %union.tree_node** %size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %union.tree_node*, %union.tree_node** %size, align 8
  %common7 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp ne i32 %bf.clear10, 25
  br i1 %cmp11, label %land.lhs.true.13, label %if.end.17

land.lhs.true.13:                                 ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %size, align 8
  %call14 = call i32 @contains_placeholder_p(%union.tree_node* %9)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %land.lhs.true.13
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %11 = load %union.tree_node*, %union.tree_node** %size, align 8
  %12 = load %union.tree_node*, %union.tree_node** %exp.addr, align 8
  %call16 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 58, %union.tree_node* %10, %union.tree_node* %11, %union.tree_node* %12)
  store %union.tree_node* %call16, %union.tree_node** %size, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end
  %13 = load %union.tree_node*, %union.tree_node** %size, align 8
  %14 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type18 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type18, i32 0, i32 6
  %bf.load19 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load19, 9
  %bf.clear20 = and i32 %bf.lshr, 127
  %call21 = call %struct.rtx_def* @expand_expr(%union.tree_node* %13, %struct.rtx_def* null, i32 %bf.clear20, i32 0)
  ret %struct.rtx_def* %call21
}

declare %union.tree_node* @size_in_bytes(%union.tree_node*) #1

declare i32 @contains_placeholder_p(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_all_regs(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ne i32 %3, 20
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %5 = load i32, i32* %rtuint4, align 4
  %cmp5 = icmp ne i32 %5, 6
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  br label %if.end.47

if.else:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 66
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call11 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %9)
  store %struct.rtx_def* %call11, %struct.rtx_def** %x.addr, align 8
  br label %if.end.46

if.else.12:                                       ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 75
  br i1 %cmp15, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.12
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 76
  br i1 %cmp18, label %if.then.23, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 78
  br i1 %cmp22, label %if.then.23, label %if.end.45

if.then.23:                                       ; preds = %lor.lhs.false.19, %lor.lhs.false, %if.else.12
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call26 = call %struct.rtx_def* @copy_all_regs(%struct.rtx_def* %17)
  store %struct.rtx_def* %call26, %struct.rtx_def** %op0, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %call30 = call %struct.rtx_def* @copy_all_regs(%struct.rtx_def* %19)
  store %struct.rtx_def* %call30, %struct.rtx_def** %op1, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %cmp34 = icmp ne %struct.rtx_def* %20, %22
  br i1 %cmp34, label %if.then.40, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.then.23
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %cmp39 = icmp ne %struct.rtx_def* %23, %25
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %lor.lhs.false.35, %if.then.23
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load41 = load i32, i32* %27, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %28 = load i32, i32* @target_flags, align 4
  %and = and i32 %28, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call43 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %bf.clear42, i32 %cond, %struct.rtx_def* %29, %struct.rtx_def* %30)
  store %struct.rtx_def* %call43, %struct.rtx_def** %x.addr, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %lor.lhs.false.35
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %lor.lhs.false.19
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then.10
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  ret %struct.rtx_def* %31
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call i32 @general_operand(%struct.rtx_def* %2, i32 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call2 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %3, %struct.rtx_def* %4)
  store %struct.rtx_def* %call2, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp = icmp ne %struct.rtx_def* %5, %6
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call4 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @memory_address(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %oldx = alloca %struct.rtx_def*, align 8
  %constant_term = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %oldx, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 70
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @cse_not_expected, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 67
  br i1 %cmp3, label %land.lhs.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 68
  br i1 %cmp6, label %land.lhs.true.31, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 54
  br i1 %cmp10, label %land.lhs.true.31, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 55
  br i1 %cmp14, label %land.lhs.true.31, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load16 = load i32, i32* %14, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 58
  br i1 %cmp18, label %land.lhs.true.31, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load20 = load i32, i32* %16, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 134
  br i1 %cmp22, label %land.lhs.true.31, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load24 = load i32, i32* %18, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 56
  br i1 %cmp26, label %land.lhs.true.31, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load28 = load i32, i32* %20, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 140
  br i1 %cmp30, label %land.lhs.true.31, label %if.else

land.lhs.true.31:                                 ; preds = %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false.7, %lor.lhs.false, %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load32 = load i32, i32* %22, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 67
  br i1 %cmp34, label %if.then.51, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.31
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load36 = load i32, i32* %24, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %if.then.51, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load40 = load i32, i32* %26, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 54
  br i1 %cmp42, label %if.then.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load44 = load i32, i32* %28, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 58
  br i1 %cmp46, label %if.then.51, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load48 = load i32, i32* %30, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 55
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %lor.lhs.false.35, %land.lhs.true.31
  %31 = load i32, i32* @target_flags, align 4
  %and = and i32 %31, 33554432
  %tobool52 = icmp ne i32 %and, 0
  %cond = select i1 %tobool52, i32 5, i32 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @force_reg(i32 %cond, %struct.rtx_def* %32)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end.169

if.else:                                          ; preds = %lor.lhs.false.47, %lor.lhs.false.27, %if.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load53 = load i32, i32* %34, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 71
  br i1 %cmp55, label %land.lhs.true.56, label %if.else.61

land.lhs.true.56:                                 ; preds = %if.else
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load57 = load i32, i32* %37, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 61
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.56
  br label %if.end.168

if.else.61:                                       ; preds = %land.lhs.true.56, %if.else
  %38 = load i32, i32* @cse_not_expected, align 4
  %tobool62 = icmp ne i32 %38, 0
  br i1 %tobool62, label %if.end.69, label %land.lhs.true.63

land.lhs.true.63:                                 ; preds = %if.else.61
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load64 = load i32, i32* %40, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp ne i32 %bf.clear65, 61
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %land.lhs.true.63
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call68 = call %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %41)
  store %struct.rtx_def* %call68, %struct.rtx_def** %x.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %land.lhs.true.63, %if.else.61
  br label %do.body

do.body:                                          ; preds = %if.end.69
  %42 = load i32, i32* %mode.addr, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call70 = call i32 @legitimate_address_p(i32 %42, %struct.rtx_def* %43, i32 0)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %do.body
  br label %win

if.end.73:                                        ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.73
  %44 = load i32, i32* %mode.addr, align 4
  %45 = load %struct.rtx_def*, %struct.rtx_def** %oldx, align 8
  %call74 = call i32 @memory_address_p(i32 %44, %struct.rtx_def* %45)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %do.end
  br label %win2

if.end.77:                                        ; preds = %do.end
  br label %do.body.78

do.body.78:                                       ; preds = %if.end.77
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %oldx, align 8
  %48 = load i32, i32* %mode.addr, align 4
  %call79 = call %struct.rtx_def* @legitimize_address(%struct.rtx_def* %46, %struct.rtx_def* %47, i32 %48)
  store %struct.rtx_def* %call79, %struct.rtx_def** %x.addr, align 8
  %49 = load i32, i32* %mode.addr, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call80 = call i32 @memory_address_p(i32 %49, %struct.rtx_def* %50)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %do.body.78
  br label %win

if.end.83:                                        ; preds = %do.body.78
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load85 = load i32, i32* %52, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 75
  br i1 %cmp87, label %if.then.88, label %if.else.108

if.then.88:                                       ; preds = %do.end.84
  %53 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %constant_term, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call89 = call %struct.rtx_def* @eliminate_constant_term(%struct.rtx_def* %54, %struct.rtx_def** %constant_term)
  store %struct.rtx_def* %call89, %struct.rtx_def** %y, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %constant_term, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp90 = icmp eq %struct.rtx_def* %55, %56
  br i1 %cmp90, label %if.then.94, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.then.88
  %57 = load i32, i32* %mode.addr, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call92 = call i32 @memory_address_p(i32 %57, %struct.rtx_def* %58)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.else.96, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.91, %if.then.88
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call95 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %59, %struct.rtx_def* null)
  store %struct.rtx_def* %call95, %struct.rtx_def** %x.addr, align 8
  br label %if.end.107

if.else.96:                                       ; preds = %lor.lhs.false.91
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load97 = load i32, i32* %61, align 8
  %bf.lshr = lshr i32 %bf.load97, 16
  %bf.clear98 = and i32 %bf.lshr, 255
  %62 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call99 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %62)
  %63 = load %struct.rtx_def*, %struct.rtx_def** %constant_term, align 8
  %call100 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear98, %struct.rtx_def* %call99, %struct.rtx_def* %63)
  store %struct.rtx_def* %call100, %struct.rtx_def** %y, align 8
  %64 = load i32, i32* %mode.addr, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call101 = call i32 @memory_address_p(i32 %64, %struct.rtx_def* %65)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.else.105, label %if.then.103

if.then.103:                                      ; preds = %if.else.96
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call104 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %66, %struct.rtx_def* null)
  store %struct.rtx_def* %call104, %struct.rtx_def** %x.addr, align 8
  br label %if.end.106

if.else.105:                                      ; preds = %if.else.96
  %67 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %x.addr, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.105, %if.then.103
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.then.94
  br label %if.end.131

if.else.108:                                      ; preds = %do.end.84
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load109 = load i32, i32* %69, align 8
  %bf.clear110 = and i32 %bf.load109, 65535
  %cmp111 = icmp eq i32 %bf.clear110, 78
  br i1 %cmp111, label %if.then.116, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %if.else.108
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load113 = load i32, i32* %71, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 76
  br i1 %cmp115, label %if.then.116, label %if.else.118

if.then.116:                                      ; preds = %lor.lhs.false.112, %if.else.108
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call117 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %72, %struct.rtx_def* null)
  store %struct.rtx_def* %call117, %struct.rtx_def** %x.addr, align 8
  br label %if.end.130

if.else.118:                                      ; preds = %lor.lhs.false.112
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load119 = load i32, i32* %74, align 8
  %bf.clear120 = and i32 %bf.load119, 65535
  %cmp121 = icmp eq i32 %bf.clear120, 61
  br i1 %cmp121, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %if.else.118
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call123 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %75)
  store %struct.rtx_def* %call123, %struct.rtx_def** %x.addr, align 8
  br label %if.end.129

if.else.124:                                      ; preds = %if.else.118
  %76 = load i32, i32* @target_flags, align 4
  %and125 = and i32 %76, 33554432
  %tobool126 = icmp ne i32 %and125, 0
  %cond127 = select i1 %tobool126, i32 5, i32 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call128 = call %struct.rtx_def* @force_reg(i32 %cond127, %struct.rtx_def* %77)
  store %struct.rtx_def* %call128, %struct.rtx_def** %x.addr, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.124, %if.then.122
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129, %if.then.116
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.107
  br label %done

win2:                                             ; preds = %if.then.76
  %78 = load %struct.rtx_def*, %struct.rtx_def** %oldx, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %x.addr, align 8
  br label %win

win:                                              ; preds = %win2, %if.then.82, %if.then.72
  %79 = load i32, i32* @flag_force_addr, align 4
  %tobool132 = icmp ne i32 %79, 0
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.167

land.lhs.true.133:                                ; preds = %win
  %80 = load i32, i32* @cse_not_expected, align 4
  %tobool134 = icmp ne i32 %80, 0
  br i1 %tobool134, label %if.end.167, label %land.lhs.true.135

land.lhs.true.135:                                ; preds = %land.lhs.true.133
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load136 = load i32, i32* %82, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp ne i32 %bf.clear137, 61
  br i1 %cmp138, label %land.lhs.true.139, label %if.end.167

land.lhs.true.139:                                ; preds = %land.lhs.true.135
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load140 = load i32, i32* %84, align 8
  %bf.clear141 = and i32 %bf.load140, 65535
  %cmp142 = icmp eq i32 %bf.clear141, 75
  br i1 %cmp142, label %land.lhs.true.143, label %if.then.153

land.lhs.true.143:                                ; preds = %land.lhs.true.139
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %cmp147 = icmp eq %struct.rtx_def* %86, %87
  br i1 %cmp147, label %if.end.167, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %land.lhs.true.143
  %88 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %cmp152 = icmp eq %struct.rtx_def* %89, %90
  br i1 %cmp152, label %if.end.167, label %if.then.153

if.then.153:                                      ; preds = %lor.lhs.false.148, %land.lhs.true.139
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %92 = load i32, i32* @target_flags, align 4
  %and154 = and i32 %92, 33554432
  %tobool155 = icmp ne i32 %and154, 0
  %cond156 = select i1 %tobool155, i32 5, i32 4
  %call157 = call i32 @general_operand(%struct.rtx_def* %91, i32 %cond156)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.else.164

if.then.159:                                      ; preds = %if.then.153
  %93 = load i32, i32* @target_flags, align 4
  %and160 = and i32 %93, 33554432
  %tobool161 = icmp ne i32 %and160, 0
  %cond162 = select i1 %tobool161, i32 5, i32 4
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call163 = call %struct.rtx_def* @force_reg(i32 %cond162, %struct.rtx_def* %94)
  store %struct.rtx_def* %call163, %struct.rtx_def** %x.addr, align 8
  br label %if.end.166

if.else.164:                                      ; preds = %if.then.153
  %95 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call165 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %95, %struct.rtx_def* null)
  store %struct.rtx_def* %call165, %struct.rtx_def** %x.addr, align 8
  br label %if.end.166

if.end.166:                                       ; preds = %if.else.164, %if.then.159
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %lor.lhs.false.148, %land.lhs.true.143, %land.lhs.true.135, %land.lhs.true.133, %win
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.then.60
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %if.then.51
  br label %done

done:                                             ; preds = %if.end.169, %if.end.131
  %96 = load %struct.rtx_def*, %struct.rtx_def** %oldx, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp170 = icmp eq %struct.rtx_def* %96, %97
  br i1 %cmp170, label %if.then.171, label %if.else.172

if.then.171:                                      ; preds = %done
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %retval
  br label %return

if.else.172:                                      ; preds = %done
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load173 = load i32, i32* %100, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp eq i32 %bf.clear174, 61
  br i1 %cmp175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.172
  %101 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @mark_reg_pointer(%struct.rtx_def* %101, i32 8)
  br label %if.end.200

if.else.177:                                      ; preds = %if.else.172
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load178 = load i32, i32* %103, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp eq i32 %bf.clear179, 75
  br i1 %cmp180, label %land.lhs.true.181, label %if.end.199

land.lhs.true.181:                                ; preds = %if.else.177
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load185 = load i32, i32* %106, align 8
  %bf.clear186 = and i32 %bf.load185, 65535
  %cmp187 = icmp eq i32 %bf.clear186, 61
  br i1 %cmp187, label %land.lhs.true.188, label %if.end.199

land.lhs.true.188:                                ; preds = %land.lhs.true.181
  %107 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 1
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %108 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load192 = load i32, i32* %109, align 8
  %bf.clear193 = and i32 %bf.load192, 65535
  %cmp194 = icmp eq i32 %bf.clear193, 54
  br i1 %cmp194, label %if.then.195, label %if.end.199

if.then.195:                                      ; preds = %land.lhs.true.188
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 0
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  call void @mark_reg_pointer(%struct.rtx_def* %111, i32 8)
  br label %if.end.199

if.end.199:                                       ; preds = %if.then.195, %land.lhs.true.188, %land.lhs.true.181, %if.else.177
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.176
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200
  %112 = load %struct.rtx_def*, %struct.rtx_def** %oldx, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @update_temp_slot_address(%struct.rtx_def* %112, %struct.rtx_def* %113)
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %114, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.201, %if.then.171, %if.then
  %115 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %115
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @force_reg(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %temp2 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %call = call i32 @general_operand(%struct.rtx_def* %3, i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* %mode.addr, align 4
  %call2 = call %struct.rtx_def* @gen_reg_rtx(i32 %5)
  store %struct.rtx_def* %call2, %struct.rtx_def** %temp, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call3 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %6, %struct.rtx_def* %7)
  store %struct.rtx_def* %call3, %struct.rtx_def** %insn, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call4 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %8, %struct.rtx_def* null)
  store %struct.rtx_def* %call4, %struct.rtx_def** %temp, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load5 = load i32, i32* %10, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 61
  br i1 %cmp7, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.else
  %call9 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call9, %struct.rtx_def** %insn, align 8
  br label %if.end.13

if.else.10:                                       ; preds = %if.else
  %11 = load i32, i32* %mode.addr, align 4
  %call11 = call %struct.rtx_def* @gen_reg_rtx(i32 %11)
  store %struct.rtx_def* %call11, %struct.rtx_def** %temp2, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call12 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %12, %struct.rtx_def* %13)
  store %struct.rtx_def* %call12, %struct.rtx_def** %insn, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %temp, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load15 = load i32, i32* %16, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 67
  br i1 %cmp17, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.14
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load18 = load i32, i32* %18, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 68
  br i1 %cmp20, label %land.lhs.true, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load22 = load i32, i32* %20, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 54
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load26 = load i32, i32* %22, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 55
  br i1 %cmp28, label %land.lhs.true, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load30 = load i32, i32* %24, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 58
  br i1 %cmp32, label %land.lhs.true, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load34 = load i32, i32* %26, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 134
  br i1 %cmp36, label %land.lhs.true, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load38 = load i32, i32* %28, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 56
  br i1 %cmp40, label %land.lhs.true, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.37
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load42 = load i32, i32* %30, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 140
  br i1 %cmp44, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %lor.lhs.false.41, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false, %if.end.14
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load45 = load i32, i32* %32, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %idxprom = sext i32 %bf.clear46 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %33 to i32
  %cmp47 = icmp eq i32 %conv, 105
  br i1 %cmp47, label %cond.true, label %cond.false.62

cond.true:                                        ; preds = %land.lhs.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load50 = load i32, i32* %36, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 47
  br i1 %cmp52, label %cond.true.54, label %cond.false

cond.true.54:                                     ; preds = %cond.true
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 3
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 3
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %call61 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %39, %struct.rtx_def* %41)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.54
  %cond = phi %struct.rtx_def* [ %38, %cond.true.54 ], [ %call61, %cond.false ]
  br label %cond.end.63

cond.false.62:                                    ; preds = %land.lhs.true
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.62, %cond.end
  %cond64 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.62 ]
  store %struct.rtx_def* %cond64, %struct.rtx_def** %set, align 8
  %cmp65 = icmp ne %struct.rtx_def* %cond64, null
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.75

land.lhs.true.67:                                 ; preds = %cond.end.63
  %42 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp71 = icmp eq %struct.rtx_def* %43, %44
  br i1 %cmp71, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %land.lhs.true.67
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call74 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %45, i32 4, %struct.rtx_def* %46)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.73, %land.lhs.true.67, %cond.end.63, %lor.lhs.false.41
  %47 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then
  %48 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %48
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 67
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 68
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load9 = load i32, i32* %7, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 54
  br i1 %cmp11, label %land.lhs.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load13 = load i32, i32* %9, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 55
  br i1 %cmp15, label %land.lhs.true, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load17 = load i32, i32* %11, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 58
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load21 = load i32, i32* %13, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 134
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load25 = load i32, i32* %15, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 56
  br i1 %cmp27, label %land.lhs.true, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.24
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load29 = load i32, i32* %17, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 140
  br i1 %cmp31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.28, %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load32 = load i32, i32* %19, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 67
  br i1 %cmp34, label %land.lhs.true.51, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load36 = load i32, i32* %21, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %land.lhs.true.51, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load40 = load i32, i32* %23, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 54
  br i1 %cmp42, label %land.lhs.true.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load44 = load i32, i32* %25, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 58
  br i1 %cmp46, label %land.lhs.true.51, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load48 = load i32, i32* %27, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 55
  br i1 %cmp50, label %land.lhs.true.51, label %if.else

land.lhs.true.51:                                 ; preds = %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %lor.lhs.false.35, %land.lhs.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load52 = load i32, i32* %29, align 8
  %bf.lshr = lshr i32 %bf.load52, 16
  %bf.clear53 = and i32 %bf.lshr, 255
  %cmp54 = icmp ne i32 %bf.clear53, 0
  br i1 %cmp54, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.51, %entry
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load55 = load i32, i32* %31, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @force_reg(i32 %bf.clear57, %struct.rtx_def* %32)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end.89

if.else:                                          ; preds = %land.lhs.true.51, %lor.lhs.false.47, %lor.lhs.false.28
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load58 = load i32, i32* %34, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 75
  br i1 %cmp60, label %if.then.69, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %if.else
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load62 = load i32, i32* %36, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 76
  br i1 %cmp64, label %if.then.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.61
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load66 = load i32, i32* %38, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 78
  br i1 %cmp68, label %if.then.69, label %if.end.88

if.then.69:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.61, %if.else
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call70 = call %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %40)
  store %struct.rtx_def* %call70, %struct.rtx_def** %op0, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %call74 = call %struct.rtx_def* @break_out_memory_refs(%struct.rtx_def* %42)
  store %struct.rtx_def* %call74, %struct.rtx_def** %op1, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %cmp78 = icmp ne %struct.rtx_def* %43, %45
  br i1 %cmp78, label %if.then.84, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.then.69
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 1
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %cmp83 = icmp ne %struct.rtx_def* %46, %48
  br i1 %cmp83, label %if.then.84, label %if.end

if.then.84:                                       ; preds = %lor.lhs.false.79, %if.then.69
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load85 = load i32, i32* %50, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %51 = load i32, i32* @target_flags, align 4
  %and = and i32 %51, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call87 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %bf.clear86, i32 %cond, %struct.rtx_def* %52, %struct.rtx_def* %53)
  store %struct.rtx_def* %call87, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.84, %lor.lhs.false.79
  br label %if.end.88

if.end.88:                                        ; preds = %if.end, %lor.lhs.false.65
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  ret %struct.rtx_def* %54
}

declare i32 @legitimate_address_p(i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @legitimize_address(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @general_operand(%struct.rtx_def*, i32) #1

declare void @mark_reg_pointer(%struct.rtx_def*, i32) #1

declare void @update_temp_slot_address(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @memory_address_noforce(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %ambient_force_addr = alloca i32, align 4
  %val = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* @flag_force_addr, align 4
  store i32 %0, i32* %ambient_force_addr, align 4
  store i32 0, i32* @flag_force_addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @memory_address(i32 %1, %struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %val, align 8
  %3 = load i32, i32* %ambient_force_addr, align 4
  store i32 %3, i32* @flag_force_addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  ret %struct.rtx_def* %4
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @validize_mem(%struct.rtx_def* %ref) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %ref.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %ref, %struct.rtx_def** %ref.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_force_addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %land.lhs.true, label %land.lhs.true.31

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 67
  br i1 %cmp3, label %if.end.39, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 68
  br i1 %cmp9, label %if.end.39, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load14 = load i32, i32* %12, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 54
  br i1 %cmp16, label %if.end.39, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.10
  %13 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load21 = load i32, i32* %15, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 58
  br i1 %cmp23, label %if.end.39, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load28 = load i32, i32* %18, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 55
  br i1 %cmp30, label %if.end.39, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %lor.lhs.false.24, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load32 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load32, 16
  %bf.clear33 = and i32 %bf.lshr, 255
  %21 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %call = call i32 @memory_address_p(i32 %bf.clear33, %struct.rtx_def* %22)
  %tobool37 = icmp ne i32 %call, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.31
  %23 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.31, %lor.lhs.false.24, %lor.lhs.false.17, %lor.lhs.false.10, %lor.lhs.false, %land.lhs.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call43 = call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %24, %struct.rtx_def* %26)
  store %struct.rtx_def* %call43, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.then.38, %if.then
  %27 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %27
}

declare %struct.rtx_def* @replace_equiv_address(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @maybe_set_unchanging(%struct.rtx_def* %ref, %union.tree_node* %t) #0 {
entry:
  %ref.addr = alloca %struct.rtx_def*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %ref, %struct.rtx_def** %ref.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false.22

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %code, align 8
  %bf.clear3 = and i32 %bf.load2, 255
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true.5, label %lor.lhs.false.22

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common6 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 35
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %5 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %cmp12 = icmp eq %union.tree_node* %5, null
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl15 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %initial16 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 12
  %7 = load %union.tree_node*, %union.tree_node** %initial16, align 8
  %common17 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %constant_flag, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 9
  %bf.clear20 = and i32 %bf.lshr19, 1
  %tobool21 = icmp ne i32 %bf.clear20, 0
  br i1 %tobool21, label %if.then, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.14, %land.lhs.true, %entry
  %8 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common23 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 2
  %bf.load25 = load i32, i32* %code24, align 8
  %bf.clear26 = and i32 %bf.load25, 255
  %idxprom27 = sext i32 %bf.clear26 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom27
  %9 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %9 to i32
  %cmp30 = icmp eq i32 %conv29, 99
  br i1 %cmp30, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.22, %lor.lhs.false.14, %lor.lhs.false, %land.lhs.true.5
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load32 = load i32, i32* %11, align 8
  %bf.clear33 = and i32 %bf.load32, -67108865
  %bf.set = or i32 %bf.clear33, 67108864
  store i32 %bf.set, i32* %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.22
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @stabilize(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @rtx_unstable_p(%struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 5, i32 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %call5 = call %struct.rtx_def* @copy_all_regs(%struct.rtx_def* %8)
  %call6 = call %struct.rtx_def* @force_reg(i32 %cond, %struct.rtx_def* %call5)
  %call7 = call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %5, %struct.rtx_def* %call6)
  store %struct.rtx_def* %call7, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %9
}

declare i32 @rtx_unstable_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_addr_to_reg(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @copy_to_mode_reg(i32 %cond, %struct.rtx_def* %1)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_to_mode_reg(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call i32 @general_operand(%struct.rtx_def* %1, i32 0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call2 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call2, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %6 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %bf.clear, %6
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 16
  %bf.clear5 = and i32 %bf.lshr4, 255
  %cmp6 = icmp ne i32 %bf.clear5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 713, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.copy_to_mode_reg, i32 0, i32 0)) #3
  unreachable

if.end.8:                                         ; preds = %land.lhs.true, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp9 = icmp ne %struct.rtx_def* %9, %10
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call11 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %11, %struct.rtx_def* %12)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  ret %struct.rtx_def* %13
}

declare %struct.rtx_def* @get_last_insn() #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @force_not_mem(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp eq i32 %bf.clear2, 51
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear6)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call7 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_to_suggested_reg(%struct.rtx_def* %x, %struct.rtx_def* %target, i32 %mode) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %temp, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %5, %struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define i32 @promote_mode(%union.tree_node* %type, i32 %mode, i32* %punsignedp, i32 %for_call) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %mode.addr = alloca i32, align 4
  %punsignedp.addr = alloca i32*, align 8
  %for_call.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %unsignedp = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32* %punsignedp, i32** %punsignedp.addr, align 8
  store i32 %for_call, i32* %for_call.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %1 = load i32*, i32** %punsignedp.addr, align 8
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %unsignedp, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 6, label %sw.bb
    i32 10, label %sw.bb
    i32 11, label %sw.bb
    i32 12, label %sw.bb
    i32 7, label %sw.bb
    i32 14, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %do.body

do.body:                                          ; preds = %sw.bb
  %4 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.body
  %5 = load i32, i32* @x86_promote_hi_regs, align 4
  %6 = load i32, i32* @ix86_cpu, align 4
  %shl = shl i32 1, %6
  %and = and i32 %5, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %do.body
  %7 = load i32, i32* %mode.addr, align 4
  %cmp2 = icmp eq i32 %7, 2
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* @x86_promote_qi_regs, align 4
  %9 = load i32, i32* @ix86_cpu, align 4
  %shl4 = shl i32 1, %9
  %and5 = and i32 %8, %shl4
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3, %land.lhs.true
  store i32 4, i32* %mode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %do.end
  %10 = load i32, i32* %unsignedp, align 4
  %11 = load i32*, i32** %punsignedp.addr, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %mode.addr, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define void @adjust_stack(%struct.rtx_def* %adjust) #0 {
entry:
  %adjust.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %adjust, %struct.rtx_def** %adjust.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %adjust.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp = icmp eq %struct.rtx_def* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 54
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %6 = load i64, i64* %rtwint, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 2
  %8 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %8, i32 0, i32 2
  %9 = load i32, i32* %x_stack_pointer_delta, align 4
  %conv = sext i32 %9 to i64
  %sub = sub nsw i64 %conv, %6
  %conv3 = trunc i64 %sub to i32
  store i32 %conv3, i32* %x_stack_pointer_delta, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %11 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call5 = call %struct.rtx_def* @expand_binop(i32 %cond, %struct.optab* %11, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14, i32 0, i32 3)
  store %struct.rtx_def* %call5, %struct.rtx_def** %temp, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp6 = icmp ne %struct.rtx_def* %15, %16
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call9 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.8, %if.end.4
  ret void
}

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @expand_binop(i32, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @anti_adjust_stack(%struct.rtx_def* %adjust) #0 {
entry:
  %adjust.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %adjust, %struct.rtx_def** %adjust.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %adjust.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp = icmp eq %struct.rtx_def* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.10

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 54
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %6 = load i64, i64* %rtwint, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 2
  %8 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %8, i32 0, i32 2
  %9 = load i32, i32* %x_stack_pointer_delta, align 4
  %conv = sext i32 %9 to i64
  %add = add nsw i64 %conv, %6
  %conv3 = trunc i64 %add to i32
  store i32 %conv3, i32* %x_stack_pointer_delta, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %11 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %adjust.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call5 = call %struct.rtx_def* @expand_binop(i32 %cond, %struct.optab* %11, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14, i32 0, i32 3)
  store %struct.rtx_def* %call5, %struct.rtx_def** %temp, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp6 = icmp ne %struct.rtx_def* %15, %16
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.4
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call9 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then, %if.then.8, %if.end.4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @round_push(%struct.rtx_def* %size) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %size.addr = alloca %struct.rtx_def*, align 8
  %align = alloca i32, align 4
  %new = alloca i32, align 4
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  %0 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div = sdiv i32 %0, 8
  store i32 %div, i32* %align, align 4
  %1 = load i32, i32* %align, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 54
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %6 = load i64, i64* %rtwint, align 8
  %7 = load i32, i32* %align, align 4
  %conv = sext i32 %7 to i64
  %add = add nsw i64 %6, %conv
  %sub = sub nsw i64 %add, 1
  %8 = load i32, i32* %align, align 4
  %conv3 = sext i32 %8 to i64
  %div4 = sdiv i64 %sub, %conv3
  %9 = load i32, i32* %align, align 4
  %conv5 = sext i32 %9 to i64
  %mul = mul nsw i64 %div4, %conv5
  %conv6 = trunc i64 %mul to i32
  store i32 %conv6, i32* %new, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtwint9 = bitcast %union.rtunion_def* %arrayidx8 to i64*
  %11 = load i64, i64* %rtwint9, align 8
  %12 = load i32, i32* %new, align 4
  %conv10 = sext i32 %12 to i64
  %cmp11 = icmp ne i64 %11, %conv10
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.2
  %13 = load i32, i32* %new, align 4
  %conv14 = sext i32 %13 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv14)
  store %struct.rtx_def* %call, %struct.rtx_def** %size.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.2
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %14 = load i32, i32* @target_flags, align 4
  %and = and i32 %14, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %15 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %17 = load i32, i32* %align, align 4
  %sub16 = sub nsw i32 %17, 1
  %conv17 = sext i32 %sub16 to i64
  %call18 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv17)
  %call19 = call %struct.rtx_def* @expand_binop(i32 %cond, %struct.optab* %15, %struct.rtx_def* %16, %struct.rtx_def* %call18, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call19, %struct.rtx_def** %size.addr, align 8
  %18 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %18, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  %cond22 = select i1 %tobool21, i32 5, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %20 = load i32, i32* %align, align 4
  %conv23 = sext i32 %20 to i64
  %call24 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv23)
  %call25 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %cond22, %struct.rtx_def* %19, %struct.rtx_def* %call24, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call25, %struct.rtx_def** %size.addr, align 8
  %21 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %21, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 5, i32 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %23 = load i32, i32* %align, align 4
  %conv29 = sext i32 %23 to i64
  %call30 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv29)
  %call31 = call %struct.rtx_def* @expand_mult(i32 %cond28, %struct.rtx_def* %22, %struct.rtx_def* %call30, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call31, %struct.rtx_def** %size.addr, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.end.15
  %24 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then
  %25 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %25
}

declare %struct.rtx_def* @expand_divmod(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @expand_mult(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define void @emit_stack_save(i32 %save_level, %struct.rtx_def** %psave, %struct.rtx_def* %after) #0 {
entry:
  %save_level.addr = alloca i32, align 4
  %psave.addr = alloca %struct.rtx_def**, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %sa = alloca %struct.rtx_def*, align 8
  %fcn = alloca %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, align 8
  %mode = alloca i32, align 4
  %seq = alloca %struct.rtx_def*, align 8
  store i32 %save_level, i32* %save_level.addr, align 4
  store %struct.rtx_def** %psave, %struct.rtx_def*** %psave.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %psave.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %sa, align 8
  store %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)* @gen_move_insn, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  store i32 %cond, i32* %mode, align 4
  %3 = load i32, i32* %save_level.addr, align 4
  switch i32 %3, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %4 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.else.7

if.then:                                          ; preds = %sw.epilog
  %5 = load i32, i32* %mode, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %save_level.addr, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %7 = load i32, i32* %mode, align 4
  %8 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i64
  %call = call %struct.rtx_def* @assign_stack_local(i32 %7, i64 %conv, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %sa, align 8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %psave.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %10, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %11 = load i32, i32* %mode, align 4
  %call5 = call %struct.rtx_def* @gen_reg_rtx(i32 %11)
  store %struct.rtx_def* %call5, %struct.rtx_def** %sa, align 8
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %psave.addr, align 8
  store %struct.rtx_def* %call5, %struct.rtx_def** %12, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  br label %if.end.14

if.else.7:                                        ; preds = %sw.epilog
  %13 = load i32, i32* %mode, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %16 = load i32, i32* %mode, align 4
  %cmp10 = icmp ne i32 %bf.clear, %16
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %lor.lhs.false, %if.else.7
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1001, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.emit_stack_save, i32 0, i32 0)) #3
  unreachable

if.end.13:                                        ; preds = %lor.lhs.false
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.6
  %17 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %tobool15 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool15, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %if.end.14
  call void @start_sequence()
  %18 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %cmp17 = icmp ne %struct.rtx_def* %18, null
  br i1 %cmp17, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %19 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %call20 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %19)
  store %struct.rtx_def* %call20, %struct.rtx_def** %sa, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  %20 = load %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call22 = call %struct.rtx_def* %20(%struct.rtx_def* %21, %struct.rtx_def* %22)
  %call23 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call22)
  %call24 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call24, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %23 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call25 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %23, %struct.rtx_def* %24)
  br label %if.end.34

if.else.26:                                       ; preds = %if.end.14
  %25 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %cmp27 = icmp ne %struct.rtx_def* %25, null
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.else.26
  %26 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %call30 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %26)
  store %struct.rtx_def* %call30, %struct.rtx_def** %sa, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.else.26
  %27 = load %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %sa, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call32 = call %struct.rtx_def* %27(%struct.rtx_def* %28, %struct.rtx_def* %29)
  %call33 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call32)
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.31, %if.end.21
  ret void
}

declare %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @assign_stack_local(i32, i64, i32) #1

declare void @start_sequence() #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @emit_stack_restore(i32 %save_level, %struct.rtx_def* %sa, %struct.rtx_def* %after) #0 {
entry:
  %save_level.addr = alloca i32, align 4
  %sa.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %fcn = alloca %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  store i32 %save_level, i32* %save_level.addr, align 4
  store %struct.rtx_def* %sa, %struct.rtx_def** %sa.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  store %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)* @gen_move_insn, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %0 = load i32, i32* %save_level.addr, align 4
  switch i32 %0, label %sw.default [
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %1 = load %struct.rtx_def*, %struct.rtx_def** %sa.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %2 = load %struct.rtx_def*, %struct.rtx_def** %sa.addr, align 8
  %call = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %sa.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %3 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  call void @start_sequence()
  %4 = load %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %sa.addr, align 8
  %call2 = call %struct.rtx_def* %4(%struct.rtx_def* %5, %struct.rtx_def* %6)
  %call3 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call2)
  %call4 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call4, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %7 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call5 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %7, %struct.rtx_def* %8)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %9 = load %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*)** %fcn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %sa.addr, align 8
  %call6 = call %struct.rtx_def* %9(%struct.rtx_def* %10, %struct.rtx_def* %11)
  %call7 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.1
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @allocate_dynamic_stack_space(%struct.rtx_def* %size, %struct.rtx_def* %target, i32 %known_align) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %size.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %known_align.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %pred = alloca i32 (%struct.rtx_def*, i32)*, align 8
  %available = alloca %struct.rtx_def*, align 8
  %space_available = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %known_align, i32* %known_align.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %calls_alloca = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 56
  %4 = bitcast i24* %calls_alloca to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, -65
  %bf.set = or i32 %bf.clear, 64
  store i32 %bf.set, i32* %4, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp ne i32 %bf.clear2, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load4 = load i32, i32* %8, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  %9 = load i32, i32* @target_flags, align 4
  %and = and i32 %9, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %cmp7 = icmp ne i32 %bf.clear6, %cond
  br i1 %cmp7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load i32, i32* @target_flags, align 4
  %and9 = and i32 %10, 33554432
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 5, i32 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call = call %struct.rtx_def* @convert_to_mode(i32 %cond11, %struct.rtx_def* %11, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %size.addr, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %12 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %preferred_stack_boundary = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 53
  store i32 %12, i32* %preferred_stack_boundary, align 4
  %14 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %cmp13 = icmp slt i32 %14, 128
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.12
  %15 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call15 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %15, i64 15)
  %call16 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call15, %struct.rtx_def* null)
  store %struct.rtx_def* %call16, %struct.rtx_def** %size.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.12
  %16 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %cmp18 = icmp slt i32 %16, 128
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %17 = load i32, i32* %known_align.addr, align 4
  %18 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %rem = srem i32 %17, %18
  %cmp19 = icmp ne i32 %rem, 0
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.17
  %19 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call21 = call %struct.rtx_def* @round_push(%struct.rtx_def* %19)
  store %struct.rtx_def* %call21, %struct.rtx_def** %size.addr, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %lor.lhs.false
  call void @do_pending_stack_adjust()
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 2
  %21 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_stack_pointer_delta = getelementptr inbounds %struct.expr_status, %struct.expr_status* %21, i32 0, i32 2
  %22 = load i32, i32* %x_stack_pointer_delta, align 4
  %23 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %div = sdiv i32 %23, 8
  %rem23 = srem i32 %22, %div
  %tobool24 = icmp ne i32 %rem23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1306, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__FUNCTION__.allocate_dynamic_stack_space, i32 0, i32 0)) #3
  unreachable

if.end.26:                                        ; preds = %if.end.22
  %24 = load i32, i32* @flag_stack_check, align 4
  %tobool27 = icmp ne i32 %24, 0
  br i1 %tobool27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %if.end.26
  %25 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %25, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 8, i32 4
  %sub = sub nsw i32 4096, %cond31
  %26 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %26, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 8, i32 4
  %mul = mul nsw i32 75, %cond34
  %add = add nsw i32 %sub, %mul
  %conv = sext i32 %add to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  call void @probe_stack_range(i64 %conv, %struct.rtx_def* %27)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.28, %if.end.26
  %28 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp36 = icmp eq %struct.rtx_def* %28, null
  br i1 %cmp36, label %if.then.55, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.35
  %29 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load39 = load i32, i32* %30, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp ne i32 %bf.clear40, 61
  br i1 %cmp41, label %if.then.55, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %31 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %32 = load i32, i32* %rtuint, align 4
  %cmp44 = icmp ult i32 %32, 53
  br i1 %cmp44, label %if.then.55, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.43
  %33 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %35 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %35, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 5, i32 4
  %cmp53 = icmp ne i32 %bf.clear49, %cond52
  br i1 %cmp53, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %lor.lhs.false.46, %lor.lhs.false.43, %lor.lhs.false.38, %if.end.35
  %36 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %36, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 5, i32 4
  %call59 = call %struct.rtx_def* @gen_reg_rtx(i32 %cond58)
  store %struct.rtx_def* %call59, %struct.rtx_def** %target.addr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %lor.lhs.false.46
  %37 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %38 = load i32, i32* %known_align.addr, align 4
  call void @mark_reg_pointer(%struct.rtx_def* %37, i32 %38)
  %39 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %39, 256
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.end.60
  %40 = load i32, i32* @word_mode, align 4
  store i32 %40, i32* %mode, align 4
  %41 = load i32, i32* %mode, align 4
  %cmp64 = icmp eq i32 %41, 0
  br i1 %cmp64, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %if.then.63
  %42 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1234, i32 3), align 8
  %arrayidx67 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %42, i64 1
  %mode68 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx67, i32 0, i32 2
  %bf.load69 = load i16, i16* %mode68, align 8
  %bf.cast = zext i16 %bf.load69 to i32
  store i32 %bf.cast, i32* %mode, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %if.then.63
  %43 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1234, i32 3), align 8
  %arrayidx71 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %43, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx71, i32 0, i32 0
  %44 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  store i32 (%struct.rtx_def*, i32)* %44, i32 (%struct.rtx_def*, i32)** %pred, align 8
  %45 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %pred, align 8
  %tobool72 = icmp ne i32 (%struct.rtx_def*, i32)* %45, null
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %if.end.70
  %46 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %pred, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %48 = load i32, i32* %mode, align 4
  %call74 = call i32 %46(%struct.rtx_def* %47, i32 %48)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.78, label %if.then.76

if.then.76:                                       ; preds = %land.lhs.true.73
  %49 = load i32, i32* %mode, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call77 = call %struct.rtx_def* @copy_to_mode_reg(i32 %49, %struct.rtx_def* %50)
  store %struct.rtx_def* %call77, %struct.rtx_def** %size.addr, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %land.lhs.true.73, %if.end.70
  %51 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call79 = call %struct.rtx_def* @gen_allocate_stack(%struct.rtx_def* %51, %struct.rtx_def* %52)
  %call80 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call79)
  br label %if.end.100

if.else:                                          ; preds = %if.end.60
  %53 = load %struct.function*, %struct.function** @cfun, align 8
  %limit_stack = getelementptr inbounds %struct.function, %struct.function* %53, i32 0, i32 56
  %54 = bitcast i24* %limit_stack to i32*
  %bf.load81 = load i32, i32* %54, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 15
  %bf.clear83 = and i32 %bf.lshr82, 1
  %tobool84 = icmp ne i32 %bf.clear83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.98

if.then.85:                                       ; preds = %if.else
  %call86 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call86, %struct.rtx_def** %space_available, align 8
  %55 = load i32, i32* @target_flags, align 4
  %and87 = and i32 %55, 33554432
  %tobool88 = icmp ne i32 %and87, 0
  %cond89 = select i1 %tobool88, i32 5, i32 4
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** @stack_limit_rtx, align 8
  %call90 = call %struct.rtx_def* @expand_binop(i32 %cond89, %struct.optab* %56, %struct.rtx_def* %57, %struct.rtx_def* %58, %struct.rtx_def* null, i32 1, i32 2)
  store %struct.rtx_def* %call90, %struct.rtx_def** %available, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %available, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %61 = load i32, i32* @target_flags, align 4
  %and91 = and i32 %61, 33554432
  %tobool92 = icmp ne i32 %and91, 0
  %cond93 = select i1 %tobool92, i32 5, i32 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %space_available, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %59, %struct.rtx_def* %60, i32 108, %struct.rtx_def* null, i32 %cond93, i32 1, %struct.rtx_def* %62)
  %call94 = call %struct.rtx_def* @gen_trap()
  %call95 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call94)
  %call96 = call %struct.rtx_def* @emit_barrier()
  %63 = load %struct.rtx_def*, %struct.rtx_def** %space_available, align 8
  %call97 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %63)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.85, %if.else
  %64 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  call void @anti_adjust_stack(%struct.rtx_def* %64)
  %65 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %call99 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %65, %struct.rtx_def* %66)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.98, %if.end.78
  %67 = load i32, i32* @ix86_preferred_stack_boundary, align 4
  %cmp101 = icmp slt i32 %67, 128
  br i1 %cmp101, label %if.then.103, label %if.end.119

if.then.103:                                      ; preds = %if.end.100
  %68 = load i32, i32* @target_flags, align 4
  %and104 = and i32 %68, 33554432
  %tobool105 = icmp ne i32 %and104, 0
  %cond106 = select i1 %tobool105, i32 5, i32 4
  %69 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call107 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 15)
  %call108 = call %struct.rtx_def* @expand_binop(i32 %cond106, %struct.optab* %69, %struct.rtx_def* %70, %struct.rtx_def* %call107, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call108, %struct.rtx_def** %target.addr, align 8
  %71 = load i32, i32* @target_flags, align 4
  %and109 = and i32 %71, 33554432
  %tobool110 = icmp ne i32 %and109, 0
  %cond111 = select i1 %tobool110, i32 5, i32 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call112 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 16)
  %call113 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %cond111, %struct.rtx_def* %72, %struct.rtx_def* %call112, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call113, %struct.rtx_def** %target.addr, align 8
  %73 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %73, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 5, i32 4
  %74 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call117 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 16)
  %call118 = call %struct.rtx_def* @expand_mult(i32 %cond116, %struct.rtx_def* %74, %struct.rtx_def* %call117, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call118, %struct.rtx_def** %target.addr, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.103, %if.end.100
  %75 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_slots = getelementptr inbounds %struct.function, %struct.function* %75, i32 0, i32 20
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_slots, align 8
  %cmp120 = icmp ne %struct.rtx_def* %76, null
  br i1 %cmp120, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.end.119
  %77 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_stack_level = getelementptr inbounds %struct.function, %struct.function* %77, i32 0, i32 22
  call void @emit_stack_save(i32 2, %struct.rtx_def** %x_nonlocal_goto_stack_level, %struct.rtx_def* null)
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.122, %if.end.119
  %78 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.123, %if.then
  %79 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %79
}

declare %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) #1

declare void @do_pending_stack_adjust() #1

; Function Attrs: nounwind uwtable
define void @probe_stack_range(i64 %first, %struct.rtx_def* %size) #0 {
entry:
  %first.addr = alloca i64, align 8
  %size.addr = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  %offset = alloca i64, align 8
  %test_addr = alloca %struct.rtx_def*, align 8
  %last_addr = alloca %struct.rtx_def*, align 8
  %incr = alloca %struct.rtx_def*, align 8
  %loop_lab = alloca %struct.rtx_def*, align 8
  %test_lab = alloca %struct.rtx_def*, align 8
  %end_lab = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store i64 %first, i64* %first.addr, align 8
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %4 = load i32, i32* @target_flags, align 4
  %and = and i32 %4, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %cmp4 = icmp ne i32 %bf.clear3, %cond
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %5, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  %cond7 = select i1 %tobool6, i32 5, i32 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call = call %struct.rtx_def* @convert_to_mode(i32 %cond7, %struct.rtx_def* %6, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** @stack_check_libfunc, align 8
  %cmp8 = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %8 = load i32, i32* @target_flags, align 4
  %and10 = and i32 %8, 33554432
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 5, i32 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %11 = load i64, i64* %first.addr, align 8
  %call13 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %10, i64 %11)
  %call14 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 76, i32 %cond12, %struct.rtx_def* %9, %struct.rtx_def* %call13)
  %call15 = call %struct.rtx_def* @memory_address(i32 2, %struct.rtx_def* %call14)
  store %struct.rtx_def* %call15, %struct.rtx_def** %addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** @stack_check_libfunc, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %14 = load i32, i32* @ptr_mode, align 4
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %12, i32 0, i32 0, i32 1, %struct.rtx_def* %13, i32 %14)
  br label %if.end.84

if.else:                                          ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load16 = load i32, i32* %16, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 54
  br i1 %cmp18, label %land.lhs.true.19, label %if.else.37

land.lhs.true.19:                                 ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %18 = load i64, i64* %rtwint, align 8
  %cmp20 = icmp slt i64 %18, 40960
  br i1 %cmp20, label %if.then.21, label %if.else.37

if.then.21:                                       ; preds = %land.lhs.true.19
  %19 = load i64, i64* %first.addr, align 8
  %add = add nsw i64 %19, 4096
  store i64 %add, i64* %offset, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %20 = load i64, i64* %offset, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtwint24 = bitcast %union.rtunion_def* %arrayidx23 to i64*
  %22 = load i64, i64* %rtwint24, align 8
  %cmp25 = icmp slt i64 %20, %22
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %23, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  %cond28 = select i1 %tobool27, i32 5, i32 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %25 = load i64, i64* %offset, align 8
  %call29 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %25)
  %call30 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond28, %struct.rtx_def* %24, %struct.rtx_def* %call29)
  call void @emit_stack_probe(%struct.rtx_def* %call30)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i64, i64* %offset, align 8
  %add31 = add nsw i64 %26, 4096
  store i64 %add31, i64* %offset, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %27, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 5, i32 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %30 = load i64, i64* %first.addr, align 8
  %call35 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %29, i64 %30)
  %call36 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond34, %struct.rtx_def* %28, %struct.rtx_def* %call35)
  call void @emit_stack_probe(%struct.rtx_def* %call36)
  br label %if.end.83

if.else.37:                                       ; preds = %land.lhs.true.19, %if.else
  %31 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %31, 33554432
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 5, i32 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %33 = load i64, i64* %first.addr, align 8
  %add41 = add nsw i64 %33, 4096
  %call42 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add41)
  %call43 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond40, %struct.rtx_def* %32, %struct.rtx_def* %call42)
  %call44 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call43, %struct.rtx_def* null)
  store %struct.rtx_def* %call44, %struct.rtx_def** %test_addr, align 8
  %34 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %34, 33554432
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 5, i32 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %37 = load i64, i64* %first.addr, align 8
  %call48 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %36, i64 %37)
  %call49 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %cond47, %struct.rtx_def* %35, %struct.rtx_def* %call48)
  %call50 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call49, %struct.rtx_def* null)
  store %struct.rtx_def* %call50, %struct.rtx_def** %last_addr, align 8
  %call51 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 4096)
  store %struct.rtx_def* %call51, %struct.rtx_def** %incr, align 8
  %call52 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call52, %struct.rtx_def** %loop_lab, align 8
  %call53 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call53, %struct.rtx_def** %test_lab, align 8
  %call54 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call54, %struct.rtx_def** %end_lab, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load55 = load i32, i32* %39, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp ne i32 %bf.clear56, 61
  br i1 %cmp57, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.37
  %40 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx59 to i32*
  %41 = load i32, i32* %rtuint, align 4
  %cmp60 = icmp ult i32 %41, 53
  br i1 %cmp60, label %if.then.61, label %if.end.66

if.then.61:                                       ; preds = %lor.lhs.false, %if.else.37
  %42 = load i32, i32* @target_flags, align 4
  %and62 = and i32 %42, 33554432
  %tobool63 = icmp ne i32 %and62, 0
  %cond64 = select i1 %tobool63, i32 5, i32 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %call65 = call %struct.rtx_def* @force_reg(i32 %cond64, %struct.rtx_def* %43)
  store %struct.rtx_def* %call65, %struct.rtx_def** %test_addr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.61, %lor.lhs.false
  %call67 = call %struct.rtx_def* @emit_note(i8* null, i32 -96)
  %44 = load %struct.rtx_def*, %struct.rtx_def** %test_lab, align 8
  call void @emit_jump(%struct.rtx_def* %44)
  %45 = load %struct.rtx_def*, %struct.rtx_def** %loop_lab, align 8
  %call68 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %45)
  %46 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  call void @emit_stack_probe(%struct.rtx_def* %46)
  %call69 = call %struct.rtx_def* @emit_note(i8* null, i32 -94)
  %47 = load i32, i32* @target_flags, align 4
  %and70 = and i32 %47, 33554432
  %tobool71 = icmp ne i32 %and70, 0
  %cond72 = select i1 %tobool71, i32 5, i32 4
  %48 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %incr, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %call73 = call %struct.rtx_def* @expand_binop(i32 %cond72, %struct.optab* %48, %struct.rtx_def* %49, %struct.rtx_def* %50, %struct.rtx_def* %51, i32 1, i32 2)
  store %struct.rtx_def* %call73, %struct.rtx_def** %temp, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %cmp74 = icmp ne %struct.rtx_def* %52, %53
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.66
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1577, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.probe_stack_range, i32 0, i32 0)) #3
  unreachable

if.end.76:                                        ; preds = %if.end.66
  %54 = load %struct.rtx_def*, %struct.rtx_def** %test_lab, align 8
  %call77 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %54)
  %55 = load %struct.rtx_def*, %struct.rtx_def** %test_addr, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %last_addr, align 8
  %57 = load i32, i32* @target_flags, align 4
  %and78 = and i32 %57, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  %cond80 = select i1 %tobool79, i32 5, i32 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %loop_lab, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %55, %struct.rtx_def* %56, i32 109, %struct.rtx_def* null, i32 %cond80, i32 1, %struct.rtx_def* %58)
  %59 = load %struct.rtx_def*, %struct.rtx_def** %end_lab, align 8
  call void @emit_jump(%struct.rtx_def* %59)
  %call81 = call %struct.rtx_def* @emit_note(i8* null, i32 -95)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %end_lab, align 8
  %call82 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %60)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %last_addr, align 8
  call void @emit_stack_probe(%struct.rtx_def* %61)
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.76, %for.end
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.9
  ret void
}

declare %struct.rtx_def* @gen_allocate_stack(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_label_rtx() #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_trap() #1

declare %struct.rtx_def* @emit_barrier() #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @set_stack_check_libfunc(%struct.rtx_def* %libfunc) #0 {
entry:
  %libfunc.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %libfunc, %struct.rtx_def** %libfunc.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %libfunc.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** @stack_check_libfunc, align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** @stack_check_libfunc, i32 1)
  ret void
}

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

declare %struct.rtx_def* @gen_rtx(i32, i32, ...) #1

declare void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @emit_stack_probe(%struct.rtx_def* %address) #0 {
entry:
  %address.addr = alloca %struct.rtx_def*, align 8
  %memref = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %address, %struct.rtx_def** %address.addr, align 8
  %0 = load i32, i32* @word_mode, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %address.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_MEM(i32 %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %memref, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %memref, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, -134217729
  %bf.set = or i32 %bf.clear, 134217728
  store i32 %bf.set, i32* %3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %memref, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call1 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %4, %struct.rtx_def* %5)
  ret void
}

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare void @emit_jump(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @hard_function_value(%union.tree_node* %valtype, %union.tree_node* %func, i32 %outgoing) #0 {
entry:
  %valtype.addr = alloca %union.tree_node*, align 8
  %func.addr = alloca %union.tree_node*, align 8
  %outgoing.addr = alloca i32, align 4
  %val = alloca %struct.rtx_def*, align 8
  %bytes = alloca i64, align 8
  %tmpmode = alloca i32, align 4
  store %union.tree_node* %valtype, %union.tree_node** %valtype.addr, align 8
  store %union.tree_node* %func, %union.tree_node** %func.addr, align 8
  store i32 %outgoing, i32* %outgoing.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %valtype.addr, align 8
  %call = call %struct.rtx_def* @ix86_function_value(%union.tree_node* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %val, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp eq i32 %bf.clear2, 51
  br i1 %cmp3, label %if.then, label %if.end.18

if.then:                                          ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %valtype.addr, align 8
  %call4 = call i64 @int_size_in_bytes(%union.tree_node* %5)
  store i64 %call4, i64* %bytes, align 8
  %6 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %6, i32* %tmpmode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %tmpmode, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %tmpmode, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i64
  %10 = load i64, i64* %bytes, align 8
  %cmp6 = icmp uge i64 %conv, %10
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %tmpmode, align 4
  %idxprom9 = sext i32 %11 to i64
  %arrayidx10 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom9
  %12 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %12 to i32
  store i32 %conv11, i32* %tmpmode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %13 = load i32, i32* %tmpmode, align 4
  %cmp12 = icmp eq i32 %13, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1635, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.hard_function_value, i32 0, i32 0)) #3
  unreachable

if.end.15:                                        ; preds = %for.end
  %14 = load i32, i32* %tmpmode, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load16 = load i32, i32* %16, align 8
  %bf.value = and i32 %14, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear17 = and i32 %bf.load16, -16711681
  %bf.set = or i32 %bf.clear17, %bf.shl
  store i32 %bf.set, i32* %16, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.15, %land.lhs.true, %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  ret %struct.rtx_def* %17
}

declare %struct.rtx_def* @ix86_function_value(%union.tree_node*) #1

declare i64 @int_size_in_bytes(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @hard_libcall_value(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @ix86_libcall_value(i32 %0)
  ret %struct.rtx_def* %call
}

declare %struct.rtx_def* @ix86_libcall_value(i32) #1

; Function Attrs: nounwind uwtable
define i32 @rtx_to_tree_code(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  %tcode = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 75, label %sw.bb
    i32 76, label %sw.bb.1
    i32 78, label %sw.bb.2
    i32 79, label %sw.bb.3
    i32 92, label %sw.bb.4
    i32 93, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  store i32 59, i32* %tcode, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 60, i32* %tcode, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 61, i32* %tcode, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  store i32 70, i32* %tcode, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  store i32 78, i32* %tcode, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  store i32 79, i32* %tcode, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i32 147, i32* %tcode, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %tcode, align 4
  ret i32 %1
}

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
