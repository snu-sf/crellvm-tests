; ModuleID = 'reg-stack.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
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
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.block_info_def = type { %struct.stack_def, %struct.stack_def, i64, i32, i32 }
%struct.stack_def = type { i32, i64, [8 x i8] }

@rtx_class = external constant [153 x i8], align 16
@stack_regs_mentioned_data = internal global %struct.varray_head_tag* null, align 8
@optimize = external global i32, align 4
@regs_ever_live = external global [53 x i8], align 16
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@class_narrowest_mode = external constant [9 x i32], align 16
@FP_mode_reg = internal global [8 x [59 x %struct.rtx_def*]] zeroinitializer, align 16
@mode_wider_mode = external constant [59 x i8], align 16
@ix86_flags_rtx = internal global %struct.rtx_def* null, align 8
@flag_pic = external global i32, align 4
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@nan = internal global %struct.rtx_def* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"stack_regs_mentioned cache\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@current_function_decl = external global %union.tree_node*, align 8
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@current_block = internal global %struct.basic_block_def* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"\0ABasic block %d\0AInput stack: \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"reg-stack.c\00", align 1
@__FUNCTION__.convert_regs_1 = private unnamed_addr constant [15 x i8] c"convert_regs_1\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"  insn %d input stack: \00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Expected live registers [\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" ]\0AOutput stack: \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Emitting insn initializing reg %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Edge %d->%d: \00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"new block; copying stack position\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"new block; pops needed\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"no changes needed\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"correcting stack to \00", align 1
@__FUNCTION__.compensate_edge = private unnamed_addr constant [16 x i8] c"compensate_edge\00", align 1
@__FUNCTION__.change_stack = private unnamed_addr constant [13 x i8] c"change_stack\00", align 1
@__FUNCTION__.emit_pop_insn = private unnamed_addr constant [14 x i8] c"emit_pop_insn\00", align 1
@__FUNCTION__.get_hard_regnum = private unnamed_addr constant [16 x i8] c"get_hard_regnum\00", align 1
@__FUNCTION__.emit_swap_insn = private unnamed_addr constant [15 x i8] c"emit_swap_insn\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"uninitialized\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"empty\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"[ \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@which_alternative = external global i32, align 4
@recog_data = external global %struct.recog_data, align 8
@__FUNCTION__.subst_asm_stack_regs = private unnamed_addr constant [21 x i8] c"subst_asm_stack_regs\00", align 1
@recog_op_alt = external global [30 x [30 x %struct.operand_alternative]], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@reg_class_size = external global [25 x i32], align 16
@.str.18 = private unnamed_addr constant [52 x i8] c"output constraint %d must specify a single register\00", align 1
@.str.19 = private unnamed_addr constant [68 x i8] c"output constraint %d cannot be specified together with \22%s\22 clobber\00", align 1
@reg_names = external global [53 x i8*], align 16
@.str.20 = private unnamed_addr constant [44 x i8] c"output regs must be grouped at top of stack\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"implicitly popped regs must be grouped at top of stack\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"output operand %d must use `&' constraint\00", align 1
@__FUNCTION__.get_asm_operand_n_inputs = private unnamed_addr constant [25 x i8] c"get_asm_operand_n_inputs\00", align 1
@__FUNCTION__.replace_reg = private unnamed_addr constant [12 x i8] c"replace_reg\00", align 1
@__FUNCTION__.subst_stack_regs_pat = private unnamed_addr constant [21 x i8] c"subst_stack_regs_pat\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.move_for_stack_reg = private unnamed_addr constant [19 x i8] c"move_for_stack_reg\00", align 1
@__FUNCTION__.remove_regno_note = private unnamed_addr constant [18 x i8] c"remove_regno_note\00", align 1

; Function Attrs: nounwind uwtable
define i32 @stack_regs_mentioned(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %max = alloca i32, align 4
  %test = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %tobool = icmp ne %struct.varray_head_tag* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %5 = load i32, i32* %rtint, align 4
  store i32 %5, i32* %uid, align 4
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements, align 8
  %conv3 = trunc i64 %7 to i32
  store i32 %conv3, i32* %max, align 4
  %8 = load i32, i32* %uid, align 4
  %9 = load i32, i32* %max, align 4
  %cmp4 = icmp uge i32 %8, %9
  br i1 %cmp4, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %10 = load i32, i32* %uid, align 4
  %11 = load i32, i32* %uid, align 4
  %div = udiv i32 %11, 20
  %add = add i32 %10, %div
  store i32 %add, i32* %max, align 4
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %13 = load i32, i32* %max, align 4
  %conv7 = zext i32 %13 to i64
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %12, i64 %conv7)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %14 = load i32, i32* %uid, align 4
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %c = bitcast %union.varray_data_tag* %data to [1 x i8]*
  %arrayidx10 = getelementptr inbounds [1 x i8], [1 x i8]* %c, i32 0, i64 %idxprom9
  %16 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %16 to i32
  store i32 %conv11, i32* %test, align 4
  %17 = load i32, i32* %test, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end.8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call17 = call i32 @stack_regs_mentioned_p(%struct.rtx_def* %19)
  %tobool18 = icmp ne i32 %call17, 0
  %cond = select i1 %tobool18, i32 1, i32 2
  store i32 %cond, i32* %test, align 4
  %20 = load i32, i32* %test, align 4
  %conv19 = trunc i32 %20 to i8
  %21 = load i32, i32* %uid, align 4
  %idxprom20 = zext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %data21 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %c22 = bitcast %union.varray_data_tag* %data21 to [1 x i8]*
  %arrayidx23 = getelementptr inbounds [1 x i8], [1 x i8]* %c22, i32 0, i64 %idxprom20
  store i8 %conv19, i8* %arrayidx23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.14, %if.end.8
  %23 = load i32, i32* %test, align 4
  %cmp25 = icmp eq i32 %23, 1
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @stack_regs_mentioned_p(%struct.rtx_def* %pat) #0 {
entry:
  %retval = alloca i32, align 4
  %pat.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp uge i32 %3, 8
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %5 = load i32, i32* %rtuint5, align 4
  %cmp6 = icmp ule i32 %5, 15
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %idxprom = sext i32 %bf.clear8 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx9, align 8
  store i8* %8, i8** %fmt, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %idxprom12 = sext i32 %bf.clear11 to i64
  %arrayidx13 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom12
  %11 = load i8, i8* %arrayidx13, align 1
  %conv = zext i8 %11 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.52, %if.end
  %12 = load i32, i32* %i, align 4
  %cmp14 = icmp sge i32 %12, 0
  br i1 %cmp14, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %13 to i64
  %14 = load i8*, i8** %fmt, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %14, i64 %idxprom16
  %15 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %15 to i32
  %cmp19 = icmp eq i32 %conv18, 69
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 %idxprom22
  %rtvec = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %18 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %18, i32 0, i32 0
  %19 = load i32, i32* %num_elem, align 4
  %sub25 = sub nsw i32 %19, 1
  store i32 %sub25, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.21
  %20 = load i32, i32* %j, align 4
  %cmp27 = icmp sge i32 %20, 0
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %21 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 %idxprom31
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom30
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx35, align 8
  %call = call i32 @stack_regs_mentioned_p(%struct.rtx_def* %25)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body.29
  store i32 1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %for.body.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %26 = load i32, i32* %j, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.51

if.else:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %27 to i64
  %28 = load i8*, i8** %fmt, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %28, i64 %idxprom38
  %29 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %29 to i32
  %cmp41 = icmp eq i32 %conv40, 101
  br i1 %cmp41, label %land.lhs.true.43, label %if.end.50

land.lhs.true.43:                                 ; preds = %if.else
  %30 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 %idxprom44
  %rtx = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call47 = call i32 @stack_regs_mentioned_p(%struct.rtx_def* %32)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.43
  store i32 1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true.43, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.end
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %33 = load i32, i32* %i, align 4
  %dec53 = add nsw i32 %33, -1
  store i32 %dec53, i32* %i, align 4
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.54, %if.then.49, %if.then.36, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define void @reg_to_stack(%struct.rtx_def* %first, %struct._IO_FILE* %file) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %max_uid = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %mode = alloca i32, align 4
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %tobool1 = icmp ne %struct.varray_head_tag* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %3 = bitcast %struct.varray_head_tag* %2 to i8*
  call void @free(i8* %3) #3
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %4 = load i32, i32* @optimize, align 4
  %tobool4 = icmp ne i32 %4, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  call void @split_all_insns(i32 0)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.3
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %5 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %5, 15
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %tobool7 = icmp ne i8 %7, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %9 = load i32, i32* %i, align 4
  %cmp10 = icmp sgt i32 %9, 15
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.end
  br label %return

if.end.12:                                        ; preds = %for.end
  %10 = load i32, i32* @optimize, align 4
  %tobool13 = icmp ne i32 %10, 0
  br i1 %tobool13, label %if.end.16, label %if.then.14

if.then.14:                                       ; preds = %if.end.12
  %11 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %call = call i32 @max_reg_num()
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @find_basic_blocks(%struct.rtx_def* %11, i32 %call, %struct._IO_FILE* %12)
  %call15 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* null, i32 1)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @life_analysis(%struct.rtx_def* %13, %struct._IO_FILE* %14, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %call17 = call zeroext i1 @mark_dfs_back_edges()
  call void @alloc_aux_for_blocks(i32 64)
  %15 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %15, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.34, %if.end.16
  %16 = load i32, i32* %i, align 4
  %cmp19 = icmp sge i32 %16, 0
  br i1 %cmp19, label %for.body.20, label %for.end.35

for.body.20:                                      ; preds = %for.cond.18
  %17 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb22 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx23 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb22, i32 0, i64 %idxprom21
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx23, align 8
  store %struct.basic_block_def* %19, %struct.basic_block_def** %bb, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 4
  %21 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.32, %for.body.20
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool25 = icmp ne %struct.edge_def* %22, null
  br i1 %tobool25, label %for.body.26, label %for.end.33

for.body.26:                                      ; preds = %for.cond.24
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 6
  %24 = load i32, i32* %flags, align 4
  %and = and i32 %24, 32
  %tobool27 = icmp ne i32 %and, 0
  br i1 %tobool27, label %if.end.31, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.26
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 2
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp28 = icmp ne %struct.basic_block_def* %26, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %land.lhs.true
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 10
  %28 = load i8*, i8** %aux, align 8
  %29 = bitcast i8* %28 to %struct.block_info_def*
  %predecessors = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %29, i32 0, i32 4
  %30 = load i32, i32* %predecessors, align 4
  %inc30 = add nsw i32 %30, 1
  store i32 %inc30, i32* %predecessors, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %land.lhs.true, %for.body.26
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 0
  %32 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %32, %struct.edge_def** %e, align 8
  br label %for.cond.24

for.end.33:                                       ; preds = %for.cond.24
  br label %for.inc.34

for.inc.34:                                       ; preds = %for.end.33
  %33 = load i32, i32* %i, align 4
  %dec = add nsw i32 %33, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.18

for.end.35:                                       ; preds = %for.cond.18
  store i32 8, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.67, %for.end.35
  %34 = load i32, i32* %i, align 4
  %cmp37 = icmp sle i32 %34, 15
  br i1 %cmp37, label %for.body.38, label %for.end.69

for.body.38:                                      ; preds = %for.cond.36
  %35 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %35, i32* %mode, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.48, %for.body.38
  %36 = load i32, i32* %mode, align 4
  %cmp40 = icmp ne i32 %36, 0
  br i1 %cmp40, label %for.body.41, label %for.end.51

for.body.41:                                      ; preds = %for.cond.39
  %37 = load i32, i32* %mode, align 4
  %38 = load i32, i32* %i, align 4
  %call42 = call %struct.rtx_def* @gen_rtx_REG(i32 %37, i32 %38)
  %39 = load i32, i32* %mode, align 4
  %idxprom43 = sext i32 %39 to i64
  %40 = load i32, i32* %i, align 4
  %sub44 = sub nsw i32 %40, 8
  %idxprom45 = sext i32 %sub44 to i64
  %arrayidx46 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom45
  %arrayidx47 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx46, i32 0, i64 %idxprom43
  store %struct.rtx_def* %call42, %struct.rtx_def** %arrayidx47, align 8
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.41
  %41 = load i32, i32* %mode, align 4
  %idxprom49 = sext i32 %41 to i64
  %arrayidx50 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom49
  %42 = load i8, i8* %arrayidx50, align 1
  %conv = zext i8 %42 to i32
  store i32 %conv, i32* %mode, align 4
  br label %for.cond.39

for.end.51:                                       ; preds = %for.cond.39
  %43 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 6), align 4
  store i32 %43, i32* %mode, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.62, %for.end.51
  %44 = load i32, i32* %mode, align 4
  %cmp53 = icmp ne i32 %44, 0
  br i1 %cmp53, label %for.body.55, label %for.end.66

for.body.55:                                      ; preds = %for.cond.52
  %45 = load i32, i32* %mode, align 4
  %46 = load i32, i32* %i, align 4
  %call56 = call %struct.rtx_def* @gen_rtx_REG(i32 %45, i32 %46)
  %47 = load i32, i32* %mode, align 4
  %idxprom57 = sext i32 %47 to i64
  %48 = load i32, i32* %i, align 4
  %sub58 = sub nsw i32 %48, 8
  %idxprom59 = sext i32 %sub58 to i64
  %arrayidx60 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx60, i32 0, i64 %idxprom57
  store %struct.rtx_def* %call56, %struct.rtx_def** %arrayidx61, align 8
  br label %for.inc.62

for.inc.62:                                       ; preds = %for.body.55
  %49 = load i32, i32* %mode, align 4
  %idxprom63 = sext i32 %49 to i64
  %arrayidx64 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom63
  %50 = load i8, i8* %arrayidx64, align 1
  %conv65 = zext i8 %50 to i32
  store i32 %conv65, i32* %mode, align 4
  br label %for.cond.52

for.end.66:                                       ; preds = %for.cond.52
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.end.66
  %51 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %51, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.36

for.end.69:                                       ; preds = %for.cond.36
  %call70 = call %struct.rtx_def* @gen_rtx_REG(i32 52, i32 17)
  store %struct.rtx_def* %call70, %struct.rtx_def** @ix86_flags_rtx, align 8
  %52 = load i32, i32* @flag_pic, align 4
  %tobool71 = icmp ne i32 %52, 0
  br i1 %tobool71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %for.end.69
  %53 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0, i64 15), align 8
  store %struct.rtx_def* %53, %struct.rtx_def** @nan, align 8
  br label %if.end.76

if.else:                                          ; preds = %for.end.69
  %call73 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 2143289344)
  %call74 = call %struct.rtx_def* @gen_lowpart(i32 15, %struct.rtx_def* %call73)
  store %struct.rtx_def* %call74, %struct.rtx_def** @nan, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** @nan, align 8
  %call75 = call %struct.rtx_def* @force_const_mem(i32 15, %struct.rtx_def* %54)
  store %struct.rtx_def* %call75, %struct.rtx_def** @nan, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.72
  %call77 = call i32 @get_max_uid()
  store i32 %call77, i32* %max_uid, align 4
  %55 = load i32, i32* %max_uid, align 4
  %add = add nsw i32 %55, 1
  %conv78 = sext i32 %add to i64
  %call79 = call %struct.varray_head_tag* @varray_init(i64 %conv78, i64 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store %struct.varray_head_tag* %call79, %struct.varray_head_tag** @stack_regs_mentioned_data, align 8
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call80 = call i32 @convert_regs(%struct._IO_FILE* %56)
  call void @free_aux_for_blocks()
  br label %return

return:                                           ; preds = %if.end.76, %if.then.11
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare void @split_all_insns(i32) #1

declare void @find_basic_blocks(%struct.rtx_def*, i32, %struct._IO_FILE*) #1

declare i32 @max_reg_num() #1

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #1

declare void @life_analysis(%struct.rtx_def*, %struct._IO_FILE*, i32) #1

declare zeroext i1 @mark_dfs_back_edges() #1

declare void @alloc_aux_for_blocks(i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @gen_lowpart(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @force_const_mem(i32, %struct.rtx_def*) #1

declare i32 @get_max_uid() #1

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @convert_regs(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %inserted = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %bi = alloca %struct.block_info_def*, align 8
  %reg = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @convert_regs_entry()
  store i32 %call, i32* %inserted, align 4
  call void @convert_regs_exit()
  %0 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  %1 = bitcast i8* %0 to %struct.block_info_def*
  %done = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %1, i32 0, i32 3
  store i32 1, i32* %done, align 4
  %2 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %2, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 3
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call1 = call i32 @convert_regs_2(%struct._IO_FILE* %4, %struct.basic_block_def* %6)
  %7 = load i32, i32* %inserted, align 4
  %or = or i32 %7, %call1
  store i32 %or, i32* %inserted, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 1
  %9 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %9, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.23, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body.3, label %for.end.25

for.body.3:                                       ; preds = %for.cond.2
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %14, %struct.basic_block_def** %b, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 10
  %16 = load i8*, i8** %aux, align 8
  %17 = bitcast i8* %16 to %struct.block_info_def*
  store %struct.block_info_def* %17, %struct.block_info_def** %bi, align 8
  %18 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %done4 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %18, i32 0, i32 3
  %19 = load i32, i32* %done4, align 4
  %tobool5 = icmp ne i32 %19, 0
  br i1 %tobool5, label %if.end.22, label %if.then

if.then:                                          ; preds = %for.body.3
  %20 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %20, i32 0, i32 0
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in, i32 0, i32 0
  store i32 -1, i32* %top, align 4
  store i32 15, i32* %reg, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.18, %if.then
  %21 = load i32, i32* %reg, align 4
  %cmp7 = icmp sge i32 %21, 8
  br i1 %cmp7, label %for.body.8, label %for.end.19

for.body.8:                                       ; preds = %for.cond.6
  %22 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in9 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %22, i32 0, i32 0
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in9, i32 0, i32 1
  %23 = load i64, i64* %reg_set, align 8
  %24 = load i32, i32* %reg, align 4
  %sh_prom = zext i32 %24 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %23, %shl
  %tobool10 = icmp ne i64 %and, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.8
  %25 = load i32, i32* %reg, align 4
  %conv = trunc i32 %25 to i8
  %26 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in12 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %26, i32 0, i32 0
  %top13 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in12, i32 0, i32 0
  %27 = load i32, i32* %top13, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %top13, align 4
  %idxprom14 = sext i32 %inc to i64
  %28 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in15 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %28, i32 0, i32 0
  %reg16 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in15, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [8 x i8], [8 x i8]* %reg16, i32 0, i64 %idxprom14
  store i8 %conv, i8* %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body.8
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end
  %29 = load i32, i32* %reg, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %reg, align 4
  br label %for.cond.6

for.end.19:                                       ; preds = %for.cond.6
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call20 = call i32 @convert_regs_2(%struct._IO_FILE* %30, %struct.basic_block_def* %31)
  %32 = load i32, i32* %inserted, align 4
  %or21 = or i32 %32, %call20
  store i32 %or21, i32* %inserted, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %for.end.19, %for.body.3
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %33 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %33, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.2

for.end.25:                                       ; preds = %for.cond.2
  call void @fixup_abnormal_edges()
  %34 = load i32, i32* %inserted, align 4
  %tobool26 = icmp ne i32 %34, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.end.25
  call void @commit_edge_insertions()
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.end.25
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool29 = icmp ne %struct._IO_FILE* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %if.end.28
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call31 = call i32 @fputc(i32 10, %struct._IO_FILE* %36)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %if.end.28
  %37 = load i32, i32* %inserted, align 4
  ret i32 %37
}

declare void @free_aux_for_blocks() #1

; Function Attrs: nounwind uwtable
define internal i32 @convert_regs_entry() #0 {
entry:
  %inserted = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %block = alloca %struct.basic_block_def*, align 8
  %bi = alloca %struct.block_info_def*, align 8
  %reg = alloca i32, align 4
  %block17 = alloca %struct.basic_block_def*, align 8
  %bi18 = alloca %struct.block_info_def*, align 8
  %reg20 = alloca i32, align 4
  %top21 = alloca i32, align 4
  %init = alloca %struct.rtx_def*, align 8
  store i32 0, i32* %inserted, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %block, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  %6 = load i8*, i8** %aux, align 8
  %7 = bitcast i8* %6 to %struct.block_info_def*
  store %struct.block_info_def* %7, %struct.block_info_def** %bi, align 8
  %8 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %8, i32 0, i32 0
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in, i32 0, i32 0
  store i32 -2, i32* %top, align 4
  store i32 8, i32* %reg, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %9 = load i32, i32* %reg, align 4
  %cmp2 = icmp sle i32 %9, 15
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 9
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %12 = load i32, i32* %reg, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %11, i32 %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %13 = load i32, i32* %reg, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  %14 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %out_reg_set = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %14, i32 0, i32 2
  %15 = load i64, i64* %out_reg_set, align 8
  %or = or i64 %15, %shl
  store i64 %or, i64* %out_reg_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 8
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %18 = load i32, i32* %reg, align 4
  %call4 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %17, i32 %18)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.11

if.then.6:                                        ; preds = %if.end
  %19 = load i32, i32* %reg, align 4
  %sh_prom7 = zext i32 %19 to i64
  %shl8 = shl i64 1, %sh_prom7
  %20 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in9 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %20, i32 0, i32 0
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in9, i32 0, i32 1
  %21 = load i64, i64* %reg_set, align 8
  %or10 = or i64 %21, %shl8
  store i64 %or10, i64* %reg_set, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %22 = load i32, i32* %reg, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %reg, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %dec = add nsw i32 %23, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %24 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %24, %struct.edge_def** %e, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.43, %for.end.13
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool15 = icmp ne %struct.edge_def* %25, null
  br i1 %tobool15, label %for.body.16, label %for.end.44

for.body.16:                                      ; preds = %for.cond.14
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 3
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %27, %struct.basic_block_def** %block17, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %block17, align 8
  %aux19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 10
  %29 = load i8*, i8** %aux19, align 8
  %30 = bitcast i8* %29 to %struct.block_info_def*
  store %struct.block_info_def* %30, %struct.block_info_def** %bi18, align 8
  store i32 -1, i32* %top21, align 4
  store i32 15, i32* %reg20, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.38, %for.body.16
  %31 = load i32, i32* %reg20, align 4
  %cmp23 = icmp sge i32 %31, 8
  br i1 %cmp23, label %for.body.24, label %for.end.40

for.body.24:                                      ; preds = %for.cond.22
  %32 = load %struct.block_info_def*, %struct.block_info_def** %bi18, align 8
  %stack_in25 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %32, i32 0, i32 0
  %reg_set26 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in25, i32 0, i32 1
  %33 = load i64, i64* %reg_set26, align 8
  %34 = load i32, i32* %reg20, align 4
  %sh_prom27 = zext i32 %34 to i64
  %shl28 = shl i64 1, %sh_prom27
  %and = and i64 %33, %shl28
  %tobool29 = icmp ne i64 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %for.body.24
  %35 = load i32, i32* %reg20, align 4
  %conv = trunc i32 %35 to i8
  %36 = load i32, i32* %top21, align 4
  %inc31 = add nsw i32 %36, 1
  store i32 %inc31, i32* %top21, align 4
  %idxprom32 = sext i32 %inc31 to i64
  %37 = load %struct.block_info_def*, %struct.block_info_def** %bi18, align 8
  %stack_in33 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %37, i32 0, i32 0
  %reg34 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [8 x i8], [8 x i8]* %reg34, i32 0, i64 %idxprom32
  store i8 %conv, i8* %arrayidx35, align 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 0, i64 15), align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** @nan, align 8
  %call36 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %38, %struct.rtx_def* %39)
  store %struct.rtx_def* %call36, %struct.rtx_def** %init, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %init, align 8
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %40, %struct.edge_def* %41)
  store i32 1, i32* %inserted, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %for.body.24
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %42 = load i32, i32* %reg20, align 4
  %dec39 = add nsw i32 %42, -1
  store i32 %dec39, i32* %reg20, align 4
  br label %for.cond.22

for.end.40:                                       ; preds = %for.cond.22
  %43 = load i32, i32* %top21, align 4
  %44 = load %struct.block_info_def*, %struct.block_info_def** %bi18, align 8
  %stack_in41 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %44, i32 0, i32 0
  %top42 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in41, i32 0, i32 0
  store i32 %43, i32* %top42, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.40
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 1
  %46 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %46, %struct.edge_def** %e, align 8
  br label %for.cond.14

for.end.44:                                       ; preds = %for.cond.14
  %47 = load i32, i32* %inserted, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal void @convert_regs_exit() #0 {
entry:
  %value_reg_low = alloca i32, align 4
  %value_reg_high = alloca i32, align 4
  %output_stack = alloca %struct.stack_def*, align 8
  %retvalue = alloca %struct.rtx_def*, align 8
  %reg = alloca i32, align 4
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %call = call %struct.rtx_def* @stack_result(%union.tree_node* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %retvalue, align 8
  store i32 -1, i32* %value_reg_high, align 4
  store i32 -1, i32* %value_reg_low, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %value_reg_low, align 4
  %4 = load i32, i32* %value_reg_low, align 4
  %5 = load i32, i32* %value_reg_low, align 4
  %cmp = icmp sge i32 %5, 8
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, i32* %value_reg_low, align 4
  %cmp1 = icmp sle i32 %6, 15
  br i1 %cmp1, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %7 = load i32, i32* %value_reg_low, align 4
  %cmp2 = icmp sge i32 %7, 21
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false.5

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %value_reg_low, align 4
  %cmp4 = icmp sle i32 %8, 28
  br i1 %cmp4, label %cond.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true.3, %lor.lhs.false
  %9 = load i32, i32* %value_reg_low, align 4
  %cmp6 = icmp sge i32 %9, 45
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5
  %10 = load i32, i32* %value_reg_low, align 4
  %cmp8 = icmp sle i32 %10, 52
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false.5
  %11 = load i32, i32* %value_reg_low, align 4
  %cmp10 = icmp sge i32 %11, 29
  br i1 %cmp10, label %land.lhs.true.11, label %cond.false

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %12 = load i32, i32* %value_reg_low, align 4
  %cmp12 = icmp sle i32 %12, 36
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.3, %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx13 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx13, align 4
  %cmp14 = icmp eq i32 %15, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load15 = load i32, i32* %17, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %idxprom18 = sext i32 %bf.clear17 to i64
  %arrayidx19 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom18
  %18 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp eq i32 %18, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %19 = phi i1 [ true, %cond.true ], [ %cmp20, %lor.rhs ]
  %cond = select i1 %19, i32 2, i32 1
  br label %cond.end.52

cond.false:                                       ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %20 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %bf.clear23 = and i32 %bf.lshr22, 255
  %cmp24 = icmp eq i32 %bf.clear23, 18
  br i1 %cmp24, label %cond.true.25, label %cond.false.28

cond.true.25:                                     ; preds = %cond.false
  %22 = load i32, i32* @target_flags, align 4
  %and = and i32 %22, 33554432
  %tobool26 = icmp ne i32 %and, 0
  %cond27 = select i1 %tobool26, i32 2, i32 3
  br label %cond.end.50

cond.false.28:                                    ; preds = %cond.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load29 = load i32, i32* %24, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %cmp32 = icmp eq i32 %bf.clear31, 24
  br i1 %cmp32, label %cond.true.33, label %cond.false.37

cond.true.33:                                     ; preds = %cond.false.28
  %25 = load i32, i32* @target_flags, align 4
  %and34 = and i32 %25, 33554432
  %tobool35 = icmp ne i32 %and34, 0
  %cond36 = select i1 %tobool35, i32 4, i32 6
  br label %cond.end

cond.false.37:                                    ; preds = %cond.false.28
  %26 = load %struct.rtx_def*, %struct.rtx_def** %retvalue, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load38 = load i32, i32* %27, align 8
  %bf.lshr39 = lshr i32 %bf.load38, 16
  %bf.clear40 = and i32 %bf.lshr39, 255
  %idxprom41 = sext i32 %bf.clear40 to i64
  %arrayidx42 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom41
  %28 = load i8, i8* %arrayidx42, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* @target_flags, align 4
  %and43 = and i32 %29, 33554432
  %tobool44 = icmp ne i32 %and43, 0
  %cond45 = select i1 %tobool44, i32 8, i32 4
  %add = add nsw i32 %conv, %cond45
  %sub = sub nsw i32 %add, 1
  %30 = load i32, i32* @target_flags, align 4
  %and46 = and i32 %30, 33554432
  %tobool47 = icmp ne i32 %and46, 0
  %cond48 = select i1 %tobool47, i32 8, i32 4
  %div = sdiv i32 %sub, %cond48
  br label %cond.end

cond.end:                                         ; preds = %cond.false.37, %cond.true.33
  %cond49 = phi i32 [ %cond36, %cond.true.33 ], [ %div, %cond.false.37 ]
  br label %cond.end.50

cond.end.50:                                      ; preds = %cond.end, %cond.true.25
  %cond51 = phi i32 [ %cond27, %cond.true.25 ], [ %cond49, %cond.end ]
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.end.50, %lor.end
  %cond53 = phi i32 [ %cond, %lor.end ], [ %cond51, %cond.end.50 ]
  %add54 = add nsw i32 %4, %cond53
  %sub55 = sub nsw i32 %add54, 1
  store i32 %sub55, i32* %value_reg_high, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.52, %entry
  %31 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  %32 = bitcast i8* %31 to %struct.block_info_def*
  %stack_in = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %32, i32 0, i32 0
  store %struct.stack_def* %stack_in, %struct.stack_def** %output_stack, align 8
  %33 = load i32, i32* %value_reg_low, align 4
  %cmp56 = icmp eq i32 %33, -1
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end
  %34 = load %struct.stack_def*, %struct.stack_def** %output_stack, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %34, i32 0, i32 0
  store i32 -1, i32* %top, align 4
  br label %if.end.68

if.else:                                          ; preds = %if.end
  %35 = load i32, i32* %value_reg_high, align 4
  %36 = load i32, i32* %value_reg_low, align 4
  %sub59 = sub nsw i32 %35, %36
  %37 = load %struct.stack_def*, %struct.stack_def** %output_stack, align 8
  %top60 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %37, i32 0, i32 0
  store i32 %sub59, i32* %top60, align 4
  %38 = load i32, i32* %value_reg_low, align 4
  store i32 %38, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %39 = load i32, i32* %reg, align 4
  %40 = load i32, i32* %value_reg_high, align 4
  %cmp61 = icmp sle i32 %39, %40
  br i1 %cmp61, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load i32, i32* %reg, align 4
  %conv63 = trunc i32 %41 to i8
  %42 = load i32, i32* %value_reg_high, align 4
  %43 = load i32, i32* %reg, align 4
  %sub64 = sub nsw i32 %42, %43
  %idxprom65 = sext i32 %sub64 to i64
  %44 = load %struct.stack_def*, %struct.stack_def** %output_stack, align 8
  %reg66 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %44, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [8 x i8], [8 x i8]* %reg66, i32 0, i64 %idxprom65
  store i8 %conv63, i8* %arrayidx67, align 1
  %45 = load i32, i32* %reg, align 4
  %sh_prom = zext i32 %45 to i64
  %shl = shl i64 1, %sh_prom
  %46 = load %struct.stack_def*, %struct.stack_def** %output_stack, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %46, i32 0, i32 1
  %47 = load i64, i64* %reg_set, align 8
  %or = or i64 %47, %shl
  store i64 %or, i64* %reg_set, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %48 = load i32, i32* %reg, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %reg, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.68

if.end.68:                                        ; preds = %for.end, %if.then.58
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @convert_regs_2(%struct._IO_FILE* %file, %struct.basic_block_def* %block) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %stack = alloca %struct.basic_block_def**, align 8
  %sp = alloca %struct.basic_block_def**, align 8
  %inserted = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %stack, align 8
  %2 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  store %struct.basic_block_def** %2, %struct.basic_block_def*** %sp, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %4 = load %struct.basic_block_def**, %struct.basic_block_def*** %sp, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %4, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %sp, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %4, align 8
  store i32 0, i32* %inserted, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %5 = load %struct.basic_block_def**, %struct.basic_block_def*** %sp, align 8
  %incdec.ptr1 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i32 -1
  store %struct.basic_block_def** %incdec.ptr1, %struct.basic_block_def*** %sp, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr1, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %block.addr, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %call2 = call i32 @convert_regs_1(%struct._IO_FILE* %7, %struct.basic_block_def* %8)
  %9 = load i32, i32* %inserted, align 4
  %or = or i32 %9, %call2
  store i32 %or, i32* %inserted, align 4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 10
  %11 = load i8*, i8** %aux, align 8
  %12 = bitcast i8* %11 to %struct.block_info_def*
  %done = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %12, i32 0, i32 3
  store i32 1, i32* %done, align 4
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 5
  %14 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %14, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %15, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 6
  %17 = load i32, i32* %flags, align 4
  %and = and i32 %17, 32
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.end.12, label %if.then

if.then:                                          ; preds = %for.body
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 3
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %aux4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 10
  %20 = load i8*, i8** %aux4, align 8
  %21 = bitcast i8* %20 to %struct.block_info_def*
  %predecessors = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %21, i32 0, i32 4
  %22 = load i32, i32* %predecessors, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %predecessors, align 4
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 3
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 10
  %25 = load i8*, i8** %aux6, align 8
  %26 = bitcast i8* %25 to %struct.block_info_def*
  %predecessors7 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %26, i32 0, i32 4
  %27 = load i32, i32* %predecessors7, align 4
  %tobool8 = icmp ne i32 %27, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest10, align 8
  %30 = load %struct.basic_block_def**, %struct.basic_block_def*** %sp, align 8
  %incdec.ptr11 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %30, i32 1
  store %struct.basic_block_def** %incdec.ptr11, %struct.basic_block_def*** %sp, align 8
  store %struct.basic_block_def* %29, %struct.basic_block_def** %30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 1
  %32 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %32, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.cond

do.cond:                                          ; preds = %for.end
  %33 = load %struct.basic_block_def**, %struct.basic_block_def*** %sp, align 8
  %34 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %cmp = icmp ne %struct.basic_block_def** %33, %34
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %35 = load i32, i32* %inserted, align 4
  ret i32 %35
}

declare void @fixup_abnormal_edges() #1

declare void @commit_edge_insertions() #1

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @stack_result(%union.tree_node* %decl) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %result2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 11
  %1 = load %union.tree_node*, %union.tree_node** %result2, align 8
  %call = call i32 @aggregate_value_p(%union.tree_node* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl3 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %result4 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 11
  %3 = load %union.tree_node*, %union.tree_node** %result4, align 8
  %decl5 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp, label %cond.true, label %cond.false.22

cond.true:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl6 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %result7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 11
  %6 = load %union.tree_node*, %union.tree_node** %result7, align 8
  %decl8 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtl9, align 8
  %tobool10 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool10, label %cond.true.11, label %cond.false

cond.true.11:                                     ; preds = %cond.true
  %8 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl12 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %result13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 11
  %9 = load %union.tree_node*, %union.tree_node** %result13, align 8
  %decl14 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl15, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl16 = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %result17 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl16, i32 0, i32 11
  %12 = load %union.tree_node*, %union.tree_node** %result17, align 8
  call void @make_decl_rtl(%union.tree_node* %12, i8* null)
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl18 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %result19 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl18, i32 0, i32 11
  %14 = load %union.tree_node*, %union.tree_node** %result19, align 8
  %decl20 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %rtl21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtl21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.11
  %cond = phi %struct.rtx_def* [ %10, %cond.true.11 ], [ %15, %cond.false ]
  br label %cond.end.23

cond.false.22:                                    ; preds = %if.end
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.22, %cond.end
  %cond24 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.22 ]
  store %struct.rtx_def* %cond24, %struct.rtx_def** %result, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp25 = icmp ne %struct.rtx_def* %16, null
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %cond.end.23
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl27 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %result28 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl27, i32 0, i32 11
  %18 = load %union.tree_node*, %union.tree_node** %result28, align 8
  %common = bitcast %union.tree_node* %18 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %19 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call29 = call %struct.rtx_def* @ix86_function_value(%union.tree_node* %19)
  store %struct.rtx_def* %call29, %struct.rtx_def** %result, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %cond.end.23
  %20 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp31 = icmp ne %struct.rtx_def* %20, null
  br i1 %cmp31, label %land.lhs.true, label %cond.false.41

land.lhs.true:                                    ; preds = %if.end.30
  %21 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load = load i32, i32* %22, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp32 = icmp eq i32 %bf.clear, 61
  br i1 %cmp32, label %land.lhs.true.33, label %cond.false.41

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %24 = load i32, i32* %rtuint, align 4
  %cmp34 = icmp uge i32 %24, 8
  br i1 %cmp34, label %land.lhs.true.35, label %cond.false.41

land.lhs.true.35:                                 ; preds = %land.lhs.true.33
  %25 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtuint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %26 = load i32, i32* %rtuint38, align 4
  %cmp39 = icmp ule i32 %26, 15
  br i1 %cmp39, label %cond.true.40, label %cond.false.41

cond.true.40:                                     ; preds = %land.lhs.true.35
  %27 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  br label %cond.end.42

cond.false.41:                                    ; preds = %land.lhs.true.35, %land.lhs.true.33, %land.lhs.true, %if.end.30
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.40
  %cond43 = phi %struct.rtx_def* [ %27, %cond.true.40 ], [ null, %cond.false.41 ]
  store %struct.rtx_def* %cond43, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end.42, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %28
}

