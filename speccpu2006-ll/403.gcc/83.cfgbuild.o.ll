; ModuleID = 'cfgbuild.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
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
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@n_basic_blocks = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"basic_block_info\00", align 1
@label_value_list = external global %struct.rtx_def*, align 8
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.1 = private unnamed_addr constant [11 x i8] c"cfgbuild.c\00", align 1
@__FUNCTION__.inside_basic_block_p = private unnamed_addr constant [21 x i8] c"inside_basic_block_p\00", align 1
@cfun = external global %struct.function*, align 8
@flag_non_call_exceptions = external global i32, align 4
@__FUNCTION__.control_flow_insn_p = private unnamed_addr constant [20 x i8] c"control_flow_insn_p\00", align 1
@__FUNCTION__.find_basic_blocks_1 = private unnamed_addr constant [20 x i8] c"find_basic_blocks_1\00", align 1
@tail_recursion_label_list = external global %struct.rtx_def*, align 8
@rtx_class = external constant [153 x i8], align 16
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.make_edges = private unnamed_addr constant [11 x i8] c"make_edges\00", align 1
@__FUNCTION__.make_label_edge = private unnamed_addr constant [16 x i8] c"make_label_edge\00", align 1

; Function Attrs: nounwind uwtable
define void @find_basic_blocks(%struct.rtx_def* %f, i32 %nregs, %struct._IO_FILE* %file) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %nregs.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %max_uid = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  call void @timevar_push(i32 3)
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %cmp = icmp ne %struct.varray_head_tag* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  call void @clear_edges()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  store i8* null, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %tobool = icmp ne %struct.varray_head_tag* %7, null
  br i1 %tobool, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %9 = bitcast %struct.varray_head_tag* %8 to i8*
  call void @free(i8* %9) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @basic_block_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  %call = call i32 @count_basic_blocks(%struct.rtx_def* %10)
  store i32 %call, i32* @n_basic_blocks, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %11 to i64
  %call4 = call %struct.varray_head_tag* @varray_init(i64 %conv, i64 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  store %struct.varray_head_tag* %call4, %struct.varray_head_tag** @basic_block_info, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  call void @find_basic_blocks_1(%struct.rtx_def* %12)
  %call5 = call i32 @get_max_uid()
  store i32 %call5, i32* %max_uid, align 4
  %13 = load i32, i32* %max_uid, align 4
  call void @compute_bb_for_insn(i32 %13)
  %14 = load %struct.rtx_def*, %struct.rtx_def** @label_value_list, align 8
  %15 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %15, 1
  call void @make_edges(%struct.rtx_def* %14, i32 0, i32 %sub, i32 0)
  call void @tidy_fallthru_edges()
  call void @timevar_pop(i32 3)
  ret void
}

declare void @timevar_push(i32) #1

declare void @clear_edges() #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @count_basic_blocks(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %count = alloca i32, align 4
  %saw_insn = alloca i8, align 1
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 0, i32* %count, align 4
  store i8 0, i8* %saw_insn, align 1
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 35
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %6 = load i8, i8* %saw_insn, align 1
  %tobool4 = trunc i8 %6 to i1
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %count, align 4
  store i8 0, i8* %saw_insn, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %8 = load i8, i8* %saw_insn, align 1
  %tobool5 = trunc i8 %8 to i1
  br i1 %tobool5, label %if.end.8, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call zeroext i1 @inside_basic_block_p(%struct.rtx_def* %9)
  br i1 %call, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.6
  store i8 1, i8* %saw_insn, align 1
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %land.lhs.true.6, %if.end
  %10 = load i8, i8* %saw_insn, align 1
  %tobool9 = trunc i8 %10 to i1
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %if.end.8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call11 = call zeroext i1 @control_flow_insn_p(%struct.rtx_def* %11)
  br i1 %call11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %land.lhs.true.10
  %12 = load i32, i32* %count, align 4
  %inc13 = add nsw i32 %12, 1
  store i32 %inc13, i32* %count, align 4
  store i8 0, i8* %saw_insn, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %land.lhs.true.10, %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i8, i8* %saw_insn, align 1
  %tobool15 = trunc i8 %15 to i1
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.end
  %16 = load i32, i32* %count, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %count, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.end
  %17 = load i32, i32* %count, align 4
  %cmp19 = icmp eq i32 %17, 0
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call21 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %18)
  %call22 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call21)
  store i32 1, i32* %count, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %19 = load i32, i32* %count, align 4
  ret i32 %19
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_basic_blocks_1(%struct.rtx_def* %f) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %bb_note = alloca %struct.rtx_def*, align 8
  %lvl = alloca %struct.rtx_def*, align 8
  %trll = alloca %struct.rtx_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %kind = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %next97 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 0, i32* %i, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %bb_note, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %lvl, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %trll, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %end, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.151, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 36
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load3 = load i32, i32* %9, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 35
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %tobool6 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %call = call %struct.basic_block_def* @create_basic_block_structure(i32 %11, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  store %struct.rtx_def* null, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %bb_note, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call7 = call zeroext i1 @inside_basic_block_p(%struct.rtx_def* %15)
  br i1 %call7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp9 = icmp eq %struct.rtx_def* %16, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.then.8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %head, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.10, %if.then.8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %end, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %tobool13 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.19

land.lhs.true.14:                                 ; preds = %if.end.12
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call15 = call zeroext i1 @control_flow_insn_p(%struct.rtx_def* %20)
  br i1 %call15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %land.lhs.true.14
  %21 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %i, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %call18 = call %struct.basic_block_def* @create_basic_block_structure(i32 %21, %struct.rtx_def* %22, %struct.rtx_def* %23, %struct.rtx_def* %24)
  store %struct.rtx_def* null, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %bb_note, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %land.lhs.true.14, %if.end.12
  %25 = load i32, i32* %code, align 4
  switch i32 %25, label %sw.default [
    i32 37, label %sw.bb
    i32 36, label %sw.bb.29
    i32 33, label %sw.bb.29
    i32 32, label %sw.bb.29
    i32 35, label %sw.bb.29
    i32 34, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.end.19
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx21 to i32*
  %27 = load i32, i32* %rtint, align 4
  store i32 %27, i32* %kind, align 4
  %28 = load i32, i32* %kind, align 4
  %cmp22 = icmp eq i32 %28, -80
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %sw.bb
  %29 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %cmp24 = icmp eq %struct.rtx_def* %29, null
  br i1 %cmp24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.then.23
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %bb_note, align 8
  br label %if.end.27

if.else:                                          ; preds = %if.then.23
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call26 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %31)
  store %struct.rtx_def* %call26, %struct.rtx_def** %next, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.25
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %sw.bb
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.19, %if.end.19, %if.end.19, %if.end.19
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.end.19
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load34 = load i32, i32* %34, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 141
  br i1 %cmp36, label %if.then.37, label %if.end.75

if.then.37:                                       ; preds = %sw.bb.30
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %lvl, align 8
  %call44 = call %struct.rtx_def* @find_label_refs(%struct.rtx_def* %37, %struct.rtx_def* %38)
  store %struct.rtx_def* %call44, %struct.rtx_def** %lvl, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 1
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %lvl, align 8
  %call51 = call %struct.rtx_def* @find_label_refs(%struct.rtx_def* %41, %struct.rtx_def* %42)
  store %struct.rtx_def* %call51, %struct.rtx_def** %lvl, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 3
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 2
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %lvl, align 8
  %call58 = call %struct.rtx_def* @find_label_refs(%struct.rtx_def* %45, %struct.rtx_def* %46)
  store %struct.rtx_def* %call58, %struct.rtx_def** %lvl, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 3
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 3
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %cmp65 = icmp ne %struct.rtx_def* %49, null
  br i1 %cmp65, label %if.then.66, label %if.end.74

if.then.66:                                       ; preds = %if.then.37
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 3
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %trll, align 8
  %call73 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %52, %struct.rtx_def* %53)
  store %struct.rtx_def* %call73, %struct.rtx_def** %trll, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.66, %if.then.37
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %sw.bb.30
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.19
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 554, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.find_basic_blocks_1, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %if.end.75, %sw.bb.29, %if.end.28
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load76 = load i32, i32* %55, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 32
  br i1 %cmp78, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %sw.epilog
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load80 = load i32, i32* %57, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp eq i32 %bf.clear81, 34
  br i1 %cmp82, label %if.then.83, label %if.end.150

