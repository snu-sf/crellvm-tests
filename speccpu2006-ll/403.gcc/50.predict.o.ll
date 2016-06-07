; ModuleID = 'predict.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.predictor_info = type { i8*, i32, i32 }
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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.loops = type { i32, i32, %struct.loop*, %struct.loop*, %struct.cfg, %struct.simple_bitmap_def* }
%struct.loop = type { i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def**, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.simple_bitmap_def*, i32, %struct.edge_def**, i32, %struct.edge_def**, i32, %struct.simple_bitmap_def*, i32, i32, %struct.loop*, %struct.loop*, %struct.loop*, i32, i32, i8*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.cfg = type { %struct.simple_bitmap_def**, i32*, i32* }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.block_info_def = type { double, %struct.basic_block_def*, i8, i32 }
%struct.edge_info_def = type { double, i8 }

@.str = private unnamed_addr constant [10 x i8] c"predict.c\00", align 1
@__FUNCTION__.predict_insn = private unnamed_addr constant [13 x i8] c"predict_insn\00", align 1
@predictor_info = internal constant [20 x %struct.predictor_info] [%struct.predictor_info { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 10000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 10000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i32 10000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 10000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), i32 10000, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 10000, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i32 9001, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i32 9900, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 8900, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 9000, i32 1 }, %struct.predictor_info { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 9001, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0), i32 9001, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 6400, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 8100, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 7900, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 7100, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 9000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 7000, i32 0 }, %struct.predictor_info { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i32 5200, i32 0 }, %struct.predictor_info zeroinitializer], align 16
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@rtx_class = external constant [153 x i8], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@const_true_rtx = external global %struct.rtx_def*, align 8
@__FUNCTION__.expected_value_to_br_prob = private unnamed_addr constant [26 x i8] c"expected_value_to_br_prob\00", align 1
@__FUNCTION__.expensive_function_p = private unnamed_addr constant [21 x i8] c"expensive_function_p\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"combined\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DS theory\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"first match\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"no prediction\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unconditional jump\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"loop iterations\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"__builtin_expect\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"noreturn call\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"loop branch\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"loop exit\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"loop condition\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"loop preconditioning\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"loop header\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"pointer\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"opcode values positive\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"opcode values nonequal\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"fp_opcode\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"error return\00", align 1
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [31 x i8] c"Predictions for insn %i bb %i\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"  %s heuristics%s: %.1f%%\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [11 x i8] c" (ignored)\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"  exec \00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c" hit \00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c" (%.1f%%)\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@flag_branch_probabilities = external global i32, align 4
@.str.29 = private unnamed_addr constant [49 x i8] c"Irreducible region hit, ignoring edge to %i->%i\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @predict_insn(%struct.rtx_def* %insn, i32 %predictor, i32 %probability) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %predictor.addr = alloca i32, align 4
  %probability.addr = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %predictor, i32* %predictor.addr, align 4
  store i32 %probability, i32* %probability.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.predict_insn, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %predictor.addr, align 4
  %conv = sext i32 %1 to i64
  %call1 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %2 = load i32, i32* %probability.addr, align 4
  %conv2 = sext i32 %2 to i64
  %call3 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv2)
  %call4 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 65, i32 0, %struct.rtx_def* %call1, %struct.rtx_def* %call3)
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 20, %struct.rtx_def* %call4, %struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 6
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* %call5, %struct.rtx_def** %rtx8, align 8
  ret void
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

; Function Attrs: nounwind uwtable
define void @predict_insn_def(%struct.rtx_def* %insn, i32 %predictor, i32 %taken) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %predictor.addr = alloca i32, align 4
  %taken.addr = alloca i32, align 4
  %probability = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %predictor, i32* %predictor.addr, align 4
  store i32 %taken, i32* %taken.addr, align 4
  %0 = load i32, i32* %predictor.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.predictor_info], [20 x %struct.predictor_info]* @predictor_info, i32 0, i64 %idxprom
  %hitrate = getelementptr inbounds %struct.predictor_info, %struct.predictor_info* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %hitrate, align 4
  store i32 %1, i32* %probability, align 4
  %2 = load i32, i32* %taken.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %probability, align 4
  %sub = sub nsw i32 10000, %3
  store i32 %sub, i32* %probability, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = load i32, i32* %predictor.addr, align 4
  %6 = load i32, i32* %probability, align 4
  call void @predict_insn(%struct.rtx_def* %4, i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @predict_edge(%struct.edge_def* %e, i32 %predictor, i32 %probability) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %predictor.addr = alloca i32, align 4
  %probability.addr = alloca i32, align 4
  %last_insn = alloca %struct.rtx_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store i32 %predictor, i32* %predictor.addr, align 4
  store i32 %probability, i32* %probability.addr, align 4
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %last_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 6
  %5 = load i32, i32* %flags, align 4
  %and = and i32 %5, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %6 = load i32, i32* %probability.addr, align 4
  %sub = sub nsw i32 10000, %6
  store i32 %sub, i32* %probability.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %8 = load i32, i32* %predictor.addr, align 4
  %9 = load i32, i32* %probability.addr, align 4
  call void @predict_insn(%struct.rtx_def* %7, i32 %8, i32 %9)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @predict_edge_def(%struct.edge_def* %e, i32 %predictor, i32 %taken) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %predictor.addr = alloca i32, align 4
  %taken.addr = alloca i32, align 4
  %probability = alloca i32, align 4
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store i32 %predictor, i32* %predictor.addr, align 4
  store i32 %taken, i32* %taken.addr, align 4
  %0 = load i32, i32* %predictor.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.predictor_info], [20 x %struct.predictor_info]* @predictor_info, i32 0, i64 %idxprom
  %hitrate = getelementptr inbounds %struct.predictor_info, %struct.predictor_info* %arrayidx, i32 0, i32 1
  %1 = load i32, i32* %hitrate, align 4
  store i32 %1, i32* %probability, align 4
  %2 = load i32, i32* %taken.addr, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %probability, align 4
  %sub = sub nsw i32 10000, %3
  store i32 %sub, i32* %probability, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %5 = load i32, i32* %predictor.addr, align 4
  %6 = load i32, i32* %probability, align 4
  call void @predict_edge(%struct.edge_def* %4, i32 %5, i32 %6)
  ret void
}

; Function Attrs: nounwind uwtable
define void @invert_br_probabilities(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx5 to i64*
  %7 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 10000, %7
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub)
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %rtx8, align 8
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load9 = load i32, i32* %10, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 16
  %bf.clear11 = and i32 %bf.lshr10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 20
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtwint22 = bitcast %union.rtunion_def* %arrayidx21 to i64*
  %14 = load i64, i64* %rtwint22, align 8
  %sub23 = sub nsw i64 10000, %14
  %call24 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub23)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  store %struct.rtx_def* %call24, %struct.rtx_def** %rtx30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %17 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @estimate_probability(%struct.loops* %loops_info) #0 {
entry:
  %loops_info.addr = alloca %struct.loops*, align 8
  %dominators = alloca %struct.simple_bitmap_def**, align 8
  %post_dominators = alloca %struct.simple_bitmap_def**, align 8
  %i = alloca i32, align 4
  %found_noreturn = alloca i32, align 4
  %j = alloca i32, align 4
  %exits = alloca i32, align 4
  %loop = alloca %struct.loop*, align 8
  %header_found = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb60 = alloca %struct.basic_block_def*, align 8
  %last_insn = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %e65 = alloca %struct.edge_def*, align 8
  %y = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.loops* %loops_info, %struct.loops** %loops_info.addr, align 8
  store i32 0, i32* %found_noreturn, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %0, i32 %1)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** %dominators, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %call1 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call1, %struct.simple_bitmap_def*** %post_dominators, align 8
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %4, i32 0)
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %post_dominators, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %5, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.54, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.loops*, %struct.loops** %loops_info.addr, align 8
  %num = getelementptr inbounds %struct.loops, %struct.loops* %7, i32 0, i32 0
  %8 = load i32, i32* %num, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end.56

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.loops*, %struct.loops** %loops_info.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %10, i32 0, i32 2
  %11 = load %struct.loop*, %struct.loop** %array, align 8
  %arrayidx = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 %idxprom
  store %struct.loop* %arrayidx, %struct.loop** %loop, align 8
  %12 = load %struct.loops*, %struct.loops** %loops_info.addr, align 8
  %13 = load %struct.loop*, %struct.loop** %loop, align 8
  %call2 = call i32 @flow_loop_scan(%struct.loops* %12, %struct.loop* %13, i32 8)
  %14 = load %struct.loop*, %struct.loop** %loop, align 8
  %num_exits = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 13
  %15 = load i32, i32* %num_exits, align 4
  store i32 %15, i32* %exits, align 4
  %16 = load %struct.loop*, %struct.loop** %loop, align 8
  %first = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 6
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  store i32 %18, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.52, %for.body
  %19 = load i32, i32* %j, align 4
  %20 = load %struct.loop*, %struct.loop** %loop, align 8
  %last = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 7
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index4, align 4
  %cmp5 = icmp sle i32 %19, %22
  br i1 %cmp5, label %for.body.6, label %for.end.53

for.body.6:                                       ; preds = %for.cond.3
  %23 = load i32, i32* %j, align 4
  %div = udiv i32 %23, 64
  %idxprom7 = zext i32 %div to i64
  %24 = load %struct.loop*, %struct.loop** %loop, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 8
  %25 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %25, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom7
  %26 = load i64, i64* %arrayidx8, align 8
  %27 = load i32, i32* %j, align 4
  %rem = urem i32 %27, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %26, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.51