declare i32 @aggregate_value_p(%union.tree_node*) #1

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare %struct.rtx_def* @ix86_function_value(%union.tree_node*) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @convert_regs_1(%struct._IO_FILE* %file, %struct.basic_block_def* %block) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %regstack = alloca %struct.stack_def, align 8
  %bi = alloca %struct.block_info_def*, align 8
  %inserted = alloca i32, align 4
  %reg = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %beste = alloca %struct.edge_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 10
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.block_info_def*
  store %struct.block_info_def* %2, %struct.block_info_def** %bi, align 8
  store %struct.edge_def* null, %struct.edge_def** %beste, align 8
  store i32 0, i32* %inserted, align 4
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 4
  %4 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %4, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 6
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 32
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end.81

if.else:                                          ; preds = %for.body
  %8 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %tobool2 = icmp ne %struct.edge_def* %8, null
  br i1 %tobool2, label %if.else.4, label %if.then.3

if.then.3:                                        ; preds = %if.else
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %9, %struct.edge_def** %beste, align 8
  br label %if.end.80

if.else.4:                                        ; preds = %if.else
  %10 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 2
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 14
  %12 = load i32, i32* %frequency, align 4
  %13 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 7
  %14 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %12, %14
  %add = add nsw i32 %mul, 5000
  %div = sdiv i32 %add, 10000
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 2
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src5, align 8
  %frequency6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 14
  %17 = load i32, i32* %frequency6, align 4
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 7
  %19 = load i32, i32* %probability7, align 4
  %mul8 = mul nsw i32 %17, %19
  %add9 = add nsw i32 %mul8, 5000
  %div10 = sdiv i32 %add9, 10000
  %cmp = icmp slt i32 %div, %div10
  br i1 %cmp, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.4
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %20, %struct.edge_def** %beste, align 8
  br label %if.end.79

if.else.12:                                       ; preds = %if.else.4
  %21 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 2
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8
  %frequency14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 14
  %23 = load i32, i32* %frequency14, align 4
  %24 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %probability15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 7
  %25 = load i32, i32* %probability15, align 4
  %mul16 = mul nsw i32 %23, %25
  %add17 = add nsw i32 %mul16, 5000
  %div18 = sdiv i32 %add17, 10000
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 2
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src19, align 8
  %frequency20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 14
  %28 = load i32, i32* %frequency20, align 4
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 7
  %30 = load i32, i32* %probability21, align 4
  %mul22 = mul nsw i32 %28, %30
  %add23 = add nsw i32 %mul22, 5000
  %div24 = sdiv i32 %add23, 10000
  %cmp25 = icmp sgt i32 %div18, %div24
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %if.else.12
  br label %if.end.78

if.else.27:                                       ; preds = %if.else.12
  %31 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 8
  %32 = load i64, i64* %count, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 8
  %34 = load i64, i64* %count28, align 8
  %cmp29 = icmp slt i64 %32, %34
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.27
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %35, %struct.edge_def** %beste, align 8
  br label %if.end.77

if.else.31:                                       ; preds = %if.else.27
  %36 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %count32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 8
  %37 = load i64, i64* %count32, align 8
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 8
  %39 = load i64, i64* %count33, align 8
  %cmp34 = icmp sgt i64 %37, %39
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.31
  br label %if.end.76

if.else.36:                                       ; preds = %if.else.31
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 2
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %src37, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 5
  %42 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 1
  %43 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool38 = icmp ne %struct.edge_def* %43, null
  br i1 %tobool38, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.36
  %44 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i32 0, i32 3
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 4
  %46 = load %struct.edge_def*, %struct.edge_def** %pred39, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 0
  %47 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool40 = icmp ne %struct.edge_def* %47, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.36
  %48 = phi i1 [ false, %if.else.36 ], [ %tobool40, %land.rhs ]
  %land.ext = zext i1 %48 to i32
  %cmp41 = icmp ne i32 %land.ext, 0
  %conv = zext i1 %cmp41 to i32
  %49 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %src42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %49, i32 0, i32 2
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %src42, align 8
  %succ43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 5
  %51 = load %struct.edge_def*, %struct.edge_def** %succ43, align 8
  %succ_next44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 1
  %52 = load %struct.edge_def*, %struct.edge_def** %succ_next44, align 8
  %tobool45 = icmp ne %struct.edge_def* %52, null
  br i1 %tobool45, label %land.rhs.46, label %land.end.51

land.rhs.46:                                      ; preds = %land.end
  %53 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %dest47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 3
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %dest47, align 8
  %pred48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 4
  %55 = load %struct.edge_def*, %struct.edge_def** %pred48, align 8
  %pred_next49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 0
  %56 = load %struct.edge_def*, %struct.edge_def** %pred_next49, align 8
  %tobool50 = icmp ne %struct.edge_def* %56, null
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.46, %land.end
  %57 = phi i1 [ false, %land.end ], [ %tobool50, %land.rhs.46 ]
  %land.ext52 = zext i1 %57 to i32
  %cmp53 = icmp ne i32 %land.ext52, 0
  %conv54 = zext i1 %cmp53 to i32
  %cmp55 = icmp ne i32 %conv, %conv54
  br i1 %cmp55, label %if.then.57, label %if.else.67

if.then.57:                                       ; preds = %land.end.51
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 2
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %src58, align 8
  %succ59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i32 0, i32 5
  %60 = load %struct.edge_def*, %struct.edge_def** %succ59, align 8
  %succ_next60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 1
  %61 = load %struct.edge_def*, %struct.edge_def** %succ_next60, align 8
  %tobool61 = icmp ne %struct.edge_def* %61, null
  br i1 %tobool61, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.57
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i32 0, i32 3
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %dest62, align 8
  %pred63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 4
  %64 = load %struct.edge_def*, %struct.edge_def** %pred63, align 8
  %pred_next64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 0
  %65 = load %struct.edge_def*, %struct.edge_def** %pred_next64, align 8
  %tobool65 = icmp ne %struct.edge_def* %65, null
  br i1 %tobool65, label %if.then.66, label %if.end

if.then.66:                                       ; preds = %land.lhs.true
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %66, %struct.edge_def** %beste, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.66, %land.lhs.true, %if.then.57
  br label %if.end.75

if.else.67:                                       ; preds = %land.end.51
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i32 0, i32 2
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %src68, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index, align 4
  %70 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %src69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 2
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %src69, align 8
  %index70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 11
  %72 = load i32, i32* %index70, align 4
  %cmp71 = icmp slt i32 %69, %72
  br i1 %cmp71, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %if.else.67
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %73, %struct.edge_def** %beste, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.73, %if.else.67
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.end
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.35
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.30
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.26
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.11
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then.3
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %74 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next82 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 0
  %75 = load %struct.edge_def*, %struct.edge_def** %pred_next82, align 8
  store %struct.edge_def* %75, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %76, i32 0, i32 0
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %stack_in, i32 0, i32 0
  %77 = load i32, i32* %top, align 4
  %cmp83 = icmp eq i32 %77, -2
  br i1 %cmp83, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %for.end
  %78 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call zeroext i1 @compensate_edge(%struct.edge_def* %78, %struct._IO_FILE* %79)
  %conv86 = zext i1 %call to i32
  %80 = load i32, i32* %inserted, align 4
  %or = or i32 %80, %conv86
  store i32 %or, i32* %inserted, align 4
  br label %if.end.88

if.else.87:                                       ; preds = %for.end
  store %struct.edge_def* null, %struct.edge_def** %beste, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.87, %if.then.85
  %81 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  store %struct.basic_block_def* %81, %struct.basic_block_def** @current_block, align 8
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool89 = icmp ne %struct._IO_FILE* %82, null
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %if.end.88
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i32 0, i32 11
  %85 = load i32, i32* %index91, align 4
  %call92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %87 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in93 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %87, i32 0, i32 0
  call void @print_stack(%struct._IO_FILE* %86, %struct.stack_def* %stack_in93)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %if.end.88
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 0
  %89 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %next, align 8
  %90 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_in95 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %90, i32 0, i32 0
  %91 = bitcast %struct.stack_def* %regstack to i8*
  %92 = bitcast %struct.stack_def* %stack_in95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %91, i8* %92, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.94
  %93 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %insn, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %95, %struct.rtx_def** %next, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp96 = icmp eq %struct.rtx_def* %96, null
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %do.body
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2683, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.convert_regs_1, i32 0, i32 0)) #5
  unreachable

if.end.99:                                        ; preds = %do.body
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 1
  %99 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp100 = icmp eq %struct.rtx_def* %97, %99
  br i1 %cmp100, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.end.99
  store %struct.rtx_def* null, %struct.rtx_def** %next, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.end.99
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call104 = call i32 @stack_regs_mentioned(%struct.rtx_def* %100)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.108, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.103
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load = load i32, i32* %102, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp106 = icmp eq i32 %bf.clear, 34
  br i1 %cmp106, label %if.then.108, label %if.end.115

if.then.108:                                      ; preds = %lor.lhs.false, %if.end.103
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool109 = icmp ne %struct._IO_FILE* %103, null
  br i1 %tobool109, label %if.then.110, label %if.end.114

if.then.110:                                      ; preds = %if.then.108
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %106 = load i32, i32* %rtint, align 4
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %106)
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @print_stack(%struct._IO_FILE* %107, %struct.stack_def* %regstack)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.110, %if.then.108
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @subst_stack_regs(%struct.rtx_def* %108, %struct.stack_def* %regstack)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end.115
  %109 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool116 = icmp ne %struct.rtx_def* %109, null
  br i1 %tobool116, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool117 = icmp ne %struct._IO_FILE* %110, null
  br i1 %tobool117, label %if.then.118, label %if.end.132

if.then.118:                                      ; preds = %do.end
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  store i32 8, i32* %reg, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.129, %if.then.118
  %112 = load i32, i32* %reg, align 4
  %cmp121 = icmp sle i32 %112, 15
  br i1 %cmp121, label %for.body.123, label %for.end.130

for.body.123:                                     ; preds = %for.cond.120
  %113 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %out_reg_set = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %113, i32 0, i32 2
  %114 = load i64, i64* %out_reg_set, align 8
  %115 = load i32, i32* %reg, align 4
  %sh_prom = zext i32 %115 to i64
  %shl = shl i64 1, %sh_prom
  %and124 = and i64 %114, %shl
  %tobool125 = icmp ne i64 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.128

if.then.126:                                      ; preds = %for.body.123
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %117 = load i32, i32* %reg, align 4
  %call127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 %117)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.126, %for.body.123
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %118 = load i32, i32* %reg, align 4
  %inc = add nsw i32 %118, 1
  store i32 %inc, i32* %reg, align 4
  br label %for.cond.120

for.end.130:                                      ; preds = %for.cond.120
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @print_stack(%struct._IO_FILE* %120, %struct.stack_def* %regstack)
  br label %if.end.132

if.end.132:                                       ; preds = %for.end.130, %do.end
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %end133 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %121, i32 0, i32 1
  %122 = load %struct.rtx_def*, %struct.rtx_def** %end133, align 8
  store %struct.rtx_def* %122, %struct.rtx_def** %insn, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load134 = load i32, i32* %124, align 8
  %bf.clear135 = and i32 %bf.load134, 65535
  %cmp136 = icmp eq i32 %bf.clear135, 33
  br i1 %cmp136, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %if.end.132
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 1
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %insn, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %if.end.132
  store i32 8, i32* %reg, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.167, %if.end.142
  %127 = load i32, i32* %reg, align 4
  %cmp144 = icmp sle i32 %127, 15
  br i1 %cmp144, label %for.body.146, label %for.end.169

for.body.146:                                     ; preds = %for.cond.143
  %128 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %out_reg_set147 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %128, i32 0, i32 2
  %129 = load i64, i64* %out_reg_set147, align 8
  %130 = load i32, i32* %reg, align 4
  %sh_prom148 = zext i32 %130 to i64
  %shl149 = shl i64 1, %sh_prom148
  %and150 = and i64 %129, %shl149
  %tobool151 = icmp ne i64 %and150, 0
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.166

land.lhs.true.152:                                ; preds = %for.body.146
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 1
  %131 = load i64, i64* %reg_set, align 8
  %132 = load i32, i32* %reg, align 4
  %sh_prom153 = zext i32 %132 to i64
  %shl154 = shl i64 1, %sh_prom153
  %and155 = and i64 %131, %shl154
  %tobool156 = icmp ne i64 %and155, 0
  br i1 %tobool156, label %if.end.166, label %if.then.157

if.then.157:                                      ; preds = %land.lhs.true.152
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool158 = icmp ne %struct._IO_FILE* %133, null
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.then.157
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %135 = load i32, i32* %reg, align 4
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 %135)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.then.157
  %136 = load i32, i32* %reg, align 4
  %sub = sub nsw i32 %136, 8
  %idxprom = sext i32 %sub to i64
  %arrayidx162 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom
  %arrayidx163 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx162, i32 0, i64 15
  %137 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx163, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** @nan, align 8
  %call164 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %137, %struct.rtx_def* %138)
  store %struct.rtx_def* %call164, %struct.rtx_def** %set, align 8
  %139 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call165 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %139, %struct.rtx_def* %140)
  store %struct.rtx_def* %call165, %struct.rtx_def** %insn, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @subst_stack_regs(%struct.rtx_def* %141, %struct.stack_def* %regstack)
  br label %if.end.166

if.end.166:                                       ; preds = %if.end.161, %land.lhs.true.152, %for.body.146
  br label %for.inc.167

for.inc.167:                                      ; preds = %if.end.166
  %142 = load i32, i32* %reg, align 4
  %inc168 = add nsw i32 %142, 1
  store i32 %inc168, i32* %reg, align 4
  br label %for.cond.143

for.end.169:                                      ; preds = %for.cond.143
  %reg_set170 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 1
  %143 = load i64, i64* %reg_set170, align 8
  %144 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %out_reg_set171 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %144, i32 0, i32 2
  %145 = load i64, i64* %out_reg_set171, align 8
  %cmp172 = icmp eq i64 %143, %145
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.end.169
  br label %win

if.end.175:                                       ; preds = %for.end.169
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2743, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.convert_regs_1, i32 0, i32 0)) #5
  unreachable

win:                                              ; preds = %if.then.174
  %146 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_out = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %146, i32 0, i32 1
  %147 = bitcast %struct.stack_def* %stack_out to i8*
  %148 = bitcast %struct.stack_def* %regstack to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %147, i8* %148, i64 24, i32 8, i1 false)
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %succ176 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %149, i32 0, i32 5
  %150 = load %struct.edge_def*, %struct.edge_def** %succ176, align 8
  store %struct.edge_def* %150, %struct.edge_def** %e, align 8
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.201, %win
  %151 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool178 = icmp ne %struct.edge_def* %151, null
  br i1 %tobool178, label %for.body.179, label %for.end.203

for.body.179:                                     ; preds = %for.cond.177
  %152 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags180 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %152, i32 0, i32 6
  %153 = load i32, i32* %flags180, align 4
  %and181 = and i32 %153, 32
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %if.then.187, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %for.body.179
  %154 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest184 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %154, i32 0, i32 3
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %dest184, align 8
  %cmp185 = icmp eq %struct.basic_block_def* %155, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp185, label %if.then.187, label %if.end.200

if.then.187:                                      ; preds = %lor.lhs.false.183, %for.body.179
  %156 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest188 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %156, i32 0, i32 3
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest188, align 8
  %aux189 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 10
  %158 = load i8*, i8** %aux189, align 8
  %159 = bitcast i8* %158 to %struct.block_info_def*
  %done = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %159, i32 0, i32 3
  %160 = load i32, i32* %done, align 4
  %tobool190 = icmp ne i32 %160, 0
  br i1 %tobool190, label %if.end.196, label %land.lhs.true.191

land.lhs.true.191:                                ; preds = %if.then.187
  %161 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest192 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %161, i32 0, i32 3
  %162 = load %struct.basic_block_def*, %struct.basic_block_def** %dest192, align 8
  %163 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %cmp193 = icmp ne %struct.basic_block_def* %162, %163
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %land.lhs.true.191
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2755, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.convert_regs_1, i32 0, i32 0)) #5
  unreachable

if.end.196:                                       ; preds = %land.lhs.true.191, %if.then.187
  %164 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call197 = call zeroext i1 @compensate_edge(%struct.edge_def* %164, %struct._IO_FILE* %165)
  %conv198 = zext i1 %call197 to i32
  %166 = load i32, i32* %inserted, align 4
  %or199 = or i32 %166, %conv198
  store i32 %or199, i32* %inserted, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.196, %lor.lhs.false.183
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %167 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next202 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %167, i32 0, i32 1
  %168 = load %struct.edge_def*, %struct.edge_def** %succ_next202, align 8
  store %struct.edge_def* %168, %struct.edge_def** %e, align 8
  br label %for.cond.177

for.end.203:                                      ; preds = %for.cond.177
  %169 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %pred204 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %169, i32 0, i32 4
  %170 = load %struct.edge_def*, %struct.edge_def** %pred204, align 8
  store %struct.edge_def* %170, %struct.edge_def** %e, align 8
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.229, %for.end.203
  %171 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool206 = icmp ne %struct.edge_def* %171, null
  br i1 %tobool206, label %for.body.207, label %for.end.231

for.body.207:                                     ; preds = %for.cond.205
  %172 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %173 = load %struct.edge_def*, %struct.edge_def** %beste, align 8
  %cmp208 = icmp ne %struct.edge_def* %172, %173
  br i1 %cmp208, label %land.lhs.true.210, label %if.end.228

land.lhs.true.210:                                ; preds = %for.body.207
  %174 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags211 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %174, i32 0, i32 6
  %175 = load i32, i32* %flags211, align 4
  %and212 = and i32 %175, 32
  %tobool213 = icmp ne i32 %and212, 0
  br i1 %tobool213, label %if.end.228, label %land.lhs.true.214

land.lhs.true.214:                                ; preds = %land.lhs.true.210
  %176 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src215 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %176, i32 0, i32 2
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %src215, align 8
  %cmp216 = icmp ne %struct.basic_block_def* %177, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp216, label %if.then.218, label %if.end.228

if.then.218:                                      ; preds = %land.lhs.true.214
  %178 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src219 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %178, i32 0, i32 2
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %src219, align 8
  %aux220 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 10
  %180 = load i8*, i8** %aux220, align 8
  %181 = bitcast i8* %180 to %struct.block_info_def*
  %done221 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %181, i32 0, i32 3
  %182 = load i32, i32* %done221, align 4
  %tobool222 = icmp ne i32 %182, 0
  br i1 %tobool222, label %if.end.224, label %if.then.223

if.then.223:                                      ; preds = %if.then.218
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2765, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.convert_regs_1, i32 0, i32 0)) #5
  unreachable

if.end.224:                                       ; preds = %if.then.218
  %183 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call225 = call zeroext i1 @compensate_edge(%struct.edge_def* %183, %struct._IO_FILE* %184)
  %conv226 = zext i1 %call225 to i32
  %185 = load i32, i32* %inserted, align 4
  %or227 = or i32 %185, %conv226
  store i32 %or227, i32* %inserted, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.224, %land.lhs.true.214, %land.lhs.true.210, %for.body.207
  br label %for.inc.229

for.inc.229:                                      ; preds = %if.end.228
  %186 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next230 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i32 0, i32 0
  %187 = load %struct.edge_def*, %struct.edge_def** %pred_next230, align 8
  store %struct.edge_def* %187, %struct.edge_def** %e, align 8
  br label %for.cond.205

for.end.231:                                      ; preds = %for.cond.205
  %188 = load i32, i32* %inserted, align 4
  ret i32 %188
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @compensate_edge(%struct.edge_def* %e, %struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.edge_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %block = alloca %struct.basic_block_def*, align 8
  %target = alloca %struct.basic_block_def*, align 8
  %bi = alloca %struct.block_info_def*, align 8
  %regstack = alloca %struct.stack_def, align 8
  %tmpstack = alloca %struct.stack_def, align 8
  %target_stack = alloca %struct.stack_def*, align 8
  %reg = alloca i32, align 4
  %tmp = alloca i64, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %after = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %block, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %target, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 10
  %5 = load i8*, i8** %aux, align 8
  %6 = bitcast i8* %5 to %struct.block_info_def*
  store %struct.block_info_def* %6, %struct.block_info_def** %bi, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %aux1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 10
  %8 = load i8*, i8** %aux1, align 8
  %9 = bitcast i8* %8 to %struct.block_info_def*
  %stack_in = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %9, i32 0, i32 0
  store %struct.stack_def* %stack_in, %struct.stack_def** %target_stack, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** @current_block, align 8
  %11 = load %struct.block_info_def*, %struct.block_info_def** %bi, align 8
  %stack_out = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %11, i32 0, i32 1
  %12 = bitcast %struct.stack_def* %regstack to i8*
  %13 = bitcast %struct.stack_def* %stack_out to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %13, i64 24, i32 8, i1 false)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 11
  %17 = load i32, i32* %index, align 4
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 11
  %19 = load i32, i32* %index2, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 %17, i32 %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %20 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %20, i32 0, i32 0
  %21 = load i32, i32* %top, align 4
  %cmp = icmp eq i32 %21, -2
  br i1 %cmp, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %top4 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 0
  %22 = load i32, i32* %top4, align 4
  store i32 %22, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %23 = load i32, i32* %reg, align 4
  %cmp5 = icmp sge i32 %23, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %24, i32 0, i32 1
  %25 = load i64, i64* %reg_set, align 8
  %26 = load i32, i32* %reg, align 4
  %idxprom = sext i32 %26 to i64
  %reg6 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %reg6, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %27 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %25, %shl
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %28 = load i32, i32* %reg, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %reg, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %29 = load i32, i32* %reg, align 4
  %cmp10 = icmp eq i32 %29, -1
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %for.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool13 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.12
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.then.12
  %32 = bitcast %struct.stack_def* %tmpstack to i8*
  %33 = bitcast %struct.stack_def* %regstack to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %32, i8* %33, i64 24, i32 8, i1 false)
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 1
  %35 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %36 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  call void @change_stack(%struct.rtx_def* %35, %struct.stack_def* %tmpstack, %struct.stack_def* %36, i32 0)
  store i1 false, i1* %retval
  br label %return

if.end.17:                                        ; preds = %for.end
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %37, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.17
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.17
  br label %if.end.60

if.else:                                          ; preds = %if.end
  %39 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %top22 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %39, i32 0, i32 0
  %40 = load i32, i32* %top22, align 4
  %top23 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 0
  %41 = load i32, i32* %top23, align 4
  %cmp24 = icmp eq i32 %40, %41
  br i1 %cmp24, label %if.then.26, label %if.end.55

if.then.26:                                       ; preds = %if.else
  %42 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %top27 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %42, i32 0, i32 0
  %43 = load i32, i32* %top27, align 4
  store i32 %43, i32* %reg, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.44, %if.then.26
  %44 = load i32, i32* %reg, align 4
  %cmp29 = icmp sge i32 %44, 0
  br i1 %cmp29, label %for.body.31, label %for.end.46

for.body.31:                                      ; preds = %for.cond.28
  %45 = load i32, i32* %reg, align 4
  %idxprom32 = sext i32 %45 to i64
  %46 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %reg33 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %46, i32 0, i32 2
  %arrayidx34 = getelementptr inbounds [8 x i8], [8 x i8]* %reg33, i32 0, i64 %idxprom32
  %47 = load i8, i8* %arrayidx34, align 1
  %conv35 = zext i8 %47 to i32
  %48 = load i32, i32* %reg, align 4
  %idxprom36 = sext i32 %48 to i64
  %reg37 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [8 x i8], [8 x i8]* %reg37, i32 0, i64 %idxprom36
  %49 = load i8, i8* %arrayidx38, align 1
  %conv39 = zext i8 %49 to i32
  %cmp40 = icmp ne i32 %conv35, %conv39
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %for.body.31
  br label %for.end.46

if.end.43:                                        ; preds = %for.body.31
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %50 = load i32, i32* %reg, align 4
  %dec45 = add nsw i32 %50, -1
  store i32 %dec45, i32* %reg, align 4
  br label %for.cond.28

for.end.46:                                       ; preds = %if.then.42, %for.cond.28
  %51 = load i32, i32* %reg, align 4
  %cmp47 = icmp eq i32 %51, -1
  br i1 %cmp47, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.end.46
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool50 = icmp ne %struct._IO_FILE* %52, null
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.then.49
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.then.49
  store i1 false, i1* %retval
  br label %return

if.end.54:                                        ; preds = %for.end.46
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.else
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool56 = icmp ne %struct._IO_FILE* %54, null
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.end.55
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %57 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  call void @print_stack(%struct._IO_FILE* %56, %struct.stack_def* %57)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.end.55
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.21
  %58 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 6
  %59 = load i32, i32* %flags, align 4
  %and61 = and i32 %59, 12
  %cmp62 = icmp eq i32 %and61, 8
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %if.end.60
  %60 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %top65 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %60, i32 0, i32 0
  store i32 -1, i32* %top65, align 4
  br label %if.end.105

if.else.66:                                       ; preds = %if.end.60
  %61 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %61, i32 0, i32 6
  %62 = load i32, i32* %flags67, align 4
  %and68 = and i32 %62, 4
  %tobool69 = icmp ne i32 %and68, 0
  br i1 %tobool69, label %if.then.70, label %if.else.82

if.then.70:                                       ; preds = %if.else.66
  store i64 0, i64* %tmp, align 8
  %63 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %reg_set71 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %63, i32 0, i32 1
  %64 = load i64, i64* %reg_set71, align 8
  %65 = load i64, i64* %tmp, align 8
  %cmp72 = icmp eq i64 %64, %65
  br i1 %cmp72, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.70
  br label %eh1

if.end.75:                                        ; preds = %if.then.70
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2559, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.compensate_edge, i32 0, i32 0)) #5
  unreachable

eh1:                                              ; preds = %if.then.74
  %66 = load i64, i64* %tmp, align 8
  %or = or i64 %66, 256
  store i64 %or, i64* %tmp, align 8
  %reg_set76 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %regstack, i32 0, i32 1
  %67 = load i64, i64* %reg_set76, align 8
  %68 = load i64, i64* %tmp, align 8
  %cmp77 = icmp eq i64 %67, %68
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %eh1
  br label %eh2

if.end.80:                                        ; preds = %eh1
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2564, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.compensate_edge, i32 0, i32 0)) #5
  unreachable

eh2:                                              ; preds = %if.then.79
  %69 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %top81 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %69, i32 0, i32 0
  store i32 -1, i32* %top81, align 4
  br label %if.end.104

if.else.82:                                       ; preds = %if.else.66
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 5
  %71 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 1
  %72 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp83 = icmp eq %struct.edge_def* %72, null
  br i1 %cmp83, label %land.lhs.true, label %if.else.93

land.lhs.true:                                    ; preds = %if.else.82
  %73 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags85 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 6
  %74 = load i32, i32* %flags85, align 4
  %and86 = and i32 %74, 2
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.else.93, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true
  %75 = bitcast %struct.stack_def* %tmpstack to i8*
  %76 = bitcast %struct.stack_def* %regstack to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %75, i8* %76, i64 24, i32 8, i1 false)
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %end89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 1
  %78 = load %struct.rtx_def*, %struct.rtx_def** %end89, align 8
  %79 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %end90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 1
  %81 = load %struct.rtx_def*, %struct.rtx_def** %end90, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load = load i32, i32* %82, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp91 = icmp eq i32 %bf.clear, 33
  %cond = select i1 %cmp91, i32 1, i32 0
  call void @change_stack(%struct.rtx_def* %78, %struct.stack_def* %tmpstack, %struct.stack_def* %79, i32 %cond)
  br label %if.end.103

if.else.93:                                       ; preds = %land.lhs.true, %if.else.82
  %83 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags96 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i32 0, i32 6
  %84 = load i32, i32* %flags96, align 4
  %and97 = and i32 %84, 2
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.else.93
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2591, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.compensate_edge, i32 0, i32 0)) #5
  unreachable

if.end.100:                                       ; preds = %if.else.93
  store %struct.basic_block_def* null, %struct.basic_block_def** @current_block, align 8
  call void @start_sequence()
  %call101 = call %struct.rtx_def* @emit_note(i8* null, i32 -99)
  store %struct.rtx_def* %call101, %struct.rtx_def** %after, align 8
  %85 = bitcast %struct.stack_def* %tmpstack to i8*
  %86 = bitcast %struct.stack_def* %regstack to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %86, i64 24, i32 8, i1 false)
  %87 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %88 = load %struct.stack_def*, %struct.stack_def** %target_stack, align 8
  call void @change_stack(%struct.rtx_def* %87, %struct.stack_def* %tmpstack, %struct.stack_def* %88, i32 1)
  %call102 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call102, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %89 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %90 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %89, %struct.edge_def* %90)
  store i1 true, i1* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.88
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %eh2
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.64
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.105, %if.end.100, %if.end.53, %if.end.16
  %91 = load i1, i1* %retval
  ret i1 %91
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_stack(%struct._IO_FILE* %file, %struct.stack_def* %s) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %s.addr = alloca %struct.stack_def*, align 8
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.stack_def* %s, %struct.stack_def** %s.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.13

if.end:                                           ; preds = %entry
  %1 = load %struct.stack_def*, %struct.stack_def** %s.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %1, i32 0, i32 0
  %2 = load i32, i32* %top, align 4
  %cmp = icmp eq i32 %2, -2
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %4 = load %struct.stack_def*, %struct.stack_def** %s.addr, align 8
  %top2 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %4, i32 0, i32 0
  %5 = load i32, i32* %top2, align 4
  %cmp3 = icmp eq i32 %5, -1
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %if.else
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.12

if.else.6:                                        ; preds = %if.else
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.6
  %8 = load i32, i32* %i, align 4
  %9 = load %struct.stack_def*, %struct.stack_def** %s.addr, align 8
  %top8 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %9, i32 0, i32 0
  %10 = load i32, i32* %top8, align 4
  %cmp9 = icmp sle i32 %8, %10
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.stack_def*, %struct.stack_def** %s.addr, align 8
  %reg = getelementptr inbounds %struct.stack_def, %struct.stack_def* %13, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %reg, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %if.then.4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then, %if.end.12, %if.then.1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @subst_stack_regs(%struct.rtx_def* %insn, %struct.stack_def* %regstack) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %note_link = alloca %struct.rtx_def**, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %top = alloca i32, align 4
  %n_operands = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %2 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top1 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %2, i32 0, i32 0
  %3 = load i32, i32* %top1, align 4
  store i32 %3, i32* %top, align 4
  %4 = load i32, i32* %top, align 4
  %cmp2 = icmp sge i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  call void @straighten_stack(%struct.rtx_def* %6, %struct.stack_def* %7)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.3
  %8 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top4 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %8, i32 0, i32 0
  %9 = load i32, i32* %top4, align 4
  %cmp5 = icmp sge i32 %9, 0
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top6 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %10, i32 0, i32 0
  %11 = load i32, i32* %top6, align 4
  %add = add nsw i32 8, %11
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %12 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %12, i32 0, i32 1
  %13 = load i64, i64* %reg_set, align 8
  %and = and i64 %13, %neg
  store i64 %and, i64* %reg_set, align 8
  %14 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top7 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %14, i32 0, i32 0
  %15 = load i32, i32* %top7, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %top7, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %entry
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @stack_regs_mentioned(%struct.rtx_def* %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.9, label %if.end.54

if.then.9:                                        ; preds = %if.end.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %call13 = call i32 @asm_noperands(%struct.rtx_def* %18)
  store i32 %call13, i32* %n_operands, align 4
  %19 = load i32, i32* %n_operands, align 4
  %cmp14 = icmp sge i32 %19, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.9
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  call void @subst_asm_stack_regs(%struct.rtx_def* %20, %struct.stack_def* %21)
  br label %for.end.111

if.end.16:                                        ; preds = %if.then.9
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load20 = load i32, i32* %24, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 39
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.16
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %25 = load i32, i32* %i, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 3
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 0
  %29 = load i32, i32* %num_elem, align 4
  %cmp29 = icmp slt i32 %25, %29
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %call37 = call i32 @stack_regs_mentioned_p(%struct.rtx_def* %34)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %for.body
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %36 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtvec46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec46, align 8
  %elem47 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem47, i32 0, i64 %idxprom40
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx48, align 8
  call void @subst_stack_regs_pat(%struct.rtx_def* %35, %struct.stack_def* %36, %struct.rtx_def* %41)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.53

if.else:                                          ; preds = %if.end.16
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %44 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  call void @subst_stack_regs_pat(%struct.rtx_def* %43, %struct.stack_def* %44, %struct.rtx_def* %46)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else, %for.end
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load55 = load i32, i32* %48, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 37
  br i1 %cmp57, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.54
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load58 = load i32, i32* %50, align 8
  %bf.lshr = lshr i32 %bf.load58, 27
  %bf.clear59 = and i32 %bf.lshr, 1
  %tobool60 = icmp ne i32 %bf.clear59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false, %if.end.54
  br label %for.end.111

if.end.62:                                        ; preds = %lor.lhs.false
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 6
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  store %struct.rtx_def** %rtx65, %struct.rtx_def*** %note_link, align 8
  %52 = load %struct.rtx_def**, %struct.rtx_def*** %note_link, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %note, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.107, %if.end.62
  %54 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool67 = icmp ne %struct.rtx_def* %54, null
  br i1 %tobool67, label %for.body.68, label %for.end.111

for.body.68:                                      ; preds = %for.cond.66
  %55 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load69 = load i32, i32* %56, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 16
  %bf.clear71 = and i32 %bf.lshr70, 255
  %cmp72 = icmp eq i32 %bf.clear71, 10
  br i1 %cmp72, label %land.lhs.true, label %if.else.102

land.lhs.true:                                    ; preds = %for.body.68
  %57 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load76 = load i32, i32* %59, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 61
  br i1 %cmp78, label %land.lhs.true.79, label %if.else.102

land.lhs.true.79:                                 ; preds = %land.lhs.true
  %60 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %62 = load i32, i32* %rtuint, align 4
  %cmp85 = icmp uge i32 %62, 8
  br i1 %cmp85, label %land.lhs.true.86, label %if.else.102

land.lhs.true.86:                                 ; preds = %land.lhs.true.79
  %63 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtuint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %65 = load i32, i32* %rtuint92, align 4
  %cmp93 = icmp ule i32 %65, 15
  br i1 %cmp93, label %if.then.94, label %if.else.102

if.then.94:                                       ; preds = %land.lhs.true.86
  %66 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %note_link, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %68, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %70 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %call101 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %69, %struct.stack_def* %70, %struct.rtx_def* %72, i32 0)
  store %struct.rtx_def* %call101, %struct.rtx_def** %insn.addr, align 8
  br label %if.end.106

if.else.102:                                      ; preds = %land.lhs.true.86, %land.lhs.true.79, %land.lhs.true, %for.body.68
  %73 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 1
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  store %struct.rtx_def** %rtx105, %struct.rtx_def*** %note_link, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.102, %if.then.94
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %74 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 1
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %note, align 8
  br label %for.cond.66

for.end.111:                                      ; preds = %if.then.15, %if.then.61, %for.cond.66
  ret void
}

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @change_stack(%struct.rtx_def* %insn, %struct.stack_def* %old, %struct.stack_def* %new, i32 %where) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %old.addr = alloca %struct.stack_def*, align 8
  %new.addr = alloca %struct.stack_def*, align 8
  %where.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  %update_end = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %old, %struct.stack_def** %old.addr, align 8
  store %struct.stack_def* %new, %struct.stack_def** %new.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  store i32 0, i32* %update_end, align 4
  %0 = load i32, i32* %where.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %tobool = icmp ne %struct.basic_block_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %3, %4
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %land.lhs.true
  store i32 1, i32* %update_end, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %land.lhs.true, %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn.addr, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %7 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %7, i32 0, i32 0
  %8 = load i32, i32* %top, align 4
  store i32 %8, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %9 = load i32, i32* %reg, align 4
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %10, i32 0, i32 1
  %11 = load i64, i64* %reg_set, align 8
  %12 = load i32, i32* %reg, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg5 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %13, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [8 x i8], [8 x i8]* %reg5, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx6, align 1
  %conv = zext i8 %14 to i32
  %sh_prom = zext i32 %conv to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %11, %shl
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %for.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %17 = load i32, i32* %reg, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg10 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %18, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [8 x i8], [8 x i8]* %reg10, i32 0, i64 %idxprom9
  %19 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %19 to i32
  %sub = sub nsw i32 %conv12, 8
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx14, i32 0, i64 16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  %call = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %15, %struct.stack_def* %16, %struct.rtx_def* %20, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %21 = load i32, i32* %reg, align 4
  %dec = add nsw i32 %21, -1
  store i32 %dec, i32* %reg, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top17 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %22, i32 0, i32 0
  %23 = load i32, i32* %top17, align 4
  %cmp18 = icmp eq i32 %23, -2
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.end
  %24 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top21 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %24, i32 0, i32 0
  %25 = load i32, i32* %top21, align 4
  %26 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top22 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %26, i32 0, i32 0
  store i32 %25, i32* %top22, align 4
  %27 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg23 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %27, i32 0, i32 2
  %28 = bitcast [8 x i8]* %reg23 to i8*
  %29 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg24 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %29, i32 0, i32 2
  %30 = bitcast [8 x i8]* %reg24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %28, i8* %30, i64 8, i32 1, i1 false)
  br label %if.end.137