if.then.83:                                       ; preds = %lor.lhs.false.79, %sw.epilog
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 6
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %note, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc, %if.then.83
  %60 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool88 = icmp ne %struct.rtx_def* %60, null
  br i1 %tobool88, label %for.body.89, label %for.end

for.body.89:                                      ; preds = %for.cond.87
  %61 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load90 = load i32, i32* %62, align 8
  %bf.lshr = lshr i32 %bf.load90, 16
  %bf.clear91 = and i32 %bf.lshr, 255
  %cmp92 = icmp eq i32 %bf.clear91, 13
  br i1 %cmp92, label %if.then.93, label %if.end.146

if.then.93:                                       ; preds = %for.body.89
  %63 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx96, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %lab, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call98 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %65)
  store %struct.rtx_def* %call98, %struct.rtx_def** %next97, align 8
  %cmp99 = icmp ne %struct.rtx_def* %call98, null
  br i1 %cmp99, label %land.lhs.true.100, label %if.else.119

land.lhs.true.100:                                ; preds = %if.then.93
  %66 = load %struct.rtx_def*, %struct.rtx_def** %next97, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load101 = load i32, i32* %67, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 33
  br i1 %cmp103, label %land.lhs.true.104, label %if.else.119

land.lhs.true.104:                                ; preds = %land.lhs.true.100
  %68 = load %struct.rtx_def*, %struct.rtx_def** %next97, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 3
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load108 = load i32, i32* %70, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 44
  br i1 %cmp110, label %if.then.118, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %land.lhs.true.104
  %71 = load %struct.rtx_def*, %struct.rtx_def** %next97, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 3
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load115 = load i32, i32* %73, align 8
  %bf.clear116 = and i32 %bf.load115, 65535
  %cmp117 = icmp eq i32 %bf.clear116, 45
  br i1 %cmp117, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.104
  br label %if.end.145

if.else.119:                                      ; preds = %lor.lhs.false.111, %land.lhs.true.100, %if.then.93
  %74 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load120 = load i32, i32* %75, align 8
  %bf.clear121 = and i32 %bf.load120, 65535
  %cmp122 = icmp eq i32 %bf.clear121, 37
  br i1 %cmp122, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.119
  br label %if.end.144

if.else.124:                                      ; preds = %if.else.119
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 2
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load128 = load i32, i32* %78, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 33
  br i1 %cmp130, label %land.lhs.true.131, label %if.else.138

land.lhs.true.131:                                ; preds = %if.else.124
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 2
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call135 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %80, i32 13, %struct.rtx_def* %81)
  %tobool136 = icmp ne %struct.rtx_def* %call135, null
  br i1 %tobool136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %land.lhs.true.131
  br label %if.end.143

if.else.138:                                      ; preds = %land.lhs.true.131, %if.else.124
  %82 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %lvl, align 8
  %call142 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %83, %struct.rtx_def* %84)
  store %struct.rtx_def* %call142, %struct.rtx_def** %lvl, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.138, %if.then.137
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.then.123
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.then.118
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.145, %for.body.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.146
  %85 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 1
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx149, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %note, align 8
  br label %for.cond.87

for.end:                                          ; preds = %for.cond.87
  br label %if.end.150

if.end.150:                                       ; preds = %for.end, %lor.lhs.false.79
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %87 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  %88 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp153 = icmp ne %struct.rtx_def* %88, null
  br i1 %cmp153, label %if.then.154, label %if.else.157

if.then.154:                                      ; preds = %for.end.152
  %89 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %89, 1
  store i32 %inc155, i32* %i, align 4
  %90 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %call156 = call %struct.basic_block_def* @create_basic_block_structure(i32 %89, %struct.rtx_def* %90, %struct.rtx_def* %91, %struct.rtx_def* %92)
  br label %if.end.162

if.else.157:                                      ; preds = %for.end.152
  %93 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %tobool158 = icmp ne %struct.rtx_def* %93, null
  br i1 %tobool158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.else.157
  %94 = load %struct.rtx_def*, %struct.rtx_def** %bb_note, align 8
  %call160 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %94)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.else.157
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.154
  %95 = load i32, i32* %i, align 4
  %96 = load i32, i32* @n_basic_blocks, align 4
  %cmp163 = icmp ne i32 %95, %96
  br i1 %cmp163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.162
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 596, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.find_basic_blocks_1, i32 0, i32 0)) #5
  unreachable

if.end.165:                                       ; preds = %if.end.162
  %97 = load %struct.rtx_def*, %struct.rtx_def** %lvl, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** @label_value_list, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %trll, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** @tail_recursion_label_list, align 8
  ret void
}

declare i32 @get_max_uid() #1

declare void @compute_bb_for_insn(i32) #1

; Function Attrs: nounwind uwtable
define internal void @make_edges(%struct.rtx_def* %label_value_list, i32 %min, i32 %max, i32 %update_p) #0 {
entry:
  %label_value_list.addr = alloca %struct.rtx_def*, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %update_p.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %edge_cache = alloca %struct.simple_bitmap_def**, align 8
  %e = alloca %struct.edge_def*, align 8
  %bb30 = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %force_fallthru = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  %vec = alloca %struct.rtvec_def*, align 8
  %j = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %tmp294 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label_value_list, %struct.rtx_def** %label_value_list.addr, align 8
  store i32 %min, i32* %min.addr, align 4
  store i32 %max, i32* %max.addr, align 4
  store i32 %update_p, i32* %update_p.addr, align 4
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** %edge_cache, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %has_computed_jump = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %has_computed_jump to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, -2049
  store i32 %bf.clear, i32* %1, align 8
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 2
  %3 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_forced_labels = getelementptr inbounds %struct.expr_status, %struct.expr_status* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label_value_list.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool1, label %if.then, label %if.end.19

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i32, i32* @n_basic_blocks, align 4
  %7 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %6, i32 %7)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** %edge_cache, align 8
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %9 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %8, i32 %9)
  %10 = load i32, i32* %update_p.addr, align 4
  %tobool2 = icmp ne i32 %10, 0
  br i1 %tobool2, label %if.then.3, label %if.end.18

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %min.addr, align 4
  store i32 %11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %if.then.3
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %max.addr, align 4
  %cmp = icmp sle i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 5
  %17 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool5 = icmp ne %struct.edge_def* %18, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 3
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp7 = icmp ne %struct.basic_block_def* %20, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %for.body.6
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 3
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest9, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index, align 4
  %rem = urem i32 %23, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 3
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest10, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index11, align 4
  %div = udiv i32 %26, 64
  %idxprom12 = zext i32 %div to i64
  %27 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom13
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %29, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom12
  %30 = load i64, i64* %arrayidx15, align 8
  %or = or i64 %30, %shl
  store i64 %or, i64* %arrayidx15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 1
  %32 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %32, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end.17, %if.then
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %lor.lhs.false
  %34 = load i32, i32* %min.addr, align 4
  %cmp20 = icmp eq i32 %34, 0
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end.19
  %35 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data22 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %bb23 = bitcast %union.varray_data_tag* %data22 to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb23, i32 0, i64 0
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx24, align 8
  %call25 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %35, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %37, i32 1)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.21, %if.end.19
  %38 = load i32, i32* %min.addr, align 4
  store i32 %38, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.322, %if.end.26
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* %max.addr, align 4
  %cmp28 = icmp sle i32 %39, %40
  br i1 %cmp28, label %for.body.29, label %for.end.324

