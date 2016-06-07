; ModuleID = 'caller-save.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
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
%union.tree_node = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.insn_chain = type { %struct.insn_chain*, %struct.insn_chain*, %struct.insn_chain*, i32, %struct.rtx_def*, %struct.bitmap_head_def, %struct.bitmap_head_def, %struct.reload*, i32, i64, %struct.needs, i8 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reload = type opaque
%struct.needs = type { [2 x [25 x i16]], [25 x i16] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }

@call_used_regs = external global [53 x i8], align 16
@call_fixed_regs = external global [53 x i8], align 16
@target_flags = external global i32, align 4
@regno_save_mode = internal global [53 x [5 x i32]] zeroinitializer, align 16
@call_fixed_reg_set = external global i64, align 8
@reg_class_contents = external global [25 x i64], align 16
@.str = private unnamed_addr constant [14 x i8] c"caller-save.c\00", align 1
@__FUNCTION__.init_caller_save = private unnamed_addr constant [17 x i8] c"init_caller_save\00", align 1
@reg_save_code = internal global [53 x [59 x i32]] zeroinitializer, align 16
@reg_restore_code = internal global [53 x [59 x i32]] zeroinitializer, align 16
@regno_save_mem = internal global [53 x [5 x %struct.rtx_def*]] zeroinitializer, align 16
@max_regno = external global i32, align 4
@reg_renumber = external global i16*, align 8
@reg_n_info = external global %struct.varray_head_tag*, align 8
@cfun = external global %struct.function*, align 8
@mode_class = external constant [59 x i32], align 16
@mode_size = external constant [59 x i8], align 16
@hard_regs_saved = internal global i64 0, align 8
@n_regs_saved = internal global i32 0, align 4
@reload_insn_chain = external global %struct.insn_chain*, align 8
@__FUNCTION__.save_call_clobbered_regs = private unnamed_addr constant [25 x i8] c"save_call_clobbered_regs\00", align 1
@rtx_class = external constant [153 x i8], align 16
@referenced_regs = internal global i64 0, align 8
@x86_partial_reg_stall = external constant i32, align 4
@ix86_cpu = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@this_insn_sets = internal global i64 0, align 8
@call_used_reg_set = external global i64, align 8
@reg_equiv_mem = external global %struct.rtx_def**, align 8
@reg_equiv_address = external global %struct.rtx_def**, align 8
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.insert_restore = private unnamed_addr constant [15 x i8] c"insert_restore\00", align 1
@__FUNCTION__.insert_one_insn = private unnamed_addr constant [16 x i8] c"insert_one_insn\00", align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.insert_save = private unnamed_addr constant [12 x i8] c"insert_save\00", align 1

; Function Attrs: nounwind uwtable
define void @init_caller_save() #0 {
entry:
  %addr_reg = alloca %struct.rtx_def*, align 8
  %offset = alloca i32, align 4
  %address = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %mode = alloca i32, align 4
  %mem = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %savepat = alloca %struct.rtx_def*, align 8
  %restpat = alloca %struct.rtx_def*, align 8
  %saveinsn = alloca %struct.rtx_def*, align 8
  %restinsn = alloca %struct.rtx_def*, align 8
  %ok = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %tobool3 = icmp ne i8 %4, 0
  br i1 %tobool3, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool5 = icmp ne i32 %and, 0
  %cond = select i1 %tobool5, i32 8, i32 4
  %div = sdiv i32 16, %cond
  %cmp6 = icmp sle i32 %5, %div
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %i, align 4
  %cmp9 = icmp eq i32 %7, 17
  br i1 %cmp9, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %8 = load i32, i32* %i, align 4
  %cmp11 = icmp eq i32 %8, 18
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %for.body.8
  br label %cond.end.18

cond.false:                                       ; preds = %lor.lhs.false
  %9 = load i32, i32* %j, align 4
  %cmp13 = icmp ne i32 %9, 1
  br i1 %cmp13, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false
  br label %cond.end

cond.false.16:                                    ; preds = %cond.false
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %j, align 4
  %call = call i32 @choose_hard_reg_mode(i32 %10, i32 %11)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.16, %cond.true.15
  %cond17 = phi i32 [ 0, %cond.true.15 ], [ %call, %cond.false.16 ]
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.end, %cond.true
  %cond19 = phi i32 [ 0, %cond.true ], [ %cond17, %cond.end ]
  %12 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %12 to i64
  %13 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx22, i32 0, i64 %idxprom20
  store i32 %cond19, i32* %arrayidx23, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom24 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %15 to i64
  %arrayidx26 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx26, i32 0, i64 %idxprom24
  %16 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %land.lhs.true.30, label %if.end

land.lhs.true.30:                                 ; preds = %cond.end.18
  %17 = load i32, i32* %j, align 4
  %cmp31 = icmp eq i32 %17, 1
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %land.lhs.true.30
  %18 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %18 to i64
  %arrayidx35 = getelementptr inbounds [53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i64 %idxprom34
  store i8 1, i8* %arrayidx35, align 1
  %19 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  %20 = load i64, i64* @call_fixed_reg_set, align 8
  %or = or i64 %20, %shl
  store i64 %or, i64* @call_fixed_reg_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.33, %land.lhs.true.30, %cond.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %j, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %for.body
  %22 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %22 to i64
  %arrayidx37 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom36
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx37, i32 0, i64 1
  store i32 0, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %for.end
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %23 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %23, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.53, %for.end.42
  %24 = load i32, i32* %i, align 4
  %cmp44 = icmp slt i32 %24, 53
  br i1 %cmp44, label %for.body.46, label %for.end.55

for.body.46:                                      ; preds = %for.cond.43
  %25 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 12), align 8
  %26 = load i32, i32* %i, align 4
  %sh_prom47 = zext i32 %26 to i64
  %shl48 = shl i64 1, %sh_prom47
  %and49 = and i64 %25, %shl48
  %tobool50 = icmp ne i64 %and49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.46
  br label %for.end.55

if.end.52:                                        ; preds = %for.body.46
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %27 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %27, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.43

for.end.55:                                       ; preds = %if.then.51, %for.cond.43
  %28 = load i32, i32* %i, align 4
  %cmp56 = icmp eq i32 %28, 53
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.end.55
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.init_caller_save, i32 0, i32 0)) #3
  unreachable

if.end.59:                                        ; preds = %for.end.55
  %29 = load i32, i32* @target_flags, align 4
  %and60 = and i32 %29, 33554432
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 5, i32 4
  %30 = load i32, i32* %i, align 4
  %call63 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond62, i32 %30)
  store %struct.rtx_def* %call63, %struct.rtx_def** %addr_reg, align 8
  store i32 65536, i32* %offset, align 4
  br label %for.cond.64

for.cond.64:                                      ; preds = %for.inc.97, %if.end.59
  %31 = load i32, i32* %offset, align 4
  %tobool65 = icmp ne i32 %31, 0
  br i1 %tobool65, label %for.body.66, label %for.end.98

for.body.66:                                      ; preds = %for.cond.64
  %32 = load i32, i32* @target_flags, align 4
  %and67 = and i32 %32, 33554432
  %tobool68 = icmp ne i32 %and67, 0
  %cond69 = select i1 %tobool68, i32 5, i32 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %addr_reg, align 8
  %34 = load i32, i32* %offset, align 4
  %conv70 = sext i32 %34 to i64
  %call71 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv70)
  %call72 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %cond69, %struct.rtx_def* %33, %struct.rtx_def* %call71)
  store %struct.rtx_def* %call72, %struct.rtx_def** %address, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.90, %for.body.66
  %35 = load i32, i32* %i, align 4
  %cmp74 = icmp slt i32 %35, 53
  br i1 %cmp74, label %for.body.76, label %for.end.92

for.body.76:                                      ; preds = %for.cond.73
  %36 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %36 to i64
  %arrayidx78 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom77
  %arrayidx79 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx78, i32 0, i64 1
  %37 = load i32, i32* %arrayidx79, align 4
  %cmp80 = icmp ne i32 %37, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.end.89

land.lhs.true.82:                                 ; preds = %for.body.76
  %38 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %38 to i64
  %arrayidx84 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx84, i32 0, i64 1
  %39 = load i32, i32* %arrayidx85, align 4
  %40 = load %struct.rtx_def*, %struct.rtx_def** %address, align 8
  %call86 = call i32 @strict_memory_address_p(i32 %39, %struct.rtx_def* %40)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.82
  br label %for.end.92

if.end.89:                                        ; preds = %land.lhs.true.82, %for.body.76
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %41 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %41, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond.73

for.end.92:                                       ; preds = %if.then.88, %for.cond.73
  %42 = load i32, i32* %i, align 4
  %cmp93 = icmp eq i32 %42, 53
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %for.end.92
  br label %for.end.98

if.end.96:                                        ; preds = %for.end.92
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %43 = load i32, i32* %offset, align 4
  %shr = ashr i32 %43, 1
  store i32 %shr, i32* %offset, align 4
  br label %for.cond.64

for.end.98:                                       ; preds = %if.then.95, %for.cond.64
  %44 = load i32, i32* %offset, align 4
  %cmp99 = icmp eq i32 %44, 0
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %for.end.98
  %45 = load %struct.rtx_def*, %struct.rtx_def** %addr_reg, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %address, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.101, %for.end.98
  call void @start_sequence()
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.194, %if.end.102
  %46 = load i32, i32* %i, align 4
  %cmp104 = icmp slt i32 %46, 53
  br i1 %cmp104, label %for.body.106, label %for.end.196

for.body.106:                                     ; preds = %for.cond.103
  store i32 0, i32* %mode, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.191, %for.body.106
  %47 = load i32, i32* %mode, align 4
  %cmp108 = icmp ult i32 %47, 59
  br i1 %cmp108, label %for.body.110, label %for.end.193

for.body.110:                                     ; preds = %for.cond.107
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %mode, align 4
  %call111 = call i32 @ix86_hard_regno_mode_ok(i32 %48, i32 %49)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.else.181

if.then.113:                                      ; preds = %for.body.110
  %50 = load i32, i32* %mode, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %address, align 8
  %call114 = call %struct.rtx_def* @gen_rtx_MEM(i32 %50, %struct.rtx_def* %51)
  store %struct.rtx_def* %call114, %struct.rtx_def** %mem, align 8
  %52 = load i32, i32* %mode, align 4
  %53 = load i32, i32* %i, align 4
  %call115 = call %struct.rtx_def* @gen_rtx_REG(i32 %52, i32 %53)
  store %struct.rtx_def* %call115, %struct.rtx_def** %reg, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call116 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %54, %struct.rtx_def* %55)
  store %struct.rtx_def* %call116, %struct.rtx_def** %savepat, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call117 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %56, %struct.rtx_def* %57)
  store %struct.rtx_def* %call117, %struct.rtx_def** %restpat, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %savepat, align 8
  %call118 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %58)
  store %struct.rtx_def* %call118, %struct.rtx_def** %saveinsn, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %restpat, align 8
  %call119 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %59)
  store %struct.rtx_def* %call119, %struct.rtx_def** %restinsn, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %saveinsn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx120 to i32*
  %61 = load i32, i32* %rtint, align 4
  %cmp121 = icmp sge i32 %61, 0
  br i1 %cmp121, label %cond.true.123, label %cond.false.127

cond.true.123:                                    ; preds = %if.then.113
  %62 = load %struct.rtx_def*, %struct.rtx_def** %saveinsn, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 4
  %rtint126 = bitcast %union.rtunion_def* %arrayidx125 to i32*
  %63 = load i32, i32* %rtint126, align 4
  br label %cond.end.129

cond.false.127:                                   ; preds = %if.then.113
  %64 = load %struct.rtx_def*, %struct.rtx_def** %saveinsn, align 8
  %call128 = call i32 @recog_memoized_1(%struct.rtx_def* %64)
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.127, %cond.true.123
  %cond130 = phi i32 [ %63, %cond.true.123 ], [ %call128, %cond.false.127 ]
  %65 = load i32, i32* %mode, align 4
  %idxprom131 = zext i32 %65 to i64
  %66 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %66 to i64
  %arrayidx133 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx133, i32 0, i64 %idxprom131
  store i32 %cond130, i32* %arrayidx134, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %restinsn, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 4
  %rtint137 = bitcast %union.rtunion_def* %arrayidx136 to i32*
  %68 = load i32, i32* %rtint137, align 4
  %cmp138 = icmp sge i32 %68, 0
  br i1 %cmp138, label %cond.true.140, label %cond.false.144

cond.true.140:                                    ; preds = %cond.end.129
  %69 = load %struct.rtx_def*, %struct.rtx_def** %restinsn, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 4
  %rtint143 = bitcast %union.rtunion_def* %arrayidx142 to i32*
  %70 = load i32, i32* %rtint143, align 4
  br label %cond.end.146

cond.false.144:                                   ; preds = %cond.end.129
  %71 = load %struct.rtx_def*, %struct.rtx_def** %restinsn, align 8
  %call145 = call i32 @recog_memoized_1(%struct.rtx_def* %71)
  br label %cond.end.146

cond.end.146:                                     ; preds = %cond.false.144, %cond.true.140
  %cond147 = phi i32 [ %70, %cond.true.140 ], [ %call145, %cond.false.144 ]
  %72 = load i32, i32* %mode, align 4
  %idxprom148 = zext i32 %72 to i64
  %73 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %73 to i64
  %arrayidx150 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_restore_code, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx150, i32 0, i64 %idxprom148
  store i32 %cond147, i32* %arrayidx151, align 4
  %74 = load i32, i32* %mode, align 4
  %idxprom152 = zext i32 %74 to i64
  %75 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %75 to i64
  %arrayidx154 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx154, i32 0, i64 %idxprom152
  %76 = load i32, i32* %arrayidx155, align 4
  %cmp156 = icmp ne i32 %76, -1
  br i1 %cmp156, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end.146
  %77 = load i32, i32* %mode, align 4
  %idxprom158 = zext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom159 = sext i32 %78 to i64
  %arrayidx160 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_restore_code, i32 0, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx160, i32 0, i64 %idxprom158
  %79 = load i32, i32* %arrayidx161, align 4
  %cmp162 = icmp ne i32 %79, -1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end.146
  %80 = phi i1 [ false, %cond.end.146 ], [ %cmp162, %land.rhs ]
  %land.ext = zext i1 %80 to i32
  store i32 %land.ext, i32* %ok, align 4
  %81 = load i32, i32* %ok, align 4
  %tobool164 = icmp ne i32 %81, 0
  br i1 %tobool164, label %if.then.165, label %if.end.169

if.then.165:                                      ; preds = %land.end
  %82 = load %struct.rtx_def*, %struct.rtx_def** %saveinsn, align 8
  call void @extract_insn(%struct.rtx_def* %82)
  %call166 = call i32 @constrain_operands(i32 1)
  store i32 %call166, i32* %ok, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %restinsn, align 8
  call void @extract_insn(%struct.rtx_def* %83)
  %call167 = call i32 @constrain_operands(i32 1)
  %84 = load i32, i32* %ok, align 4
  %and168 = and i32 %84, %call167
  store i32 %and168, i32* %ok, align 4
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.165, %land.end
  %85 = load i32, i32* %ok, align 4
  %tobool170 = icmp ne i32 %85, 0
  br i1 %tobool170, label %if.end.180, label %if.then.171

if.then.171:                                      ; preds = %if.end.169
  %86 = load i32, i32* %mode, align 4
  %idxprom172 = zext i32 %86 to i64
  %87 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %87 to i64
  %arrayidx174 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom173
  %arrayidx175 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx174, i32 0, i64 %idxprom172
  store i32 -1, i32* %arrayidx175, align 4
  %88 = load i32, i32* %mode, align 4
  %idxprom176 = zext i32 %88 to i64
  %89 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %89 to i64
  %arrayidx178 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_restore_code, i32 0, i64 %idxprom177
  %arrayidx179 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx178, i32 0, i64 %idxprom176
  store i32 -1, i32* %arrayidx179, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.171, %if.end.169
  br label %if.end.190

if.else.181:                                      ; preds = %for.body.110
  %90 = load i32, i32* %mode, align 4
  %idxprom182 = zext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %91 to i64
  %arrayidx184 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom183
  %arrayidx185 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx184, i32 0, i64 %idxprom182
  store i32 -1, i32* %arrayidx185, align 4
  %92 = load i32, i32* %mode, align 4
  %idxprom186 = zext i32 %92 to i64
  %93 = load i32, i32* %i, align 4
  %idxprom187 = sext i32 %93 to i64
  %arrayidx188 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_restore_code, i32 0, i64 %idxprom187
  %arrayidx189 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx188, i32 0, i64 %idxprom186
  store i32 -1, i32* %arrayidx189, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.else.181, %if.end.180
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %94 = load i32, i32* %mode, align 4
  %inc192 = add i32 %94, 1
  store i32 %inc192, i32* %mode, align 4
  br label %for.cond.107

for.end.193:                                      ; preds = %for.cond.107
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end.193
  %95 = load i32, i32* %i, align 4
  %inc195 = add nsw i32 %95, 1
  store i32 %inc195, i32* %i, align 4
  br label %for.cond.103

for.end.196:                                      ; preds = %for.cond.103
  store i32 0, i32* %i, align 4
  br label %for.cond.197

for.cond.197:                                     ; preds = %for.inc.237, %for.end.196
  %96 = load i32, i32* %i, align 4
  %cmp198 = icmp slt i32 %96, 53
  br i1 %cmp198, label %for.body.200, label %for.end.239

for.body.200:                                     ; preds = %for.cond.197
  store i32 1, i32* %j, align 4
  br label %for.cond.201

for.cond.201:                                     ; preds = %for.inc.234, %for.body.200
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* @target_flags, align 4
  %and202 = and i32 %98, 33554432
  %tobool203 = icmp ne i32 %and202, 0
  %cond204 = select i1 %tobool203, i32 8, i32 4
  %div205 = sdiv i32 16, %cond204
  %cmp206 = icmp sle i32 %97, %div205
  br i1 %cmp206, label %for.body.208, label %for.end.236