if.else:                                          ; preds = %for.end
  %31 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg_set25 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %31, i32 0, i32 1
  %32 = load i64, i64* %reg_set25, align 8
  %33 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg_set26 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %33, i32 0, i32 1
  %34 = load i64, i64* %reg_set26, align 8
  %cmp27 = icmp eq i64 %32, %34
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else
  br label %win

if.end.30:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2293, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.change_stack, i32 0, i32 0)) #5
  unreachable

win:                                              ; preds = %if.then.29
  %35 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top31 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %35, i32 0, i32 0
  %36 = load i32, i32* %top31, align 4
  %37 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top32 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %37, i32 0, i32 0
  %38 = load i32, i32* %top32, align 4
  %cmp33 = icmp ne i32 %36, %38
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %win
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2296, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.change_stack, i32 0, i32 0)) #5
  unreachable

if.end.36:                                        ; preds = %win
  %39 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top37 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %39, i32 0, i32 0
  %40 = load i32, i32* %top37, align 4
  %cmp38 = icmp ne i32 %40, -1
  br i1 %cmp38, label %if.then.40, label %if.end.116

if.then.40:                                       ; preds = %if.end.36
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.40
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %do.body
  %41 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top41 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %41, i32 0, i32 0
  %42 = load i32, i32* %top41, align 4
  %idxprom42 = sext i32 %42 to i64
  %43 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg43 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %43, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [8 x i8], [8 x i8]* %reg43, i32 0, i64 %idxprom42
  %44 = load i8, i8* %arrayidx44, align 1
  %conv45 = zext i8 %44 to i32
  %45 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top46 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %45, i32 0, i32 0
  %46 = load i32, i32* %top46, align 4
  %idxprom47 = sext i32 %46 to i64
  %47 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg48 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %47, i32 0, i32 2
  %arrayidx49 = getelementptr inbounds [8 x i8], [8 x i8]* %reg48, i32 0, i64 %idxprom47
  %48 = load i8, i8* %arrayidx49, align 1
  %conv50 = zext i8 %48 to i32
  %cmp51 = icmp ne i32 %conv45, %conv50
  br i1 %cmp51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %49 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top53 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %49, i32 0, i32 0
  %50 = load i32, i32* %top53, align 4
  store i32 %50, i32* %reg, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.71, %while.body
  %51 = load i32, i32* %reg, align 4
  %cmp55 = icmp sge i32 %51, 0
  br i1 %cmp55, label %for.body.57, label %for.end.73

for.body.57:                                      ; preds = %for.cond.54
  %52 = load i32, i32* %reg, align 4
  %idxprom58 = sext i32 %52 to i64
  %53 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg59 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %53, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [8 x i8], [8 x i8]* %reg59, i32 0, i64 %idxprom58
  %54 = load i8, i8* %arrayidx60, align 1
  %conv61 = zext i8 %54 to i32
  %55 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top62 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %55, i32 0, i32 0
  %56 = load i32, i32* %top62, align 4
  %idxprom63 = sext i32 %56 to i64
  %57 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg64 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %57, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [8 x i8], [8 x i8]* %reg64, i32 0, i64 %idxprom63
  %58 = load i8, i8* %arrayidx65, align 1
  %conv66 = zext i8 %58 to i32
  %cmp67 = icmp eq i32 %conv61, %conv66
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %for.body.57
  br label %for.end.73

if.end.70:                                        ; preds = %for.body.57
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %59 = load i32, i32* %reg, align 4
  %dec72 = add nsw i32 %59, -1
  store i32 %dec72, i32* %reg, align 4
  br label %for.cond.54

for.end.73:                                       ; preds = %if.then.69, %for.cond.54
  %60 = load i32, i32* %reg, align 4
  %cmp74 = icmp eq i32 %60, -1
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %for.end.73
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.change_stack, i32 0, i32 0)) #5
  unreachable

if.end.77:                                        ; preds = %for.end.73
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %62 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %63 = load i32, i32* %reg, align 4
  %idxprom78 = sext i32 %63 to i64
  %64 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg79 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %64, i32 0, i32 2
  %arrayidx80 = getelementptr inbounds [8 x i8], [8 x i8]* %reg79, i32 0, i64 %idxprom78
  %65 = load i8, i8* %arrayidx80, align 1
  %conv81 = zext i8 %65 to i32
  %sub82 = sub nsw i32 %conv81, 8
  %idxprom83 = sext i32 %sub82 to i64
  %arrayidx84 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx84, i32 0, i64 16
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx85, align 8
  call void @emit_swap_insn(%struct.rtx_def* %61, %struct.stack_def* %62, %struct.rtx_def* %66)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %67 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %top86 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %67, i32 0, i32 0
  %68 = load i32, i32* %top86, align 4
  store i32 %68, i32* %reg, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.111, %while.end
  %69 = load i32, i32* %reg, align 4
  %cmp88 = icmp sge i32 %69, 0
  br i1 %cmp88, label %for.body.90, label %for.end.113

for.body.90:                                      ; preds = %for.cond.87
  %70 = load i32, i32* %reg, align 4
  %idxprom91 = sext i32 %70 to i64
  %71 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg92 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %71, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [8 x i8], [8 x i8]* %reg92, i32 0, i64 %idxprom91
  %72 = load i8, i8* %arrayidx93, align 1
  %conv94 = zext i8 %72 to i32
  %73 = load i32, i32* %reg, align 4
  %idxprom95 = sext i32 %73 to i64
  %74 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg96 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %74, i32 0, i32 2
  %arrayidx97 = getelementptr inbounds [8 x i8], [8 x i8]* %reg96, i32 0, i64 %idxprom95
  %75 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %75 to i32
  %cmp99 = icmp ne i32 %conv94, %conv98
  br i1 %cmp99, label %if.then.101, label %if.end.110

if.then.101:                                      ; preds = %for.body.90
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %77 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %78 = load i32, i32* %reg, align 4
  %idxprom102 = sext i32 %78 to i64
  %79 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg103 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %79, i32 0, i32 2
  %arrayidx104 = getelementptr inbounds [8 x i8], [8 x i8]* %reg103, i32 0, i64 %idxprom102
  %80 = load i8, i8* %arrayidx104, align 1
  %conv105 = zext i8 %80 to i32
  %sub106 = sub nsw i32 %conv105, 8
  %idxprom107 = sext i32 %sub106 to i64
  %arrayidx108 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom107
  %arrayidx109 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx108, i32 0, i64 16
  %81 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx109, align 8
  call void @emit_swap_insn(%struct.rtx_def* %76, %struct.stack_def* %77, %struct.rtx_def* %81)
  br label %for.end.113

if.end.110:                                       ; preds = %for.body.90
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %82 = load i32, i32* %reg, align 4
  %dec112 = add nsw i32 %82, -1
  store i32 %dec112, i32* %reg, align 4
  br label %for.cond.87

for.end.113:                                      ; preds = %if.then.101, %for.cond.87
  br label %do.cond

do.cond:                                          ; preds = %for.end.113
  %83 = load i32, i32* %reg, align 4
  %cmp114 = icmp sge i32 %83, 0
  br i1 %cmp114, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.116

if.end.116:                                       ; preds = %do.end, %if.end.36
  %84 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %top117 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %84, i32 0, i32 0
  %85 = load i32, i32* %top117, align 4
  store i32 %85, i32* %reg, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.134, %if.end.116
  %86 = load i32, i32* %reg, align 4
  %cmp119 = icmp sge i32 %86, 0
  br i1 %cmp119, label %for.body.121, label %for.end.136

for.body.121:                                     ; preds = %for.cond.118
  %87 = load i32, i32* %reg, align 4
  %idxprom122 = sext i32 %87 to i64
  %88 = load %struct.stack_def*, %struct.stack_def** %old.addr, align 8
  %reg123 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %88, i32 0, i32 2
  %arrayidx124 = getelementptr inbounds [8 x i8], [8 x i8]* %reg123, i32 0, i64 %idxprom122
  %89 = load i8, i8* %arrayidx124, align 1
  %conv125 = zext i8 %89 to i32
  %90 = load i32, i32* %reg, align 4
  %idxprom126 = sext i32 %90 to i64
  %91 = load %struct.stack_def*, %struct.stack_def** %new.addr, align 8
  %reg127 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %91, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [8 x i8], [8 x i8]* %reg127, i32 0, i64 %idxprom126
  %92 = load i8, i8* %arrayidx128, align 1
  %conv129 = zext i8 %92 to i32
  %cmp130 = icmp ne i32 %conv125, %conv129
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body.121
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2343, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.change_stack, i32 0, i32 0)) #5
  unreachable

if.end.133:                                       ; preds = %for.body.121
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %93 = load i32, i32* %reg, align 4
  %dec135 = add nsw i32 %93, -1
  store i32 %dec135, i32* %reg, align 4
  br label %for.cond.118

for.end.136:                                      ; preds = %for.cond.118
  br label %if.end.137

if.end.137:                                       ; preds = %for.end.136, %if.then.20
  %94 = load i32, i32* %update_end, align 4
  %tobool138 = icmp ne i32 %94, 0
  br i1 %tobool138, label %if.then.139, label %if.end.144

if.then.139:                                      ; preds = %if.end.137
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 1
  %rtx142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx142, align 8
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %end143 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 1
  store %struct.rtx_def* %96, %struct.rtx_def** %end143, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.139, %if.end.137
  ret void
}

declare void @start_sequence() #1

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %insn, %struct.stack_def* %regstack, %struct.rtx_def* %reg, i32 %where) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %where.addr = alloca i32, align 4
  %pop_insn = alloca %struct.rtx_def*, align 8
  %pop_rtx = alloca %struct.rtx_def*, align 8
  %hard_regno = alloca i32, align 4
  %reg1 = alloca %struct.rtx_def*, align 8
  %reg2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 %where, i32* %where.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx5, align 4
  %cmp6 = icmp eq i32 %5, 6
  br i1 %cmp6, label %if.then, label %if.end.28

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %7 = load i32, i32* %rtuint, align 4
  %sub = sub i32 %7, 8
  %idxprom8 = zext i32 %sub to i64
  %arrayidx9 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom8
  %arrayidx10 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx9, i32 0, i64 16
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %reg1, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %10 = load i32, i32* %rtuint13, align 4
  %add = add i32 %10, 1
  %sub14 = sub i32 %add, 8
  %idxprom15 = zext i32 %sub14 to i64
  %arrayidx16 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx16, i32 0, i64 16
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx17, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %reg2, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %pop_insn, align 8
  %12 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %call = call i32 @get_hard_regnum(%struct.stack_def* %12, %struct.rtx_def* %13)
  %cmp18 = icmp sge i32 %call, 0
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %17 = load i32, i32* %where.addr, align 4
  %call20 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %14, %struct.stack_def* %15, %struct.rtx_def* %16, i32 %17)
  store %struct.rtx_def* %call20, %struct.rtx_def** %pop_insn, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.then
  %18 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %call21 = call i32 @get_hard_regnum(%struct.stack_def* %18, %struct.rtx_def* %19)
  %cmp22 = icmp sge i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %21 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %23 = load i32, i32* %where.addr, align 4
  %call24 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %20, %struct.stack_def* %21, %struct.rtx_def* %22, i32 %23)
  store %struct.rtx_def* %call24, %struct.rtx_def** %pop_insn, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %pop_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %if.end.25
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 939, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.emit_pop_insn, i32 0, i32 0)) #5
  unreachable

if.end.27:                                        ; preds = %if.end.25
  %25 = load %struct.rtx_def*, %struct.rtx_def** %pop_insn, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %26 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call29 = call i32 @get_hard_regnum(%struct.stack_def* %26, %struct.rtx_def* %27)
  store i32 %call29, i32* %hard_regno, align 4
  %28 = load i32, i32* %hard_regno, align 4
  %cmp30 = icmp slt i32 %28, 8
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 946, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.emit_pop_insn, i32 0, i32 0)) #5
  unreachable

if.end.32:                                        ; preds = %if.end.28
  %29 = load i32, i32* %hard_regno, align 4
  %sub33 = sub nsw i32 %29, 8
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx35 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx35, i32 0, i64 16
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 0, i64 16), align 8
  %call37 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %30, %struct.rtx_def* %31)
  store %struct.rtx_def* %call37, %struct.rtx_def** %pop_rtx, align 8
  %32 = load i32, i32* %where.addr, align 4
  %cmp38 = icmp eq i32 %32, 0
  br i1 %cmp38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.end.32
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pop_rtx, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call40 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %33, %struct.rtx_def* %34)
  store %struct.rtx_def* %call40, %struct.rtx_def** %pop_insn, align 8
  br label %if.end.42

if.else:                                          ; preds = %if.end.32
  %35 = load %struct.rtx_def*, %struct.rtx_def** %pop_rtx, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call41 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %35, %struct.rtx_def* %36)
  store %struct.rtx_def* %call41, %struct.rtx_def** %pop_insn, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.39
  %37 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 0, i64 16), align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %pop_insn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call45 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 1, %struct.rtx_def* %37, %struct.rtx_def* %39)
  %40 = load %struct.rtx_def*, %struct.rtx_def** %pop_insn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 6
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  store %struct.rtx_def* %call45, %struct.rtx_def** %rtx48, align 8
  %41 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %41, i32 0, i32 0
  %42 = load i32, i32* %top, align 4
  %idxprom49 = sext i32 %42 to i64
  %43 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg50 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %43, i32 0, i32 2
  %arrayidx51 = getelementptr inbounds [8 x i8], [8 x i8]* %reg50, i32 0, i64 %idxprom49
  %44 = load i8, i8* %arrayidx51, align 1
  %45 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top52 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %45, i32 0, i32 0
  %46 = load i32, i32* %top52, align 4
  %47 = load i32, i32* %hard_regno, align 4
  %sub53 = sub nsw i32 %47, 8
  %sub54 = sub nsw i32 %46, %sub53
  %idxprom55 = sext i32 %sub54 to i64
  %48 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg56 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %48, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [8 x i8], [8 x i8]* %reg56, i32 0, i64 %idxprom55
  store i8 %44, i8* %arrayidx57, align 1
  %49 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top58 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %49, i32 0, i32 0
  %50 = load i32, i32* %top58, align 4
  %sub59 = sub nsw i32 %50, 1
  store i32 %sub59, i32* %top58, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %52 = load i32, i32* %rtuint62, align 4
  %sh_prom = zext i32 %52 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %53 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %53, i32 0, i32 1
  %54 = load i64, i64* %reg_set, align 8
  %and = and i64 %54, %neg
  store i64 %and, i64* %reg_set, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %pop_insn, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.27
  %56 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %56
}

; Function Attrs: nounwind uwtable
define internal void @emit_swap_insn(%struct.rtx_def* %insn, %struct.stack_def* %regstack, %struct.rtx_def* %reg) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %hard_regno = alloca i32, align 4
  %swap_rtx = alloca %struct.rtx_def*, align 8
  %tmp = alloca i32, align 4
  %other_reg = alloca i32, align 4
  %i1 = alloca %struct.rtx_def*, align 8
  %i1set = alloca %struct.rtx_def*, align 8
  %tmp25 = alloca %struct.rtx_def*, align 8
  %limit = alloca %struct.rtx_def*, align 8
  %i1src = alloca %struct.rtx_def*, align 8
  %i1dest = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %i1set, align 8
  %0 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @get_hard_regnum(%struct.stack_def* %0, %struct.rtx_def* %1)
  store i32 %call, i32* %hard_regno, align 4
  %2 = load i32, i32* %hard_regno, align 4
  %cmp = icmp slt i32 %2, 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 990, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.emit_swap_insn, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %hard_regno, align 4
  %cmp4 = icmp eq i32 %3, 8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %if.end.175

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %4, i32 0, i32 0
  %5 = load i32, i32* %top, align 4
  %6 = load i32, i32* %hard_regno, align 4
  %sub = sub nsw i32 %6, 8
  %sub7 = sub nsw i32 %5, %sub
  store i32 %sub7, i32* %other_reg, align 4
  %7 = load i32, i32* %other_reg, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg8 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %reg8, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  store i32 %conv, i32* %tmp, align 4
  %10 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top9 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %10, i32 0, i32 0
  %11 = load i32, i32* %top9, align 4
  %idxprom10 = sext i32 %11 to i64
  %12 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg11 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %12, i32 0, i32 2
  %arrayidx12 = getelementptr inbounds [8 x i8], [8 x i8]* %reg11, i32 0, i64 %idxprom10
  %13 = load i8, i8* %arrayidx12, align 1
  %14 = load i32, i32* %other_reg, align 4
  %idxprom13 = sext i32 %14 to i64
  %15 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg14 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %15, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [8 x i8], [8 x i8]* %reg14, i32 0, i64 %idxprom13
  store i8 %13, i8* %arrayidx15, align 1
  %16 = load i32, i32* %tmp, align 4
  %conv16 = trunc i32 %16 to i8
  %17 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top17 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %17, i32 0, i32 0
  %18 = load i32, i32* %top17, align 4
  %idxprom18 = sext i32 %18 to i64
  %19 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg19 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %19, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %reg19, i32 0, i64 %idxprom18
  store i8 %conv16, i8* %arrayidx20, align 1
  store %struct.rtx_def* null, %struct.rtx_def** %i1, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %tobool = icmp ne %struct.basic_block_def* %20, null
  br i1 %tobool, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %if.end.6
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 0
  %23 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp21 = icmp ne %struct.rtx_def* %21, %23
  br i1 %cmp21, label %if.then.23, label %if.end.63

if.then.23:                                       ; preds = %land.lhs.true
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %tmp25, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %head28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %limit, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %if.then.23
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %limit, align 8
  %cmp32 = icmp ne %struct.rtx_def* %29, %30
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load = load i32, i32* %32, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp34 = icmp eq i32 %bf.clear, 36
  br i1 %cmp34, label %if.then.58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load36 = load i32, i32* %34, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 34
  br i1 %cmp38, label %if.then.58, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load41 = load i32, i32* %36, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 37
  br i1 %cmp43, label %land.lhs.true.45, label %lor.lhs.false.50

land.lhs.true.45:                                 ; preds = %lor.lhs.false.40
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx47 to i32*
  %38 = load i32, i32* %rtint, align 4
  %cmp48 = icmp eq i32 %38, -80
  br i1 %cmp48, label %if.then.58, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.45, %lor.lhs.false.40
  %39 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load51 = load i32, i32* %40, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 32
  br i1 %cmp53, label %land.lhs.true.55, label %if.end.59

land.lhs.true.55:                                 ; preds = %lor.lhs.false.50
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %call56 = call i32 @stack_regs_mentioned(%struct.rtx_def* %41)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %land.lhs.true.55, %land.lhs.true.45, %lor.lhs.false, %while.body
  %42 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %i1, align 8
  br label %while.end

if.end.59:                                        ; preds = %land.lhs.true.55, %lor.lhs.false.50
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tmp25, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 1
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %tmp25, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.58, %while.cond
  br label %if.end.63

if.end.63:                                        ; preds = %while.end, %land.lhs.true, %if.end.6
  %45 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %cmp64 = icmp ne %struct.rtx_def* %45, null
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.159

land.lhs.true.66:                                 ; preds = %if.end.63
  %46 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load67 = load i32, i32* %47, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %idxprom69 = sext i32 %bf.clear68 to i64
  %arrayidx70 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom69
  %48 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %48 to i32
  %cmp72 = icmp eq i32 %conv71, 105
  br i1 %cmp72, label %cond.true, label %cond.false.89

cond.true:                                        ; preds = %land.lhs.true.66
  %49 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load77 = load i32, i32* %51, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 47
  br i1 %cmp79, label %cond.true.81, label %cond.false

cond.true.81:                                     ; preds = %cond.true
  %52 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 3
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %54 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %call88 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %54, %struct.rtx_def* %56)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.81
  %cond = phi %struct.rtx_def* [ %53, %cond.true.81 ], [ %call88, %cond.false ]
  br label %cond.end.90

cond.false.89:                                    ; preds = %land.lhs.true.66
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.end
  %cond91 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.89 ]
  store %struct.rtx_def* %cond91, %struct.rtx_def** %i1set, align 8
  %cmp92 = icmp ne %struct.rtx_def* %cond91, null
  br i1 %cmp92, label %if.then.94, label %if.end.159

if.then.94:                                       ; preds = %cond.end.90
  %57 = load %struct.rtx_def*, %struct.rtx_def** %i1set, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 1
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %call99 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx98)
  %58 = load %struct.rtx_def*, %struct.rtx_def** %call99, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %i1src, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %i1set, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %call104 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx103)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %call104, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %i1dest, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %i1dest, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load105 = load i32, i32* %62, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  %cmp107 = icmp eq i32 %bf.clear106, 61
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.131

land.lhs.true.109:                                ; preds = %if.then.94
  %63 = load %struct.rtx_def*, %struct.rtx_def** %i1dest, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx111 to i32*
  %64 = load i32, i32* %rtuint, align 4
  %cmp112 = icmp eq i32 %64, 8
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.131

land.lhs.true.114:                                ; preds = %land.lhs.true.109
  %65 = load %struct.rtx_def*, %struct.rtx_def** %i1src, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load115 = load i32, i32* %66, align 8
  %bf.clear116 = and i32 %bf.load115, 65535
  %cmp117 = icmp eq i32 %bf.clear116, 61
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.131

land.lhs.true.119:                                ; preds = %land.lhs.true.114
  %67 = load %struct.rtx_def*, %struct.rtx_def** %i1src, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtuint122 = bitcast %union.rtunion_def* %arrayidx121 to i32*
  %68 = load i32, i32* %rtuint122, align 4
  %69 = load i32, i32* %hard_regno, align 4
  %sub123 = sub i32 %69, 1
  %cmp124 = icmp eq i32 %68, %sub123
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.131

land.lhs.true.126:                                ; preds = %land.lhs.true.119
  %70 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call127 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %70, i32 1, i32 8)
  %cmp128 = icmp eq %struct.rtx_def* %call127, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %land.lhs.true.126
  br label %if.end.175

if.end.131:                                       ; preds = %land.lhs.true.126, %land.lhs.true.119, %land.lhs.true.114, %land.lhs.true.109, %if.then.94
  %71 = load %struct.rtx_def*, %struct.rtx_def** %i1dest, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load132 = load i32, i32* %72, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 61
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.158

land.lhs.true.136:                                ; preds = %if.end.131
  %73 = load %struct.rtx_def*, %struct.rtx_def** %i1dest, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtuint139 = bitcast %union.rtunion_def* %arrayidx138 to i32*
  %74 = load i32, i32* %rtuint139, align 4
  %75 = load i32, i32* %hard_regno, align 4
  %cmp140 = icmp eq i32 %74, %75
  br i1 %cmp140, label %land.lhs.true.142, label %if.end.158

land.lhs.true.142:                                ; preds = %land.lhs.true.136
  %76 = load %struct.rtx_def*, %struct.rtx_def** %i1src, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load143 = load i32, i32* %77, align 8
  %bf.clear144 = and i32 %bf.load143, 65535
  %cmp145 = icmp eq i32 %bf.clear144, 61
  br i1 %cmp145, label %land.lhs.true.147, label %if.end.158

land.lhs.true.147:                                ; preds = %land.lhs.true.142
  %78 = load %struct.rtx_def*, %struct.rtx_def** %i1src, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtuint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %79 = load i32, i32* %rtuint150, align 4
  %cmp151 = icmp eq i32 %79, 8
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.158

land.lhs.true.153:                                ; preds = %land.lhs.true.147
  %80 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call154 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %80, i32 1, i32 8)
  %cmp155 = icmp eq %struct.rtx_def* %call154, null
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.153
  br label %if.end.175

if.end.158:                                       ; preds = %land.lhs.true.153, %land.lhs.true.147, %land.lhs.true.142, %land.lhs.true.136, %if.end.131
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %cond.end.90, %if.end.63
  %81 = load i32, i32* %hard_regno, align 4
  %sub160 = sub nsw i32 %81, 8
  %idxprom161 = sext i32 %sub160 to i64
  %arrayidx162 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom161
  %arrayidx163 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx162, i32 0, i64 17
  %82 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx163, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 0, i64 17), align 8
  %call164 = call %struct.rtx_def* @gen_swapxf(%struct.rtx_def* %82, %struct.rtx_def* %83)
  store %struct.rtx_def* %call164, %struct.rtx_def** %swap_rtx, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %tobool165 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool165, label %if.then.166, label %if.else

if.then.166:                                      ; preds = %if.end.159
  %85 = load %struct.rtx_def*, %struct.rtx_def** %swap_rtx, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call167 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %85, %struct.rtx_def* %86)
  br label %if.end.175

if.else:                                          ; preds = %if.end.159
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %tobool168 = icmp ne %struct.basic_block_def* %87, null
  br i1 %tobool168, label %if.then.169, label %if.else.172

if.then.169:                                      ; preds = %if.else
  %88 = load %struct.rtx_def*, %struct.rtx_def** %swap_rtx, align 8
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %head170 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 0
  %90 = load %struct.rtx_def*, %struct.rtx_def** %head170, align 8
  %call171 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %88, %struct.rtx_def* %90)
  br label %if.end.174

if.else.172:                                      ; preds = %if.else
  %91 = load %struct.rtx_def*, %struct.rtx_def** %swap_rtx, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call173 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %91, %struct.rtx_def* %92)
  br label %if.end.174

if.end.174:                                       ; preds = %if.else.172, %if.then.169
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.5, %if.then.130, %if.then.157, %if.end.174, %if.then.166
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @get_hard_regnum(%struct.stack_def* %regstack, %struct.rtx_def* %reg) #0 {
entry:
  %regstack.addr = alloca %struct.stack_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp uge i32 %3, 8
  br i1 %cmp1, label %land.lhs.true.2, label %if.then

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %5 = load i32, i32* %rtuint5, align 4
  %cmp6 = icmp ule i32 %5, 15
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 900, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.get_hard_regnum, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true.2
  %6 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %6, i32 0, i32 0
  %7 = load i32, i32* %top, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %cmp7 = icmp sge i32 %8, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg8 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %10, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %reg8, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %11 to i32
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %13 = load i32, i32* %rtuint12, align 4
  %cmp13 = icmp eq i32 %conv, %13
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  br label %for.end

if.end.16:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %14 = load i32, i32* %i, align 4
  %dec = add nsw i32 %14, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %15 = load i32, i32* %i, align 4
  %cmp17 = icmp sge i32 %15, 0
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %16 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top19 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %16, i32 0, i32 0
  %17 = load i32, i32* %top19, align 4
  %add = add nsw i32 8, %17
  %18 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %add, %18
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ -1, %cond.false ]
  ret i32 %cond
}

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def** @get_true_reg(%struct.rtx_def** %pat) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def**, align 8
  %subreg = alloca %struct.rtx_def*, align 8
  %regno_off = alloca i32, align 4
  store %struct.rtx_def** %pat, %struct.rtx_def*** %pat.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %entry
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 63, label %sw.bb
    i32 125, label %sw.bb.37
    i32 126, label %sw.bb.37
    i32 123, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %for.cond
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %subreg, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %subreg, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %cmp8 = icmp uge i32 %10, 8
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %subreg, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %14 = load i32, i32* %rtuint15, align 4
  %cmp16 = icmp ule i32 %14, 15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %15 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtuint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %16 = load i32, i32* %rtuint19, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load20 = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load20, 16
  %bf.clear21 = and i32 %bf.lshr, 255
  %19 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtuint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %21 = load i32, i32* %rtuint24, align 4
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load25 = load i32, i32* %24, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 16
  %bf.clear27 = and i32 %bf.lshr26, 255
  %call = call i32 @subreg_regno_offset(i32 %16, i32 %bf.clear21, i32 %21, i32 %bf.clear27)
  store i32 %call, i32* %regno_off, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load28 = load i32, i32* %26, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 16
  %bf.clear30 = and i32 %bf.lshr29, 255
  %idxprom = sext i32 %bf.clear30 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %subreg, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtuint33 = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %28 = load i32, i32* %rtuint33, align 4
  %29 = load i32, i32* %regno_off, align 4
  %add = add i32 %28, %29
  %sub = sub i32 %add, 8
  %idxprom34 = zext i32 %sub to i64
  %arrayidx35 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom34
  %arrayidx36 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx35, i32 0, i64 %idxprom
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %31 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %31, align 8
  br label %sw.default

sw.default:                                       ; preds = %for.cond, %if.then
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  ret %struct.rtx_def** %32

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true, %sw.bb
  br label %sw.bb.37

sw.bb.37:                                         ; preds = %for.cond, %for.cond, %for.cond, %if.end
  %33 = load %struct.rtx_def**, %struct.rtx_def*** %pat.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %33, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  store %struct.rtx_def** %rtx40, %struct.rtx_def*** %pat.addr, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb.37
  br label %for.cond
}

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_swapxf(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @straighten_stack(%struct.rtx_def* %insn, %struct.stack_def* %regstack) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %temp_stack = alloca %struct.stack_def, align 8
  %top = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  %0 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top1 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %0, i32 0, i32 0
  %1 = load i32, i32* %top1, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %2, i32 0, i32 1
  %3 = load i64, i64* %reg_set, align 8
  %reg_set2 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 1
  store i64 %3, i64* %reg_set2, align 8
  %4 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top3 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %4, i32 0, i32 0
  %5 = load i32, i32* %top3, align 4
  %top4 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 0
  store i32 %5, i32* %top4, align 4
  store i32 %5, i32* %top, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %top, align 4
  %cmp5 = icmp sge i32 %6, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %top6 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 0
  %7 = load i32, i32* %top6, align 4
  %add = add nsw i32 8, %7
  %8 = load i32, i32* %top, align 4
  %sub = sub nsw i32 %add, %8
  %conv = trunc i32 %sub to i8
  %9 = load i32, i32* %top, align 4
  %idxprom = sext i32 %9 to i64
  %reg = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %reg, i32 0, i64 %idxprom
  store i8 %conv, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %top, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %top, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  call void @change_stack(%struct.rtx_def* %11, %struct.stack_def* %12, %struct.stack_def* %temp_stack, i32 0)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare i32 @asm_noperands(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @subst_asm_stack_regs(%struct.rtx_def* %insn, %struct.stack_def* %regstack) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %alt = alloca i32, align 4
  %note_reg = alloca %struct.rtx_def**, align 8
  %note_loc = alloca %struct.rtx_def***, align 8
  %note_kind = alloca i32*, align 8
  %clobber_reg = alloca %struct.rtx_def**, align 8
  %clobber_loc = alloca %struct.rtx_def***, align 8
  %temp_stack = alloca %struct.stack_def, align 8
  %n_notes = alloca i32, align 4
  %n_clobbers = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %n_inputs = alloca i32, align 4
  %n_outputs = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  %loc = alloca %struct.rtx_def**, align 8
  %clobber = alloca %struct.rtx_def*, align 8
  %reg167 = alloca %struct.rtx_def*, align 8
  %loc171 = alloca %struct.rtx_def**, align 8
  %regno = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp = alloca i32, align 4
  %regnum = alloca i32, align 4
  %regnum359 = alloca i32, align 4
  %regnum377 = alloca i32, align 4
  %j422 = alloca i32, align 4
  %j463 = alloca i32, align 4
  %j542 = alloca i32, align 4
  %j604 = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %clobber_reg, align 8
  store %struct.rtx_def*** null, %struct.rtx_def**** %clobber_loc, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @check_asm_stack_operands(%struct.rtx_def* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end.648

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %3)
  %call1 = call i32 @constrain_operands(i32 1)
  %4 = load i32, i32* @which_alternative, align 4
  store i32 %4, i32* %alt, align 4
  call void @preprocess_constraints()
  %5 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call2 = call i32 @get_asm_operand_n_inputs(%struct.rtx_def* %5)
  store i32 %call2, i32* %n_inputs, align 4
  %6 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %6 to i32
  %7 = load i32, i32* %n_inputs, align 4
  %sub = sub nsw i32 %conv, %7
  store i32 %sub, i32* %n_outputs, align 4
  %8 = load i32, i32* %alt, align 4
  %cmp = icmp slt i32 %8, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1904, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_asm_stack_regs, i32 0, i32 0)) #5
  unreachable

if.end.5:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %9 = load i32, i32* %i, align 4
  %10 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv6 = sext i8 %10 to i32
  %cmp7 = icmp slt i32 %9, %conv6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx9, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 63
  br i1 %cmp10, label %land.lhs.true, label %if.end.36

land.lhs.true:                                    ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %14 to i64
  %arrayidx13 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom12
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load17 = load i32, i32* %17, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 61
  br i1 %cmp19, label %if.then.21, label %if.end.36

if.then.21:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom22
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %20 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom27
  store %struct.rtx_def** %rtx26, %struct.rtx_def*** %arrayidx28, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom29
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %24 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %24 to i64
  %arrayidx35 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom34
  store %struct.rtx_def* %23, %struct.rtx_def** %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 6
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %note, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.44, %for.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool41 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool41, label %for.body.42, label %for.end.48

for.body.42:                                      ; preds = %for.cond.40
  %29 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %29, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.42
  %30 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %note, align 8
  br label %for.cond.40

for.end.48:                                       ; preds = %for.cond.40
  %32 = load i32, i32* %i, align 4
  %conv49 = sext i32 %32 to i64
  %mul = mul i64 %conv49, 8
  %33 = alloca i8, i64 %mul
  %34 = bitcast i8* %33 to %struct.rtx_def**
  store %struct.rtx_def** %34, %struct.rtx_def*** %note_reg, align 8
  %35 = load i32, i32* %i, align 4
  %conv50 = sext i32 %35 to i64
  %mul51 = mul i64 %conv50, 8
  %36 = alloca i8, i64 %mul51
  %37 = bitcast i8* %36 to %struct.rtx_def***
  store %struct.rtx_def*** %37, %struct.rtx_def**** %note_loc, align 8
  %38 = load i32, i32* %i, align 4
  %conv52 = sext i32 %38 to i64
  %mul53 = mul i64 %conv52, 4
  %39 = alloca i8, i64 %mul53
  %40 = bitcast i8* %39 to i32*
  store i32* %40, i32** %note_kind, align 8
  store i32 0, i32* %n_notes, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 6
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %note, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.123, %for.end.48
  %43 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool58 = icmp ne %struct.rtx_def* %43, null
  br i1 %tobool58, label %for.body.59, label %for.end.127

for.body.59:                                      ; preds = %for.cond.57
  %44 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %reg, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  store %struct.rtx_def** %rtx65, %struct.rtx_def*** %loc, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load66 = load i32, i32* %48, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 63
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.85

land.lhs.true.70:                                 ; preds = %for.body.59
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load74 = load i32, i32* %51, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 61
  br i1 %cmp76, label %if.then.78, label %if.end.85

if.then.78:                                       ; preds = %land.lhs.true.70
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  store %struct.rtx_def** %rtx81, %struct.rtx_def*** %loc, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %reg, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.78, %land.lhs.true.70, %for.body.59
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load86 = load i32, i32* %56, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 61
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.122

land.lhs.true.90:                                 ; preds = %if.end.85
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %58 = load i32, i32* %rtuint, align 4
  %cmp93 = icmp uge i32 %58, 8
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.122

land.lhs.true.95:                                 ; preds = %land.lhs.true.90
  %59 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtuint98 = bitcast %union.rtunion_def* %arrayidx97 to i32*
  %60 = load i32, i32* %rtuint98, align 4
  %cmp99 = icmp ule i32 %60, 15
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.122

land.lhs.true.101:                                ; preds = %land.lhs.true.95
  %61 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load102 = load i32, i32* %62, align 8
  %bf.lshr = lshr i32 %bf.load102, 16
  %bf.clear103 = and i32 %bf.lshr, 255
  %cmp104 = icmp eq i32 %bf.clear103, 1
  br i1 %cmp104, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.101
  %63 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load106 = load i32, i32* %64, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %cmp109 = icmp eq i32 %bf.clear108, 10
  br i1 %cmp109, label %if.then.111, label %if.end.122

if.then.111:                                      ; preds = %lor.lhs.false, %land.lhs.true.101
  %65 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %66 = load i32, i32* %n_notes, align 4
  %idxprom112 = sext i32 %66 to i64
  %67 = load %struct.rtx_def**, %struct.rtx_def*** %note_reg, align 8
  %arrayidx113 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %67, i64 %idxprom112
  store %struct.rtx_def* %65, %struct.rtx_def** %arrayidx113, align 8
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  %69 = load i32, i32* %n_notes, align 4
  %idxprom114 = sext i32 %69 to i64
  %70 = load %struct.rtx_def***, %struct.rtx_def**** %note_loc, align 8
  %arrayidx115 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %70, i64 %idxprom114
  store %struct.rtx_def** %68, %struct.rtx_def*** %arrayidx115, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load116 = load i32, i32* %72, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %73 = load i32, i32* %n_notes, align 4
  %idxprom119 = sext i32 %73 to i64
  %74 = load i32*, i32** %note_kind, align 8
  %arrayidx120 = getelementptr inbounds i32, i32* %74, i64 %idxprom119
  store i32 %bf.clear118, i32* %arrayidx120, align 4
  %75 = load i32, i32* %n_notes, align 4
  %inc121 = add nsw i32 %75, 1
  store i32 %inc121, i32* %n_notes, align 4
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.111, %lor.lhs.false, %land.lhs.true.95, %land.lhs.true.90, %if.end.85
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.122
  %76 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %note, align 8
  br label %for.cond.57

for.end.127:                                      ; preds = %for.cond.57
  store i32 0, i32* %n_clobbers, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load128 = load i32, i32* %79, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 39
  br i1 %cmp130, label %if.then.132, label %if.end.222