for.body.29:                                      ; preds = %for.cond.27
  %41 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %41 to i64
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data32 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %bb33 = bitcast %union.varray_data_tag* %data32 to [1 x %struct.basic_block_def*]*
  %arrayidx34 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb33, i32 0, i64 %idxprom31
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx34, align 8
  store %struct.basic_block_def* %43, %struct.basic_block_def** %bb30, align 8
  store i32 0, i32* %force_fallthru, align 4
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 0
  %45 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load35 = load i32, i32* %46, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 36
  br i1 %cmp37, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %for.body.29
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %head38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 0
  %48 = load %struct.rtx_def*, %struct.rtx_def** %head38, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtstr = bitcast %union.rtunion_def* %arrayidx39 to i8**
  %49 = load i8*, i8** %rtstr, align 8
  %tobool40 = icmp ne i8* %49, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %land.lhs.true
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %call42 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** null, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %50, i32 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %land.lhs.true, %for.body.29
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 1
  %52 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %insn, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load44 = load i32, i32* %54, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  store i32 %bf.clear45, i32* %code, align 4
  %55 = load i32, i32* %code, align 4
  %cmp46 = icmp eq i32 %55, 33
  br i1 %cmp46, label %if.then.47, label %if.end.231

if.then.47:                                       ; preds = %if.end.43
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load50 = load i32, i32* %58, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 53
  br i1 %cmp52, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.47
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @make_eh_edge(%struct.simple_bitmap_def** %59, %struct.basic_block_def* %60, %struct.rtx_def* %61)
  br label %if.end.230

if.else:                                          ; preds = %if.then.47
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call54 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %62, i32 27, %struct.rtx_def* null)
  %tobool55 = icmp ne %struct.rtx_def* %call54, null
  br i1 %tobool55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else
  br label %if.end.229

if.else.57:                                       ; preds = %if.else
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 7
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %tmp, align 8
  %cmp61 = icmp ne %struct.rtx_def* %64, null
  br i1 %cmp61, label %land.lhs.true.62, label %if.else.180

land.lhs.true.62:                                 ; preds = %if.else.57
  %65 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 2
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %tmp, align 8
  %cmp66 = icmp ne %struct.rtx_def* %66, null
  br i1 %cmp66, label %land.lhs.true.67, label %if.else.180

land.lhs.true.67:                                 ; preds = %land.lhs.true.62
  %67 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load68 = load i32, i32* %68, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 33
  br i1 %cmp70, label %land.lhs.true.71, label %if.else.180

land.lhs.true.71:                                 ; preds = %land.lhs.true.67
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 3
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load75 = load i32, i32* %71, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 44
  br i1 %cmp77, label %if.then.85, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.lhs.true.71
  %72 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 3
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load82 = load i32, i32* %74, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 45
  br i1 %cmp84, label %if.then.85, label %if.else.180

if.then.85:                                       ; preds = %lor.lhs.false.78, %land.lhs.true.71
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 3
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load91 = load i32, i32* %77, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 44
  br i1 %cmp93, label %if.then.94, label %if.else.100

if.then.94:                                       ; preds = %if.then.85
  %78 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtvec_def**
  %80 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %80, %struct.rtvec_def** %vec, align 8
  br label %if.end.107

if.else.100:                                      ; preds = %if.then.85
  %81 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 3
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 1
  %rtvec106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtvec_def**
  %83 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec106, align 8
  store %struct.rtvec_def* %83, %struct.rtvec_def** %vec, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.100, %if.then.94
  %84 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %84, i32 0, i32 0
  %85 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %85, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.116, %if.end.107
  %86 = load i32, i32* %j, align 4
  %cmp109 = icmp sge i32 %86, 0
  br i1 %cmp109, label %for.body.110, label %for.end.117

for.body.110:                                     ; preds = %for.cond.108
  %87 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %89 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %89 to i64
  %90 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %90, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom111
  %91 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx115, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %87, %struct.basic_block_def* %88, %struct.rtx_def* %92, i32 0)
  br label %for.inc.116

for.inc.116:                                      ; preds = %for.body.110
  %93 = load i32, i32* %j, align 4
  %dec = add nsw i32 %93, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.108

for.end.117:                                      ; preds = %for.cond.108
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load118 = load i32, i32* %95, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %idxprom120 = sext i32 %bf.clear119 to i64
  %arrayidx121 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom120
  %96 = load i8, i8* %arrayidx121, align 1
  %conv = sext i8 %96 to i32
  %cmp122 = icmp eq i32 %conv, 105
  br i1 %cmp122, label %cond.true, label %cond.false.139

cond.true:                                        ; preds = %for.end.117
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 3
  %rtx126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx126, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load127 = load i32, i32* %99, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %cmp129 = icmp eq i32 %bf.clear128, 47
  br i1 %cmp129, label %cond.true.131, label %cond.false

cond.true.131:                                    ; preds = %cond.true
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 3
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %102 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 3
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %call138 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %102, %struct.rtx_def* %104)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.131
  %cond = phi %struct.rtx_def* [ %101, %cond.true.131 ], [ %call138, %cond.false ]
  br label %cond.end.140

cond.false.139:                                   ; preds = %for.end.117
  br label %cond.end.140

cond.end.140:                                     ; preds = %cond.false.139, %cond.end
  %cond141 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.139 ]
  store %struct.rtx_def* %cond141, %struct.rtx_def** %tmp, align 8
  %cmp142 = icmp ne %struct.rtx_def* %cond141, null
  br i1 %cmp142, label %land.lhs.true.144, label %if.end.179

land.lhs.true.144:                                ; preds = %cond.end.140
  %105 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 0
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp148 = icmp eq %struct.rtx_def* %106, %107
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.179

land.lhs.true.150:                                ; preds = %land.lhs.true.144
  %108 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 1
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load154 = load i32, i32* %110, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 72
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.179

land.lhs.true.158:                                ; preds = %land.lhs.true.150
  %111 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 1
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx161, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 2
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx164, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load165 = load i32, i32* %114, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %cmp167 = icmp eq i32 %bf.clear166, 67
  br i1 %cmp167, label %if.then.169, label %if.end.179

if.then.169:                                      ; preds = %land.lhs.true.158
  %115 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 1
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 2
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx175, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtx178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx178, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %115, %struct.basic_block_def* %116, %struct.rtx_def* %120, i32 0)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.169, %land.lhs.true.158, %land.lhs.true.150, %land.lhs.true.144, %cond.end.140
  br label %if.end.228