for.body.208:                                     ; preds = %for.cond.201
  %99 = load i32, i32* %j, align 4
  %idxprom209 = sext i32 %99 to i64
  %100 = load i32, i32* %i, align 4
  %idxprom210 = sext i32 %100 to i64
  %arrayidx211 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom210
  %arrayidx212 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx211, i32 0, i64 %idxprom209
  %101 = load i32, i32* %arrayidx212, align 4
  %idxprom213 = zext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %102 to i64
  %arrayidx215 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom214
  %arrayidx216 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx215, i32 0, i64 %idxprom213
  %103 = load i32, i32* %arrayidx216, align 4
  %cmp217 = icmp eq i32 %103, -1
  br i1 %cmp217, label %if.then.219, label %if.end.233

if.then.219:                                      ; preds = %for.body.208
  %104 = load i32, i32* %j, align 4
  %idxprom220 = sext i32 %104 to i64
  %105 = load i32, i32* %i, align 4
  %idxprom221 = sext i32 %105 to i64
  %arrayidx222 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom221
  %arrayidx223 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx222, i32 0, i64 %idxprom220
  store i32 0, i32* %arrayidx223, align 4
  %106 = load i32, i32* %j, align 4
  %cmp224 = icmp eq i32 %106, 1
  br i1 %cmp224, label %if.then.226, label %if.end.232

if.then.226:                                      ; preds = %if.then.219
  %107 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %107 to i64
  %arrayidx228 = getelementptr inbounds [53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i64 %idxprom227
  store i8 1, i8* %arrayidx228, align 1
  %108 = load i32, i32* %i, align 4
  %sh_prom229 = zext i32 %108 to i64
  %shl230 = shl i64 1, %sh_prom229
  %109 = load i64, i64* @call_fixed_reg_set, align 8
  %or231 = or i64 %109, %shl230
  store i64 %or231, i64* @call_fixed_reg_set, align 8
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.226, %if.then.219
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %for.body.208
  br label %for.inc.234

for.inc.234:                                      ; preds = %if.end.233
  %110 = load i32, i32* %j, align 4
  %inc235 = add nsw i32 %110, 1
  store i32 %inc235, i32* %j, align 4
  br label %for.cond.201

for.end.236:                                      ; preds = %for.cond.201
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.end.236
  %111 = load i32, i32* %i, align 4
  %inc238 = add nsw i32 %111, 1
  store i32 %inc238, i32* %i, align 4
  br label %for.cond.197

for.end.239:                                      ; preds = %for.cond.197
  call void @end_sequence()
  ret void
}

declare i32 @choose_hard_reg_mode(i32, i32) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i32 @strict_memory_address_p(i32, %struct.rtx_def*) #1

declare void @start_sequence() #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

declare void @extract_insn(%struct.rtx_def*) #1

declare i32 @constrain_operands(i32) #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define void @init_save_areas() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = sdiv i32 16, %cond
  %cmp2 = icmp sle i32 %1, %div
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx, i32 0, i64 %idxprom
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %5 = load i32, i32* %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %6 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %6, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup_save_areas() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r = alloca i32, align 4
  %hard_regs_used = alloca i64, align 8
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %do_save = alloca i32, align 4
  store i64 0, i64* %hard_regs_used, align 8
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i16*, i16** @reg_renumber, align 8
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %cmp1 = icmp sge i32 %conv, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.105

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom3
  %7 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx4, align 8
  %calls_crossed = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %7, i32 0, i32 8
  %8 = load i32, i32* %calls_crossed, align 4
  %cmp5 = icmp sgt i32 %8, 0
  br i1 %cmp5, label %if.then, label %if.end.105

if.then:                                          ; preds = %land.lhs.true
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %10 = load i16*, i16** @reg_renumber, align 8
  %arrayidx8 = getelementptr inbounds i16, i16* %10, i64 %idxprom7
  %11 = load i16, i16* %arrayidx8, align 2
  %conv9 = sext i16 %11 to i32
  store i32 %conv9, i32* %regno, align 4
  %12 = load i32, i32* %regno, align 4
  %13 = load i32, i32* %regno, align 4
  %cmp10 = icmp uge i32 %13, 8
  br i1 %cmp10, label %land.lhs.true.12, label %lor.lhs.false

land.lhs.true.12:                                 ; preds = %if.then
  %14 = load i32, i32* %regno, align 4
  %cmp13 = icmp ule i32 %14, 15
  br i1 %cmp13, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.12, %if.then
  %15 = load i32, i32* %regno, align 4
  %cmp15 = icmp uge i32 %15, 21
  br i1 %cmp15, label %land.lhs.true.17, label %lor.lhs.false.20

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %regno, align 4
  %cmp18 = icmp ule i32 %16, 28
  br i1 %cmp18, label %cond.true, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %land.lhs.true.17, %lor.lhs.false
  %17 = load i32, i32* %regno, align 4
  %cmp21 = icmp uge i32 %17, 45
  br i1 %cmp21, label %land.lhs.true.23, label %lor.lhs.false.26

land.lhs.true.23:                                 ; preds = %lor.lhs.false.20
  %18 = load i32, i32* %regno, align 4
  %cmp24 = icmp ule i32 %18, 52
  br i1 %cmp24, label %cond.true, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %land.lhs.true.23, %lor.lhs.false.20
  %19 = load i32, i32* %regno, align 4
  %cmp27 = icmp uge i32 %19, 29
  br i1 %cmp27, label %land.lhs.true.29, label %cond.false

land.lhs.true.29:                                 ; preds = %lor.lhs.false.26
  %20 = load i32, i32* %regno, align 4
  %cmp30 = icmp ule i32 %20, 36
  br i1 %cmp30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.29, %land.lhs.true.23, %land.lhs.true.17, %land.lhs.true.12
  %21 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %21 to i64
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 12
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx33 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 %idxprom32
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx33, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom34 = sext i32 %bf.clear to i64
  %arrayidx35 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom34
  %27 = load i32, i32* %arrayidx35, align 4
  %cmp36 = icmp eq i32 %27, 5
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %28 = load i32, i32* %i, align 4
  %idxprom38 = sext i32 %28 to i64
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %emit39 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 3
  %30 = load %struct.emit_status*, %struct.emit_status** %emit39, align 8
  %x_regno_reg_rtx40 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %30, i32 0, i32 12
  %31 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx40, align 8
  %arrayidx41 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %31, i64 %idxprom38
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx41, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load42 = load i32, i32* %33, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 16
  %bf.clear44 = and i32 %bf.lshr43, 255
  %idxprom45 = sext i32 %bf.clear44 to i64
  %arrayidx46 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom45
  %34 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %34, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %35 = phi i1 [ true, %cond.true ], [ %cmp47, %lor.rhs ]
  %cond = select i1 %35, i32 2, i32 1
  br label %cond.end.94

cond.false:                                       ; preds = %land.lhs.true.29, %lor.lhs.false.26
  %36 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %36 to i64
  %37 = load %struct.function*, %struct.function** @cfun, align 8
  %emit50 = getelementptr inbounds %struct.function, %struct.function* %37, i32 0, i32 3
  %38 = load %struct.emit_status*, %struct.emit_status** %emit50, align 8
  %x_regno_reg_rtx51 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %38, i32 0, i32 12
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx51, align 8
  %arrayidx52 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %39, i64 %idxprom49
  %40 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx52, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load53 = load i32, i32* %41, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %cmp56 = icmp eq i32 %bf.clear55, 18
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %cond.false
  %42 = load i32, i32* @target_flags, align 4
  %and = and i32 %42, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond59 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.92

cond.false.60:                                    ; preds = %cond.false
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load %struct.function*, %struct.function** @cfun, align 8
  %emit62 = getelementptr inbounds %struct.function, %struct.function* %44, i32 0, i32 3
  %45 = load %struct.emit_status*, %struct.emit_status** %emit62, align 8
  %x_regno_reg_rtx63 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %45, i32 0, i32 12
  %46 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx63, align 8
  %arrayidx64 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %46, i64 %idxprom61
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx64, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load65 = load i32, i32* %48, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 16
  %bf.clear67 = and i32 %bf.lshr66, 255
  %cmp68 = icmp eq i32 %bf.clear67, 24
  br i1 %cmp68, label %cond.true.70, label %cond.false.74

cond.true.70:                                     ; preds = %cond.false.60
  %49 = load i32, i32* @target_flags, align 4
  %and71 = and i32 %49, 33554432
  %tobool72 = icmp ne i32 %and71, 0
  %cond73 = select i1 %tobool72, i32 4, i32 6
  br label %cond.end

cond.false.74:                                    ; preds = %cond.false.60
  %50 = load i32, i32* %i, align 4
  %idxprom75 = sext i32 %50 to i64
  %51 = load %struct.function*, %struct.function** @cfun, align 8
  %emit76 = getelementptr inbounds %struct.function, %struct.function* %51, i32 0, i32 3
  %52 = load %struct.emit_status*, %struct.emit_status** %emit76, align 8
  %x_regno_reg_rtx77 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %52, i32 0, i32 12
  %53 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx77, align 8
  %arrayidx78 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %53, i64 %idxprom75
  %54 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx78, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load79 = load i32, i32* %55, align 8
  %bf.lshr80 = lshr i32 %bf.load79, 16
  %bf.clear81 = and i32 %bf.lshr80, 255
  %idxprom82 = sext i32 %bf.clear81 to i64
  %arrayidx83 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom82
  %56 = load i8, i8* %arrayidx83, align 1
  %conv84 = zext i8 %56 to i32
  %57 = load i32, i32* @target_flags, align 4
  %and85 = and i32 %57, 33554432
  %tobool86 = icmp ne i32 %and85, 0
  %cond87 = select i1 %tobool86, i32 8, i32 4
  %add = add nsw i32 %conv84, %cond87
  %sub = sub nsw i32 %add, 1
  %58 = load i32, i32* @target_flags, align 4
  %and88 = and i32 %58, 33554432
  %tobool89 = icmp ne i32 %and88, 0
  %cond90 = select i1 %tobool89, i32 8, i32 4
  %div = sdiv i32 %sub, %cond90
  br label %cond.end

cond.end:                                         ; preds = %cond.false.74, %cond.true.70
  %cond91 = phi i32 [ %cond73, %cond.true.70 ], [ %div, %cond.false.74 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end, %cond.true.58
  %cond93 = phi i32 [ %cond59, %cond.true.58 ], [ %cond91, %cond.end ]
  br label %cond.end.94

cond.end.94:                                      ; preds = %cond.end.92, %lor.end
  %cond95 = phi i32 [ %cond, %lor.end ], [ %cond93, %cond.end.92 ]
  %add96 = add i32 %12, %cond95
  store i32 %add96, i32* %endregno, align 4
  %59 = load i32, i32* %regno, align 4
  store i32 %59, i32* %r, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc, %cond.end.94
  %60 = load i32, i32* %r, align 4
  %61 = load i32, i32* %endregno, align 4
  %cmp98 = icmp ult i32 %60, %61
  br i1 %cmp98, label %for.body.100, label %for.end

for.body.100:                                     ; preds = %for.cond.97
  %62 = load i32, i32* %r, align 4
  %idxprom101 = zext i32 %62 to i64
  %arrayidx102 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom101
  %63 = load i8, i8* %arrayidx102, align 1
  %tobool103 = icmp ne i8 %63, 0
  br i1 %tobool103, label %if.then.104, label %if.end

if.then.104:                                      ; preds = %for.body.100
  %64 = load i32, i32* %r, align 4
  %sh_prom = zext i32 %64 to i64
  %shl = shl i64 1, %sh_prom
  %65 = load i64, i64* %hard_regs_used, align 8
  %or = or i64 %65, %shl
  store i64 %or, i64* %hard_regs_used, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.104, %for.body.100
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %66 = load i32, i32* %r, align 4
  %inc = add i32 %66, 1
  store i32 %inc, i32* %r, align 4
  br label %for.cond.97

for.end:                                          ; preds = %for.cond.97
  br label %if.end.105

if.end.105:                                       ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %67 = load i32, i32* %i, align 4
  %inc107 = add nsw i32 %67, 1
  store i32 %inc107, i32* %i, align 4
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.210, %for.end.108
  %68 = load i32, i32* %i, align 4
  %cmp110 = icmp slt i32 %68, 53
  br i1 %cmp110, label %for.body.112, label %for.end.212

for.body.112:                                     ; preds = %for.cond.109
  %69 = load i32, i32* @target_flags, align 4
  %and113 = and i32 %69, 33554432
  %tobool114 = icmp ne i32 %and113, 0
  %cond115 = select i1 %tobool114, i32 8, i32 4
  %div116 = sdiv i32 16, %cond115
  store i32 %div116, i32* %j, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.208, %for.body.112
  %70 = load i32, i32* %j, align 4
  %cmp118 = icmp sgt i32 %70, 0
  br i1 %cmp118, label %for.body.120, label %for.end.209

for.body.120:                                     ; preds = %for.cond.117
  store i32 1, i32* %do_save, align 4
  %71 = load i32, i32* %j, align 4
  %idxprom121 = sext i32 %71 to i64
  %72 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %72 to i64
  %arrayidx123 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom122
  %arrayidx124 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx123, i32 0, i64 %idxprom121
  %73 = load i32, i32* %arrayidx124, align 4
  %cmp125 = icmp eq i32 %73, 0
  br i1 %cmp125, label %if.then.133, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %for.body.120
  %74 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %74 to i64
  %arrayidx129 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom128
  %arrayidx130 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx129, i32 0, i64 1
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx130, align 8
  %cmp131 = icmp ne %struct.rtx_def* %75, null
  br i1 %cmp131, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.127, %for.body.120
  br label %for.inc.208

if.end.134:                                       ; preds = %lor.lhs.false.127
  store i32 0, i32* %k, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.146, %if.end.134
  %76 = load i32, i32* %k, align 4
  %77 = load i32, i32* %j, align 4
  %cmp136 = icmp slt i32 %76, %77
  br i1 %cmp136, label %for.body.138, label %for.end.148

for.body.138:                                     ; preds = %for.cond.135
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %k, align 4
  %add139 = add nsw i32 %78, %79
  %idxprom140 = sext i32 %add139 to i64
  %arrayidx141 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom140
  %arrayidx142 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx141, i32 0, i64 1
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx142, align 8
  %tobool143 = icmp ne %struct.rtx_def* %80, null
  br i1 %tobool143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %for.body.138
  store i32 0, i32* %do_save, align 4
  br label %for.end.148

if.end.145:                                       ; preds = %for.body.138
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %81 = load i32, i32* %k, align 4
  %inc147 = add nsw i32 %81, 1
  store i32 %inc147, i32* %k, align 4
  br label %for.cond.135

for.end.148:                                      ; preds = %if.then.144, %for.cond.135
  %82 = load i32, i32* %do_save, align 4
  %tobool149 = icmp ne i32 %82, 0
  br i1 %tobool149, label %if.end.151, label %if.then.150

if.then.150:                                      ; preds = %for.end.148
  br label %for.inc.208

if.end.151:                                       ; preds = %for.end.148
  store i32 0, i32* %k, align 4
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.163, %if.end.151
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %j, align 4
  %cmp153 = icmp slt i32 %83, %84
  br i1 %cmp153, label %for.body.155, label %for.end.165

for.body.155:                                     ; preds = %for.cond.152
  %85 = load i64, i64* %hard_regs_used, align 8
  %86 = load i32, i32* %i, align 4
  %87 = load i32, i32* %k, align 4
  %add156 = add nsw i32 %86, %87
  %sh_prom157 = zext i32 %add156 to i64
  %shl158 = shl i64 1, %sh_prom157
  %and159 = and i64 %85, %shl158
  %tobool160 = icmp ne i64 %and159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %for.body.155
  store i32 0, i32* %do_save, align 4
  br label %for.end.165

if.end.162:                                       ; preds = %for.body.155
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %88 = load i32, i32* %k, align 4
  %inc164 = add nsw i32 %88, 1
  store i32 %inc164, i32* %k, align 4
  br label %for.cond.152

for.end.165:                                      ; preds = %if.then.161, %for.cond.152
  %89 = load i32, i32* %do_save, align 4
  %tobool166 = icmp ne i32 %89, 0
  br i1 %tobool166, label %if.end.168, label %if.then.167

if.then.167:                                      ; preds = %for.end.165
  br label %for.inc.208

if.end.168:                                       ; preds = %for.end.165
  %90 = load i32, i32* %j, align 4
  %idxprom169 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %91 to i64
  %arrayidx171 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx171, i32 0, i64 %idxprom169
  %92 = load i32, i32* %arrayidx172, align 4
  %93 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %94 to i64
  %arrayidx175 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom174
  %arrayidx176 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx175, i32 0, i64 %idxprom173
  %95 = load i32, i32* %arrayidx176, align 4
  %idxprom177 = sext i32 %95 to i64
  %arrayidx178 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom177
  %96 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %96 to i64
  %call = call %struct.rtx_def* @assign_stack_local(i32 %92, i64 %conv179, i32 0)
  %97 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %97 to i64
  %98 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %98 to i64
  %arrayidx182 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom181
  %arrayidx183 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx182, i32 0, i64 %idxprom180
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx183, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.205, %if.end.168
  %99 = load i32, i32* %k, align 4
  %100 = load i32, i32* %j, align 4
  %cmp185 = icmp slt i32 %99, %100
  br i1 %cmp185, label %for.body.187, label %for.end.207

for.body.187:                                     ; preds = %for.cond.184
  %101 = load i32, i32* %j, align 4
  %idxprom188 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %102 to i64
  %arrayidx190 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom189
  %arrayidx191 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx190, i32 0, i64 %idxprom188
  %103 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx191, align 8
  %104 = load i32, i32* %i, align 4
  %105 = load i32, i32* %k, align 4
  %add192 = add nsw i32 %104, %105
  %idxprom193 = sext i32 %add192 to i64
  %arrayidx194 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom193
  %arrayidx195 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx194, i32 0, i64 1
  %106 = load i32, i32* %arrayidx195, align 4
  %107 = load i32, i32* %k, align 4
  %108 = load i32, i32* @target_flags, align 4
  %and196 = and i32 %108, 33554432
  %tobool197 = icmp ne i32 %and196, 0
  %cond198 = select i1 %tobool197, i32 8, i32 4
  %mul = mul nsw i32 %107, %cond198
  %conv199 = sext i32 %mul to i64
  %call200 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %103, i32 %106, i64 %conv199, i32 0, i32 1)
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %k, align 4
  %add201 = add nsw i32 %109, %110
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx203, i32 0, i64 1
  store %struct.rtx_def* %call200, %struct.rtx_def** %arrayidx204, align 8
  br label %for.inc.205