if.then.132:                                      ; preds = %for.end.127
  %80 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtvec_def**
  %81 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %81, i32 0, i32 0
  %82 = load i32, i32* %num_elem, align 4
  %conv135 = sext i32 %82 to i64
  %mul136 = mul i64 %conv135, 8
  %83 = alloca i8, i64 %mul136
  %84 = bitcast i8* %83 to %struct.rtx_def**
  store %struct.rtx_def** %84, %struct.rtx_def*** %clobber_reg, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtvec139 = bitcast %union.rtunion_def* %arrayidx138 to %struct.rtvec_def**
  %86 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec139, align 8
  %num_elem140 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %86, i32 0, i32 0
  %87 = load i32, i32* %num_elem140, align 4
  %conv141 = sext i32 %87 to i64
  %mul142 = mul i64 %conv141, 8
  %88 = alloca i8, i64 %mul142
  %89 = bitcast i8* %88 to %struct.rtx_def***
  store %struct.rtx_def*** %89, %struct.rtx_def**** %clobber_loc, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.143

for.cond.143:                                     ; preds = %for.inc.219, %if.then.132
  %90 = load i32, i32* %i, align 4
  %91 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtvec146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtvec_def**
  %92 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec146, align 8
  %num_elem147 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %92, i32 0, i32 0
  %93 = load i32, i32* %num_elem147, align 4
  %cmp148 = icmp slt i32 %90, %93
  br i1 %cmp148, label %for.body.150, label %for.end.221

for.body.150:                                     ; preds = %for.cond.143
  %94 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtvec154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec154, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom151
  %97 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx155, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load156 = load i32, i32* %98, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 49
  br i1 %cmp158, label %if.then.160, label %if.end.218

if.then.160:                                      ; preds = %for.body.150
  %99 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %99 to i64
  %100 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtvec164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtvec_def**
  %101 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec164, align 8
  %elem165 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %101, i32 0, i32 1
  %arrayidx166 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem165, i32 0, i64 %idxprom161
  %102 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx166, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %clobber, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %clobber, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 0
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  store %struct.rtx_def* %104, %struct.rtx_def** %reg167, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %clobber, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  store %struct.rtx_def** %rtx174, %struct.rtx_def*** %loc171, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load175 = load i32, i32* %107, align 8
  %bf.clear176 = and i32 %bf.load175, 65535
  %cmp177 = icmp eq i32 %bf.clear176, 63
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.194

land.lhs.true.179:                                ; preds = %if.then.160
  %108 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtx182 = bitcast %union.rtunion_def* %arrayidx181 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx182, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load183 = load i32, i32* %110, align 8
  %bf.clear184 = and i32 %bf.load183, 65535
  %cmp185 = icmp eq i32 %bf.clear184, 61
  br i1 %cmp185, label %if.then.187, label %if.end.194

if.then.187:                                      ; preds = %land.lhs.true.179
  %111 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 0
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  store %struct.rtx_def** %rtx190, %struct.rtx_def*** %loc171, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  store %struct.rtx_def* %113, %struct.rtx_def** %reg167, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.187, %land.lhs.true.179, %if.then.160
  %114 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load195 = load i32, i32* %115, align 8
  %bf.clear196 = and i32 %bf.load195, 65535
  %cmp197 = icmp eq i32 %bf.clear196, 61
  br i1 %cmp197, label %land.lhs.true.199, label %if.end.217

land.lhs.true.199:                                ; preds = %if.end.194
  %116 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 0
  %rtuint202 = bitcast %union.rtunion_def* %arrayidx201 to i32*
  %117 = load i32, i32* %rtuint202, align 4
  %cmp203 = icmp uge i32 %117, 8
  br i1 %cmp203, label %land.lhs.true.205, label %if.end.217

land.lhs.true.205:                                ; preds = %land.lhs.true.199
  %118 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtuint208 = bitcast %union.rtunion_def* %arrayidx207 to i32*
  %119 = load i32, i32* %rtuint208, align 4
  %cmp209 = icmp ule i32 %119, 15
  br i1 %cmp209, label %if.then.211, label %if.end.217

if.then.211:                                      ; preds = %land.lhs.true.205
  %120 = load %struct.rtx_def*, %struct.rtx_def** %reg167, align 8
  %121 = load i32, i32* %n_clobbers, align 4
  %idxprom212 = sext i32 %121 to i64
  %122 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx213 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %122, i64 %idxprom212
  store %struct.rtx_def* %120, %struct.rtx_def** %arrayidx213, align 8
  %123 = load %struct.rtx_def**, %struct.rtx_def*** %loc171, align 8
  %124 = load i32, i32* %n_clobbers, align 4
  %idxprom214 = sext i32 %124 to i64
  %125 = load %struct.rtx_def***, %struct.rtx_def**** %clobber_loc, align 8
  %arrayidx215 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %125, i64 %idxprom214
  store %struct.rtx_def** %123, %struct.rtx_def*** %arrayidx215, align 8
  %126 = load i32, i32* %n_clobbers, align 4
  %inc216 = add nsw i32 %126, 1
  store i32 %inc216, i32* %n_clobbers, align 4
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.211, %land.lhs.true.205, %land.lhs.true.199, %if.end.194
  br label %if.end.218

if.end.218:                                       ; preds = %if.end.217, %for.body.150
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %127 = load i32, i32* %i, align 4
  %inc220 = add nsw i32 %127, 1
  store i32 %inc220, i32* %i, align 4
  br label %for.cond.143

for.end.221:                                      ; preds = %for.cond.143
  br label %if.end.222

if.end.222:                                       ; preds = %for.end.221, %for.end.127
  %128 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %129 = bitcast %struct.stack_def* %temp_stack to i8*
  %130 = bitcast %struct.stack_def* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 24, i32 8, i1 false)
  %131 = load i32, i32* %n_outputs, align 4
  store i32 %131, i32* %i, align 4
  br label %for.cond.223

for.cond.223:                                     ; preds = %for.inc.306, %if.end.222
  %132 = load i32, i32* %i, align 4
  %133 = load i32, i32* %n_outputs, align 4
  %134 = load i32, i32* %n_inputs, align 4
  %add = add nsw i32 %133, %134
  %cmp224 = icmp slt i32 %132, %add
  br i1 %cmp224, label %for.body.226, label %for.end.308

for.body.226:                                     ; preds = %for.cond.223
  %135 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %135 to i64
  %arrayidx228 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom227
  %136 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx228, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load229 = load i32, i32* %137, align 8
  %bf.clear230 = and i32 %bf.load229, 65535
  %cmp231 = icmp eq i32 %bf.clear230, 61
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.305

land.lhs.true.233:                                ; preds = %for.body.226
  %138 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %138 to i64
  %arrayidx235 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom234
  %139 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx235, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtuint238 = bitcast %union.rtunion_def* %arrayidx237 to i32*
  %140 = load i32, i32* %rtuint238, align 4
  %cmp239 = icmp uge i32 %140, 8
  br i1 %cmp239, label %land.lhs.true.241, label %if.end.305

land.lhs.true.241:                                ; preds = %land.lhs.true.233
  %141 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %141 to i64
  %arrayidx243 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom242
  %142 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx243, align 8
  %fld244 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx245 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld244, i32 0, i64 0
  %rtuint246 = bitcast %union.rtunion_def* %arrayidx245 to i32*
  %143 = load i32, i32* %rtuint246, align 4
  %cmp247 = icmp ule i32 %143, 15
  br i1 %cmp247, label %land.lhs.true.249, label %if.end.305

land.lhs.true.249:                                ; preds = %land.lhs.true.241
  %144 = load i32, i32* %alt, align 4
  %idxprom250 = sext i32 %144 to i64
  %145 = load i32, i32* %i, align 4
  %idxprom251 = sext i32 %145 to i64
  %arrayidx252 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom251
  %arrayidx253 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx252, i32 0, i64 %idxprom250
  %class = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx253, i32 0, i32 1
  %146 = load i32, i32* %class, align 4
  %call254 = call i32 @reg_class_subset_p(i32 %146, i32 15)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %land.lhs.true.256, label %if.end.305

land.lhs.true.256:                                ; preds = %land.lhs.true.249
  %147 = load i32, i32* %alt, align 4
  %idxprom257 = sext i32 %147 to i64
  %148 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %148 to i64
  %arrayidx259 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom258
  %arrayidx260 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx259, i32 0, i64 %idxprom257
  %class261 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx260, i32 0, i32 1
  %149 = load i32, i32* %class261, align 4
  %cmp262 = icmp ne i32 %149, 15
  br i1 %cmp262, label %if.then.264, label %if.end.305

if.then.264:                                      ; preds = %land.lhs.true.256
  %150 = load i32, i32* %i, align 4
  %idxprom265 = sext i32 %150 to i64
  %arrayidx266 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom265
  %151 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx266, align 8
  %call267 = call i32 @get_hard_regnum(%struct.stack_def* %temp_stack, %struct.rtx_def* %151)
  store i32 %call267, i32* %regno, align 4
  %152 = load i32, i32* %regno, align 4
  %cmp268 = icmp slt i32 %152, 0
  br i1 %cmp268, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %if.then.264
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1998, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_asm_stack_regs, i32 0, i32 0)) #5
  unreachable

if.end.271:                                       ; preds = %if.then.264
  %153 = load i32, i32* %regno, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %154 to i64
  %arrayidx273 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom272
  %155 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx273, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtuint276 = bitcast %union.rtunion_def* %arrayidx275 to i32*
  %156 = load i32, i32* %rtuint276, align 4
  %cmp277 = icmp ne i32 %153, %156
  br i1 %cmp277, label %if.then.279, label %if.end.304

if.then.279:                                      ; preds = %if.end.271
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 0
  %157 = load i32, i32* %top, align 4
  %158 = load i32, i32* %regno, align 4
  %sub280 = sub nsw i32 %158, 8
  %sub281 = sub nsw i32 %157, %sub280
  store i32 %sub281, i32* %k, align 4
  %top282 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 0
  %159 = load i32, i32* %top282, align 4
  %160 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %160 to i64
  %arrayidx284 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom283
  %161 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx284, align 8
  %fld285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld285, i32 0, i64 0
  %rtuint287 = bitcast %union.rtunion_def* %arrayidx286 to i32*
  %162 = load i32, i32* %rtuint287, align 4
  %sub288 = sub i32 %162, 8
  %sub289 = sub i32 %159, %sub288
  store i32 %sub289, i32* %j, align 4
  %163 = load i32, i32* %k, align 4
  %idxprom290 = sext i32 %163 to i64
  %reg291 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 2
  %arrayidx292 = getelementptr inbounds [8 x i8], [8 x i8]* %reg291, i32 0, i64 %idxprom290
  %164 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %164 to i32
  store i32 %conv293, i32* %temp, align 4
  %165 = load i32, i32* %j, align 4
  %idxprom294 = sext i32 %165 to i64
  %reg295 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 2
  %arrayidx296 = getelementptr inbounds [8 x i8], [8 x i8]* %reg295, i32 0, i64 %idxprom294
  %166 = load i8, i8* %arrayidx296, align 1
  %167 = load i32, i32* %k, align 4
  %idxprom297 = sext i32 %167 to i64
  %reg298 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 2
  %arrayidx299 = getelementptr inbounds [8 x i8], [8 x i8]* %reg298, i32 0, i64 %idxprom297
  store i8 %166, i8* %arrayidx299, align 1
  %168 = load i32, i32* %temp, align 4
  %conv300 = trunc i32 %168 to i8
  %169 = load i32, i32* %j, align 4
  %idxprom301 = sext i32 %169 to i64
  %reg302 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %temp_stack, i32 0, i32 2
  %arrayidx303 = getelementptr inbounds [8 x i8], [8 x i8]* %reg302, i32 0, i64 %idxprom301
  store i8 %conv300, i8* %arrayidx303, align 1
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.279, %if.end.271
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %land.lhs.true.256, %land.lhs.true.249, %land.lhs.true.241, %land.lhs.true.233, %for.body.226
  br label %for.inc.306

for.inc.306:                                      ; preds = %if.end.305
  %170 = load i32, i32* %i, align 4
  %inc307 = add nsw i32 %170, 1
  store i32 %inc307, i32* %i, align 4
  br label %for.cond.223

for.end.308:                                      ; preds = %for.cond.223
  %171 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %172 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  call void @change_stack(%struct.rtx_def* %171, %struct.stack_def* %172, %struct.stack_def* %temp_stack, i32 1)
  %173 = load i32, i32* %n_outputs, align 4
  store i32 %173, i32* %i, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc.347, %for.end.308
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* %n_outputs, align 4
  %176 = load i32, i32* %n_inputs, align 4
  %add310 = add nsw i32 %175, %176
  %cmp311 = icmp slt i32 %174, %add310
  br i1 %cmp311, label %for.body.313, label %for.end.349

for.body.313:                                     ; preds = %for.cond.309
  %177 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %177 to i64
  %arrayidx315 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom314
  %178 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx315, align 8
  %179 = bitcast %struct.rtx_def* %178 to i32*
  %bf.load316 = load i32, i32* %179, align 8
  %bf.clear317 = and i32 %bf.load316, 65535
  %cmp318 = icmp eq i32 %bf.clear317, 61
  br i1 %cmp318, label %land.lhs.true.320, label %if.end.346

land.lhs.true.320:                                ; preds = %for.body.313
  %180 = load i32, i32* %i, align 4
  %idxprom321 = sext i32 %180 to i64
  %arrayidx322 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom321
  %181 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx322, align 8
  %fld323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld323, i32 0, i64 0
  %rtuint325 = bitcast %union.rtunion_def* %arrayidx324 to i32*
  %182 = load i32, i32* %rtuint325, align 4
  %cmp326 = icmp uge i32 %182, 8
  br i1 %cmp326, label %land.lhs.true.328, label %if.end.346

land.lhs.true.328:                                ; preds = %land.lhs.true.320
  %183 = load i32, i32* %i, align 4
  %idxprom329 = sext i32 %183 to i64
  %arrayidx330 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom329
  %184 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx330, align 8
  %fld331 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx332 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld331, i32 0, i64 0
  %rtuint333 = bitcast %union.rtunion_def* %arrayidx332 to i32*
  %185 = load i32, i32* %rtuint333, align 4
  %cmp334 = icmp ule i32 %185, 15
  br i1 %cmp334, label %if.then.336, label %if.end.346

if.then.336:                                      ; preds = %land.lhs.true.328
  %186 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %187 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %187 to i64
  %arrayidx338 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom337
  %188 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx338, align 8
  %call339 = call i32 @get_hard_regnum(%struct.stack_def* %186, %struct.rtx_def* %188)
  store i32 %call339, i32* %regnum, align 4
  %189 = load i32, i32* %regnum, align 4
  %cmp340 = icmp slt i32 %189, 0
  br i1 %cmp340, label %if.then.342, label %if.end.343

if.then.342:                                      ; preds = %if.then.336
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2032, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_asm_stack_regs, i32 0, i32 0)) #5
  unreachable

if.end.343:                                       ; preds = %if.then.336
  %190 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %190 to i64
  %arrayidx345 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom344
  %191 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx345, align 8
  %192 = load i32, i32* %regnum, align 4
  call void @replace_reg(%struct.rtx_def** %191, i32 %192)
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.343, %land.lhs.true.328, %land.lhs.true.320, %for.body.313
  br label %for.inc.347

for.inc.347:                                      ; preds = %if.end.346
  %193 = load i32, i32* %i, align 4
  %inc348 = add nsw i32 %193, 1
  store i32 %inc348, i32* %i, align 4
  br label %for.cond.309

for.end.349:                                      ; preds = %for.cond.309
  store i32 0, i32* %i, align 4
  br label %for.cond.350

for.cond.350:                                     ; preds = %for.inc.370, %for.end.349
  %194 = load i32, i32* %i, align 4
  %195 = load i32, i32* %n_notes, align 4
  %cmp351 = icmp slt i32 %194, %195
  br i1 %cmp351, label %for.body.353, label %for.end.372

for.body.353:                                     ; preds = %for.cond.350
  %196 = load i32, i32* %i, align 4
  %idxprom354 = sext i32 %196 to i64
  %197 = load i32*, i32** %note_kind, align 8
  %arrayidx355 = getelementptr inbounds i32, i32* %197, i64 %idxprom354
  %198 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp eq i32 %198, 1
  br i1 %cmp356, label %if.then.358, label %if.end.369

if.then.358:                                      ; preds = %for.body.353
  %199 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %200 = load i32, i32* %i, align 4
  %idxprom360 = sext i32 %200 to i64
  %201 = load %struct.rtx_def**, %struct.rtx_def*** %note_reg, align 8
  %arrayidx361 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %201, i64 %idxprom360
  %202 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx361, align 8
  %call362 = call i32 @get_hard_regnum(%struct.stack_def* %199, %struct.rtx_def* %202)
  store i32 %call362, i32* %regnum359, align 4
  %203 = load i32, i32* %regnum359, align 4
  %cmp363 = icmp slt i32 %203, 0
  br i1 %cmp363, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %if.then.358
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 2043, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_asm_stack_regs, i32 0, i32 0)) #5
  unreachable

if.end.366:                                       ; preds = %if.then.358
  %204 = load i32, i32* %i, align 4
  %idxprom367 = sext i32 %204 to i64
  %205 = load %struct.rtx_def***, %struct.rtx_def**** %note_loc, align 8
  %arrayidx368 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %205, i64 %idxprom367
  %206 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx368, align 8
  %207 = load i32, i32* %regnum359, align 4
  call void @replace_reg(%struct.rtx_def** %206, i32 %207)
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.366, %for.body.353
  br label %for.inc.370

for.inc.370:                                      ; preds = %if.end.369
  %208 = load i32, i32* %i, align 4
  %inc371 = add nsw i32 %208, 1
  store i32 %inc371, i32* %i, align 4
  br label %for.cond.350

for.end.372:                                      ; preds = %for.cond.350
  store i32 0, i32* %i, align 4
  br label %for.cond.373

for.cond.373:                                     ; preds = %for.inc.391, %for.end.372
  %209 = load i32, i32* %i, align 4
  %210 = load i32, i32* %n_clobbers, align 4
  %cmp374 = icmp slt i32 %209, %210
  br i1 %cmp374, label %for.body.376, label %for.end.393

for.body.376:                                     ; preds = %for.cond.373
  %211 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %212 = load i32, i32* %i, align 4
  %idxprom378 = sext i32 %212 to i64
  %213 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx379 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %213, i64 %idxprom378
  %214 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx379, align 8
  %call380 = call i32 @get_hard_regnum(%struct.stack_def* %211, %struct.rtx_def* %214)
  store i32 %call380, i32* %regnum377, align 4
  %215 = load i32, i32* %regnum377, align 4
  %cmp381 = icmp sge i32 %215, 0
  br i1 %cmp381, label %if.then.383, label %if.end.390

if.then.383:                                      ; preds = %for.body.376
  %216 = load i32, i32* %regnum377, align 4
  %sub384 = sub nsw i32 %216, 8
  %idxprom385 = sext i32 %sub384 to i64
  %arrayidx386 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom385
  %arrayidx387 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx386, i32 0, i64 16
  %217 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx387, align 8
  %218 = load i32, i32* %i, align 4
  %idxprom388 = sext i32 %218 to i64
  %219 = load %struct.rtx_def***, %struct.rtx_def**** %clobber_loc, align 8
  %arrayidx389 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %219, i64 %idxprom388
  %220 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx389, align 8
  store %struct.rtx_def* %217, %struct.rtx_def** %220, align 8
  br label %if.end.390

if.end.390:                                       ; preds = %if.then.383, %for.body.376
  br label %for.inc.391

for.inc.391:                                      ; preds = %if.end.390
  %221 = load i32, i32* %i, align 4
  %inc392 = add nsw i32 %221, 1
  store i32 %inc392, i32* %i, align 4
  br label %for.cond.373

for.end.393:                                      ; preds = %for.cond.373
  %222 = load i32, i32* %n_outputs, align 4
  store i32 %222, i32* %i, align 4
  br label %for.cond.394

for.cond.394:                                     ; preds = %for.inc.456, %for.end.393
  %223 = load i32, i32* %i, align 4
  %224 = load i32, i32* %n_outputs, align 4
  %225 = load i32, i32* %n_inputs, align 4
  %add395 = add nsw i32 %224, %225
  %cmp396 = icmp slt i32 %223, %add395
  br i1 %cmp396, label %for.body.398, label %for.end.458

for.body.398:                                     ; preds = %for.cond.394
  %226 = load i32, i32* %i, align 4
  %idxprom399 = sext i32 %226 to i64
  %arrayidx400 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom399
  %227 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx400, align 8
  %228 = bitcast %struct.rtx_def* %227 to i32*
  %bf.load401 = load i32, i32* %228, align 8
  %bf.clear402 = and i32 %bf.load401, 65535
  %cmp403 = icmp eq i32 %bf.clear402, 61
  br i1 %cmp403, label %land.lhs.true.405, label %if.end.455

land.lhs.true.405:                                ; preds = %for.body.398
  %229 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %229 to i64
  %arrayidx407 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom406
  %230 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx407, align 8
  %fld408 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx409 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld408, i32 0, i64 0
  %rtuint410 = bitcast %union.rtunion_def* %arrayidx409 to i32*
  %231 = load i32, i32* %rtuint410, align 4
  %cmp411 = icmp uge i32 %231, 8
  br i1 %cmp411, label %land.lhs.true.413, label %if.end.455

land.lhs.true.413:                                ; preds = %land.lhs.true.405
  %232 = load i32, i32* %i, align 4
  %idxprom414 = sext i32 %232 to i64
  %arrayidx415 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom414
  %233 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx415, align 8
  %fld416 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx417 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld416, i32 0, i64 0
  %rtuint418 = bitcast %union.rtunion_def* %arrayidx417 to i32*
  %234 = load i32, i32* %rtuint418, align 4
  %cmp419 = icmp ule i32 %234, 15
  br i1 %cmp419, label %if.then.421, label %if.end.455

if.then.421:                                      ; preds = %land.lhs.true.413
  store i32 0, i32* %j422, align 4
  br label %for.cond.423

for.cond.423:                                     ; preds = %for.inc.435, %if.then.421
  %235 = load i32, i32* %j422, align 4
  %236 = load i32, i32* %n_clobbers, align 4
  %cmp424 = icmp slt i32 %235, %236
  br i1 %cmp424, label %for.body.426, label %for.end.437

for.body.426:                                     ; preds = %for.cond.423
  %237 = load i32, i32* %j422, align 4
  %idxprom427 = sext i32 %237 to i64
  %238 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx428 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %238, i64 %idxprom427
  %239 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx428, align 8
  %240 = load i32, i32* %i, align 4
  %idxprom429 = sext i32 %240 to i64
  %arrayidx430 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom429
  %241 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx430, align 8
  %call431 = call i32 @operands_match_p(%struct.rtx_def* %239, %struct.rtx_def* %241)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.then.433, label %if.end.434

if.then.433:                                      ; preds = %for.body.426
  br label %for.end.437

if.end.434:                                       ; preds = %for.body.426
  br label %for.inc.435

for.inc.435:                                      ; preds = %if.end.434
  %242 = load i32, i32* %j422, align 4
  %inc436 = add nsw i32 %242, 1
  store i32 %inc436, i32* %j422, align 4
  br label %for.cond.423

for.end.437:                                      ; preds = %if.then.433, %for.cond.423
  %243 = load i32, i32* %j422, align 4
  %244 = load i32, i32* %n_clobbers, align 4
  %cmp438 = icmp slt i32 %243, %244
  br i1 %cmp438, label %if.then.447, label %lor.lhs.false.440

lor.lhs.false.440:                                ; preds = %for.end.437
  %245 = load i32, i32* %alt, align 4
  %idxprom441 = sext i32 %245 to i64
  %246 = load i32, i32* %i, align 4
  %idxprom442 = sext i32 %246 to i64
  %arrayidx443 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom442
  %arrayidx444 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx443, i32 0, i64 %idxprom441
  %matches = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx444, i32 0, i32 3
  %247 = load i32, i32* %matches, align 4
  %cmp445 = icmp sge i32 %247, 0
  br i1 %cmp445, label %if.then.447, label %if.end.454

if.then.447:                                      ; preds = %lor.lhs.false.440, %for.end.437
  %248 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top448 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %248, i32 0, i32 0
  %249 = load i32, i32* %top448, align 4
  %idxprom449 = sext i32 %249 to i64
  %250 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg450 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %250, i32 0, i32 2
  %arrayidx451 = getelementptr inbounds [8 x i8], [8 x i8]* %reg450, i32 0, i64 %idxprom449
  %251 = load i8, i8* %arrayidx451, align 1
  %conv452 = zext i8 %251 to i32
  %sh_prom = zext i32 %conv452 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %252 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %252, i32 0, i32 1
  %253 = load i64, i64* %reg_set, align 8
  %and = and i64 %253, %neg
  store i64 %and, i64* %reg_set, align 8
  %254 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top453 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %254, i32 0, i32 0
  %255 = load i32, i32* %top453, align 4
  %dec = add nsw i32 %255, -1
  store i32 %dec, i32* %top453, align 4
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.447, %lor.lhs.false.440
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.454, %land.lhs.true.413, %land.lhs.true.405, %for.body.398
  br label %for.inc.456

for.inc.456:                                      ; preds = %if.end.455
  %256 = load i32, i32* %i, align 4
  %inc457 = add nsw i32 %256, 1
  store i32 %inc457, i32* %i, align 4
  br label %for.cond.394

for.end.458:                                      ; preds = %for.cond.394
  store i32 15, i32* %i, align 4
  br label %for.cond.459

for.cond.459:                                     ; preds = %for.inc.512, %for.end.458
  %257 = load i32, i32* %i, align 4
  %cmp460 = icmp sge i32 %257, 8
  br i1 %cmp460, label %for.body.462, label %for.end.514

for.body.462:                                     ; preds = %for.cond.459
  store i32 0, i32* %j463, align 4
  br label %for.cond.464

for.cond.464:                                     ; preds = %for.inc.509, %for.body.462
  %258 = load i32, i32* %j463, align 4
  %259 = load i32, i32* %n_outputs, align 4
  %cmp465 = icmp slt i32 %258, %259
  br i1 %cmp465, label %for.body.467, label %for.end.511

for.body.467:                                     ; preds = %for.cond.464
  %260 = load i32, i32* %j463, align 4
  %idxprom468 = sext i32 %260 to i64
  %arrayidx469 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom468
  %261 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx469, align 8
  %262 = bitcast %struct.rtx_def* %261 to i32*
  %bf.load470 = load i32, i32* %262, align 8
  %bf.clear471 = and i32 %bf.load470, 65535
  %cmp472 = icmp eq i32 %bf.clear471, 61
  br i1 %cmp472, label %land.lhs.true.474, label %if.end.508

land.lhs.true.474:                                ; preds = %for.body.467
  %263 = load i32, i32* %j463, align 4
  %idxprom475 = sext i32 %263 to i64
  %arrayidx476 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom475
  %264 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx476, align 8
  %fld477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld477, i32 0, i64 0
  %rtuint479 = bitcast %union.rtunion_def* %arrayidx478 to i32*
  %265 = load i32, i32* %rtuint479, align 4
  %cmp480 = icmp uge i32 %265, 8
  br i1 %cmp480, label %land.lhs.true.482, label %if.end.508

land.lhs.true.482:                                ; preds = %land.lhs.true.474
  %266 = load i32, i32* %j463, align 4
  %idxprom483 = sext i32 %266 to i64
  %arrayidx484 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom483
  %267 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx484, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 0
  %rtuint487 = bitcast %union.rtunion_def* %arrayidx486 to i32*
  %268 = load i32, i32* %rtuint487, align 4
  %cmp488 = icmp ule i32 %268, 15
  br i1 %cmp488, label %land.lhs.true.490, label %if.end.508

land.lhs.true.490:                                ; preds = %land.lhs.true.482
  %269 = load i32, i32* %j463, align 4
  %idxprom491 = sext i32 %269 to i64
  %arrayidx492 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom491
  %270 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx492, align 8
  %fld493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld493, i32 0, i64 0
  %rtuint495 = bitcast %union.rtunion_def* %arrayidx494 to i32*
  %271 = load i32, i32* %rtuint495, align 4
  %272 = load i32, i32* %i, align 4
  %cmp496 = icmp eq i32 %271, %272
  br i1 %cmp496, label %if.then.498, label %if.end.508

if.then.498:                                      ; preds = %land.lhs.true.490
  %273 = load i32, i32* %i, align 4
  %conv499 = trunc i32 %273 to i8
  %274 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top500 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %274, i32 0, i32 0
  %275 = load i32, i32* %top500, align 4
  %inc501 = add nsw i32 %275, 1
  store i32 %inc501, i32* %top500, align 4
  %idxprom502 = sext i32 %inc501 to i64
  %276 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg503 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %276, i32 0, i32 2
  %arrayidx504 = getelementptr inbounds [8 x i8], [8 x i8]* %reg503, i32 0, i64 %idxprom502
  store i8 %conv499, i8* %arrayidx504, align 1
  %277 = load i32, i32* %i, align 4
  %sh_prom505 = zext i32 %277 to i64
  %shl506 = shl i64 1, %sh_prom505
  %278 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set507 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %278, i32 0, i32 1
  %279 = load i64, i64* %reg_set507, align 8
  %or = or i64 %279, %shl506
  store i64 %or, i64* %reg_set507, align 8
  br label %for.end.511

if.end.508:                                       ; preds = %land.lhs.true.490, %land.lhs.true.482, %land.lhs.true.474, %for.body.467
  br label %for.inc.509

for.inc.509:                                      ; preds = %if.end.508
  %280 = load i32, i32* %j463, align 4
  %inc510 = add nsw i32 %280, 1
  store i32 %inc510, i32* %j463, align 4
  br label %for.cond.464

for.end.511:                                      ; preds = %if.then.498, %for.cond.464
  br label %for.inc.512

for.inc.512:                                      ; preds = %for.end.511
  %281 = load i32, i32* %i, align 4
  %dec513 = add nsw i32 %281, -1
  store i32 %dec513, i32* %i, align 4
  br label %for.cond.459

for.end.514:                                      ; preds = %for.cond.459
  store i32 0, i32* %i, align 4
  br label %for.cond.515

for.cond.515:                                     ; preds = %for.inc.573, %for.end.514
  %282 = load i32, i32* %i, align 4
  %283 = load i32, i32* %n_outputs, align 4
  %cmp516 = icmp slt i32 %282, %283
  br i1 %cmp516, label %for.body.518, label %for.end.575

for.body.518:                                     ; preds = %for.cond.515
  %284 = load i32, i32* %i, align 4
  %idxprom519 = sext i32 %284 to i64
  %arrayidx520 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom519
  %285 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx520, align 8
  %286 = bitcast %struct.rtx_def* %285 to i32*
  %bf.load521 = load i32, i32* %286, align 8
  %bf.clear522 = and i32 %bf.load521, 65535
  %cmp523 = icmp eq i32 %bf.clear522, 61
  br i1 %cmp523, label %land.lhs.true.525, label %if.end.572

land.lhs.true.525:                                ; preds = %for.body.518
  %287 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %287 to i64
  %arrayidx527 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom526
  %288 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx527, align 8
  %fld528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %288, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld528, i32 0, i64 0
  %rtuint530 = bitcast %union.rtunion_def* %arrayidx529 to i32*
  %289 = load i32, i32* %rtuint530, align 4
  %cmp531 = icmp uge i32 %289, 8
  br i1 %cmp531, label %land.lhs.true.533, label %if.end.572

land.lhs.true.533:                                ; preds = %land.lhs.true.525
  %290 = load i32, i32* %i, align 4
  %idxprom534 = sext i32 %290 to i64
  %arrayidx535 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom534
  %291 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx535, align 8
  %fld536 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx537 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld536, i32 0, i64 0
  %rtuint538 = bitcast %union.rtunion_def* %arrayidx537 to i32*
  %292 = load i32, i32* %rtuint538, align 4
  %cmp539 = icmp ule i32 %292, 15
  br i1 %cmp539, label %if.then.541, label %if.end.572

if.then.541:                                      ; preds = %land.lhs.true.533
  store i32 0, i32* %j542, align 4
  br label %for.cond.543

for.cond.543:                                     ; preds = %for.inc.569, %if.then.541
  %293 = load i32, i32* %j542, align 4
  %294 = load i32, i32* %n_notes, align 4
  %cmp544 = icmp slt i32 %293, %294
  br i1 %cmp544, label %for.body.546, label %for.end.571

for.body.546:                                     ; preds = %for.cond.543
  %295 = load i32, i32* %i, align 4
  %idxprom547 = sext i32 %295 to i64
  %arrayidx548 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom547
  %296 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx548, align 8
  %fld549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld549, i32 0, i64 0
  %rtuint551 = bitcast %union.rtunion_def* %arrayidx550 to i32*
  %297 = load i32, i32* %rtuint551, align 4
  %298 = load i32, i32* %j542, align 4
  %idxprom552 = sext i32 %298 to i64
  %299 = load %struct.rtx_def**, %struct.rtx_def*** %note_reg, align 8
  %arrayidx553 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %299, i64 %idxprom552
  %300 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx553, align 8
  %fld554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %300, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld554, i32 0, i64 0
  %rtuint556 = bitcast %union.rtunion_def* %arrayidx555 to i32*
  %301 = load i32, i32* %rtuint556, align 4
  %cmp557 = icmp eq i32 %297, %301
  br i1 %cmp557, label %land.lhs.true.559, label %if.end.568

land.lhs.true.559:                                ; preds = %for.body.546
  %302 = load i32, i32* %j542, align 4
  %idxprom560 = sext i32 %302 to i64
  %303 = load i32*, i32** %note_kind, align 8
  %arrayidx561 = getelementptr inbounds i32, i32* %303, i64 %idxprom560
  %304 = load i32, i32* %arrayidx561, align 4
  %cmp562 = icmp eq i32 %304, 10
  br i1 %cmp562, label %if.then.564, label %if.end.568

if.then.564:                                      ; preds = %land.lhs.true.559
  %305 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %306 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %307 = load i32, i32* %i, align 4
  %idxprom565 = sext i32 %307 to i64
  %arrayidx566 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom565
  %308 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx566, align 8
  %call567 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %305, %struct.stack_def* %306, %struct.rtx_def* %308, i32 0)
  store %struct.rtx_def* %call567, %struct.rtx_def** %insn.addr, align 8
  br label %for.end.571

if.end.568:                                       ; preds = %land.lhs.true.559, %for.body.546
  br label %for.inc.569

for.inc.569:                                      ; preds = %if.end.568
  %309 = load i32, i32* %j542, align 4
  %inc570 = add nsw i32 %309, 1
  store i32 %inc570, i32* %j542, align 4
  br label %for.cond.543

for.end.571:                                      ; preds = %if.then.564, %for.cond.543
  br label %if.end.572

if.end.572:                                       ; preds = %for.end.571, %land.lhs.true.533, %land.lhs.true.525, %for.body.518
  br label %for.inc.573

for.inc.573:                                      ; preds = %if.end.572
  %310 = load i32, i32* %i, align 4
  %inc574 = add nsw i32 %310, 1
  store i32 %inc574, i32* %i, align 4
  br label %for.cond.515

for.end.575:                                      ; preds = %for.cond.515
  %311 = load i32, i32* %n_outputs, align 4
  store i32 %311, i32* %i, align 4
  br label %for.cond.576

for.cond.576:                                     ; preds = %for.inc.646, %for.end.575
  %312 = load i32, i32* %i, align 4
  %313 = load i32, i32* %n_outputs, align 4
  %314 = load i32, i32* %n_inputs, align 4
  %add577 = add nsw i32 %313, %314
  %cmp578 = icmp slt i32 %312, %add577
  br i1 %cmp578, label %for.body.580, label %for.end.648

for.body.580:                                     ; preds = %for.cond.576
  %315 = load i32, i32* %i, align 4
  %idxprom581 = sext i32 %315 to i64
  %arrayidx582 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom581
  %316 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx582, align 8
  %317 = bitcast %struct.rtx_def* %316 to i32*
  %bf.load583 = load i32, i32* %317, align 8
  %bf.clear584 = and i32 %bf.load583, 65535
  %cmp585 = icmp eq i32 %bf.clear584, 61
  br i1 %cmp585, label %land.lhs.true.587, label %if.end.645

land.lhs.true.587:                                ; preds = %for.body.580
  %318 = load i32, i32* %i, align 4
  %idxprom588 = sext i32 %318 to i64
  %arrayidx589 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom588
  %319 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx589, align 8
  %fld590 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %319, i32 0, i32 1
  %arrayidx591 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld590, i32 0, i64 0
  %rtuint592 = bitcast %union.rtunion_def* %arrayidx591 to i32*
  %320 = load i32, i32* %rtuint592, align 4
  %cmp593 = icmp uge i32 %320, 8
  br i1 %cmp593, label %land.lhs.true.595, label %if.end.645

land.lhs.true.595:                                ; preds = %land.lhs.true.587
  %321 = load i32, i32* %i, align 4
  %idxprom596 = sext i32 %321 to i64
  %arrayidx597 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom596
  %322 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx597, align 8
  %fld598 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %322, i32 0, i32 1
  %arrayidx599 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld598, i32 0, i64 0
  %rtuint600 = bitcast %union.rtunion_def* %arrayidx599 to i32*
  %323 = load i32, i32* %rtuint600, align 4
  %cmp601 = icmp ule i32 %323, 15
  br i1 %cmp601, label %if.then.603, label %if.end.645