if.else.180:                                      ; preds = %lor.lhs.false.78, %land.lhs.true.67, %land.lhs.true.62, %if.else.57
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call181 = call i32 @computed_jump_p(%struct.rtx_def* %121)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then.183, label %if.else.211

if.then.183:                                      ; preds = %if.else.180
  %122 = load %struct.function*, %struct.function** @cfun, align 8
  %has_computed_jump184 = getelementptr inbounds %struct.function, %struct.function* %122, i32 0, i32 56
  %123 = bitcast i24* %has_computed_jump184 to i32*
  %bf.load185 = load i32, i32* %123, align 8
  %bf.clear186 = and i32 %bf.load185, -2049
  %bf.set = or i32 %bf.clear186, 2048
  store i32 %bf.set, i32* %123, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %label_value_list.addr, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %x, align 8
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.193, %if.then.183
  %125 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool188 = icmp ne %struct.rtx_def* %125, null
  br i1 %tobool188, label %for.body.189, label %for.end.197

for.body.189:                                     ; preds = %for.cond.187
  %126 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %126, %struct.basic_block_def* %127, %struct.rtx_def* %129, i32 2)
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.189
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 1
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx196, align 8
  store %struct.rtx_def* %131, %struct.rtx_def** %x, align 8
  br label %for.cond.187

for.end.197:                                      ; preds = %for.cond.187
  %132 = load %struct.function*, %struct.function** @cfun, align 8
  %expr198 = getelementptr inbounds %struct.function, %struct.function* %132, i32 0, i32 2
  %133 = load %struct.expr_status*, %struct.expr_status** %expr198, align 8
  %x_forced_labels199 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %133, i32 0, i32 5
  %134 = load %struct.rtx_def*, %struct.rtx_def** %x_forced_labels199, align 8
  store %struct.rtx_def* %134, %struct.rtx_def** %x, align 8
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.206, %for.end.197
  %135 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool201 = icmp ne %struct.rtx_def* %135, null
  br i1 %tobool201, label %for.body.202, label %for.end.210

for.body.202:                                     ; preds = %for.cond.200
  %136 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %137 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %136, %struct.basic_block_def* %137, %struct.rtx_def* %139, i32 2)
  br label %for.inc.206

for.inc.206:                                      ; preds = %for.body.202
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 1
  %rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx209, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %x, align 8
  br label %for.cond.200

for.end.210:                                      ; preds = %for.cond.200
  br label %if.end.227

if.else.211:                                      ; preds = %if.else.180
  %142 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call212 = call i32 @returnjump_p(%struct.rtx_def* %142)
  %tobool213 = icmp ne i32 %call212, 0
  br i1 %tobool213, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %if.else.211
  %143 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %call215 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %143, %struct.basic_block_def* %144, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 0)
  br label %if.end.226

if.else.216:                                      ; preds = %if.else.211
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld217 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx218 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld217, i32 0, i64 7
  %rtx219 = bitcast %union.rtunion_def* %arrayidx218 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx219, align 8
  %tobool220 = icmp ne %struct.rtx_def* %146, null
  br i1 %tobool220, label %if.end.222, label %if.then.221

if.then.221:                                      ; preds = %if.else.216
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 402, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.make_edges, i32 0, i32 0)) #5
  unreachable

if.end.222:                                       ; preds = %if.else.216
  %147 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 7
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %147, %struct.basic_block_def* %148, %struct.rtx_def* %150, i32 0)
  br label %if.end.226

if.end.226:                                       ; preds = %if.end.222, %if.then.214
  br label %if.end.227

if.end.227:                                       ; preds = %if.end.226, %for.end.210
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.end.179
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.56
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %if.then.53
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.43
  %151 = load i32, i32* %code, align 4
  %cmp232 = icmp eq i32 %151, 34
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.240

land.lhs.true.234:                                ; preds = %if.end.231
  %152 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load235 = load i32, i32* %153, align 8
  %bf.lshr = lshr i32 %bf.load235, 24
  %bf.clear236 = and i32 %bf.lshr, 1
  %tobool237 = icmp ne i32 %bf.clear236, 0
  br i1 %tobool237, label %if.then.238, label %if.else.240

if.then.238:                                      ; preds = %land.lhs.true.234
  %154 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %call239 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %154, %struct.basic_block_def* %155, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 6)
  br label %if.end.278

if.else.240:                                      ; preds = %land.lhs.true.234, %if.end.231
  %156 = load i32, i32* %code, align 4
  %cmp241 = icmp eq i32 %156, 34
  br i1 %cmp241, label %if.then.245, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.else.240
  %157 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool244 = icmp ne i32 %157, 0
  br i1 %tobool244, label %if.then.245, label %if.end.277

if.then.245:                                      ; preds = %lor.lhs.false.243, %if.else.240
  %158 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %159 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %160 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @make_eh_edge(%struct.simple_bitmap_def** %158, %struct.basic_block_def* %159, %struct.rtx_def* %160)
  %161 = load i32, i32* %code, align 4
  %cmp246 = icmp eq i32 %161, 34
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.276

land.lhs.true.248:                                ; preds = %if.then.245
  %162 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %162, i32 0, i32 21
  %163 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels, align 8
  %tobool249 = icmp ne %struct.rtx_def* %163, null
  br i1 %tobool249, label %if.then.250, label %if.end.276

if.then.250:                                      ; preds = %land.lhs.true.248
  %164 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call252 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %164, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call252, %struct.rtx_def** %note, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool253 = icmp ne %struct.rtx_def* %165, null
  br i1 %tobool253, label %lor.lhs.false.254, label %if.then.262

lor.lhs.false.254:                                ; preds = %if.then.250
  %166 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 0
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %167 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx259 to i64*
  %168 = load i64, i64* %rtwint, align 8
  %cmp260 = icmp sge i64 %168, 0
  br i1 %cmp260, label %if.then.262, label %if.end.275

if.then.262:                                      ; preds = %lor.lhs.false.254, %if.then.250
  %169 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels263 = getelementptr inbounds %struct.function, %struct.function* %169, i32 0, i32 21
  %170 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels263, align 8
  store %struct.rtx_def* %170, %struct.rtx_def** %x, align 8
  br label %for.cond.264

for.cond.264:                                     ; preds = %for.inc.270, %if.then.262
  %171 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool265 = icmp ne %struct.rtx_def* %171, null
  br i1 %tobool265, label %for.body.266, label %for.end.274

for.body.266:                                     ; preds = %for.cond.264
  %172 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 0
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  call void @make_label_edge(%struct.simple_bitmap_def** %172, %struct.basic_block_def* %173, %struct.rtx_def* %175, i32 6)
  br label %for.inc.270

for.inc.270:                                      ; preds = %for.body.266
  %176 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld271 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld271, i32 0, i64 1
  %rtx273 = bitcast %union.rtunion_def* %arrayidx272 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx273, align 8
  store %struct.rtx_def* %177, %struct.rtx_def** %x, align 8
  br label %for.cond.264

for.end.274:                                      ; preds = %for.cond.264
  br label %if.end.275

if.end.275:                                       ; preds = %for.end.274, %lor.lhs.false.254
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %land.lhs.true.248, %if.then.245
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %lor.lhs.false.243
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.238
  %178 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call279 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %178)
  store %struct.rtx_def* %call279, %struct.rtx_def** %insn, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool280 = icmp ne %struct.rtx_def* %179, null
  br i1 %tobool280, label %lor.lhs.false.281, label %if.then.286