if.then:                                          ; preds = %for.body.6
  store i32 0, i32* %header_found, align 4
  %28 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %28 to i64
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom9
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 5
  %31 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %31, %struct.edge_def** %e, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool12 = icmp ne %struct.edge_def* %32, null
  br i1 %tobool12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.11
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 3
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %35 = load %struct.loop*, %struct.loop** %loop, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 1
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %cmp14 = icmp eq %struct.basic_block_def* %34, %36
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.13
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 2
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %39 = load %struct.loop*, %struct.loop** %loop, align 8
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 2
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8
  %cmp15 = icmp eq %struct.basic_block_def* %38, %40
  br i1 %cmp15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %land.lhs.true
  store i32 1, i32* %header_found, align 4
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @predict_edge_def(%struct.edge_def* %41, i32 8, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then.16, %land.lhs.true, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 1
  %43 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %43, %struct.edge_def** %e, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %44 = load i32, i32* %header_found, align 4
  %tobool17 = icmp ne i32 %44, 0
  br i1 %tobool17, label %if.end.50, label %if.then.18

if.then.18:                                       ; preds = %for.end
  %45 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %45 to i64
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 4
  %bb21 = bitcast %union.varray_data_tag* %data20 to [1 x %struct.basic_block_def*]*
  %arrayidx22 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb21, i32 0, i64 %idxprom19
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx22, align 8
  %succ23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ23, align 8
  store %struct.edge_def* %48, %struct.edge_def** %e, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.47, %if.then.18
  %49 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool25 = icmp ne %struct.edge_def* %49, null
  br i1 %tobool25, label %for.body.26, label %for.end.49

for.body.26:                                      ; preds = %for.cond.24
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 3
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %dest27, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 11
  %52 = load i32, i32* %index28, align 4
  %cmp29 = icmp slt i32 %52, 0
  br i1 %cmp29, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.26
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 3
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %dest30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 11
  %55 = load i32, i32* %index31, align 4
  %div32 = udiv i32 %55, 64
  %idxprom33 = zext i32 %div32 to i64
  %56 = load %struct.loop*, %struct.loop** %loop, align 8
  %nodes34 = getelementptr inbounds %struct.loop, %struct.loop* %56, i32 0, i32 8
  %57 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes34, align 8
  %elms35 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %57, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [1 x i64], [1 x i64]* %elms35, i32 0, i64 %idxprom33
  %58 = load i64, i64* %arrayidx36, align 8
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 3
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %dest37, align 8
  %index38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 11
  %61 = load i32, i32* %index38, align 4
  %rem39 = urem i32 %61, 64
  %sh_prom40 = zext i32 %rem39 to i64
  %shr41 = lshr i64 %58, %sh_prom40
  %and42 = and i64 %shr41, 1
  %tobool43 = icmp ne i64 %and42, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false, %for.body.26
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %63 = load i32, i32* getelementptr inbounds ([20 x %struct.predictor_info], [20 x %struct.predictor_info]* @predictor_info, i32 0, i64 9, i32 1), align 4
  %sub = sub nsw i32 10000, %63
  %64 = load i32, i32* %exits, align 4
  %div45 = sdiv i32 %sub, %64
  call void @predict_edge(%struct.edge_def* %62, i32 9, i32 %div45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %lor.lhs.false
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %65 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i32 0, i32 1
  %66 = load %struct.edge_def*, %struct.edge_def** %succ_next48, align 8
  store %struct.edge_def* %66, %struct.edge_def** %e, align 8
  br label %for.cond.24

for.end.49:                                       ; preds = %for.cond.24
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.49, %for.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body.6
  br label %for.inc.52

for.inc.52:                                       ; preds = %if.end.51
  %67 = load i32, i32* %j, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.3

for.end.53:                                       ; preds = %for.cond.3
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.end.53
  %68 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %68, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end.56:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.418, %for.end.56
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* @n_basic_blocks, align 4
  %cmp58 = icmp slt i32 %69, %70
  br i1 %cmp58, label %for.body.59, label %for.end.420

for.body.59:                                      ; preds = %for.cond.57
  %71 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %71 to i64
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data62 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %72, i32 0, i32 4
  %bb63 = bitcast %union.varray_data_tag* %data62 to [1 x %struct.basic_block_def*]*
  %arrayidx64 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb63, i32 0, i64 %idxprom61
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx64, align 8
  store %struct.basic_block_def* %73, %struct.basic_block_def** %bb60, align 8
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb60, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 1
  %75 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %last_insn, align 8
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %bb60, align 8
  %succ66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 5
  %77 = load %struct.edge_def*, %struct.edge_def** %succ66, align 8
  %cmp67 = icmp eq %struct.edge_def* %77, null
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.120

land.lhs.true.68:                                 ; preds = %for.body.59
  %78 = load i32, i32* %found_noreturn, align 4
  %tobool69 = icmp ne i32 %78, 0
  br i1 %tobool69, label %if.end.120, label %if.then.70

if.then.70:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %found_noreturn, align 4
  store i32 0, i32* %y, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.117, %if.then.70
  %79 = load i32, i32* %y, align 4
  %80 = load i32, i32* @n_basic_blocks, align 4
  %cmp72 = icmp slt i32 %79, %80
  br i1 %cmp72, label %for.body.73, label %for.end.119

for.body.73:                                      ; preds = %for.cond.71
  %81 = load i32, i32* %i, align 4
  %div74 = udiv i32 %81, 64
  %idxprom75 = zext i32 %div74 to i64
  %82 = load i32, i32* %y, align 4
  %idxprom76 = sext i32 %82 to i64
  %83 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %post_dominators, align 8
  %arrayidx77 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %83, i64 %idxprom76
  %84 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx77, align 8
  %elms78 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %84, i32 0, i32 3
  %arrayidx79 = getelementptr inbounds [1 x i64], [1 x i64]* %elms78, i32 0, i64 %idxprom75
  %85 = load i64, i64* %arrayidx79, align 8
  %86 = load i32, i32* %i, align 4
  %rem80 = urem i32 %86, 64
  %sh_prom81 = zext i32 %rem80 to i64
  %shr82 = lshr i64 %85, %sh_prom81
  %and83 = and i64 %shr82, 1
  %tobool84 = icmp ne i64 %and83, 0
  br i1 %tobool84, label %if.end.116, label %if.then.85

if.then.85:                                       ; preds = %for.body.73
  %87 = load i32, i32* %y, align 4
  %idxprom86 = sext i32 %87 to i64
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data87 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %88, i32 0, i32 4
  %bb88 = bitcast %union.varray_data_tag* %data87 to [1 x %struct.basic_block_def*]*
  %arrayidx89 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb88, i32 0, i64 %idxprom86
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx89, align 8
  %succ90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 5
  %90 = load %struct.edge_def*, %struct.edge_def** %succ90, align 8
  store %struct.edge_def* %90, %struct.edge_def** %e65, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.113, %if.then.85
  %91 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %tobool92 = icmp ne %struct.edge_def* %91, null
  br i1 %tobool92, label %for.body.93, label %for.end.115

for.body.93:                                      ; preds = %for.cond.91
  %92 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %92, i32 0, i32 3
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %dest94, align 8
  %index95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 11
  %94 = load i32, i32* %index95, align 4
  %cmp96 = icmp sge i32 %94, 0
  br i1 %cmp96, label %land.lhs.true.97, label %if.end.112

land.lhs.true.97:                                 ; preds = %for.body.93
  %95 = load i32, i32* %i, align 4
  %div98 = udiv i32 %95, 64
  %idxprom99 = zext i32 %div98 to i64
  %96 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %96, i32 0, i32 3
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %dest100, align 8
  %index101 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 11
  %98 = load i32, i32* %index101, align 4
  %idxprom102 = sext i32 %98 to i64
  %99 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %post_dominators, align 8
  %arrayidx103 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %99, i64 %idxprom102
  %100 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx103, align 8
  %elms104 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %100, i32 0, i32 3
  %arrayidx105 = getelementptr inbounds [1 x i64], [1 x i64]* %elms104, i32 0, i64 %idxprom99
  %101 = load i64, i64* %arrayidx105, align 8
  %102 = load i32, i32* %i, align 4
  %rem106 = urem i32 %102, 64
  %sh_prom107 = zext i32 %rem106 to i64
  %shr108 = lshr i64 %101, %sh_prom107
  %and109 = and i64 %shr108, 1
  %tobool110 = icmp ne i64 %and109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.112

if.then.111:                                      ; preds = %land.lhs.true.97
  %103 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  call void @predict_edge_def(%struct.edge_def* %103, i32 7, i32 0)
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %land.lhs.true.97, %for.body.93
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %104 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %succ_next114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 1
  %105 = load %struct.edge_def*, %struct.edge_def** %succ_next114, align 8
  store %struct.edge_def* %105, %struct.edge_def** %e65, align 8
  br label %for.cond.91

for.end.115:                                      ; preds = %for.cond.91
  br label %if.end.116

if.end.116:                                       ; preds = %for.end.115, %for.body.73
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %106 = load i32, i32* %y, align 4
  %inc118 = add nsw i32 %106, 1
  store i32 %inc118, i32* %y, align 4
  br label %for.cond.71

for.end.119:                                      ; preds = %for.cond.71
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %land.lhs.true.68, %for.body.59
  %107 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load = load i32, i32* %108, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp121 = icmp ne i32 %bf.clear, 33
  br i1 %cmp121, label %if.then.125, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.end.120
  %109 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call123 = call i32 @any_condjump_p(%struct.rtx_def* %109)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %lor.lhs.false.122, %if.end.120
  br label %for.inc.418

if.end.126:                                       ; preds = %lor.lhs.false.122
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %bb60, align 8
  %succ127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i32 0, i32 5
  %111 = load %struct.edge_def*, %struct.edge_def** %succ127, align 8
  store %struct.edge_def* %111, %struct.edge_def** %e65, align 8
  br label %for.cond.128

for.cond.128:                                     ; preds = %for.inc.213, %if.end.126
  %112 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %tobool129 = icmp ne %struct.edge_def* %112, null
  br i1 %tobool129, label %for.body.130, label %for.end.215

for.body.130:                                     ; preds = %for.cond.128
  %113 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 3
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %dest131, align 8
  %cmp132 = icmp eq %struct.basic_block_def* %114, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp132, label %if.then.147, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %for.body.130
  %115 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest134 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i32 0, i32 3
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %dest134, align 8
  %succ135 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %116, i32 0, i32 5
  %117 = load %struct.edge_def*, %struct.edge_def** %succ135, align 8
  %tobool136 = icmp ne %struct.edge_def* %117, null
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.148

land.lhs.true.137:                                ; preds = %lor.lhs.false.133
  %118 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest138 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %118, i32 0, i32 3
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %dest138, align 8
  %succ139 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 5
  %120 = load %struct.edge_def*, %struct.edge_def** %succ139, align 8
  %succ_next140 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i32 0, i32 1
  %121 = load %struct.edge_def*, %struct.edge_def** %succ_next140, align 8
  %tobool141 = icmp ne %struct.edge_def* %121, null
  br i1 %tobool141, label %if.end.148, label %land.lhs.true.142

land.lhs.true.142:                                ; preds = %land.lhs.true.137
  %122 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest143 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %122, i32 0, i32 3
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %dest143, align 8
  %succ144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %123, i32 0, i32 5
  %124 = load %struct.edge_def*, %struct.edge_def** %succ144, align 8
  %dest145 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %124, i32 0, i32 3
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %dest145, align 8
  %cmp146 = icmp eq %struct.basic_block_def* %125, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %land.lhs.true.142, %for.body.130
  %126 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  call void @predict_edge_def(%struct.edge_def* %126, i32 18, i32 0)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %land.lhs.true.142, %land.lhs.true.137, %lor.lhs.false.133
  %127 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest149 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %127, i32 0, i32 3
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %dest149, align 8
  %cmp150 = icmp ne %struct.basic_block_def* %128, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp150, label %land.lhs.true.151, label %if.end.212

land.lhs.true.151:                                ; preds = %if.end.148
  %129 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest152 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %129, i32 0, i32 3
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %dest152, align 8
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %bb60, align 8
  %cmp153 = icmp ne %struct.basic_block_def* %130, %131
  br i1 %cmp153, label %land.lhs.true.154, label %if.end.212

land.lhs.true.154:                                ; preds = %land.lhs.true.151
  %132 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %src155 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %132, i32 0, i32 2
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %src155, align 8
  %index156 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 11
  %134 = load i32, i32* %index156, align 4
  %div157 = udiv i32 %134, 64
  %idxprom158 = zext i32 %div157 to i64
  %135 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest159 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %135, i32 0, i32 3
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %dest159, align 8
  %index160 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %136, i32 0, i32 11
  %137 = load i32, i32* %index160, align 4
  %idxprom161 = sext i32 %137 to i64
  %138 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators, align 8
  %arrayidx162 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %138, i64 %idxprom161
  %139 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx162, align 8
  %elms163 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %139, i32 0, i32 3
  %arrayidx164 = getelementptr inbounds [1 x i64], [1 x i64]* %elms163, i32 0, i64 %idxprom158
  %140 = load i64, i64* %arrayidx164, align 8
  %141 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %src165 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i32 0, i32 2
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %src165, align 8
  %index166 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %142, i32 0, i32 11
  %143 = load i32, i32* %index166, align 4
  %rem167 = urem i32 %143, 64
  %sh_prom168 = zext i32 %rem167 to i64
  %shr169 = lshr i64 %140, %sh_prom168
  %and170 = and i64 %shr169, 1
  %tobool171 = icmp ne i64 %and170, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.212

land.lhs.true.172:                                ; preds = %land.lhs.true.154
  %144 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest173 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %144, i32 0, i32 3
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %dest173, align 8
  %index174 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %145, i32 0, i32 11
  %146 = load i32, i32* %index174, align 4
  %div175 = udiv i32 %146, 64
  %idxprom176 = zext i32 %div175 to i64
  %147 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %src177 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %147, i32 0, i32 2
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %src177, align 8
  %index178 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 11
  %149 = load i32, i32* %index178, align 4
  %idxprom179 = sext i32 %149 to i64
  %150 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %post_dominators, align 8
  %arrayidx180 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %150, i64 %idxprom179
  %151 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx180, align 8
  %elms181 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %151, i32 0, i32 3
  %arrayidx182 = getelementptr inbounds [1 x i64], [1 x i64]* %elms181, i32 0, i64 %idxprom176
  %152 = load i64, i64* %arrayidx182, align 8
  %153 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %153, i32 0, i32 3
  %154 = load %struct.basic_block_def*, %struct.basic_block_def** %dest183, align 8
  %index184 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %154, i32 0, i32 11
  %155 = load i32, i32* %index184, align 4
  %rem185 = urem i32 %155, 64
  %sh_prom186 = zext i32 %rem185 to i64
  %shr187 = lshr i64 %152, %sh_prom186
  %and188 = and i64 %shr187, 1
  %tobool189 = icmp ne i64 %and188, 0
  br i1 %tobool189, label %if.end.212, label %if.then.190

if.then.190:                                      ; preds = %land.lhs.true.172
  %156 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest191 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %156, i32 0, i32 3
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest191, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 0
  %158 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %insn, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.207, %if.then.190
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %160 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %dest193 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %160, i32 0, i32 3
  %161 = load %struct.basic_block_def*, %struct.basic_block_def** %dest193, align 8
  %end194 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %161, i32 0, i32 1
  %162 = load %struct.rtx_def*, %struct.rtx_def** %end194, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp196 = icmp ne %struct.rtx_def* %159, %163
  br i1 %cmp196, label %for.body.197, label %for.end.211

for.body.197:                                     ; preds = %for.cond.192
  %164 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load198 = load i32, i32* %165, align 8
  %bf.clear199 = and i32 %bf.load198, 65535
  %cmp200 = icmp eq i32 %bf.clear199, 34
  br i1 %cmp200, label %land.lhs.true.201, label %if.end.206

land.lhs.true.201:                                ; preds = %for.body.197
  %166 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load202 = load i32, i32* %167, align 8
  %bf.lshr = lshr i32 %bf.load202, 26
  %bf.clear203 = and i32 %bf.lshr, 1
  %tobool204 = icmp ne i32 %bf.clear203, 0
  br i1 %tobool204, label %if.end.206, label %if.then.205

if.then.205:                                      ; preds = %land.lhs.true.201
  %168 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  call void @predict_edge_def(%struct.edge_def* %168, i32 17, i32 0)
  br label %for.end.211

if.end.206:                                       ; preds = %land.lhs.true.201, %for.body.197
  br label %for.inc.207

for.inc.207:                                      ; preds = %if.end.206
  %169 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 2
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  store %struct.rtx_def* %170, %struct.rtx_def** %insn, align 8
  br label %for.cond.192

for.end.211:                                      ; preds = %if.then.205, %for.cond.192
  br label %if.end.212

if.end.212:                                       ; preds = %for.end.211, %land.lhs.true.172, %land.lhs.true.154, %land.lhs.true.151, %if.end.148
  br label %for.inc.213

for.inc.213:                                      ; preds = %if.end.212
  %171 = load %struct.edge_def*, %struct.edge_def** %e65, align 8
  %succ_next214 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %171, i32 0, i32 1
  %172 = load %struct.edge_def*, %struct.edge_def** %succ_next214, align 8
  store %struct.edge_def* %172, %struct.edge_def** %e65, align 8
  br label %for.cond.128

for.end.215:                                      ; preds = %for.cond.128
  %173 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call216 = call %struct.rtx_def* @get_condition(%struct.rtx_def* %173, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call216, %struct.rtx_def** %cond, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool217 = icmp ne %struct.rtx_def* %174, null
  br i1 %tobool217, label %if.end.219, label %if.then.218

if.then.218:                                      ; preds = %for.end.215
  br label %for.inc.418

if.end.219:                                       ; preds = %for.end.215
  %175 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load220 = load i32, i32* %176, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %idxprom222 = sext i32 %bf.clear221 to i64
  %arrayidx223 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom222
  %177 = load i8, i8* %arrayidx223, align 1
  %conv = sext i8 %177 to i32
  %cmp224 = icmp eq i32 %conv, 60
  br i1 %cmp224, label %land.lhs.true.226, label %if.else.269

land.lhs.true.226:                                ; preds = %if.end.219
  %178 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 0
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load230 = load i32, i32* %180, align 8
  %bf.clear231 = and i32 %bf.load230, 65535
  %cmp232 = icmp eq i32 %bf.clear231, 61
  br i1 %cmp232, label %land.lhs.true.234, label %lor.lhs.false.241

land.lhs.true.234:                                ; preds = %land.lhs.true.226
  %181 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 0
  %rtx237 = bitcast %union.rtunion_def* %arrayidx236 to %struct.rtx_def**
  %182 = load %struct.rtx_def*, %struct.rtx_def** %rtx237, align 8
  %183 = bitcast %struct.rtx_def* %182 to i32*
  %bf.load238 = load i32, i32* %183, align 8
  %bf.lshr239 = lshr i32 %bf.load238, 31
  %tobool240 = icmp ne i32 %bf.lshr239, 0
  br i1 %tobool240, label %if.then.256, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %land.lhs.true.234, %land.lhs.true.226
  %184 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld242, i32 0, i64 1
  %rtx244 = bitcast %union.rtunion_def* %arrayidx243 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx244, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %bf.load245 = load i32, i32* %186, align 8
  %bf.clear246 = and i32 %bf.load245, 65535
  %cmp247 = icmp eq i32 %bf.clear246, 61
  br i1 %cmp247, label %land.lhs.true.249, label %if.else.269

land.lhs.true.249:                                ; preds = %lor.lhs.false.241
  %187 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 1
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load253 = load i32, i32* %189, align 8
  %bf.lshr254 = lshr i32 %bf.load253, 31
  %tobool255 = icmp ne i32 %bf.lshr254, 0
  br i1 %tobool255, label %if.then.256, label %if.else.269

if.then.256:                                      ; preds = %land.lhs.true.249, %land.lhs.true.234
  %190 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %191 = bitcast %struct.rtx_def* %190 to i32*
  %bf.load257 = load i32, i32* %191, align 8
  %bf.clear258 = and i32 %bf.load257, 65535
  %cmp259 = icmp eq i32 %bf.clear258, 103
  br i1 %cmp259, label %if.then.261, label %if.else

if.then.261:                                      ; preds = %if.then.256
  %192 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %192, i32 13, i32 0)
  br label %if.end.268

if.else:                                          ; preds = %if.then.256
  %193 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load262 = load i32, i32* %194, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %cmp264 = icmp eq i32 %bf.clear263, 102
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %if.else
  %195 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %195, i32 13, i32 1)
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %if.else
  br label %if.end.268

if.end.268:                                       ; preds = %if.end.267, %if.then.261
  br label %if.end.417

if.else.269:                                      ; preds = %land.lhs.true.249, %lor.lhs.false.241, %if.end.219
  %196 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %197 = bitcast %struct.rtx_def* %196 to i32*
  %bf.load270 = load i32, i32* %197, align 8
  %bf.clear271 = and i32 %bf.load270, 65535
  switch i32 %bf.clear271, label %sw.default [
    i32 54, label %sw.bb
    i32 103, label %sw.bb.275
    i32 114, label %sw.bb.275
    i32 102, label %sw.bb.325
    i32 119, label %sw.bb.325
    i32 113, label %sw.bb.375
    i32 112, label %sw.bb.376
    i32 106, label %sw.bb.377
    i32 107, label %sw.bb.377
    i32 104, label %sw.bb.397
    i32 105, label %sw.bb.397
  ]

sw.bb:                                            ; preds = %if.else.269
  %198 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %200 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp272 = icmp eq %struct.rtx_def* %199, %200
  %cond274 = select i1 %cmp272, i32 0, i32 1
  call void @predict_insn_def(%struct.rtx_def* %198, i32 4, i32 %cond274)
  br label %sw.epilog

sw.bb.275:                                        ; preds = %if.else.269, %if.else.269
  %201 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld276, i32 0, i64 0
  %rtx278 = bitcast %union.rtunion_def* %arrayidx277 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx278, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load279 = load i32, i32* %203, align 8
  %bf.lshr280 = lshr i32 %bf.load279, 16
  %bf.clear281 = and i32 %bf.lshr280, 255
  %idxprom282 = sext i32 %bf.clear281 to i64
  %arrayidx283 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom282
  %204 = load i32, i32* %arrayidx283, align 4
  %cmp284 = icmp eq i32 %204, 2
  br i1 %cmp284, label %if.then.308, label %lor.lhs.false.286

lor.lhs.false.286:                                ; preds = %sw.bb.275
  %205 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 0
  %rtx289 = bitcast %union.rtunion_def* %arrayidx288 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx289, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load290 = load i32, i32* %207, align 8
  %bf.lshr291 = lshr i32 %bf.load290, 16
  %bf.clear292 = and i32 %bf.lshr291, 255
  %idxprom293 = sext i32 %bf.clear292 to i64
  %arrayidx294 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom293
  %208 = load i32, i32* %arrayidx294, align 4
  %cmp295 = icmp eq i32 %208, 6
  br i1 %cmp295, label %if.then.308, label %lor.lhs.false.297

lor.lhs.false.297:                                ; preds = %lor.lhs.false.286
  %209 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld298 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx299 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld298, i32 0, i64 0
  %rtx300 = bitcast %union.rtunion_def* %arrayidx299 to %struct.rtx_def**
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtx300, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load301 = load i32, i32* %211, align 8
  %bf.lshr302 = lshr i32 %bf.load301, 16
  %bf.clear303 = and i32 %bf.lshr302, 255
  %idxprom304 = sext i32 %bf.clear303 to i64
  %arrayidx305 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom304
  %212 = load i32, i32* %arrayidx305, align 4
  %cmp306 = icmp eq i32 %212, 8
  br i1 %cmp306, label %if.then.308, label %if.else.309

if.then.308:                                      ; preds = %lor.lhs.false.297, %lor.lhs.false.286, %sw.bb.275
  br label %if.end.324

if.else.309:                                      ; preds = %lor.lhs.false.297
  %213 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 1
  %rtx312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx312, align 8
  %215 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp313 = icmp eq %struct.rtx_def* %214, %215
  br i1 %cmp313, label %if.then.321, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %if.else.309
  %216 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 0
  %rtx318 = bitcast %union.rtunion_def* %arrayidx317 to %struct.rtx_def**
  %217 = load %struct.rtx_def*, %struct.rtx_def** %rtx318, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp319 = icmp eq %struct.rtx_def* %217, %218
  br i1 %cmp319, label %if.then.321, label %if.else.322

if.then.321:                                      ; preds = %lor.lhs.false.315, %if.else.309
  br label %if.end.323

if.else.322:                                      ; preds = %lor.lhs.false.315
  %219 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %219, i32 15, i32 0)
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.322, %if.then.321
  br label %if.end.324