if.then.603:                                      ; preds = %land.lhs.true.595
  store i32 0, i32* %j604, align 4
  br label %for.cond.605

for.cond.605:                                     ; preds = %for.inc.642, %if.then.603
  %324 = load i32, i32* %j604, align 4
  %325 = load i32, i32* %n_notes, align 4
  %cmp606 = icmp slt i32 %324, %325
  br i1 %cmp606, label %for.body.608, label %for.end.644

for.body.608:                                     ; preds = %for.cond.605
  %326 = load i32, i32* %i, align 4
  %idxprom609 = sext i32 %326 to i64
  %arrayidx610 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom609
  %327 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx610, align 8
  %fld611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %327, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld611, i32 0, i64 0
  %rtuint613 = bitcast %union.rtunion_def* %arrayidx612 to i32*
  %328 = load i32, i32* %rtuint613, align 4
  %329 = load i32, i32* %j604, align 4
  %idxprom614 = sext i32 %329 to i64
  %330 = load %struct.rtx_def**, %struct.rtx_def*** %note_reg, align 8
  %arrayidx615 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %330, i64 %idxprom614
  %331 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx615, align 8
  %fld616 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %arrayidx617 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld616, i32 0, i64 0
  %rtuint618 = bitcast %union.rtunion_def* %arrayidx617 to i32*
  %332 = load i32, i32* %rtuint618, align 4
  %cmp619 = icmp eq i32 %328, %332
  br i1 %cmp619, label %land.lhs.true.621, label %if.end.641

land.lhs.true.621:                                ; preds = %for.body.608
  %333 = load i32, i32* %j604, align 4
  %idxprom622 = sext i32 %333 to i64
  %334 = load i32*, i32** %note_kind, align 8
  %arrayidx623 = getelementptr inbounds i32, i32* %334, i64 %idxprom622
  %335 = load i32, i32* %arrayidx623, align 4
  %cmp624 = icmp eq i32 %335, 1
  br i1 %cmp624, label %land.lhs.true.626, label %if.end.641

land.lhs.true.626:                                ; preds = %land.lhs.true.621
  %336 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set627 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %336, i32 0, i32 1
  %337 = load i64, i64* %reg_set627, align 8
  %338 = load i32, i32* %i, align 4
  %idxprom628 = sext i32 %338 to i64
  %arrayidx629 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom628
  %339 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx629, align 8
  %fld630 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %339, i32 0, i32 1
  %arrayidx631 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld630, i32 0, i64 0
  %rtuint632 = bitcast %union.rtunion_def* %arrayidx631 to i32*
  %340 = load i32, i32* %rtuint632, align 4
  %sh_prom633 = zext i32 %340 to i64
  %shl634 = shl i64 1, %sh_prom633
  %and635 = and i64 %337, %shl634
  %tobool636 = icmp ne i64 %and635, 0
  br i1 %tobool636, label %if.then.637, label %if.end.641

if.then.637:                                      ; preds = %land.lhs.true.626
  %341 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %342 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %343 = load i32, i32* %i, align 4
  %idxprom638 = sext i32 %343 to i64
  %arrayidx639 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom638
  %344 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx639, align 8
  %call640 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %341, %struct.stack_def* %342, %struct.rtx_def* %344, i32 0)
  store %struct.rtx_def* %call640, %struct.rtx_def** %insn.addr, align 8
  br label %for.end.644

if.end.641:                                       ; preds = %land.lhs.true.626, %land.lhs.true.621, %for.body.608
  br label %for.inc.642

for.inc.642:                                      ; preds = %if.end.641
  %345 = load i32, i32* %j604, align 4
  %inc643 = add nsw i32 %345, 1
  store i32 %inc643, i32* %j604, align 4
  br label %for.cond.605

for.end.644:                                      ; preds = %if.then.637, %for.cond.605
  br label %if.end.645

if.end.645:                                       ; preds = %for.end.644, %land.lhs.true.595, %land.lhs.true.587, %for.body.580
  br label %for.inc.646

for.inc.646:                                      ; preds = %if.end.645
  %346 = load i32, i32* %i, align 4
  %inc647 = add nsw i32 %346, 1
  store i32 %inc647, i32* %i, align 4
  br label %for.cond.576

for.end.648:                                      ; preds = %if.then, %for.cond.576
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @subst_stack_regs_pat(%struct.rtx_def* %insn, %struct.stack_def* %regstack, %struct.rtx_def* %pat) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def**, align 8
  %src = alloca %struct.rtx_def**, align 8
  %note = alloca %struct.rtx_def*, align 8
  %src1 = alloca %struct.rtx_def**, align 8
  %src2 = alloca %struct.rtx_def**, align 8
  %src1_note = alloca %struct.rtx_def*, align 8
  %src2_note = alloca %struct.rtx_def*, align 8
  %pat_src = alloca %struct.rtx_def*, align 8
  %count = alloca i32, align 4
  %src1_hard_regnum = alloca i32, align 4
  %src2_hard_regnum = alloca i32, align 4
  %src1_reg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %src2_reg = alloca %struct.rtx_def*, align 8
  %regno547 = alloca i32, align 4
  %tmp = alloca i32, align 4
  %idx1 = alloca i32, align 4
  %idx2 = alloca i32, align 4
  %src_note = alloca [3 x %struct.rtx_def*], align 16
  %i = alloca i32, align 4
  %regno850 = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default.901 [
    i32 48, label %sw.bb
    i32 49, label %sw.bb.21
    i32 47, label %sw.bb.109
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %call = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx)
  store %struct.rtx_def** %call, %struct.rtx_def*** %src, align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 61
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %8 = load i32, i32* %rtuint, align 4
  %cmp5 = icmp uge i32 %8, 8
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %11 = load i32, i32* %rtuint9, align 4
  %cmp10 = icmp ule i32 %11, 15
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %land.lhs.true.6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %13, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %15 = load i32, i32* %rtuint14, align 4
  %call15 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %12, i32 1, i32 %15)
  %tobool = icmp ne %struct.rtx_def* %call15, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %17 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %call16 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %16, %struct.stack_def* %17, %struct.rtx_def* %19, i32 0)
  br label %sw.epilog.902

if.else:                                          ; preds = %land.lhs.true.11, %land.lhs.true.6, %land.lhs.true, %sw.bb
  %20 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %call17 = call i32 @get_hard_regnum(%struct.stack_def* %20, %struct.rtx_def* %22)
  %cmp18 = icmp eq i32 %call17, -1
  br i1 %cmp18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1441, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.else
  br label %if.end.20

if.end.20:                                        ; preds = %if.end
  br label %sw.epilog.902

sw.bb.21:                                         ; preds = %entry
  %23 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %call25 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx24)
  store %struct.rtx_def** %call25, %struct.rtx_def*** %dest, align 8
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %24, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load26 = load i32, i32* %26, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 61
  br i1 %cmp28, label %land.lhs.true.29, label %if.end.108

land.lhs.true.29:                                 ; preds = %sw.bb.21
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtuint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %29 = load i32, i32* %rtuint32, align 4
  %cmp33 = icmp uge i32 %29, 8
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.108

land.lhs.true.34:                                 ; preds = %land.lhs.true.29
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %32 = load i32, i32* %rtuint37, align 4
  %cmp38 = icmp ule i32 %32, 15
  br i1 %cmp38, label %if.then.39, label %if.end.108

if.then.39:                                       ; preds = %land.lhs.true.34
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %call40 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %33, i32 1, %struct.rtx_def* %35)
  store %struct.rtx_def* %call40, %struct.rtx_def** %note, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %cmp44 = icmp ne %struct.rtx_def* %36, %38
  br i1 %cmp44, label %if.then.45, label %if.else.55

if.then.45:                                       ; preds = %if.then.39
  %39 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool46 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.then.45
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %41 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %call48 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %40, %struct.stack_def* %41, %struct.rtx_def* %43, i32 1)
  br label %if.end.54

if.else.49:                                       ; preds = %if.then.45
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %call50 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %44, i32 10, %struct.rtx_def* %46)
  store %struct.rtx_def* %call50, %struct.rtx_def** %note, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool51 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %if.else.49
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1468, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.53:                                        ; preds = %if.else.49
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then.47
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %48, %struct.rtx_def* %49)
  %50 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  call void @replace_reg(%struct.rtx_def** %50, i32 15)
  br label %if.end.107

if.else.55:                                       ; preds = %if.then.39
  %51 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool56 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool56, label %if.end.70, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %if.else.55
  %52 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %53 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  %call58 = call i32 @get_hard_regnum(%struct.stack_def* %52, %struct.rtx_def* %54)
  %cmp59 = icmp eq i32 %call58, -1
  br i1 %cmp59, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %land.lhs.true.57
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtuint63 = bitcast %union.rtunion_def* %arrayidx62 to i32*
  %57 = load i32, i32* %rtuint63, align 4
  %sub = sub i32 %57, 8
  %idxprom = zext i32 %sub to i64
  %arrayidx64 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom
  %arrayidx65 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx64, i32 0, i64 15
  %58 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx65, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** @nan, align 8
  %call66 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %58, %struct.rtx_def* %59)
  store %struct.rtx_def* %call66, %struct.rtx_def** %pat.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  store %struct.rtx_def* %60, %struct.rtx_def** %rtx69, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %63 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  call void @move_for_stack_reg(%struct.rtx_def* %62, %struct.stack_def* %63, %struct.rtx_def* %64)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.60, %land.lhs.true.57, %if.else.55
  %65 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool71 = icmp ne %struct.rtx_def* %65, null
  br i1 %tobool71, label %if.end.106, label %land.lhs.true.72

land.lhs.true.72:                                 ; preds = %if.end.70
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %66, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load73 = load i32, i32* %68, align 8
  %bf.lshr = lshr i32 %bf.load73, 16
  %bf.clear74 = and i32 %bf.lshr, 255
  %idxprom75 = sext i32 %bf.clear74 to i64
  %arrayidx76 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom75
  %69 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp eq i32 %69, 5
  br i1 %cmp77, label %land.lhs.true.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.72
  %70 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %70, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load78 = load i32, i32* %72, align 8
  %bf.lshr79 = lshr i32 %bf.load78, 16
  %bf.clear80 = and i32 %bf.lshr79, 255
  %idxprom81 = sext i32 %bf.clear80 to i64
  %arrayidx82 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom81
  %73 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %73, 6
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.106

land.lhs.true.84:                                 ; preds = %lor.lhs.false, %land.lhs.true.72
  %74 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %75 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %75, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtuint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %77 = load i32, i32* %rtuint87, align 4
  %sub88 = sub i32 %77, 8
  %idxprom89 = zext i32 %sub88 to i64
  %arrayidx90 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom89
  %arrayidx91 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx90, i32 0, i64 16
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx91, align 8
  %call92 = call i32 @get_hard_regnum(%struct.stack_def* %74, %struct.rtx_def* %78)
  %cmp93 = icmp eq i32 %call92, -1
  br i1 %cmp93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %land.lhs.true.84
  %79 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %79, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtuint97 = bitcast %union.rtunion_def* %arrayidx96 to i32*
  %81 = load i32, i32* %rtuint97, align 4
  %add = add i32 %81, 1
  %sub98 = sub i32 %add, 8
  %idxprom99 = zext i32 %sub98 to i64
  %arrayidx100 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx100, i32 0, i64 15
  %82 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx101, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** @nan, align 8
  %call102 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %82, %struct.rtx_def* %83)
  store %struct.rtx_def* %call102, %struct.rtx_def** %pat.addr, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 3
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  store %struct.rtx_def* %84, %struct.rtx_def** %rtx105, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %87 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  call void @move_for_stack_reg(%struct.rtx_def* %86, %struct.stack_def* %87, %struct.rtx_def* %88)
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.94, %land.lhs.true.84, %lor.lhs.false, %if.end.70
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %if.end.54
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %land.lhs.true.34, %land.lhs.true.29, %sw.bb.21
  br label %sw.epilog.902

sw.bb.109:                                        ; preds = %entry
  store %struct.rtx_def** null, %struct.rtx_def*** %src1, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %call113 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx112)
  store %struct.rtx_def** %call113, %struct.rtx_def*** %dest, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %call117 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx116)
  store %struct.rtx_def** %call117, %struct.rtx_def*** %src, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 1
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %pat_src, align 8
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %93, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load121 = load i32, i32* %95, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %cmp123 = icmp eq i32 %bf.clear122, 61
  br i1 %cmp123, label %land.lhs.true.124, label %lor.lhs.false.134

land.lhs.true.124:                                ; preds = %sw.bb.109
  %96 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %96, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtuint127 = bitcast %union.rtunion_def* %arrayidx126 to i32*
  %98 = load i32, i32* %rtuint127, align 4
  %cmp128 = icmp uge i32 %98, 8
  br i1 %cmp128, label %land.lhs.true.129, label %lor.lhs.false.134

land.lhs.true.129:                                ; preds = %land.lhs.true.124
  %99 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %99, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtuint132 = bitcast %union.rtunion_def* %arrayidx131 to i32*
  %101 = load i32, i32* %rtuint132, align 4
  %cmp133 = icmp ule i32 %101, 15
  br i1 %cmp133, label %if.then.160, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %land.lhs.true.129, %land.lhs.true.124, %sw.bb.109
  %102 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %102, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load135 = load i32, i32* %104, align 8
  %bf.clear136 = and i32 %bf.load135, 65535
  %cmp137 = icmp eq i32 %bf.clear136, 61
  br i1 %cmp137, label %land.lhs.true.138, label %if.end.161

land.lhs.true.138:                                ; preds = %lor.lhs.false.134
  %105 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %105, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtuint141 = bitcast %union.rtunion_def* %arrayidx140 to i32*
  %107 = load i32, i32* %rtuint141, align 4
  %cmp142 = icmp uge i32 %107, 8
  br i1 %cmp142, label %land.lhs.true.143, label %if.end.161

land.lhs.true.143:                                ; preds = %land.lhs.true.138
  %108 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %108, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 0
  %rtuint146 = bitcast %union.rtunion_def* %arrayidx145 to i32*
  %110 = load i32, i32* %rtuint146, align 4
  %cmp147 = icmp ule i32 %110, 15
  br i1 %cmp147, label %land.lhs.true.148, label %if.end.161

land.lhs.true.148:                                ; preds = %land.lhs.true.143
  %111 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %111, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load149 = load i32, i32* %113, align 8
  %bf.clear150 = and i32 %bf.load149, 65535
  %cmp151 = icmp eq i32 %bf.clear150, 61
  br i1 %cmp151, label %if.then.160, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %land.lhs.true.148
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %114, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load153 = load i32, i32* %116, align 8
  %bf.clear154 = and i32 %bf.load153, 65535
  %cmp155 = icmp eq i32 %bf.clear154, 66
  br i1 %cmp155, label %if.then.160, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %lor.lhs.false.152
  %117 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %117, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load157 = load i32, i32* %119, align 8
  %bf.clear158 = and i32 %bf.load157, 65535
  %cmp159 = icmp eq i32 %bf.clear158, 55
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %lor.lhs.false.156, %lor.lhs.false.152, %land.lhs.true.148, %land.lhs.true.129
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %121 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  call void @move_for_stack_reg(%struct.rtx_def* %120, %struct.stack_def* %121, %struct.rtx_def* %122)
  br label %sw.epilog.902

if.end.161:                                       ; preds = %lor.lhs.false.156, %land.lhs.true.143, %land.lhs.true.138, %lor.lhs.false.134
  %123 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load162 = load i32, i32* %124, align 8
  %bf.clear163 = and i32 %bf.load162, 65535
  switch i32 %bf.clear163, label %sw.default.899 [
    i32 74, label %sw.bb.164
    i32 50, label %sw.bb.165
    i32 61, label %sw.bb.265
    i32 124, label %sw.bb.270
    i32 130, label %sw.bb.270
    i32 129, label %sw.bb.270
    i32 77, label %sw.bb.270
    i32 76, label %sw.bb.316
    i32 79, label %sw.bb.316
    i32 78, label %sw.bb.316
    i32 75, label %sw.bb.316
    i32 42, label %sw.bb.628
    i32 72, label %sw.bb.704
  ]

sw.bb.164:                                        ; preds = %if.end.161
  %125 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %126 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  call void @compare_for_stack_reg(%struct.rtx_def* %125, %struct.stack_def* %126, %struct.rtx_def* %127)
  br label %sw.epilog.900

sw.bb.165:                                        ; preds = %if.end.161
  %128 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %128, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtuint168 = bitcast %union.rtunion_def* %arrayidx167 to i32*
  %130 = load i32, i32* %rtuint168, align 4
  %cmp169 = icmp uge i32 %130, 8
  br i1 %cmp169, label %land.lhs.true.170, label %lor.lhs.false.175

land.lhs.true.170:                                ; preds = %sw.bb.165
  %131 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %131, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtuint173 = bitcast %union.rtunion_def* %arrayidx172 to i32*
  %133 = load i32, i32* %rtuint173, align 4
  %cmp174 = icmp ule i32 %133, 15
  br i1 %cmp174, label %cond.true, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %land.lhs.true.170, %sw.bb.165
  %134 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %134, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtuint178 = bitcast %union.rtunion_def* %arrayidx177 to i32*
  %136 = load i32, i32* %rtuint178, align 4
  %cmp179 = icmp uge i32 %136, 21
  br i1 %cmp179, label %land.lhs.true.180, label %lor.lhs.false.185

land.lhs.true.180:                                ; preds = %lor.lhs.false.175
  %137 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %137, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtuint183 = bitcast %union.rtunion_def* %arrayidx182 to i32*
  %139 = load i32, i32* %rtuint183, align 4
  %cmp184 = icmp ule i32 %139, 28
  br i1 %cmp184, label %cond.true, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %land.lhs.true.180, %lor.lhs.false.175
  %140 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %140, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtuint188 = bitcast %union.rtunion_def* %arrayidx187 to i32*
  %142 = load i32, i32* %rtuint188, align 4
  %cmp189 = icmp uge i32 %142, 45
  br i1 %cmp189, label %land.lhs.true.190, label %lor.lhs.false.195

land.lhs.true.190:                                ; preds = %lor.lhs.false.185
  %143 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %143, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtuint193 = bitcast %union.rtunion_def* %arrayidx192 to i32*
  %145 = load i32, i32* %rtuint193, align 4
  %cmp194 = icmp ule i32 %145, 52
  br i1 %cmp194, label %cond.true, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %land.lhs.true.190, %lor.lhs.false.185
  %146 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %146, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 0
  %rtuint198 = bitcast %union.rtunion_def* %arrayidx197 to i32*
  %148 = load i32, i32* %rtuint198, align 4
  %cmp199 = icmp uge i32 %148, 29
  br i1 %cmp199, label %land.lhs.true.200, label %cond.false

land.lhs.true.200:                                ; preds = %lor.lhs.false.195
  %149 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %149, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 0
  %rtuint203 = bitcast %union.rtunion_def* %arrayidx202 to i32*
  %151 = load i32, i32* %rtuint203, align 4
  %cmp204 = icmp ule i32 %151, 36
  br i1 %cmp204, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.200, %land.lhs.true.190, %land.lhs.true.180, %land.lhs.true.170
  %152 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %152, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load205 = load i32, i32* %154, align 8
  %bf.lshr206 = lshr i32 %bf.load205, 16
  %bf.clear207 = and i32 %bf.lshr206, 255
  %idxprom208 = sext i32 %bf.clear207 to i64
  %arrayidx209 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom208
  %155 = load i32, i32* %arrayidx209, align 4
  %cmp210 = icmp eq i32 %155, 5
  br i1 %cmp210, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %156 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %156, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load211 = load i32, i32* %158, align 8
  %bf.lshr212 = lshr i32 %bf.load211, 16
  %bf.clear213 = and i32 %bf.lshr212, 255
  %idxprom214 = sext i32 %bf.clear213 to i64
  %arrayidx215 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom214
  %159 = load i32, i32* %arrayidx215, align 4
  %cmp216 = icmp eq i32 %159, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %160 = phi i1 [ true, %cond.true ], [ %cmp216, %lor.rhs ]
  %cond = select i1 %160, i32 2, i32 1
  br label %cond.end.250

cond.false:                                       ; preds = %land.lhs.true.200, %lor.lhs.false.195
  %161 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %161, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load217 = load i32, i32* %163, align 8
  %bf.lshr218 = lshr i32 %bf.load217, 16
  %bf.clear219 = and i32 %bf.lshr218, 255
  %cmp220 = icmp eq i32 %bf.clear219, 18
  br i1 %cmp220, label %cond.true.221, label %cond.false.224

cond.true.221:                                    ; preds = %cond.false
  %164 = load i32, i32* @target_flags, align 4
  %and = and i32 %164, 33554432
  %tobool222 = icmp ne i32 %and, 0
  %cond223 = select i1 %tobool222, i32 2, i32 3
  br label %cond.end.248

cond.false.224:                                   ; preds = %cond.false
  %165 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %166 = load %struct.rtx_def*, %struct.rtx_def** %165, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load225 = load i32, i32* %167, align 8
  %bf.lshr226 = lshr i32 %bf.load225, 16
  %bf.clear227 = and i32 %bf.lshr226, 255
  %cmp228 = icmp eq i32 %bf.clear227, 24
  br i1 %cmp228, label %cond.true.229, label %cond.false.233

cond.true.229:                                    ; preds = %cond.false.224
  %168 = load i32, i32* @target_flags, align 4
  %and230 = and i32 %168, 33554432
  %tobool231 = icmp ne i32 %and230, 0
  %cond232 = select i1 %tobool231, i32 4, i32 6
  br label %cond.end

cond.false.233:                                   ; preds = %cond.false.224
  %169 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %169, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load234 = load i32, i32* %171, align 8
  %bf.lshr235 = lshr i32 %bf.load234, 16
  %bf.clear236 = and i32 %bf.lshr235, 255
  %idxprom237 = sext i32 %bf.clear236 to i64
  %arrayidx238 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom237
  %172 = load i8, i8* %arrayidx238, align 1
  %conv = zext i8 %172 to i32
  %173 = load i32, i32* @target_flags, align 4
  %and239 = and i32 %173, 33554432
  %tobool240 = icmp ne i32 %and239, 0
  %cond241 = select i1 %tobool240, i32 8, i32 4
  %add242 = add nsw i32 %conv, %cond241
  %sub243 = sub nsw i32 %add242, 1
  %174 = load i32, i32* @target_flags, align 4
  %and244 = and i32 %174, 33554432
  %tobool245 = icmp ne i32 %and244, 0
  %cond246 = select i1 %tobool245, i32 8, i32 4
  %div = sdiv i32 %sub243, %cond246
  br label %cond.end

cond.end:                                         ; preds = %cond.false.233, %cond.true.229
  %cond247 = phi i32 [ %cond232, %cond.true.229 ], [ %div, %cond.false.233 ]
  br label %cond.end.248

cond.end.248:                                     ; preds = %cond.end, %cond.true.221
  %cond249 = phi i32 [ %cond223, %cond.true.221 ], [ %cond247, %cond.end ]
  br label %cond.end.250

cond.end.250:                                     ; preds = %cond.end.248, %lor.end
  %cond251 = phi i32 [ %cond, %lor.end ], [ %cond249, %cond.end.248 ]
  store i32 %cond251, i32* %count, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %cond.end.250
  %175 = load i32, i32* %count, align 4
  %dec = add nsw i32 %175, -1
  store i32 %dec, i32* %count, align 4
  %cmp252 = icmp sge i32 %dec, 0
  br i1 %cmp252, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %176 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %177 = load %struct.rtx_def*, %struct.rtx_def** %176, align 8
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 0
  %rtuint256 = bitcast %union.rtunion_def* %arrayidx255 to i32*
  %178 = load i32, i32* %rtuint256, align 4
  %179 = load i32, i32* %count, align 4
  %add257 = add i32 %178, %179
  %conv258 = trunc i32 %add257 to i8
  %180 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %180, i32 0, i32 0
  %181 = load i32, i32* %top, align 4
  %inc = add nsw i32 %181, 1
  store i32 %inc, i32* %top, align 4
  %idxprom259 = sext i32 %inc to i64
  %182 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg = getelementptr inbounds %struct.stack_def, %struct.stack_def* %182, i32 0, i32 2
  %arrayidx260 = getelementptr inbounds [8 x i8], [8 x i8]* %reg, i32 0, i64 %idxprom259
  store i8 %conv258, i8* %arrayidx260, align 1
  %183 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %183, align 8
  %fld261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld261, i32 0, i64 0
  %rtuint263 = bitcast %union.rtunion_def* %arrayidx262 to i32*
  %185 = load i32, i32* %rtuint263, align 4
  %186 = load i32, i32* %count, align 4
  %add264 = add i32 %185, %186
  %sh_prom = zext i32 %add264 to i64
  %shl = shl i64 1, %sh_prom
  %187 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %187, i32 0, i32 1
  %188 = load i64, i64* %reg_set, align 8
  %or = or i64 %188, %shl
  store i64 %or, i64* %reg_set, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %189 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  call void @replace_reg(%struct.rtx_def** %189, i32 8)
  br label %sw.epilog.900

sw.bb.265:                                        ; preds = %if.end.161
  %190 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %190, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %cmp266 = icmp ne %struct.rtx_def* %191, %192
  br i1 %cmp266, label %if.then.268, label %if.end.269

if.then.268:                                      ; preds = %sw.bb.265
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1545, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.269:                                       ; preds = %sw.bb.265
  %193 = load %struct.rtx_def**, %struct.rtx_def*** %src, align 8
  store %struct.rtx_def** %193, %struct.rtx_def*** %src1, align 8
  br label %sw.bb.270

sw.bb.270:                                        ; preds = %if.end.161, %if.end.161, %if.end.161, %if.end.161, %if.end.269
  %194 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %cmp271 = icmp eq %struct.rtx_def** %194, null
  br i1 %cmp271, label %if.then.273, label %if.end.278

if.then.273:                                      ; preds = %sw.bb.270
  %195 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtx276 = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %call277 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx276)
  store %struct.rtx_def** %call277, %struct.rtx_def*** %src1, align 8
  br label %if.end.278

if.end.278:                                       ; preds = %if.then.273, %sw.bb.270
  %196 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %197 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %198 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %198, align 8
  call void @emit_swap_insn(%struct.rtx_def* %196, %struct.stack_def* %197, %struct.rtx_def* %199)
  %200 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %201 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %201, align 8
  %fld279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld279, i32 0, i64 0
  %rtuint281 = bitcast %union.rtunion_def* %arrayidx280 to i32*
  %203 = load i32, i32* %rtuint281, align 4
  %call282 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %200, i32 1, i32 %203)
  store %struct.rtx_def* %call282, %struct.rtx_def** %src1_note, align 8
  %204 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %204, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %bf.load283 = load i32, i32* %206, align 8
  %bf.clear284 = and i32 %bf.load283, 65535
  %cmp285 = icmp eq i32 %bf.clear284, 61
  br i1 %cmp285, label %land.lhs.true.287, label %if.end.300

land.lhs.true.287:                                ; preds = %if.end.278
  %207 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %207, align 8
  %fld288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld288, i32 0, i64 0
  %rtuint290 = bitcast %union.rtunion_def* %arrayidx289 to i32*
  %209 = load i32, i32* %rtuint290, align 4
  %cmp291 = icmp uge i32 %209, 8
  br i1 %cmp291, label %land.lhs.true.293, label %if.end.300

land.lhs.true.293:                                ; preds = %land.lhs.true.287
  %210 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %210, align 8
  %fld294 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i32 0, i64 0
  %rtuint296 = bitcast %union.rtunion_def* %arrayidx295 to i32*
  %212 = load i32, i32* %rtuint296, align 4
  %cmp297 = icmp ule i32 %212, 15
  br i1 %cmp297, label %if.then.299, label %if.end.300

if.then.299:                                      ; preds = %land.lhs.true.293
  %213 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  call void @replace_reg(%struct.rtx_def** %213, i32 8)
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.299, %land.lhs.true.293, %land.lhs.true.287, %if.end.278
  %214 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool301 = icmp ne %struct.rtx_def* %214, null
  br i1 %tobool301, label %if.then.302, label %if.end.315

if.then.302:                                      ; preds = %if.end.300
  %215 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 0
  %rtx305 = bitcast %union.rtunion_def* %arrayidx304 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx305, i32 8)
  %216 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top306 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %216, i32 0, i32 0
  %217 = load i32, i32* %top306, align 4
  %dec307 = add nsw i32 %217, -1
  store i32 %dec307, i32* %top306, align 4
  %218 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %218, align 8
  %fld308 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %219, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld308, i32 0, i64 0
  %rtuint310 = bitcast %union.rtunion_def* %arrayidx309 to i32*
  %220 = load i32, i32* %rtuint310, align 4
  %sh_prom311 = zext i32 %220 to i64
  %shl312 = shl i64 1, %sh_prom311
  %neg = xor i64 %shl312, -1
  %221 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set313 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %221, i32 0, i32 1
  %222 = load i64, i64* %reg_set313, align 8
  %and314 = and i64 %222, %neg
  store i64 %and314, i64* %reg_set313, align 8
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.302, %if.end.300
  %223 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  call void @replace_reg(%struct.rtx_def** %223, i32 8)
  br label %sw.epilog.900

sw.bb.316:                                        ; preds = %if.end.161, %if.end.161, %if.end.161, %if.end.161
  %224 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %call320 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx319)
  store %struct.rtx_def** %call320, %struct.rtx_def*** %src1, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %225, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 1
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %call324 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx323)
  store %struct.rtx_def** %call324, %struct.rtx_def*** %src2, align 8
  %226 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %227 = load %struct.rtx_def*, %struct.rtx_def** %226, align 8
  %228 = bitcast %struct.rtx_def* %227 to i32*
  %bf.load325 = load i32, i32* %228, align 8
  %bf.clear326 = and i32 %bf.load325, 65535
  %cmp327 = icmp eq i32 %bf.clear326, 61
  br i1 %cmp327, label %land.lhs.true.329, label %if.else.346

land.lhs.true.329:                                ; preds = %sw.bb.316
  %229 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %230 = load %struct.rtx_def*, %struct.rtx_def** %229, align 8
  %fld330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld330, i32 0, i64 0
  %rtuint332 = bitcast %union.rtunion_def* %arrayidx331 to i32*
  %231 = load i32, i32* %rtuint332, align 4
  %cmp333 = icmp uge i32 %231, 8
  br i1 %cmp333, label %land.lhs.true.335, label %if.else.346

land.lhs.true.335:                                ; preds = %land.lhs.true.329
  %232 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %232, align 8
  %fld336 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld336, i32 0, i64 0
  %rtuint338 = bitcast %union.rtunion_def* %arrayidx337 to i32*
  %234 = load i32, i32* %rtuint338, align 4
  %cmp339 = icmp ule i32 %234, 15
  br i1 %cmp339, label %if.then.341, label %if.else.346

if.then.341:                                      ; preds = %land.lhs.true.335
  %235 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %236 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** %236, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 0
  %rtuint344 = bitcast %union.rtunion_def* %arrayidx343 to i32*
  %238 = load i32, i32* %rtuint344, align 4
  %call345 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %235, i32 1, i32 %238)
  store %struct.rtx_def* %call345, %struct.rtx_def** %src1_note, align 8
  br label %if.end.347

if.else.346:                                      ; preds = %land.lhs.true.335, %land.lhs.true.329, %sw.bb.316
  store %struct.rtx_def* null, %struct.rtx_def** %src1_note, align 8
  br label %if.end.347

if.end.347:                                       ; preds = %if.else.346, %if.then.341
  %239 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %239, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %bf.load348 = load i32, i32* %241, align 8
  %bf.clear349 = and i32 %bf.load348, 65535
  %cmp350 = icmp eq i32 %bf.clear349, 61
  br i1 %cmp350, label %land.lhs.true.352, label %if.else.369

land.lhs.true.352:                                ; preds = %if.end.347
  %242 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** %242, align 8
  %fld353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld353, i32 0, i64 0
  %rtuint355 = bitcast %union.rtunion_def* %arrayidx354 to i32*
  %244 = load i32, i32* %rtuint355, align 4
  %cmp356 = icmp uge i32 %244, 8
  br i1 %cmp356, label %land.lhs.true.358, label %if.else.369

land.lhs.true.358:                                ; preds = %land.lhs.true.352
  %245 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** %245, align 8
  %fld359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld359, i32 0, i64 0
  %rtuint361 = bitcast %union.rtunion_def* %arrayidx360 to i32*
  %247 = load i32, i32* %rtuint361, align 4
  %cmp362 = icmp ule i32 %247, 15
  br i1 %cmp362, label %if.then.364, label %if.else.369

if.then.364:                                      ; preds = %land.lhs.true.358
  %248 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %249 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %249, align 8
  %fld365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld365, i32 0, i64 0
  %rtuint367 = bitcast %union.rtunion_def* %arrayidx366 to i32*
  %251 = load i32, i32* %rtuint367, align 4
  %call368 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %248, i32 1, i32 %251)
  store %struct.rtx_def* %call368, %struct.rtx_def** %src2_note, align 8
  br label %if.end.370

if.else.369:                                      ; preds = %land.lhs.true.358, %land.lhs.true.352, %if.end.347
  store %struct.rtx_def* null, %struct.rtx_def** %src2_note, align 8
  br label %if.end.370

if.end.370:                                       ; preds = %if.else.369, %if.then.364
  %252 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %252, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load371 = load i32, i32* %254, align 8
  %bf.clear372 = and i32 %bf.load371, 65535
  %cmp373 = icmp eq i32 %bf.clear372, 61
  br i1 %cmp373, label %land.lhs.true.375, label %if.then.404

land.lhs.true.375:                                ; preds = %if.end.370
  %255 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %256 = load %struct.rtx_def*, %struct.rtx_def** %255, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 0
  %rtuint378 = bitcast %union.rtunion_def* %arrayidx377 to i32*
  %257 = load i32, i32* %rtuint378, align 4
  %cmp379 = icmp uge i32 %257, 8
  br i1 %cmp379, label %land.lhs.true.381, label %if.then.404

land.lhs.true.381:                                ; preds = %land.lhs.true.375
  %258 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %259 = load %struct.rtx_def*, %struct.rtx_def** %258, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %259, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 0
  %rtuint384 = bitcast %union.rtunion_def* %arrayidx383 to i32*
  %260 = load i32, i32* %rtuint384, align 4
  %cmp385 = icmp ule i32 %260, 15
  br i1 %cmp385, label %lor.lhs.false.387, label %if.then.404

lor.lhs.false.387:                                ; preds = %land.lhs.true.381
  %261 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %262 = load %struct.rtx_def*, %struct.rtx_def** %261, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load388 = load i32, i32* %263, align 8
  %bf.clear389 = and i32 %bf.load388, 65535
  %cmp390 = icmp eq i32 %bf.clear389, 61
  br i1 %cmp390, label %land.lhs.true.392, label %if.then.404

land.lhs.true.392:                                ; preds = %lor.lhs.false.387
  %264 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %264, align 8
  %fld393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld393, i32 0, i64 0
  %rtuint395 = bitcast %union.rtunion_def* %arrayidx394 to i32*
  %266 = load i32, i32* %rtuint395, align 4
  %cmp396 = icmp uge i32 %266, 8
  br i1 %cmp396, label %land.lhs.true.398, label %if.then.404

land.lhs.true.398:                                ; preds = %land.lhs.true.392
  %267 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %268 = load %struct.rtx_def*, %struct.rtx_def** %267, align 8
  %fld399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld399, i32 0, i64 0
  %rtuint401 = bitcast %union.rtunion_def* %arrayidx400 to i32*
  %269 = load i32, i32* %rtuint401, align 4
  %cmp402 = icmp ule i32 %269, 15
  br i1 %cmp402, label %if.else.405, label %if.then.404

if.then.404:                                      ; preds = %land.lhs.true.398, %land.lhs.true.392, %lor.lhs.false.387, %land.lhs.true.381, %land.lhs.true.375, %if.end.370
  %270 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %271 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %272 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %273 = load %struct.rtx_def*, %struct.rtx_def** %272, align 8
  call void @emit_swap_insn(%struct.rtx_def* %270, %struct.stack_def* %271, %struct.rtx_def* %273)
  br label %if.end.422

if.else.405:                                      ; preds = %land.lhs.true.398
  %274 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %275 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %275, align 8
  %call406 = call i32 @get_hard_regnum(%struct.stack_def* %274, %struct.rtx_def* %276)
  store i32 %call406, i32* %src1_hard_regnum, align 4
  %277 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %278 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %279 = load %struct.rtx_def*, %struct.rtx_def** %278, align 8
  %call407 = call i32 @get_hard_regnum(%struct.stack_def* %277, %struct.rtx_def* %279)
  store i32 %call407, i32* %src2_hard_regnum, align 4
  %280 = load i32, i32* %src1_hard_regnum, align 4
  %cmp408 = icmp eq i32 %280, -1
  br i1 %cmp408, label %if.then.413, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %if.else.405
  %281 = load i32, i32* %src2_hard_regnum, align 4
  %cmp411 = icmp eq i32 %281, -1
  br i1 %cmp411, label %if.then.413, label %if.end.414

if.then.413:                                      ; preds = %lor.lhs.false.410, %if.else.405
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1621, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.414:                                       ; preds = %lor.lhs.false.410
  %282 = load i32, i32* %src1_hard_regnum, align 4
  %cmp415 = icmp ne i32 %282, 8
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.421