for.inc.205:                                      ; preds = %for.body.187
  %111 = load i32, i32* %k, align 4
  %inc206 = add nsw i32 %111, 1
  store i32 %inc206, i32* %k, align 4
  br label %for.cond.184

for.end.207:                                      ; preds = %for.cond.184
  br label %for.inc.208

for.inc.208:                                      ; preds = %for.end.207, %if.then.167, %if.then.150, %if.then.133
  %112 = load i32, i32* %j, align 4
  %dec = add nsw i32 %112, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.117

for.end.209:                                      ; preds = %for.cond.117
  br label %for.inc.210

for.inc.210:                                      ; preds = %for.end.209
  %113 = load i32, i32* %i, align 4
  %inc211 = add nsw i32 %113, 1
  store i32 %inc211, i32* %i, align 4
  br label %for.cond.109

for.end.212:                                      ; preds = %for.cond.109
  store i32 0, i32* %i, align 4
  br label %for.cond.213

for.cond.213:                                     ; preds = %for.inc.241, %for.end.212
  %114 = load i32, i32* %i, align 4
  %cmp214 = icmp slt i32 %114, 53
  br i1 %cmp214, label %for.body.216, label %for.end.243

for.body.216:                                     ; preds = %for.cond.213
  %115 = load i32, i32* @target_flags, align 4
  %and217 = and i32 %115, 33554432
  %tobool218 = icmp ne i32 %and217, 0
  %cond219 = select i1 %tobool218, i32 8, i32 4
  %div220 = sdiv i32 16, %cond219
  store i32 %div220, i32* %j, align 4
  br label %for.cond.221

for.cond.221:                                     ; preds = %for.inc.238, %for.body.216
  %116 = load i32, i32* %j, align 4
  %cmp222 = icmp sgt i32 %116, 0
  br i1 %cmp222, label %for.body.224, label %for.end.240

for.body.224:                                     ; preds = %for.cond.221
  %117 = load i32, i32* %j, align 4
  %idxprom225 = sext i32 %117 to i64
  %118 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %118 to i64
  %arrayidx227 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom226
  %arrayidx228 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx227, i32 0, i64 %idxprom225
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx228, align 8
  %cmp229 = icmp ne %struct.rtx_def* %119, null
  br i1 %cmp229, label %if.then.231, label %if.end.237

if.then.231:                                      ; preds = %for.body.224
  %120 = load i32, i32* %j, align 4
  %idxprom232 = sext i32 %120 to i64
  %121 = load i32, i32* %i, align 4
  %idxprom233 = sext i32 %121 to i64
  %arrayidx234 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx234, i32 0, i64 %idxprom232
  %122 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx235, align 8
  %call236 = call i64 @get_frame_alias_set()
  call void @set_mem_alias_set(%struct.rtx_def* %122, i64 %call236)
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.231, %for.body.224
  br label %for.inc.238

for.inc.238:                                      ; preds = %if.end.237
  %123 = load i32, i32* %j, align 4
  %dec239 = add nsw i32 %123, -1
  store i32 %dec239, i32* %j, align 4
  br label %for.cond.221

for.end.240:                                      ; preds = %for.cond.221
  br label %for.inc.241

for.inc.241:                                      ; preds = %for.end.240
  %124 = load i32, i32* %i, align 4
  %inc242 = add nsw i32 %124, 1
  store i32 %inc242, i32* %i, align 4
  br label %for.cond.213

for.end.243:                                      ; preds = %for.cond.213
  ret void
}

declare %struct.rtx_def* @assign_stack_local(i32, i64, i32) #1

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare i64 @get_frame_alias_set() #1

; Function Attrs: nounwind uwtable
define void @save_call_clobbered_regs() #0 {
entry:
  %chain = alloca %struct.insn_chain*, align 8
  %next = alloca %struct.insn_chain*, align 8
  %save_mode = alloca [53 x i32], align 16
  %insn = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %regno = alloca i32, align 4
  %regno29 = alloca i32, align 4
  %hard_regs_to_save = alloca i64, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %r = alloca i32, align 4
  %nregs = alloca i32, align 4
  %mode = alloca i32, align 4
  %regno366 = alloca i32, align 4
  store i64 0, i64* @hard_regs_saved, align 8
  store i32 0, i32* @n_regs_saved, align 4
  %0 = load %struct.insn_chain*, %struct.insn_chain** @reload_insn_chain, align 8
  store %struct.insn_chain* %0, %struct.insn_chain** %chain, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.395, %entry
  %1 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %cmp = icmp ne %struct.insn_chain* %1, null
  br i1 %cmp, label %for.body, label %for.end.396

for.body:                                         ; preds = %for.cond
  %2 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %insn1 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %2, i32 0, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %6 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %next2 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %6, i32 0, i32 0
  %7 = load %struct.insn_chain*, %struct.insn_chain** %next2, align 8
  store %struct.insn_chain* %7, %struct.insn_chain** %next, align 8
  %8 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %is_caller_save_insn = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %8, i32 0, i32 11
  %bf.load3 = load i8, i8* %is_caller_save_insn, align 2
  %bf.lshr = lshr i8 %bf.load3, 3
  %bf.clear4 = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear4 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 369, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.save_call_clobbered_regs, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %code, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp5 = icmp eq i32 %conv, 105
  br i1 %cmp5, label %if.then.7, label %if.end.356

if.then.7:                                        ; preds = %if.end
  %11 = load i32, i32* @n_regs_saved, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.end.25

if.then.9:                                        ; preds = %if.then.7
  %12 = load i32, i32* %code, align 4
  %cmp10 = icmp eq i32 %12, 33
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.9
  %13 = load i64, i64* @hard_regs_saved, align 8
  store i64 %13, i64* @referenced_regs, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.then.9
  store i64 0, i64* @referenced_regs, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %15)
  %16 = load i64, i64* @hard_regs_saved, align 8
  %17 = load i64, i64* @referenced_regs, align 8
  %and = and i64 %17, %16
  store i64 %and, i64* @referenced_regs, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.12
  store i32 0, i32* %regno, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.end.14
  %18 = load i32, i32* %regno, align 4
  %cmp16 = icmp slt i32 %18, 53
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %19 = load i64, i64* @referenced_regs, align 8
  %20 = load i32, i32* %regno, align 4
  %sh_prom = zext i32 %20 to i64
  %shl = shl i64 1, %sh_prom
  %and19 = and i64 %19, %shl
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %for.body.18
  %21 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %22 = load i32, i32* %regno, align 4
  %23 = load i32, i32* @target_flags, align 4
  %and22 = and i32 %23, 33554432
  %tobool23 = icmp ne i32 %and22, 0
  %cond = select i1 %tobool23, i32 8, i32 4
  %div = sdiv i32 16, %cond
  %arraydecay = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i32 0
  %call = call i32 @insert_restore(%struct.insn_chain* %21, i32 1, i32 %22, i32 %div, i32* %arraydecay)
  %24 = load i32, i32* %regno, align 4
  %add = add nsw i32 %24, %call
  store i32 %add, i32* %regno, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %25 = load i32, i32* %regno, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %regno, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.then.7
  %26 = load i32, i32* %code, align 4
  %cmp26 = icmp eq i32 %26, 34
  br i1 %cmp26, label %if.then.28, label %if.end.355

if.then.28:                                       ; preds = %if.end.25
  br label %do.body

do.body:                                          ; preds = %if.then.28
  store i64 0, i64* %hard_regs_to_save, align 8
  %27 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %27, i32 0, i32 5
  call void @reg_set_to_hard_reg_set(i64* %hard_regs_to_save, %struct.bitmap_head_def* %live_throughout)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 0, i32* %regno29, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.48, %do.end
  %28 = load i32, i32* %regno29, align 4
  %cmp31 = icmp slt i32 %28, 53
  br i1 %cmp31, label %for.body.33, label %for.end.50

for.body.33:                                      ; preds = %for.cond.30
  %29 = load i64, i64* %hard_regs_to_save, align 8
  %30 = load i32, i32* %regno29, align 4
  %sh_prom34 = zext i32 %30 to i64
  %shl35 = shl i64 1, %sh_prom34
  %and36 = and i64 %29, %shl35
  %tobool37 = icmp ne i64 %and36, 0
  br i1 %tobool37, label %if.then.38, label %if.else.44

if.then.38:                                       ; preds = %for.body.33
  %31 = load i32, i32* %regno29, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [53 x [5 x i32]], [53 x [5 x i32]]* @regno_save_mode, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [5 x i32], [5 x i32]* %arrayidx40, i32 0, i64 1
  %32 = load i32, i32* %arrayidx41, align 4
  %33 = load i32, i32* %regno29, align 4
  %idxprom42 = sext i32 %33 to i64
  %arrayidx43 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i64 %idxprom42
  store i32 %32, i32* %arrayidx43, align 4
  br label %if.end.47

if.else.44:                                       ; preds = %for.body.33
  %34 = load i32, i32* %regno29, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i64 %idxprom45
  store i32 0, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.44, %if.then.38
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %35 = load i32, i32* %regno29, align 4
  %inc49 = add nsw i32 %35, 1
  store i32 %inc49, i32* %regno29, align 4
  br label %for.cond.30

for.end.50:                                       ; preds = %for.cond.30
  br label %do.body.51

do.body.51:                                       ; preds = %for.end.50
  %36 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %live_throughout52 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %36, i32 0, i32 5
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %live_throughout52, i32 0, i32 0
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %37, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body.51
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp53 = icmp ne %struct.bitmap_element_def* %38, null
  br i1 %cmp53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %39 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %39, i32 0, i32 2
  %40 = load i32, i32* %indx, align 4
  %41 = load i32, i32* %indx_, align 4
  %cmp55 = icmp ult i32 %40, %41
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %42 = phi i1 [ false, %while.cond ], [ %cmp55, %land.rhs ]
  br i1 %42, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next57 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %43, i32 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next57, align 8
  store %struct.bitmap_element_def* %44, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp58 = icmp ne %struct.bitmap_element_def* %45, null
  br i1 %cmp58, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %while.end
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx60 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %46, i32 0, i32 2
  %47 = load i32, i32* %indx60, align 4
  %48 = load i32, i32* %indx_, align 4
  %cmp61 = icmp ne i32 %47, %48
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true, %while.end
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.311, %if.end.64
  %49 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp66 = icmp ne %struct.bitmap_element_def* %49, null
  br i1 %cmp66, label %for.body.68, label %for.end.313

for.body.68:                                      ; preds = %for.cond.65
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.308, %for.body.68
  %50 = load i32, i32* %word_num_, align 4
  %cmp70 = icmp ult i32 %50, 2
  br i1 %cmp70, label %for.body.72, label %for.end.310

for.body.72:                                      ; preds = %for.cond.69
  %51 = load i32, i32* %word_num_, align 4
  %idxprom73 = zext i32 %51 to i64
  %52 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %52, i32 0, i32 3
  %arrayidx74 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom73
  %53 = load i64, i64* %arrayidx74, align 8
  store i64 %53, i64* %word_, align 8
  %54 = load i64, i64* %word_, align 8
  %cmp75 = icmp ne i64 %54, 0
  br i1 %cmp75, label %if.then.77, label %if.end.307

if.then.77:                                       ; preds = %for.body.72
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.304, %if.then.77
  %55 = load i32, i32* %bit_num_, align 4
  %cmp79 = icmp ult i32 %55, 64
  br i1 %cmp79, label %for.body.81, label %for.end.306

for.body.81:                                      ; preds = %for.cond.78
  %56 = load i32, i32* %bit_num_, align 4
  %sh_prom82 = zext i32 %56 to i64
  %shl83 = shl i64 1, %sh_prom82
  store i64 %shl83, i64* %mask_, align 8
  %57 = load i64, i64* %word_, align 8
  %58 = load i64, i64* %mask_, align 8
  %and84 = and i64 %57, %58
  %cmp85 = icmp ne i64 %and84, 0
  br i1 %cmp85, label %if.then.87, label %if.end.303

if.then.87:                                       ; preds = %for.body.81
  %59 = load i64, i64* %mask_, align 8
  %neg = xor i64 %59, -1
  %60 = load i64, i64* %word_, align 8
  %and88 = and i64 %60, %neg
  store i64 %and88, i64* %word_, align 8
  %61 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx89 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %61, i32 0, i32 2
  %62 = load i32, i32* %indx89, align 4
  %mul = mul i32 %62, 128
  %63 = load i32, i32* %word_num_, align 4
  %mul90 = mul i32 %63, 64
  %add91 = add i32 %mul, %mul90
  %64 = load i32, i32* %bit_num_, align 4
  %add92 = add i32 %add91, %64
  store i32 %add92, i32* %regno29, align 4
  %65 = load i32, i32* %regno29, align 4
  %idxprom93 = sext i32 %65 to i64
  %66 = load i16*, i16** @reg_renumber, align 8
  %arrayidx94 = getelementptr inbounds i16, i16* %66, i64 %idxprom93
  %67 = load i16, i16* %arrayidx94, align 2
  %conv95 = sext i16 %67 to i32
  store i32 %conv95, i32* %r, align 4
  %68 = load i32, i32* %r, align 4
  %cmp96 = icmp sge i32 %68, 0
  br i1 %cmp96, label %if.then.98, label %if.else.297

if.then.98:                                       ; preds = %if.then.87
  %69 = load i32, i32* %r, align 4
  %cmp99 = icmp sge i32 %69, 8
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false

land.lhs.true.101:                                ; preds = %if.then.98
  %70 = load i32, i32* %r, align 4
  %cmp102 = icmp sle i32 %70, 15
  br i1 %cmp102, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.101, %if.then.98
  %71 = load i32, i32* %r, align 4
  %cmp104 = icmp sge i32 %71, 21
  br i1 %cmp104, label %land.lhs.true.106, label %lor.lhs.false.109

land.lhs.true.106:                                ; preds = %lor.lhs.false
  %72 = load i32, i32* %r, align 4
  %cmp107 = icmp sle i32 %72, 28
  br i1 %cmp107, label %cond.true, label %lor.lhs.false.109

lor.lhs.false.109:                                ; preds = %land.lhs.true.106, %lor.lhs.false
  %73 = load i32, i32* %r, align 4
  %cmp110 = icmp sge i32 %73, 45
  br i1 %cmp110, label %land.lhs.true.112, label %lor.lhs.false.115

land.lhs.true.112:                                ; preds = %lor.lhs.false.109
  %74 = load i32, i32* %r, align 4
  %cmp113 = icmp sle i32 %74, 52
  br i1 %cmp113, label %cond.true, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %land.lhs.true.112, %lor.lhs.false.109
  %75 = load i32, i32* %r, align 4
  %cmp116 = icmp sge i32 %75, 29
  br i1 %cmp116, label %land.lhs.true.118, label %cond.false

land.lhs.true.118:                                ; preds = %lor.lhs.false.115
  %76 = load i32, i32* %r, align 4
  %cmp119 = icmp sle i32 %76, 36
  br i1 %cmp119, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.118, %land.lhs.true.112, %land.lhs.true.106, %land.lhs.true.101
  %77 = load i32, i32* %regno29, align 4
  %idxprom121 = sext i32 %77 to i64
  %78 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %78, i32 0, i32 3
  %79 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %79, i32 0, i32 12
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx122 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %80, i64 %idxprom121
  %81 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx122, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load123 = load i32, i32* %82, align 8
  %bf.lshr124 = lshr i32 %bf.load123, 16
  %bf.clear125 = and i32 %bf.lshr124, 255
  %idxprom126 = sext i32 %bf.clear125 to i64
  %arrayidx127 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom126
  %83 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp eq i32 %83, 5
  br i1 %cmp128, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %84 = load i32, i32* %regno29, align 4
  %idxprom130 = sext i32 %84 to i64
  %85 = load %struct.function*, %struct.function** @cfun, align 8
  %emit131 = getelementptr inbounds %struct.function, %struct.function* %85, i32 0, i32 3
  %86 = load %struct.emit_status*, %struct.emit_status** %emit131, align 8
  %x_regno_reg_rtx132 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %86, i32 0, i32 12
  %87 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx132, align 8
  %arrayidx133 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %87, i64 %idxprom130
  %88 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx133, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load134 = load i32, i32* %89, align 8
  %bf.lshr135 = lshr i32 %bf.load134, 16
  %bf.clear136 = and i32 %bf.lshr135, 255
  %idxprom137 = sext i32 %bf.clear136 to i64
  %arrayidx138 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom137
  %90 = load i32, i32* %arrayidx138, align 4
  %cmp139 = icmp eq i32 %90, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %91 = phi i1 [ true, %cond.true ], [ %cmp139, %lor.rhs ]
  %cond141 = select i1 %91, i32 2, i32 1
  br label %cond.end.191