lor.lhs.false.281:                                ; preds = %if.end.278
  %180 = load i32, i32* %i, align 4
  %add = add nsw i32 %180, 1
  %181 = load i32, i32* @n_basic_blocks, align 4
  %cmp282 = icmp eq i32 %add, %181
  br i1 %cmp282, label %land.lhs.true.284, label %if.else.288

land.lhs.true.284:                                ; preds = %lor.lhs.false.281
  %182 = load i32, i32* %force_fallthru, align 4
  %tobool285 = icmp ne i32 %182, 0
  br i1 %tobool285, label %if.then.286, label %if.else.288

if.then.286:                                      ; preds = %land.lhs.true.284, %if.end.278
  %183 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %184 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %call287 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %183, %struct.basic_block_def* %184, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 1)
  br label %if.end.321

if.else.288:                                      ; preds = %land.lhs.true.284, %lor.lhs.false.281
  %185 = load i32, i32* %i, align 4
  %add289 = add nsw i32 %185, 1
  %186 = load i32, i32* @n_basic_blocks, align 4
  %cmp290 = icmp slt i32 %add289, %186
  br i1 %cmp290, label %if.then.292, label %if.end.320

if.then.292:                                      ; preds = %if.else.288
  %187 = load i32, i32* %i, align 4
  %add295 = add nsw i32 %187, 1
  %idxprom296 = sext i32 %add295 to i64
  %188 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data297 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %188, i32 0, i32 4
  %bb298 = bitcast %union.varray_data_tag* %data297 to [1 x %struct.basic_block_def*]*
  %arrayidx299 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb298, i32 0, i64 %idxprom296
  %189 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx299, align 8
  %head300 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %189, i32 0, i32 0
  %190 = load %struct.rtx_def*, %struct.rtx_def** %head300, align 8
  store %struct.rtx_def* %190, %struct.rtx_def** %tmp294, align 8
  %191 = load %struct.rtx_def*, %struct.rtx_def** %tmp294, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load301 = load i32, i32* %192, align 8
  %bf.clear302 = and i32 %bf.load301, 65535
  %cmp303 = icmp eq i32 %bf.clear302, 37
  br i1 %cmp303, label %if.then.305, label %if.end.307

if.then.305:                                      ; preds = %if.then.292
  %193 = load %struct.rtx_def*, %struct.rtx_def** %tmp294, align 8
  %call306 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %193)
  store %struct.rtx_def* %call306, %struct.rtx_def** %tmp294, align 8
  br label %if.end.307

if.end.307:                                       ; preds = %if.then.305, %if.then.292
  %194 = load i32, i32* %force_fallthru, align 4
  %tobool308 = icmp ne i32 %194, 0
  br i1 %tobool308, label %if.then.312, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %if.end.307
  %195 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %196 = load %struct.rtx_def*, %struct.rtx_def** %tmp294, align 8
  %cmp310 = icmp eq %struct.rtx_def* %195, %196
  br i1 %cmp310, label %if.then.312, label %if.end.319

if.then.312:                                      ; preds = %lor.lhs.false.309, %if.end.307
  %197 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %198 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %199 = load i32, i32* %i, align 4
  %add313 = add nsw i32 %199, 1
  %idxprom314 = sext i32 %add313 to i64
  %200 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data315 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %200, i32 0, i32 4
  %bb316 = bitcast %union.varray_data_tag* %data315 to [1 x %struct.basic_block_def*]*
  %arrayidx317 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb316, i32 0, i64 %idxprom314
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx317, align 8
  %call318 = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %197, %struct.basic_block_def* %198, %struct.basic_block_def* %201, i32 1)
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.312, %lor.lhs.false.309
  br label %if.end.320

if.end.320:                                       ; preds = %if.end.319, %if.else.288
  br label %if.end.321

if.end.321:                                       ; preds = %if.end.320, %if.then.286
  br label %for.inc.322

for.inc.322:                                      ; preds = %if.end.321
  %202 = load i32, i32* %i, align 4
  %inc323 = add nsw i32 %202, 1
  store i32 %inc323, i32* %i, align 4
  br label %for.cond.27

for.end.324:                                      ; preds = %for.cond.27
  %203 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %tobool325 = icmp ne %struct.simple_bitmap_def** %203, null
  br i1 %tobool325, label %if.then.326, label %if.end.327

if.then.326:                                      ; preds = %for.end.324
  %204 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache, align 8
  %205 = bitcast %struct.simple_bitmap_def** %204 to i8*
  call void @free(i8* %205) #4
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.326, %for.end.324
  ret void
}

declare void @tidy_fallthru_edges() #1

declare void @timevar_pop(i32) #1

; Function Attrs: nounwind uwtable
define void @find_many_sub_basic_blocks(%struct.simple_bitmap_def* %blocks) #0 {
entry:
  %blocks.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def* %blocks, %struct.simple_bitmap_def** %blocks.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %div = udiv i32 %2, 64
  %idxprom = zext i32 %div to i64
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %i, align 4
  %rem = urem i32 %5, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %4, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %conv = sext i32 %cond to i64
  %6 = inttoptr i64 %conv to i8*
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx2 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom1
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx2, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 10
  store i8* %6, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.19, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* @n_basic_blocks, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body.6, label %for.end.21