if.end.324:                                       ; preds = %if.end.323, %if.then.308
  br label %sw.epilog

sw.bb.325:                                        ; preds = %if.else.269, %if.else.269
  %220 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %220, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtx328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.rtx_def**
  %221 = load %struct.rtx_def*, %struct.rtx_def** %rtx328, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %bf.load329 = load i32, i32* %222, align 8
  %bf.lshr330 = lshr i32 %bf.load329, 16
  %bf.clear331 = and i32 %bf.lshr330, 255
  %idxprom332 = sext i32 %bf.clear331 to i64
  %arrayidx333 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom332
  %223 = load i32, i32* %arrayidx333, align 4
  %cmp334 = icmp eq i32 %223, 2
  br i1 %cmp334, label %if.then.358, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %sw.bb.325
  %224 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 0
  %rtx339 = bitcast %union.rtunion_def* %arrayidx338 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx339, align 8
  %226 = bitcast %struct.rtx_def* %225 to i32*
  %bf.load340 = load i32, i32* %226, align 8
  %bf.lshr341 = lshr i32 %bf.load340, 16
  %bf.clear342 = and i32 %bf.lshr341, 255
  %idxprom343 = sext i32 %bf.clear342 to i64
  %arrayidx344 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom343
  %227 = load i32, i32* %arrayidx344, align 4
  %cmp345 = icmp eq i32 %227, 6
  br i1 %cmp345, label %if.then.358, label %lor.lhs.false.347

lor.lhs.false.347:                                ; preds = %lor.lhs.false.336
  %228 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld348 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx349 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld348, i32 0, i64 0
  %rtx350 = bitcast %union.rtunion_def* %arrayidx349 to %struct.rtx_def**
  %229 = load %struct.rtx_def*, %struct.rtx_def** %rtx350, align 8
  %230 = bitcast %struct.rtx_def* %229 to i32*
  %bf.load351 = load i32, i32* %230, align 8
  %bf.lshr352 = lshr i32 %bf.load351, 16
  %bf.clear353 = and i32 %bf.lshr352, 255
  %idxprom354 = sext i32 %bf.clear353 to i64
  %arrayidx355 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom354
  %231 = load i32, i32* %arrayidx355, align 4
  %cmp356 = icmp eq i32 %231, 8
  br i1 %cmp356, label %if.then.358, label %if.else.359

if.then.358:                                      ; preds = %lor.lhs.false.347, %lor.lhs.false.336, %sw.bb.325
  br label %if.end.374

if.else.359:                                      ; preds = %lor.lhs.false.347
  %232 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 1
  %rtx362 = bitcast %union.rtunion_def* %arrayidx361 to %struct.rtx_def**
  %233 = load %struct.rtx_def*, %struct.rtx_def** %rtx362, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp363 = icmp eq %struct.rtx_def* %233, %234
  br i1 %cmp363, label %if.then.371, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %if.else.359
  %235 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtx368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtx_def**
  %236 = load %struct.rtx_def*, %struct.rtx_def** %rtx368, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp369 = icmp eq %struct.rtx_def* %236, %237
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %lor.lhs.false.365, %if.else.359
  br label %if.end.373

if.else.372:                                      ; preds = %lor.lhs.false.365
  %238 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %238, i32 15, i32 1)
  br label %if.end.373

if.end.373:                                       ; preds = %if.else.372, %if.then.371
  br label %if.end.374

if.end.374:                                       ; preds = %if.end.373, %if.then.358
  br label %sw.epilog

sw.bb.375:                                        ; preds = %if.else.269
  %239 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %239, i32 16, i32 1)
  br label %sw.epilog

sw.bb.376:                                        ; preds = %if.else.269
  %240 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %240, i32 16, i32 0)
  br label %sw.epilog

sw.bb.377:                                        ; preds = %if.else.269, %if.else.269
  %241 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld378 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %241, i32 0, i32 1
  %arrayidx379 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld378, i32 0, i64 1
  %rtx380 = bitcast %union.rtunion_def* %arrayidx379 to %struct.rtx_def**
  %242 = load %struct.rtx_def*, %struct.rtx_def** %rtx380, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp381 = icmp eq %struct.rtx_def* %242, %243
  br i1 %cmp381, label %if.then.395, label %lor.lhs.false.383

lor.lhs.false.383:                                ; preds = %sw.bb.377
  %244 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld384 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx385 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld384, i32 0, i64 1
  %rtx386 = bitcast %union.rtunion_def* %arrayidx385 to %struct.rtx_def**
  %245 = load %struct.rtx_def*, %struct.rtx_def** %rtx386, align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp387 = icmp eq %struct.rtx_def* %245, %246
  br i1 %cmp387, label %if.then.395, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %lor.lhs.false.383
  %247 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld390 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld390, i32 0, i64 1
  %rtx392 = bitcast %union.rtunion_def* %arrayidx391 to %struct.rtx_def**
  %248 = load %struct.rtx_def*, %struct.rtx_def** %rtx392, align 8
  %249 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp393 = icmp eq %struct.rtx_def* %248, %249
  br i1 %cmp393, label %if.then.395, label %if.end.396