cond.false:                                       ; preds = %land.lhs.true.118, %lor.lhs.false.115
  %92 = load i32, i32* %regno29, align 4
  %idxprom142 = sext i32 %92 to i64
  %93 = load %struct.function*, %struct.function** @cfun, align 8
  %emit143 = getelementptr inbounds %struct.function, %struct.function* %93, i32 0, i32 3
  %94 = load %struct.emit_status*, %struct.emit_status** %emit143, align 8
  %x_regno_reg_rtx144 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %94, i32 0, i32 12
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx144, align 8
  %arrayidx145 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %95, i64 %idxprom142
  %96 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx145, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load146 = load i32, i32* %97, align 8
  %bf.lshr147 = lshr i32 %bf.load146, 16
  %bf.clear148 = and i32 %bf.lshr147, 255
  %cmp149 = icmp eq i32 %bf.clear148, 18
  br i1 %cmp149, label %cond.true.151, label %cond.false.155

cond.true.151:                                    ; preds = %cond.false
  %98 = load i32, i32* @target_flags, align 4
  %and152 = and i32 %98, 33554432
  %tobool153 = icmp ne i32 %and152, 0
  %cond154 = select i1 %tobool153, i32 2, i32 3
  br label %cond.end.189

cond.false.155:                                   ; preds = %cond.false
  %99 = load i32, i32* %regno29, align 4
  %idxprom156 = sext i32 %99 to i64
  %100 = load %struct.function*, %struct.function** @cfun, align 8
  %emit157 = getelementptr inbounds %struct.function, %struct.function* %100, i32 0, i32 3
  %101 = load %struct.emit_status*, %struct.emit_status** %emit157, align 8
  %x_regno_reg_rtx158 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %101, i32 0, i32 12
  %102 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx158, align 8
  %arrayidx159 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %102, i64 %idxprom156
  %103 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx159, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load160 = load i32, i32* %104, align 8
  %bf.lshr161 = lshr i32 %bf.load160, 16
  %bf.clear162 = and i32 %bf.lshr161, 255
  %cmp163 = icmp eq i32 %bf.clear162, 24
  br i1 %cmp163, label %cond.true.165, label %cond.false.169

cond.true.165:                                    ; preds = %cond.false.155
  %105 = load i32, i32* @target_flags, align 4
  %and166 = and i32 %105, 33554432
  %tobool167 = icmp ne i32 %and166, 0
  %cond168 = select i1 %tobool167, i32 4, i32 6
  br label %cond.end

cond.false.169:                                   ; preds = %cond.false.155
  %106 = load i32, i32* %regno29, align 4
  %idxprom170 = sext i32 %106 to i64
  %107 = load %struct.function*, %struct.function** @cfun, align 8
  %emit171 = getelementptr inbounds %struct.function, %struct.function* %107, i32 0, i32 3
  %108 = load %struct.emit_status*, %struct.emit_status** %emit171, align 8
  %x_regno_reg_rtx172 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %108, i32 0, i32 12
  %109 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx172, align 8
  %arrayidx173 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %109, i64 %idxprom170
  %110 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx173, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load174 = load i32, i32* %111, align 8
  %bf.lshr175 = lshr i32 %bf.load174, 16
  %bf.clear176 = and i32 %bf.lshr175, 255
  %idxprom177 = sext i32 %bf.clear176 to i64
  %arrayidx178 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom177
  %112 = load i8, i8* %arrayidx178, align 1
  %conv179 = zext i8 %112 to i32
  %113 = load i32, i32* @target_flags, align 4
  %and180 = and i32 %113, 33554432
  %tobool181 = icmp ne i32 %and180, 0
  %cond182 = select i1 %tobool181, i32 8, i32 4
  %add183 = add nsw i32 %conv179, %cond182
  %sub = sub nsw i32 %add183, 1
  %114 = load i32, i32* @target_flags, align 4
  %and184 = and i32 %114, 33554432
  %tobool185 = icmp ne i32 %and184, 0
  %cond186 = select i1 %tobool185, i32 8, i32 4
  %div187 = sdiv i32 %sub, %cond186
  br label %cond.end