for.body.6:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %aux11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 10
  %16 = load i8*, i8** %aux11, align 8
  %17 = ptrtoint i8* %16 to i64
  %conv12 = trunc i64 %17 to i32
  %cmp13 = icmp eq i32 %conv12, 2
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  %18 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom15
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  call void @find_bb_boundaries(%struct.basic_block_def* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.3

for.end.21:                                       ; preds = %for.cond.3
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.36, %for.end.21
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* @n_basic_blocks, align 4
  %cmp23 = icmp slt i32 %22, %23
  br i1 %cmp23, label %for.body.25, label %for.end.38

for.body.25:                                      ; preds = %for.cond.22
  %24 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %24 to i64
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 4
  %bb28 = bitcast %union.varray_data_tag* %data27 to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb28, i32 0, i64 %idxprom26
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  %aux30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 10
  %27 = load i8*, i8** %aux30, align 8
  %28 = ptrtoint i8* %27 to i64
  %conv31 = trunc i64 %28 to i32
  %cmp32 = icmp ne i32 %conv31, 1
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.body.25
  br label %for.end.38

if.end.35:                                        ; preds = %for.body.25
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %29 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %29, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.22

for.end.38:                                       ; preds = %if.then.34, %for.cond.22
  %30 = load i32, i32* %i, align 4
  store i32 %30, i32* %max, align 4
  store i32 %30, i32* %min, align 4
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.53, %for.end.38
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* @n_basic_blocks, align 4
  %cmp40 = icmp slt i32 %31, %32
  br i1 %cmp40, label %for.body.42, label %for.end.55

for.body.42:                                      ; preds = %for.cond.39
  %33 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data44 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %34, i32 0, i32 4
  %bb45 = bitcast %union.varray_data_tag* %data44 to [1 x %struct.basic_block_def*]*
  %arrayidx46 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb45, i32 0, i64 %idxprom43
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx46, align 8
  %aux47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 10
  %36 = load i8*, i8** %aux47, align 8
  %37 = ptrtoint i8* %36 to i64
  %conv48 = trunc i64 %37 to i32
  %cmp49 = icmp ne i32 %conv48, 1
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.42
  %38 = load i32, i32* %i, align 4
  store i32 %38, i32* %max, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %for.body.42
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %39 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %39, 1
  store i32 %inc54, i32* %i, align 4
  br label %for.cond.39

for.end.55:                                       ; preds = %for.cond.39
  %40 = load i32, i32* %min, align 4
  %41 = load i32, i32* %max, align 4
  call void @make_edges(%struct.rtx_def* null, i32 %40, i32 %41, i32 1)
  %42 = load i32, i32* %min, align 4
  store i32 %42, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.88, %for.end.55
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %max, align 4
  %cmp57 = icmp sle i32 %43, %44
  br i1 %cmp57, label %for.body.59, label %for.end.90

for.body.59:                                      ; preds = %for.cond.56
  %45 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %45 to i64
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data61 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 4
  %bb62 = bitcast %union.varray_data_tag* %data61 to [1 x %struct.basic_block_def*]*
  %arrayidx63 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb62, i32 0, i64 %idxprom60
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx63, align 8
  store %struct.basic_block_def* %47, %struct.basic_block_def** %b, align 8
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 10
  %49 = load i8*, i8** %aux64, align 8
  %50 = ptrtoint i8* %49 to i64
  %conv65 = trunc i64 %50 to i32
  %cmp66 = icmp eq i32 %conv65, 1
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %for.body.59
  br label %for.inc.88

if.end.69:                                        ; preds = %for.body.59
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 10
  %52 = load i8*, i8** %aux70, align 8
  %53 = ptrtoint i8* %52 to i64
  %conv71 = trunc i64 %53 to i32
  %cmp72 = icmp eq i32 %conv71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.87

if.then.74:                                       ; preds = %if.end.69
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 13
  store i64 0, i64* %count, align 8
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i32 0, i32 14
  store i32 0, i32* %frequency, align 4
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 4
  %57 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %57, %struct.edge_def** %e, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.85, %if.then.74
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool76 = icmp ne %struct.edge_def* %58, null
  br i1 %tobool76, label %for.body.77, label %for.end.86

for.body.77:                                      ; preds = %for.cond.75
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count78 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 8
  %60 = load i64, i64* %count78, align 8
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %count79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 13
  %62 = load i64, i64* %count79, align 8
  %add = add nsw i64 %62, %60
  store i64 %add, i64* %count79, align 8
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 2
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %frequency80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 14
  %65 = load i32, i32* %frequency80, align 4
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %66, i32 0, i32 7
  %67 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %65, %67
  %add81 = add nsw i32 %mul, 5000
  %div82 = sdiv i32 %add81, 10000
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %frequency83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 14
  %69 = load i32, i32* %frequency83, align 4
  %add84 = add nsw i32 %69, %div82
  store i32 %add84, i32* %frequency83, align 4
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.77
  %70 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 0
  %71 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %71, %struct.edge_def** %e, align 8
  br label %for.cond.75

for.end.86:                                       ; preds = %for.cond.75
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %if.end.69
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  call void @compute_outgoing_frequencies(%struct.basic_block_def* %72)
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87, %if.then.68
  %73 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %73, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.56

for.end.90:                                       ; preds = %for.cond.56
  store i32 0, i32* %i, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.100, %for.end.90
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* @n_basic_blocks, align 4
  %cmp92 = icmp slt i32 %74, %75
  br i1 %cmp92, label %for.body.94, label %for.end.102

for.body.94:                                      ; preds = %for.cond.91
  %76 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %76 to i64
  %77 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data96 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %77, i32 0, i32 4
  %bb97 = bitcast %union.varray_data_tag* %data96 to [1 x %struct.basic_block_def*]*
  %arrayidx98 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb97, i32 0, i64 %idxprom95
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx98, align 8
  %aux99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 10
  store i8* null, i8** %aux99, align 8
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.body.94
  %79 = load i32, i32* %i, align 4
  %inc101 = add nsw i32 %79, 1
  store i32 %inc101, i32* %i, align 4
  br label %for.cond.91

for.end.102:                                      ; preds = %for.cond.91
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @find_bb_boundaries(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %flow_transfer_insn = alloca %struct.rtx_def*, align 8
  %fallthru = alloca %struct.edge_def*, align 8
  %code = alloca i32, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %flow_transfer_insn, align 8
  store %struct.edge_def* null, %struct.edge_def** %fallthru, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end2, align 8
  %cmp = icmp eq %struct.rtx_def* %4, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 36
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end.5, %if.end.38
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load6 = load i32, i32* %12, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  store i32 %bf.clear7, i32* %code, align 4
  %13 = load i32, i32* %code, align 4
  %cmp8 = icmp eq i32 %13, 36
  br i1 %cmp8, label %if.then.9, label %if.end.22

if.then.9:                                        ; preds = %while.body
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %call = call %struct.edge_def* @split_block(%struct.basic_block_def* %14, %struct.rtx_def* %16)
  store %struct.edge_def* %call, %struct.edge_def** %fallthru, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.9
  %18 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 1
  store %struct.rtx_def* %18, %struct.rtx_def** %end14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.9
  %20 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 3
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %bb.addr, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  call void @remove_edge(%struct.edge_def* %22)
  store %struct.rtx_def* null, %struct.rtx_def** %flow_transfer_insn, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 7
  %rtstr = bitcast %union.rtunion_def* %arrayidx17 to i8**
  %24 = load i8*, i8** %rtstr, align 8
  %tobool18 = icmp ne i8* %24, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.15
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call20 = call %struct.edge_def* @make_edge(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %25, i32 0)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %while.body
  %26 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %tobool23 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool23, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.22
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call24 = call zeroext i1 @inside_basic_block_p(%struct.rtx_def* %27)
  br i1 %call24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %land.lhs.true
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %call29 = call %struct.edge_def* @split_block(%struct.basic_block_def* %28, %struct.rtx_def* %30)
  store %struct.edge_def* %call29, %struct.edge_def** %fallthru, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 1
  store %struct.rtx_def* %31, %struct.rtx_def** %end30, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %dest31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 3
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest31, align 8
  store %struct.basic_block_def* %34, %struct.basic_block_def** %bb.addr, align 8
  %35 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  call void @remove_edge(%struct.edge_def* %35)
  store %struct.rtx_def* null, %struct.rtx_def** %flow_transfer_insn, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.25, %land.lhs.true, %if.end.22
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call33 = call zeroext i1 @control_flow_insn_p(%struct.rtx_def* %36)
  br i1 %call33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %flow_transfer_insn, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.32
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp36 = icmp eq %struct.rtx_def* %38, %39
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.35
  br label %while.end

if.end.38:                                        ; preds = %if.end.35
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 2
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %insn, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.37
  %42 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %tobool42 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %while.end
  %43 = load %struct.rtx_def*, %struct.rtx_def** %flow_transfer_insn, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 1
  store %struct.rtx_def* %43, %struct.rtx_def** %end44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %while.end
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call46 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %45)
  br label %return

return:                                           ; preds = %if.end.45, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_outgoing_frequencies(%struct.basic_block_def* %b) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %f = alloca %struct.edge_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %probability = alloca i32, align 4
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 5
  %3 = load %struct.edge_def*, %struct.edge_def** %succ1, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 1
  %4 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool2 = icmp ne %struct.edge_def* %4, null
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.38

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  %succ_next5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 1
  %7 = load %struct.edge_def*, %struct.edge_def** %succ_next5, align 8
  %succ_next6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 1
  %8 = load %struct.edge_def*, %struct.edge_def** %succ_next6, align 8
  %tobool7 = icmp ne %struct.edge_def* %8, null
  br i1 %tobool7, label %if.end.38, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %10, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool8 = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.then
  br label %if.end.50

if.end:                                           ; preds = %if.then
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end10, align 8
  %call11 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 16, %struct.rtx_def* null)
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %15 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %15 to i32
  store i32 %conv, i32* %probability, align 4
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 5
  %17 = load %struct.edge_def*, %struct.edge_def** %succ14, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 6
  %18 = load i32, i32* %flags, align 4
  %and = and i32 %18, 1
  %tobool15 = icmp ne i32 %and, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 5
  %20 = load %struct.edge_def*, %struct.edge_def** %succ16, align 8
  %succ_next17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 1
  %21 = load %struct.edge_def*, %struct.edge_def** %succ_next17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 5
  %23 = load %struct.edge_def*, %struct.edge_def** %succ18, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %21, %cond.true ], [ %23, %cond.false ]
  store %struct.edge_def* %cond, %struct.edge_def** %e, align 8
  %24 = load i32, i32* %probability, align 4
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 7
  store i32 %24, i32* %probability19, align 4
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 13
  %27 = load i64, i64* %count, align 8
  %28 = load i32, i32* %probability, align 4
  %conv20 = sext i32 %28 to i64
  %mul = mul nsw i64 %27, %conv20
  %add = add nsw i64 %mul, 5000
  %div = sdiv i64 %add, 10000
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 8
  store i64 %div, i64* %count21, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 5
  %31 = load %struct.edge_def*, %struct.edge_def** %succ22, align 8
  %flags23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 6
  %32 = load i32, i32* %flags23, align 4
  %and24 = and i32 %32, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.28