if.then.395:                                      ; preds = %lor.lhs.false.389, %lor.lhs.false.383, %sw.bb.377
  %250 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %250, i32 14, i32 0)
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.395, %lor.lhs.false.389
  br label %sw.epilog

sw.bb.397:                                        ; preds = %if.else.269, %if.else.269
  %251 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %251, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 1
  %rtx400 = bitcast %union.rtunion_def* %arrayidx399 to %struct.rtx_def**
  %252 = load %struct.rtx_def*, %struct.rtx_def** %rtx400, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp401 = icmp eq %struct.rtx_def* %252, %253
  br i1 %cmp401, label %if.then.415, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %sw.bb.397
  %254 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld404 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx405 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld404, i32 0, i64 1
  %rtx406 = bitcast %union.rtunion_def* %arrayidx405 to %struct.rtx_def**
  %255 = load %struct.rtx_def*, %struct.rtx_def** %rtx406, align 8
  %256 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp407 = icmp eq %struct.rtx_def* %255, %256
  br i1 %cmp407, label %if.then.415, label %lor.lhs.false.409

lor.lhs.false.409:                                ; preds = %lor.lhs.false.403
  %257 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 1
  %rtx412 = bitcast %union.rtunion_def* %arrayidx411 to %struct.rtx_def**
  %258 = load %struct.rtx_def*, %struct.rtx_def** %rtx412, align 8
  %259 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp413 = icmp eq %struct.rtx_def* %258, %259
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %lor.lhs.false.409, %lor.lhs.false.403, %sw.bb.397
  %260 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  call void @predict_insn_def(%struct.rtx_def* %260, i32 14, i32 1)
  br label %if.end.416

if.end.416:                                       ; preds = %if.then.415, %lor.lhs.false.409
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.269
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.416, %if.end.396, %sw.bb.376, %sw.bb.375, %if.end.374, %if.end.324, %sw.bb
  br label %if.end.417

if.end.417:                                       ; preds = %sw.epilog, %if.end.268
  br label %for.inc.418

for.inc.418:                                      ; preds = %if.end.417, %if.then.218, %if.then.125
  %261 = load i32, i32* %i, align 4
  %inc419 = add nsw i32 %261, 1
  store i32 %inc419, i32* %i, align 4
  br label %for.cond.57

for.end.420:                                      ; preds = %for.cond.57
  store i32 0, i32* %i, align 4
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.453, %for.end.420
  %262 = load i32, i32* %i, align 4
  %263 = load i32, i32* @n_basic_blocks, align 4
  %cmp422 = icmp slt i32 %262, %263
  br i1 %cmp422, label %for.body.424, label %for.end.455

for.body.424:                                     ; preds = %for.cond.421
  %264 = load i32, i32* %i, align 4
  %idxprom425 = sext i32 %264 to i64
  %265 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data426 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %265, i32 0, i32 4
  %bb427 = bitcast %union.varray_data_tag* %data426 to [1 x %struct.basic_block_def*]*
  %arrayidx428 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb427, i32 0, i64 %idxprom425
  %266 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx428, align 8
  %end429 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %266, i32 0, i32 1
  %267 = load %struct.rtx_def*, %struct.rtx_def** %end429, align 8
  %268 = bitcast %struct.rtx_def* %267 to i32*
  %bf.load430 = load i32, i32* %268, align 8
  %bf.clear431 = and i32 %bf.load430, 65535
  %cmp432 = icmp eq i32 %bf.clear431, 33
  br i1 %cmp432, label %land.lhs.true.434, label %if.end.452

land.lhs.true.434:                                ; preds = %for.body.424
  %269 = load i32, i32* %i, align 4
  %idxprom435 = sext i32 %269 to i64
  %270 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data436 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %270, i32 0, i32 4
  %bb437 = bitcast %union.varray_data_tag* %data436 to [1 x %struct.basic_block_def*]*
  %arrayidx438 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb437, i32 0, i64 %idxprom435
  %271 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx438, align 8
  %end439 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %271, i32 0, i32 1
  %272 = load %struct.rtx_def*, %struct.rtx_def** %end439, align 8
  %call440 = call i32 @any_condjump_p(%struct.rtx_def* %272)
  %tobool441 = icmp ne i32 %call440, 0
  br i1 %tobool441, label %if.then.442, label %if.end.452

if.then.442:                                      ; preds = %land.lhs.true.434
  %273 = load i32, i32* %i, align 4
  %idxprom443 = sext i32 %273 to i64
  %274 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data444 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %274, i32 0, i32 4
  %bb445 = bitcast %union.varray_data_tag* %data444 to [1 x %struct.basic_block_def*]*
  %arrayidx446 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb445, i32 0, i64 %idxprom443
  %275 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx446, align 8
  %end447 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %275, i32 0, i32 1
  %276 = load %struct.rtx_def*, %struct.rtx_def** %end447, align 8
  %277 = load i32, i32* %i, align 4
  %idxprom448 = sext i32 %277 to i64
  %278 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data449 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %278, i32 0, i32 4
  %bb450 = bitcast %union.varray_data_tag* %data449 to [1 x %struct.basic_block_def*]*
  %arrayidx451 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb450, i32 0, i64 %idxprom448
  %279 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx451, align 8
  call void @combine_predictions_for_insn(%struct.rtx_def* %276, %struct.basic_block_def* %279)
  br label %if.end.452

if.end.452:                                       ; preds = %if.then.442, %land.lhs.true.434, %for.body.424
  br label %for.inc.453

for.inc.453:                                      ; preds = %if.end.452
  %280 = load i32, i32* %i, align 4
  %inc454 = add nsw i32 %280, 1
  store i32 %inc454, i32* %i, align 4
  br label %for.cond.421

for.end.455:                                      ; preds = %for.cond.421
  %281 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %post_dominators, align 8
  %282 = bitcast %struct.simple_bitmap_def** %281 to i8*
  call void @free(i8* %282) #5
  %283 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators, align 8
  %284 = bitcast %struct.simple_bitmap_def** %283 to i8*
  call void @free(i8* %284) #5
  %285 = load %struct.loops*, %struct.loops** %loops_info.addr, align 8
  call void @estimate_bb_frequencies(%struct.loops* %285)
  ret void
}

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

declare i32 @flow_loop_scan(%struct.loops*, %struct.loop*, i32) #1

declare %struct.rtx_def* @get_condition(%struct.rtx_def*, %struct.rtx_def**) #1

; Function Attrs: nounwind uwtable
define internal void @combine_predictions_for_insn(%struct.rtx_def* %insn, %struct.basic_block_def* %bb) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %prob_note = alloca %struct.rtx_def*, align 8
  %pnote = alloca %struct.rtx_def**, align 8
  %note = alloca %struct.rtx_def*, align 8
  %best_probability = alloca i32, align 4
  %best_predictor = alloca i32, align 4
  %combined_probability = alloca i32, align 4
  %d = alloca i32, align 4
  %first_match = alloca i8, align 1
  %found = alloca i8, align 1
  %predictor = alloca i32, align 4
  %probability = alloca i32, align 4
  %predictor69 = alloca i32, align 4
  %probability80 = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %0, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %prob_note, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def** %rtx, %struct.rtx_def*** %pnote, align 8
  store i32 5000, i32* %best_probability, align 4
  store i32 19, i32* %best_predictor, align 4
  store i32 5000, i32* %combined_probability, align 4
  store i8 0, i8* %first_match, align 1
  store i8 0, i8* %found, align 1
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %5 = load i32, i32* %rtint, align 4
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i32 0, i32 0), i32 %5, i32 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 6
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool7 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 20
  br i1 %cmp, label %if.then.8, label %if.end.44

if.then.8:                                        ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx16 to i64*
  %16 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %16 to i32
  store i32 %conv, i32* %predictor, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtwint25 = bitcast %union.rtunion_def* %arrayidx24 to i64*
  %20 = load i64, i64* %rtwint25, align 8
  %conv26 = trunc i64 %20 to i32
  store i32 %conv26, i32* %probability, align 4
  store i8 1, i8* %found, align 1
  %21 = load i32, i32* %best_predictor, align 4
  %22 = load i32, i32* %predictor, align 4
  %cmp27 = icmp sgt i32 %21, %22
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.8
  %23 = load i32, i32* %probability, align 4
  store i32 %23, i32* %best_probability, align 4
  %24 = load i32, i32* %predictor, align 4
  store i32 %24, i32* %best_predictor, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.then.8
  %25 = load i32, i32* %combined_probability, align 4
  %26 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %25, %26
  %27 = load i32, i32* %combined_probability, align 4
  %sub = sub nsw i32 10000, %27
  %28 = load i32, i32* %probability, align 4
  %sub31 = sub nsw i32 10000, %28
  %mul32 = mul nsw i32 %sub, %sub31
  %add = add nsw i32 %mul, %mul32
  store i32 %add, i32* %d, align 4
  %29 = load i32, i32* %d, align 4
  %cmp33 = icmp eq i32 %29, 0
  br i1 %cmp33, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.end.30
  store i32 5000, i32* %combined_probability, align 4
  br label %if.end.43

if.else:                                          ; preds = %if.end.30
  %30 = load i32, i32* %combined_probability, align 4
  %conv36 = sitofp i32 %30 to double
  %31 = load i32, i32* %probability, align 4
  %conv37 = sitofp i32 %31 to double
  %mul38 = fmul double %conv36, %conv37
  %mul39 = fmul double %mul38, 1.000000e+04
  %32 = load i32, i32* %d, align 4
  %conv40 = sitofp i32 %32 to double
  %div = fdiv double %mul39, %conv40
  %add41 = fadd double %div, 5.000000e-01
  %conv42 = fptosi double %add41 to i32
  store i32 %conv42, i32* %combined_probability, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.35
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %best_predictor, align 4
  %idxprom = sext i32 %35 to i64
  %arrayidx48 = getelementptr inbounds [20 x %struct.predictor_info], [20 x %struct.predictor_info]* @predictor_info, i32 0, i64 %idxprom
  %flags = getelementptr inbounds %struct.predictor_info, %struct.predictor_info* %arrayidx48, i32 0, i32 2
  %36 = load i32, i32* %flags, align 4
  %and = and i32 %36, 1
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.end
  store i8 1, i8* %first_match, align 1
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %for.end
  %37 = load i8, i8* %found, align 1
  %tobool52 = trunc i8 %37 to i1
  br i1 %tobool52, label %if.else.54, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %38 = load i32, i32* %combined_probability, align 4
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  call void @dump_prediction(i32 3, i32 %38, %struct.basic_block_def* %39, i32 1)
  br label %if.end.58

if.else.54:                                       ; preds = %if.end.51
  %40 = load i32, i32* %combined_probability, align 4
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %42 = load i8, i8* %first_match, align 1
  %tobool55 = trunc i8 %42 to i1
  %lnot = xor i1 %tobool55, true
  %lnot.ext = zext i1 %lnot to i32
  call void @dump_prediction(i32 1, i32 %40, %struct.basic_block_def* %41, i32 %lnot.ext)
  %43 = load i32, i32* %best_probability, align 4
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %45 = load i8, i8* %first_match, align 1
  %tobool56 = trunc i8 %45 to i1
  %conv57 = zext i1 %tobool56 to i32
  call void @dump_prediction(i32 2, i32 %43, %struct.basic_block_def* %44, i32 %conv57)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.54, %if.then.53
  %46 = load i8, i8* %first_match, align 1
  %tobool59 = trunc i8 %46 to i1
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.58
  %47 = load i32, i32* %best_probability, align 4
  store i32 %47, i32* %combined_probability, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.58
  %48 = load i32, i32* %combined_probability, align 4
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  call void @dump_prediction(i32 0, i32 %48, %struct.basic_block_def* %49, i32 1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.end.61
  %50 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %50, align 8
  %tobool62 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool62, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %52 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %52, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load63 = load i32, i32* %54, align 8
  %bf.lshr64 = lshr i32 %bf.load63, 16
  %bf.clear65 = and i32 %bf.lshr64, 255
  %cmp66 = icmp eq i32 %bf.clear65, 20
  br i1 %cmp66, label %if.then.68, label %if.else.97

if.then.68:                                       ; preds = %while.body
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %55, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtwint78 = bitcast %union.rtunion_def* %arrayidx77 to i64*
  %59 = load i64, i64* %rtwint78, align 8
  %conv79 = trunc i64 %59 to i32
  store i32 %conv79, i32* %predictor69, align 4
  %60 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %60, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtwint89 = bitcast %union.rtunion_def* %arrayidx88 to i64*
  %64 = load i64, i64* %rtwint89, align 8
  %conv90 = trunc i64 %64 to i32
  store i32 %conv90, i32* %probability80, align 4
  %65 = load i32, i32* %predictor69, align 4
  %66 = load i32, i32* %probability80, align 4
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %68 = load i8, i8* %first_match, align 1
  %tobool91 = trunc i8 %68 to i1
  br i1 %tobool91, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %if.then.68
  %69 = load i32, i32* %best_predictor, align 4
  %70 = load i32, i32* %predictor69, align 4
  %cmp92 = icmp eq i32 %69, %70
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.68
  %71 = phi i1 [ true, %if.then.68 ], [ %cmp92, %lor.rhs ]
  %lor.ext = zext i1 %71 to i32
  call void @dump_prediction(i32 %65, i32 %66, %struct.basic_block_def* %67, i32 %lor.ext)
  %72 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %72, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 1
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  %75 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %75, align 8
  br label %if.end.101

if.else.97:                                       ; preds = %while.body
  %76 = load %struct.rtx_def**, %struct.rtx_def*** %pnote, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %76, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  store %struct.rtx_def** %rtx100, %struct.rtx_def*** %pnote, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.97, %lor.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %78 = load %struct.rtx_def*, %struct.rtx_def** %prob_note, align 8
  %tobool102 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool102, label %if.end.137, label %if.then.103

if.then.103:                                      ; preds = %while.end
  %79 = load i32, i32* %combined_probability, align 4
  %conv104 = sext i32 %79 to i64
  %call105 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv104)
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 6
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  %call109 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 16, %struct.rtx_def* %call105, %struct.rtx_def* %81)
  %82 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 6
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  store %struct.rtx_def* %call109, %struct.rtx_def** %rtx112, align 8
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %83, i32 0, i32 5
  %84 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %84, i32 0, i32 1
  %85 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool113 = icmp ne %struct.edge_def* %85, null
  br i1 %tobool113, label %if.then.114, label %if.end.136