land.lhs.true.417:                                ; preds = %if.end.414
  %283 = load i32, i32* %src2_hard_regnum, align 4
  %cmp418 = icmp ne i32 %283, 8
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %land.lhs.true.417
  %284 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %285 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %286 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %287 = load %struct.rtx_def*, %struct.rtx_def** %286, align 8
  call void @emit_swap_insn(%struct.rtx_def* %284, %struct.stack_def* %285, %struct.rtx_def* %287)
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.420, %land.lhs.true.417, %if.end.414
  br label %if.end.422

if.end.422:                                       ; preds = %if.end.421, %if.then.404
  %288 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %288, align 8
  %290 = bitcast %struct.rtx_def* %289 to i32*
  %bf.load423 = load i32, i32* %290, align 8
  %bf.clear424 = and i32 %bf.load423, 65535
  %cmp425 = icmp eq i32 %bf.clear424, 61
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.441

land.lhs.true.427:                                ; preds = %if.end.422
  %291 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %292 = load %struct.rtx_def*, %struct.rtx_def** %291, align 8
  %fld428 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx429 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld428, i32 0, i64 0
  %rtuint430 = bitcast %union.rtunion_def* %arrayidx429 to i32*
  %293 = load i32, i32* %rtuint430, align 4
  %cmp431 = icmp uge i32 %293, 8
  br i1 %cmp431, label %land.lhs.true.433, label %if.end.441

land.lhs.true.433:                                ; preds = %land.lhs.true.427
  %294 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %294, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 0
  %rtuint436 = bitcast %union.rtunion_def* %arrayidx435 to i32*
  %296 = load i32, i32* %rtuint436, align 4
  %cmp437 = icmp ule i32 %296, 15
  br i1 %cmp437, label %if.then.439, label %if.end.441

if.then.439:                                      ; preds = %land.lhs.true.433
  %297 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %298 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %299 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %300 = load %struct.rtx_def*, %struct.rtx_def** %299, align 8
  %call440 = call i32 @get_hard_regnum(%struct.stack_def* %298, %struct.rtx_def* %300)
  call void @replace_reg(%struct.rtx_def** %297, i32 %call440)
  br label %if.end.441

if.end.441:                                       ; preds = %if.then.439, %land.lhs.true.433, %land.lhs.true.427, %if.end.422
  %301 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %302 = load %struct.rtx_def*, %struct.rtx_def** %301, align 8
  %303 = bitcast %struct.rtx_def* %302 to i32*
  %bf.load442 = load i32, i32* %303, align 8
  %bf.clear443 = and i32 %bf.load442, 65535
  %cmp444 = icmp eq i32 %bf.clear443, 61
  br i1 %cmp444, label %land.lhs.true.446, label %if.end.460

land.lhs.true.446:                                ; preds = %if.end.441
  %304 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %305 = load %struct.rtx_def*, %struct.rtx_def** %304, align 8
  %fld447 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld447, i32 0, i64 0
  %rtuint449 = bitcast %union.rtunion_def* %arrayidx448 to i32*
  %306 = load i32, i32* %rtuint449, align 4
  %cmp450 = icmp uge i32 %306, 8
  br i1 %cmp450, label %land.lhs.true.452, label %if.end.460

land.lhs.true.452:                                ; preds = %land.lhs.true.446
  %307 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %307, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 0
  %rtuint455 = bitcast %union.rtunion_def* %arrayidx454 to i32*
  %309 = load i32, i32* %rtuint455, align 4
  %cmp456 = icmp ule i32 %309, 15
  br i1 %cmp456, label %if.then.458, label %if.end.460

if.then.458:                                      ; preds = %land.lhs.true.452
  %310 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %311 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %312 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %313 = load %struct.rtx_def*, %struct.rtx_def** %312, align 8
  %call459 = call i32 @get_hard_regnum(%struct.stack_def* %311, %struct.rtx_def* %313)
  call void @replace_reg(%struct.rtx_def** %310, i32 %call459)
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.458, %land.lhs.true.452, %land.lhs.true.446, %if.end.441
  %314 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool461 = icmp ne %struct.rtx_def* %314, null
  br i1 %tobool461, label %if.then.462, label %if.else.521

if.then.462:                                      ; preds = %if.end.460
  %315 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  %316 = load %struct.rtx_def*, %struct.rtx_def** %rtx465, align 8
  store %struct.rtx_def* %316, %struct.rtx_def** %src1_reg, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %src1_reg, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %317, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 0
  %rtuint468 = bitcast %union.rtunion_def* %arrayidx467 to i32*
  %318 = load i32, i32* %rtuint468, align 4
  %319 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top469 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %319, i32 0, i32 0
  %320 = load i32, i32* %top469, align 4
  %idxprom470 = sext i32 %320 to i64
  %321 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg471 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %321, i32 0, i32 2
  %arrayidx472 = getelementptr inbounds [8 x i8], [8 x i8]* %reg471, i32 0, i64 %idxprom470
  %322 = load i8, i8* %arrayidx472, align 1
  %conv473 = zext i8 %322 to i32
  %cmp474 = icmp eq i32 %318, %conv473
  br i1 %cmp474, label %if.then.476, label %if.else.485

if.then.476:                                      ; preds = %if.then.462
  %323 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** %323, align 8
  %fld477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %324, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld477, i32 0, i64 0
  %rtuint479 = bitcast %union.rtunion_def* %arrayidx478 to i32*
  %325 = load i32, i32* %rtuint479, align 4
  %sh_prom480 = zext i32 %325 to i64
  %shl481 = shl i64 1, %sh_prom480
  %326 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set482 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %326, i32 0, i32 1
  %327 = load i64, i64* %reg_set482, align 8
  %or483 = or i64 %327, %shl481
  store i64 %or483, i64* %reg_set482, align 8
  %328 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %329 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %330 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %331 = load %struct.rtx_def*, %struct.rtx_def** %330, align 8
  %call484 = call i32 @get_hard_regnum(%struct.stack_def* %329, %struct.rtx_def* %331)
  call void @replace_reg(%struct.rtx_def** %328, i32 %call484)
  br label %if.end.504

if.else.485:                                      ; preds = %if.then.462
  %332 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %333 = load %struct.rtx_def*, %struct.rtx_def** %src1_reg, align 8
  %call486 = call i32 @get_hard_regnum(%struct.stack_def* %332, %struct.rtx_def* %333)
  store i32 %call486, i32* %regno, align 4
  %334 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %334, align 8
  %fld487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %335, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld487, i32 0, i64 0
  %rtuint489 = bitcast %union.rtunion_def* %arrayidx488 to i32*
  %336 = load i32, i32* %rtuint489, align 4
  %sh_prom490 = zext i32 %336 to i64
  %shl491 = shl i64 1, %sh_prom490
  %337 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set492 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %337, i32 0, i32 1
  %338 = load i64, i64* %reg_set492, align 8
  %or493 = or i64 %338, %shl491
  store i64 %or493, i64* %reg_set492, align 8
  %339 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %340 = load i32, i32* %regno, align 4
  call void @replace_reg(%struct.rtx_def** %339, i32 %340)
  %341 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top494 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %341, i32 0, i32 0
  %342 = load i32, i32* %top494, align 4
  %idxprom495 = sext i32 %342 to i64
  %343 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg496 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %343, i32 0, i32 2
  %arrayidx497 = getelementptr inbounds [8 x i8], [8 x i8]* %reg496, i32 0, i64 %idxprom495
  %344 = load i8, i8* %arrayidx497, align 1
  %345 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top498 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %345, i32 0, i32 0
  %346 = load i32, i32* %top498, align 4
  %347 = load i32, i32* %regno, align 4
  %sub499 = sub nsw i32 %347, 8
  %sub500 = sub nsw i32 %346, %sub499
  %idxprom501 = sext i32 %sub500 to i64
  %348 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg502 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %348, i32 0, i32 2
  %arrayidx503 = getelementptr inbounds [8 x i8], [8 x i8]* %reg502, i32 0, i64 %idxprom501
  store i8 %344, i8* %arrayidx503, align 1
  br label %if.end.504

if.end.504:                                       ; preds = %if.else.485, %if.then.476
  %349 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %349, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld505, i32 0, i64 0
  %rtx507 = bitcast %union.rtunion_def* %arrayidx506 to %struct.rtx_def**
  %350 = load %struct.rtx_def*, %struct.rtx_def** %rtx507, align 8
  %fld508 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %arrayidx509 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld508, i32 0, i64 0
  %rtuint510 = bitcast %union.rtunion_def* %arrayidx509 to i32*
  %351 = load i32, i32* %rtuint510, align 4
  %sh_prom511 = zext i32 %351 to i64
  %shl512 = shl i64 1, %sh_prom511
  %neg513 = xor i64 %shl512, -1
  %352 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set514 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %352, i32 0, i32 1
  %353 = load i64, i64* %reg_set514, align 8
  %and515 = and i64 %353, %neg513
  store i64 %and515, i64* %reg_set514, align 8
  %354 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld516 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %354, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld516, i32 0, i64 0
  %rtx518 = bitcast %union.rtunion_def* %arrayidx517 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx518, i32 8)
  %355 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top519 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %355, i32 0, i32 0
  %356 = load i32, i32* %top519, align 4
  %dec520 = add nsw i32 %356, -1
  store i32 %dec520, i32* %top519, align 4
  br label %if.end.593

if.else.521:                                      ; preds = %if.end.460
  %357 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %tobool522 = icmp ne %struct.rtx_def* %357, null
  br i1 %tobool522, label %if.then.523, label %if.else.583

if.then.523:                                      ; preds = %if.else.521
  %358 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld524 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %358, i32 0, i32 1
  %arrayidx525 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld524, i32 0, i64 0
  %rtx526 = bitcast %union.rtunion_def* %arrayidx525 to %struct.rtx_def**
  %359 = load %struct.rtx_def*, %struct.rtx_def** %rtx526, align 8
  store %struct.rtx_def* %359, %struct.rtx_def** %src2_reg, align 8
  %360 = load %struct.rtx_def*, %struct.rtx_def** %src2_reg, align 8
  %fld527 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %360, i32 0, i32 1
  %arrayidx528 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld527, i32 0, i64 0
  %rtuint529 = bitcast %union.rtunion_def* %arrayidx528 to i32*
  %361 = load i32, i32* %rtuint529, align 4
  %362 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top530 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %362, i32 0, i32 0
  %363 = load i32, i32* %top530, align 4
  %idxprom531 = sext i32 %363 to i64
  %364 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg532 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %364, i32 0, i32 2
  %arrayidx533 = getelementptr inbounds [8 x i8], [8 x i8]* %reg532, i32 0, i64 %idxprom531
  %365 = load i8, i8* %arrayidx533, align 1
  %conv534 = zext i8 %365 to i32
  %cmp535 = icmp eq i32 %361, %conv534
  br i1 %cmp535, label %if.then.537, label %if.else.546

if.then.537:                                      ; preds = %if.then.523
  %366 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %366, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtuint540 = bitcast %union.rtunion_def* %arrayidx539 to i32*
  %368 = load i32, i32* %rtuint540, align 4
  %sh_prom541 = zext i32 %368 to i64
  %shl542 = shl i64 1, %sh_prom541
  %369 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set543 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %369, i32 0, i32 1
  %370 = load i64, i64* %reg_set543, align 8
  %or544 = or i64 %370, %shl542
  store i64 %or544, i64* %reg_set543, align 8
  %371 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %372 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %373 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %374 = load %struct.rtx_def*, %struct.rtx_def** %373, align 8
  %call545 = call i32 @get_hard_regnum(%struct.stack_def* %372, %struct.rtx_def* %374)
  call void @replace_reg(%struct.rtx_def** %371, i32 %call545)
  br label %if.end.566

if.else.546:                                      ; preds = %if.then.523
  %375 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %376 = load %struct.rtx_def*, %struct.rtx_def** %src2_reg, align 8
  %call548 = call i32 @get_hard_regnum(%struct.stack_def* %375, %struct.rtx_def* %376)
  store i32 %call548, i32* %regno547, align 4
  %377 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %378 = load %struct.rtx_def*, %struct.rtx_def** %377, align 8
  %fld549 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %378, i32 0, i32 1
  %arrayidx550 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld549, i32 0, i64 0
  %rtuint551 = bitcast %union.rtunion_def* %arrayidx550 to i32*
  %379 = load i32, i32* %rtuint551, align 4
  %sh_prom552 = zext i32 %379 to i64
  %shl553 = shl i64 1, %sh_prom552
  %380 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set554 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %380, i32 0, i32 1
  %381 = load i64, i64* %reg_set554, align 8
  %or555 = or i64 %381, %shl553
  store i64 %or555, i64* %reg_set554, align 8
  %382 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %383 = load i32, i32* %regno547, align 4
  call void @replace_reg(%struct.rtx_def** %382, i32 %383)
  %384 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top556 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %384, i32 0, i32 0
  %385 = load i32, i32* %top556, align 4
  %idxprom557 = sext i32 %385 to i64
  %386 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg558 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %386, i32 0, i32 2
  %arrayidx559 = getelementptr inbounds [8 x i8], [8 x i8]* %reg558, i32 0, i64 %idxprom557
  %387 = load i8, i8* %arrayidx559, align 1
  %388 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top560 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %388, i32 0, i32 0
  %389 = load i32, i32* %top560, align 4
  %390 = load i32, i32* %regno547, align 4
  %sub561 = sub nsw i32 %390, 8
  %sub562 = sub nsw i32 %389, %sub561
  %idxprom563 = sext i32 %sub562 to i64
  %391 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg564 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %391, i32 0, i32 2
  %arrayidx565 = getelementptr inbounds [8 x i8], [8 x i8]* %reg564, i32 0, i64 %idxprom563
  store i8 %387, i8* %arrayidx565, align 1
  br label %if.end.566

if.end.566:                                       ; preds = %if.else.546, %if.then.537
  %392 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %392, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld567, i32 0, i64 0
  %rtx569 = bitcast %union.rtunion_def* %arrayidx568 to %struct.rtx_def**
  %393 = load %struct.rtx_def*, %struct.rtx_def** %rtx569, align 8
  %fld570 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %393, i32 0, i32 1
  %arrayidx571 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld570, i32 0, i64 0
  %rtuint572 = bitcast %union.rtunion_def* %arrayidx571 to i32*
  %394 = load i32, i32* %rtuint572, align 4
  %sh_prom573 = zext i32 %394 to i64
  %shl574 = shl i64 1, %sh_prom573
  %neg575 = xor i64 %shl574, -1
  %395 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set576 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %395, i32 0, i32 1
  %396 = load i64, i64* %reg_set576, align 8
  %and577 = and i64 %396, %neg575
  store i64 %and577, i64* %reg_set576, align 8
  %397 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld578 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %arrayidx579 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld578, i32 0, i64 0
  %rtx580 = bitcast %union.rtunion_def* %arrayidx579 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx580, i32 8)
  %398 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top581 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %398, i32 0, i32 0
  %399 = load i32, i32* %top581, align 4
  %dec582 = add nsw i32 %399, -1
  store i32 %dec582, i32* %top581, align 4
  br label %if.end.592

if.else.583:                                      ; preds = %if.else.521
  %400 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %401 = load %struct.rtx_def*, %struct.rtx_def** %400, align 8
  %fld584 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %401, i32 0, i32 1
  %arrayidx585 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld584, i32 0, i64 0
  %rtuint586 = bitcast %union.rtunion_def* %arrayidx585 to i32*
  %402 = load i32, i32* %rtuint586, align 4
  %sh_prom587 = zext i32 %402 to i64
  %shl588 = shl i64 1, %sh_prom587
  %403 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set589 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %403, i32 0, i32 1
  %404 = load i64, i64* %reg_set589, align 8
  %or590 = or i64 %404, %shl588
  store i64 %or590, i64* %reg_set589, align 8
  %405 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %406 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %407 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %408 = load %struct.rtx_def*, %struct.rtx_def** %407, align 8
  %call591 = call i32 @get_hard_regnum(%struct.stack_def* %406, %struct.rtx_def* %408)
  call void @replace_reg(%struct.rtx_def** %405, i32 %call591)
  br label %if.end.592

if.end.592:                                       ; preds = %if.else.583, %if.end.566
  br label %if.end.593

if.end.593:                                       ; preds = %if.end.592, %if.end.504
  %409 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %410 = bitcast %struct.rtx_def* %409 to i32*
  %bf.load594 = load i32, i32* %410, align 8
  %bf.clear595 = and i32 %bf.load594, 65535
  %idxprom596 = sext i32 %bf.clear595 to i64
  %arrayidx597 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom596
  %411 = load i8, i8* %arrayidx597, align 1
  %conv598 = sext i8 %411 to i32
  %cmp599 = icmp eq i32 %conv598, 99
  br i1 %cmp599, label %land.lhs.true.601, label %if.end.627

land.lhs.true.601:                                ; preds = %if.end.593
  %412 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %413 = load %struct.rtx_def*, %struct.rtx_def** %412, align 8
  %414 = bitcast %struct.rtx_def* %413 to i32*
  %bf.load602 = load i32, i32* %414, align 8
  %bf.clear603 = and i32 %bf.load602, 65535
  %cmp604 = icmp eq i32 %bf.clear603, 61
  br i1 %cmp604, label %land.lhs.true.606, label %if.end.627

land.lhs.true.606:                                ; preds = %land.lhs.true.601
  %415 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %416 = load %struct.rtx_def*, %struct.rtx_def** %415, align 8
  %417 = bitcast %struct.rtx_def* %416 to i32*
  %bf.load607 = load i32, i32* %417, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp eq i32 %bf.clear608, 61
  br i1 %cmp609, label %land.lhs.true.611, label %if.end.627

land.lhs.true.611:                                ; preds = %land.lhs.true.606
  %418 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %419 = load %struct.rtx_def*, %struct.rtx_def** %418, align 8
  %fld612 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %419, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld612, i32 0, i64 0
  %rtuint614 = bitcast %union.rtunion_def* %arrayidx613 to i32*
  %420 = load i32, i32* %rtuint614, align 4
  %421 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %422 = load %struct.rtx_def*, %struct.rtx_def** %421, align 8
  %fld615 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %422, i32 0, i32 1
  %arrayidx616 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld615, i32 0, i64 0
  %rtuint617 = bitcast %union.rtunion_def* %arrayidx616 to i32*
  %423 = load i32, i32* %rtuint617, align 4
  %cmp618 = icmp ne i32 %420, %423
  br i1 %cmp618, label %if.then.620, label %if.end.627

if.then.620:                                      ; preds = %land.lhs.true.611
  %424 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %425 = load %struct.rtx_def*, %struct.rtx_def** %424, align 8
  %fld621 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %425, i32 0, i32 1
  %arrayidx622 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld621, i32 0, i64 0
  %rtuint623 = bitcast %union.rtunion_def* %arrayidx622 to i32*
  %426 = load i32, i32* %rtuint623, align 4
  store i32 %426, i32* %tmp, align 4
  %427 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %428 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %429 = load %struct.rtx_def*, %struct.rtx_def** %428, align 8
  %fld624 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %429, i32 0, i32 1
  %arrayidx625 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld624, i32 0, i64 0
  %rtuint626 = bitcast %union.rtunion_def* %arrayidx625 to i32*
  %430 = load i32, i32* %rtuint626, align 4
  call void @replace_reg(%struct.rtx_def** %427, i32 %430)
  %431 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %432 = load i32, i32* %tmp, align 4
  call void @replace_reg(%struct.rtx_def** %431, i32 %432)
  br label %if.end.627

if.end.627:                                       ; preds = %if.then.620, %land.lhs.true.611, %land.lhs.true.606, %land.lhs.true.601, %if.end.593
  br label %sw.epilog.900

sw.bb.628:                                        ; preds = %if.end.161
  %433 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld629 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %433, i32 0, i32 1
  %arrayidx630 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld629, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx630 to i32*
  %434 = load i32, i32* %rtint, align 4
  switch i32 %434, label %sw.default [
    i32 1, label %sw.bb.631
    i32 2, label %sw.bb.631
    i32 10, label %sw.bb.674
    i32 9, label %sw.bb.692
  ]

sw.bb.631:                                        ; preds = %sw.bb.628, %sw.bb.628
  %435 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld632 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %435, i32 0, i32 1
  %arrayidx633 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld632, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx633 to %struct.rtvec_def**
  %436 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %436, i32 0, i32 1
  %arrayidx634 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %call635 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %arrayidx634)
  store %struct.rtx_def** %call635, %struct.rtx_def*** %src1, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %438 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %439 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %440 = load %struct.rtx_def*, %struct.rtx_def** %439, align 8
  call void @emit_swap_insn(%struct.rtx_def* %437, %struct.stack_def* %438, %struct.rtx_def* %440)
  %441 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %442 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %443 = load %struct.rtx_def*, %struct.rtx_def** %442, align 8
  %fld636 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx637 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld636, i32 0, i64 0
  %rtuint638 = bitcast %union.rtunion_def* %arrayidx637 to i32*
  %444 = load i32, i32* %rtuint638, align 4
  %call639 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %441, i32 1, i32 %444)
  store %struct.rtx_def* %call639, %struct.rtx_def** %src1_note, align 8
  %445 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %446 = load %struct.rtx_def*, %struct.rtx_def** %445, align 8
  %447 = bitcast %struct.rtx_def* %446 to i32*
  %bf.load640 = load i32, i32* %447, align 8
  %bf.clear641 = and i32 %bf.load640, 65535
  %cmp642 = icmp eq i32 %bf.clear641, 61
  br i1 %cmp642, label %land.lhs.true.644, label %if.end.657

land.lhs.true.644:                                ; preds = %sw.bb.631
  %448 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %449 = load %struct.rtx_def*, %struct.rtx_def** %448, align 8
  %fld645 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %449, i32 0, i32 1
  %arrayidx646 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld645, i32 0, i64 0
  %rtuint647 = bitcast %union.rtunion_def* %arrayidx646 to i32*
  %450 = load i32, i32* %rtuint647, align 4
  %cmp648 = icmp uge i32 %450, 8
  br i1 %cmp648, label %land.lhs.true.650, label %if.end.657

land.lhs.true.650:                                ; preds = %land.lhs.true.644
  %451 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %452 = load %struct.rtx_def*, %struct.rtx_def** %451, align 8
  %fld651 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %452, i32 0, i32 1
  %arrayidx652 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld651, i32 0, i64 0
  %rtuint653 = bitcast %union.rtunion_def* %arrayidx652 to i32*
  %453 = load i32, i32* %rtuint653, align 4
  %cmp654 = icmp ule i32 %453, 15
  br i1 %cmp654, label %if.then.656, label %if.end.657

if.then.656:                                      ; preds = %land.lhs.true.650
  %454 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  call void @replace_reg(%struct.rtx_def** %454, i32 8)
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.656, %land.lhs.true.650, %land.lhs.true.644, %sw.bb.631
  %455 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool658 = icmp ne %struct.rtx_def* %455, null
  br i1 %tobool658, label %if.then.659, label %if.end.673

if.then.659:                                      ; preds = %if.end.657
  %456 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld660 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %456, i32 0, i32 1
  %arrayidx661 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld660, i32 0, i64 0
  %rtx662 = bitcast %union.rtunion_def* %arrayidx661 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx662, i32 8)
  %457 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top663 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %457, i32 0, i32 0
  %458 = load i32, i32* %top663, align 4
  %dec664 = add nsw i32 %458, -1
  store i32 %dec664, i32* %top663, align 4
  %459 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %460 = load %struct.rtx_def*, %struct.rtx_def** %459, align 8
  %fld665 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %460, i32 0, i32 1
  %arrayidx666 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld665, i32 0, i64 0
  %rtuint667 = bitcast %union.rtunion_def* %arrayidx666 to i32*
  %461 = load i32, i32* %rtuint667, align 4
  %sh_prom668 = zext i32 %461 to i64
  %shl669 = shl i64 1, %sh_prom668
  %neg670 = xor i64 %shl669, -1
  %462 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set671 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %462, i32 0, i32 1
  %463 = load i64, i64* %reg_set671, align 8
  %and672 = and i64 %463, %neg670
  store i64 %and672, i64* %reg_set671, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.659, %if.end.657
  %464 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  call void @replace_reg(%struct.rtx_def** %464, i32 8)
  br label %sw.epilog

sw.bb.674:                                        ; preds = %sw.bb.628
  %465 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld675 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %arrayidx676 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld675, i32 0, i64 0
  %rtvec677 = bitcast %union.rtunion_def* %arrayidx676 to %struct.rtvec_def**
  %466 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec677, align 8
  %elem678 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %466, i32 0, i32 1
  %arrayidx679 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem678, i32 0, i64 0
  %467 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx679, align 8
  store %struct.rtx_def* %467, %struct.rtx_def** %pat_src, align 8
  %468 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %469 = bitcast %struct.rtx_def* %468 to i32*
  %bf.load680 = load i32, i32* %469, align 8
  %bf.clear681 = and i32 %bf.load680, 65535
  %cmp682 = icmp ne i32 %bf.clear681, 42
  br i1 %cmp682, label %if.then.690, label %lor.lhs.false.684

lor.lhs.false.684:                                ; preds = %sw.bb.674
  %470 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld685 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %470, i32 0, i32 1
  %arrayidx686 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld685, i32 0, i64 1
  %rtint687 = bitcast %union.rtunion_def* %arrayidx686 to i32*
  %471 = load i32, i32* %rtint687, align 4
  %cmp688 = icmp ne i32 %471, 9
  br i1 %cmp688, label %if.then.690, label %if.end.691

if.then.690:                                      ; preds = %lor.lhs.false.684, %sw.bb.674
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1739, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.691:                                       ; preds = %lor.lhs.false.684
  br label %sw.bb.692

sw.bb.692:                                        ; preds = %sw.bb.628, %if.end.691
  %472 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld693 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %472, i32 0, i32 1
  %arrayidx694 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld693, i32 0, i64 0
  %rtvec695 = bitcast %union.rtunion_def* %arrayidx694 to %struct.rtvec_def**
  %473 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec695, align 8
  %elem696 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %473, i32 0, i32 1
  %arrayidx697 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem696, i32 0, i64 0
  %474 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx697, align 8
  store %struct.rtx_def* %474, %struct.rtx_def** %pat_src, align 8
  %475 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %476 = bitcast %struct.rtx_def* %475 to i32*
  %bf.load698 = load i32, i32* %476, align 8
  %bf.clear699 = and i32 %bf.load698, 65535
  %cmp700 = icmp ne i32 %bf.clear699, 74
  br i1 %cmp700, label %if.then.702, label %if.end.703

if.then.702:                                      ; preds = %sw.bb.692
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1750, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.703:                                       ; preds = %sw.bb.692
  %477 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %478 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %479 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  call void @compare_for_stack_reg(%struct.rtx_def* %477, %struct.stack_def* %478, %struct.rtx_def* %479)
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb.628
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1756, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %if.end.703, %if.end.673
  br label %sw.epilog.900

sw.bb.704:                                        ; preds = %if.end.161
  %480 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld705 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %480, i32 0, i32 1
  %arrayidx706 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld705, i32 0, i64 1
  %rtx707 = bitcast %union.rtunion_def* %arrayidx706 to %struct.rtx_def**
  %call708 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx707)
  store %struct.rtx_def** %call708, %struct.rtx_def*** %src1, align 8
  %481 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld709 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %481, i32 0, i32 1
  %arrayidx710 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld709, i32 0, i64 2
  %rtx711 = bitcast %union.rtunion_def* %arrayidx710 to %struct.rtx_def**
  %call712 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx711)
  store %struct.rtx_def** %call712, %struct.rtx_def*** %src2, align 8
  %482 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %483 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %484 = load %struct.rtx_def*, %struct.rtx_def** %483, align 8
  %fld713 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %484, i32 0, i32 1
  %arrayidx714 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld713, i32 0, i64 0
  %rtuint715 = bitcast %union.rtunion_def* %arrayidx714 to i32*
  %485 = load i32, i32* %rtuint715, align 4
  %call716 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %482, i32 1, i32 %485)
  store %struct.rtx_def* %call716, %struct.rtx_def** %src1_note, align 8
  %486 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %487 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %488 = load %struct.rtx_def*, %struct.rtx_def** %487, align 8
  %fld717 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %488, i32 0, i32 1
  %arrayidx718 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld717, i32 0, i64 0
  %rtuint719 = bitcast %union.rtunion_def* %arrayidx718 to i32*
  %489 = load i32, i32* %rtuint719, align 4
  %call720 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %486, i32 1, i32 %489)
  store %struct.rtx_def* %call720, %struct.rtx_def** %src2_note, align 8
  %490 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %491 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %492 = load %struct.rtx_def*, %struct.rtx_def** %491, align 8
  %call721 = call i32 @get_hard_regnum(%struct.stack_def* %490, %struct.rtx_def* %492)
  %cmp722 = icmp sge i32 %call721, 8
  br i1 %cmp722, label %land.lhs.true.724, label %if.end.797

land.lhs.true.724:                                ; preds = %sw.bb.704
  %493 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %494 = load %struct.rtx_def*, %struct.rtx_def** %493, align 8
  %fld725 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %494, i32 0, i32 1
  %arrayidx726 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld725, i32 0, i64 0
  %rtuint727 = bitcast %union.rtunion_def* %arrayidx726 to i32*
  %495 = load i32, i32* %rtuint727, align 4
  %496 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top728 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %496, i32 0, i32 0
  %497 = load i32, i32* %top728, align 4
  %idxprom729 = sext i32 %497 to i64
  %498 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg730 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %498, i32 0, i32 2
  %arrayidx731 = getelementptr inbounds [8 x i8], [8 x i8]* %reg730, i32 0, i64 %idxprom729
  %499 = load i8, i8* %arrayidx731, align 1
  %conv732 = zext i8 %499 to i32
  %cmp733 = icmp ne i32 %495, %conv732
  br i1 %cmp733, label %if.then.735, label %if.end.797

if.then.735:                                      ; preds = %land.lhs.true.724
  %500 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %501 = load %struct.rtx_def*, %struct.rtx_def** %500, align 8
  %fld736 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %501, i32 0, i32 1
  %arrayidx737 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld736, i32 0, i64 0
  %rtuint738 = bitcast %union.rtunion_def* %arrayidx737 to i32*
  %502 = load i32, i32* %rtuint738, align 4
  %503 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top739 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %503, i32 0, i32 0
  %504 = load i32, i32* %top739, align 4
  %idxprom740 = sext i32 %504 to i64
  %505 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg741 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %505, i32 0, i32 2
  %arrayidx742 = getelementptr inbounds [8 x i8], [8 x i8]* %reg741, i32 0, i64 %idxprom740
  %506 = load i8, i8* %arrayidx742, align 1
  %conv743 = zext i8 %506 to i32
  %cmp744 = icmp eq i32 %502, %conv743
  br i1 %cmp744, label %land.lhs.true.746, label %lor.lhs.false.748

land.lhs.true.746:                                ; preds = %if.then.735
  %507 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool747 = icmp ne %struct.rtx_def* %507, null
  br i1 %tobool747, label %if.then.761, label %lor.lhs.false.748

lor.lhs.false.748:                                ; preds = %land.lhs.true.746, %if.then.735
  %508 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %509 = load %struct.rtx_def*, %struct.rtx_def** %508, align 8
  %fld749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %509, i32 0, i32 1
  %arrayidx750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld749, i32 0, i64 0
  %rtuint751 = bitcast %union.rtunion_def* %arrayidx750 to i32*
  %510 = load i32, i32* %rtuint751, align 4
  %511 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top752 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %511, i32 0, i32 0
  %512 = load i32, i32* %top752, align 4
  %idxprom753 = sext i32 %512 to i64
  %513 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg754 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %513, i32 0, i32 2
  %arrayidx755 = getelementptr inbounds [8 x i8], [8 x i8]* %reg754, i32 0, i64 %idxprom753
  %514 = load i8, i8* %arrayidx755, align 1
  %conv756 = zext i8 %514 to i32
  %cmp757 = icmp eq i32 %510, %conv756
  br i1 %cmp757, label %land.lhs.true.759, label %if.else.795

land.lhs.true.759:                                ; preds = %lor.lhs.false.748
  %515 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %tobool760 = icmp ne %struct.rtx_def* %515, null
  br i1 %tobool760, label %if.then.761, label %if.else.795

if.then.761:                                      ; preds = %land.lhs.true.759, %land.lhs.true.746
  %516 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %517 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %518 = load %struct.rtx_def*, %struct.rtx_def** %517, align 8
  %call763 = call i32 @get_hard_regnum(%struct.stack_def* %516, %struct.rtx_def* %518)
  %sub764 = sub nsw i32 %call763, 8
  store i32 %sub764, i32* %idx1, align 4
  %519 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %520 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %521 = load %struct.rtx_def*, %struct.rtx_def** %520, align 8
  %call766 = call i32 @get_hard_regnum(%struct.stack_def* %519, %struct.rtx_def* %521)
  %sub767 = sub nsw i32 %call766, 8
  store i32 %sub767, i32* %idx2, align 4
  %522 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %523 = load %struct.rtx_def*, %struct.rtx_def** %522, align 8
  %fld768 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %523, i32 0, i32 1
  %arrayidx769 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld768, i32 0, i64 0
  %rtuint770 = bitcast %union.rtunion_def* %arrayidx769 to i32*
  %524 = load i32, i32* %rtuint770, align 4
  %conv771 = trunc i32 %524 to i8
  %525 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top772 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %525, i32 0, i32 0
  %526 = load i32, i32* %top772, align 4
  %527 = load i32, i32* %idx1, align 4
  %sub773 = sub nsw i32 %526, %527
  %idxprom774 = sext i32 %sub773 to i64
  %528 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg775 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %528, i32 0, i32 2
  %arrayidx776 = getelementptr inbounds [8 x i8], [8 x i8]* %reg775, i32 0, i64 %idxprom774
  store i8 %conv771, i8* %arrayidx776, align 1
  %529 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %530 = load %struct.rtx_def*, %struct.rtx_def** %529, align 8
  %fld777 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %530, i32 0, i32 1
  %arrayidx778 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld777, i32 0, i64 0
  %rtuint779 = bitcast %union.rtunion_def* %arrayidx778 to i32*
  %531 = load i32, i32* %rtuint779, align 4
  %conv780 = trunc i32 %531 to i8
  %532 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top781 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %532, i32 0, i32 0
  %533 = load i32, i32* %top781, align 4
  %534 = load i32, i32* %idx2, align 4
  %sub782 = sub nsw i32 %533, %534
  %idxprom783 = sext i32 %sub782 to i64
  %535 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg784 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %535, i32 0, i32 2
  %arrayidx785 = getelementptr inbounds [8 x i8], [8 x i8]* %reg784, i32 0, i64 %idxprom783
  store i8 %conv780, i8* %arrayidx785, align 1
  %536 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld786 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %536, i32 0, i32 1
  %arrayidx787 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld786, i32 0, i64 0
  %rtx788 = bitcast %union.rtunion_def* %arrayidx787 to %struct.rtx_def**
  %537 = load %struct.rtx_def*, %struct.rtx_def** %rtx788, align 8
  %538 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call789 = call i32 @reversed_comparison_code(%struct.rtx_def* %537, %struct.rtx_def* %538)
  %539 = load %struct.rtx_def*, %struct.rtx_def** %pat_src, align 8
  %fld790 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %539, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld790, i32 0, i64 0
  %rtx792 = bitcast %union.rtunion_def* %arrayidx791 to %struct.rtx_def**
  %540 = load %struct.rtx_def*, %struct.rtx_def** %rtx792, align 8
  %541 = bitcast %struct.rtx_def* %540 to i32*
  %bf.load793 = load i32, i32* %541, align 8
  %bf.value = and i32 %call789, 65535
  %bf.clear794 = and i32 %bf.load793, -65536
  %bf.set = or i32 %bf.clear794, %bf.value
  store i32 %bf.set, i32* %541, align 8
  br label %if.end.796

if.else.795:                                      ; preds = %land.lhs.true.759, %lor.lhs.false.748
  %542 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %543 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %544 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %545 = load %struct.rtx_def*, %struct.rtx_def** %544, align 8
  call void @emit_swap_insn(%struct.rtx_def* %542, %struct.stack_def* %543, %struct.rtx_def* %545)
  br label %if.end.796

if.end.796:                                       ; preds = %if.else.795, %if.then.761
  br label %if.end.797

if.end.797:                                       ; preds = %if.end.796, %land.lhs.true.724, %sw.bb.704
  %arrayidx800 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 0
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx800, align 8
  %546 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %arrayidx801 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 1
  store %struct.rtx_def* %546, %struct.rtx_def** %arrayidx801, align 8
  %547 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %arrayidx802 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 2
  store %struct.rtx_def* %547, %struct.rtx_def** %arrayidx802, align 8
  %548 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %549 = load %struct.rtx_def*, %struct.rtx_def** %548, align 8
  %550 = bitcast %struct.rtx_def* %549 to i32*
  %bf.load803 = load i32, i32* %550, align 8
  %bf.clear804 = and i32 %bf.load803, 65535
  %cmp805 = icmp eq i32 %bf.clear804, 61
  br i1 %cmp805, label %land.lhs.true.807, label %if.end.821