cond.end:                                         ; preds = %cond.false.169, %cond.true.165
  %cond188 = phi i32 [ %cond168, %cond.true.165 ], [ %div187, %cond.false.169 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end, %cond.true.151
  %cond190 = phi i32 [ %cond154, %cond.true.151 ], [ %cond188, %cond.end ]
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.end.189, %lor.end
  %cond192 = phi i32 [ %cond141, %lor.end ], [ %cond190, %cond.end.189 ]
  store i32 %cond192, i32* %nregs, align 4
  %115 = load i32, i32* %r, align 4
  %cmp193 = icmp eq i32 %115, 17
  br i1 %cmp193, label %cond.true.198, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %cond.end.191
  %116 = load i32, i32* %r, align 4
  %cmp196 = icmp eq i32 %116, 18
  br i1 %cmp196, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %lor.lhs.false.195, %cond.end.191
  br label %cond.end.273

cond.false.199:                                   ; preds = %lor.lhs.false.195
  %117 = load i32, i32* %regno29, align 4
  %idxprom200 = sext i32 %117 to i64
  %118 = load %struct.function*, %struct.function** @cfun, align 8
  %emit201 = getelementptr inbounds %struct.function, %struct.function* %118, i32 0, i32 3
  %119 = load %struct.emit_status*, %struct.emit_status** %emit201, align 8
  %x_regno_reg_rtx202 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %119, i32 0, i32 12
  %120 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx202, align 8
  %arrayidx203 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %120, i64 %idxprom200
  %121 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx203, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load204 = load i32, i32* %122, align 8
  %bf.lshr205 = lshr i32 %bf.load204, 16
  %bf.clear206 = and i32 %bf.lshr205, 255
  %cmp207 = icmp eq i32 %bf.clear206, 0
  br i1 %cmp207, label %land.lhs.true.209, label %cond.false.213

land.lhs.true.209:                                ; preds = %cond.false.199
  %123 = load i32, i32* %nregs, align 4
  %cmp210 = icmp ne i32 %123, 1
  br i1 %cmp210, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %land.lhs.true.209
  br label %cond.end.271

cond.false.213:                                   ; preds = %land.lhs.true.209, %cond.false.199
  %124 = load i32, i32* %regno29, align 4
  %idxprom214 = sext i32 %124 to i64
  %125 = load %struct.function*, %struct.function** @cfun, align 8
  %emit215 = getelementptr inbounds %struct.function, %struct.function* %125, i32 0, i32 3
  %126 = load %struct.emit_status*, %struct.emit_status** %emit215, align 8
  %x_regno_reg_rtx216 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %126, i32 0, i32 12
  %127 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx216, align 8
  %arrayidx217 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %127, i64 %idxprom214
  %128 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx217, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load218 = load i32, i32* %129, align 8
  %bf.lshr219 = lshr i32 %bf.load218, 16
  %bf.clear220 = and i32 %bf.lshr219, 255
  %cmp221 = icmp eq i32 %bf.clear220, 0
  br i1 %cmp221, label %cond.true.223, label %cond.false.225

cond.true.223:                                    ; preds = %cond.false.213
  %130 = load i32, i32* %r, align 4
  %131 = load i32, i32* %nregs, align 4
  %call224 = call i32 @choose_hard_reg_mode(i32 %130, i32 %131)
  br label %cond.end.269

cond.false.225:                                   ; preds = %cond.false.213
  %132 = load i32, i32* %regno29, align 4
  %idxprom226 = sext i32 %132 to i64
  %133 = load %struct.function*, %struct.function** @cfun, align 8
  %emit227 = getelementptr inbounds %struct.function, %struct.function* %133, i32 0, i32 3
  %134 = load %struct.emit_status*, %struct.emit_status** %emit227, align 8
  %x_regno_reg_rtx228 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %134, i32 0, i32 12
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx228, align 8
  %arrayidx229 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %135, i64 %idxprom226
  %136 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx229, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load230 = load i32, i32* %137, align 8
  %bf.lshr231 = lshr i32 %bf.load230, 16
  %bf.clear232 = and i32 %bf.lshr231, 255
  %cmp233 = icmp eq i32 %bf.clear232, 3
  br i1 %cmp233, label %land.lhs.true.235, label %cond.false.240

land.lhs.true.235:                                ; preds = %cond.false.225
  %138 = load i32, i32* @x86_partial_reg_stall, align 4
  %139 = load i32, i32* @ix86_cpu, align 4
  %shl236 = shl i32 1, %139
  %and237 = and i32 %138, %shl236
  %tobool238 = icmp ne i32 %and237, 0
  br i1 %tobool238, label %cond.false.240, label %cond.true.239

cond.true.239:                                    ; preds = %land.lhs.true.235
  br label %cond.end.267

cond.false.240:                                   ; preds = %land.lhs.true.235, %cond.false.225
  %140 = load i32, i32* %regno29, align 4
  %idxprom241 = sext i32 %140 to i64
  %141 = load %struct.function*, %struct.function** @cfun, align 8
  %emit242 = getelementptr inbounds %struct.function, %struct.function* %141, i32 0, i32 3
  %142 = load %struct.emit_status*, %struct.emit_status** %emit242, align 8
  %x_regno_reg_rtx243 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %142, i32 0, i32 12
  %143 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx243, align 8
  %arrayidx244 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %143, i64 %idxprom241
  %144 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx244, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load245 = load i32, i32* %145, align 8
  %bf.lshr246 = lshr i32 %bf.load245, 16
  %bf.clear247 = and i32 %bf.lshr246, 255
  %cmp248 = icmp eq i32 %bf.clear247, 2
  br i1 %cmp248, label %land.lhs.true.250, label %cond.false.257

land.lhs.true.250:                                ; preds = %cond.false.240
  %146 = load i32, i32* %r, align 4
  %cmp251 = icmp sge i32 %146, 4
  br i1 %cmp251, label %land.lhs.true.253, label %cond.false.257

land.lhs.true.253:                                ; preds = %land.lhs.true.250
  %147 = load i32, i32* @target_flags, align 4
  %and254 = and i32 %147, 33554432
  %tobool255 = icmp ne i32 %and254, 0
  br i1 %tobool255, label %cond.false.257, label %cond.true.256

cond.true.256:                                    ; preds = %land.lhs.true.253
  br label %cond.end.265

cond.false.257:                                   ; preds = %land.lhs.true.253, %land.lhs.true.250, %cond.false.240
  %148 = load i32, i32* %regno29, align 4
  %idxprom258 = sext i32 %148 to i64
  %149 = load %struct.function*, %struct.function** @cfun, align 8
  %emit259 = getelementptr inbounds %struct.function, %struct.function* %149, i32 0, i32 3
  %150 = load %struct.emit_status*, %struct.emit_status** %emit259, align 8
  %x_regno_reg_rtx260 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %150, i32 0, i32 12
  %151 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx260, align 8
  %arrayidx261 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %151, i64 %idxprom258
  %152 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx261, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load262 = load i32, i32* %153, align 8
  %bf.lshr263 = lshr i32 %bf.load262, 16
  %bf.clear264 = and i32 %bf.lshr263, 255
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.257, %cond.true.256
  %cond266 = phi i32 [ 4, %cond.true.256 ], [ %bf.clear264, %cond.false.257 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %cond.true.239
  %cond268 = phi i32 [ 4, %cond.true.239 ], [ %cond266, %cond.end.265 ]
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.end.267, %cond.true.223
  %cond270 = phi i32 [ %call224, %cond.true.223 ], [ %cond268, %cond.end.267 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %cond.true.212
  %cond272 = phi i32 [ 0, %cond.true.212 ], [ %cond270, %cond.end.269 ]
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.end.271, %cond.true.198
  %cond274 = phi i32 [ 0, %cond.true.198 ], [ %cond272, %cond.end.271 ]
  store i32 %cond274, i32* %mode, align 4
  %154 = load i32, i32* %mode, align 4
  %idxprom275 = sext i32 %154 to i64
  %arrayidx276 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom275
  %155 = load i16, i16* %arrayidx276, align 2
  %conv277 = zext i16 %155 to i32
  %156 = load i32, i32* %r, align 4
  %idxprom278 = sext i32 %156 to i64
  %arrayidx279 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i64 %idxprom278
  %157 = load i32, i32* %arrayidx279, align 4
  %idxprom280 = sext i32 %157 to i64
  %arrayidx281 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom280
  %158 = load i16, i16* %arrayidx281, align 2
  %conv282 = zext i16 %158 to i32
  %cmp283 = icmp sgt i32 %conv277, %conv282
  br i1 %cmp283, label %if.then.285, label %if.end.288

if.then.285:                                      ; preds = %cond.end.273
  %159 = load i32, i32* %mode, align 4
  %160 = load i32, i32* %r, align 4
  %idxprom286 = sext i32 %160 to i64
  %arrayidx287 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i64 %idxprom286
  store i32 %159, i32* %arrayidx287, align 4
  br label %if.end.288

if.end.288:                                       ; preds = %if.then.285, %cond.end.273
  br label %while.cond.289

while.cond.289:                                   ; preds = %while.body.292, %if.end.288
  %161 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %161, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp290 = icmp sgt i32 %161, 0
  br i1 %cmp290, label %while.body.292, label %while.end.296

while.body.292:                                   ; preds = %while.cond.289
  %162 = load i32, i32* %r, align 4
  %163 = load i32, i32* %nregs, align 4
  %add293 = add nsw i32 %162, %163
  %sh_prom294 = zext i32 %add293 to i64
  %shl295 = shl i64 1, %sh_prom294
  %164 = load i64, i64* %hard_regs_to_save, align 8
  %or = or i64 %164, %shl295
  store i64 %or, i64* %hard_regs_to_save, align 8
  br label %while.cond.289

while.end.296:                                    ; preds = %while.cond.289
  br label %if.end.298

if.else.297:                                      ; preds = %if.then.87
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 433, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.save_call_clobbered_regs, i32 0, i32 0)) #3
  unreachable

if.end.298:                                       ; preds = %while.end.296
  %165 = load i64, i64* %word_, align 8
  %cmp299 = icmp eq i64 %165, 0
  br i1 %cmp299, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.298
  br label %for.end.306

if.end.302:                                       ; preds = %if.end.298
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %for.body.81
  br label %for.inc.304

for.inc.304:                                      ; preds = %if.end.303
  %166 = load i32, i32* %bit_num_, align 4
  %inc305 = add i32 %166, 1
  store i32 %inc305, i32* %bit_num_, align 4
  br label %for.cond.78

for.end.306:                                      ; preds = %if.then.301, %for.cond.78
  br label %if.end.307

if.end.307:                                       ; preds = %for.end.306, %for.body.72
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.308

for.inc.308:                                      ; preds = %if.end.307
  %167 = load i32, i32* %word_num_, align 4
  %inc309 = add i32 %167, 1
  store i32 %inc309, i32* %word_num_, align 4
  br label %for.cond.69

for.end.310:                                      ; preds = %for.cond.69
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.310
  %168 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next312 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %168, i32 0, i32 0
  %169 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next312, align 8
  store %struct.bitmap_element_def* %169, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.65

for.end.313:                                      ; preds = %for.cond.65
  br label %do.end.314

do.end.314:                                       ; preds = %for.end.313
  store i64 0, i64* @this_insn_sets, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld315 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld315, i32 0, i64 3
  %rtx317 = bitcast %union.rtunion_def* %arrayidx316 to %struct.rtx_def**
  %171 = load %struct.rtx_def*, %struct.rtx_def** %rtx317, align 8
  call void @note_stores(%struct.rtx_def* %171, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_set_regs, i8* null)
  %172 = load i64, i64* @call_fixed_reg_set, align 8
  %neg318 = xor i64 %172, -1
  %173 = load i64, i64* %hard_regs_to_save, align 8
  %and319 = and i64 %173, %neg318
  store i64 %and319, i64* %hard_regs_to_save, align 8
  %174 = load i64, i64* @this_insn_sets, align 8
  %neg320 = xor i64 %174, -1
  %175 = load i64, i64* %hard_regs_to_save, align 8
  %and321 = and i64 %175, %neg320
  store i64 %and321, i64* %hard_regs_to_save, align 8
  %176 = load i64, i64* @hard_regs_saved, align 8
  %neg322 = xor i64 %176, -1
  %177 = load i64, i64* %hard_regs_to_save, align 8
  %and323 = and i64 %177, %neg322
  store i64 %and323, i64* %hard_regs_to_save, align 8
  %178 = load i64, i64* @call_used_reg_set, align 8
  %179 = load i64, i64* %hard_regs_to_save, align 8
  %and324 = and i64 %179, %178
  store i64 %and324, i64* %hard_regs_to_save, align 8
  store i32 0, i32* %regno29, align 4
  br label %for.cond.325

for.cond.325:                                     ; preds = %for.inc.338, %do.end.314
  %180 = load i32, i32* %regno29, align 4
  %cmp326 = icmp slt i32 %180, 53
  br i1 %cmp326, label %for.body.328, label %for.end.340

for.body.328:                                     ; preds = %for.cond.325
  %181 = load i64, i64* %hard_regs_to_save, align 8
  %182 = load i32, i32* %regno29, align 4
  %sh_prom329 = zext i32 %182 to i64
  %shl330 = shl i64 1, %sh_prom329
  %and331 = and i64 %181, %shl330
  %tobool332 = icmp ne i64 %and331, 0
  br i1 %tobool332, label %if.then.333, label %if.end.337

if.then.333:                                      ; preds = %for.body.328
  %183 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %184 = load i32, i32* %regno29, align 4
  %arraydecay334 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i32 0
  %call335 = call i32 @insert_save(%struct.insn_chain* %183, i32 1, i32 %184, i64* %hard_regs_to_save, i32* %arraydecay334)
  %185 = load i32, i32* %regno29, align 4
  %add336 = add nsw i32 %185, %call335
  store i32 %add336, i32* %regno29, align 4
  br label %if.end.337

if.end.337:                                       ; preds = %if.then.333, %for.body.328
  br label %for.inc.338

for.inc.338:                                      ; preds = %if.end.337
  %186 = load i32, i32* %regno29, align 4
  %inc339 = add nsw i32 %186, 1
  store i32 %inc339, i32* %regno29, align 4
  br label %for.cond.325

for.end.340:                                      ; preds = %for.cond.325
  store i32 0, i32* @n_regs_saved, align 4
  store i32 0, i32* %regno29, align 4
  br label %for.cond.341

for.cond.341:                                     ; preds = %for.inc.352, %for.end.340
  %187 = load i32, i32* %regno29, align 4
  %cmp342 = icmp slt i32 %187, 53
  br i1 %cmp342, label %for.body.344, label %for.end.354

for.body.344:                                     ; preds = %for.cond.341
  %188 = load i64, i64* @hard_regs_saved, align 8
  %189 = load i32, i32* %regno29, align 4
  %sh_prom345 = zext i32 %189 to i64
  %shl346 = shl i64 1, %sh_prom345
  %and347 = and i64 %188, %shl346
  %tobool348 = icmp ne i64 %and347, 0
  br i1 %tobool348, label %if.then.349, label %if.end.351

if.then.349:                                      ; preds = %for.body.344
  %190 = load i32, i32* @n_regs_saved, align 4
  %inc350 = add nsw i32 %190, 1
  store i32 %inc350, i32* @n_regs_saved, align 4
  br label %if.end.351

if.end.351:                                       ; preds = %if.then.349, %for.body.344
  br label %for.inc.352

for.inc.352:                                      ; preds = %if.end.351
  %191 = load i32, i32* %regno29, align 4
  %inc353 = add nsw i32 %191, 1
  store i32 %inc353, i32* %regno29, align 4
  br label %for.cond.341

for.end.354:                                      ; preds = %for.cond.341
  br label %if.end.355

if.end.355:                                       ; preds = %for.end.354, %if.end.25
  br label %if.end.356

if.end.356:                                       ; preds = %if.end.355, %if.end
  %192 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %next357 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %192, i32 0, i32 0
  %193 = load %struct.insn_chain*, %struct.insn_chain** %next357, align 8
  %cmp358 = icmp eq %struct.insn_chain* %193, null
  br i1 %cmp358, label %if.then.365, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %if.end.356
  %194 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %next361 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %194, i32 0, i32 0
  %195 = load %struct.insn_chain*, %struct.insn_chain** %next361, align 8
  %block = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %195, i32 0, i32 3
  %196 = load i32, i32* %block, align 4
  %197 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %block362 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %197, i32 0, i32 3
  %198 = load i32, i32* %block362, align 4
  %cmp363 = icmp sgt i32 %196, %198
  br i1 %cmp363, label %if.then.365, label %if.end.394

if.then.365:                                      ; preds = %lor.lhs.false.360, %if.end.356
  %199 = load i32, i32* @n_regs_saved, align 4
  %tobool367 = icmp ne i32 %199, 0
  br i1 %tobool367, label %if.then.368, label %if.end.393

if.then.368:                                      ; preds = %if.then.365
  store i32 0, i32* %regno366, align 4
  br label %for.cond.369

for.cond.369:                                     ; preds = %for.inc.390, %if.then.368
  %200 = load i32, i32* %regno366, align 4
  %cmp370 = icmp slt i32 %200, 53
  br i1 %cmp370, label %for.body.372, label %for.end.392

for.body.372:                                     ; preds = %for.cond.369
  %201 = load i64, i64* @hard_regs_saved, align 8
  %202 = load i32, i32* %regno366, align 4
  %sh_prom373 = zext i32 %202 to i64
  %shl374 = shl i64 1, %sh_prom373
  %and375 = and i64 %201, %shl374
  %tobool376 = icmp ne i64 %and375, 0
  br i1 %tobool376, label %if.then.377, label %if.end.389

if.then.377:                                      ; preds = %for.body.372
  %203 = load %struct.insn_chain*, %struct.insn_chain** %chain, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load378 = load i32, i32* %205, align 8
  %bf.clear379 = and i32 %bf.load378, 65535
  %cmp380 = icmp eq i32 %bf.clear379, 33
  %conv381 = zext i1 %cmp380 to i32
  %206 = load i32, i32* %regno366, align 4
  %207 = load i32, i32* @target_flags, align 4
  %and382 = and i32 %207, 33554432
  %tobool383 = icmp ne i32 %and382, 0
  %cond384 = select i1 %tobool383, i32 8, i32 4
  %div385 = sdiv i32 16, %cond384
  %arraydecay386 = getelementptr inbounds [53 x i32], [53 x i32]* %save_mode, i32 0, i32 0
  %call387 = call i32 @insert_restore(%struct.insn_chain* %203, i32 %conv381, i32 %206, i32 %div385, i32* %arraydecay386)
  %208 = load i32, i32* %regno366, align 4
  %add388 = add nsw i32 %208, %call387
  store i32 %add388, i32* %regno366, align 4
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.377, %for.body.372
  br label %for.inc.390

for.inc.390:                                      ; preds = %if.end.389
  %209 = load i32, i32* %regno366, align 4
  %inc391 = add nsw i32 %209, 1
  store i32 %inc391, i32* %regno366, align 4
  br label %for.cond.369

for.end.392:                                      ; preds = %for.cond.369
  br label %if.end.393

if.end.393:                                       ; preds = %for.end.392, %if.then.365
  br label %if.end.394

if.end.394:                                       ; preds = %if.end.393, %lor.lhs.false.360
  br label %for.inc.395

for.inc.395:                                      ; preds = %if.end.394
  %210 = load %struct.insn_chain*, %struct.insn_chain** %next, align 8
  store %struct.insn_chain* %210, %struct.insn_chain** %chain, align 8
  br label %for.cond

for.end.396:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @mark_referenced_regs(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %regno = alloca i32, align 4
  %hardregno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 47
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %5, 47
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %6, 49
  br i1 %cmp2, label %if.then.3, label %if.end.51

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %x.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  store i32 %bf.clear8, i32* %code, align 4
  %11 = load i32, i32* %code, align 4
  %cmp9 = icmp eq i32 %11, 61
  br i1 %cmp9, label %if.then.49, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %if.then.3
  %12 = load i32, i32* %code, align 4
  %cmp11 = icmp eq i32 %12, 59
  br i1 %cmp11, label %if.then.49, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %13 = load i32, i32* %code, align 4
  %cmp13 = icmp eq i32 %13, 69
  br i1 %cmp13, label %if.then.49, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.12
  %14 = load i32, i32* %code, align 4
  %cmp15 = icmp eq i32 %14, 63
  br i1 %cmp15, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %lor.lhs.false.14
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load19 = load i32, i32* %17, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 61
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.50

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load23 = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load23, 16
  %bf.clear24 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear24 to i64
  %arrayidx25 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx25, align 1
  %conv = zext i8 %20 to i32
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load29 = load i32, i32* %23, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %idxprom32 = sext i32 %bf.clear31 to i64
  %arrayidx33 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom32
  %24 = load i8, i8* %arrayidx33, align 1
  %conv34 = zext i8 %24 to i32
  %cmp35 = icmp sge i32 %conv, %conv34
  br i1 %cmp35, label %if.then.49, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.22
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load41 = load i32, i32* %27, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 16
  %bf.clear43 = and i32 %bf.lshr42, 255
  %idxprom44 = sext i32 %bf.clear43 to i64
  %arrayidx45 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom44
  %28 = load i8, i8* %arrayidx45, align 1
  %conv46 = zext i8 %28 to i32
  %29 = load i32, i32* @target_flags, align 4
  %and = and i32 %29, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %cmp47 = icmp sle i32 %conv46, %cond
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %lor.lhs.false.37, %land.lhs.true.22, %lor.lhs.false.12, %lor.lhs.false.10, %if.then.3
  br label %for.end.225

if.end.50:                                        ; preds = %lor.lhs.false.37, %land.lhs.true, %lor.lhs.false.14
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %lor.lhs.false
  %30 = load i32, i32* %code, align 4
  %cmp52 = icmp eq i32 %30, 66
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.51
  %31 = load i32, i32* %code, align 4
  %cmp55 = icmp eq i32 %31, 63
  br i1 %cmp55, label %if.then.57, label %if.end.63

if.then.57:                                       ; preds = %lor.lhs.false.54, %if.end.51
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %x.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load61 = load i32, i32* %35, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  store i32 %bf.clear62, i32* %code, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.57, %lor.lhs.false.54
  %36 = load i32, i32* %code, align 4
  %cmp64 = icmp eq i32 %36, 61
  br i1 %cmp64, label %if.then.66, label %if.end.180

if.then.66:                                       ; preds = %if.end.63
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx68 to i32*
  %38 = load i32, i32* %rtuint, align 4
  store i32 %38, i32* %regno, align 4
  %39 = load i32, i32* %regno, align 4
  %cmp69 = icmp slt i32 %39, 53
  br i1 %cmp69, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.66
  %40 = load i32, i32* %regno, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.66
  %41 = load i32, i32* %regno, align 4
  %idxprom71 = sext i32 %41 to i64
  %42 = load i16*, i16** @reg_renumber, align 8
  %arrayidx72 = getelementptr inbounds i16, i16* %42, i64 %idxprom71
  %43 = load i16, i16* %arrayidx72, align 2
  %conv73 = sext i16 %43 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond74 = phi i32 [ %40, %cond.true ], [ %conv73, %cond.false ]
  store i32 %cond74, i32* %hardregno, align 4
  %44 = load i32, i32* %hardregno, align 4
  %cmp75 = icmp sge i32 %44, 0
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %cond.end
  %45 = load i32, i32* %hardregno, align 4
  %cmp78 = icmp sge i32 %45, 8
  br i1 %cmp78, label %land.lhs.true.80, label %lor.lhs.false.83

land.lhs.true.80:                                 ; preds = %if.then.77
  %46 = load i32, i32* %hardregno, align 4
  %cmp81 = icmp sle i32 %46, 15
  br i1 %cmp81, label %cond.true.101, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.80, %if.then.77
  %47 = load i32, i32* %hardregno, align 4
  %cmp84 = icmp sge i32 %47, 21
  br i1 %cmp84, label %land.lhs.true.86, label %lor.lhs.false.89

land.lhs.true.86:                                 ; preds = %lor.lhs.false.83
  %48 = load i32, i32* %hardregno, align 4
  %cmp87 = icmp sle i32 %48, 28
  br i1 %cmp87, label %cond.true.101, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.86, %lor.lhs.false.83
  %49 = load i32, i32* %hardregno, align 4
  %cmp90 = icmp sge i32 %49, 45
  br i1 %cmp90, label %land.lhs.true.92, label %lor.lhs.false.95

land.lhs.true.92:                                 ; preds = %lor.lhs.false.89
  %50 = load i32, i32* %hardregno, align 4
  %cmp93 = icmp sle i32 %50, 52
  br i1 %cmp93, label %cond.true.101, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %land.lhs.true.92, %lor.lhs.false.89
  %51 = load i32, i32* %hardregno, align 4
  %cmp96 = icmp sge i32 %51, 29
  br i1 %cmp96, label %land.lhs.true.98, label %cond.false.117

land.lhs.true.98:                                 ; preds = %lor.lhs.false.95
  %52 = load i32, i32* %hardregno, align 4
  %cmp99 = icmp sle i32 %52, 36
  br i1 %cmp99, label %cond.true.101, label %cond.false.117

cond.true.101:                                    ; preds = %land.lhs.true.98, %land.lhs.true.92, %land.lhs.true.86, %land.lhs.true.80
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load102 = load i32, i32* %54, align 8
  %bf.lshr103 = lshr i32 %bf.load102, 16
  %bf.clear104 = and i32 %bf.lshr103, 255
  %idxprom105 = sext i32 %bf.clear104 to i64
  %arrayidx106 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom105
  %55 = load i32, i32* %arrayidx106, align 4
  %cmp107 = icmp eq i32 %55, 5
  br i1 %cmp107, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.101
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load109 = load i32, i32* %57, align 8
  %bf.lshr110 = lshr i32 %bf.load109, 16
  %bf.clear111 = and i32 %bf.lshr110, 255
  %idxprom112 = sext i32 %bf.clear111 to i64
  %arrayidx113 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom112
  %58 = load i32, i32* %arrayidx113, align 4
  %cmp114 = icmp eq i32 %58, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.101
  %59 = phi i1 [ true, %cond.true.101 ], [ %cmp114, %lor.rhs ]
  %cond116 = select i1 %59, i32 2, i32 1
  br label %cond.end.154

cond.false.117:                                   ; preds = %land.lhs.true.98, %lor.lhs.false.95
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load118 = load i32, i32* %61, align 8
  %bf.lshr119 = lshr i32 %bf.load118, 16
  %bf.clear120 = and i32 %bf.lshr119, 255
  %cmp121 = icmp eq i32 %bf.clear120, 18
  br i1 %cmp121, label %cond.true.123, label %cond.false.127

cond.true.123:                                    ; preds = %cond.false.117
  %62 = load i32, i32* @target_flags, align 4
  %and124 = and i32 %62, 33554432
  %tobool125 = icmp ne i32 %and124, 0
  %cond126 = select i1 %tobool125, i32 2, i32 3
  br label %cond.end.152

cond.false.127:                                   ; preds = %cond.false.117
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load128 = load i32, i32* %64, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %cmp131 = icmp eq i32 %bf.clear130, 24
  br i1 %cmp131, label %cond.true.133, label %cond.false.137

cond.true.133:                                    ; preds = %cond.false.127
  %65 = load i32, i32* @target_flags, align 4
  %and134 = and i32 %65, 33554432
  %tobool135 = icmp ne i32 %and134, 0
  %cond136 = select i1 %tobool135, i32 4, i32 6
  br label %cond.end.150

cond.false.137:                                   ; preds = %cond.false.127
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load138 = load i32, i32* %67, align 8
  %bf.lshr139 = lshr i32 %bf.load138, 16
  %bf.clear140 = and i32 %bf.lshr139, 255
  %idxprom141 = sext i32 %bf.clear140 to i64
  %arrayidx142 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom141
  %68 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %68 to i32
  %69 = load i32, i32* @target_flags, align 4
  %and144 = and i32 %69, 33554432
  %tobool145 = icmp ne i32 %and144, 0
  %cond146 = select i1 %tobool145, i32 8, i32 4
  %add = add nsw i32 %conv143, %cond146
  %sub = sub nsw i32 %add, 1
  %70 = load i32, i32* @target_flags, align 4
  %and147 = and i32 %70, 33554432
  %tobool148 = icmp ne i32 %and147, 0
  %cond149 = select i1 %tobool148, i32 8, i32 4
  %div = sdiv i32 %sub, %cond149
  br label %cond.end.150

cond.end.150:                                     ; preds = %cond.false.137, %cond.true.133
  %cond151 = phi i32 [ %cond136, %cond.true.133 ], [ %div, %cond.false.137 ]
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.end.150, %cond.true.123
  %cond153 = phi i32 [ %cond126, %cond.true.123 ], [ %cond151, %cond.end.150 ]
  br label %cond.end.154

cond.end.154:                                     ; preds = %cond.end.152, %lor.end
  %cond155 = phi i32 [ %cond116, %lor.end ], [ %cond153, %cond.end.152 ]
  store i32 %cond155, i32* %nregs, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.154
  %71 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %nregs, align 4
  %cmp156 = icmp sgt i32 %71, 0
  br i1 %cmp156, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %72 = load i32, i32* %hardregno, align 4
  %73 = load i32, i32* %nregs, align 4
  %add158 = add nsw i32 %72, %73
  %sh_prom = zext i32 %add158 to i64
  %shl = shl i64 1, %sh_prom
  %74 = load i64, i64* @referenced_regs, align 8
  %or = or i64 %74, %shl
  store i64 %or, i64* @referenced_regs, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.179

if.else:                                          ; preds = %cond.end
  %75 = load i32, i32* %regno, align 4
  %idxprom159 = sext i32 %75 to i64
  %76 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_mem, align 8
  %arrayidx160 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %76, i64 %idxprom159
  %77 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx160, align 8
  %cmp161 = icmp ne %struct.rtx_def* %77, null
  br i1 %cmp161, label %if.then.163, label %if.else.169

if.then.163:                                      ; preds = %if.else
  %78 = load i32, i32* %regno, align 4
  %idxprom164 = sext i32 %78 to i64
  %79 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_mem, align 8
  %arrayidx165 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %79, i64 %idxprom164
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx165, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 0
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %81)
  br label %if.end.178

if.else.169:                                      ; preds = %if.else
  %82 = load i32, i32* %regno, align 4
  %idxprom170 = sext i32 %82 to i64
  %83 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_address, align 8
  %arrayidx171 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %83, i64 %idxprom170
  %84 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx171, align 8
  %cmp172 = icmp ne %struct.rtx_def* %84, null
  br i1 %cmp172, label %if.then.174, label %if.end.177

if.then.174:                                      ; preds = %if.else.169
  %85 = load i32, i32* %regno, align 4
  %idxprom175 = sext i32 %85 to i64
  %86 = load %struct.rtx_def**, %struct.rtx_def*** @reg_equiv_address, align 8
  %arrayidx176 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %86, i64 %idxprom175
  %87 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx176, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %87)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.174, %if.else.169
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.163
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %while.end
  br label %for.end.225

if.end.180:                                       ; preds = %if.end.63
  %88 = load i32, i32* %code, align 4
  %idxprom181 = sext i32 %88 to i64
  %arrayidx182 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom181
  %89 = load i8*, i8** %arrayidx182, align 8
  store i8* %89, i8** %fmt, align 8
  %90 = load i32, i32* %code, align 4
  %idxprom183 = sext i32 %90 to i64
  %arrayidx184 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom183
  %91 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %91 to i32
  %sub186 = sub nsw i32 %conv185, 1
  store i32 %sub186, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.223, %if.end.180
  %92 = load i32, i32* %i, align 4
  %cmp187 = icmp sge i32 %92, 0
  br i1 %cmp187, label %for.body, label %for.end.225