if.then.114:                                      ; preds = %if.then.103
  %86 = load i32, i32* %combined_probability, align 4
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 5
  %88 = load %struct.edge_def*, %struct.edge_def** %succ115, align 8
  %flags116 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 6
  %89 = load i32, i32* %flags116, align 4
  %and117 = and i32 %89, 1
  %tobool118 = icmp ne i32 %and117, 0
  br i1 %tobool118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.114
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ119 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i32 0, i32 5
  %91 = load %struct.edge_def*, %struct.edge_def** %succ119, align 8
  %succ_next120 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 1
  %92 = load %struct.edge_def*, %struct.edge_def** %succ_next120, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.114
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ121 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 5
  %94 = load %struct.edge_def*, %struct.edge_def** %succ121, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %92, %cond.true ], [ %94, %cond.false ]
  %probability122 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond, i32 0, i32 7
  store i32 %86, i32* %probability122, align 4
  %95 = load i32, i32* %combined_probability, align 4
  %sub123 = sub nsw i32 10000, %95
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ124 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 5
  %97 = load %struct.edge_def*, %struct.edge_def** %succ124, align 8
  %flags125 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i32 0, i32 6
  %98 = load i32, i32* %flags125, align 4
  %and126 = and i32 %98, 1
  %tobool127 = icmp ne i32 %and126, 0
  br i1 %tobool127, label %cond.true.128, label %cond.false.130

cond.true.128:                                    ; preds = %cond.end
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ129 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %99, i32 0, i32 5
  %100 = load %struct.edge_def*, %struct.edge_def** %succ129, align 8
  br label %cond.end.133

cond.false.130:                                   ; preds = %cond.end
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ131 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 5
  %102 = load %struct.edge_def*, %struct.edge_def** %succ131, align 8
  %succ_next132 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %102, i32 0, i32 1
  %103 = load %struct.edge_def*, %struct.edge_def** %succ_next132, align 8
  br label %cond.end.133

cond.end.133:                                     ; preds = %cond.false.130, %cond.true.128
  %cond134 = phi %struct.edge_def* [ %100, %cond.true.128 ], [ %103, %cond.false.130 ]
  %probability135 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond134, i32 0, i32 7
  store i32 %sub123, i32* %probability135, align 4
  br label %if.end.136

if.end.136:                                       ; preds = %cond.end.133, %if.then.103
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %while.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @estimate_bb_frequencies(%struct.loops* %loops) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %i = alloca i32, align 4
  %freq_max = alloca double, align 8
  %last_insn = alloca %struct.rtx_def*, align 8
  %probability = alloca i32, align 4
  %fallthru = alloca %struct.edge_def*, align 8
  %branch = alloca %struct.edge_def*, align 8
  %nedges = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %e76 = alloca %struct.edge_def*, align 8
  %bb77 = alloca %struct.basic_block_def*, align 8
  %bb157 = alloca %struct.basic_block_def*, align 8
  %tmp = alloca double, align 8
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store double 0.000000e+00, double* %freq_max, align 8
  %call = call zeroext i1 @mark_dfs_back_edges()
  %0 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @counts_to_freqs()
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.68, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.70

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %last_insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 33
  br i1 %cmp1, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call2 = call i32 @any_condjump_p(%struct.rtx_def* %9)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false.4, label %if.then.10

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data6 to [1 x %struct.basic_block_def*]*
  %arrayidx8 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom5
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx8, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 5
  %13 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 1
  %14 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp9 = icmp eq %struct.edge_def* %14, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %lor.lhs.false.4, %lor.lhs.false, %for.body
  store i32 0, i32* %nedges, align 4
  %15 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb13 = bitcast %union.varray_data_tag* %data12 to [1 x %struct.basic_block_def*]*
  %arrayidx14 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb13, i32 0, i64 %idxprom11
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx14, align 8
  %succ15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 5
  %18 = load %struct.edge_def*, %struct.edge_def** %succ15, align 8
  store %struct.edge_def* %18, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then.10
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool17 = icmp ne %struct.edge_def* %19, null
  br i1 %tobool17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %20 = load i32, i32* %nedges, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %nedges, align 4
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 7
  %22 = load i32, i32* %probability19, align 4
  %cmp20 = icmp ne i32 %22, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body.18
  br label %for.end

if.end.22:                                        ; preds = %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 1
  %24 = load %struct.edge_def*, %struct.edge_def** %succ_next23, align 8
  store %struct.edge_def* %24, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.end:                                          ; preds = %if.then.21, %for.cond.16
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool24 = icmp ne %struct.edge_def* %25, null
  br i1 %tobool24, label %if.end.39, label %if.then.25

if.then.25:                                       ; preds = %for.end
  %26 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %26 to i64
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %bb28 = bitcast %union.varray_data_tag* %data27 to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb28, i32 0, i64 %idxprom26
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  %succ30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 5
  %29 = load %struct.edge_def*, %struct.edge_def** %succ30, align 8
  store %struct.edge_def* %29, %struct.edge_def** %e, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.36, %if.then.25
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool32 = icmp ne %struct.edge_def* %30, null
  br i1 %tobool32, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.31
  %31 = load i32, i32* %nedges, align 4
  %div = sdiv i32 %31, 2
  %add = add nsw i32 10000, %div
  %32 = load i32, i32* %nedges, align 4
  %div34 = sdiv i32 %add, %32
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 7
  store i32 %div34, i32* %probability35, align 4
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 1
  %35 = load %struct.edge_def*, %struct.edge_def** %succ_next37, align 8
  store %struct.edge_def* %35, %struct.edge_def** %e, align 8
  br label %for.cond.31

for.end.38:                                       ; preds = %for.cond.31
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %for.end
  br label %if.end.67

if.else:                                          ; preds = %lor.lhs.false.4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call40 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %36, i32 16, %struct.rtx_def* null)
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call40, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx43 to i64*
  %38 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %38 to i32
  store i32 %conv, i32* %probability, align 4
  %39 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %39 to i64
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %bb46 = bitcast %union.varray_data_tag* %data45 to [1 x %struct.basic_block_def*]*
  %arrayidx47 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb46, i32 0, i64 %idxprom44
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx47, align 8
  %succ48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 5
  %42 = load %struct.edge_def*, %struct.edge_def** %succ48, align 8
  store %struct.edge_def* %42, %struct.edge_def** %fallthru, align 8
  %43 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 6
  %44 = load i32, i32* %flags, align 4
  %tobool49 = icmp ne i32 %44, 0
  %lnot = xor i1 %tobool49, true
  %lnot.ext = zext i1 %lnot to i32
  %and = and i32 %lnot.ext, 1
  %tobool50 = icmp ne i32 %and, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.else
  %45 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %succ_next52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 1
  %46 = load %struct.edge_def*, %struct.edge_def** %succ_next52, align 8
  store %struct.edge_def* %46, %struct.edge_def** %fallthru, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.else
  %47 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data55 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %bb56 = bitcast %union.varray_data_tag* %data55 to [1 x %struct.basic_block_def*]*
  %arrayidx57 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb56, i32 0, i64 %idxprom54
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx57, align 8
  %succ58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 5
  %50 = load %struct.edge_def*, %struct.edge_def** %succ58, align 8
  store %struct.edge_def* %50, %struct.edge_def** %branch, align 8
  %51 = load %struct.edge_def*, %struct.edge_def** %branch, align 8
  %flags59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 6
  %52 = load i32, i32* %flags59, align 4
  %and60 = and i32 %52, 1
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %if.end.53
  %53 = load %struct.edge_def*, %struct.edge_def** %branch, align 8
  %succ_next63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 1
  %54 = load %struct.edge_def*, %struct.edge_def** %succ_next63, align 8
  store %struct.edge_def* %54, %struct.edge_def** %branch, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.end.53
  %55 = load i32, i32* %probability, align 4
  %56 = load %struct.edge_def*, %struct.edge_def** %branch, align 8
  %probability65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 7
  store i32 %55, i32* %probability65, align 4
  %57 = load i32, i32* %probability, align 4
  %sub = sub nsw i32 10000, %57
  %58 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %probability66 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 7
  store i32 %sub, i32* %probability66, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.64, %if.end.39
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %59 = load i32, i32* %i, align 4
  %inc69 = add nsw i32 %59, 1
  store i32 %inc69, i32* %i, align 4
  br label %for.cond

for.end.70:                                       ; preds = %for.cond
  %60 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %probability71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 7
  store i32 10000, i32* %probability71, align 4
  call void @alloc_aux_for_blocks(i32 24)
  call void @alloc_aux_for_edges(i32 16)
  store i32 -2, i32* %i, align 4
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.105, %for.end.70
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* @n_basic_blocks, align 4
  %cmp73 = icmp slt i32 %61, %62
  br i1 %cmp73, label %for.body.75, label %for.end.107

for.body.75:                                      ; preds = %for.cond.72
  %63 = load i32, i32* %i, align 4
  %cmp78 = icmp eq i32 %63, -2
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %for.body.75
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb77, align 8
  br label %if.end.91

if.else.81:                                       ; preds = %for.body.75
  %64 = load i32, i32* %i, align 4
  %cmp82 = icmp eq i32 %64, -1
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.else.81
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %bb77, align 8
  br label %if.end.90

if.else.85:                                       ; preds = %if.else.81
  %65 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %65 to i64
  %66 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data87 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %66, i32 0, i32 4
  %bb88 = bitcast %union.varray_data_tag* %data87 to [1 x %struct.basic_block_def*]*
  %arrayidx89 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb88, i32 0, i64 %idxprom86
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx89, align 8
  store %struct.basic_block_def* %67, %struct.basic_block_def** %bb77, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.85, %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.80
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 10
  %69 = load i8*, i8** %aux, align 8
  %70 = bitcast i8* %69 to %struct.block_info_def*
  %tovisit = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %70, i32 0, i32 2
  %bf.load92 = load i8, i8* %tovisit, align 8
  %bf.clear93 = and i8 %bf.load92, -2
  store i8 %bf.clear93, i8* %tovisit, align 8
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %succ94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 5
  %72 = load %struct.edge_def*, %struct.edge_def** %succ94, align 8
  store %struct.edge_def* %72, %struct.edge_def** %e76, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.102, %if.end.91
  %73 = load %struct.edge_def*, %struct.edge_def** %e76, align 8
  %tobool96 = icmp ne %struct.edge_def* %73, null
  br i1 %tobool96, label %for.body.97, label %for.end.104

for.body.97:                                      ; preds = %for.cond.95
  %74 = load %struct.edge_def*, %struct.edge_def** %e76, align 8
  %probability98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 7
  %75 = load i32, i32* %probability98, align 4
  %conv99 = sitofp i32 %75 to double
  %div100 = fdiv double %conv99, 1.000000e+04
  %76 = load %struct.edge_def*, %struct.edge_def** %e76, align 8
  %aux101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 5
  %77 = load i8*, i8** %aux101, align 8
  %78 = bitcast i8* %77 to %struct.edge_info_def*
  %back_edge_prob = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %78, i32 0, i32 0
  store volatile double %div100, double* %back_edge_prob, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.97
  %79 = load %struct.edge_def*, %struct.edge_def** %e76, align 8
  %succ_next103 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 1
  %80 = load %struct.edge_def*, %struct.edge_def** %succ_next103, align 8
  store %struct.edge_def* %80, %struct.edge_def** %e76, align 8
  br label %for.cond.95

for.end.104:                                      ; preds = %for.cond.95
  br label %for.inc.105

for.inc.105:                                      ; preds = %for.end.104
  %81 = load i32, i32* %i, align 4
  %inc106 = add nsw i32 %81, 1
  store i32 %inc106, i32* %i, align 4
  br label %for.cond.72