land.lhs.true.807:                                ; preds = %if.end.797
  %551 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %552 = load %struct.rtx_def*, %struct.rtx_def** %551, align 8
  %fld808 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %552, i32 0, i32 1
  %arrayidx809 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld808, i32 0, i64 0
  %rtuint810 = bitcast %union.rtunion_def* %arrayidx809 to i32*
  %553 = load i32, i32* %rtuint810, align 4
  %cmp811 = icmp uge i32 %553, 8
  br i1 %cmp811, label %land.lhs.true.813, label %if.end.821

land.lhs.true.813:                                ; preds = %land.lhs.true.807
  %554 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %555 = load %struct.rtx_def*, %struct.rtx_def** %554, align 8
  %fld814 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %555, i32 0, i32 1
  %arrayidx815 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld814, i32 0, i64 0
  %rtuint816 = bitcast %union.rtunion_def* %arrayidx815 to i32*
  %556 = load i32, i32* %rtuint816, align 4
  %cmp817 = icmp ule i32 %556, 15
  br i1 %cmp817, label %if.then.819, label %if.end.821

if.then.819:                                      ; preds = %land.lhs.true.813
  %557 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %558 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %559 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %560 = load %struct.rtx_def*, %struct.rtx_def** %559, align 8
  %call820 = call i32 @get_hard_regnum(%struct.stack_def* %558, %struct.rtx_def* %560)
  call void @replace_reg(%struct.rtx_def** %557, i32 %call820)
  br label %if.end.821

if.end.821:                                       ; preds = %if.then.819, %land.lhs.true.813, %land.lhs.true.807, %if.end.797
  %561 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %562 = load %struct.rtx_def*, %struct.rtx_def** %561, align 8
  %563 = bitcast %struct.rtx_def* %562 to i32*
  %bf.load822 = load i32, i32* %563, align 8
  %bf.clear823 = and i32 %bf.load822, 65535
  %cmp824 = icmp eq i32 %bf.clear823, 61
  br i1 %cmp824, label %land.lhs.true.826, label %if.end.840

land.lhs.true.826:                                ; preds = %if.end.821
  %564 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %565 = load %struct.rtx_def*, %struct.rtx_def** %564, align 8
  %fld827 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %565, i32 0, i32 1
  %arrayidx828 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld827, i32 0, i64 0
  %rtuint829 = bitcast %union.rtunion_def* %arrayidx828 to i32*
  %566 = load i32, i32* %rtuint829, align 4
  %cmp830 = icmp uge i32 %566, 8
  br i1 %cmp830, label %land.lhs.true.832, label %if.end.840

land.lhs.true.832:                                ; preds = %land.lhs.true.826
  %567 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %568 = load %struct.rtx_def*, %struct.rtx_def** %567, align 8
  %fld833 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %568, i32 0, i32 1
  %arrayidx834 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld833, i32 0, i64 0
  %rtuint835 = bitcast %union.rtunion_def* %arrayidx834 to i32*
  %569 = load i32, i32* %rtuint835, align 4
  %cmp836 = icmp ule i32 %569, 15
  br i1 %cmp836, label %if.then.838, label %if.end.840

if.then.838:                                      ; preds = %land.lhs.true.832
  %570 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %571 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %572 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %573 = load %struct.rtx_def*, %struct.rtx_def** %572, align 8
  %call839 = call i32 @get_hard_regnum(%struct.stack_def* %571, %struct.rtx_def* %573)
  call void @replace_reg(%struct.rtx_def** %570, i32 %call839)
  br label %if.end.840

if.end.840:                                       ; preds = %if.then.838, %land.lhs.true.832, %land.lhs.true.826, %if.end.821
  store i32 1, i32* %i, align 4
  br label %for.cond.841

for.cond.841:                                     ; preds = %for.inc, %if.end.840
  %574 = load i32, i32* %i, align 4
  %cmp842 = icmp sle i32 %574, 2
  br i1 %cmp842, label %for.body.844, label %for.end.877

for.body.844:                                     ; preds = %for.cond.841
  %575 = load i32, i32* %i, align 4
  %idxprom845 = sext i32 %575 to i64
  %arrayidx846 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 %idxprom845
  %576 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx846, align 8
  %tobool847 = icmp ne %struct.rtx_def* %576, null
  br i1 %tobool847, label %if.then.848, label %if.end.875

if.then.848:                                      ; preds = %for.body.844
  %577 = load i32, i32* %i, align 4
  %idxprom851 = sext i32 %577 to i64
  %arrayidx852 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 %idxprom851
  %578 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx852, align 8
  %fld853 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %578, i32 0, i32 1
  %arrayidx854 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld853, i32 0, i64 0
  %rtx855 = bitcast %union.rtunion_def* %arrayidx854 to %struct.rtx_def**
  %579 = load %struct.rtx_def*, %struct.rtx_def** %rtx855, align 8
  %fld856 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %579, i32 0, i32 1
  %arrayidx857 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld856, i32 0, i64 0
  %rtuint858 = bitcast %union.rtunion_def* %arrayidx857 to i32*
  %580 = load i32, i32* %rtuint858, align 4
  store i32 %580, i32* %regno850, align 4
  %581 = load i32, i32* %regno850, align 4
  %582 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top859 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %582, i32 0, i32 0
  %583 = load i32, i32* %top859, align 4
  %idxprom860 = sext i32 %583 to i64
  %584 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg861 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %584, i32 0, i32 2
  %arrayidx862 = getelementptr inbounds [8 x i8], [8 x i8]* %reg861, i32 0, i64 %idxprom860
  %585 = load i8, i8* %arrayidx862, align 1
  %conv863 = zext i8 %585 to i32
  %cmp864 = icmp ne i32 %581, %conv863
  br i1 %cmp864, label %if.then.866, label %if.else.873

if.then.866:                                      ; preds = %if.then.848
  %586 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %587 = load i32, i32* %regno850, align 4
  call void @remove_regno_note(%struct.rtx_def* %586, i32 1, i32 %587)
  %588 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %589 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %590 = load i32, i32* %i, align 4
  %idxprom867 = sext i32 %590 to i64
  %arrayidx868 = getelementptr inbounds [3 x %struct.rtx_def*], [3 x %struct.rtx_def*]* %src_note, i32 0, i64 %idxprom867
  %591 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx868, align 8
  %fld869 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %591, i32 0, i32 1
  %arrayidx870 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld869, i32 0, i64 0
  %rtx871 = bitcast %union.rtunion_def* %arrayidx870 to %struct.rtx_def**
  %592 = load %struct.rtx_def*, %struct.rtx_def** %rtx871, align 8
  %call872 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %588, %struct.stack_def* %589, %struct.rtx_def* %592, i32 0)
  br label %if.end.874

if.else.873:                                      ; preds = %if.then.848
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1833, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

if.end.874:                                       ; preds = %if.then.866
  br label %if.end.875

if.end.875:                                       ; preds = %if.end.874, %for.body.844
  br label %for.inc

for.inc:                                          ; preds = %if.end.875
  %593 = load i32, i32* %i, align 4
  %inc876 = add nsw i32 %593, 1
  store i32 %inc876, i32* %i, align 4
  br label %for.cond.841

for.end.877:                                      ; preds = %for.cond.841
  %594 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %595 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %596 = load %struct.rtx_def*, %struct.rtx_def** %595, align 8
  %call878 = call i32 @get_hard_regnum(%struct.stack_def* %594, %struct.rtx_def* %596)
  %cmp879 = icmp slt i32 %call878, 8
  br i1 %cmp879, label %if.then.881, label %if.end.891

if.then.881:                                      ; preds = %for.end.877
  %597 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %598 = load %struct.rtx_def*, %struct.rtx_def** %597, align 8
  %fld882 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %598, i32 0, i32 1
  %arrayidx883 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld882, i32 0, i64 0
  %rtuint884 = bitcast %union.rtunion_def* %arrayidx883 to i32*
  %599 = load i32, i32* %rtuint884, align 4
  %conv885 = trunc i32 %599 to i8
  %600 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top886 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %600, i32 0, i32 0
  %601 = load i32, i32* %top886, align 4
  %inc887 = add nsw i32 %601, 1
  store i32 %inc887, i32* %top886, align 4
  %idxprom888 = sext i32 %inc887 to i64
  %602 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg889 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %602, i32 0, i32 2
  %arrayidx890 = getelementptr inbounds [8 x i8], [8 x i8]* %reg889, i32 0, i64 %idxprom888
  store i8 %conv885, i8* %arrayidx890, align 1
  br label %if.end.891

if.end.891:                                       ; preds = %if.then.881, %for.end.877
  %603 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  %604 = load %struct.rtx_def*, %struct.rtx_def** %603, align 8
  %fld892 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %604, i32 0, i32 1
  %arrayidx893 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld892, i32 0, i64 0
  %rtuint894 = bitcast %union.rtunion_def* %arrayidx893 to i32*
  %605 = load i32, i32* %rtuint894, align 4
  %sh_prom895 = zext i32 %605 to i64
  %shl896 = shl i64 1, %sh_prom895
  %606 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set897 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %606, i32 0, i32 1
  %607 = load i64, i64* %reg_set897, align 8
  %or898 = or i64 %607, %shl896
  store i64 %or898, i64* %reg_set897, align 8
  %608 = load %struct.rtx_def**, %struct.rtx_def*** %dest, align 8
  call void @replace_reg(%struct.rtx_def** %608, i32 8)
  br label %sw.epilog.900

sw.default.899:                                   ; preds = %if.end.161
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1846, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.subst_stack_regs_pat, i32 0, i32 0)) #5
  unreachable

sw.epilog.900:                                    ; preds = %if.end.891, %sw.epilog, %if.end.627, %if.end.315, %for.end, %sw.bb.164
  br label %sw.epilog.902

sw.default.901:                                   ; preds = %entry
  br label %sw.epilog.902

sw.epilog.902:                                    ; preds = %if.then, %sw.default.901, %sw.epilog.900, %if.then.160, %if.end.108, %if.end.20
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @check_asm_stack_operands(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %n_clobbers = alloca i32, align 4
  %malformed_asm = alloca i32, align 4
  %body = alloca %struct.rtx_def*, align 8
  %reg_used_as_output = alloca [53 x i8], align 16
  %implicitly_dies = alloca [53 x i8], align 16
  %alt = alloca i32, align 4
  %clobber_reg = alloca %struct.rtx_def**, align 8
  %n_inputs = alloca i32, align 4
  %n_outputs = alloca i32, align 4
  %clobber = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %j242 = alloca i32, align 4
  %j320 = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 0, i32* %malformed_asm, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  store %struct.rtx_def** null, %struct.rtx_def*** %clobber_reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %2)
  %call = call i32 @constrain_operands(i32 1)
  %3 = load i32, i32* @which_alternative, align 4
  store i32 %3, i32* %alt, align 4
  call void @preprocess_constraints()
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call1 = call i32 @get_asm_operand_n_inputs(%struct.rtx_def* %4)
  store i32 %call1, i32* %n_inputs, align 4
  %5 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %5 to i32
  %6 = load i32, i32* %n_inputs, align 4
  %sub = sub nsw i32 %conv, %6
  store i32 %sub, i32* %n_outputs, align 4
  %7 = load i32, i32* %alt, align 4
  %cmp = icmp slt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %malformed_asm, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %call3, %struct.rtx_def** %rtx6, align 8
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv7 = sext i8 %11 to i32
  %cmp8 = icmp slt i32 %10, %conv7
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx10 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp11 = icmp eq i32 %bf.clear, 63
  br i1 %cmp11, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load18 = load i32, i32* %18, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 61
  br i1 %cmp20, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom23
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom28
  store %struct.rtx_def* %21, %struct.rtx_def** %arrayidx29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.22, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %n_clobbers, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load31 = load i32, i32* %25, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 39
  br i1 %cmp33, label %if.then.35, label %if.end.107

if.then.35:                                       ; preds = %for.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 0
  %28 = load i32, i32* %num_elem, align 4
  %conv38 = sext i32 %28 to i64
  %mul = mul i64 %conv38, 8
  %29 = alloca i8, i64 %mul
  %30 = bitcast i8* %29 to %struct.rtx_def**
  store %struct.rtx_def** %30, %struct.rtx_def*** %clobber_reg, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.104, %if.then.35
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtvec42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec42, align 8
  %num_elem43 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 0
  %34 = load i32, i32* %num_elem43, align 4
  %cmp44 = icmp slt i32 %31, %34
  br i1 %cmp44, label %for.body.46, label %for.end.106

for.body.46:                                      ; preds = %for.cond.39
  %35 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %35 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtvec50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec50, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom47
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load52 = load i32, i32* %39, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 49
  br i1 %cmp54, label %if.then.56, label %if.end.103

if.then.56:                                       ; preds = %for.body.46
  %40 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %40 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtvec60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtvec_def**
  %42 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec60, align 8
  %elem61 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %42, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem61, i32 0, i64 %idxprom57
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx62, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %clobber, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %clobber, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %reg, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load66 = load i32, i32* %47, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 63
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.82

land.lhs.true.70:                                 ; preds = %if.then.56
  %48 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load74 = load i32, i32* %50, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 61
  br i1 %cmp76, label %if.then.78, label %if.end.82

if.then.78:                                       ; preds = %land.lhs.true.70
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %reg, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.78, %land.lhs.true.70, %if.then.56
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load83 = load i32, i32* %54, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 61
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.102

land.lhs.true.87:                                 ; preds = %if.end.82
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx89 to i32*
  %56 = load i32, i32* %rtuint, align 4
  %cmp90 = icmp uge i32 %56, 8
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.102

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %57 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtuint95 = bitcast %union.rtunion_def* %arrayidx94 to i32*
  %58 = load i32, i32* %rtuint95, align 4
  %cmp96 = icmp ule i32 %58, 15
  br i1 %cmp96, label %if.then.98, label %if.end.102

if.then.98:                                       ; preds = %land.lhs.true.92
  %59 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %60 = load i32, i32* %n_clobbers, align 4
  %idxprom99 = sext i32 %60 to i64
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx100 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %61, i64 %idxprom99
  store %struct.rtx_def* %59, %struct.rtx_def** %arrayidx100, align 8
  %62 = load i32, i32* %n_clobbers, align 4
  %inc101 = add nsw i32 %62, 1
  store i32 %inc101, i32* %n_clobbers, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.98, %land.lhs.true.92, %land.lhs.true.87, %if.end.82
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %for.body.46
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %63 = load i32, i32* %i, align 4
  %inc105 = add nsw i32 %63, 1
  store i32 %inc105, i32* %i, align 4
  br label %for.cond.39

for.end.106:                                      ; preds = %for.cond.39
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %for.end
  %64 = bitcast [53 x i8]* %reg_used_as_output to i8*
  call void @llvm.memset.p0i8.i64(i8* %64, i8 0, i64 53, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.185, %if.end.107
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %n_outputs, align 4
  %cmp109 = icmp slt i32 %65, %66
  br i1 %cmp109, label %for.body.111, label %for.end.187

for.body.111:                                     ; preds = %for.cond.108
  %67 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %67 to i64
  %arrayidx113 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom112
  %68 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx113, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load114 = load i32, i32* %69, align 8
  %bf.clear115 = and i32 %bf.load114, 65535
  %cmp116 = icmp eq i32 %bf.clear115, 61
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.184

land.lhs.true.118:                                ; preds = %for.body.111
  %70 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %70 to i64
  %arrayidx120 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom119
  %71 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx120, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtuint123 = bitcast %union.rtunion_def* %arrayidx122 to i32*
  %72 = load i32, i32* %rtuint123, align 4
  %cmp124 = icmp uge i32 %72, 8
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.184

land.lhs.true.126:                                ; preds = %land.lhs.true.118
  %73 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %73 to i64
  %arrayidx128 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom127
  %74 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx128, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtuint131 = bitcast %union.rtunion_def* %arrayidx130 to i32*
  %75 = load i32, i32* %rtuint131, align 4
  %cmp132 = icmp ule i32 %75, 15
  br i1 %cmp132, label %if.then.134, label %if.end.184

if.then.134:                                      ; preds = %land.lhs.true.126
  %76 = load i32, i32* %alt, align 4
  %idxprom135 = sext i32 %76 to i64
  %77 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %77 to i64
  %arrayidx137 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom136
  %arrayidx138 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx137, i32 0, i64 %idxprom135
  %class = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx138, i32 0, i32 1
  %78 = load i32, i32* %class, align 4
  %idxprom139 = sext i32 %78 to i64
  %arrayidx140 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom139
  %79 = load i32, i32* %arrayidx140, align 4
  %cmp141 = icmp ne i32 %79, 1
  br i1 %cmp141, label %if.then.143, label %if.else

if.then.143:                                      ; preds = %if.then.134
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %81 = load i32, i32* %i, align 4
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i32 0, i32 0), i32 %81)
  store i32 1, i32* %malformed_asm, align 4
  br label %if.end.183

if.else:                                          ; preds = %if.then.134
  store i32 0, i32* %j, align 4
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.169, %if.else
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %n_clobbers, align 4
  %cmp145 = icmp slt i32 %82, %83
  br i1 %cmp145, label %for.body.147, label %for.end.171

for.body.147:                                     ; preds = %for.cond.144
  %84 = load i32, i32* %i, align 4
  %idxprom148 = sext i32 %84 to i64
  %arrayidx149 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom148
  %85 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx149, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 0
  %rtuint152 = bitcast %union.rtunion_def* %arrayidx151 to i32*
  %86 = load i32, i32* %rtuint152, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom153 = sext i32 %87 to i64
  %88 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx154 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %88, i64 %idxprom153
  %89 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx154, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 0
  %rtuint157 = bitcast %union.rtunion_def* %arrayidx156 to i32*
  %90 = load i32, i32* %rtuint157, align 4
  %cmp158 = icmp eq i32 %86, %90
  br i1 %cmp158, label %if.then.160, label %if.end.168

if.then.160:                                      ; preds = %for.body.147
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %92 = load i32, i32* %i, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom161 = sext i32 %93 to i64
  %94 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx162 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %94, i64 %idxprom161
  %95 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx162, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtuint165 = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %96 = load i32, i32* %rtuint165, align 4
  %idxprom166 = zext i32 %96 to i64
  %arrayidx167 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom166
  %97 = load i8*, i8** %arrayidx167, align 8
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %91, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.19, i32 0, i32 0), i32 %92, i8* %97)
  store i32 1, i32* %malformed_asm, align 4
  br label %for.end.171

if.end.168:                                       ; preds = %for.body.147
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %98 = load i32, i32* %j, align 4
  %inc170 = add nsw i32 %98, 1
  store i32 %inc170, i32* %j, align 4
  br label %for.cond.144

for.end.171:                                      ; preds = %if.then.160, %for.cond.144
  %99 = load i32, i32* %j, align 4
  %100 = load i32, i32* %n_clobbers, align 4
  %cmp172 = icmp eq i32 %99, %100
  br i1 %cmp172, label %if.then.174, label %if.end.182

if.then.174:                                      ; preds = %for.end.171
  %101 = load i32, i32* %i, align 4
  %idxprom175 = sext i32 %101 to i64
  %arrayidx176 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom175
  %102 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx176, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtuint179 = bitcast %union.rtunion_def* %arrayidx178 to i32*
  %103 = load i32, i32* %rtuint179, align 4
  %idxprom180 = zext i32 %103 to i64
  %arrayidx181 = getelementptr inbounds [53 x i8], [53 x i8]* %reg_used_as_output, i32 0, i64 %idxprom180
  store i8 1, i8* %arrayidx181, align 1
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.174, %for.end.171
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.143
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %land.lhs.true.126, %land.lhs.true.118, %for.body.111
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %104 = load i32, i32* %i, align 4
  %inc186 = add nsw i32 %104, 1
  store i32 %inc186, i32* %i, align 4
  br label %for.cond.108

for.end.187:                                      ; preds = %for.cond.108
  store i32 8, i32* %i, align 4
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.196, %for.end.187
  %105 = load i32, i32* %i, align 4
  %cmp189 = icmp slt i32 %105, 16
  br i1 %cmp189, label %for.body.191, label %for.end.198

for.body.191:                                     ; preds = %for.cond.188
  %106 = load i32, i32* %i, align 4
  %idxprom192 = sext i32 %106 to i64
  %arrayidx193 = getelementptr inbounds [53 x i8], [53 x i8]* %reg_used_as_output, i32 0, i64 %idxprom192
  %107 = load i8, i8* %arrayidx193, align 1
  %tobool = icmp ne i8 %107, 0
  br i1 %tobool, label %if.end.195, label %if.then.194

if.then.194:                                      ; preds = %for.body.191
  br label %for.end.198

if.end.195:                                       ; preds = %for.body.191
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end.195
  %108 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %108, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond.188

for.end.198:                                      ; preds = %if.then.194, %for.cond.188
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.208, %for.end.198
  %109 = load i32, i32* %i, align 4
  %cmp200 = icmp slt i32 %109, 16
  br i1 %cmp200, label %for.body.202, label %for.end.210

for.body.202:                                     ; preds = %for.cond.199
  %110 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %110 to i64
  %arrayidx204 = getelementptr inbounds [53 x i8], [53 x i8]* %reg_used_as_output, i32 0, i64 %idxprom203
  %111 = load i8, i8* %arrayidx204, align 1
  %tobool205 = icmp ne i8 %111, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %for.body.202
  br label %for.end.210

if.end.207:                                       ; preds = %for.body.202
  br label %for.inc.208

for.inc.208:                                      ; preds = %if.end.207
  %112 = load i32, i32* %i, align 4
  %inc209 = add nsw i32 %112, 1
  store i32 %inc209, i32* %i, align 4
  br label %for.cond.199

for.end.210:                                      ; preds = %if.then.206, %for.cond.199
  %113 = load i32, i32* %i, align 4
  %cmp211 = icmp ne i32 %113, 16
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %for.end.210
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i32 0, i32 0))
  store i32 1, i32* %malformed_asm, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %for.end.210
  %115 = bitcast [53 x i8]* %implicitly_dies to i8*
  call void @llvm.memset.p0i8.i64(i8* %115, i8 0, i64 53, i32 16, i1 false)
  %116 = load i32, i32* %n_outputs, align 4
  store i32 %116, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.276, %if.end.214
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* %n_outputs, align 4
  %119 = load i32, i32* %n_inputs, align 4
  %add = add nsw i32 %118, %119
  %cmp216 = icmp slt i32 %117, %add
  br i1 %cmp216, label %for.body.218, label %for.end.278

for.body.218:                                     ; preds = %for.cond.215
  %120 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %120 to i64
  %arrayidx220 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom219
  %121 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx220, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load221 = load i32, i32* %122, align 8
  %bf.clear222 = and i32 %bf.load221, 65535
  %cmp223 = icmp eq i32 %bf.clear222, 61
  br i1 %cmp223, label %land.lhs.true.225, label %if.end.275

land.lhs.true.225:                                ; preds = %for.body.218
  %123 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %123 to i64
  %arrayidx227 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom226
  %124 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx227, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtuint230 = bitcast %union.rtunion_def* %arrayidx229 to i32*
  %125 = load i32, i32* %rtuint230, align 4
  %cmp231 = icmp uge i32 %125, 8
  br i1 %cmp231, label %land.lhs.true.233, label %if.end.275

land.lhs.true.233:                                ; preds = %land.lhs.true.225
  %126 = load i32, i32* %i, align 4
  %idxprom234 = sext i32 %126 to i64
  %arrayidx235 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom234
  %127 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx235, align 8
  %fld236 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld236, i32 0, i64 0
  %rtuint238 = bitcast %union.rtunion_def* %arrayidx237 to i32*
  %128 = load i32, i32* %rtuint238, align 4
  %cmp239 = icmp ule i32 %128, 15
  br i1 %cmp239, label %if.then.241, label %if.end.275

if.then.241:                                      ; preds = %land.lhs.true.233
  store i32 0, i32* %j242, align 4
  br label %for.cond.243

for.cond.243:                                     ; preds = %for.inc.255, %if.then.241
  %129 = load i32, i32* %j242, align 4
  %130 = load i32, i32* %n_clobbers, align 4
  %cmp244 = icmp slt i32 %129, %130
  br i1 %cmp244, label %for.body.246, label %for.end.257

for.body.246:                                     ; preds = %for.cond.243
  %131 = load i32, i32* %j242, align 4
  %idxprom247 = sext i32 %131 to i64
  %132 = load %struct.rtx_def**, %struct.rtx_def*** %clobber_reg, align 8
  %arrayidx248 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %132, i64 %idxprom247
  %133 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx248, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom249 = sext i32 %134 to i64
  %arrayidx250 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom249
  %135 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx250, align 8
  %call251 = call i32 @operands_match_p(%struct.rtx_def* %133, %struct.rtx_def* %135)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %for.body.246
  br label %for.end.257

if.end.254:                                       ; preds = %for.body.246
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %136 = load i32, i32* %j242, align 4
  %inc256 = add nsw i32 %136, 1
  store i32 %inc256, i32* %j242, align 4
  br label %for.cond.243

for.end.257:                                      ; preds = %if.then.253, %for.cond.243
  %137 = load i32, i32* %j242, align 4
  %138 = load i32, i32* %n_clobbers, align 4
  %cmp258 = icmp slt i32 %137, %138
  br i1 %cmp258, label %if.then.266, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.257
  %139 = load i32, i32* %alt, align 4
  %idxprom260 = sext i32 %139 to i64
  %140 = load i32, i32* %i, align 4
  %idxprom261 = sext i32 %140 to i64
  %arrayidx262 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx262, i32 0, i64 %idxprom260
  %matches = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx263, i32 0, i32 3
  %141 = load i32, i32* %matches, align 4
  %cmp264 = icmp sge i32 %141, 0
  br i1 %cmp264, label %if.then.266, label %if.end.274

if.then.266:                                      ; preds = %lor.lhs.false, %for.end.257
  %142 = load i32, i32* %i, align 4
  %idxprom267 = sext i32 %142 to i64
  %arrayidx268 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom267
  %143 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx268, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 0
  %rtuint271 = bitcast %union.rtunion_def* %arrayidx270 to i32*
  %144 = load i32, i32* %rtuint271, align 4
  %idxprom272 = zext i32 %144 to i64
  %arrayidx273 = getelementptr inbounds [53 x i8], [53 x i8]* %implicitly_dies, i32 0, i64 %idxprom272
  store i8 1, i8* %arrayidx273, align 1
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.266, %lor.lhs.false
  br label %if.end.275

if.end.275:                                       ; preds = %if.end.274, %land.lhs.true.233, %land.lhs.true.225, %for.body.218
  br label %for.inc.276

for.inc.276:                                      ; preds = %if.end.275
  %145 = load i32, i32* %i, align 4
  %inc277 = add nsw i32 %145, 1
  store i32 %inc277, i32* %i, align 4
  br label %for.cond.215

for.end.278:                                      ; preds = %for.cond.215
  store i32 8, i32* %i, align 4
  br label %for.cond.279

for.cond.279:                                     ; preds = %for.inc.288, %for.end.278
  %146 = load i32, i32* %i, align 4
  %cmp280 = icmp slt i32 %146, 16
  br i1 %cmp280, label %for.body.282, label %for.end.290

for.body.282:                                     ; preds = %for.cond.279
  %147 = load i32, i32* %i, align 4
  %idxprom283 = sext i32 %147 to i64
  %arrayidx284 = getelementptr inbounds [53 x i8], [53 x i8]* %implicitly_dies, i32 0, i64 %idxprom283
  %148 = load i8, i8* %arrayidx284, align 1
  %tobool285 = icmp ne i8 %148, 0
  br i1 %tobool285, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %for.body.282
  br label %for.end.290

if.end.287:                                       ; preds = %for.body.282
  br label %for.inc.288

for.inc.288:                                      ; preds = %if.end.287
  %149 = load i32, i32* %i, align 4
  %inc289 = add nsw i32 %149, 1
  store i32 %inc289, i32* %i, align 4
  br label %for.cond.279

for.end.290:                                      ; preds = %if.then.286, %for.cond.279
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.300, %for.end.290
  %150 = load i32, i32* %i, align 4
  %cmp292 = icmp slt i32 %150, 16
  br i1 %cmp292, label %for.body.294, label %for.end.302

for.body.294:                                     ; preds = %for.cond.291
  %151 = load i32, i32* %i, align 4
  %idxprom295 = sext i32 %151 to i64
  %arrayidx296 = getelementptr inbounds [53 x i8], [53 x i8]* %implicitly_dies, i32 0, i64 %idxprom295
  %152 = load i8, i8* %arrayidx296, align 1
  %tobool297 = icmp ne i8 %152, 0
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %for.body.294
  br label %for.end.302

if.end.299:                                       ; preds = %for.body.294
  br label %for.inc.300

for.inc.300:                                      ; preds = %if.end.299
  %153 = load i32, i32* %i, align 4
  %inc301 = add nsw i32 %153, 1
  store i32 %inc301, i32* %i, align 4
  br label %for.cond.291

for.end.302:                                      ; preds = %if.then.298, %for.cond.291
  %154 = load i32, i32* %i, align 4
  %cmp303 = icmp ne i32 %154, 16
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %for.end.302
  %155 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %155, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.21, i32 0, i32 0))
  store i32 1, i32* %malformed_asm, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %for.end.302
  %156 = load i32, i32* %n_outputs, align 4
  store i32 %156, i32* %i, align 4
  br label %for.cond.307

for.cond.307:                                     ; preds = %for.inc.337, %if.end.306
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* %n_outputs, align 4
  %159 = load i32, i32* %n_inputs, align 4
  %add308 = add nsw i32 %158, %159
  %cmp309 = icmp slt i32 %157, %add308
  br i1 %cmp309, label %for.body.311, label %for.end.339

for.body.311:                                     ; preds = %for.cond.307
  %160 = load i32, i32* %alt, align 4
  %idxprom312 = sext i32 %160 to i64
  %161 = load i32, i32* %i, align 4
  %idxprom313 = sext i32 %161 to i64
  %arrayidx314 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom313
  %arrayidx315 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx314, i32 0, i64 %idxprom312
  %matches316 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx315, i32 0, i32 3
  %162 = load i32, i32* %matches316, align 4
  %cmp317 = icmp eq i32 %162, -1
  br i1 %cmp317, label %if.then.319, label %if.end.336

if.then.319:                                      ; preds = %for.body.311
  store i32 0, i32* %j320, align 4
  br label %for.cond.321

for.cond.321:                                     ; preds = %for.inc.333, %if.then.319
  %163 = load i32, i32* %j320, align 4
  %164 = load i32, i32* %n_outputs, align 4
  %cmp322 = icmp slt i32 %163, %164
  br i1 %cmp322, label %for.body.324, label %for.end.335

for.body.324:                                     ; preds = %for.cond.321
  %165 = load i32, i32* %j320, align 4
  %idxprom325 = sext i32 %165 to i64
  %arrayidx326 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom325
  %166 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx326, align 8
  %167 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %167 to i64
  %arrayidx328 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom327
  %168 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx328, align 8
  %call329 = call i32 @operands_match_p(%struct.rtx_def* %166, %struct.rtx_def* %168)
  %tobool330 = icmp ne i32 %call329, 0
  br i1 %tobool330, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %for.body.324
  %169 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %170 = load i32, i32* %j320, align 4
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %169, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i32 0, i32 0), i32 %170)
  store i32 1, i32* %malformed_asm, align 4
  br label %if.end.332

if.end.332:                                       ; preds = %if.then.331, %for.body.324
  br label %for.inc.333

for.inc.333:                                      ; preds = %if.end.332
  %171 = load i32, i32* %j320, align 4
  %inc334 = add nsw i32 %171, 1
  store i32 %inc334, i32* %j320, align 4
  br label %for.cond.321

for.end.335:                                      ; preds = %for.cond.321
  br label %if.end.336

if.end.336:                                       ; preds = %for.end.335, %for.body.311
  br label %for.inc.337

for.inc.337:                                      ; preds = %if.end.336
  %172 = load i32, i32* %i, align 4
  %inc338 = add nsw i32 %172, 1
  store i32 %inc338, i32* %i, align 4
  br label %for.cond.307

for.end.339:                                      ; preds = %for.cond.307
  %173 = load i32, i32* %malformed_asm, align 4
  %tobool340 = icmp ne i32 %173, 0
  br i1 %tobool340, label %if.then.341, label %if.end.346

if.then.341:                                      ; preds = %for.end.339
  %174 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call342 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %174)
  %175 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld343 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx344 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld343, i32 0, i64 3
  %rtx345 = bitcast %union.rtunion_def* %arrayidx344 to %struct.rtx_def**
  store %struct.rtx_def* %call342, %struct.rtx_def** %rtx345, align 8
  store i32 0, i32* %retval
  br label %return

if.end.346:                                       ; preds = %for.end.339
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.346, %if.then.341, %if.then
  %176 = load i32, i32* %retval
  ret i32 %176
}

declare void @extract_insn(%struct.rtx_def*) #1

declare i32 @constrain_operands(i32) #1

declare void @preprocess_constraints() #1

; Function Attrs: nounwind uwtable
define internal i32 @get_asm_operand_n_inputs(%struct.rtx_def* %body) #0 {
entry:
  %retval = alloca i32, align 4
  %body.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %body, %struct.rtx_def** %body.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 41
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtvec_def**
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 0
  %8 = load i32, i32* %num_elem, align 4
  store i32 %8, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 41
  br i1 %cmp11, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtvec15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtvec_def**
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec15, align 8
  %num_elem16 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i32 0, i32 0
  %13 = load i32, i32* %num_elem16, align 4
  store i32 %13, i32* %retval
  br label %return

if.else.17:                                       ; preds = %if.else
  %14 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 39
  br i1 %cmp20, label %land.lhs.true.21, label %if.else.42

land.lhs.true.21:                                 ; preds = %if.else.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtvec24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec24, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 47
  br i1 %cmp28, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %land.lhs.true.21
  %20 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtvec32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec32, align 8
  %elem33 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem33, i32 0, i64 0
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %num_elem41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 0
  %25 = load i32, i32* %num_elem41, align 4
  store i32 %25, i32* %retval
  br label %return

if.else.42:                                       ; preds = %land.lhs.true.21, %if.else.17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load43 = load i32, i32* %27, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 39
  br i1 %cmp45, label %land.lhs.true.46, label %if.end

land.lhs.true.46:                                 ; preds = %if.else.42
  %28 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtvec49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec49, align 8
  %elem50 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem50, i32 0, i64 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load52 = load i32, i32* %31, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 41
  br i1 %cmp54, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %land.lhs.true.46
  %32 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtvec58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtvec_def**
  %33 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec58, align 8
  %elem59 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %33, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem59, i32 0, i64 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 3
  %rtvec63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtvec_def**
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec63, align 8
  %num_elem64 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i32 0, i32 0
  %36 = load i32, i32* %num_elem64, align 4
  store i32 %36, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.46, %if.else.42
  br label %if.end.65

if.end.65:                                        ; preds = %if.end
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 804, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.get_asm_operand_n_inputs, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %if.then.55, %if.then.29, %if.then.12, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @reg_class_subset_p(i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @replace_reg(%struct.rtx_def** %reg, i32 %regno) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def**, align 8
  %regno.addr = alloca i32, align 4
  store %struct.rtx_def** %reg, %struct.rtx_def*** %reg.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %cmp = icmp slt i32 %0, 8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp sgt i32 %1, 15
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 61
  br i1 %cmp3, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %lor.lhs.false.2
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %cmp4 = icmp uge i32 %7, 8
  br i1 %cmp4, label %land.lhs.true.5, label %if.then

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %10 = load i32, i32* %rtuint8, align 4
  %cmp9 = icmp ule i32 %10, 15
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true, %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 851, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.replace_reg, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true.5
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load10 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load10, 16
  %bf.clear11 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear11 to i64
  %arrayidx12 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %14 = load i32, i32* %arrayidx12, align 4
  switch i32 %14, label %sw.default [
    i32 2, label %sw.bb
    i32 6, label %sw.bb
  ]

sw.default:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 855, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.replace_reg, i32 0, i32 0)) #5
  unreachable

sw.bb:                                            ; preds = %if.end, %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load13 = load i32, i32* %17, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %idxprom16 = sext i32 %bf.clear15 to i64
  %18 = load i32, i32* %regno.addr, align 4
  %sub = sub nsw i32 %18, 8
  %idxprom17 = sext i32 %sub to i64
  %arrayidx18 = getelementptr inbounds [8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx18, i32 0, i64 %idxprom16
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %reg.addr, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %20, align 8
  ret void
}

declare i32 @operands_match_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare void @error_for_asm(%struct.rtx_def*, i8*, ...) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @move_for_stack_reg(%struct.rtx_def* %insn, %struct.stack_def* %regstack, %struct.rtx_def* %pat) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %psrc = alloca %struct.rtx_def**, align 8
  %pdest = alloca %struct.rtx_def**, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %push_rtx = alloca %struct.rtx_def*, align 8
  %push_insn = alloca %struct.rtx_def*, align 8
  %top_stack_reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %call = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx)
  store %struct.rtx_def** %call, %struct.rtx_def*** %psrc, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %call4 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx3)
  store %struct.rtx_def** %call4, %struct.rtx_def*** %pdest, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %psrc, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %src, align 8
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %pdest, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %dest, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %cmp7 = icmp uge i32 %9, 8
  br i1 %cmp7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %11 = load i32, i32* %rtuint11, align 4
  %cmp12 = icmp ule i32 %11, 15
  br i1 %cmp12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %land.lhs.true.17, label %if.else

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %15 = load i32, i32* %rtuint20, align 4
  %cmp21 = icmp uge i32 %15, 8
  br i1 %cmp21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtuint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %17 = load i32, i32* %rtuint25, align 4
  %cmp26 = icmp ule i32 %17, 15
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.22
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtuint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  %20 = load i32, i32* %rtuint29, align 4
  %call30 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %18, i32 1, i32 %20)
  store %struct.rtx_def* %call30, %struct.rtx_def** %note, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool, label %if.then.31, label %if.end.82