cond.true.26:                                     ; preds = %cond.end
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 5
  %34 = load %struct.edge_def*, %struct.edge_def** %succ27, align 8
  br label %cond.end.31

cond.false.28:                                    ; preds = %cond.end
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ29 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 5
  %36 = load %struct.edge_def*, %struct.edge_def** %succ29, align 8
  %succ_next30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 1
  %37 = load %struct.edge_def*, %struct.edge_def** %succ_next30, align 8
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.28, %cond.true.26
  %cond32 = phi %struct.edge_def* [ %34, %cond.true.26 ], [ %37, %cond.false.28 ]
  store %struct.edge_def* %cond32, %struct.edge_def** %f, align 8
  %38 = load i32, i32* %probability, align 4
  %sub = sub nsw i32 10000, %38
  %39 = load %struct.edge_def*, %struct.edge_def** %f, align 8
  %probability33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 7
  store i32 %sub, i32* %probability33, align 4
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %count34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 13
  %41 = load i64, i64* %count34, align 8
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 8
  %43 = load i64, i64* %count35, align 8
  %sub36 = sub nsw i64 %41, %43
  %44 = load %struct.edge_def*, %struct.edge_def** %f, align 8
  %count37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i32 0, i32 8
  store i64 %sub36, i64* %count37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %cond.end.31, %land.lhs.true.3, %land.lhs.true, %entry
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 5
  %46 = load %struct.edge_def*, %struct.edge_def** %succ39, align 8
  %tobool40 = icmp ne %struct.edge_def* %46, null
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.50

land.lhs.true.41:                                 ; preds = %if.end.38
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ42, align 8
  %succ_next43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 1
  %49 = load %struct.edge_def*, %struct.edge_def** %succ_next43, align 8
  %tobool44 = icmp ne %struct.edge_def* %49, null
  br i1 %tobool44, label %if.end.50, label %if.then.45

if.then.45:                                       ; preds = %land.lhs.true.41
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 5
  %51 = load %struct.edge_def*, %struct.edge_def** %succ46, align 8
  store %struct.edge_def* %51, %struct.edge_def** %e, align 8
  %52 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %52, i32 0, i32 7
  store i32 10000, i32* %probability47, align 4
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %count48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 13
  %54 = load i64, i64* %count48, align 8
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 8
  store i64 %54, i64* %count49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.9, %if.then.45, %land.lhs.true.41, %if.end.38
  ret void
}

; Function Attrs: nounwind uwtable
define void @find_sub_basic_blocks(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %next = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %2, 1
  %cmp = icmp eq i32 %1, %sub
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index1, align 4
  %add = add nsw i32 %4, 1
  %idxprom = sext i32 %add to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.basic_block_def* [ null, %cond.true ], [ %6, %cond.false ]
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %next, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index3, align 4
  store i32 %8, i32* %min, align 4
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  call void @find_bb_boundaries(%struct.basic_block_def* %9)
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool = icmp ne %struct.basic_block_def* %10, null
  br i1 %tobool, label %cond.true.4, label %cond.false.6

cond.true.4:                                      ; preds = %cond.end
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index5, align 4
  br label %cond.end.7

cond.false.6:                                     ; preds = %cond.end
  %13 = load i32, i32* @n_basic_blocks, align 4
  br label %cond.end.7

cond.end.7:                                       ; preds = %cond.false.6, %cond.true.4
  %cond8 = phi i32 [ %12, %cond.true.4 ], [ %13, %cond.false.6 ]
  %sub9 = sub nsw i32 %cond8, 1
  store i32 %sub9, i32* %max, align 4
  %14 = load i32, i32* %min, align 4
  %15 = load i32, i32* %max, align 4
  call void @make_edges(%struct.rtx_def* null, i32 %14, i32 %15, i32 1)
  %16 = load i32, i32* %min, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %cond.end.7
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %max, align 4
  %cmp10 = icmp sle i32 %17, %18
  br i1 %cmp10, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %bb13 = bitcast %union.varray_data_tag* %data12 to [1 x %struct.basic_block_def*]*
  %arrayidx14 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb13, i32 0, i64 %idxprom11
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx14, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %b, align 8
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %min, align 4
  %cmp15 = icmp ne i32 %22, %23
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 13
  store i64 0, i64* %count, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 14
  store i32 0, i32* %frequency, align 4
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 4
  %27 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %27, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.then
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool17 = icmp ne %struct.edge_def* %28, null
  br i1 %tobool17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 8
  %30 = load i64, i64* %count19, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %count20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 13
  %32 = load i64, i64* %count20, align 8
  %add21 = add nsw i64 %32, %30
  store i64 %add21, i64* %count20, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 2
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %frequency22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 14
  %35 = load i32, i32* %frequency22, align 4
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 7
  %37 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %35, %37
  %add23 = add nsw i32 %mul, 5000
  %div = sdiv i32 %add23, 10000
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %frequency24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 14
  %39 = load i32, i32* %frequency24, align 4
  %add25 = add nsw i32 %39, %div
  store i32 %add25, i32* %frequency24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 0
  %41 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %41, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  call void @compute_outgoing_frequencies(%struct.basic_block_def* %42)
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @inside_basic_block_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 36, label %sw.bb
    i32 33, label %sw.bb.25
    i32 34, label %sw.bb.40
    i32 32, label %sw.bb.40
    i32 35, label %sw.bb.41
    i32 37, label %sw.bb.41
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 33
  br i1 %cmp6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load13 = load i32, i32* %10, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp ne i32 %bf.clear14, 44
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 2
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load22 = load i32, i32* %14, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp ne i32 %bf.clear23, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %cmp24, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false, %sw.bb
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %sw.bb ], [ %15, %land.end ]
  store i1 %16, i1* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load29 = load i32, i32* %19, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp ne i32 %bf.clear30, 44
  br i1 %cmp31, label %land.rhs.32, label %land.end.39