for.body:                                         ; preds = %for.cond
  %93 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %93 to i64
  %94 = load i8*, i8** %fmt, align 8
  %arrayidx190 = getelementptr inbounds i8, i8* %94, i64 %idxprom189
  %95 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %95 to i32
  %cmp192 = icmp eq i32 %conv191, 101
  br i1 %cmp192, label %if.then.194, label %if.else.199

if.then.194:                                      ; preds = %for.body
  %96 = load i32, i32* %i, align 4
  %idxprom195 = sext i32 %96 to i64
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 %idxprom195
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %98)
  br label %if.end.222

if.else.199:                                      ; preds = %for.body
  %99 = load i32, i32* %i, align 4
  %idxprom200 = sext i32 %99 to i64
  %100 = load i8*, i8** %fmt, align 8
  %arrayidx201 = getelementptr inbounds i8, i8* %100, i64 %idxprom200
  %101 = load i8, i8* %arrayidx201, align 1
  %conv202 = sext i8 %101 to i32
  %cmp203 = icmp eq i32 %conv202, 69
  br i1 %cmp203, label %if.then.205, label %if.end.221

if.then.205:                                      ; preds = %if.else.199
  %102 = load i32, i32* %i, align 4
  %idxprom206 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 %idxprom206
  %rtvec = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtvec_def**
  %104 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %104, i32 0, i32 0
  %105 = load i32, i32* %num_elem, align 4
  %sub209 = sub nsw i32 %105, 1
  store i32 %sub209, i32* %j, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc, %if.then.205
  %106 = load i32, i32* %j, align 4
  %cmp211 = icmp sge i32 %106, 0
  br i1 %cmp211, label %for.body.213, label %for.end

for.body.213:                                     ; preds = %for.cond.210
  %107 = load i32, i32* %j, align 4
  %idxprom214 = sext i32 %107 to i64
  %108 = load i32, i32* %i, align 4
  %idxprom215 = sext i32 %108 to i64
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld216 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld216, i32 0, i64 %idxprom215
  %rtvec218 = bitcast %union.rtunion_def* %arrayidx217 to %struct.rtvec_def**
  %110 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec218, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %110, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom214
  %111 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx219, align 8
  call void @mark_referenced_regs(%struct.rtx_def* %111)
  br label %for.inc

for.inc:                                          ; preds = %for.body.213
  %112 = load i32, i32* %j, align 4
  %dec220 = add nsw i32 %112, -1
  store i32 %dec220, i32* %j, align 4
  br label %for.cond.210

for.end:                                          ; preds = %for.cond.210
  br label %if.end.221

if.end.221:                                       ; preds = %for.end, %if.else.199
  br label %if.end.222

if.end.222:                                       ; preds = %if.end.221, %if.then.194
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %113 = load i32, i32* %i, align 4
  %dec224 = add nsw i32 %113, -1
  store i32 %dec224, i32* %i, align 4
  br label %for.cond

for.end.225:                                      ; preds = %if.then.49, %if.end.179, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @insert_restore(%struct.insn_chain* %chain, i32 %before_p, i32 %regno, i32 %maxrestore, i32* %save_mode) #0 {
entry:
  %chain.addr = alloca %struct.insn_chain*, align 8
  %before_p.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %maxrestore.addr = alloca i32, align 4
  %save_mode.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %numregs = alloca i32, align 4
  %new = alloca %struct.insn_chain*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct.insn_chain* %chain, %struct.insn_chain** %chain.addr, align 8
  store i32 %before_p, i32* %before_p.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %maxrestore, i32* %maxrestore.addr, align 4
  store i32* %save_mode, i32** %save_mode.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %pat, align 8
  store i32 0, i32* %numregs, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx, i32 0, i64 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 647, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.insert_restore, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %maxrestore.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %ok, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32, i32* %regno.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx5, i32 0, i64 %idxprom3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  %cmp7 = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc.18

if.end.9:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.9
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %7, %8
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %9 = load i64, i64* @hard_regs_saved, align 8
  %10 = load i32, i32* %regno.addr, align 4
  %11 = load i32, i32* %j, align 4
  %add = add nsw i32 %10, %11
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %9, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body.12
  store i32 0, i32* %ok, align 4
  br label %for.end

if.end.14:                                        ; preds = %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.13, %for.cond.10
  %13 = load i32, i32* %ok, align 4
  %tobool15 = icmp ne i32 %13, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %for.end
  br label %for.inc.18

if.end.17:                                        ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  store i32 %14, i32* %numregs, align 4
  br label %for.end.19

for.inc.18:                                       ; preds = %if.then.16, %if.then.8
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %if.end.17, %for.cond
  %16 = load i32, i32* %numregs, align 4
  %idxprom20 = zext i32 %16 to i64
  %17 = load i32, i32* %regno.addr, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx22, i32 0, i64 %idxprom20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %mem, align 8
  %19 = load i32, i32* %regno.addr, align 4
  %idxprom24 = sext i32 %19 to i64
  %20 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %20, i64 %idxprom24
  %21 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp ne i32 %21, 0
  br i1 %cmp26, label %land.lhs.true, label %if.end.92

land.lhs.true:                                    ; preds = %for.end.19
  %22 = load i32, i32* %regno.addr, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %23, i64 %idxprom27
  %24 = load i32, i32* %arrayidx28, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp29 = icmp ne i32 %24, %bf.clear
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.92

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %27 = load i32, i32* %numregs, align 4
  %28 = load i32, i32* %regno.addr, align 4
  %cmp31 = icmp sge i32 %28, 8
  br i1 %cmp31, label %land.lhs.true.32, label %lor.lhs.false

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %29 = load i32, i32* %regno.addr, align 4
  %cmp33 = icmp sle i32 %29, 15
  br i1 %cmp33, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.32, %land.lhs.true.30
  %30 = load i32, i32* %regno.addr, align 4
  %cmp34 = icmp sge i32 %30, 21
  br i1 %cmp34, label %land.lhs.true.35, label %lor.lhs.false.37

land.lhs.true.35:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* %regno.addr, align 4
  %cmp36 = icmp sle i32 %31, 28
  br i1 %cmp36, label %cond.true, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %land.lhs.true.35, %lor.lhs.false
  %32 = load i32, i32* %regno.addr, align 4
  %cmp38 = icmp sge i32 %32, 45
  br i1 %cmp38, label %land.lhs.true.39, label %lor.lhs.false.41

land.lhs.true.39:                                 ; preds = %lor.lhs.false.37
  %33 = load i32, i32* %regno.addr, align 4
  %cmp40 = icmp sle i32 %33, 52
  br i1 %cmp40, label %cond.true, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %land.lhs.true.39, %lor.lhs.false.37
  %34 = load i32, i32* %regno.addr, align 4
  %cmp42 = icmp sge i32 %34, 29
  br i1 %cmp42, label %land.lhs.true.43, label %cond.false

land.lhs.true.43:                                 ; preds = %lor.lhs.false.41
  %35 = load i32, i32* %regno.addr, align 4
  %cmp44 = icmp sle i32 %35, 36
  br i1 %cmp44, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.43, %land.lhs.true.39, %land.lhs.true.35, %land.lhs.true.32
  %36 = load i32, i32* %regno.addr, align 4
  %idxprom45 = sext i32 %36 to i64
  %37 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %37, i64 %idxprom45
  %38 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom47
  %39 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp eq i32 %39, 5
  br i1 %cmp49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %40 = load i32, i32* %regno.addr, align 4
  %idxprom50 = sext i32 %40 to i64
  %41 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %41, i64 %idxprom50
  %42 = load i32, i32* %arrayidx51, align 4
  %idxprom52 = sext i32 %42 to i64
  %arrayidx53 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom52
  %43 = load i32, i32* %arrayidx53, align 4
  %cmp54 = icmp eq i32 %43, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %44 = phi i1 [ true, %cond.true ], [ %cmp54, %lor.rhs ]
  %cond = select i1 %44, i32 2, i32 1
  br label %cond.end.85

cond.false:                                       ; preds = %land.lhs.true.43, %lor.lhs.false.41
  %45 = load i32, i32* %regno.addr, align 4
  %idxprom55 = sext i32 %45 to i64
  %46 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %46, i64 %idxprom55
  %47 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %47, 18
  br i1 %cmp57, label %cond.true.58, label %cond.false.62

cond.true.58:                                     ; preds = %cond.false
  %48 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %48, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 2, i32 3
  br label %cond.end.83

cond.false.62:                                    ; preds = %cond.false
  %49 = load i32, i32* %regno.addr, align 4
  %idxprom63 = sext i32 %49 to i64
  %50 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %50, i64 %idxprom63
  %51 = load i32, i32* %arrayidx64, align 4
  %cmp65 = icmp eq i32 %51, 24
  br i1 %cmp65, label %cond.true.66, label %cond.false.70

cond.true.66:                                     ; preds = %cond.false.62
  %52 = load i32, i32* @target_flags, align 4
  %and67 = and i32 %52, 33554432
  %tobool68 = icmp ne i32 %and67, 0
  %cond69 = select i1 %tobool68, i32 4, i32 6
  br label %cond.end

cond.false.70:                                    ; preds = %cond.false.62
  %53 = load i32, i32* %regno.addr, align 4
  %idxprom71 = sext i32 %53 to i64
  %54 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %54, i64 %idxprom71
  %55 = load i32, i32* %arrayidx72, align 4
  %idxprom73 = sext i32 %55 to i64
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom73
  %56 = load i8, i8* %arrayidx74, align 1
  %conv = zext i8 %56 to i32
  %57 = load i32, i32* @target_flags, align 4
  %and75 = and i32 %57, 33554432
  %tobool76 = icmp ne i32 %and75, 0
  %cond77 = select i1 %tobool76, i32 8, i32 4
  %add78 = add nsw i32 %conv, %cond77
  %sub = sub nsw i32 %add78, 1
  %58 = load i32, i32* @target_flags, align 4
  %and79 = and i32 %58, 33554432
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 8, i32 4
  %div = sdiv i32 %sub, %cond81
  br label %cond.end

cond.end:                                         ; preds = %cond.false.70, %cond.true.66
  %cond82 = phi i32 [ %cond69, %cond.true.66 ], [ %div, %cond.false.70 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end, %cond.true.58
  %cond84 = phi i32 [ %cond61, %cond.true.58 ], [ %cond82, %cond.end ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %lor.end
  %cond86 = phi i32 [ %cond, %lor.end ], [ %cond84, %cond.end.83 ]
  %cmp87 = icmp eq i32 %27, %cond86
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %cond.end.85
  %59 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %60 = load i32, i32* %regno.addr, align 4
  %idxprom90 = sext i32 %60 to i64
  %61 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %61, i64 %idxprom90
  %62 = load i32, i32* %arrayidx91, align 4
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %59, i32 %62, i64 0, i32 1, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %mem, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %cond.end.85, %land.lhs.true, %for.end.19
  %63 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load93 = load i32, i32* %64, align 8
  %bf.lshr94 = lshr i32 %bf.load93, 16
  %bf.clear95 = and i32 %bf.lshr94, 255
  %65 = load i32, i32* %regno.addr, align 4
  %call96 = call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear95, i32 %65)
  %66 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %call97 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %call96, %struct.rtx_def* %66)
  store %struct.rtx_def* %call97, %struct.rtx_def** %pat, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load98 = load i32, i32* %68, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %idxprom101 = zext i32 %bf.clear100 to i64
  %69 = load i32, i32* %regno.addr, align 4
  %idxprom102 = sext i32 %69 to i64
  %arrayidx103 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_restore_code, i32 0, i64 %idxprom102
  %arrayidx104 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx103, i32 0, i64 %idxprom101
  %70 = load i32, i32* %arrayidx104, align 4
  store i32 %70, i32* %code, align 4
  %71 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %72 = load i32, i32* %before_p.addr, align 4
  %73 = load i32, i32* %code, align 4
  %74 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call105 = call %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %71, i32 %72, i32 %73, %struct.rtx_def* %74)
  store %struct.insn_chain* %call105, %struct.insn_chain** %new, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.116, %if.end.92
  %75 = load i32, i32* %k, align 4
  %76 = load i32, i32* %i, align 4
  %cmp107 = icmp slt i32 %75, %76
  br i1 %cmp107, label %for.body.109, label %for.end.118

for.body.109:                                     ; preds = %for.cond.106
  %77 = load i32, i32* %regno.addr, align 4
  %78 = load i32, i32* %k, align 4
  %add110 = add nsw i32 %77, %78
  %sh_prom111 = zext i32 %add110 to i64
  %shl112 = shl i64 1, %sh_prom111
  %neg = xor i64 %shl112, -1
  %79 = load i64, i64* @hard_regs_saved, align 8
  %and113 = and i64 %79, %neg
  store i64 %and113, i64* @hard_regs_saved, align 8
  %80 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %80, i32 0, i32 6
  %81 = load i32, i32* %regno.addr, align 4
  %82 = load i32, i32* %k, align 4
  %add114 = add nsw i32 %81, %82
  call void @bitmap_set_bit(%struct.bitmap_head_def* %dead_or_set, i32 %add114)
  %83 = load i32, i32* @n_regs_saved, align 4
  %dec115 = add nsw i32 %83, -1
  store i32 %dec115, i32* @n_regs_saved, align 4
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.109
  %84 = load i32, i32* %k, align 4
  %inc117 = add nsw i32 %84, 1
  store i32 %inc117, i32* %k, align 4
  br label %for.cond.106

for.end.118:                                      ; preds = %for.cond.106
  %85 = load i32, i32* %numregs, align 4
  %sub119 = sub i32 %85, 1
  ret i32 %sub119
}

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_set_regs(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %inner = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %inner, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp ne i32 %bf.clear4, 61
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %9 = load i32, i32* %rtuint, align 4
  %cmp8 = icmp uge i32 %9, 53
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call = call i32 @subreg_hard_regno(%struct.rtx_def* %10, i32 1)
  store i32 %call, i32* %regno, align 4
  br label %if.end.23

if.else:                                          ; preds = %entry
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %land.lhs.true, label %if.else.21

land.lhs.true:                                    ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %14 = load i32, i32* %rtuint15, align 4
  %cmp16 = icmp ult i32 %14, 53
  br i1 %cmp16, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtuint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %16 = load i32, i32* %rtuint20, align 4
  store i32 %16, i32* %regno, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %land.lhs.true, %if.else
  br label %for.end

if.end.22:                                        ; preds = %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  %17 = load i32, i32* %regno, align 4
  %18 = load i32, i32* %regno, align 4
  %cmp24 = icmp sge i32 %18, 8
  br i1 %cmp24, label %land.lhs.true.25, label %lor.lhs.false.27

land.lhs.true.25:                                 ; preds = %if.end.23
  %19 = load i32, i32* %regno, align 4
  %cmp26 = icmp sle i32 %19, 15
  br i1 %cmp26, label %cond.true, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %land.lhs.true.25, %if.end.23
  %20 = load i32, i32* %regno, align 4
  %cmp28 = icmp sge i32 %20, 21
  br i1 %cmp28, label %land.lhs.true.29, label %lor.lhs.false.31

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %21 = load i32, i32* %regno, align 4
  %cmp30 = icmp sle i32 %21, 28
  br i1 %cmp30, label %cond.true, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true.29, %lor.lhs.false.27
  %22 = load i32, i32* %regno, align 4
  %cmp32 = icmp sge i32 %22, 45
  br i1 %cmp32, label %land.lhs.true.33, label %lor.lhs.false.35

land.lhs.true.33:                                 ; preds = %lor.lhs.false.31
  %23 = load i32, i32* %regno, align 4
  %cmp34 = icmp sle i32 %23, 52
  br i1 %cmp34, label %cond.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.33, %lor.lhs.false.31
  %24 = load i32, i32* %regno, align 4
  %cmp36 = icmp sge i32 %24, 29
  br i1 %cmp36, label %land.lhs.true.37, label %cond.false

land.lhs.true.37:                                 ; preds = %lor.lhs.false.35
  %25 = load i32, i32* %regno, align 4
  %cmp38 = icmp sle i32 %25, 36
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.37, %land.lhs.true.33, %land.lhs.true.29, %land.lhs.true.25
  %26 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %26 to i64
  %arrayidx39 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %27 = load i32, i32* %arrayidx39, align 4
  %cmp40 = icmp eq i32 %27, 5
  br i1 %cmp40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %28 = load i32, i32* %mode, align 4
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom41
  %29 = load i32, i32* %arrayidx42, align 4
  %cmp43 = icmp eq i32 %29, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %30 = phi i1 [ true, %cond.true ], [ %cmp43, %lor.rhs ]
  %cond = select i1 %30, i32 2, i32 1
  br label %cond.end.65

cond.false:                                       ; preds = %land.lhs.true.37, %lor.lhs.false.35
  %31 = load i32, i32* %mode, align 4
  %cmp44 = icmp eq i32 %31, 18
  br i1 %cmp44, label %cond.true.45, label %cond.false.47

cond.true.45:                                     ; preds = %cond.false
  %32 = load i32, i32* @target_flags, align 4
  %and = and i32 %32, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond46 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.63

cond.false.47:                                    ; preds = %cond.false
  %33 = load i32, i32* %mode, align 4
  %cmp48 = icmp eq i32 %33, 24
  br i1 %cmp48, label %cond.true.49, label %cond.false.53

cond.true.49:                                     ; preds = %cond.false.47
  %34 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %34, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 4, i32 6
  br label %cond.end

cond.false.53:                                    ; preds = %cond.false.47
  %35 = load i32, i32* %mode, align 4
  %idxprom54 = sext i32 %35 to i64
  %arrayidx55 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom54
  %36 = load i8, i8* %arrayidx55, align 1
  %conv = zext i8 %36 to i32
  %37 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %37, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 8, i32 4
  %add = add nsw i32 %conv, %cond58
  %sub = sub nsw i32 %add, 1
  %38 = load i32, i32* @target_flags, align 4
  %and59 = and i32 %38, 33554432
  %tobool60 = icmp ne i32 %and59, 0
  %cond61 = select i1 %tobool60, i32 8, i32 4
  %div = sdiv i32 %sub, %cond61
  br label %cond.end

cond.end:                                         ; preds = %cond.false.53, %cond.true.49
  %cond62 = phi i32 [ %cond52, %cond.true.49 ], [ %div, %cond.false.53 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end, %cond.true.45
  %cond64 = phi i32 [ %cond46, %cond.true.45 ], [ %cond62, %cond.end ]
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.end.63, %lor.end
  %cond66 = phi i32 [ %cond, %lor.end ], [ %cond64, %cond.end.63 ]
  %add67 = add nsw i32 %17, %cond66
  store i32 %add67, i32* %endregno, align 4
  %39 = load i32, i32* %regno, align 4
  store i32 %39, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.65
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %endregno, align 4
  %cmp68 = icmp slt i32 %40, %41
  br i1 %cmp68, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %42 to i64
  %shl = shl i64 1, %sh_prom
  %43 = load i64, i64* @this_insn_sets, align 8
  %or = or i64 %43, %shl
  store i64 %or, i64* @this_insn_sets, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.9, %if.else.21, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @insert_save(%struct.insn_chain* %chain, i32 %before_p, i32 %regno, i64* %to_save, i32* %save_mode) #0 {
entry:
  %chain.addr = alloca %struct.insn_chain*, align 8
  %before_p.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %to_save.addr = alloca i64*, align 8
  %save_mode.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %numregs = alloca i32, align 4
  %new = alloca %struct.insn_chain*, align 8
  %mem = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct.insn_chain* %chain, %struct.insn_chain** %chain.addr, align 8
  store i32 %before_p, i32* %before_p.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i64* %to_save, i64** %to_save.addr, align 8
  store i32* %save_mode, i32** %save_mode.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %pat, align 8
  store i32 0, i32* %numregs, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx, i32 0, i64 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 724, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.insert_save, i32 0, i32 0)) #3
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = sdiv i32 16, %cond
  store i32 %div, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end
  %3 = load i32, i32* %i, align 4
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %ok, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %5 = load i32, i32* %regno.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom4
  %arrayidx6 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx5, i32 0, i64 %idxprom3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  %cmp7 = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc.20