for.end.107:                                      ; preds = %for.cond.72
  %82 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %82, i32 0, i32 3
  %83 = load %struct.loop*, %struct.loop** %tree_root, align 8
  call void @estimate_loops_at_level(%struct.loop* %83)
  store i32 0, i32* %i, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.120, %for.end.107
  %84 = load i32, i32* %i, align 4
  %85 = load i32, i32* @n_basic_blocks, align 4
  %cmp109 = icmp slt i32 %84, %85
  br i1 %cmp109, label %for.body.111, label %for.end.122

for.body.111:                                     ; preds = %for.cond.108
  %86 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %86 to i64
  %87 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data113 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %87, i32 0, i32 4
  %bb114 = bitcast %union.varray_data_tag* %data113 to [1 x %struct.basic_block_def*]*
  %arrayidx115 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb114, i32 0, i64 %idxprom112
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx115, align 8
  %aux116 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 10
  %89 = load i8*, i8** %aux116, align 8
  %90 = bitcast i8* %89 to %struct.block_info_def*
  %tovisit117 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %90, i32 0, i32 2
  %bf.load118 = load i8, i8* %tovisit117, align 8
  %bf.clear119 = and i8 %bf.load118, -2
  %bf.set = or i8 %bf.clear119, 1
  store i8 %bf.set, i8* %tovisit117, align 8
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.111
  %91 = load i32, i32* %i, align 4
  %inc121 = add nsw i32 %91, 1
  store i32 %inc121, i32* %i, align 4
  br label %for.cond.108

for.end.122:                                      ; preds = %for.cond.108
  %92 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 10), align 8
  %93 = bitcast i8* %92 to %struct.block_info_def*
  %tovisit123 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %93, i32 0, i32 2
  %bf.load124 = load i8, i8* %tovisit123, align 8
  %bf.clear125 = and i8 %bf.load124, -2
  %bf.set126 = or i8 %bf.clear125, 1
  store i8 %bf.set126, i8* %tovisit123, align 8
  %94 = load i8*, i8** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 10), align 8
  %95 = bitcast i8* %94 to %struct.block_info_def*
  %tovisit127 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %95, i32 0, i32 2
  %bf.load128 = load i8, i8* %tovisit127, align 8
  %bf.clear129 = and i8 %bf.load128, -2
  %bf.set130 = or i8 %bf.clear129, 1
  store i8 %bf.set130, i8* %tovisit127, align 8
  call void @propagate_freq(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.150, %for.end.122
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* @n_basic_blocks, align 4
  %cmp132 = icmp slt i32 %96, %97
  br i1 %cmp132, label %for.body.134, label %for.end.152

for.body.134:                                     ; preds = %for.cond.131
  %98 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %98 to i64
  %99 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data136 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %99, i32 0, i32 4
  %bb137 = bitcast %union.varray_data_tag* %data136 to [1 x %struct.basic_block_def*]*
  %arrayidx138 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb137, i32 0, i64 %idxprom135
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx138, align 8
  %aux139 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %100, i32 0, i32 10
  %101 = load i8*, i8** %aux139, align 8
  %102 = bitcast i8* %101 to %struct.block_info_def*
  %frequency = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %102, i32 0, i32 0
  %103 = load volatile double, double* %frequency, align 8
  %104 = load double, double* %freq_max, align 8
  %cmp140 = fcmp ogt double %103, %104
  br i1 %cmp140, label %if.then.142, label %if.end.149

if.then.142:                                      ; preds = %for.body.134
  %105 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %105 to i64
  %106 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data144 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %106, i32 0, i32 4
  %bb145 = bitcast %union.varray_data_tag* %data144 to [1 x %struct.basic_block_def*]*
  %arrayidx146 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb145, i32 0, i64 %idxprom143
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx146, align 8
  %aux147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 10
  %108 = load i8*, i8** %aux147, align 8
  %109 = bitcast i8* %108 to %struct.block_info_def*
  %frequency148 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %109, i32 0, i32 0
  %110 = load volatile double, double* %frequency148, align 8
  store double %110, double* %freq_max, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.142, %for.body.134
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %111 = load i32, i32* %i, align 4
  %inc151 = add nsw i32 %111, 1
  store i32 %inc151, i32* %i, align 4
  br label %for.cond.131

for.end.152:                                      ; preds = %for.cond.131
  store i32 -2, i32* %i, align 4
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.178, %for.end.152
  %112 = load i32, i32* %i, align 4
  %113 = load i32, i32* @n_basic_blocks, align 4
  %cmp154 = icmp slt i32 %112, %113
  br i1 %cmp154, label %for.body.156, label %for.end.180

for.body.156:                                     ; preds = %for.cond.153
  %114 = load i32, i32* %i, align 4
  %cmp158 = icmp eq i32 %114, -2
  br i1 %cmp158, label %if.then.160, label %if.else.161

if.then.160:                                      ; preds = %for.body.156
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb157, align 8
  br label %if.end.171

if.else.161:                                      ; preds = %for.body.156
  %115 = load i32, i32* %i, align 4
  %cmp162 = icmp eq i32 %115, -1
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %if.else.161
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %bb157, align 8
  br label %if.end.170

if.else.165:                                      ; preds = %if.else.161
  %116 = load i32, i32* %i, align 4
  %idxprom166 = sext i32 %116 to i64
  %117 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data167 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %117, i32 0, i32 4
  %bb168 = bitcast %union.varray_data_tag* %data167 to [1 x %struct.basic_block_def*]*
  %arrayidx169 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb168, i32 0, i64 %idxprom166
  %118 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx169, align 8
  store %struct.basic_block_def* %118, %struct.basic_block_def** %bb157, align 8
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.165, %if.then.164
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %if.then.160
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %bb157, align 8
  %aux172 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 10
  %120 = load i8*, i8** %aux172, align 8
  %121 = bitcast i8* %120 to %struct.block_info_def*
  %frequency173 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %121, i32 0, i32 0
  %122 = load volatile double, double* %frequency173, align 8
  %mul = fmul double %122, 1.000000e+04
  store volatile double %mul, double* %tmp, align 8
  %123 = load double, double* %freq_max, align 8
  %124 = load volatile double, double* %tmp, align 8
  %div174 = fdiv double %124, %123
  store volatile double %div174, double* %tmp, align 8
  %125 = load volatile double, double* %tmp, align 8
  %add175 = fadd double %125, 5.000000e-01
  store volatile double %add175, double* %tmp, align 8
  %126 = load volatile double, double* %tmp, align 8
  %conv176 = fptosi double %126 to i32
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %bb157, align 8
  %frequency177 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 14
  store i32 %conv176, i32* %frequency177, align 4
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.171
  %128 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %128, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond.153

for.end.180:                                      ; preds = %for.cond.153
  call void @free_aux_for_blocks()
  call void @free_aux_for_edges()
  br label %return

return:                                           ; preds = %for.end.180, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @expected_value_to_br_prob() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %ev = alloca %struct.rtx_def*, align 8
  %ev_reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %ev, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %ev_reg, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 37, label %sw.bb
    i32 36, label %sw.bb.7
    i32 33, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %for.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %4, -79
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %ev, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %ev, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %ev_reg, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call6 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %for.inc

sw.bb.7:                                          ; preds = %for.body
  store %struct.rtx_def* null, %struct.rtx_def** %ev, align 8
  br label %for.inc

sw.bb.8:                                          ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load9 = load i32, i32* %11, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp ne i32 %bf.clear10, 33
  br i1 %cmp11, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %ev, align 8
  %cmp12 = icmp eq %struct.rtx_def* %12, null
  br i1 %cmp12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call14 = call i32 @any_condjump_p(%struct.rtx_def* %13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false, %sw.bb.8
  br label %for.inc

if.end.17:                                        ; preds = %lor.lhs.false.13
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %ev, align 8
  %tobool18 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool18, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %sw.default
  %15 = load %struct.rtx_def*, %struct.rtx_def** %ev_reg, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call19 = call i32 @reg_set_p(%struct.rtx_def* %15, %struct.rtx_def* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %ev, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true, %sw.default
  br label %for.inc

sw.epilog:                                        ; preds = %if.end.17
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call23 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %17)
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %cond, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %ev_reg, align 8
  %call30 = call %struct.rtx_def* @canonicalize_condition(%struct.rtx_def* %20, %struct.rtx_def* %21, i32 0, %struct.rtx_def** null, %struct.rtx_def* %22)
  store %struct.rtx_def* %call30, %struct.rtx_def** %cond, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool31 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool31, label %lor.lhs.false.32, label %if.then.44

lor.lhs.false.32:                                 ; preds = %sw.epilog
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %ev_reg, align 8
  %cmp36 = icmp ne %struct.rtx_def* %25, %26
  br i1 %cmp36, label %if.then.44, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.32
  %27 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load41 = load i32, i32* %29, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp ne i32 %bf.clear42, 54
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.37, %lor.lhs.false.32, %sw.epilog
  br label %for.inc

if.end.45:                                        ; preds = %lor.lhs.false.37
  %30 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load46 = load i32, i32* %31, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %32 = load %struct.rtx_def*, %struct.rtx_def** %ev, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 1
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %call54 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %bf.clear47, i32 0, %struct.rtx_def* %33, %struct.rtx_def* %35)
  store %struct.rtx_def* %call54, %struct.rtx_def** %cond, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %call55 = call %struct.rtx_def* @simplify_rtx(%struct.rtx_def* %36)
  store %struct.rtx_def* %call55, %struct.rtx_def** %cond, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  %cmp56 = icmp ne %struct.rtx_def* %37, %38
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.60

land.lhs.true.57:                                 ; preds = %if.end.45
  %39 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp58 = icmp ne %struct.rtx_def* %39, %40
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %land.lhs.true.57
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 608, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.expected_value_to_br_prob, i32 0, i32 0)) #4
  unreachable

if.end.60:                                        ; preds = %land.lhs.true.57, %if.end.45
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  %cmp61 = icmp eq %struct.rtx_def* %42, %43
  %cond62 = select i1 %cmp61, i32 1, i32 0
  call void @predict_insn_def(%struct.rtx_def* %41, i32 6, i32 %cond62)
  br label %for.inc

for.inc:                                          ; preds = %if.end.60, %if.then.44, %if.end.22, %if.then.16, %sw.bb.7, %if.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 2
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @get_insns() #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

declare %struct.rtx_def* @canonicalize_condition(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_rtx(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @expensive_function_p(i32 %threshold) #0 {
entry:
  %retval = alloca i1, align 1
  %threshold.addr = alloca i32, align 4
  %sum = alloca i32, align 4
  %i = alloca i32, align 4
  %limit = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store i32 %threshold, i32* %threshold.addr, align 4
  store i32 0, i32* %sum, align 4
  %0 = load i32, i32* %threshold.addr, align 4
  %cmp = icmp sgt i32 %0, 10000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 828, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.expensive_function_p, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 14), align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i1 true, i1* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i32, i32* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 14), align 4
  %3 = load i32, i32* %threshold.addr, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %limit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %if.end.3
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %bb, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp8 = icmp ne %struct.rtx_def* %11, %14
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.6
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @active_insn_p(%struct.rtx_def* %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %for.body.9
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 14
  %17 = load i32, i32* %frequency, align 4
  %18 = load i32, i32* %sum, align 4
  %add = add i32 %18, %17
  store i32 %add, i32* %sum, align 4
  %19 = load i32, i32* %sum, align 4
  %20 = load i32, i32* %limit, align 4
  %cmp11 = icmp ugt i32 %19, %20
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.10
  store i1 true, i1* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then.12, %if.then.2
  %24 = load i1, i1* %retval
  ret i1 %24
}

declare i32 @active_insn_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @dump_prediction(i32 %predictor, i32 %probability, %struct.basic_block_def* %bb, i32 %used) #0 {
entry:
  %predictor.addr = alloca i32, align 4
  %probability.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %used.addr = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  store i32 %predictor, i32* %predictor.addr, align 4
  store i32 %probability, i32* %probability.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %used, i32* %used.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %1, %struct.edge_def** %e, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 6
  %4 = load i32, i32* %flags, align 4
  %and = and i32 %4, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 1
  %6 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %8 = load i32, i32* %predictor.addr, align 4
  %idxprom = zext i32 %8 to i64
  %arrayidx = getelementptr inbounds [20 x %struct.predictor_info], [20 x %struct.predictor_info]* @predictor_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.predictor_info, %struct.predictor_info* %arrayidx, i32 0, i32 0
  %9 = load i8*, i8** %name, align 8
  %10 = load i32, i32* %used.addr, align 4
  %tobool2 = icmp ne i32 %10, 0
  %cond = select i1 %tobool2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0)
  %11 = load i32, i32* %probability.addr, align 4
  %conv = sitofp i32 %11 to double
  %mul = fmul double %conv, 1.000000e+02
  %div = fdiv double %mul, 1.000000e+04
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i32 0, i32 0), i8* %9, i8* %cond, double %div)
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 13
  %13 = load i64, i64* %count, align 8
  %tobool3 = icmp ne i64 %13, 0
  br i1 %tobool3, label %if.then.4, label %if.end.18