land.rhs.32:                                      ; preds = %sw.bb.25
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load36 = load i32, i32* %22, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp ne i32 %bf.clear37, 45
  br label %land.end.39

land.end.39:                                      ; preds = %land.rhs.32, %sw.bb.25
  %23 = phi i1 [ false, %sw.bb.25 ], [ %cmp38, %land.rhs.32 ]
  store i1 %23, i1* %retval
  br label %return

sw.bb.40:                                         ; preds = %entry, %entry
  store i1 true, i1* %retval
  br label %return

sw.bb.41:                                         ; preds = %entry, %entry
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.inside_basic_block_p, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.41, %sw.bb.40, %land.end.39, %lor.end
  %24 = load i1, i1* %retval
  ret i1 %24
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @control_flow_insn_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 37, label %sw.bb
    i32 36, label %sw.bb
    i32 33, label %sw.bb.1
    i32 34, label %sw.bb.10
    i32 32, label %sw.bb.19
    i32 35, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry, %entry
  store i1 false, i1* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp ne i32 %bf.clear3, 44
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 45
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.1
  %8 = phi i1 [ false, %sw.bb.1 ], [ %cmp9, %land.rhs ]
  store i1 %8, i1* %retval
  br label %return

sw.bb.10:                                         ; preds = %entry
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %x_nonlocal_goto_handler_labels = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 21
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x_nonlocal_goto_handler_labels, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %sw.bb.10
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %11, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %cmp11 = icmp eq %struct.rtx_def* null, %call
  br i1 %cmp11, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx16 to i64*
  %14 = load i64, i64* %rtwint, align 8
  %cmp17 = icmp sge i64 %14, 0
  br i1 %cmp17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %sw.bb.10
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call18 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %15)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %call18, %lor.rhs ]
  store i1 %16, i1* %retval
  br label %return

sw.bb.19:                                         ; preds = %entry
  %17 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %land.rhs.21, label %land.end.23

land.rhs.21:                                      ; preds = %sw.bb.19
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call22 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %18)
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.21, %sw.bb.19
  %19 = phi i1 [ false, %sw.bb.19 ], [ %call22, %land.rhs.21 ]
  store i1 %19, i1* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.control_flow_insn_p, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %sw.bb.24, %land.end.23, %lor.end, %land.end, %sw.bb
  %20 = load i1, i1* %retval
  ret i1 %20
}

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare %struct.basic_block_def* @create_basic_block_structure(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_label_refs(%struct.rtx_def* %f, %struct.rtx_def* %lvl) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %lvl.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %lvl, %struct.rtx_def** %lvl.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.73, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.77

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %land.lhs.true, label %if.end.72

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp ne i32 %bf.clear3, 33
  br i1 %cmp4, label %if.then, label %if.end.72

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 6
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %note, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool8 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load10, 16
  %bf.clear11 = and i32 %bf.lshr, 255
  %cmp12 = icmp eq i32 %bf.clear11, 13
  br i1 %cmp12, label %if.then.14, label %if.end.68

if.then.14:                                       ; preds = %for.body.9
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %lab, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %next, align 8
  %cmp18 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp18, label %land.lhs.true.20, label %if.else

land.lhs.true.20:                                 ; preds = %if.then.14
  %15 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 33
  br i1 %cmp23, label %land.lhs.true.25, label %if.else

land.lhs.true.25:                                 ; preds = %land.lhs.true.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load29 = load i32, i32* %19, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 44
  br i1 %cmp31, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25
  %20 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load36 = load i32, i32* %22, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 45
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %lor.lhs.false, %land.lhs.true.25
  br label %if.end.67

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true.20, %if.then.14
  %23 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load41 = load i32, i32* %24, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 37
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %if.else
  br label %if.end.66

if.else.46:                                       ; preds = %if.else
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 2
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load50 = load i32, i32* %27, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 33
  br i1 %cmp52, label %land.lhs.true.54, label %if.else.61

land.lhs.true.54:                                 ; preds = %if.else.46
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 2
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call58 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %29, i32 13, %struct.rtx_def* %30)
  %tobool59 = icmp ne %struct.rtx_def* %call58, null
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.54
  br label %if.end

if.else.61:                                       ; preds = %land.lhs.true.54, %if.else.46
  %31 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %lvl.addr, align 8
  %call65 = call %struct.rtx_def* @alloc_EXPR_LIST(i32 0, %struct.rtx_def* %32, %struct.rtx_def* %33)
  store %struct.rtx_def* %call65, %struct.rtx_def** %lvl.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.61, %if.then.60
  br label %if.end.66

if.end.66:                                        ; preds = %if.end, %if.then.45
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.40
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %note, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end.72

if.end.72:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.73

for.inc.73:                                       ; preds = %if.end.72
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 2
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.77:                                       ; preds = %for.cond
  %38 = load %struct.rtx_def*, %struct.rtx_def** %lvl.addr, align 8
  ret %struct.rtx_def* %38
}

declare %struct.rtx_def* @alloc_EXPR_LIST(i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

declare %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def**, %struct.basic_block_def*, %struct.basic_block_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @make_eh_edge(%struct.simple_bitmap_def** %edge_cache, %struct.basic_block_def* %src, %struct.rtx_def* %insn) #0 {
entry:
  %edge_cache.addr = alloca %struct.simple_bitmap_def**, align 8
  %src.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %is_call = alloca i32, align 4
  %handlers = alloca %struct.rtx_def*, align 8
  %i = alloca %struct.rtx_def*, align 8
  store %struct.simple_bitmap_def** %edge_cache, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  %cond = select i1 %cmp, i32 4, i32 0
  store i32 %cond, i32* %is_call, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @reachable_handlers(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %handlers, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %handlers, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = load i32, i32* %is_call, align 4
  %or = or i32 10, %9
  call void @make_label_edge(%struct.simple_bitmap_def** %5, %struct.basic_block_def* %6, %struct.rtx_def* %8, i32 %or)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %i, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @free_INSN_LIST_list(%struct.rtx_def** %handlers)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @make_label_edge(%struct.simple_bitmap_def** %edge_cache, %struct.basic_block_def* %src, %struct.rtx_def* %label, i32 %flags) #0 {
entry:
  %edge_cache.addr = alloca %struct.simple_bitmap_def**, align 8
  %src.addr = alloca %struct.basic_block_def*, align 8
  %label.addr = alloca %struct.rtx_def*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.simple_bitmap_def** %edge_cache, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 239, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.make_label_edge, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtint, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %edge_cache.addr, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %7 = load i32, i32* %rtint6, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  %10 = load i32, i32* %flags.addr, align 4
  %call = call %struct.edge_def* @cached_make_edge(%struct.simple_bitmap_def** %4, %struct.basic_block_def* %5, %struct.basic_block_def* %9, i32 %10)
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @computed_jump_p(%struct.rtx_def*) #1

declare i32 @returnjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @reachable_handlers(%struct.rtx_def*) #1

declare void @free_INSN_LIST_list(%struct.rtx_def**) #1

declare %struct.edge_def* @split_block(%struct.basic_block_def*, %struct.rtx_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare zeroext i1 @purge_dead_edges(%struct.basic_block_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