if.end.9:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.9
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %7, %8
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %9 = load i64*, i64** %to_save.addr, align 8
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* %regno.addr, align 4
  %12 = load i32, i32* %j, align 4
  %add = add nsw i32 %11, %12
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 1, %sh_prom
  %and13 = and i64 %10, %shl
  %tobool14 = icmp ne i64 %and13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %for.body.12
  store i32 0, i32* %ok, align 4
  br label %for.end

if.end.16:                                        ; preds = %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.15, %for.cond.10
  %14 = load i32, i32* %ok, align 4
  %tobool17 = icmp ne i32 %14, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %for.end
  br label %for.inc.20

if.end.19:                                        ; preds = %for.end
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %numregs, align 4
  br label %for.end.21

for.inc.20:                                       ; preds = %if.then.18, %if.then.8
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %if.end.19, %for.cond
  %17 = load i32, i32* %numregs, align 4
  %idxprom22 = zext i32 %17 to i64
  %18 = load i32, i32* %regno.addr, align 4
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [53 x [5 x %struct.rtx_def*]], [53 x [5 x %struct.rtx_def*]]* @regno_save_mem, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* %arrayidx24, i32 0, i64 %idxprom22
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %mem, align 8
  %20 = load i32, i32* %regno.addr, align 4
  %idxprom26 = sext i32 %20 to i64
  %21 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %21, i64 %idxprom26
  %22 = load i32, i32* %arrayidx27, align 4
  %cmp28 = icmp ne i32 %22, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end.96

land.lhs.true:                                    ; preds = %for.end.21
  %23 = load i32, i32* %regno.addr, align 4
  %idxprom29 = sext i32 %23 to i64
  %24 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx30 = getelementptr inbounds i32, i32* %24, i64 %idxprom29
  %25 = load i32, i32* %arrayidx30, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp31 = icmp ne i32 %25, %bf.clear
  br i1 %cmp31, label %land.lhs.true.32, label %if.end.96

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %28 = load i32, i32* %numregs, align 4
  %29 = load i32, i32* %regno.addr, align 4
  %cmp33 = icmp sge i32 %29, 8
  br i1 %cmp33, label %land.lhs.true.34, label %lor.lhs.false

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %30 = load i32, i32* %regno.addr, align 4
  %cmp35 = icmp sle i32 %30, 15
  br i1 %cmp35, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.34, %land.lhs.true.32
  %31 = load i32, i32* %regno.addr, align 4
  %cmp36 = icmp sge i32 %31, 21
  br i1 %cmp36, label %land.lhs.true.37, label %lor.lhs.false.39

land.lhs.true.37:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %regno.addr, align 4
  %cmp38 = icmp sle i32 %32, 28
  br i1 %cmp38, label %cond.true, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %land.lhs.true.37, %lor.lhs.false
  %33 = load i32, i32* %regno.addr, align 4
  %cmp40 = icmp sge i32 %33, 45
  br i1 %cmp40, label %land.lhs.true.41, label %lor.lhs.false.43

land.lhs.true.41:                                 ; preds = %lor.lhs.false.39
  %34 = load i32, i32* %regno.addr, align 4
  %cmp42 = icmp sle i32 %34, 52
  br i1 %cmp42, label %cond.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.41, %lor.lhs.false.39
  %35 = load i32, i32* %regno.addr, align 4
  %cmp44 = icmp sge i32 %35, 29
  br i1 %cmp44, label %land.lhs.true.45, label %cond.false

land.lhs.true.45:                                 ; preds = %lor.lhs.false.43
  %36 = load i32, i32* %regno.addr, align 4
  %cmp46 = icmp sle i32 %36, 36
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.45, %land.lhs.true.41, %land.lhs.true.37, %land.lhs.true.34
  %37 = load i32, i32* %regno.addr, align 4
  %idxprom47 = sext i32 %37 to i64
  %38 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %38, i64 %idxprom47
  %39 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = sext i32 %39 to i64
  %arrayidx50 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom49
  %40 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp eq i32 %40, 5
  br i1 %cmp51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %41 = load i32, i32* %regno.addr, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %42, i64 %idxprom52
  %43 = load i32, i32* %arrayidx53, align 4
  %idxprom54 = sext i32 %43 to i64
  %arrayidx55 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom54
  %44 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp eq i32 %44, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %45 = phi i1 [ true, %cond.true ], [ %cmp56, %lor.rhs ]
  %cond57 = select i1 %45, i32 2, i32 1
  br label %cond.end.89

cond.false:                                       ; preds = %land.lhs.true.45, %lor.lhs.false.43
  %46 = load i32, i32* %regno.addr, align 4
  %idxprom58 = sext i32 %46 to i64
  %47 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %47, i64 %idxprom58
  %48 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp eq i32 %48, 18
  br i1 %cmp60, label %cond.true.61, label %cond.false.65

cond.true.61:                                     ; preds = %cond.false
  %49 = load i32, i32* @target_flags, align 4
  %and62 = and i32 %49, 33554432
  %tobool63 = icmp ne i32 %and62, 0
  %cond64 = select i1 %tobool63, i32 2, i32 3
  br label %cond.end.87

cond.false.65:                                    ; preds = %cond.false
  %50 = load i32, i32* %regno.addr, align 4
  %idxprom66 = sext i32 %50 to i64
  %51 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx67 = getelementptr inbounds i32, i32* %51, i64 %idxprom66
  %52 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp eq i32 %52, 24
  br i1 %cmp68, label %cond.true.69, label %cond.false.73

cond.true.69:                                     ; preds = %cond.false.65
  %53 = load i32, i32* @target_flags, align 4
  %and70 = and i32 %53, 33554432
  %tobool71 = icmp ne i32 %and70, 0
  %cond72 = select i1 %tobool71, i32 4, i32 6
  br label %cond.end

cond.false.73:                                    ; preds = %cond.false.65
  %54 = load i32, i32* %regno.addr, align 4
  %idxprom74 = sext i32 %54 to i64
  %55 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %55, i64 %idxprom74
  %56 = load i32, i32* %arrayidx75, align 4
  %idxprom76 = sext i32 %56 to i64
  %arrayidx77 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom76
  %57 = load i8, i8* %arrayidx77, align 1
  %conv = zext i8 %57 to i32
  %58 = load i32, i32* @target_flags, align 4
  %and78 = and i32 %58, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  %cond80 = select i1 %tobool79, i32 8, i32 4
  %add81 = add nsw i32 %conv, %cond80
  %sub = sub nsw i32 %add81, 1
  %59 = load i32, i32* @target_flags, align 4
  %and82 = and i32 %59, 33554432
  %tobool83 = icmp ne i32 %and82, 0
  %cond84 = select i1 %tobool83, i32 8, i32 4
  %div85 = sdiv i32 %sub, %cond84
  br label %cond.end

cond.end:                                         ; preds = %cond.false.73, %cond.true.69
  %cond86 = phi i32 [ %cond72, %cond.true.69 ], [ %div85, %cond.false.73 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end, %cond.true.61
  %cond88 = phi i32 [ %cond64, %cond.true.61 ], [ %cond86, %cond.end ]
  br label %cond.end.89

cond.end.89:                                      ; preds = %cond.end.87, %lor.end
  %cond90 = phi i32 [ %cond57, %lor.end ], [ %cond88, %cond.end.87 ]
  %cmp91 = icmp eq i32 %28, %cond90
  br i1 %cmp91, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %cond.end.89
  %60 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %61 = load i32, i32* %regno.addr, align 4
  %idxprom94 = sext i32 %61 to i64
  %62 = load i32*, i32** %save_mode.addr, align 8
  %arrayidx95 = getelementptr inbounds i32, i32* %62, i64 %idxprom94
  %63 = load i32, i32* %arrayidx95, align 4
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %60, i32 %63, i64 0, i32 1, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %mem, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %cond.end.89, %land.lhs.true, %for.end.21
  %64 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load97 = load i32, i32* %66, align 8
  %bf.lshr98 = lshr i32 %bf.load97, 16
  %bf.clear99 = and i32 %bf.lshr98, 255
  %67 = load i32, i32* %regno.addr, align 4
  %call100 = call %struct.rtx_def* @gen_rtx_REG(i32 %bf.clear99, i32 %67)
  %call101 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %64, %struct.rtx_def* %call100)
  store %struct.rtx_def* %call101, %struct.rtx_def** %pat, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %mem, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load102 = load i32, i32* %69, align 8
  %bf.lshr103 = lshr i32 %bf.load102, 16
  %bf.clear104 = and i32 %bf.lshr103, 255
  %idxprom105 = zext i32 %bf.clear104 to i64
  %70 = load i32, i32* %regno.addr, align 4
  %idxprom106 = sext i32 %70 to i64
  %arrayidx107 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* @reg_save_code, i32 0, i64 %idxprom106
  %arrayidx108 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx107, i32 0, i64 %idxprom105
  %71 = load i32, i32* %arrayidx108, align 4
  store i32 %71, i32* %code, align 4
  %72 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %73 = load i32, i32* %before_p.addr, align 4
  %74 = load i32, i32* %code, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call109 = call %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %72, i32 %73, i32 %74, %struct.rtx_def* %75)
  store %struct.insn_chain* %call109, %struct.insn_chain** %new, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.119, %if.end.96
  %76 = load i32, i32* %k, align 4
  %77 = load i32, i32* %numregs, align 4
  %cmp111 = icmp ult i32 %76, %77
  br i1 %cmp111, label %for.body.113, label %for.end.121

for.body.113:                                     ; preds = %for.cond.110
  %78 = load i32, i32* %regno.addr, align 4
  %79 = load i32, i32* %k, align 4
  %add114 = add i32 %78, %79
  %sh_prom115 = zext i32 %add114 to i64
  %shl116 = shl i64 1, %sh_prom115
  %80 = load i64, i64* @hard_regs_saved, align 8
  %or = or i64 %80, %shl116
  store i64 %or, i64* @hard_regs_saved, align 8
  %81 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %81, i32 0, i32 6
  %82 = load i32, i32* %regno.addr, align 4
  %83 = load i32, i32* %k, align 4
  %add117 = add i32 %82, %83
  call void @bitmap_set_bit(%struct.bitmap_head_def* %dead_or_set, i32 %add117)
  %84 = load i32, i32* @n_regs_saved, align 4
  %inc118 = add nsw i32 %84, 1
  store i32 %inc118, i32* @n_regs_saved, align 4
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.113
  %85 = load i32, i32* %k, align 4
  %inc120 = add i32 %85, 1
  store i32 %inc120, i32* %k, align 4
  br label %for.cond.110

for.end.121:                                      ; preds = %for.cond.110
  %86 = load i32, i32* %numregs, align 4
  %sub122 = sub i32 %86, 1
  ret i32 %sub122
}

declare i32 @subreg_hard_regno(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.insn_chain* @insert_one_insn(%struct.insn_chain* %chain, i32 %before_p, i32 %code, %struct.rtx_def* %pat) #0 {
entry:
  %chain.addr = alloca %struct.insn_chain*, align 8
  %before_p.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %pat.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.insn_chain*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.insn_chain* %chain, %struct.insn_chain** %chain.addr, align 8
  store i32 %before_p, i32* %before_p.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  %0 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %insn1 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %0, i32 0, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %call = call %struct.insn_chain* @new_insn_chain()
  store %struct.insn_chain* %call, %struct.insn_chain** %new, align 8
  %2 = load i32, i32* %before_p.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else.131

if.then:                                          ; preds = %entry
  %3 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %prev = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %3, i32 0, i32 1
  %4 = load %struct.insn_chain*, %struct.insn_chain** %prev, align 8
  %5 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %prev2 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %5, i32 0, i32 1
  store %struct.insn_chain* %4, %struct.insn_chain** %prev2, align 8
  %6 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %prev3 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %6, i32 0, i32 1
  %7 = load %struct.insn_chain*, %struct.insn_chain** %prev3, align 8
  %cmp = icmp ne %struct.insn_chain* %7, null
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %9 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %prev5 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %9, i32 0, i32 1
  %10 = load %struct.insn_chain*, %struct.insn_chain** %prev5, align 8
  %next = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %10, i32 0, i32 0
  store %struct.insn_chain* %8, %struct.insn_chain** %next, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  store %struct.insn_chain* %11, %struct.insn_chain** @reload_insn_chain, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %12 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %13 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %prev6 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %13, i32 0, i32 1
  store %struct.insn_chain* %12, %struct.insn_chain** %prev6, align 8
  %14 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %15 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %next7 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %15, i32 0, i32 0
  store %struct.insn_chain* %14, %struct.insn_chain** %next7, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call8 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %16, %struct.rtx_def* %17)
  %18 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %insn9 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %18, i32 0, i32 4
  store %struct.rtx_def* %call8, %struct.rtx_def** %insn9, align 8
  %19 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %live_throughout = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %19, i32 0, i32 5
  %20 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %live_throughout10 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %20, i32 0, i32 5
  call void @bitmap_copy(%struct.bitmap_head_def* %live_throughout, %struct.bitmap_head_def* %live_throughout10)
  %21 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %insn11 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %21, i32 0, i32 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn11, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %link, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %if.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool12 = icmp ne %struct.rtx_def* %24, null
  br i1 %tobool12, label %for.body, label %for.end.116

for.body:                                         ; preds = %for.cond
  %25 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load = load i32, i32* %26, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp13 = icmp eq i32 %bf.clear, 1
  br i1 %cmp13, label %if.then.14, label %if.end.111

if.then.14:                                       ; preds = %for.body
  %27 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %reg, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load18 = load i32, i32* %30, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp ne i32 %bf.clear19, 61
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.then.14
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.insert_one_insn, i32 0, i32 0)) #3
  unreachable

if.end.22:                                        ; preds = %if.then.14
  %31 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %32 = load i32, i32* %rtuint, align 4
  store i32 %32, i32* %regno, align 4
  %33 = load i32, i32* %regno, align 4
  %cmp25 = icmp sge i32 %33, 53
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.22
  %34 = load i32, i32* %regno, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i16*, i16** @reg_renumber, align 8
  %arrayidx27 = getelementptr inbounds i16, i16* %35, i64 %idxprom
  %36 = load i16, i16* %arrayidx27, align 2
  %conv = sext i16 %36 to i32
  store i32 %conv, i32* %regno, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.22
  %37 = load i32, i32* %regno, align 4
  %cmp29 = icmp slt i32 %37, 0
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  br label %for.inc.112

if.end.32:                                        ; preds = %if.end.28
  %38 = load i32, i32* %regno, align 4
  %cmp33 = icmp sge i32 %38, 8
  br i1 %cmp33, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.32
  %39 = load i32, i32* %regno, align 4
  %cmp35 = icmp sle i32 %39, 15
  br i1 %cmp35, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.32
  %40 = load i32, i32* %regno, align 4
  %cmp37 = icmp sge i32 %40, 21
  br i1 %cmp37, label %land.lhs.true.39, label %lor.lhs.false.42

land.lhs.true.39:                                 ; preds = %lor.lhs.false
  %41 = load i32, i32* %regno, align 4
  %cmp40 = icmp sle i32 %41, 28
  br i1 %cmp40, label %cond.true, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %land.lhs.true.39, %lor.lhs.false
  %42 = load i32, i32* %regno, align 4
  %cmp43 = icmp sge i32 %42, 45
  br i1 %cmp43, label %land.lhs.true.45, label %lor.lhs.false.48