if.then.4:                                        ; preds = %while.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0))
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 13
  %17 = load i64, i64* %count6, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 8
  %21 = load i64, i64* %count9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 8
  %24 = load i64, i64* %count11, align 8
  %conv12 = sitofp i64 %24 to double
  %mul13 = fmul double %conv12, 1.000000e+02
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %count14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 13
  %26 = load i64, i64* %count14, align 8
  %conv15 = sitofp i64 %26 to double
  %div16 = fdiv double %mul13, %conv15
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), double %div16)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.4, %while.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

declare zeroext i1 @mark_dfs_back_edges() #1

; Function Attrs: nounwind uwtable
define internal void @counts_to_freqs() #0 {
entry:
  %count_max = alloca i64, align 8
  %i = alloca i32, align 4
  %bb10 = alloca %struct.basic_block_def*, align 8
  store i64 1, i64* %count_max, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 13
  %5 = load i64, i64* %count, align 8
  %6 = load i64, i64* %count_max, align 8
  %cmp1 = icmp sgt i64 %5, %6
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %count6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 13
  %10 = load i64, i64* %count6, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i64, i64* %count_max, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ %11, %cond.false ]
  store i64 %cond, i64* %count_max, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -2, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.22, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* @n_basic_blocks, align 4
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body.9, label %for.end.24

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %i, align 4
  %cmp11 = icmp eq i32 %15, -2
  br i1 %cmp11, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.9
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %bb10, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.body.9
  %16 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %16, -1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %bb10, align 8
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom15
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  store %struct.basic_block_def* %19, %struct.basic_block_def** %bb10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.19

if.end.19:                                        ; preds = %if.end, %if.then
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb10, align 8
  %count20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 13
  %21 = load i64, i64* %count20, align 8
  %mul = mul nsw i64 %21, 10000
  %22 = load i64, i64* %count_max, align 8
  %div = sdiv i64 %22, 2
  %add = add nsw i64 %mul, %div
  %23 = load i64, i64* %count_max, align 8
  %div21 = sdiv i64 %add, %23
  %conv = trunc i64 %div21 to i32
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb10, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 14
  store i32 %conv, i32* %frequency, align 4
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.19
  %25 = load i32, i32* %i, align 4
  %inc23 = add nsw i32 %25, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond.7

for.end.24:                                       ; preds = %for.cond.7
  ret void
}

declare void @alloc_aux_for_blocks(i32) #1

declare void @alloc_aux_for_edges(i32) #1

; Function Attrs: nounwind uwtable
define internal void @estimate_loops_at_level(%struct.loop* %first_loop) #0 {
entry:
  %first_loop.addr = alloca %struct.loop*, align 8
  %l = alloca %struct.loop*, align 8
  %loop = alloca %struct.loop*, align 8
  %n = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.loop* %first_loop, %struct.loop** %first_loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %first_loop.addr, align 8
  store %struct.loop* %0, %struct.loop** %loop, align 8
  %1 = load %struct.loop*, %struct.loop** %first_loop.addr, align 8
  store %struct.loop* %1, %struct.loop** %loop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8
  %tobool = icmp ne %struct.loop* %2, null
  br i1 %tobool, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %3 = load %struct.loop*, %struct.loop** %loop, align 8
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 18
  %4 = load %struct.loop*, %struct.loop** %inner, align 8
  call void @estimate_loops_at_level(%struct.loop* %4)
  %5 = load %struct.loop*, %struct.loop** %loop, align 8
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 5
  %7 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %7, %struct.edge_def** %e, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 3
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %10 = load %struct.loop*, %struct.loop** %loop, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 1
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %cmp = icmp ne %struct.basic_block_def* %9, %11
  br i1 %cmp, label %for.body.2, label %for.end

for.body.2:                                       ; preds = %for.cond.1
  br label %for.inc

for.inc:                                          ; preds = %for.body.2
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %13, %struct.edge_def** %e, align 8
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 5
  %15 = load i8*, i8** %aux, align 8
  %16 = bitcast i8* %15 to %struct.edge_info_def*
  %back_edge = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %16, i32 0, i32 1
  %bf.load = load i8, i8* %back_edge, align 8
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %back_edge, align 8
  %17 = load %struct.loop*, %struct.loop** %loop, align 8
  %shared = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 20
  %18 = load i32, i32* %shared, align 4
  %tobool3 = icmp ne i32 %18, 0
  br i1 %tobool3, label %if.then, label %if.end.17

if.then:                                          ; preds = %for.end
  %19 = load %struct.loop*, %struct.loop** %loop, align 8
  %next = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 19
  %20 = load %struct.loop*, %struct.loop** %next, align 8
  store %struct.loop* %20, %struct.loop** %l, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.11, %if.then
  %21 = load %struct.loop*, %struct.loop** %l, align 8
  %tobool5 = icmp ne %struct.loop* %21, null
  br i1 %tobool5, label %for.body.6, label %for.end.13

for.body.6:                                       ; preds = %for.cond.4
  %22 = load %struct.loop*, %struct.loop** %l, align 8
  %header7 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 1
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %header7, align 8
  %24 = load %struct.loop*, %struct.loop** %loop, align 8
  %header8 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 1
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %header8, align 8
  %cmp9 = icmp eq %struct.basic_block_def* %23, %25
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body.6
  br label %for.end.13

if.end:                                           ; preds = %for.body.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end
  %26 = load %struct.loop*, %struct.loop** %l, align 8
  %next12 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 19
  %27 = load %struct.loop*, %struct.loop** %next12, align 8
  store %struct.loop* %27, %struct.loop** %l, align 8
  br label %for.cond.4

for.end.13:                                       ; preds = %if.then.10, %for.cond.4
  %28 = load %struct.loop*, %struct.loop** %l, align 8
  %tobool14 = icmp ne %struct.loop* %28, null
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.end.13
  br label %for.inc.61

if.end.16:                                        ; preds = %for.end.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.end
  %29 = load %struct.loop*, %struct.loop** %loop, align 8
  %shared18 = getelementptr inbounds %struct.loop, %struct.loop* %29, i32 0, i32 20
  %30 = load i32, i32* %shared18, align 4
  %tobool19 = icmp ne i32 %30, 0
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %31 = load %struct.loop*, %struct.loop** %first_loop.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  %32 = load %struct.loop*, %struct.loop** %loop, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.loop* [ %31, %cond.true ], [ %32, %cond.false ]
  store %struct.loop* %cond, %struct.loop** %l, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.57, %cond.end
  %33 = load %struct.loop*, %struct.loop** %l, align 8
  %34 = load %struct.loop*, %struct.loop** %loop, align 8
  %next21 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 19
  %35 = load %struct.loop*, %struct.loop** %next21, align 8
  %cmp22 = icmp ne %struct.loop* %33, %35
  br i1 %cmp22, label %for.body.23, label %for.end.59

for.body.23:                                      ; preds = %for.cond.20
  %36 = load %struct.loop*, %struct.loop** %loop, align 8
  %header24 = getelementptr inbounds %struct.loop, %struct.loop* %36, i32 0, i32 1
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %header24, align 8
  %38 = load %struct.loop*, %struct.loop** %l, align 8
  %header25 = getelementptr inbounds %struct.loop, %struct.loop* %38, i32 0, i32 1
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %header25, align 8
  %cmp26 = icmp eq %struct.basic_block_def* %37, %39
  br i1 %cmp26, label %if.then.27, label %if.end.56

if.then.27:                                       ; preds = %for.body.23
  br label %do.body

do.body:                                          ; preds = %if.then.27
  store i32 0, i32* %bit_num_, align 4
  %40 = load %struct.loop*, %struct.loop** %l, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 8
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %41, i32 0, i32 1
  %42 = load i32, i32* %size, align 4
  store i32 %42, i32* %size_, align 4
  %43 = load %struct.loop*, %struct.loop** %l, align 8
  %nodes28 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 8
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes28, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.53, %do.body
  %45 = load i32, i32* %word_num_, align 4
  %46 = load i32, i32* %size_, align 4
  %cmp30 = icmp ult i32 %45, %46
  br i1 %cmp30, label %for.body.31, label %for.end.55

for.body.31:                                      ; preds = %for.cond.29
  %47 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %47 to i64
  %48 = load i64*, i64** %ptr_, align 8
  %arrayidx = getelementptr inbounds i64, i64* %48, i64 %idxprom
  %49 = load i64, i64* %arrayidx, align 8
  store i64 %49, i64* %word_, align 8
  %50 = load i64, i64* %word_, align 8
  %cmp32 = icmp ne i64 %50, 0
  br i1 %cmp32, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %for.body.31
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.50, %if.then.33
  %51 = load i32, i32* %bit_num_, align 4
  %cmp35 = icmp ult i32 %51, 64
  br i1 %cmp35, label %for.body.36, label %for.end.51

for.body.36:                                      ; preds = %for.cond.34
  %52 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %52 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %53 = load i64, i64* %word_, align 8
  %54 = load i64, i64* %_mask, align 8
  %and = and i64 %53, %54
  %cmp37 = icmp ne i64 %and, 0
  br i1 %cmp37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %for.body.36
  %55 = load i64, i64* %_mask, align 8
  %neg = xor i64 %55, -1
  %56 = load i64, i64* %word_, align 8
  %and39 = and i64 %56, %neg
  store i64 %and39, i64* %word_, align 8
  %57 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %57, 64
  %58 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %58
  store i32 %add, i32* %n, align 4
  %59 = load i32, i32* %n, align 4
  %idxprom40 = sext i32 %59 to i64
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %60, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx41 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom40
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx41, align 8
  %aux42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 10
  %62 = load i8*, i8** %aux42, align 8
  %63 = bitcast i8* %62 to %struct.block_info_def*
  %tovisit = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %63, i32 0, i32 2
  %bf.load43 = load i8, i8* %tovisit, align 8
  %bf.clear44 = and i8 %bf.load43, -2
  %bf.set45 = or i8 %bf.clear44, 1
  store i8 %bf.set45, i8* %tovisit, align 8
  %64 = load i64, i64* %word_, align 8
  %cmp46 = icmp eq i64 %64, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.then.38
  br label %for.end.51

if.end.48:                                        ; preds = %if.then.38
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.body.36
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %65 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %65, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.34

for.end.51:                                       ; preds = %if.then.47, %for.cond.34
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.body.31
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %66 = load i32, i32* %word_num_, align 4
  %inc54 = add i32 %66, 1
  store i32 %inc54, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.29

for.end.55:                                       ; preds = %for.cond.29
  br label %do.end

do.end:                                           ; preds = %for.end.55
  br label %if.end.56

if.end.56:                                        ; preds = %do.end, %for.body.23
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %67 = load %struct.loop*, %struct.loop** %l, align 8
  %next58 = getelementptr inbounds %struct.loop, %struct.loop* %67, i32 0, i32 19
  %68 = load %struct.loop*, %struct.loop** %next58, align 8
  store %struct.loop* %68, %struct.loop** %l, align 8
  br label %for.cond.20

for.end.59:                                       ; preds = %for.cond.20
  %69 = load %struct.loop*, %struct.loop** %loop, align 8
  %header60 = getelementptr inbounds %struct.loop, %struct.loop* %69, i32 0, i32 1
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %header60, align 8
  call void @propagate_freq(%struct.basic_block_def* %70)
  br label %for.inc.61

for.inc.61:                                       ; preds = %for.end.59, %if.then.15
  %71 = load %struct.loop*, %struct.loop** %loop, align 8
  %next62 = getelementptr inbounds %struct.loop, %struct.loop* %71, i32 0, i32 19
  %72 = load %struct.loop*, %struct.loop** %next62, align 8
  store %struct.loop* %72, %struct.loop** %loop, align 8
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @propagate_freq(%struct.basic_block_def* %head) #0 {
entry:
  %head.addr = alloca %struct.basic_block_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %last = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %nextbb = alloca %struct.basic_block_def*, align 8
  %n = alloca i32, align 4
  %bb1 = alloca %struct.basic_block_def*, align 8
  %count = alloca i32, align 4
  %cyclic_probability = alloca double, align 8
  %frequency45 = alloca double, align 8
  store %struct.basic_block_def* %head, %struct.basic_block_def** %head.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %head.addr, align 8
  store %struct.basic_block_def* %0, %struct.basic_block_def** %bb, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %last, align 8
  store i32 0, i32* %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %2 = load i32, i32* %n, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %n, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb1, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 10
  %8 = load i8*, i8** %aux, align 8
  %9 = bitcast i8* %8 to %struct.block_info_def*
  %tovisit = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %9, i32 0, i32 2
  %bf.load = load i8, i8* %tovisit, align 8
  %bf.shl = shl i8 %bf.load, 7
  %bf.ashr = ashr i8 %bf.shl, 7
  %bf.cast = sext i8 %bf.ashr to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %for.body
  store i32 0, i32* %count, align 4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 4
  %11 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool4 = icmp ne %struct.edge_def* %12, null
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 2
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 10
  %15 = load i8*, i8** %aux6, align 8
  %16 = bitcast i8* %15 to %struct.block_info_def*
  %tovisit7 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %16, i32 0, i32 2
  %bf.load8 = load i8, i8* %tovisit7, align 8
  %bf.shl9 = shl i8 %bf.load8, 7
  %bf.ashr10 = ashr i8 %bf.shl9, 7
  %bf.cast11 = sext i8 %bf.ashr10 to i32
  %tobool12 = icmp ne i32 %bf.cast11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body.5
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 6
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 32
  %tobool13 = icmp ne i32 %and, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %count, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.35