if.then.31:                                       ; preds = %if.then
  %22 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtuint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %23 = load i32, i32* %rtuint34, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint37 = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %25 = load i32, i32* %rtuint37, align 4
  %cmp38 = icmp eq i32 %23, %25
  br i1 %cmp38, label %if.then.39, label %if.end

if.then.39:                                       ; preds = %if.then.31
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1085, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then.31
  %26 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top = getelementptr inbounds %struct.stack_def, %struct.stack_def* %26, i32 0, i32 0
  %27 = load i32, i32* %top, align 4
  store i32 %27, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %28 = load i32, i32* %i, align 4
  %cmp40 = icmp sge i32 %28, 0
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg = getelementptr inbounds %struct.stack_def, %struct.stack_def* %30, i32 0, i32 2
  %arrayidx41 = getelementptr inbounds [8 x i8], [8 x i8]* %reg, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx41, align 1
  %conv = zext i8 %31 to i32
  %32 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %33 = load i32, i32* %rtuint44, align 4
  %cmp45 = icmp eq i32 %conv, %33
  br i1 %cmp45, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body
  br label %for.end

if.end.48:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %34 = load i32, i32* %i, align 4
  %dec = add nsw i32 %34, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.47, %for.cond
  %35 = load i32, i32* %i, align 4
  %cmp49 = icmp slt i32 %35, 0
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %36 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call51 = call i32 @get_hard_regnum(%struct.stack_def* %36, %struct.rtx_def* %37)
  %cmp52 = icmp sge i32 %call51, 8
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1093, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end.55:                                        ; preds = %lor.lhs.false
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtuint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %40 = load i32, i32* %rtuint58, align 4
  %call59 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %38, i32 10, i32 %40)
  %tobool60 = icmp ne %struct.rtx_def* %call59, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %if.end.55
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %42 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call62 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %41, %struct.stack_def* %42, %struct.rtx_def* %43, i32 0)
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call63 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %44)
  br label %if.end.247

if.end.64:                                        ; preds = %if.end.55
  %45 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %46 = load i32, i32* %rtuint67, align 4
  %conv68 = trunc i32 %46 to i8
  %47 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %47 to i64
  %48 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg70 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %48, i32 0, i32 2
  %arrayidx71 = getelementptr inbounds [8 x i8], [8 x i8]* %reg70, i32 0, i64 %idxprom69
  store i8 %conv68, i8* %arrayidx71, align 1
  %49 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtuint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %50 = load i32, i32* %rtuint74, align 4
  %sh_prom = zext i32 %50 to i64
  %shl = shl i64 1, %sh_prom
  %51 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %51, i32 0, i32 1
  %52 = load i64, i64* %reg_set, align 8
  %or = or i64 %52, %shl
  store i64 %or, i64* %reg_set, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtuint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %54 = load i32, i32* %rtuint77, align 4
  %sh_prom78 = zext i32 %54 to i64
  %shl79 = shl i64 1, %sh_prom78
  %neg = xor i64 %shl79, -1
  %55 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set80 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %55, i32 0, i32 1
  %56 = load i64, i64* %reg_set80, align 8
  %and = and i64 %56, %neg
  store i64 %and, i64* %reg_set80, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call81 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %57)
  br label %if.end.247

if.end.82:                                        ; preds = %if.then
  %58 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtuint85 = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %59 = load i32, i32* %rtuint85, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %61 = load i32, i32* %rtuint88, align 4
  %cmp89 = icmp eq i32 %59, %61
  br i1 %cmp89, label %if.then.91, label %if.end.101

if.then.91:                                       ; preds = %if.end.82
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtuint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %64 = load i32, i32* %rtuint94, align 4
  %call95 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %62, i32 10, i32 %64)
  %tobool96 = icmp ne %struct.rtx_def* %call95, null
  br i1 %tobool96, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.then.91
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %66 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call98 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %65, %struct.stack_def* %66, %struct.rtx_def* %67, i32 0)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.then.91
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call100 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %68)
  br label %if.end.247

if.end.101:                                       ; preds = %if.end.82
  %69 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call102 = call i32 @get_hard_regnum(%struct.stack_def* %69, %struct.rtx_def* %70)
  %cmp103 = icmp sge i32 %call102, 8
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.101
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end.106:                                       ; preds = %if.end.101
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %psrc, align 8
  %72 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call107 = call i32 @get_hard_regnum(%struct.stack_def* %72, %struct.rtx_def* %73)
  call void @replace_reg(%struct.rtx_def** %71, i32 %call107)
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtuint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %75 = load i32, i32* %rtuint110, align 4
  %conv111 = trunc i32 %75 to i8
  %76 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top112 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %76, i32 0, i32 0
  %77 = load i32, i32* %top112, align 4
  %inc = add nsw i32 %77, 1
  store i32 %inc, i32* %top112, align 4
  %idxprom113 = sext i32 %inc to i64
  %78 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg114 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %78, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [8 x i8], [8 x i8]* %reg114, i32 0, i64 %idxprom113
  store i8 %conv111, i8* %arrayidx115, align 1
  %79 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtuint118 = bitcast %union.rtunion_def* %arrayidx117 to i32*
  %80 = load i32, i32* %rtuint118, align 4
  %sh_prom119 = zext i32 %80 to i64
  %shl120 = shl i64 1, %sh_prom119
  %81 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set121 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %81, i32 0, i32 1
  %82 = load i64, i64* %reg_set121, align 8
  %or122 = or i64 %82, %shl120
  store i64 %or122, i64* %reg_set121, align 8
  %83 = load %struct.rtx_def**, %struct.rtx_def*** %pdest, align 8
  call void @replace_reg(%struct.rtx_def** %83, i32 8)
  br label %if.end.247

if.else:                                          ; preds = %land.lhs.true.22, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true.8, %land.lhs.true, %entry
  %84 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load123 = load i32, i32* %85, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 61
  br i1 %cmp125, label %land.lhs.true.127, label %if.else.200

land.lhs.true.127:                                ; preds = %if.else
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtuint130 = bitcast %union.rtunion_def* %arrayidx129 to i32*
  %87 = load i32, i32* %rtuint130, align 4
  %cmp131 = icmp uge i32 %87, 8
  br i1 %cmp131, label %land.lhs.true.133, label %if.else.200

land.lhs.true.133:                                ; preds = %land.lhs.true.127
  %88 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtuint136 = bitcast %union.rtunion_def* %arrayidx135 to i32*
  %89 = load i32, i32* %rtuint136, align 4
  %cmp137 = icmp ule i32 %89, 15
  br i1 %cmp137, label %if.then.139, label %if.else.200

if.then.139:                                      ; preds = %land.lhs.true.133
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %91 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  call void @emit_swap_insn(%struct.rtx_def* %90, %struct.stack_def* %91, %struct.rtx_def* %92)
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 0
  %rtuint142 = bitcast %union.rtunion_def* %arrayidx141 to i32*
  %95 = load i32, i32* %rtuint142, align 4
  %call143 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %93, i32 1, i32 %95)
  store %struct.rtx_def* %call143, %struct.rtx_def** %note, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool144 = icmp ne %struct.rtx_def* %96, null
  br i1 %tobool144, label %if.then.145, label %if.else.159

if.then.145:                                      ; preds = %if.then.139
  %97 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx148, i32 8)
  %98 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top149 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %98, i32 0, i32 0
  %99 = load i32, i32* %top149, align 4
  %dec150 = add nsw i32 %99, -1
  store i32 %dec150, i32* %top149, align 4
  %100 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtuint153 = bitcast %union.rtunion_def* %arrayidx152 to i32*
  %101 = load i32, i32* %rtuint153, align 4
  %sh_prom154 = zext i32 %101 to i64
  %shl155 = shl i64 1, %sh_prom154
  %neg156 = xor i64 %shl155, -1
  %102 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set157 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %102, i32 0, i32 1
  %103 = load i64, i64* %reg_set157, align 8
  %and158 = and i64 %103, %neg156
  store i64 %and158, i64* %reg_set157, align 8
  br label %if.end.199

if.else.159:                                      ; preds = %if.then.139
  %104 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load160 = load i32, i32* %105, align 8
  %bf.lshr = lshr i32 %bf.load160, 16
  %bf.clear161 = and i32 %bf.lshr, 255
  %cmp162 = icmp eq i32 %bf.clear161, 17
  br i1 %cmp162, label %land.lhs.true.170, label %lor.lhs.false.164

lor.lhs.false.164:                                ; preds = %if.else.159
  %106 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load165 = load i32, i32* %107, align 8
  %bf.lshr166 = lshr i32 %bf.load165, 16
  %bf.clear167 = and i32 %bf.lshr166, 255
  %cmp168 = icmp eq i32 %bf.clear167, 18
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.198

land.lhs.true.170:                                ; preds = %lor.lhs.false.164, %if.else.159
  %108 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top171 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %108, i32 0, i32 0
  %109 = load i32, i32* %top171, align 4
  %cmp172 = icmp slt i32 %109, 7
  br i1 %cmp172, label %if.then.174, label %if.end.198

if.then.174:                                      ; preds = %land.lhs.true.170
  %110 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load175 = load i32, i32* %111, align 8
  %bf.lshr176 = lshr i32 %bf.load175, 16
  %bf.clear177 = and i32 %bf.lshr176, 255
  %idxprom178 = sext i32 %bf.clear177 to i64
  %arrayidx179 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([8 x [59 x %struct.rtx_def*]], [8 x [59 x %struct.rtx_def*]]* @FP_mode_reg, i32 0, i64 0), i32 0, i64 %idxprom178
  %112 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx179, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %top_stack_reg, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load180 = load i32, i32* %114, align 8
  %bf.lshr181 = lshr i32 %bf.load180, 16
  %bf.clear182 = and i32 %bf.lshr181, 255
  %cmp183 = icmp eq i32 %bf.clear182, 18
  br i1 %cmp183, label %if.then.185, label %if.else.187

if.then.185:                                      ; preds = %if.then.174
  %115 = load %struct.rtx_def*, %struct.rtx_def** %top_stack_reg, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %top_stack_reg, align 8
  %call186 = call %struct.rtx_def* @gen_movtf(%struct.rtx_def* %115, %struct.rtx_def* %116)
  store %struct.rtx_def* %call186, %struct.rtx_def** %push_rtx, align 8
  br label %if.end.189

if.else.187:                                      ; preds = %if.then.174
  %117 = load %struct.rtx_def*, %struct.rtx_def** %top_stack_reg, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %top_stack_reg, align 8
  %call188 = call %struct.rtx_def* @gen_movxf(%struct.rtx_def* %117, %struct.rtx_def* %118)
  store %struct.rtx_def* %call188, %struct.rtx_def** %push_rtx, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.187, %if.then.185
  %119 = load %struct.rtx_def*, %struct.rtx_def** %push_rtx, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call190 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %119, %struct.rtx_def* %120)
  store %struct.rtx_def* %call190, %struct.rtx_def** %push_insn, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %top_stack_reg, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 6
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %call194 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 1, %struct.rtx_def* %121, %struct.rtx_def* %123)
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 6
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  store %struct.rtx_def* %call194, %struct.rtx_def** %rtx197, align 8
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.189, %land.lhs.true.170, %lor.lhs.false.164
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %if.then.145
  %125 = load %struct.rtx_def**, %struct.rtx_def*** %psrc, align 8
  call void @replace_reg(%struct.rtx_def** %125, i32 8)
  br label %if.end.246

if.else.200:                                      ; preds = %land.lhs.true.133, %land.lhs.true.127, %if.else
  %126 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load201 = load i32, i32* %127, align 8
  %bf.clear202 = and i32 %bf.load201, 65535
  %cmp203 = icmp eq i32 %bf.clear202, 61
  br i1 %cmp203, label %land.lhs.true.205, label %if.else.244

land.lhs.true.205:                                ; preds = %if.else.200
  %128 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtuint208 = bitcast %union.rtunion_def* %arrayidx207 to i32*
  %129 = load i32, i32* %rtuint208, align 4
  %cmp209 = icmp uge i32 %129, 8
  br i1 %cmp209, label %land.lhs.true.211, label %if.else.244

land.lhs.true.211:                                ; preds = %land.lhs.true.205
  %130 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtuint214 = bitcast %union.rtunion_def* %arrayidx213 to i32*
  %131 = load i32, i32* %rtuint214, align 4
  %cmp215 = icmp ule i32 %131, 15
  br i1 %cmp215, label %if.then.217, label %if.else.244

if.then.217:                                      ; preds = %land.lhs.true.211
  %132 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call218 = call i32 @get_hard_regnum(%struct.stack_def* %132, %struct.rtx_def* %133)
  %cmp219 = icmp sge i32 %call218, 8
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.then.217
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1190, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end.222:                                       ; preds = %if.then.217
  %134 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top223 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %134, i32 0, i32 0
  %135 = load i32, i32* %top223, align 4
  %cmp224 = icmp sge i32 %135, 8
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.222
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end.227:                                       ; preds = %if.end.222
  %136 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtuint230 = bitcast %union.rtunion_def* %arrayidx229 to i32*
  %137 = load i32, i32* %rtuint230, align 4
  %conv231 = trunc i32 %137 to i8
  %138 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top232 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %138, i32 0, i32 0
  %139 = load i32, i32* %top232, align 4
  %inc233 = add nsw i32 %139, 1
  store i32 %inc233, i32* %top232, align 4
  %idxprom234 = sext i32 %inc233 to i64
  %140 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg235 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %140, i32 0, i32 2
  %arrayidx236 = getelementptr inbounds [8 x i8], [8 x i8]* %reg235, i32 0, i64 %idxprom234
  store i8 %conv231, i8* %arrayidx236, align 1
  %141 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld237, i32 0, i64 0
  %rtuint239 = bitcast %union.rtunion_def* %arrayidx238 to i32*
  %142 = load i32, i32* %rtuint239, align 4
  %sh_prom240 = zext i32 %142 to i64
  %shl241 = shl i64 1, %sh_prom240
  %143 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set242 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %143, i32 0, i32 1
  %144 = load i64, i64* %reg_set242, align 8
  %or243 = or i64 %144, %shl241
  store i64 %or243, i64* %reg_set242, align 8
  %145 = load %struct.rtx_def**, %struct.rtx_def*** %pdest, align 8
  call void @replace_reg(%struct.rtx_def** %145, i32 8)
  br label %if.end.245

if.else.244:                                      ; preds = %land.lhs.true.211, %land.lhs.true.205, %if.else.200
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 1200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.move_for_stack_reg, i32 0, i32 0)) #5
  unreachable

if.end.245:                                       ; preds = %if.end.227
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %if.end.199
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.61, %if.end.64, %if.end.99, %if.end.246, %if.end.106
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compare_for_stack_reg(%struct.rtx_def* %insn, %struct.stack_def* %regstack, %struct.rtx_def* %pat_src) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %regstack.addr = alloca %struct.stack_def*, align 8
  %pat_src.addr = alloca %struct.rtx_def*, align 8
  %src1 = alloca %struct.rtx_def**, align 8
  %src2 = alloca %struct.rtx_def**, align 8
  %src1_note = alloca %struct.rtx_def*, align 8
  %src2_note = alloca %struct.rtx_def*, align 8
  %flags_user = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store %struct.rtx_def* %pat_src, %struct.rtx_def** %pat_src.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %call = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx)
  store %struct.rtx_def** %call, %struct.rtx_def*** %src1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %call4 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx3)
  store %struct.rtx_def** %call4, %struct.rtx_def*** %src2, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call5 = call %struct.rtx_def* @next_flags_user(%struct.rtx_def* %2)
  store %struct.rtx_def* %call5, %struct.rtx_def** %flags_user, align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %3, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %land.lhs.true.30

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %6, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %8 = load i32, i32* %rtuint, align 4
  %cmp8 = icmp uge i32 %8, 8
  br i1 %cmp8, label %land.lhs.true.9, label %land.lhs.true.30

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %11 = load i32, i32* %rtuint12, align 4
  %cmp13 = icmp ule i32 %11, 15
  br i1 %cmp13, label %lor.lhs.false, label %land.lhs.true.30

lor.lhs.false:                                    ; preds = %land.lhs.true.9
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %12, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load14 = load i32, i32* %14, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %17 = load i32, i32* %rtuint20, align 4
  %cmp21 = icmp uge i32 %17, 8
  br i1 %cmp21, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.17
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtuint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %20 = load i32, i32* %rtuint25, align 4
  %cmp26 = icmp ule i32 %20, 15
  br i1 %cmp26, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.22
  %21 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %call28 = call i32 @get_hard_regnum(%struct.stack_def* %21, %struct.rtx_def* %23)
  %cmp29 = icmp eq i32 %call28, 8
  br i1 %cmp29, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %land.lhs.true.27, %land.lhs.true.9, %land.lhs.true, %entry
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call31 = call i32 @swap_rtx_condition(%struct.rtx_def* %24)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.30
  %25 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %temp, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  store %struct.rtx_def* %28, %struct.rtx_def** %rtx40, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  store %struct.rtx_def* %30, %struct.rtx_def** %rtx43, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %call47 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx46)
  store %struct.rtx_def** %call47, %struct.rtx_def*** %src1, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat_src.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 1
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %call51 = call %struct.rtx_def** @get_true_reg(%struct.rtx_def** %rtx50)
  store %struct.rtx_def** %call51, %struct.rtx_def*** %src2, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx53 to i32*
  store i32 -1, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.30, %land.lhs.true.27, %land.lhs.true.22, %land.lhs.true.17, %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %36 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %36, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtuint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %38 = load i32, i32* %rtuint56, align 4
  %call57 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %35, i32 1, i32 %38)
  store %struct.rtx_def* %call57, %struct.rtx_def** %src1_note, align 8
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load58 = load i32, i32* %41, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 61
  br i1 %cmp60, label %land.lhs.true.61, label %if.else

land.lhs.true.61:                                 ; preds = %if.end
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %44 = load i32, i32* %rtuint64, align 4
  %cmp65 = icmp uge i32 %44, 8
  br i1 %cmp65, label %land.lhs.true.66, label %if.else

land.lhs.true.66:                                 ; preds = %land.lhs.true.61
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %45, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtuint69 = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %47 = load i32, i32* %rtuint69, align 4
  %cmp70 = icmp ule i32 %47, 15
  br i1 %cmp70, label %if.then.71, label %if.else

if.then.71:                                       ; preds = %land.lhs.true.66
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %49 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtuint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %51 = load i32, i32* %rtuint74, align 4
  %call75 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %48, i32 1, i32 %51)
  store %struct.rtx_def* %call75, %struct.rtx_def** %src2_note, align 8
  br label %if.end.76

if.else:                                          ; preds = %land.lhs.true.66, %land.lhs.true.61, %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %src2_note, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else, %if.then.71
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %53 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %54, align 8
  call void @emit_swap_insn(%struct.rtx_def* %52, %struct.stack_def* %53, %struct.rtx_def* %55)
  %56 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  call void @replace_reg(%struct.rtx_def** %56, i32 8)
  %57 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %57, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load77 = load i32, i32* %59, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 61
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.92

land.lhs.true.80:                                 ; preds = %if.end.76
  %60 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %60, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint83 = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %62 = load i32, i32* %rtuint83, align 4
  %cmp84 = icmp uge i32 %62, 8
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.92

land.lhs.true.85:                                 ; preds = %land.lhs.true.80
  %63 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %63, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %65 = load i32, i32* %rtuint88, align 4
  %cmp89 = icmp ule i32 %65, 15
  br i1 %cmp89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %land.lhs.true.85
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %67 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %68, align 8
  %call91 = call i32 @get_hard_regnum(%struct.stack_def* %67, %struct.rtx_def* %69)
  call void @replace_reg(%struct.rtx_def** %66, i32 %call91)
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %land.lhs.true.85, %land.lhs.true.80, %if.end.76
  %70 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool93 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool93, label %if.then.94, label %if.end.104

if.then.94:                                       ; preds = %if.end.92
  %71 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtuint100 = bitcast %union.rtunion_def* %arrayidx99 to i32*
  %74 = load i32, i32* %rtuint100, align 4
  call void @pop_stack(%struct.stack_def* %71, i32 %74)
  %75 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx103, i32 8)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.94, %if.end.92
  %76 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %tobool105 = icmp ne %struct.rtx_def* %76, null
  br i1 %tobool105, label %land.lhs.true.106, label %if.end.172

land.lhs.true.106:                                ; preds = %if.end.104
  %77 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %77, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load107 = load i32, i32* %79, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 61
  br i1 %cmp109, label %land.lhs.true.110, label %if.then.142

land.lhs.true.110:                                ; preds = %land.lhs.true.106
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %80, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %82 = load i32, i32* %rtuint113, align 4
  %cmp114 = icmp uge i32 %82, 8
  br i1 %cmp114, label %land.lhs.true.115, label %if.then.142

land.lhs.true.115:                                ; preds = %land.lhs.true.110
  %83 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %83, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtuint118 = bitcast %union.rtunion_def* %arrayidx117 to i32*
  %85 = load i32, i32* %rtuint118, align 4
  %cmp119 = icmp ule i32 %85, 15
  br i1 %cmp119, label %land.lhs.true.120, label %if.then.142

land.lhs.true.120:                                ; preds = %land.lhs.true.115
  %86 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %86, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load121 = load i32, i32* %88, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %cmp123 = icmp eq i32 %bf.clear122, 61
  br i1 %cmp123, label %land.lhs.true.124, label %if.then.142

land.lhs.true.124:                                ; preds = %land.lhs.true.120
  %89 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %89, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtuint127 = bitcast %union.rtunion_def* %arrayidx126 to i32*
  %91 = load i32, i32* %rtuint127, align 4
  %cmp128 = icmp uge i32 %91, 8
  br i1 %cmp128, label %land.lhs.true.129, label %if.then.142

land.lhs.true.129:                                ; preds = %land.lhs.true.124
  %92 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %92, align 8
  %fld130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld130, i32 0, i64 0
  %rtuint132 = bitcast %union.rtunion_def* %arrayidx131 to i32*
  %94 = load i32, i32* %rtuint132, align 4
  %cmp133 = icmp ule i32 %94, 15
  br i1 %cmp133, label %land.lhs.true.134, label %if.then.142

land.lhs.true.134:                                ; preds = %land.lhs.true.129
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %src1, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %95, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 0
  %rtuint137 = bitcast %union.rtunion_def* %arrayidx136 to i32*
  %97 = load i32, i32* %rtuint137, align 4
  %98 = load %struct.rtx_def**, %struct.rtx_def*** %src2, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %98, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 0
  %rtuint140 = bitcast %union.rtunion_def* %arrayidx139 to i32*
  %100 = load i32, i32* %rtuint140, align 4
  %cmp141 = icmp eq i32 %97, %100
  br i1 %cmp141, label %if.end.172, label %if.then.142

if.then.142:                                      ; preds = %land.lhs.true.134, %land.lhs.true.129, %land.lhs.true.124, %land.lhs.true.120, %land.lhs.true.115, %land.lhs.true.110, %land.lhs.true.106
  %101 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %call146 = call i32 @get_hard_regnum(%struct.stack_def* %101, %struct.rtx_def* %103)
  %cmp147 = icmp eq i32 %call146, 8
  br i1 %cmp147, label %land.lhs.true.148, label %if.else.160

land.lhs.true.148:                                ; preds = %if.then.142
  %104 = load %struct.rtx_def*, %struct.rtx_def** %src1_note, align 8
  %tobool149 = icmp ne %struct.rtx_def* %104, null
  br i1 %tobool149, label %if.then.150, label %if.else.160

if.then.150:                                      ; preds = %land.lhs.true.148
  %105 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtuint156 = bitcast %union.rtunion_def* %arrayidx155 to i32*
  %108 = load i32, i32* %rtuint156, align 4
  call void @pop_stack(%struct.stack_def* %105, i32 %108)
  %109 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 0
  %rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**
  call void @replace_reg(%struct.rtx_def** %rtx159, i32 9)
  br label %if.end.171

if.else.160:                                      ; preds = %land.lhs.true.148, %if.then.142
  %110 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 0
  %rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx163, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtuint166 = bitcast %union.rtunion_def* %arrayidx165 to i32*
  %113 = load i32, i32* %rtuint166, align 4
  call void @remove_regno_note(%struct.rtx_def* %110, i32 1, i32 %113)
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %115 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %src2_note, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %116, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  %call170 = call %struct.rtx_def* @emit_pop_insn(%struct.rtx_def* %114, %struct.stack_def* %115, %struct.rtx_def* %117, i32 0)
  br label %if.end.171

if.end.171:                                       ; preds = %if.else.160, %if.then.150
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %land.lhs.true.134, %if.end.104
  ret void
}

declare i32 @reversed_comparison_code(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @remove_regno_note(%struct.rtx_def* %insn, i32 %note, i32 %regno) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %note_link = alloca %struct.rtx_def**, align 8
  %this = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %note, i32* %note.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def** %rtx, %struct.rtx_def*** %note_link, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %note_link, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %this, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %6 = load i32, i32* %note.addr, align 4
  %cmp = icmp eq i32 %bf.clear, %6
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %land.lhs.true.7, label %if.else

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %12 = load i32, i32* %rtuint, align 4
  %13 = load i32, i32* %regno.addr, align 4
  %cmp13 = icmp eq i32 %12, %13
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %note_link, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %16, align 8
  ret void

if.else:                                          ; preds = %land.lhs.true.7, %land.lhs.true, %for.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  store %struct.rtx_def** %rtx19, %struct.rtx_def*** %note_link, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %this, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %this, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 885, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.remove_regno_note, i32 0, i32 0)) #5
  unreachable
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_movtf(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_movxf(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @next_flags_user(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp ne %struct.rtx_def* %0, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %7 to i32
  %cmp2 = icmp eq i32 %conv, 105
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** @ix86_flags_rtx, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %8, %struct.rtx_def* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %while.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load7 = load i32, i32* %13, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 34
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %14
}

; Function Attrs: nounwind uwtable
define internal i32 @swap_rtx_condition(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %fail = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.19

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %cmp13 = icmp eq i32 %9, 17
  br i1 %cmp13, label %if.then, label %if.end.19

if.then:                                          ; preds = %land.lhs.true.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @next_flags_user(%struct.rtx_def* %10)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp14 = icmp eq %struct.rtx_def* %11, null
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %pat, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %land.lhs.true.7, %land.lhs.true, %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 47
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.96

land.lhs.true.23:                                 ; preds = %if.end.19
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load27 = load i32, i32* %18, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 42
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.96

land.lhs.true.30:                                 ; preds = %land.lhs.true.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %21 = load i32, i32* %rtint, align 4
  %cmp36 = icmp eq i32 %21, 9
  br i1 %cmp36, label %if.then.37, label %if.end.96

if.then.37:                                       ; preds = %land.lhs.true.30
  %22 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %dest, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.59, %if.then.37
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** @current_block, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp41 = icmp ne %struct.rtx_def* %24, %26
  br i1 %cmp41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 2
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %insn.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load45 = load i32, i32* %30, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %idxprom = sext i32 %bf.clear46 to i64
  %arrayidx47 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx47, align 1
  %conv = sext i8 %31 to i32
  %cmp48 = icmp eq i32 %conv, 105
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.53

land.lhs.true.50:                                 ; preds = %while.body
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call51 = call i32 @reg_mentioned_p(%struct.rtx_def* %32, %struct.rtx_def* %33)
  %tobool = icmp ne i32 %call51, 0
  br i1 %tobool, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.50
  br label %while.end

if.end.53:                                        ; preds = %land.lhs.true.50, %while.body
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load54 = load i32, i32* %35, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 34
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.53
  store i32 0, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.53
  br label %while.cond

while.end:                                        ; preds = %if.then.52, %while.cond
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 3
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %pat, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load63 = load i32, i32* %39, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp ne i32 %bf.clear64, 47
  br i1 %cmp65, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %40 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load70 = load i32, i32* %42, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp ne i32 %bf.clear71, 42
  br i1 %cmp72, label %if.then.86, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false
  %43 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 1
  %rtint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %45 = load i32, i32* %rtint80, align 4
  %cmp81 = icmp ne i32 %45, 10
  br i1 %cmp81, label %if.then.86, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.74
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %call84 = call i32 @dead_or_set_p(%struct.rtx_def* %46, %struct.rtx_def* %47)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %lor.lhs.false.83, %lor.lhs.false.74, %lor.lhs.false, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %lor.lhs.false.83
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call88 = call %struct.rtx_def* @next_flags_user(%struct.rtx_def* %48)
  store %struct.rtx_def* %call88, %struct.rtx_def** %insn.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp89 = icmp eq %struct.rtx_def* %49, null
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.87
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.end.87
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 3
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %pat, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.92, %land.lhs.true.30, %land.lhs.true.23, %if.end.19
  %52 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call97 = call i32 @swap_rtx_condition_1(%struct.rtx_def* %52)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.131

if.then.99:                                       ; preds = %if.end.96
  store i32 0, i32* %fail, align 4
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 4
  %rtint102 = bitcast %union.rtunion_def* %arrayidx101 to i32*
  store i32 -1, i32* %rtint102, align 4
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 4
  %rtint105 = bitcast %union.rtunion_def* %arrayidx104 to i32*
  %55 = load i32, i32* %rtint105, align 4
  %cmp106 = icmp sge i32 %55, 0
  br i1 %cmp106, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.99
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 4
  %rtint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %57 = load i32, i32* %rtint110, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.99
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call111 = call i32 @recog_memoized_1(%struct.rtx_def* %58)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ %call111, %cond.false ]
  %cmp112 = icmp eq i32 %cond, -1
  br i1 %cmp112, label %if.then.114, label %if.else

if.then.114:                                      ; preds = %cond.end
  store i32 1, i32* %fail, align 4
  br label %if.end.126

if.else:                                          ; preds = %cond.end
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** @ix86_flags_rtx, align 8
  %call115 = call i32 @dead_or_set_p(%struct.rtx_def* %59, %struct.rtx_def* %60)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.end.125, label %if.then.117

if.then.117:                                      ; preds = %if.else
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call118 = call %struct.rtx_def* @next_flags_user(%struct.rtx_def* %61)
  store %struct.rtx_def* %call118, %struct.rtx_def** %insn.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool119 = icmp ne %struct.rtx_def* %62, null
  br i1 %tobool119, label %lor.lhs.false.120, label %if.then.123

lor.lhs.false.120:                                ; preds = %if.then.117
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call121 = call i32 @swap_rtx_condition(%struct.rtx_def* %63)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.124, label %if.then.123

if.then.123:                                      ; preds = %lor.lhs.false.120, %if.then.117
  store i32 1, i32* %fail, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.123, %lor.lhs.false.120
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %if.else
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %if.then.114
  %64 = load i32, i32* %fail, align 4
  %tobool127 = icmp ne i32 %64, 0
  br i1 %tobool127, label %if.then.128, label %if.end.130

if.then.128:                                      ; preds = %if.end.126
  %65 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call129 = call i32 @swap_rtx_condition_1(%struct.rtx_def* %65)
  store i32 0, i32* %retval
  br label %return

if.end.130:                                       ; preds = %if.end.126
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.96
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.131, %if.end.130, %if.then.128, %if.then.91, %if.then.86, %if.then.58, %if.then.15
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal void @pop_stack(%struct.stack_def* %regstack, i32 %regno) #0 {
entry:
  %regstack.addr = alloca %struct.stack_def*, align 8
  %regno.addr = alloca i32, align 4
  %top = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.stack_def* %regstack, %struct.stack_def** %regstack.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top1 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %0, i32 0, i32 0
  %1 = load i32, i32* %top1, align 4
  store i32 %1, i32* %top, align 4
  %2 = load i32, i32* %regno.addr, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %3 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg_set = getelementptr inbounds %struct.stack_def, %struct.stack_def* %3, i32 0, i32 1
  %4 = load i64, i64* %reg_set, align 8
  %and = and i64 %4, %neg
  store i64 %and, i64* %reg_set, align 8
  %5 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top2 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %5, i32 0, i32 0
  %6 = load i32, i32* %top2, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %top2, align 4
  %7 = load i32, i32* %top, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg = getelementptr inbounds %struct.stack_def, %struct.stack_def* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %reg, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %10 = load i32, i32* %regno.addr, align 4
  %cmp = icmp ne i32 %conv, %10
  br i1 %cmp, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %11 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %top4 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %11, i32 0, i32 0
  %12 = load i32, i32* %top4, align 4
  store i32 %12, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.24, %if.then
  %13 = load i32, i32* %i, align 4
  %cmp5 = icmp sge i32 %13, 0
  br i1 %cmp5, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg8 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %15, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [8 x i8], [8 x i8]* %reg8, i32 0, i64 %idxprom7
  %16 = load i8, i8* %arrayidx9, align 1
  %conv10 = zext i8 %16 to i32
  %17 = load i32, i32* %regno.addr, align 4
  %cmp11 = icmp eq i32 %conv10, %17
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  %18 = load i32, i32* %i, align 4
  store i32 %18, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then.13
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %top, align 4
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %j, align 4
  %add = add nsw i32 %21, 1
  %idxprom18 = sext i32 %add to i64
  %22 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg19 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %22, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [8 x i8], [8 x i8]* %reg19, i32 0, i64 %idxprom18
  %23 = load i8, i8* %arrayidx20, align 1
  %24 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %24 to i64
  %25 = load %struct.stack_def*, %struct.stack_def** %regstack.addr, align 8
  %reg22 = getelementptr inbounds %struct.stack_def, %struct.stack_def* %25, i32 0, i32 2
  %arrayidx23 = getelementptr inbounds [8 x i8], [8 x i8]* %reg22, i32 0, i64 %idxprom21
  store i8 %23, i8* %arrayidx23, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.14

for.end:                                          ; preds = %for.cond.14
  br label %for.end.26

if.end:                                           ; preds = %for.body
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %27 = load i32, i32* %i, align 4
  %dec25 = add nsw i32 %27, -1
  store i32 %dec25, i32* %i, align 4
  br label %for.cond

for.end.26:                                       ; preds = %for.end, %for.cond
  br label %if.end.27

if.end.27:                                        ; preds = %for.end.26, %entry
  ret void
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @dead_or_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @swap_rtx_condition_1(%struct.rtx_def* %pat) #0 {
entry:
  %pat.addr = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %r = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store i32 0, i32* %r, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %call = call i32 @swap_condition(i32 %bf.clear3)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.value = and i32 %call, 65535
  %bf.clear5 = and i32 %bf.load4, -65536
  %bf.set = or i32 %bf.clear5, %bf.value
  store i32 %bf.set, i32* %6, align 8
  store i32 1, i32* %r, align 4
  br label %if.end.53

if.else:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %idxprom8 = sext i32 %bf.clear7 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom8
  %9 = load i8*, i8** %arrayidx9, align 8
  store i8* %9, i8** %fmt, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %idxprom12 = sext i32 %bf.clear11 to i64
  %arrayidx13 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom12
  %12 = load i8, i8* %arrayidx13, align 1
  %conv14 = zext i8 %12 to i32
  %sub = sub nsw i32 %conv14, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.50, %if.else
  %13 = load i32, i32* %i, align 4
  %cmp15 = icmp sge i32 %13, 0
  br i1 %cmp15, label %for.body, label %for.end.52

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load i8*, i8** %fmt, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %idxprom17
  %16 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %16 to i32
  %cmp20 = icmp eq i32 %conv19, 69
  br i1 %cmp20, label %if.then.22, label %if.else.37

if.then.22:                                       ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom23
  %rtvec = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem, align 4
  %sub25 = sub nsw i32 %20, 1
  store i32 %sub25, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.22
  %21 = load i32, i32* %j, align 4
  %cmp27 = icmp sge i32 %21, 0
  br i1 %cmp27, label %for.body.29, label %for.end

for.body.29:                                      ; preds = %for.cond.26
  %22 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 %idxprom31
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom30
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx35, align 8
  %call36 = call i32 @swap_rtx_condition_1(%struct.rtx_def* %26)
  %27 = load i32, i32* %r, align 4
  %or = or i32 %27, %call36
  store i32 %or, i32* %r, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.29
  %28 = load i32, i32* %j, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.49

if.else.37:                                       ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %29 to i64
  %30 = load i8*, i8** %fmt, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %30, i64 %idxprom38
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %31 to i32
  %cmp41 = icmp eq i32 %conv40, 101
  br i1 %cmp41, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %if.else.37
  %32 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %32 to i64
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 %idxprom44
  %rtx = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call47 = call i32 @swap_rtx_condition_1(%struct.rtx_def* %34)
  %35 = load i32, i32* %r, align 4
  %or48 = or i32 %35, %call47
  store i32 %or48, i32* %r, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.43, %if.else.37
  br label %if.end.49

if.end.49:                                        ; preds = %if.end, %for.end
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %36 = load i32, i32* %i, align 4
  %dec51 = add nsw i32 %36, -1
  store i32 %dec51, i32* %i, align 4
  br label %for.cond

for.end.52:                                       ; preds = %for.cond
  br label %if.end.53

if.end.53:                                        ; preds = %for.end.52, %if.then
  %37 = load i32, i32* %r, align 4
  ret i32 %37
}

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

declare i32 @swap_condition(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