land.lhs.true.45:                                 ; preds = %lor.lhs.false.42
  %43 = load i32, i32* %regno, align 4
  %cmp46 = icmp sle i32 %43, 52
  br i1 %cmp46, label %cond.true, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %land.lhs.true.45, %lor.lhs.false.42
  %44 = load i32, i32* %regno, align 4
  %cmp49 = icmp sge i32 %44, 29
  br i1 %cmp49, label %land.lhs.true.51, label %cond.false

land.lhs.true.51:                                 ; preds = %lor.lhs.false.48
  %45 = load i32, i32* %regno, align 4
  %cmp52 = icmp sle i32 %45, 36
  br i1 %cmp52, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.51, %land.lhs.true.45, %land.lhs.true.39, %land.lhs.true
  %46 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load54 = load i32, i32* %47, align 8
  %bf.lshr55 = lshr i32 %bf.load54, 16
  %bf.clear56 = and i32 %bf.lshr55, 255
  %idxprom57 = sext i32 %bf.clear56 to i64
  %arrayidx58 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom57
  %48 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %48, 5
  br i1 %cmp59, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load61 = load i32, i32* %50, align 8
  %bf.lshr62 = lshr i32 %bf.load61, 16
  %bf.clear63 = and i32 %bf.lshr62, 255
  %idxprom64 = sext i32 %bf.clear63 to i64
  %arrayidx65 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom64
  %51 = load i32, i32* %arrayidx65, align 4
  %cmp66 = icmp eq i32 %51, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %52 = phi i1 [ true, %cond.true ], [ %cmp66, %lor.rhs ]
  %cond = select i1 %52, i32 2, i32 1
  br label %cond.end.102

cond.false:                                       ; preds = %land.lhs.true.51, %lor.lhs.false.48
  %53 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load68 = load i32, i32* %54, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 16
  %bf.clear70 = and i32 %bf.lshr69, 255
  %cmp71 = icmp eq i32 %bf.clear70, 18
  br i1 %cmp71, label %cond.true.73, label %cond.false.76

cond.true.73:                                     ; preds = %cond.false
  %55 = load i32, i32* @target_flags, align 4
  %and = and i32 %55, 33554432
  %tobool74 = icmp ne i32 %and, 0
  %cond75 = select i1 %tobool74, i32 2, i32 3
  br label %cond.end.100

cond.false.76:                                    ; preds = %cond.false
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load77 = load i32, i32* %57, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  %cmp80 = icmp eq i32 %bf.clear79, 24
  br i1 %cmp80, label %cond.true.82, label %cond.false.86

cond.true.82:                                     ; preds = %cond.false.76
  %58 = load i32, i32* @target_flags, align 4
  %and83 = and i32 %58, 33554432
  %tobool84 = icmp ne i32 %and83, 0
  %cond85 = select i1 %tobool84, i32 4, i32 6
  br label %cond.end

cond.false.86:                                    ; preds = %cond.false.76
  %59 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load87 = load i32, i32* %60, align 8
  %bf.lshr88 = lshr i32 %bf.load87, 16
  %bf.clear89 = and i32 %bf.lshr88, 255
  %idxprom90 = sext i32 %bf.clear89 to i64
  %arrayidx91 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom90
  %61 = load i8, i8* %arrayidx91, align 1
  %conv92 = zext i8 %61 to i32
  %62 = load i32, i32* @target_flags, align 4
  %and93 = and i32 %62, 33554432
  %tobool94 = icmp ne i32 %and93, 0
  %cond95 = select i1 %tobool94, i32 8, i32 4
  %add = add nsw i32 %conv92, %cond95
  %sub = sub nsw i32 %add, 1
  %63 = load i32, i32* @target_flags, align 4
  %and96 = and i32 %63, 33554432
  %tobool97 = icmp ne i32 %and96, 0
  %cond98 = select i1 %tobool97, i32 8, i32 4
  %div = sdiv i32 %sub, %cond98
  br label %cond.end

cond.end:                                         ; preds = %cond.false.86, %cond.true.82
  %cond99 = phi i32 [ %cond85, %cond.true.82 ], [ %div, %cond.false.86 ]
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.end, %cond.true.73
  %cond101 = phi i32 [ %cond75, %cond.true.73 ], [ %cond99, %cond.end ]
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.end.100, %lor.end
  %cond103 = phi i32 [ %cond, %lor.end ], [ %cond101, %cond.end.100 ]
  %sub104 = sub nsw i32 %cond103, 1
  store i32 %sub104, i32* %i, align 4
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc, %cond.end.102
  %64 = load i32, i32* %i, align 4
  %cmp106 = icmp sge i32 %64, 0
  br i1 %cmp106, label %for.body.108, label %for.end

for.body.108:                                     ; preds = %for.cond.105
  %65 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %live_throughout109 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %65, i32 0, i32 5
  %66 = load i32, i32* %regno, align 4
  %67 = load i32, i32* %i, align 4
  %add110 = add nsw i32 %66, %67
  call void @bitmap_set_bit(%struct.bitmap_head_def* %live_throughout109, i32 %add110)
  br label %for.inc

for.inc:                                          ; preds = %for.body.108
  %68 = load i32, i32* %i, align 4
  %dec = add nsw i32 %68, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.105

for.end:                                          ; preds = %for.cond.105
  br label %if.end.111

if.end.111:                                       ; preds = %for.end, %for.body
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111, %if.then.31
  %69 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 1
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %link, align 8
  br label %for.cond

for.end.116:                                      ; preds = %for.cond
  %71 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %dead_or_set = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %71, i32 0, i32 6
  call void @bitmap_clear(%struct.bitmap_head_def* %dead_or_set)
  %72 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %insn117 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %72, i32 0, i32 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn117, align 8
  %74 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %block = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %74, i32 0, i32 3
  %75 = load i32, i32* %block, align 4
  %idxprom118 = sext i32 %75 to i64
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %76, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx119 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom118
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx119, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 0
  %78 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp120 = icmp eq %struct.rtx_def* %73, %78
  br i1 %cmp120, label %if.then.122, label %if.end.130

if.then.122:                                      ; preds = %for.end.116
  %79 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %insn123 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %79, i32 0, i32 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn123, align 8
  %81 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %block124 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %81, i32 0, i32 3
  %82 = load i32, i32* %block124, align 4
  %idxprom125 = sext i32 %82 to i64
  %83 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data126 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %83, i32 0, i32 4
  %bb127 = bitcast %union.varray_data_tag* %data126 to [1 x %struct.basic_block_def*]*
  %arrayidx128 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb127, i32 0, i64 %idxprom125
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx128, align 8
  %head129 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i32 0, i32 0
  store %struct.rtx_def* %80, %struct.rtx_def** %head129, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.122, %for.end.116
  br label %if.end.170

if.else.131:                                      ; preds = %entry
  %85 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %next132 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %85, i32 0, i32 0
  %86 = load %struct.insn_chain*, %struct.insn_chain** %next132, align 8
  %87 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %next133 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %87, i32 0, i32 0
  store %struct.insn_chain* %86, %struct.insn_chain** %next133, align 8
  %88 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %next134 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %88, i32 0, i32 0
  %89 = load %struct.insn_chain*, %struct.insn_chain** %next134, align 8
  %cmp135 = icmp ne %struct.insn_chain* %89, null
  br i1 %cmp135, label %if.then.137, label %if.end.140

if.then.137:                                      ; preds = %if.else.131
  %90 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %91 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %next138 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %91, i32 0, i32 0
  %92 = load %struct.insn_chain*, %struct.insn_chain** %next138, align 8
  %prev139 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %92, i32 0, i32 1
  store %struct.insn_chain* %90, %struct.insn_chain** %prev139, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.137, %if.else.131
  %93 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %94 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %next141 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %94, i32 0, i32 0
  store %struct.insn_chain* %93, %struct.insn_chain** %next141, align 8
  %95 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %96 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %prev142 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %96, i32 0, i32 1
  store %struct.insn_chain* %95, %struct.insn_chain** %prev142, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call143 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %97, %struct.rtx_def* %98)
  %99 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %insn144 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %99, i32 0, i32 4
  store %struct.rtx_def* %call143, %struct.rtx_def** %insn144, align 8
  %100 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %live_throughout145 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %100, i32 0, i32 5
  %101 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %live_throughout146 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %101, i32 0, i32 5
  call void @bitmap_copy(%struct.bitmap_head_def* %live_throughout145, %struct.bitmap_head_def* %live_throughout146)
  %102 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %insn147 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %102, i32 0, i32 4
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn147, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 3
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx150, align 8
  %105 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %live_throughout151 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %105, i32 0, i32 5
  %106 = bitcast %struct.bitmap_head_def* %live_throughout151 to i8*
  call void @note_stores(%struct.rtx_def* %104, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @add_stored_regs, i8* %106)
  %107 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %dead_or_set152 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %107, i32 0, i32 6
  call void @bitmap_clear(%struct.bitmap_head_def* %dead_or_set152)
  %108 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %insn153 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %108, i32 0, i32 4
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn153, align 8
  %110 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %block154 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %110, i32 0, i32 3
  %111 = load i32, i32* %block154, align 4
  %idxprom155 = sext i32 %111 to i64
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data156 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %bb157 = bitcast %union.varray_data_tag* %data156 to [1 x %struct.basic_block_def*]*
  %arrayidx158 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb157, i32 0, i64 %idxprom155
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx158, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %113, i32 0, i32 1
  %114 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp159 = icmp eq %struct.rtx_def* %109, %114
  br i1 %cmp159, label %if.then.161, label %if.end.169

if.then.161:                                      ; preds = %if.end.140
  %115 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %insn162 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %115, i32 0, i32 4
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn162, align 8
  %117 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %block163 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %117, i32 0, i32 3
  %118 = load i32, i32* %block163, align 4
  %idxprom164 = sext i32 %118 to i64
  %119 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data165 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %119, i32 0, i32 4
  %bb166 = bitcast %union.varray_data_tag* %data165 to [1 x %struct.basic_block_def*]*
  %arrayidx167 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb166, i32 0, i64 %idxprom164
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx167, align 8
  %end168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %120, i32 0, i32 1
  store %struct.rtx_def* %116, %struct.rtx_def** %end168, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.161, %if.end.140
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.130
  %121 = load %struct.insn_chain*, %struct.insn_chain** %chain.addr, align 8
  %block171 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %121, i32 0, i32 3
  %122 = load i32, i32* %block171, align 4
  %123 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %block172 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %123, i32 0, i32 3
  store i32 %122, i32* %block172, align 4
  %124 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %is_caller_save_insn = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %124, i32 0, i32 11
  %bf.load173 = load i8, i8* %is_caller_save_insn, align 2
  %bf.clear174 = and i8 %bf.load173, -9
  %bf.set = or i8 %bf.clear174, 8
  store i8 %bf.set, i8* %is_caller_save_insn, align 2
  %125 = load i32, i32* %code.addr, align 4
  %126 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  %insn175 = getelementptr inbounds %struct.insn_chain, %struct.insn_chain* %126, i32 0, i32 4
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn175, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx177 to i32*
  store i32 %125, i32* %rtint, align 4
  %128 = load %struct.insn_chain*, %struct.insn_chain** %new, align 8
  ret %struct.insn_chain* %128
}

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

declare %struct.insn_chain* @new_insn_chain() #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @add_stored_regs(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %endregno = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  store i32 0, i32* %offset, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %setter.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 49
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 63
  br i1 %cmp5, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 61
  br i1 %cmp8, label %if.then.9, label %if.end.30

if.then.9:                                        ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %11 = load i32, i32* %rtuint, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load18 = load i32, i32* %14, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtuint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %16 = load i32, i32* %rtuint23, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load24 = load i32, i32* %18, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %call = call i32 @subreg_regno_offset(i32 %11, i32 %bf.clear20, i32 %16, i32 %bf.clear26)
  store i32 %call, i32* %offset, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %reg.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.9, %land.lhs.true, %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load31 = load i32, i32* %22, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp ne i32 %bf.clear32, 61
  br i1 %cmp33, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.30
  %23 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtuint36 = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %24 = load i32, i32* %rtuint36, align 4
  %cmp37 = icmp uge i32 %24, 53
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %lor.lhs.false, %if.end.30
  br label %for.end

if.end.39:                                        ; preds = %lor.lhs.false
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %26 = load i32, i32* %rtuint42, align 4
  %27 = load i32, i32* %offset, align 4
  %add = add i32 %26, %27
  store i32 %add, i32* %regno, align 4
  %28 = load i32, i32* %regno, align 4
  %29 = load i32, i32* %regno, align 4
  %cmp43 = icmp sge i32 %29, 8
  br i1 %cmp43, label %land.lhs.true.44, label %lor.lhs.false.46

land.lhs.true.44:                                 ; preds = %if.end.39
  %30 = load i32, i32* %regno, align 4
  %cmp45 = icmp sle i32 %30, 15
  br i1 %cmp45, label %cond.true, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %land.lhs.true.44, %if.end.39
  %31 = load i32, i32* %regno, align 4
  %cmp47 = icmp sge i32 %31, 21
  br i1 %cmp47, label %land.lhs.true.48, label %lor.lhs.false.50

land.lhs.true.48:                                 ; preds = %lor.lhs.false.46
  %32 = load i32, i32* %regno, align 4
  %cmp49 = icmp sle i32 %32, 28
  br i1 %cmp49, label %cond.true, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.48, %lor.lhs.false.46
  %33 = load i32, i32* %regno, align 4
  %cmp51 = icmp sge i32 %33, 45
  br i1 %cmp51, label %land.lhs.true.52, label %lor.lhs.false.54

land.lhs.true.52:                                 ; preds = %lor.lhs.false.50
  %34 = load i32, i32* %regno, align 4
  %cmp53 = icmp sle i32 %34, 52
  br i1 %cmp53, label %cond.true, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.52, %lor.lhs.false.50
  %35 = load i32, i32* %regno, align 4
  %cmp55 = icmp sge i32 %35, 29
  br i1 %cmp55, label %land.lhs.true.56, label %cond.false

land.lhs.true.56:                                 ; preds = %lor.lhs.false.54
  %36 = load i32, i32* %regno, align 4
  %cmp57 = icmp sle i32 %36, 36
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.56, %land.lhs.true.52, %land.lhs.true.48, %land.lhs.true.44
  %37 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %37 to i64
  %arrayidx58 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %38 = load i32, i32* %arrayidx58, align 4
  %cmp59 = icmp eq i32 %38, 5
  br i1 %cmp59, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %39 = load i32, i32* %mode, align 4
  %idxprom60 = sext i32 %39 to i64
  %arrayidx61 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom60
  %40 = load i32, i32* %arrayidx61, align 4
  %cmp62 = icmp eq i32 %40, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %41 = phi i1 [ true, %cond.true ], [ %cmp62, %lor.rhs ]
  %cond = select i1 %41, i32 2, i32 1
  br label %cond.end.85

cond.false:                                       ; preds = %land.lhs.true.56, %lor.lhs.false.54
  %42 = load i32, i32* %mode, align 4
  %cmp63 = icmp eq i32 %42, 18
  br i1 %cmp63, label %cond.true.64, label %cond.false.66

cond.true.64:                                     ; preds = %cond.false
  %43 = load i32, i32* @target_flags, align 4
  %and = and i32 %43, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond65 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.83

cond.false.66:                                    ; preds = %cond.false
  %44 = load i32, i32* %mode, align 4
  %cmp67 = icmp eq i32 %44, 24
  br i1 %cmp67, label %cond.true.68, label %cond.false.72

cond.true.68:                                     ; preds = %cond.false.66
  %45 = load i32, i32* @target_flags, align 4
  %and69 = and i32 %45, 33554432
  %tobool70 = icmp ne i32 %and69, 0
  %cond71 = select i1 %tobool70, i32 4, i32 6
  br label %cond.end

cond.false.72:                                    ; preds = %cond.false.66
  %46 = load i32, i32* %mode, align 4
  %idxprom73 = sext i32 %46 to i64
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom73
  %47 = load i8, i8* %arrayidx74, align 1
  %conv = zext i8 %47 to i32
  %48 = load i32, i32* @target_flags, align 4
  %and75 = and i32 %48, 33554432
  %tobool76 = icmp ne i32 %and75, 0
  %cond77 = select i1 %tobool76, i32 8, i32 4
  %add78 = add nsw i32 %conv, %cond77
  %sub = sub nsw i32 %add78, 1
  %49 = load i32, i32* @target_flags, align 4
  %and79 = and i32 %49, 33554432
  %tobool80 = icmp ne i32 %and79, 0
  %cond81 = select i1 %tobool80, i32 8, i32 4
  %div = sdiv i32 %sub, %cond81
  br label %cond.end

cond.end:                                         ; preds = %cond.false.72, %cond.true.68
  %cond82 = phi i32 [ %cond71, %cond.true.68 ], [ %div, %cond.false.72 ]
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.end, %cond.true.64
  %cond84 = phi i32 [ %cond65, %cond.true.64 ], [ %cond82, %cond.end ]
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.end.83, %lor.end
  %cond86 = phi i32 [ %cond, %lor.end ], [ %cond84, %cond.end.83 ]
  %add87 = add nsw i32 %28, %cond86
  store i32 %add87, i32* %endregno, align 4
  %50 = load i32, i32* %regno, align 4
  store i32 %50, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.85
  %51 = load i32, i32* %i, align 4
  %52 = load i32, i32* %endregno, align 4
  %cmp88 = icmp slt i32 %51, %52
  br i1 %cmp88, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %53 = load i8*, i8** %data.addr, align 8
  %54 = bitcast i8* %53 to %struct.bitmap_head_def*
  %55 = load i32, i32* %i, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %54, i32 %55)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.38, %for.cond
  ret void
}

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