if.else:                                          ; preds = %land.lhs.true, %for.body.5
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 2
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src15, align 8
  %aux16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 10
  %22 = load i8*, i8** %aux16, align 8
  %23 = bitcast i8* %22 to %struct.block_info_def*
  %tovisit17 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %23, i32 0, i32 2
  %bf.load18 = load i8, i8* %tovisit17, align 8
  %bf.shl19 = shl i8 %bf.load18, 7
  %bf.ashr20 = ashr i8 %bf.shl19, 7
  %bf.cast21 = sext i8 %bf.ashr20 to i32
  %tobool22 = icmp ne i32 %bf.cast21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %if.else
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %24, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 5
  %26 = load i8*, i8** %aux26, align 8
  %27 = bitcast i8* %26 to %struct.edge_info_def*
  %back_edge = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %27, i32 0, i32 1
  %bf.load27 = load i8, i8* %back_edge, align 8
  %bf.shl28 = shl i8 %bf.load27, 7
  %bf.ashr29 = ashr i8 %bf.shl28, 7
  %bf.cast30 = sext i8 %bf.ashr29 to i32
  %tobool31 = icmp ne i32 %bf.cast30, 0
  br i1 %tobool31, label %if.end, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.25
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 2
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src33, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index, align 4
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 11
  %33 = load i32, i32* %index34, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i32 0, i32 0), i32 %31, i32 %33)
  br label %if.end

if.end:                                           ; preds = %if.then.32, %land.lhs.true.25, %land.lhs.true.23, %if.else
  br label %if.end.35

if.end.35:                                        ; preds = %if.end, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 0
  %35 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %35, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  %36 = load i32, i32* %count, align 4
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1, align 8
  %aux36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 10
  %38 = load i8*, i8** %aux36, align 8
  %39 = bitcast i8* %38 to %struct.block_info_def*
  %npredecessors = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %39, i32 0, i32 3
  store i32 %36, i32* %npredecessors, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %for.body
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %40 = load i32, i32* %n, align 4
  %inc39 = add nsw i32 %40, 1
  store i32 %inc39, i32* %n, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %head.addr, align 8
  %aux41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 10
  %42 = load i8*, i8** %aux41, align 8
  %43 = bitcast i8* %42 to %struct.block_info_def*
  %frequency = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %43, i32 0, i32 0
  store volatile double 1.000000e+00, double* %frequency, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.141, %for.end.40
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %tobool43 = icmp ne %struct.basic_block_def* %44, null
  br i1 %tobool43, label %for.body.44, label %for.end.142

for.body.44:                                      ; preds = %for.cond.42
  store double 0.000000e+00, double* %cyclic_probability, align 8
  store double 0.000000e+00, double* %frequency45, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 10
  %46 = load i8*, i8** %aux46, align 8
  %47 = bitcast i8* %46 to %struct.block_info_def*
  %next = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %47, i32 0, i32 1
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  store %struct.basic_block_def* %48, %struct.basic_block_def** %nextbb, align 8
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 10
  %50 = load i8*, i8** %aux47, align 8
  %51 = bitcast i8* %50 to %struct.block_info_def*
  %next48 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %51, i32 0, i32 1
  store %struct.basic_block_def* null, %struct.basic_block_def** %next48, align 8
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %head.addr, align 8
  %cmp49 = icmp ne %struct.basic_block_def* %52, %53
  br i1 %cmp49, label %if.then.50, label %if.end.85

if.then.50:                                       ; preds = %for.body.44
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 4
  %55 = load %struct.edge_def*, %struct.edge_def** %pred51, align 8
  store %struct.edge_def* %55, %struct.edge_def** %e, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.75, %if.then.50
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool53 = icmp ne %struct.edge_def* %56, null
  br i1 %tobool53, label %for.body.54, label %for.end.77

for.body.54:                                      ; preds = %for.cond.52
  %57 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i32 0, i32 5
  %58 = load i8*, i8** %aux55, align 8
  %59 = bitcast i8* %58 to %struct.edge_info_def*
  %back_edge56 = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %59, i32 0, i32 1
  %bf.load57 = load i8, i8* %back_edge56, align 8
  %bf.shl58 = shl i8 %bf.load57, 7
  %bf.ashr59 = ashr i8 %bf.shl58, 7
  %bf.cast60 = sext i8 %bf.ashr59 to i32
  %tobool61 = icmp ne i32 %bf.cast60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.64

if.then.62:                                       ; preds = %for.body.54
  %60 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 5
  %61 = load i8*, i8** %aux63, align 8
  %62 = bitcast i8* %61 to %struct.edge_info_def*
  %back_edge_prob = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %62, i32 0, i32 0
  %63 = load volatile double, double* %back_edge_prob, align 8
  %64 = load double, double* %cyclic_probability, align 8
  %add = fadd double %64, %63
  store double %add, double* %cyclic_probability, align 8
  br label %if.end.74

if.else.64:                                       ; preds = %for.body.54
  %65 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i32 0, i32 6
  %66 = load i32, i32* %flags65, align 4
  %and66 = and i32 %66, 32
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %if.end.73, label %if.then.68

if.then.68:                                       ; preds = %if.else.64
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i32 0, i32 7
  %68 = load i32, i32* %probability, align 4
  %conv = sitofp i32 %68 to double
  %69 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 2
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %src69, align 8
  %aux70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 10
  %71 = load i8*, i8** %aux70, align 8
  %72 = bitcast i8* %71 to %struct.block_info_def*
  %frequency71 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %72, i32 0, i32 0
  %73 = load volatile double, double* %frequency71, align 8
  %mul = fmul double %conv, %73
  %div = fdiv double %mul, 1.000000e+04
  %74 = load double, double* %frequency45, align 8
  %add72 = fadd double %74, %div
  store double %add72, double* %frequency45, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.else.64
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then.62
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 0
  %76 = load %struct.edge_def*, %struct.edge_def** %pred_next76, align 8
  store %struct.edge_def* %76, %struct.edge_def** %e, align 8
  br label %for.cond.52

for.end.77:                                       ; preds = %for.cond.52
  %77 = load double, double* %cyclic_probability, align 8
  %cmp78 = fcmp ogt double %77, 9.999000e-01
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.end.77
  store double 9.999000e-01, double* %cyclic_probability, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %for.end.77
  %78 = load double, double* %frequency45, align 8
  %79 = load double, double* %cyclic_probability, align 8
  %sub = fsub double 1.000000e+00, %79
  %div82 = fdiv double %78, %sub
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 10
  %81 = load i8*, i8** %aux83, align 8
  %82 = bitcast i8* %81 to %struct.block_info_def*
  %frequency84 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %82, i32 0, i32 0
  store volatile double %div82, double* %frequency84, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.81, %for.body.44
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %83, i32 0, i32 10
  %84 = load i8*, i8** %aux86, align 8
  %85 = bitcast i8* %84 to %struct.block_info_def*
  %tovisit87 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %85, i32 0, i32 2
  %bf.load88 = load i8, i8* %tovisit87, align 8
  %bf.clear = and i8 %bf.load88, -2
  store i8 %bf.clear, i8* %tovisit87, align 8
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i32 0, i32 5
  %87 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %87, %struct.edge_def** %e, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc.104, %if.end.85
  %88 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool90 = icmp ne %struct.edge_def* %88, null
  br i1 %tobool90, label %for.body.91, label %for.end.105

for.body.91:                                      ; preds = %for.cond.89
  %89 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 3
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %91 = load %struct.basic_block_def*, %struct.basic_block_def** %head.addr, align 8
  %cmp92 = icmp eq %struct.basic_block_def* %90, %91
  br i1 %cmp92, label %if.then.94, label %if.end.103

if.then.94:                                       ; preds = %for.body.91
  %92 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability95 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %92, i32 0, i32 7
  %93 = load i32, i32* %probability95, align 4
  %conv96 = sitofp i32 %93 to double
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i32 0, i32 10
  %95 = load i8*, i8** %aux97, align 8
  %96 = bitcast i8* %95 to %struct.block_info_def*
  %frequency98 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %96, i32 0, i32 0
  %97 = load volatile double, double* %frequency98, align 8
  %mul99 = fmul double %conv96, %97
  %div100 = fdiv double %mul99, 1.000000e+04
  %98 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %98, i32 0, i32 5
  %99 = load i8*, i8** %aux101, align 8
  %100 = bitcast i8* %99 to %struct.edge_info_def*
  %back_edge_prob102 = getelementptr inbounds %struct.edge_info_def, %struct.edge_info_def* %100, i32 0, i32 0
  store volatile double %div100, double* %back_edge_prob102, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.94, %for.body.91
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %101 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 1
  %102 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %102, %struct.edge_def** %e, align 8
  br label %for.cond.89

for.end.105:                                      ; preds = %for.cond.89
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ106 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 5
  %104 = load %struct.edge_def*, %struct.edge_def** %succ106, align 8
  store %struct.edge_def* %104, %struct.edge_def** %e, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.138, %for.end.105
  %105 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool108 = icmp ne %struct.edge_def* %105, null
  br i1 %tobool108, label %for.body.109, label %for.end.140

for.body.109:                                     ; preds = %for.cond.107
  %106 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags110 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 6
  %107 = load i32, i32* %flags110, align 4
  %and111 = and i32 %107, 32
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.end.137, label %land.lhs.true.113

land.lhs.true.113:                                ; preds = %for.body.109
  %108 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %108, i32 0, i32 3
  %109 = load %struct.basic_block_def*, %struct.basic_block_def** %dest114, align 8
  %aux115 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %109, i32 0, i32 10
  %110 = load i8*, i8** %aux115, align 8
  %111 = bitcast i8* %110 to %struct.block_info_def*
  %npredecessors116 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %111, i32 0, i32 3
  %112 = load i32, i32* %npredecessors116, align 4
  %tobool117 = icmp ne i32 %112, 0
  br i1 %tobool117, label %if.then.118, label %if.end.137

if.then.118:                                      ; preds = %land.lhs.true.113
  %113 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest119 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 3
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %dest119, align 8
  %aux120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %114, i32 0, i32 10
  %115 = load i8*, i8** %aux120, align 8
  %116 = bitcast i8* %115 to %struct.block_info_def*
  %npredecessors121 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %116, i32 0, i32 3
  %117 = load i32, i32* %npredecessors121, align 4
  %dec = add nsw i32 %117, -1
  store i32 %dec, i32* %npredecessors121, align 4
  %118 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest122 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %118, i32 0, i32 3
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %dest122, align 8
  %aux123 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 10
  %120 = load i8*, i8** %aux123, align 8
  %121 = bitcast i8* %120 to %struct.block_info_def*
  %npredecessors124 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %121, i32 0, i32 3
  %122 = load i32, i32* %npredecessors124, align 4
  %tobool125 = icmp ne i32 %122, 0
  br i1 %tobool125, label %if.end.136, label %if.then.126

if.then.126:                                      ; preds = %if.then.118
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %nextbb, align 8
  %tobool127 = icmp ne %struct.basic_block_def* %123, null
  br i1 %tobool127, label %if.else.130, label %if.then.128

if.then.128:                                      ; preds = %if.then.126
  %124 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest129 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %124, i32 0, i32 3
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %dest129, align 8
  store %struct.basic_block_def* %125, %struct.basic_block_def** %nextbb, align 8
  br label %if.end.134

if.else.130:                                      ; preds = %if.then.126
  %126 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %126, i32 0, i32 3
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %dest131, align 8
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8
  %aux132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i32 0, i32 10
  %129 = load i8*, i8** %aux132, align 8
  %130 = bitcast i8* %129 to %struct.block_info_def*
  %next133 = getelementptr inbounds %struct.block_info_def, %struct.block_info_def* %130, i32 0, i32 1
  store %struct.basic_block_def* %127, %struct.basic_block_def** %next133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.else.130, %if.then.128
  %131 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest135 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %131, i32 0, i32 3
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %dest135, align 8
  store %struct.basic_block_def* %132, %struct.basic_block_def** %last, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.134, %if.then.118
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %land.lhs.true.113, %for.body.109
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %133 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next139 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %133, i32 0, i32 1
  %134 = load %struct.edge_def*, %struct.edge_def** %succ_next139, align 8
  store %struct.edge_def* %134, %struct.edge_def** %e, align 8
  br label %for.cond.107

for.end.140:                                      ; preds = %for.cond.107
  br label %for.inc.141

for.inc.141:                                      ; preds = %for.end.140
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %nextbb, align 8
  store %struct.basic_block_def* %135, %struct.basic_block_def** %bb, align 8
  br label %for.cond.42

for.end.142:                                      ; preds = %for.cond.42
  ret void
}

declare void @free_aux_for_blocks() #1

declare void @free_aux_for_edges() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
