; ModuleID = 'recog.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.change_t = type { %struct.rtx_def*, i32, %struct.rtx_def**, %struct.rtx_def* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.operand_alternative = type { i8*, i32, i32, i32, i32, i8 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.peep2_insn_data = type { %struct.rtx_def*, %struct.bitmap_head_def* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.funny_match = type { i32, i32 }
%struct.validate_replace_src_data = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.propagate_block_info = type opaque

@volatile_ok = common global i32 0, align 4
@reload_completed = common global i32 0, align 4
@which_alternative = common global i32 0, align 4
@_sch_istable = external constant [256 x i16], align 16
@num_changes = internal global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"recog.c\00", align 1
@__FUNCTION__.validate_change = private unnamed_addr constant [16 x i8] c"validate_change\00", align 1
@changes_allocated = internal global i32 0, align 4
@changes = internal global %struct.change_t* null, align 8
@reload_in_progress = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@mode_class = external constant [59 x i32], align 16
@flag_pic = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@regclass_map = external constant [53 x i32], align 16
@target_flags = external global i32, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.asm_operand_ok = private unnamed_addr constant [15 x i8] c"asm_operand_ok\00", align 1
@recog_data = common global %struct.recog_data zeroinitializer, align 8
@__FUNCTION__.extract_constrain_insn_cached = private unnamed_addr constant [30 x i8] c"extract_constrain_insn_cached\00", align 1
@__FUNCTION__.extract_insn = private unnamed_addr constant [13 x i8] c"extract_insn\00", align 1
@insn_data = external constant [0 x %struct.insn_data], align 8
@recog_op_alt = common global [30 x [30 x %struct.operand_alternative]] zeroinitializer, align 16
@reg_class_subunion = external global [25 x [25 x i32]], align 16
@reg_class_contents = external global [25 x i64], align 16
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.split_all_insns = private unnamed_addr constant [16 x i8] c"split_all_insns\00", align 1
@__FUNCTION__.peep2_next_insn = private unnamed_addr constant [16 x i8] c"peep2_next_insn\00", align 1
@peep2_current = internal global i32 0, align 4
@peep2_insn_data = internal global [5 x %struct.peep2_insn_data] zeroinitializer, align 16
@__FUNCTION__.peep2_regno_dead_p = private unnamed_addr constant [19 x i8] c"peep2_regno_dead_p\00", align 1
@__FUNCTION__.peep2_reg_dead_p = private unnamed_addr constant [17 x i8] c"peep2_reg_dead_p\00", align 1
@peep2_find_free_register.search_ofs = internal global i32 0, align 4
@__FUNCTION__.peep2_find_free_register = private unnamed_addr constant [25 x i8] c"peep2_find_free_register\00", align 1
@reg_alloc_order = external global [53 x i32], align 16
@fixed_regs = external global [53 x i8], align 16
@call_used_regs = external global [53 x i8], align 16
@regs_ever_live = external global [53 x i8], align 16
@frame_pointer_needed = external global i32, align 4
@__FUNCTION__.peephole2_optimize = private unnamed_addr constant [19 x i8] c"peephole2_optimize\00", align 1
@flag_non_call_exceptions = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@mode_bitsize = external constant [59 x i16], align 16

; Function Attrs: nounwind uwtable
define void @init_recog_no_volatile() #0 {
entry:
  store i32 0, i32* @volatile_ok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_recog() #0 {
entry:
  store i32 1, i32* @volatile_ok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @recog_memoized_1(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @recog(%struct.rtx_def* %3, %struct.rtx_def* %4, i32* null)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 %call, i32* %rtint5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 4
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %7 = load i32, i32* %rtint8, align 4
  ret i32 %7
}

declare i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) #1

; Function Attrs: nounwind uwtable
define i32 @check_asm_operands(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %noperands = alloca i32, align 4
  %operands = alloca %struct.rtx_def**, align 8
  %constraints = alloca i8**, align 8
  %i = alloca i32, align 4
  %c = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %1)
  call void @extract_insn(%struct.rtx_def* %call)
  %call1 = call i32 @constrain_operands(i32 1)
  %2 = load i32, i32* @which_alternative, align 4
  %cmp = icmp sge i32 %2, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call2 = call i32 @asm_noperands(%struct.rtx_def* %3)
  store i32 %call2, i32* %noperands, align 4
  %4 = load i32, i32* %noperands, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %noperands, align 4
  %cmp7 = icmp eq i32 %5, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load i32, i32* %noperands, align 4
  %conv11 = sext i32 %6 to i64
  %mul = mul i64 %conv11, 8
  %7 = alloca i8, i64 %mul
  %8 = bitcast i8* %7 to %struct.rtx_def**
  store %struct.rtx_def** %8, %struct.rtx_def*** %operands, align 8
  %9 = load i32, i32* %noperands, align 4
  %conv12 = sext i32 %9 to i64
  %mul13 = mul i64 %conv12, 8
  %10 = alloca i8, i64 %mul13
  %11 = bitcast i8* %10 to i8**
  store i8** %11, i8*** %constraints, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %operands, align 8
  %14 = load i8**, i8*** %constraints, align 8
  %call14 = call i8* @decode_asm_operands(%struct.rtx_def* %12, %struct.rtx_def** %13, %struct.rtx_def*** null, i8** %14, i32* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %noperands, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i8**, i8*** %constraints, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %18, i64 %idxprom
  %19 = load i8*, i8** %arrayidx, align 8
  store i8* %19, i8** %c, align 8
  %20 = load i8*, i8** %c, align 8
  %arrayidx17 = getelementptr inbounds i8, i8* %20, i64 0
  %21 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %21 to i32
  %cmp19 = icmp eq i32 %conv18, 37
  br i1 %cmp19, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %for.body
  %22 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %for.body
  %23 = load i8*, i8** %c, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %and = and i32 %conv24, 255
  %idxprom25 = sext i32 %and to i64
  %arrayidx26 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom25
  %25 = load i16, i16* %arrayidx26, align 2
  %conv27 = zext i16 %25 to i32
  %and28 = and i32 %conv27, 4
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.22
  %26 = load i8*, i8** %c, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %27 to i32
  %cmp32 = icmp eq i32 %conv31, 0
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %land.lhs.true
  %28 = load i8*, i8** %c, align 8
  %arrayidx35 = getelementptr inbounds i8, i8* %28, i64 0
  %29 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %29 to i32
  %sub = sub nsw i32 %conv36, 48
  %idxprom37 = sext i32 %sub to i64
  %30 = load i8**, i8*** %constraints, align 8
  %arrayidx38 = getelementptr inbounds i8*, i8** %30, i64 %idxprom37
  %31 = load i8*, i8** %arrayidx38, align 8
  store i8* %31, i8** %c, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %land.lhs.true, %if.end.22
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load %struct.rtx_def**, %struct.rtx_def*** %operands, align 8
  %arrayidx41 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %33, i64 %idxprom40
  %34 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx41, align 8
  %35 = load i8*, i8** %c, align 8
  %call42 = call i32 @asm_operand_ok(%struct.rtx_def* %34, i8* %35)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %if.end.39
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.44, %if.then.9, %if.then.5, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define void @extract_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %icode = alloca i32, align 4
  %noperands = alloca i32, align 4
  %body = alloca %struct.rtx_def*, align 8
  %p = alloca i8*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  store %struct.rtx_def* null, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 10), align 8
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  store i8 0, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  store i32 -1, i32* @which_alternative, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 48, label %sw.bb
    i32 49, label %sw.bb
    i32 40, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 47, label %sw.bb.1
    i32 39, label %sw.bb.7
    i32 41, label %sw.bb.35
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  br label %if.end.130

sw.bb.1:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load5 = load i32, i32* %6, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp = icmp eq i32 %bf.clear6, 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  br label %asm_insn

if.else:                                          ; preds = %sw.bb.1
  br label %normal_insn

sw.bb.7:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load11 = load i32, i32* %10, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 47
  br i1 %cmp13, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %sw.bb.7
  %11 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtvec16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtvec_def**
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec16, align 8
  %elem17 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem17, i32 0, i64 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load22 = load i32, i32* %15, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 41
  br i1 %cmp24, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb.7
  %16 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtvec27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec27, align 8
  %elem28 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem28, i32 0, i64 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx29, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load30 = load i32, i32* %19, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 41
  br i1 %cmp32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %asm_insn

if.else.34:                                       ; preds = %lor.lhs.false
  br label %normal_insn

sw.bb.35:                                         ; preds = %entry
  br label %asm_insn

asm_insn:                                         ; preds = %sw.bb.35, %if.then.33, %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call = call i32 @asm_noperands(%struct.rtx_def* %20)
  store i32 %call, i32* %noperands, align 4
  %conv = trunc i32 %call to i8
  store i8 %conv, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %21 = load i32, i32* %noperands, align 4
  %cmp36 = icmp sge i32 %21, 0
  br i1 %cmp36, label %if.then.38, label %if.end.52

if.then.38:                                       ; preds = %asm_insn
  %22 = load i32, i32* %noperands, align 4
  %cmp39 = icmp sgt i32 %22, 30
  br i1 %cmp39, label %if.then.41, label %if.end

if.then.41:                                       ; preds = %if.then.38
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2123, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.extract_insn, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then.38
  %23 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call42 = call i8* @decode_asm_operands(%struct.rtx_def* %23, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1, i32 0), i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i32 0), i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i32 0))
  %24 = load i32, i32* %noperands, align 4
  %cmp43 = icmp sgt i32 %24, 0
  br i1 %cmp43, label %if.then.45, label %if.end.51

if.then.45:                                       ; preds = %if.end
  %25 = load i8*, i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i64 0), align 8
  store i8* %25, i8** %p, align 8
  store i8 1, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.45
  %26 = load i8*, i8** %p, align 8
  %27 = load i8, i8* %26, align 1
  %tobool = icmp ne i8 %27, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv46 = sext i8 %29 to i32
  %cmp47 = icmp eq i32 %conv46, 44
  %conv48 = zext i1 %cmp47 to i32
  %30 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv49 = sext i8 %30 to i32
  %add = add nsw i32 %conv49, %conv48
  %conv50 = trunc i32 %add to i8
  store i8 %conv50, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.51

if.end.51:                                        ; preds = %while.end, %if.end
  br label %sw.epilog

if.end.52:                                        ; preds = %asm_insn
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2139, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.extract_insn, i32 0, i32 0)) #5
  unreachable

sw.default:                                       ; preds = %entry
  br label %normal_insn

normal_insn:                                      ; preds = %sw.default, %if.else.34, %if.else
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %33 = load i32, i32* %rtint, align 4
  %cmp55 = icmp sge i32 %33, 0
  br i1 %cmp55, label %cond.true, label %cond.false

cond.true:                                        ; preds = %normal_insn
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 4
  %rtint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %35 = load i32, i32* %rtint59, align 4
  br label %cond.end

cond.false:                                       ; preds = %normal_insn
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call60 = call i32 @recog_memoized_1(%struct.rtx_def* %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %call60, %cond.false ]
  store i32 %cond, i32* %icode, align 4
  %37 = load i32, i32* %icode, align 4
  %cmp61 = icmp slt i32 %37, 0
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %cond.end
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2148, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.extract_insn, i32 0, i32 0)) #5
  unreachable

if.end.64:                                        ; preds = %cond.end
  %39 = load i32, i32* %icode, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx65 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom
  %n_operands = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx65, i32 0, i32 4
  %40 = load i8, i8* %n_operands, align 1
  %conv66 = sext i8 %40 to i32
  store i32 %conv66, i32* %noperands, align 4
  %conv67 = trunc i32 %conv66 to i8
  store i8 %conv67, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %41 = load i32, i32* %icode, align 4
  %idxprom68 = sext i32 %41 to i64
  %arrayidx69 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom68
  %n_alternatives = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx69, i32 0, i32 6
  %42 = load i8, i8* %n_alternatives, align 1
  store i8 %42, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %43 = load i32, i32* %icode, align 4
  %idxprom70 = sext i32 %43 to i64
  %arrayidx71 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom70
  %n_dups = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx71, i32 0, i32 5
  %44 = load i8, i8* %n_dups, align 1
  store i8 %44, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @insn_extract(%struct.rtx_def* %45)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.64
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %noperands, align 4
  %cmp72 = icmp slt i32 %46, %47
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %48 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %48 to i64
  %49 = load i32, i32* %icode, align 4
  %idxprom75 = sext i32 %49 to i64
  %arrayidx76 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom75
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx76, i32 0, i32 3
  %50 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx77 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %50, i64 %idxprom74
  %constraint = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx77, i32 0, i32 1
  %51 = load i8*, i8** %constraint, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %52 to i64
  %arrayidx79 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom78
  store i8* %51, i8** %arrayidx79, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %53 to i64
  %54 = load i32, i32* %icode, align 4
  %idxprom81 = sext i32 %54 to i64
  %arrayidx82 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom81
  %operand83 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx82, i32 0, i32 3
  %55 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand83, align 8
  %arrayidx84 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %55, i64 %idxprom80
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx84, i32 0, i32 2
  %bf.load85 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load85 to i32
  %56 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %56 to i64
  %arrayidx87 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3), i32 0, i64 %idxprom86
  store i32 %bf.cast, i32* %arrayidx87, align 4
  %57 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %57 to i64
  %arrayidx89 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3), i32 0, i64 %idxprom88
  %58 = load i32, i32* %arrayidx89, align 4
  %cmp90 = icmp eq i32 %58, 0
  br i1 %cmp90, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %59 to i64
  %arrayidx94 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom93
  %60 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx94, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load95 = load i32, i32* %61, align 8
  %bf.lshr = lshr i32 %bf.load95, 16
  %bf.clear96 = and i32 %bf.lshr, 255
  %62 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %62 to i64
  %arrayidx98 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3), i32 0, i64 %idxprom97
  store i32 %bf.clear96, i32* %arrayidx98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.92, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.end.51
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.123, %sw.epilog
  %64 = load i32, i32* %i, align 4
  %65 = load i32, i32* %noperands, align 4
  %cmp101 = icmp slt i32 %64, %65
  br i1 %cmp101, label %for.body.103, label %for.end.125

for.body.103:                                     ; preds = %for.cond.100
  %66 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %66 to i64
  %arrayidx105 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom104
  %67 = load i8*, i8** %arrayidx105, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %67, i64 0
  %68 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %68 to i32
  %cmp108 = icmp eq i32 %conv107, 61
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %for.body.103
  br label %cond.end.119

cond.false.111:                                   ; preds = %for.body.103
  %69 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %69 to i64
  %arrayidx113 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom112
  %70 = load i8*, i8** %arrayidx113, align 8
  %arrayidx114 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx114, align 1
  %conv115 = sext i8 %71 to i32
  %cmp116 = icmp eq i32 %conv115, 43
  %cond118 = select i1 %cmp116, i32 2, i32 0
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.111, %cond.true.110
  %cond120 = phi i32 [ 1, %cond.true.110 ], [ %cond118, %cond.false.111 ]
  %72 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %72 to i64
  %arrayidx122 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom121
  store i32 %cond120, i32* %arrayidx122, align 4
  br label %for.inc.123

for.inc.123:                                      ; preds = %cond.end.119
  %73 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %73, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.100

for.end.125:                                      ; preds = %for.cond.100
  %74 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv126 = sext i8 %74 to i32
  %cmp127 = icmp sgt i32 %conv126, 30
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %for.end.125
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.extract_insn, i32 0, i32 0)) #5
  unreachable

if.end.130:                                       ; preds = %sw.bb, %for.end.125
  ret void
}

declare %struct.rtx_def* @make_insn_raw(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @constrain_operands(i32 %strict) #0 {
entry:
  %retval = alloca i32, align 4
  %strict.addr = alloca i32, align 4
  %constraints = alloca [30 x i8*], align 16
  %matching_operands = alloca [30 x i32], align 16
  %earlyclobber = alloca [30 x i32], align 16
  %c = alloca i32, align 4
  %funny_match = alloca [30 x %struct.funny_match], align 16
  %funny_match_index = alloca i32, align 4
  %opno = alloca i32, align 4
  %lose = alloca i32, align 4
  %op = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %p = alloca i8*, align 8
  %offset = alloca i32, align 4
  %win = alloca i32, align 4
  %val = alloca i32, align 4
  %end = alloca i8*, align 8
  %match = alloca i32, align 4
  %op1 = alloca %struct.rtx_def*, align 8
  %op2 = alloca %struct.rtx_def*, align 8
  %class = alloca i32, align 4
  %opno856 = alloca i32, align 4
  %eopno = alloca i32, align 4
  store i32 %strict, i32* %strict.addr, align 4
  store i32 0, i32* @which_alternative, align 4
  %0 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp eq i32 %conv2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %c, align 4
  %3 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv5 = sext i8 %3 to i32
  %cmp6 = icmp slt i32 %2, %conv5
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %c, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  %6 = load i32, i32* %c, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom8
  store i8* %5, i8** %arrayidx9, align 8
  %7 = load i32, i32* %c, align 4
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [30 x i32], [30 x i32]* %matching_operands, i32 0, i64 %idxprom10
  store i32 -1, i32* %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %c, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, i32* %lose, align 4
  store i32 0, i32* %funny_match_index, align 4
  store i32 0, i32* %opno, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.851, %do.body
  %9 = load i32, i32* %opno, align 4
  %10 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv13 = sext i8 %10 to i32
  %cmp14 = icmp slt i32 %9, %conv13
  br i1 %cmp14, label %for.body.16, label %for.end.853

for.body.16:                                      ; preds = %for.cond.12
  %11 = load i32, i32* %opno, align 4
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom17
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx18, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %op, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %15 = load i32, i32* %opno, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom19
  %16 = load i8*, i8** %arrayidx20, align 8
  store i8* %16, i8** %p, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %win, align 4
  %17 = load i32, i32* %opno, align 4
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [30 x i32], [30 x i32]* %earlyclobber, i32 0, i64 %idxprom21
  store i32 0, i32* %arrayidx22, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load23 = load i32, i32* %19, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %idxprom25 = sext i32 %bf.clear24 to i64
  %arrayidx26 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom25
  %20 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %20 to i32
  %cmp28 = icmp eq i32 %conv27, 49
  br i1 %cmp28, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %for.body.16
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %op, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %for.body.16
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp eq i32 %bf.clear34, 63
  br i1 %cmp35, label %if.then.37, label %if.end.75

if.then.37:                                       ; preds = %if.end.32
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load41 = load i32, i32* %27, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 61
  br i1 %cmp43, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.then.37
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %30 = load i32, i32* %rtuint, align 4
  %cmp50 = icmp ult i32 %30, 53
  br i1 %cmp50, label %if.then.52, label %if.end.71

if.then.52:                                       ; preds = %land.lhs.true
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtuint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %33 = load i32, i32* %rtuint58, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load62 = load i32, i32* %36, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 16
  %bf.clear64 = and i32 %bf.lshr63, 255
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %38 = load i32, i32* %rtuint67, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load68 = load i32, i32* %40, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 16
  %bf.clear70 = and i32 %bf.lshr69, 255
  %call = call i32 @subreg_regno_offset(i32 %33, i32 %bf.clear64, i32 %38, i32 %bf.clear70)
  store i32 %call, i32* %offset, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.52, %land.lhs.true, %if.then.37
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 0
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %op, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.71, %if.end.32
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv76 = sext i8 %44 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %if.then.83, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %if.end.75
  %45 = load i8*, i8** %p, align 8
  %46 = load i8, i8* %45, align 1
  %conv80 = sext i8 %46 to i32
  %cmp81 = icmp eq i32 %conv80, 44
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %lor.lhs.false.79, %if.end.75
  store i32 1, i32* %win, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %lor.lhs.false.79
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end.84
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %conv85 = sext i8 %48 to i32
  %tobool = icmp ne i32 %conv85, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %49 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %50 = load i8, i8* %49, align 1
  %conv86 = sext i8 %50 to i32
  store i32 %conv86, i32* %c, align 4
  %cmp87 = icmp ne i32 %conv86, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %51 = phi i1 [ false, %while.cond ], [ %cmp87, %land.rhs ]
  br i1 %51, label %while.body, label %while.end.845

while.body:                                       ; preds = %land.end
  %52 = load i32, i32* %c, align 4
  switch i32 %52, label %sw.default [
    i32 63, label %sw.bb
    i32 33, label %sw.bb
    i32 42, label %sw.bb
    i32 37, label %sw.bb
    i32 61, label %sw.bb
    i32 43, label %sw.bb
    i32 35, label %sw.bb.89
    i32 38, label %sw.bb.100
    i32 48, label %sw.bb.103
    i32 49, label %sw.bb.103
    i32 50, label %sw.bb.103
    i32 51, label %sw.bb.103
    i32 52, label %sw.bb.103
    i32 53, label %sw.bb.103
    i32 54, label %sw.bb.103
    i32 55, label %sw.bb.103
    i32 56, label %sw.bb.103
    i32 57, label %sw.bb.103
    i32 112, label %sw.bb.159
    i32 103, label %sw.bb.169
    i32 88, label %sw.bb.190
    i32 109, label %sw.bb.191
    i32 60, label %sw.bb.254
    i32 62, label %sw.bb.277
    i32 69, label %sw.bb.300
    i32 70, label %sw.bb.307
    i32 71, label %sw.bb.314
    i32 72, label %sw.bb.314
    i32 115, label %sw.bb.332
    i32 105, label %sw.bb.350
    i32 110, label %sw.bb.392
    i32 73, label %sw.bb.410
    i32 74, label %sw.bb.410
    i32 75, label %sw.bb.410
    i32 76, label %sw.bb.410
    i32 77, label %sw.bb.410
    i32 78, label %sw.bb.410
    i32 79, label %sw.bb.410
    i32 80, label %sw.bb.410
    i32 86, label %sw.bb.507
    i32 111, label %sw.bb.581
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.bb.89:                                         ; preds = %while.body
  br label %while.cond.90

while.cond.90:                                    ; preds = %while.body.98, %sw.bb.89
  %53 = load i8*, i8** %p, align 8
  %54 = load i8, i8* %53, align 1
  %conv91 = sext i8 %54 to i32
  %tobool92 = icmp ne i32 %conv91, 0
  br i1 %tobool92, label %land.rhs.93, label %land.end.97

land.rhs.93:                                      ; preds = %while.cond.90
  %55 = load i8*, i8** %p, align 8
  %56 = load i8, i8* %55, align 1
  %conv94 = sext i8 %56 to i32
  %cmp95 = icmp ne i32 %conv94, 44
  br label %land.end.97

land.end.97:                                      ; preds = %land.rhs.93, %while.cond.90
  %57 = phi i1 [ false, %while.cond.90 ], [ %cmp95, %land.rhs.93 ]
  br i1 %57, label %while.body.98, label %while.end

while.body.98:                                    ; preds = %land.end.97
  %58 = load i8*, i8** %p, align 8
  %incdec.ptr99 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %incdec.ptr99, i8** %p, align 8
  br label %while.cond.90

while.end:                                        ; preds = %land.end.97
  br label %sw.epilog

sw.bb.100:                                        ; preds = %while.body
  %59 = load i32, i32* %opno, align 4
  %idxprom101 = sext i32 %59 to i64
  %arrayidx102 = getelementptr inbounds [30 x i32], [30 x i32]* %earlyclobber, i32 0, i64 %idxprom101
  store i32 1, i32* %arrayidx102, align 4
  br label %sw.epilog

sw.bb.103:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %60 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %60, i64 -1
  %call104 = call i64 @strtoul(i8* %add.ptr, i8** %end, i32 10) #3
  %conv105 = trunc i64 %call104 to i32
  store i32 %conv105, i32* %match, align 4
  %61 = load i8*, i8** %end, align 8
  store i8* %61, i8** %p, align 8
  %62 = load i32, i32* %strict.addr, align 4
  %cmp106 = icmp slt i32 %62, 0
  br i1 %cmp106, label %if.then.108, label %if.else

if.then.108:                                      ; preds = %sw.bb.103
  store i32 1, i32* %val, align 4
  br label %if.end.138

if.else:                                          ; preds = %sw.bb.103
  %63 = load i32, i32* %match, align 4
  %idxprom109 = sext i32 %63 to i64
  %arrayidx110 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom109
  %64 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx110, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %op1, align 8
  %65 = load i32, i32* %opno, align 4
  %idxprom111 = sext i32 %65 to i64
  %arrayidx112 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom111
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %op2, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load113 = load i32, i32* %68, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %idxprom115 = sext i32 %bf.clear114 to i64
  %arrayidx116 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom115
  %69 = load i8, i8* %arrayidx116, align 1
  %conv117 = sext i8 %69 to i32
  %cmp118 = icmp eq i32 %conv117, 49
  br i1 %cmp118, label %if.then.120, label %if.end.124

if.then.120:                                      ; preds = %if.else
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %op1, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.120, %if.else
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load125 = load i32, i32* %73, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  %idxprom127 = sext i32 %bf.clear126 to i64
  %arrayidx128 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom127
  %74 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %74 to i32
  %cmp130 = icmp eq i32 %conv129, 49
  br i1 %cmp130, label %if.then.132, label %if.end.136

if.then.132:                                      ; preds = %if.end.124
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %op2, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.132, %if.end.124
  %77 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %op2, align 8
  %call137 = call i32 @operands_match_p(%struct.rtx_def* %77, %struct.rtx_def* %78)
  store i32 %call137, i32* %val, align 4
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.136, %if.then.108
  %79 = load i32, i32* %match, align 4
  %80 = load i32, i32* %opno, align 4
  %idxprom139 = sext i32 %80 to i64
  %arrayidx140 = getelementptr inbounds [30 x i32], [30 x i32]* %matching_operands, i32 0, i64 %idxprom139
  store i32 %79, i32* %arrayidx140, align 4
  %81 = load i32, i32* %opno, align 4
  %82 = load i32, i32* %match, align 4
  %idxprom141 = sext i32 %82 to i64
  %arrayidx142 = getelementptr inbounds [30 x i32], [30 x i32]* %matching_operands, i32 0, i64 %idxprom141
  store i32 %81, i32* %arrayidx142, align 4
  %83 = load i32, i32* %val, align 4
  %cmp143 = icmp ne i32 %83, 0
  br i1 %cmp143, label %if.then.145, label %if.end.146

if.then.145:                                      ; preds = %if.end.138
  store i32 1, i32* %win, align 4
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.145, %if.end.138
  %84 = load i32, i32* %val, align 4
  %cmp147 = icmp eq i32 %84, 2
  br i1 %cmp147, label %land.lhs.true.149, label %if.end.158

land.lhs.true.149:                                ; preds = %if.end.146
  %85 = load i32, i32* %strict.addr, align 4
  %cmp150 = icmp sgt i32 %85, 0
  br i1 %cmp150, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %land.lhs.true.149
  %86 = load i32, i32* %opno, align 4
  %87 = load i32, i32* %funny_match_index, align 4
  %idxprom153 = sext i32 %87 to i64
  %arrayidx154 = getelementptr inbounds [30 x %struct.funny_match], [30 x %struct.funny_match]* %funny_match, i32 0, i64 %idxprom153
  %this = getelementptr inbounds %struct.funny_match, %struct.funny_match* %arrayidx154, i32 0, i32 0
  store i32 %86, i32* %this, align 4
  %88 = load i32, i32* %match, align 4
  %89 = load i32, i32* %funny_match_index, align 4
  %inc155 = add nsw i32 %89, 1
  store i32 %inc155, i32* %funny_match_index, align 4
  %idxprom156 = sext i32 %89 to i64
  %arrayidx157 = getelementptr inbounds [30 x %struct.funny_match], [30 x %struct.funny_match]* %funny_match, i32 0, i64 %idxprom156
  %other = getelementptr inbounds %struct.funny_match, %struct.funny_match* %arrayidx157, i32 0, i32 1
  store i32 %88, i32* %other, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.152, %land.lhs.true.149, %if.end.146
  br label %sw.epilog

sw.bb.159:                                        ; preds = %while.body
  %90 = load i32, i32* %strict.addr, align 4
  %cmp160 = icmp sle i32 %90, 0
  br i1 %cmp160, label %if.then.167, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %sw.bb.159
  %91 = load i32, i32* %opno, align 4
  %idxprom163 = sext i32 %91 to i64
  %arrayidx164 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3), i32 0, i64 %idxprom163
  %92 = load i32, i32* %arrayidx164, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call165 = call i32 @strict_memory_address_p(i32 %92, %struct.rtx_def* %93)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %lor.lhs.false.162, %sw.bb.159
  store i32 1, i32* %win, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %lor.lhs.false.162
  br label %sw.epilog

sw.bb.169:                                        ; preds = %while.body
  %94 = load i32, i32* %strict.addr, align 4
  %cmp170 = icmp slt i32 %94, 0
  br i1 %cmp170, label %if.then.188, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %sw.bb.169
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load173 = load i32, i32* %96, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp ne i32 %bf.clear174, 61
  br i1 %cmp175, label %if.then.188, label %lor.lhs.false.177

lor.lhs.false.177:                                ; preds = %lor.lhs.false.172
  %97 = load i32, i32* @reload_in_progress, align 4
  %tobool178 = icmp ne i32 %97, 0
  br i1 %tobool178, label %land.lhs.true.179, label %lor.lhs.false.185

land.lhs.true.179:                                ; preds = %lor.lhs.false.177
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtuint182 = bitcast %union.rtunion_def* %arrayidx181 to i32*
  %99 = load i32, i32* %rtuint182, align 4
  %cmp183 = icmp uge i32 %99, 53
  br i1 %cmp183, label %if.then.188, label %lor.lhs.false.185

lor.lhs.false.185:                                ; preds = %land.lhs.true.179, %lor.lhs.false.177
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %101 = load i32, i32* %offset, align 4
  %102 = load i32, i32* %mode, align 4
  %call186 = call i32 @reg_fits_class_p(%struct.rtx_def* %100, i32 12, i32 %101, i32 %102)
  %tobool187 = icmp ne i32 %call186, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %lor.lhs.false.185, %land.lhs.true.179, %lor.lhs.false.172, %sw.bb.169
  store i32 1, i32* %win, align 4
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %lor.lhs.false.185
  br label %sw.epilog

sw.bb.190:                                        ; preds = %while.body
  store i32 1, i32* %win, align 4
  br label %sw.epilog

sw.bb.191:                                        ; preds = %while.body
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load192 = load i32, i32* %104, align 8
  %bf.clear193 = and i32 %bf.load192, 65535
  %cmp194 = icmp eq i32 %bf.clear193, 66
  br i1 %cmp194, label %if.then.252, label %lor.lhs.false.196

lor.lhs.false.196:                                ; preds = %sw.bb.191
  %105 = load i32, i32* %strict.addr, align 4
  %cmp197 = icmp slt i32 %105, 0
  br i1 %cmp197, label %land.lhs.true.199, label %lor.lhs.false.239

land.lhs.true.199:                                ; preds = %lor.lhs.false.196
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load200 = load i32, i32* %107, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %cmp202 = icmp eq i32 %bf.clear201, 67
  br i1 %cmp202, label %if.then.252, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %land.lhs.true.199
  %108 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load205 = load i32, i32* %109, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp eq i32 %bf.clear206, 68
  br i1 %cmp207, label %if.then.252, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %lor.lhs.false.204
  %110 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load210 = load i32, i32* %111, align 8
  %bf.clear211 = and i32 %bf.load210, 65535
  %cmp212 = icmp eq i32 %bf.clear211, 54
  br i1 %cmp212, label %if.then.252, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %lor.lhs.false.209
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load215 = load i32, i32* %113, align 8
  %bf.clear216 = and i32 %bf.load215, 65535
  %cmp217 = icmp eq i32 %bf.clear216, 55
  br i1 %cmp217, label %if.then.252, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.214
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load220 = load i32, i32* %115, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 58
  br i1 %cmp222, label %if.then.252, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %lor.lhs.false.219
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load225 = load i32, i32* %117, align 8
  %bf.clear226 = and i32 %bf.load225, 65535
  %cmp227 = icmp eq i32 %bf.clear226, 134
  br i1 %cmp227, label %if.then.252, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.224
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load230 = load i32, i32* %119, align 8
  %bf.clear231 = and i32 %bf.load230, 65535
  %cmp232 = icmp eq i32 %bf.clear231, 56
  br i1 %cmp232, label %if.then.252, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %lor.lhs.false.229
  %120 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load235 = load i32, i32* %121, align 8
  %bf.clear236 = and i32 %bf.load235, 65535
  %cmp237 = icmp eq i32 %bf.clear236, 140
  br i1 %cmp237, label %if.then.252, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.234, %lor.lhs.false.196
  %122 = load i32, i32* @reload_in_progress, align 4
  %tobool240 = icmp ne i32 %122, 0
  br i1 %tobool240, label %land.lhs.true.241, label %if.end.253

land.lhs.true.241:                                ; preds = %lor.lhs.false.239
  %123 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load242 = load i32, i32* %124, align 8
  %bf.clear243 = and i32 %bf.load242, 65535
  %cmp244 = icmp eq i32 %bf.clear243, 61
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.253

land.lhs.true.246:                                ; preds = %land.lhs.true.241
  %125 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtuint249 = bitcast %union.rtunion_def* %arrayidx248 to i32*
  %126 = load i32, i32* %rtuint249, align 4
  %cmp250 = icmp uge i32 %126, 53
  br i1 %cmp250, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %land.lhs.true.246, %lor.lhs.false.234, %lor.lhs.false.229, %lor.lhs.false.224, %lor.lhs.false.219, %lor.lhs.false.214, %lor.lhs.false.209, %lor.lhs.false.204, %land.lhs.true.199, %sw.bb.191
  store i32 1, i32* %win, align 4
  br label %if.end.253

if.end.253:                                       ; preds = %if.then.252, %land.lhs.true.246, %land.lhs.true.241, %lor.lhs.false.239
  br label %sw.epilog

sw.bb.254:                                        ; preds = %while.body
  %127 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load255 = load i32, i32* %128, align 8
  %bf.clear256 = and i32 %bf.load255, 65535
  %cmp257 = icmp eq i32 %bf.clear256, 66
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.276

land.lhs.true.259:                                ; preds = %sw.bb.254
  %129 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx262, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load263 = load i32, i32* %131, align 8
  %bf.clear264 = and i32 %bf.load263, 65535
  %cmp265 = icmp eq i32 %bf.clear264, 96
  br i1 %cmp265, label %if.then.275, label %lor.lhs.false.267

lor.lhs.false.267:                                ; preds = %land.lhs.true.259
  %132 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld268, i32 0, i64 0
  %rtx270 = bitcast %union.rtunion_def* %arrayidx269 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx270, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load271 = load i32, i32* %134, align 8
  %bf.clear272 = and i32 %bf.load271, 65535
  %cmp273 = icmp eq i32 %bf.clear272, 98
  br i1 %cmp273, label %if.then.275, label %if.end.276

if.then.275:                                      ; preds = %lor.lhs.false.267, %land.lhs.true.259
  store i32 1, i32* %win, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.275, %lor.lhs.false.267, %sw.bb.254
  br label %sw.epilog

sw.bb.277:                                        ; preds = %while.body
  %135 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load278 = load i32, i32* %136, align 8
  %bf.clear279 = and i32 %bf.load278, 65535
  %cmp280 = icmp eq i32 %bf.clear279, 66
  br i1 %cmp280, label %land.lhs.true.282, label %if.end.299

land.lhs.true.282:                                ; preds = %sw.bb.277
  %137 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 0
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load286 = load i32, i32* %139, align 8
  %bf.clear287 = and i32 %bf.load286, 65535
  %cmp288 = icmp eq i32 %bf.clear287, 97
  br i1 %cmp288, label %if.then.298, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %land.lhs.true.282
  %140 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld291, i32 0, i64 0
  %rtx293 = bitcast %union.rtunion_def* %arrayidx292 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx293, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load294 = load i32, i32* %142, align 8
  %bf.clear295 = and i32 %bf.load294, 65535
  %cmp296 = icmp eq i32 %bf.clear295, 99
  br i1 %cmp296, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %lor.lhs.false.290, %land.lhs.true.282
  store i32 1, i32* %win, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %lor.lhs.false.290, %sw.bb.277
  br label %sw.epilog

sw.bb.300:                                        ; preds = %while.body
  %143 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load301 = load i32, i32* %144, align 8
  %bf.clear302 = and i32 %bf.load301, 65535
  %cmp303 = icmp eq i32 %bf.clear302, 55
  br i1 %cmp303, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %sw.bb.300
  store i32 1, i32* %win, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %sw.bb.300
  br label %sw.epilog

sw.bb.307:                                        ; preds = %while.body
  %145 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load308 = load i32, i32* %146, align 8
  %bf.clear309 = and i32 %bf.load308, 65535
  %cmp310 = icmp eq i32 %bf.clear309, 55
  br i1 %cmp310, label %if.then.312, label %if.end.313

if.then.312:                                      ; preds = %sw.bb.307
  store i32 1, i32* %win, align 4
  br label %if.end.313

if.end.313:                                       ; preds = %if.then.312, %sw.bb.307
  br label %sw.epilog

sw.bb.314:                                        ; preds = %while.body, %while.body
  %147 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load315 = load i32, i32* %148, align 8
  %bf.clear316 = and i32 %bf.load315, 65535
  %cmp317 = icmp eq i32 %bf.clear316, 55
  br i1 %cmp317, label %land.lhs.true.319, label %if.end.331

land.lhs.true.319:                                ; preds = %sw.bb.314
  %149 = load i32, i32* %c, align 4
  %cmp320 = icmp eq i32 %149, 71
  br i1 %cmp320, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.319
  %150 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call322 = call i32 @standard_80387_constant_p(%struct.rtx_def* %150)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.then.330, label %if.end.331

cond.false:                                       ; preds = %land.lhs.true.319
  %151 = load i32, i32* %c, align 4
  %cmp324 = icmp eq i32 %151, 72
  br i1 %cmp324, label %cond.true.326, label %cond.false.329

cond.true.326:                                    ; preds = %cond.false
  %152 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call327 = call i32 @standard_sse_constant_p(%struct.rtx_def* %152)
  %tobool328 = icmp ne i32 %call327, 0
  br i1 %tobool328, label %if.then.330, label %if.end.331

cond.false.329:                                   ; preds = %cond.false
  br i1 false, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %cond.false.329, %cond.true.326, %cond.true
  store i32 1, i32* %win, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.330, %cond.false.329, %cond.true.326, %cond.true, %sw.bb.314
  br label %sw.epilog

sw.bb.332:                                        ; preds = %while.body
  %153 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load333 = load i32, i32* %154, align 8
  %bf.clear334 = and i32 %bf.load333, 65535
  %cmp335 = icmp eq i32 %bf.clear334, 54
  br i1 %cmp335, label %if.then.348, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %sw.bb.332
  %155 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load338 = load i32, i32* %156, align 8
  %bf.clear339 = and i32 %bf.load338, 65535
  %cmp340 = icmp eq i32 %bf.clear339, 55
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.349

land.lhs.true.342:                                ; preds = %lor.lhs.false.337
  %157 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load343 = load i32, i32* %158, align 8
  %bf.lshr344 = lshr i32 %bf.load343, 16
  %bf.clear345 = and i32 %bf.lshr344, 255
  %cmp346 = icmp eq i32 %bf.clear345, 0
  br i1 %cmp346, label %if.then.348, label %if.end.349

if.then.348:                                      ; preds = %land.lhs.true.342, %sw.bb.332
  br label %sw.epilog

if.end.349:                                       ; preds = %land.lhs.true.342, %lor.lhs.false.337
  br label %sw.bb.350

sw.bb.350:                                        ; preds = %while.body, %if.end.349
  %159 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load351 = load i32, i32* %160, align 8
  %bf.clear352 = and i32 %bf.load351, 65535
  %cmp353 = icmp eq i32 %bf.clear352, 67
  br i1 %cmp353, label %if.then.390, label %lor.lhs.false.355

lor.lhs.false.355:                                ; preds = %sw.bb.350
  %161 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load356 = load i32, i32* %162, align 8
  %bf.clear357 = and i32 %bf.load356, 65535
  %cmp358 = icmp eq i32 %bf.clear357, 68
  br i1 %cmp358, label %if.then.390, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %lor.lhs.false.355
  %163 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %bf.load361 = load i32, i32* %164, align 8
  %bf.clear362 = and i32 %bf.load361, 65535
  %cmp363 = icmp eq i32 %bf.clear362, 54
  br i1 %cmp363, label %if.then.390, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %lor.lhs.false.360
  %165 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load366 = load i32, i32* %166, align 8
  %bf.clear367 = and i32 %bf.load366, 65535
  %cmp368 = icmp eq i32 %bf.clear367, 55
  br i1 %cmp368, label %if.then.390, label %lor.lhs.false.370

lor.lhs.false.370:                                ; preds = %lor.lhs.false.365
  %167 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load371 = load i32, i32* %168, align 8
  %bf.clear372 = and i32 %bf.load371, 65535
  %cmp373 = icmp eq i32 %bf.clear372, 58
  br i1 %cmp373, label %if.then.390, label %lor.lhs.false.375

lor.lhs.false.375:                                ; preds = %lor.lhs.false.370
  %169 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load376 = load i32, i32* %170, align 8
  %bf.clear377 = and i32 %bf.load376, 65535
  %cmp378 = icmp eq i32 %bf.clear377, 134
  br i1 %cmp378, label %if.then.390, label %lor.lhs.false.380

lor.lhs.false.380:                                ; preds = %lor.lhs.false.375
  %171 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %bf.load381 = load i32, i32* %172, align 8
  %bf.clear382 = and i32 %bf.load381, 65535
  %cmp383 = icmp eq i32 %bf.clear382, 56
  br i1 %cmp383, label %if.then.390, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %lor.lhs.false.380
  %173 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %174 = bitcast %struct.rtx_def* %173 to i32*
  %bf.load386 = load i32, i32* %174, align 8
  %bf.clear387 = and i32 %bf.load386, 65535
  %cmp388 = icmp eq i32 %bf.clear387, 140
  br i1 %cmp388, label %if.then.390, label %if.end.391

if.then.390:                                      ; preds = %lor.lhs.false.385, %lor.lhs.false.380, %lor.lhs.false.375, %lor.lhs.false.370, %lor.lhs.false.365, %lor.lhs.false.360, %lor.lhs.false.355, %sw.bb.350
  store i32 1, i32* %win, align 4
  br label %if.end.391

if.end.391:                                       ; preds = %if.then.390, %lor.lhs.false.385
  br label %sw.epilog

sw.bb.392:                                        ; preds = %while.body
  %175 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load393 = load i32, i32* %176, align 8
  %bf.clear394 = and i32 %bf.load393, 65535
  %cmp395 = icmp eq i32 %bf.clear394, 54
  br i1 %cmp395, label %if.then.408, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %sw.bb.392
  %177 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load398 = load i32, i32* %178, align 8
  %bf.clear399 = and i32 %bf.load398, 65535
  %cmp400 = icmp eq i32 %bf.clear399, 55
  br i1 %cmp400, label %land.lhs.true.402, label %if.end.409

land.lhs.true.402:                                ; preds = %lor.lhs.false.397
  %179 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load403 = load i32, i32* %180, align 8
  %bf.lshr404 = lshr i32 %bf.load403, 16
  %bf.clear405 = and i32 %bf.lshr404, 255
  %cmp406 = icmp eq i32 %bf.clear405, 0
  br i1 %cmp406, label %if.then.408, label %if.end.409

if.then.408:                                      ; preds = %land.lhs.true.402, %sw.bb.392
  store i32 1, i32* %win, align 4
  br label %if.end.409

if.end.409:                                       ; preds = %if.then.408, %land.lhs.true.402, %lor.lhs.false.397
  br label %sw.epilog

sw.bb.410:                                        ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  %181 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load411 = load i32, i32* %182, align 8
  %bf.clear412 = and i32 %bf.load411, 65535
  %cmp413 = icmp eq i32 %bf.clear412, 54
  br i1 %cmp413, label %land.lhs.true.415, label %if.end.506

land.lhs.true.415:                                ; preds = %sw.bb.410
  %183 = load i32, i32* %c, align 4
  %cmp416 = icmp eq i32 %183, 73
  br i1 %cmp416, label %cond.true.418, label %cond.false.429

cond.true.418:                                    ; preds = %land.lhs.true.415
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx420 to i64*
  %185 = load i64, i64* %rtwint, align 8
  %cmp421 = icmp sge i64 %185, 0
  br i1 %cmp421, label %land.lhs.true.423, label %if.end.506

land.lhs.true.423:                                ; preds = %cond.true.418
  %186 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld424, i32 0, i64 0
  %rtwint426 = bitcast %union.rtunion_def* %arrayidx425 to i64*
  %187 = load i64, i64* %rtwint426, align 8
  %cmp427 = icmp sle i64 %187, 31
  br i1 %cmp427, label %if.then.505, label %if.end.506

cond.false.429:                                   ; preds = %land.lhs.true.415
  %188 = load i32, i32* %c, align 4
  %cmp430 = icmp eq i32 %188, 74
  br i1 %cmp430, label %cond.true.432, label %cond.false.444

cond.true.432:                                    ; preds = %cond.false.429
  %189 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %189, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 0
  %rtwint435 = bitcast %union.rtunion_def* %arrayidx434 to i64*
  %190 = load i64, i64* %rtwint435, align 8
  %cmp436 = icmp sge i64 %190, 0
  br i1 %cmp436, label %land.lhs.true.438, label %if.end.506

land.lhs.true.438:                                ; preds = %cond.true.432
  %191 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld439 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld439, i32 0, i64 0
  %rtwint441 = bitcast %union.rtunion_def* %arrayidx440 to i64*
  %192 = load i64, i64* %rtwint441, align 8
  %cmp442 = icmp sle i64 %192, 63
  br i1 %cmp442, label %if.then.505, label %if.end.506

cond.false.444:                                   ; preds = %cond.false.429
  %193 = load i32, i32* %c, align 4
  %cmp445 = icmp eq i32 %193, 75
  br i1 %cmp445, label %cond.true.447, label %cond.false.459

cond.true.447:                                    ; preds = %cond.false.444
  %194 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld448, i32 0, i64 0
  %rtwint450 = bitcast %union.rtunion_def* %arrayidx449 to i64*
  %195 = load i64, i64* %rtwint450, align 8
  %cmp451 = icmp sge i64 %195, -128
  br i1 %cmp451, label %land.lhs.true.453, label %if.end.506

land.lhs.true.453:                                ; preds = %cond.true.447
  %196 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld454 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx455 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld454, i32 0, i64 0
  %rtwint456 = bitcast %union.rtunion_def* %arrayidx455 to i64*
  %197 = load i64, i64* %rtwint456, align 8
  %cmp457 = icmp sle i64 %197, 127
  br i1 %cmp457, label %if.then.505, label %if.end.506

cond.false.459:                                   ; preds = %cond.false.444
  %198 = load i32, i32* %c, align 4
  %cmp460 = icmp eq i32 %198, 76
  br i1 %cmp460, label %cond.true.462, label %cond.false.474

cond.true.462:                                    ; preds = %cond.false.459
  %199 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtwint465 = bitcast %union.rtunion_def* %arrayidx464 to i64*
  %200 = load i64, i64* %rtwint465, align 8
  %cmp466 = icmp eq i64 %200, 255
  br i1 %cmp466, label %if.then.505, label %lor.lhs.false.468

lor.lhs.false.468:                                ; preds = %cond.true.462
  %201 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld469 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx470 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld469, i32 0, i64 0
  %rtwint471 = bitcast %union.rtunion_def* %arrayidx470 to i64*
  %202 = load i64, i64* %rtwint471, align 8
  %cmp472 = icmp eq i64 %202, 65535
  br i1 %cmp472, label %if.then.505, label %if.end.506

cond.false.474:                                   ; preds = %cond.false.459
  %203 = load i32, i32* %c, align 4
  %cmp475 = icmp eq i32 %203, 77
  br i1 %cmp475, label %cond.true.477, label %cond.false.489

cond.true.477:                                    ; preds = %cond.false.474
  %204 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld478 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx479 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld478, i32 0, i64 0
  %rtwint480 = bitcast %union.rtunion_def* %arrayidx479 to i64*
  %205 = load i64, i64* %rtwint480, align 8
  %cmp481 = icmp sge i64 %205, 0
  br i1 %cmp481, label %land.lhs.true.483, label %if.end.506

land.lhs.true.483:                                ; preds = %cond.true.477
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld484 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx485 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld484, i32 0, i64 0
  %rtwint486 = bitcast %union.rtunion_def* %arrayidx485 to i64*
  %207 = load i64, i64* %rtwint486, align 8
  %cmp487 = icmp sle i64 %207, 3
  br i1 %cmp487, label %if.then.505, label %if.end.506

cond.false.489:                                   ; preds = %cond.false.474
  %208 = load i32, i32* %c, align 4
  %cmp490 = icmp eq i32 %208, 78
  br i1 %cmp490, label %cond.true.492, label %cond.false.504

cond.true.492:                                    ; preds = %cond.false.489
  %209 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld493, i32 0, i64 0
  %rtwint495 = bitcast %union.rtunion_def* %arrayidx494 to i64*
  %210 = load i64, i64* %rtwint495, align 8
  %cmp496 = icmp sge i64 %210, 0
  br i1 %cmp496, label %land.lhs.true.498, label %if.end.506

land.lhs.true.498:                                ; preds = %cond.true.492
  %211 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld499 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx500 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld499, i32 0, i64 0
  %rtwint501 = bitcast %union.rtunion_def* %arrayidx500 to i64*
  %212 = load i64, i64* %rtwint501, align 8
  %cmp502 = icmp sle i64 %212, 255
  br i1 %cmp502, label %if.then.505, label %if.end.506

cond.false.504:                                   ; preds = %cond.false.489
  br i1 false, label %if.then.505, label %if.end.506

if.then.505:                                      ; preds = %cond.false.504, %land.lhs.true.498, %land.lhs.true.483, %lor.lhs.false.468, %cond.true.462, %land.lhs.true.453, %land.lhs.true.438, %land.lhs.true.423
  store i32 1, i32* %win, align 4
  br label %if.end.506

if.end.506:                                       ; preds = %if.then.505, %cond.false.504, %land.lhs.true.498, %cond.true.492, %land.lhs.true.483, %cond.true.477, %lor.lhs.false.468, %land.lhs.true.453, %cond.true.447, %land.lhs.true.438, %cond.true.432, %land.lhs.true.423, %cond.true.418, %sw.bb.410
  br label %sw.epilog

sw.bb.507:                                        ; preds = %while.body
  %213 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load508 = load i32, i32* %214, align 8
  %bf.clear509 = and i32 %bf.load508, 65535
  %cmp510 = icmp eq i32 %bf.clear509, 66
  br i1 %cmp510, label %land.lhs.true.512, label %if.end.580

land.lhs.true.512:                                ; preds = %sw.bb.507
  %215 = load i32, i32* %strict.addr, align 4
  %cmp513 = icmp sgt i32 %215, 0
  br i1 %cmp513, label %land.lhs.true.515, label %lor.lhs.false.518

land.lhs.true.515:                                ; preds = %land.lhs.true.512
  %216 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call516 = call i32 @offsettable_memref_p(%struct.rtx_def* %216)
  %tobool517 = icmp ne i32 %call516, 0
  br i1 %tobool517, label %lor.lhs.false.518, label %if.then.579

lor.lhs.false.518:                                ; preds = %land.lhs.true.515, %land.lhs.true.512
  %217 = load i32, i32* %strict.addr, align 4
  %cmp519 = icmp slt i32 %217, 0
  br i1 %cmp519, label %land.lhs.true.521, label %lor.lhs.false.566

land.lhs.true.521:                                ; preds = %lor.lhs.false.518
  %218 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %219 = bitcast %struct.rtx_def* %218 to i32*
  %bf.load522 = load i32, i32* %219, align 8
  %bf.clear523 = and i32 %bf.load522, 65535
  %cmp524 = icmp eq i32 %bf.clear523, 67
  br i1 %cmp524, label %lor.lhs.false.566, label %lor.lhs.false.526

lor.lhs.false.526:                                ; preds = %land.lhs.true.521
  %220 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %bf.load527 = load i32, i32* %221, align 8
  %bf.clear528 = and i32 %bf.load527, 65535
  %cmp529 = icmp eq i32 %bf.clear528, 68
  br i1 %cmp529, label %lor.lhs.false.566, label %lor.lhs.false.531

lor.lhs.false.531:                                ; preds = %lor.lhs.false.526
  %222 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %bf.load532 = load i32, i32* %223, align 8
  %bf.clear533 = and i32 %bf.load532, 65535
  %cmp534 = icmp eq i32 %bf.clear533, 54
  br i1 %cmp534, label %lor.lhs.false.566, label %lor.lhs.false.536

lor.lhs.false.536:                                ; preds = %lor.lhs.false.531
  %224 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %225 = bitcast %struct.rtx_def* %224 to i32*
  %bf.load537 = load i32, i32* %225, align 8
  %bf.clear538 = and i32 %bf.load537, 65535
  %cmp539 = icmp eq i32 %bf.clear538, 55
  br i1 %cmp539, label %lor.lhs.false.566, label %lor.lhs.false.541

lor.lhs.false.541:                                ; preds = %lor.lhs.false.536
  %226 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load542 = load i32, i32* %227, align 8
  %bf.clear543 = and i32 %bf.load542, 65535
  %cmp544 = icmp eq i32 %bf.clear543, 58
  br i1 %cmp544, label %lor.lhs.false.566, label %lor.lhs.false.546

lor.lhs.false.546:                                ; preds = %lor.lhs.false.541
  %228 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load547 = load i32, i32* %229, align 8
  %bf.clear548 = and i32 %bf.load547, 65535
  %cmp549 = icmp eq i32 %bf.clear548, 134
  br i1 %cmp549, label %lor.lhs.false.566, label %lor.lhs.false.551

lor.lhs.false.551:                                ; preds = %lor.lhs.false.546
  %230 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %231 = bitcast %struct.rtx_def* %230 to i32*
  %bf.load552 = load i32, i32* %231, align 8
  %bf.clear553 = and i32 %bf.load552, 65535
  %cmp554 = icmp eq i32 %bf.clear553, 56
  br i1 %cmp554, label %lor.lhs.false.566, label %lor.lhs.false.556

lor.lhs.false.556:                                ; preds = %lor.lhs.false.551
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load557 = load i32, i32* %233, align 8
  %bf.clear558 = and i32 %bf.load557, 65535
  %cmp559 = icmp eq i32 %bf.clear558, 140
  br i1 %cmp559, label %lor.lhs.false.566, label %lor.lhs.false.561

lor.lhs.false.561:                                ; preds = %lor.lhs.false.556
  %234 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %235 = bitcast %struct.rtx_def* %234 to i32*
  %bf.load562 = load i32, i32* %235, align 8
  %bf.clear563 = and i32 %bf.load562, 65535
  %cmp564 = icmp eq i32 %bf.clear563, 66
  br i1 %cmp564, label %lor.lhs.false.566, label %if.then.579

lor.lhs.false.566:                                ; preds = %lor.lhs.false.561, %lor.lhs.false.556, %lor.lhs.false.551, %lor.lhs.false.546, %lor.lhs.false.541, %lor.lhs.false.536, %lor.lhs.false.531, %lor.lhs.false.526, %land.lhs.true.521, %lor.lhs.false.518
  %236 = load i32, i32* @reload_in_progress, align 4
  %tobool567 = icmp ne i32 %236, 0
  br i1 %tobool567, label %land.lhs.true.568, label %if.end.580

land.lhs.true.568:                                ; preds = %lor.lhs.false.566
  %237 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %238 = bitcast %struct.rtx_def* %237 to i32*
  %bf.load569 = load i32, i32* %238, align 8
  %bf.clear570 = and i32 %bf.load569, 65535
  %cmp571 = icmp eq i32 %bf.clear570, 61
  br i1 %cmp571, label %land.lhs.true.573, label %if.then.579

land.lhs.true.573:                                ; preds = %land.lhs.true.568
  %239 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld574 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %239, i32 0, i32 1
  %arrayidx575 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld574, i32 0, i64 0
  %rtuint576 = bitcast %union.rtunion_def* %arrayidx575 to i32*
  %240 = load i32, i32* %rtuint576, align 4
  %cmp577 = icmp uge i32 %240, 53
  br i1 %cmp577, label %if.end.580, label %if.then.579

if.then.579:                                      ; preds = %land.lhs.true.573, %land.lhs.true.568, %lor.lhs.false.561, %land.lhs.true.515
  store i32 1, i32* %win, align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.579, %land.lhs.true.573, %lor.lhs.false.566, %sw.bb.507
  br label %sw.epilog

sw.bb.581:                                        ; preds = %while.body
  %241 = load i32, i32* %strict.addr, align 4
  %cmp582 = icmp sgt i32 %241, 0
  br i1 %cmp582, label %land.lhs.true.584, label %lor.lhs.false.587

land.lhs.true.584:                                ; preds = %sw.bb.581
  %242 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call585 = call i32 @offsettable_memref_p(%struct.rtx_def* %242)
  %tobool586 = icmp ne i32 %call585, 0
  br i1 %tobool586, label %if.then.654, label %lor.lhs.false.587

lor.lhs.false.587:                                ; preds = %land.lhs.true.584, %sw.bb.581
  %243 = load i32, i32* %strict.addr, align 4
  %cmp588 = icmp eq i32 %243, 0
  br i1 %cmp588, label %land.lhs.true.590, label %lor.lhs.false.593

land.lhs.true.590:                                ; preds = %lor.lhs.false.587
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call591 = call i32 @offsettable_nonstrict_memref_p(%struct.rtx_def* %244)
  %tobool592 = icmp ne i32 %call591, 0
  br i1 %tobool592, label %if.then.654, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %land.lhs.true.590, %lor.lhs.false.587
  %245 = load i32, i32* %strict.addr, align 4
  %cmp594 = icmp slt i32 %245, 0
  br i1 %cmp594, label %land.lhs.true.596, label %lor.lhs.false.641

land.lhs.true.596:                                ; preds = %lor.lhs.false.593
  %246 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load597 = load i32, i32* %247, align 8
  %bf.clear598 = and i32 %bf.load597, 65535
  %cmp599 = icmp eq i32 %bf.clear598, 67
  br i1 %cmp599, label %if.then.654, label %lor.lhs.false.601

lor.lhs.false.601:                                ; preds = %land.lhs.true.596
  %248 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %249 = bitcast %struct.rtx_def* %248 to i32*
  %bf.load602 = load i32, i32* %249, align 8
  %bf.clear603 = and i32 %bf.load602, 65535
  %cmp604 = icmp eq i32 %bf.clear603, 68
  br i1 %cmp604, label %if.then.654, label %lor.lhs.false.606

lor.lhs.false.606:                                ; preds = %lor.lhs.false.601
  %250 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %251 = bitcast %struct.rtx_def* %250 to i32*
  %bf.load607 = load i32, i32* %251, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp eq i32 %bf.clear608, 54
  br i1 %cmp609, label %if.then.654, label %lor.lhs.false.611

lor.lhs.false.611:                                ; preds = %lor.lhs.false.606
  %252 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %253 = bitcast %struct.rtx_def* %252 to i32*
  %bf.load612 = load i32, i32* %253, align 8
  %bf.clear613 = and i32 %bf.load612, 65535
  %cmp614 = icmp eq i32 %bf.clear613, 55
  br i1 %cmp614, label %if.then.654, label %lor.lhs.false.616

lor.lhs.false.616:                                ; preds = %lor.lhs.false.611
  %254 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load617 = load i32, i32* %255, align 8
  %bf.clear618 = and i32 %bf.load617, 65535
  %cmp619 = icmp eq i32 %bf.clear618, 58
  br i1 %cmp619, label %if.then.654, label %lor.lhs.false.621

lor.lhs.false.621:                                ; preds = %lor.lhs.false.616
  %256 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %257 = bitcast %struct.rtx_def* %256 to i32*
  %bf.load622 = load i32, i32* %257, align 8
  %bf.clear623 = and i32 %bf.load622, 65535
  %cmp624 = icmp eq i32 %bf.clear623, 134
  br i1 %cmp624, label %if.then.654, label %lor.lhs.false.626

lor.lhs.false.626:                                ; preds = %lor.lhs.false.621
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load627 = load i32, i32* %259, align 8
  %bf.clear628 = and i32 %bf.load627, 65535
  %cmp629 = icmp eq i32 %bf.clear628, 56
  br i1 %cmp629, label %if.then.654, label %lor.lhs.false.631

lor.lhs.false.631:                                ; preds = %lor.lhs.false.626
  %260 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %261 = bitcast %struct.rtx_def* %260 to i32*
  %bf.load632 = load i32, i32* %261, align 8
  %bf.clear633 = and i32 %bf.load632, 65535
  %cmp634 = icmp eq i32 %bf.clear633, 140
  br i1 %cmp634, label %if.then.654, label %lor.lhs.false.636

lor.lhs.false.636:                                ; preds = %lor.lhs.false.631
  %262 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load637 = load i32, i32* %263, align 8
  %bf.clear638 = and i32 %bf.load637, 65535
  %cmp639 = icmp eq i32 %bf.clear638, 66
  br i1 %cmp639, label %if.then.654, label %lor.lhs.false.641

lor.lhs.false.641:                                ; preds = %lor.lhs.false.636, %lor.lhs.false.593
  %264 = load i32, i32* @reload_in_progress, align 4
  %tobool642 = icmp ne i32 %264, 0
  br i1 %tobool642, label %land.lhs.true.643, label %if.end.655

land.lhs.true.643:                                ; preds = %lor.lhs.false.641
  %265 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %266 = bitcast %struct.rtx_def* %265 to i32*
  %bf.load644 = load i32, i32* %266, align 8
  %bf.clear645 = and i32 %bf.load644, 65535
  %cmp646 = icmp eq i32 %bf.clear645, 61
  br i1 %cmp646, label %land.lhs.true.648, label %if.end.655

land.lhs.true.648:                                ; preds = %land.lhs.true.643
  %267 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld649 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx650 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld649, i32 0, i64 0
  %rtuint651 = bitcast %union.rtunion_def* %arrayidx650 to i32*
  %268 = load i32, i32* %rtuint651, align 4
  %cmp652 = icmp uge i32 %268, 53
  br i1 %cmp652, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %land.lhs.true.648, %lor.lhs.false.636, %lor.lhs.false.631, %lor.lhs.false.626, %lor.lhs.false.621, %lor.lhs.false.616, %lor.lhs.false.611, %lor.lhs.false.606, %lor.lhs.false.601, %land.lhs.true.596, %land.lhs.true.590, %land.lhs.true.584
  store i32 1, i32* %win, align 4
  br label %if.end.655

if.end.655:                                       ; preds = %if.then.654, %land.lhs.true.648, %land.lhs.true.643, %lor.lhs.false.641
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %269 = load i32, i32* %c, align 4
  %cmp656 = icmp eq i32 %269, 114
  br i1 %cmp656, label %cond.true.658, label %cond.false.659

cond.true.658:                                    ; preds = %sw.default
  br label %cond.end.790

cond.false.659:                                   ; preds = %sw.default
  %270 = load i32, i32* %c, align 4
  %cmp660 = icmp eq i32 %270, 114
  br i1 %cmp660, label %cond.true.662, label %cond.false.663

cond.true.662:                                    ; preds = %cond.false.659
  br label %cond.end.788

cond.false.663:                                   ; preds = %cond.false.659
  %271 = load i32, i32* %c, align 4
  %cmp664 = icmp eq i32 %271, 82
  br i1 %cmp664, label %cond.true.666, label %cond.false.667

cond.true.666:                                    ; preds = %cond.false.663
  br label %cond.end.786

cond.false.667:                                   ; preds = %cond.false.663
  %272 = load i32, i32* %c, align 4
  %cmp668 = icmp eq i32 %272, 113
  br i1 %cmp668, label %cond.true.670, label %cond.false.672

cond.true.670:                                    ; preds = %cond.false.667
  %273 = load i32, i32* @target_flags, align 4
  %and = and i32 %273, 33554432
  %tobool671 = icmp ne i32 %and, 0
  %cond = select i1 %tobool671, i32 12, i32 8
  br label %cond.end.784

cond.false.672:                                   ; preds = %cond.false.667
  %274 = load i32, i32* %c, align 4
  %cmp673 = icmp eq i32 %274, 81
  br i1 %cmp673, label %cond.true.675, label %cond.false.676

cond.true.675:                                    ; preds = %cond.false.672
  br label %cond.end.782

cond.false.676:                                   ; preds = %cond.false.672
  %275 = load i32, i32* %c, align 4
  %cmp677 = icmp eq i32 %275, 102
  br i1 %cmp677, label %cond.true.679, label %cond.false.685

cond.true.679:                                    ; preds = %cond.false.676
  %276 = load i32, i32* @target_flags, align 4
  %and680 = and i32 %276, 1
  %tobool681 = icmp ne i32 %and680, 0
  br i1 %tobool681, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.679
  %277 = load i32, i32* @target_flags, align 4
  %and682 = and i32 %277, 32
  %tobool683 = icmp ne i32 %and682, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.679
  %278 = phi i1 [ true, %cond.true.679 ], [ %tobool683, %lor.rhs ]
  %cond684 = select i1 %278, i32 15, i32 0
  br label %cond.end.780

cond.false.685:                                   ; preds = %cond.false.676
  %279 = load i32, i32* %c, align 4
  %cmp686 = icmp eq i32 %279, 116
  br i1 %cmp686, label %cond.true.688, label %cond.false.696

cond.true.688:                                    ; preds = %cond.false.685
  %280 = load i32, i32* @target_flags, align 4
  %and689 = and i32 %280, 1
  %tobool690 = icmp ne i32 %and689, 0
  br i1 %tobool690, label %lor.end.694, label %lor.rhs.691

lor.rhs.691:                                      ; preds = %cond.true.688
  %281 = load i32, i32* @target_flags, align 4
  %and692 = and i32 %281, 32
  %tobool693 = icmp ne i32 %and692, 0
  br label %lor.end.694

lor.end.694:                                      ; preds = %lor.rhs.691, %cond.true.688
  %282 = phi i1 [ true, %cond.true.688 ], [ %tobool693, %lor.rhs.691 ]
  %cond695 = select i1 %282, i32 13, i32 0
  br label %cond.end.778

cond.false.696:                                   ; preds = %cond.false.685
  %283 = load i32, i32* %c, align 4
  %cmp697 = icmp eq i32 %283, 117
  br i1 %cmp697, label %cond.true.699, label %cond.false.707

cond.true.699:                                    ; preds = %cond.false.696
  %284 = load i32, i32* @target_flags, align 4
  %and700 = and i32 %284, 1
  %tobool701 = icmp ne i32 %and700, 0
  br i1 %tobool701, label %lor.end.705, label %lor.rhs.702

lor.rhs.702:                                      ; preds = %cond.true.699
  %285 = load i32, i32* @target_flags, align 4
  %and703 = and i32 %285, 32
  %tobool704 = icmp ne i32 %and703, 0
  br label %lor.end.705

lor.end.705:                                      ; preds = %lor.rhs.702, %cond.true.699
  %286 = phi i1 [ true, %cond.true.699 ], [ %tobool704, %lor.rhs.702 ]
  %cond706 = select i1 %286, i32 14, i32 0
  br label %cond.end.776

cond.false.707:                                   ; preds = %cond.false.696
  %287 = load i32, i32* %c, align 4
  %cmp708 = icmp eq i32 %287, 97
  br i1 %cmp708, label %cond.true.710, label %cond.false.711

cond.true.710:                                    ; preds = %cond.false.707
  br label %cond.end.774

cond.false.711:                                   ; preds = %cond.false.707
  %288 = load i32, i32* %c, align 4
  %cmp712 = icmp eq i32 %288, 98
  br i1 %cmp712, label %cond.true.714, label %cond.false.715

cond.true.714:                                    ; preds = %cond.false.711
  br label %cond.end.772

cond.false.715:                                   ; preds = %cond.false.711
  %289 = load i32, i32* %c, align 4
  %cmp716 = icmp eq i32 %289, 99
  br i1 %cmp716, label %cond.true.718, label %cond.false.719

cond.true.718:                                    ; preds = %cond.false.715
  br label %cond.end.770

cond.false.719:                                   ; preds = %cond.false.715
  %290 = load i32, i32* %c, align 4
  %cmp720 = icmp eq i32 %290, 100
  br i1 %cmp720, label %cond.true.722, label %cond.false.723

cond.true.722:                                    ; preds = %cond.false.719
  br label %cond.end.768

cond.false.723:                                   ; preds = %cond.false.719
  %291 = load i32, i32* %c, align 4
  %cmp724 = icmp eq i32 %291, 120
  br i1 %cmp724, label %cond.true.726, label %cond.false.731

cond.true.726:                                    ; preds = %cond.false.723
  %292 = load i32, i32* @target_flags, align 4
  %and727 = and i32 %292, 327680
  %cmp728 = icmp ne i32 %and727, 0
  %cond730 = select i1 %cmp728, i32 16, i32 0
  br label %cond.end.766

cond.false.731:                                   ; preds = %cond.false.723
  %293 = load i32, i32* %c, align 4
  %cmp732 = icmp eq i32 %293, 89
  br i1 %cmp732, label %cond.true.734, label %cond.false.739

cond.true.734:                                    ; preds = %cond.false.731
  %294 = load i32, i32* @target_flags, align 4
  %and735 = and i32 %294, 262144
  %cmp736 = icmp ne i32 %and735, 0
  %cond738 = select i1 %cmp736, i32 16, i32 0
  br label %cond.end.764

cond.false.739:                                   ; preds = %cond.false.731
  %295 = load i32, i32* %c, align 4
  %cmp740 = icmp eq i32 %295, 121
  br i1 %cmp740, label %cond.true.742, label %cond.false.747

cond.true.742:                                    ; preds = %cond.false.739
  %296 = load i32, i32* @target_flags, align 4
  %and743 = and i32 %296, 16384
  %cmp744 = icmp ne i32 %and743, 0
  %cond746 = select i1 %cmp744, i32 17, i32 0
  br label %cond.end.762

cond.false.747:                                   ; preds = %cond.false.739
  %297 = load i32, i32* %c, align 4
  %cmp748 = icmp eq i32 %297, 65
  br i1 %cmp748, label %cond.true.750, label %cond.false.751

cond.true.750:                                    ; preds = %cond.false.747
  br label %cond.end.760

cond.false.751:                                   ; preds = %cond.false.747
  %298 = load i32, i32* %c, align 4
  %cmp752 = icmp eq i32 %298, 68
  br i1 %cmp752, label %cond.true.754, label %cond.false.755

cond.true.754:                                    ; preds = %cond.false.751
  br label %cond.end

cond.false.755:                                   ; preds = %cond.false.751
  %299 = load i32, i32* %c, align 4
  %cmp756 = icmp eq i32 %299, 83
  %cond758 = select i1 %cmp756, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.755, %cond.true.754
  %cond759 = phi i32 [ 6, %cond.true.754 ], [ %cond758, %cond.false.755 ]
  br label %cond.end.760

cond.end.760:                                     ; preds = %cond.end, %cond.true.750
  %cond761 = phi i32 [ 7, %cond.true.750 ], [ %cond759, %cond.end ]
  br label %cond.end.762

cond.end.762:                                     ; preds = %cond.end.760, %cond.true.742
  %cond763 = phi i32 [ %cond746, %cond.true.742 ], [ %cond761, %cond.end.760 ]
  br label %cond.end.764

cond.end.764:                                     ; preds = %cond.end.762, %cond.true.734
  %cond765 = phi i32 [ %cond738, %cond.true.734 ], [ %cond763, %cond.end.762 ]
  br label %cond.end.766

cond.end.766:                                     ; preds = %cond.end.764, %cond.true.726
  %cond767 = phi i32 [ %cond730, %cond.true.726 ], [ %cond765, %cond.end.764 ]
  br label %cond.end.768

cond.end.768:                                     ; preds = %cond.end.766, %cond.true.722
  %cond769 = phi i32 [ 2, %cond.true.722 ], [ %cond767, %cond.end.766 ]
  br label %cond.end.770

cond.end.770:                                     ; preds = %cond.end.768, %cond.true.718
  %cond771 = phi i32 [ 3, %cond.true.718 ], [ %cond769, %cond.end.768 ]
  br label %cond.end.772

cond.end.772:                                     ; preds = %cond.end.770, %cond.true.714
  %cond773 = phi i32 [ 4, %cond.true.714 ], [ %cond771, %cond.end.770 ]
  br label %cond.end.774

cond.end.774:                                     ; preds = %cond.end.772, %cond.true.710
  %cond775 = phi i32 [ 1, %cond.true.710 ], [ %cond773, %cond.end.772 ]
  br label %cond.end.776

cond.end.776:                                     ; preds = %cond.end.774, %lor.end.705
  %cond777 = phi i32 [ %cond706, %lor.end.705 ], [ %cond775, %cond.end.774 ]
  br label %cond.end.778

cond.end.778:                                     ; preds = %cond.end.776, %lor.end.694
  %cond779 = phi i32 [ %cond695, %lor.end.694 ], [ %cond777, %cond.end.776 ]
  br label %cond.end.780

cond.end.780:                                     ; preds = %cond.end.778, %lor.end
  %cond781 = phi i32 [ %cond684, %lor.end ], [ %cond779, %cond.end.778 ]
  br label %cond.end.782

cond.end.782:                                     ; preds = %cond.end.780, %cond.true.675
  %cond783 = phi i32 [ 8, %cond.true.675 ], [ %cond781, %cond.end.780 ]
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.end.782, %cond.true.670
  %cond785 = phi i32 [ %cond, %cond.true.670 ], [ %cond783, %cond.end.782 ]
  br label %cond.end.786

cond.end.786:                                     ; preds = %cond.end.784, %cond.true.666
  %cond787 = phi i32 [ 11, %cond.true.666 ], [ %cond785, %cond.end.784 ]
  br label %cond.end.788

cond.end.788:                                     ; preds = %cond.end.786, %cond.true.662
  %cond789 = phi i32 [ 12, %cond.true.662 ], [ %cond787, %cond.end.786 ]
  br label %cond.end.790

cond.end.790:                                     ; preds = %cond.end.788, %cond.true.658
  %cond791 = phi i32 [ 12, %cond.true.658 ], [ %cond789, %cond.end.788 ]
  store i32 %cond791, i32* %class, align 4
  %300 = load i32, i32* %class, align 4
  %cmp792 = icmp ne i32 %300, 0
  br i1 %cmp792, label %if.then.794, label %if.else.829

if.then.794:                                      ; preds = %cond.end.790
  %301 = load i32, i32* %strict.addr, align 4
  %cmp795 = icmp slt i32 %301, 0
  br i1 %cmp795, label %if.then.827, label %lor.lhs.false.797

lor.lhs.false.797:                                ; preds = %if.then.794
  %302 = load i32, i32* %strict.addr, align 4
  %cmp798 = icmp eq i32 %302, 0
  br i1 %cmp798, label %land.lhs.true.800, label %lor.lhs.false.811

land.lhs.true.800:                                ; preds = %lor.lhs.false.797
  %303 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load801 = load i32, i32* %304, align 8
  %bf.clear802 = and i32 %bf.load801, 65535
  %cmp803 = icmp eq i32 %bf.clear802, 61
  br i1 %cmp803, label %land.lhs.true.805, label %lor.lhs.false.811

land.lhs.true.805:                                ; preds = %land.lhs.true.800
  %305 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld806 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %305, i32 0, i32 1
  %arrayidx807 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld806, i32 0, i64 0
  %rtuint808 = bitcast %union.rtunion_def* %arrayidx807 to i32*
  %306 = load i32, i32* %rtuint808, align 4
  %cmp809 = icmp uge i32 %306, 53
  br i1 %cmp809, label %if.then.827, label %lor.lhs.false.811

lor.lhs.false.811:                                ; preds = %land.lhs.true.805, %land.lhs.true.800, %lor.lhs.false.797
  %307 = load i32, i32* %strict.addr, align 4
  %cmp812 = icmp eq i32 %307, 0
  br i1 %cmp812, label %land.lhs.true.814, label %lor.lhs.false.819

land.lhs.true.814:                                ; preds = %lor.lhs.false.811
  %308 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %309 = bitcast %struct.rtx_def* %308 to i32*
  %bf.load815 = load i32, i32* %309, align 8
  %bf.clear816 = and i32 %bf.load815, 65535
  %cmp817 = icmp eq i32 %bf.clear816, 62
  br i1 %cmp817, label %if.then.827, label %lor.lhs.false.819

lor.lhs.false.819:                                ; preds = %land.lhs.true.814, %lor.lhs.false.811
  %310 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %311 = bitcast %struct.rtx_def* %310 to i32*
  %bf.load820 = load i32, i32* %311, align 8
  %bf.clear821 = and i32 %bf.load820, 65535
  %cmp822 = icmp eq i32 %bf.clear821, 61
  br i1 %cmp822, label %land.lhs.true.824, label %if.end.828

land.lhs.true.824:                                ; preds = %lor.lhs.false.819
  %312 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %313 = load i32, i32* %class, align 4
  %314 = load i32, i32* %offset, align 4
  %315 = load i32, i32* %mode, align 4
  %call825 = call i32 @reg_fits_class_p(%struct.rtx_def* %312, i32 %313, i32 %314, i32 %315)
  %tobool826 = icmp ne i32 %call825, 0
  br i1 %tobool826, label %if.then.827, label %if.end.828

if.then.827:                                      ; preds = %land.lhs.true.824, %land.lhs.true.814, %land.lhs.true.805, %if.then.794
  store i32 1, i32* %win, align 4
  br label %if.end.828

if.end.828:                                       ; preds = %if.then.827, %land.lhs.true.824, %lor.lhs.false.819
  br label %if.end.844

if.else.829:                                      ; preds = %cond.end.790
  %316 = load i32, i32* %c, align 4
  %cmp830 = icmp eq i32 %316, 101
  br i1 %cmp830, label %cond.true.832, label %cond.false.835

cond.true.832:                                    ; preds = %if.else.829
  %317 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call833 = call i32 @x86_64_sign_extended_value(%struct.rtx_def* %317)
  %tobool834 = icmp ne i32 %call833, 0
  br i1 %tobool834, label %if.then.842, label %if.end.843

cond.false.835:                                   ; preds = %if.else.829
  %318 = load i32, i32* %c, align 4
  %cmp836 = icmp eq i32 %318, 90
  br i1 %cmp836, label %cond.true.838, label %cond.false.841

cond.true.838:                                    ; preds = %cond.false.835
  %319 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call839 = call i32 @x86_64_zero_extended_value(%struct.rtx_def* %319)
  %tobool840 = icmp ne i32 %call839, 0
  br i1 %tobool840, label %if.then.842, label %if.end.843

cond.false.841:                                   ; preds = %cond.false.835
  br i1 false, label %if.then.842, label %if.end.843

if.then.842:                                      ; preds = %cond.false.841, %cond.true.838, %cond.true.832
  store i32 1, i32* %win, align 4
  br label %if.end.843

if.end.843:                                       ; preds = %if.then.842, %cond.false.841, %cond.true.838, %cond.true.832
  br label %if.end.844

if.end.844:                                       ; preds = %if.end.843, %if.end.828
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.844, %if.end.655, %if.end.580, %if.end.506, %if.end.409, %if.end.391, %if.then.348, %if.end.331, %if.end.313, %if.end.306, %if.end.299, %if.end.276, %if.end.253, %sw.bb.190, %if.end.189, %if.end.168, %if.end.158, %sw.bb.100, %while.end, %sw.bb
  br label %while.cond

while.end.845:                                    ; preds = %land.end
  %320 = load i8*, i8** %p, align 8
  %321 = load i32, i32* %opno, align 4
  %idxprom846 = sext i32 %321 to i64
  %arrayidx847 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom846
  store i8* %320, i8** %arrayidx847, align 8
  %322 = load i32, i32* %win, align 4
  %tobool848 = icmp ne i32 %322, 0
  br i1 %tobool848, label %if.end.850, label %if.then.849

if.then.849:                                      ; preds = %while.end.845
  store i32 1, i32* %lose, align 4
  br label %if.end.850

if.end.850:                                       ; preds = %if.then.849, %while.end.845
  br label %for.inc.851

for.inc.851:                                      ; preds = %if.end.850
  %323 = load i32, i32* %opno, align 4
  %inc852 = add nsw i32 %323, 1
  store i32 %inc852, i32* %opno, align 4
  br label %for.cond.12

for.end.853:                                      ; preds = %for.cond.12
  %324 = load i32, i32* %lose, align 4
  %tobool854 = icmp ne i32 %324, 0
  br i1 %tobool854, label %if.end.948, label %if.then.855

if.then.855:                                      ; preds = %for.end.853
  %325 = load i32, i32* %strict.addr, align 4
  %cmp857 = icmp sgt i32 %325, 0
  br i1 %cmp857, label %if.then.859, label %if.end.929

if.then.859:                                      ; preds = %if.then.855
  store i32 0, i32* %eopno, align 4
  br label %for.cond.860

for.cond.860:                                     ; preds = %for.inc.926, %if.then.859
  %326 = load i32, i32* %eopno, align 4
  %327 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv861 = sext i8 %327 to i32
  %cmp862 = icmp slt i32 %326, %conv861
  br i1 %cmp862, label %for.body.864, label %for.end.928

for.body.864:                                     ; preds = %for.cond.860
  %328 = load i32, i32* %eopno, align 4
  %idxprom865 = sext i32 %328 to i64
  %arrayidx866 = getelementptr inbounds [30 x i32], [30 x i32]* %earlyclobber, i32 0, i64 %idxprom865
  %329 = load i32, i32* %arrayidx866, align 4
  %tobool867 = icmp ne i32 %329, 0
  br i1 %tobool867, label %land.lhs.true.868, label %if.end.925

land.lhs.true.868:                                ; preds = %for.body.864
  %330 = load i32, i32* %eopno, align 4
  %idxprom869 = sext i32 %330 to i64
  %arrayidx870 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom869
  %331 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx870, align 8
  %332 = bitcast %struct.rtx_def* %331 to i32*
  %bf.load871 = load i32, i32* %332, align 8
  %bf.clear872 = and i32 %bf.load871, 65535
  %cmp873 = icmp eq i32 %bf.clear872, 61
  br i1 %cmp873, label %if.then.875, label %if.end.925

if.then.875:                                      ; preds = %land.lhs.true.868
  store i32 0, i32* %opno856, align 4
  br label %for.cond.876

for.cond.876:                                     ; preds = %for.inc.922, %if.then.875
  %333 = load i32, i32* %opno856, align 4
  %334 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv877 = sext i8 %334 to i32
  %cmp878 = icmp slt i32 %333, %conv877
  br i1 %cmp878, label %for.body.880, label %for.end.924

for.body.880:                                     ; preds = %for.cond.876
  %335 = load i32, i32* %opno856, align 4
  %idxprom881 = sext i32 %335 to i64
  %arrayidx882 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom881
  %336 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx882, align 8
  %337 = bitcast %struct.rtx_def* %336 to i32*
  %bf.load883 = load i32, i32* %337, align 8
  %bf.clear884 = and i32 %bf.load883, 65535
  %cmp885 = icmp eq i32 %bf.clear884, 66
  br i1 %cmp885, label %land.lhs.true.892, label %lor.lhs.false.887

lor.lhs.false.887:                                ; preds = %for.body.880
  %338 = load i32, i32* %opno856, align 4
  %idxprom888 = sext i32 %338 to i64
  %arrayidx889 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom888
  %339 = load i32, i32* %arrayidx889, align 4
  %cmp890 = icmp ne i32 %339, 1
  br i1 %cmp890, label %land.lhs.true.892, label %if.end.921

land.lhs.true.892:                                ; preds = %lor.lhs.false.887, %for.body.880
  %340 = load i32, i32* %opno856, align 4
  %341 = load i32, i32* %eopno, align 4
  %cmp893 = icmp ne i32 %340, %341
  br i1 %cmp893, label %land.lhs.true.895, label %if.end.921

land.lhs.true.895:                                ; preds = %land.lhs.true.892
  %342 = load i32, i32* %opno856, align 4
  %idxprom896 = sext i32 %342 to i64
  %arrayidx897 = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom896
  %343 = load i8*, i8** %arrayidx897, align 8
  %344 = load i8, i8* %343, align 1
  %conv898 = sext i8 %344 to i32
  %cmp899 = icmp ne i32 %conv898, 0
  br i1 %cmp899, label %land.lhs.true.901, label %if.end.921

land.lhs.true.901:                                ; preds = %land.lhs.true.895
  %345 = load i32, i32* %opno856, align 4
  %idxprom902 = sext i32 %345 to i64
  %arrayidx903 = getelementptr inbounds [30 x i32], [30 x i32]* %matching_operands, i32 0, i64 %idxprom902
  %346 = load i32, i32* %arrayidx903, align 4
  %347 = load i32, i32* %eopno, align 4
  %cmp904 = icmp eq i32 %346, %347
  br i1 %cmp904, label %land.lhs.true.906, label %land.lhs.true.913

land.lhs.true.906:                                ; preds = %land.lhs.true.901
  %348 = load i32, i32* %opno856, align 4
  %idxprom907 = sext i32 %348 to i64
  %arrayidx908 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom907
  %349 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx908, align 8
  %350 = load i32, i32* %eopno, align 4
  %idxprom909 = sext i32 %350 to i64
  %arrayidx910 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom909
  %351 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx910, align 8
  %call911 = call i32 @operands_match_p(%struct.rtx_def* %349, %struct.rtx_def* %351)
  %tobool912 = icmp ne i32 %call911, 0
  br i1 %tobool912, label %if.end.921, label %land.lhs.true.913

land.lhs.true.913:                                ; preds = %land.lhs.true.906, %land.lhs.true.901
  %352 = load i32, i32* %opno856, align 4
  %idxprom914 = sext i32 %352 to i64
  %arrayidx915 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom914
  %353 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx915, align 8
  %354 = load i32, i32* %eopno, align 4
  %idxprom916 = sext i32 %354 to i64
  %arrayidx917 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom916
  %355 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx917, align 8
  %call918 = call i32 @safe_from_earlyclobber(%struct.rtx_def* %353, %struct.rtx_def* %355)
  %tobool919 = icmp ne i32 %call918, 0
  br i1 %tobool919, label %if.end.921, label %if.then.920

if.then.920:                                      ; preds = %land.lhs.true.913
  store i32 1, i32* %lose, align 4
  br label %if.end.921

if.end.921:                                       ; preds = %if.then.920, %land.lhs.true.913, %land.lhs.true.906, %land.lhs.true.895, %land.lhs.true.892, %lor.lhs.false.887
  br label %for.inc.922

for.inc.922:                                      ; preds = %if.end.921
  %356 = load i32, i32* %opno856, align 4
  %inc923 = add nsw i32 %356, 1
  store i32 %inc923, i32* %opno856, align 4
  br label %for.cond.876

for.end.924:                                      ; preds = %for.cond.876
  br label %if.end.925

if.end.925:                                       ; preds = %for.end.924, %land.lhs.true.868, %for.body.864
  br label %for.inc.926

for.inc.926:                                      ; preds = %if.end.925
  %357 = load i32, i32* %eopno, align 4
  %inc927 = add nsw i32 %357, 1
  store i32 %inc927, i32* %eopno, align 4
  br label %for.cond.860

for.end.928:                                      ; preds = %for.cond.860
  br label %if.end.929

if.end.929:                                       ; preds = %for.end.928, %if.then.855
  %358 = load i32, i32* %lose, align 4
  %tobool930 = icmp ne i32 %358, 0
  br i1 %tobool930, label %if.end.947, label %if.then.931

if.then.931:                                      ; preds = %if.end.929
  br label %while.cond.932

while.cond.932:                                   ; preds = %while.body.935, %if.then.931
  %359 = load i32, i32* %funny_match_index, align 4
  %dec = add nsw i32 %359, -1
  store i32 %dec, i32* %funny_match_index, align 4
  %cmp933 = icmp sge i32 %dec, 0
  br i1 %cmp933, label %while.body.935, label %while.end.946

while.body.935:                                   ; preds = %while.cond.932
  %360 = load i32, i32* %funny_match_index, align 4
  %idxprom936 = sext i32 %360 to i64
  %arrayidx937 = getelementptr inbounds [30 x %struct.funny_match], [30 x %struct.funny_match]* %funny_match, i32 0, i64 %idxprom936
  %this938 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %arrayidx937, i32 0, i32 0
  %361 = load i32, i32* %this938, align 4
  %idxprom939 = sext i32 %361 to i64
  %arrayidx940 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom939
  %362 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx940, align 8
  %363 = load i32, i32* %funny_match_index, align 4
  %idxprom941 = sext i32 %363 to i64
  %arrayidx942 = getelementptr inbounds [30 x %struct.funny_match], [30 x %struct.funny_match]* %funny_match, i32 0, i64 %idxprom941
  %other943 = getelementptr inbounds %struct.funny_match, %struct.funny_match* %arrayidx942, i32 0, i32 1
  %364 = load i32, i32* %other943, align 4
  %idxprom944 = sext i32 %364 to i64
  %arrayidx945 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom944
  store %struct.rtx_def* %362, %struct.rtx_def** %arrayidx945, align 8
  br label %while.cond.932

while.end.946:                                    ; preds = %while.cond.932
  store i32 1, i32* %retval
  br label %return

if.end.947:                                       ; preds = %if.end.929
  br label %if.end.948

if.end.948:                                       ; preds = %if.end.947, %for.end.853
  %365 = load i32, i32* @which_alternative, align 4
  %inc949 = add nsw i32 %365, 1
  store i32 %inc949, i32* @which_alternative, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.948
  %366 = load i32, i32* @which_alternative, align 4
  %367 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv950 = sext i8 %367 to i32
  %cmp951 = icmp slt i32 %366, %conv950
  br i1 %cmp951, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 -1, i32* @which_alternative, align 4
  %368 = load i32, i32* %strict.addr, align 4
  %cmp953 = icmp eq i32 %368, 0
  br i1 %cmp953, label %if.then.955, label %if.else.957

if.then.955:                                      ; preds = %do.end
  %call956 = call i32 @constrain_operands(i32 -1)
  store i32 %call956, i32* %retval
  br label %return

if.else.957:                                      ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.957, %if.then.955, %while.end.946, %if.then
  %369 = load i32, i32* %retval
  ret i32 %369
}

; Function Attrs: nounwind uwtable
define i32 @asm_noperands(%struct.rtx_def* %body) #0 {
entry:
  %retval = alloca i32, align 4
  %body.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %n_sets = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  %i126 = alloca i32, align 4
  store %struct.rtx_def* %body, %struct.rtx_def** %body.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 41, label %sw.bb
    i32 47, label %sw.bb.1
    i32 39, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i32 0, i32 0
  %4 = load i32, i32* %num_elem, align 4
  store i32 %4, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp = icmp eq i32 %bf.clear5, 41
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 1
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtvec11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtvec_def**
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec11, align 8
  %num_elem12 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 0
  %11 = load i32, i32* %num_elem12, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %retval
  br label %return

if.else:                                          ; preds = %sw.bb.1
  store i32 -1, i32* %retval
  br label %return

sw.bb.13:                                         ; preds = %entry
  %12 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtvec16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtvec_def**
  %13 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec16, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %13, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx17, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 47
  br i1 %cmp20, label %land.lhs.true, label %if.else.116

land.lhs.true:                                    ; preds = %sw.bb.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtvec23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec23, align 8
  %elem24 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem24, i32 0, i64 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load29 = load i32, i32* %20, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 41
  br i1 %cmp31, label %if.then.32, label %if.else.116

if.then.32:                                       ; preds = %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %num_elem36 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem36, align 4
  store i32 %23, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.32
  %24 = load i32, i32* %i, align 4
  %cmp37 = icmp sgt i32 %24, 0
  br i1 %cmp37, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %25, 1
  %idxprom = sext i32 %sub to i64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %elem41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem41, i32 0, i64 %idxprom
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load43 = load i32, i32* %29, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 47
  br i1 %cmp45, label %if.then.46, label %if.end

if.then.46:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %sub47 = sub nsw i32 %30, 1
  %idxprom48 = sext i32 %sub47 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtvec51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec51, align 8
  %elem52 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem52, i32 0, i64 %idxprom48
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx53, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load54 = load i32, i32* %34, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp ne i32 %bf.clear55, 49
  br i1 %cmp56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.58:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %35 = load i32, i32* %i, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.46, %for.cond
  %36 = load i32, i32* %i, align 4
  store i32 %36, i32* %n_sets, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.101, %for.end
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %n_sets, align 4
  %cmp60 = icmp slt i32 %37, %38
  br i1 %cmp60, label %for.body.61, label %for.end.102

for.body.61:                                      ; preds = %for.cond.59
  %39 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %39 to i64
  %40 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtvec65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec65, align 8
  %elem66 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem66, i32 0, i64 %idxprom62
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx67, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %elt, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load68 = load i32, i32* %44, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp ne i32 %bf.clear69, 47
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %for.body.61
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %for.body.61
  %45 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 1
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load76 = load i32, i32* %47, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp ne i32 %bf.clear77, 41
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.end.72
  store i32 -1, i32* %retval
  br label %return

if.end.80:                                        ; preds = %if.end.72
  %48 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 1
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 3
  %rtvec86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtvec_def**
  %50 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec86, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtvec89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtvec_def**
  %52 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec89, align 8
  %elem90 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %52, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem90, i32 0, i64 0
  %53 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx91, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 1
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtvec97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtvec_def**
  %55 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec97, align 8
  %cmp98 = icmp ne %struct.rtvec_def* %50, %55
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.80
  store i32 -1, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.80
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.59

for.end.102:                                      ; preds = %for.cond.59
  %57 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtvec105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtvec_def**
  %58 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec105, align 8
  %elem106 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %58, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem106, i32 0, i64 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx107, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 1
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 3
  %rtvec113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtvec_def**
  %61 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec113, align 8
  %num_elem114 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %61, i32 0, i32 0
  %62 = load i32, i32* %num_elem114, align 4
  %63 = load i32, i32* %n_sets, align 4
  %add115 = add nsw i32 %62, %63
  store i32 %add115, i32* %retval
  br label %return

if.else.116:                                      ; preds = %land.lhs.true, %sw.bb.13
  %64 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtvec119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtvec_def**
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec119, align 8
  %elem120 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem120, i32 0, i64 0
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx121, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load122 = load i32, i32* %67, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 41
  br i1 %cmp124, label %if.then.125, label %if.else.158

if.then.125:                                      ; preds = %if.else.116
  %68 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtvec129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtvec_def**
  %69 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec129, align 8
  %num_elem130 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %69, i32 0, i32 0
  %70 = load i32, i32* %num_elem130, align 4
  %sub131 = sub nsw i32 %70, 1
  store i32 %sub131, i32* %i126, align 4
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.146, %if.then.125
  %71 = load i32, i32* %i126, align 4
  %cmp133 = icmp sgt i32 %71, 0
  br i1 %cmp133, label %for.body.134, label %for.end.148

for.body.134:                                     ; preds = %for.cond.132
  %72 = load i32, i32* %i126, align 4
  %idxprom135 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtvec138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec138, align 8
  %elem139 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem139, i32 0, i64 %idxprom135
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx140, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load141 = load i32, i32* %76, align 8
  %bf.clear142 = and i32 %bf.load141, 65535
  %cmp143 = icmp ne i32 %bf.clear142, 49
  br i1 %cmp143, label %if.then.144, label %if.end.145

if.then.144:                                      ; preds = %for.body.134
  store i32 -1, i32* %retval
  br label %return

if.end.145:                                       ; preds = %for.body.134
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %77 = load i32, i32* %i126, align 4
  %dec147 = add nsw i32 %77, -1
  store i32 %dec147, i32* %i126, align 4
  br label %for.cond.132

for.end.148:                                      ; preds = %for.cond.132
  %78 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtvec151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtvec_def**
  %79 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec151, align 8
  %elem152 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %79, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem152, i32 0, i64 0
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx153, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 3
  %rtvec156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtvec_def**
  %81 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec156, align 8
  %num_elem157 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %81, i32 0, i32 0
  %82 = load i32, i32* %num_elem157, align 4
  store i32 %82, i32* %retval
  br label %return

if.else.158:                                      ; preds = %if.else.116
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else.158, %for.end.148, %if.then.144, %for.end.102, %if.then.99, %if.then.79, %if.then.71, %if.then.57, %if.else, %if.then, %sw.bb
  %83 = load i32, i32* %retval
  ret i32 %83
}

; Function Attrs: nounwind uwtable
define i8* @decode_asm_operands(%struct.rtx_def* %body, %struct.rtx_def** %operands, %struct.rtx_def*** %operand_locs, i8** %constraints, i32* %modes) #0 {
entry:
  %body.addr = alloca %struct.rtx_def*, align 8
  %operands.addr = alloca %struct.rtx_def**, align 8
  %operand_locs.addr = alloca %struct.rtx_def***, align 8
  %constraints.addr = alloca i8**, align 8
  %modes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %noperands = alloca i32, align 4
  %template = alloca i8*, align 8
  %asmop = alloca %struct.rtx_def*, align 8
  %asmop95 = alloca %struct.rtx_def*, align 8
  %asmop185 = alloca %struct.rtx_def*, align 8
  %nparallel = alloca i32, align 4
  %nin = alloca i32, align 4
  %nout = alloca i32, align 4
  %asmop359 = alloca %struct.rtx_def*, align 8
  %nin365 = alloca i32, align 4
  store %struct.rtx_def* %body, %struct.rtx_def** %body.addr, align 8
  store %struct.rtx_def** %operands, %struct.rtx_def*** %operands.addr, align 8
  store %struct.rtx_def*** %operand_locs, %struct.rtx_def**** %operand_locs.addr, align 8
  store i8** %constraints, i8*** %constraints.addr, align 8
  store i32* %modes, i32** %modes.addr, align 8
  store i8* null, i8** %template, align 8
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
  store %struct.rtx_def* %6, %struct.rtx_def** %asmop, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtvec = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtvec_def**
  %8 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %8, i32 0, i32 0
  %9 = load i32, i32* %num_elem, align 4
  %add = add nsw i32 %9, 1
  store i32 %add, i32* %noperands, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %noperands, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool = icmp ne %struct.rtx_def*** %12, null
  br i1 %tobool, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %13, 1
  %idxprom = sext i32 %sub to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtvec13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec13, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %17, i64 %idxprom15
  store %struct.rtx_def** %arrayidx14, %struct.rtx_def*** %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool17 = icmp ne %struct.rtx_def** %18, null
  br i1 %tobool17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %if.end
  %19 = load i32, i32* %i, align 4
  %sub19 = sub nsw i32 %19, 1
  %idxprom20 = sext i32 %sub19 to i64
  %20 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtvec23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec23, align 8
  %elem24 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem24, i32 0, i64 %idxprom20
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom26 = sext i32 %23 to i64
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 %idxprom26
  store %struct.rtx_def* %22, %struct.rtx_def** %arrayidx27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.18, %if.end
  %25 = load i8**, i8*** %constraints.addr, align 8
  %tobool29 = icmp ne i8** %25, null
  br i1 %tobool29, label %if.then.30, label %if.end.42

if.then.30:                                       ; preds = %if.end.28
  %26 = load i32, i32* %i, align 4
  %sub31 = sub nsw i32 %26, 1
  %idxprom32 = sext i32 %sub31 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 4
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem36 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem36, i32 0, i64 %idxprom32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx39 to i8**
  %30 = load i8*, i8** %rtstr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %31 to i64
  %32 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %32, i64 %idxprom40
  store i8* %30, i8** %arrayidx41, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.30, %if.end.28
  %33 = load i32*, i32** %modes.addr, align 8
  %tobool43 = icmp ne i32* %33, null
  br i1 %tobool43, label %if.then.44, label %if.end.56

if.then.44:                                       ; preds = %if.end.42
  %34 = load i32, i32* %i, align 4
  %sub45 = sub nsw i32 %34, 1
  %idxprom46 = sext i32 %sub45 to i64
  %35 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 4
  %rtvec49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtvec_def**
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec49, align 8
  %elem50 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem50, i32 0, i64 %idxprom46
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx51, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load52 = load i32, i32* %38, align 8
  %bf.lshr = lshr i32 %bf.load52, 16
  %bf.clear53 = and i32 %bf.lshr, 255
  %39 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %39 to i64
  %40 = load i32*, i32** %modes.addr, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %40, i64 %idxprom54
  store i32 %bf.clear53, i32* %arrayidx55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.44, %if.end.42
  br label %for.inc

for.inc:                                          ; preds = %if.end.56
  %41 = load i32, i32* %i, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool57 = icmp ne %struct.rtx_def** %42, null
  br i1 %tobool57, label %if.then.58, label %if.end.63

if.then.58:                                       ; preds = %for.end
  %43 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %45 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx62 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %45, i64 0
  store %struct.rtx_def* %44, %struct.rtx_def** %arrayidx62, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.58, %for.end
  %46 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool64 = icmp ne %struct.rtx_def*** %46, null
  br i1 %tobool64, label %if.then.65, label %if.end.70

if.then.65:                                       ; preds = %if.end.63
  %47 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %48 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx69 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %48, i64 0
  store %struct.rtx_def** %rtx68, %struct.rtx_def*** %arrayidx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.65, %if.end.63
  %49 = load i8**, i8*** %constraints.addr, align 8
  %tobool71 = icmp ne i8** %49, null
  br i1 %tobool71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %if.end.70
  %50 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 1
  %rtstr75 = bitcast %union.rtunion_def* %arrayidx74 to i8**
  %51 = load i8*, i8** %rtstr75, align 8
  %52 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx76 = getelementptr inbounds i8*, i8** %52, i64 0
  store i8* %51, i8** %arrayidx76, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %if.end.70
  %53 = load i32*, i32** %modes.addr, align 8
  %tobool78 = icmp ne i32* %53, null
  br i1 %tobool78, label %if.then.79, label %if.end.87

if.then.79:                                       ; preds = %if.end.77
  %54 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load83 = load i32, i32* %56, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %57 = load i32*, i32** %modes.addr, align 8
  %arrayidx86 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %bf.clear85, i32* %arrayidx86, align 4
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.79, %if.end.77
  %58 = load %struct.rtx_def*, %struct.rtx_def** %asmop, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtstr90 = bitcast %union.rtunion_def* %arrayidx89 to i8**
  %59 = load i8*, i8** %rtstr90, align 8
  store i8* %59, i8** %template, align 8
  br label %if.end.432

if.else:                                          ; preds = %land.lhs.true, %entry
  %60 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load91 = load i32, i32* %61, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %cmp93 = icmp eq i32 %bf.clear92, 41
  br i1 %cmp93, label %if.then.94, label %if.else.159

if.then.94:                                       ; preds = %if.else
  %62 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %asmop95, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtvec98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtvec_def**
  %64 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec98, align 8
  %num_elem99 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %64, i32 0, i32 0
  %65 = load i32, i32* %num_elem99, align 4
  store i32 %65, i32* %noperands, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.153, %if.then.94
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %noperands, align 4
  %cmp101 = icmp slt i32 %66, %67
  br i1 %cmp101, label %for.body.102, label %for.end.155

for.body.102:                                     ; preds = %for.cond.100
  %68 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool103 = icmp ne %struct.rtx_def*** %68, null
  br i1 %tobool103, label %if.then.104, label %if.end.113

if.then.104:                                      ; preds = %for.body.102
  %69 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 3
  %rtvec108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec108, align 8
  %elem109 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %71, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem109, i32 0, i64 %idxprom105
  %72 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %72 to i64
  %73 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx112 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %73, i64 %idxprom111
  store %struct.rtx_def** %arrayidx110, %struct.rtx_def*** %arrayidx112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.104, %for.body.102
  %74 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool114 = icmp ne %struct.rtx_def** %74, null
  br i1 %tobool114, label %if.then.115, label %if.end.124

if.then.115:                                      ; preds = %if.end.113
  %75 = load i32, i32* %i, align 4
  %idxprom116 = sext i32 %75 to i64
  %76 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 3
  %rtvec119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtvec_def**
  %77 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec119, align 8
  %elem120 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %77, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem120, i32 0, i64 %idxprom116
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx121, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %79 to i64
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx123 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %80, i64 %idxprom122
  store %struct.rtx_def* %78, %struct.rtx_def** %arrayidx123, align 8
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.115, %if.end.113
  %81 = load i8**, i8*** %constraints.addr, align 8
  %tobool125 = icmp ne i8** %81, null
  br i1 %tobool125, label %if.then.126, label %if.end.138

if.then.126:                                      ; preds = %if.end.124
  %82 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %82 to i64
  %83 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 4
  %rtvec130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtvec_def**
  %84 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec130, align 8
  %elem131 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %84, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem131, i32 0, i64 %idxprom127
  %85 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx132, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtstr135 = bitcast %union.rtunion_def* %arrayidx134 to i8**
  %86 = load i8*, i8** %rtstr135, align 8
  %87 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %87 to i64
  %88 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx137 = getelementptr inbounds i8*, i8** %88, i64 %idxprom136
  store i8* %86, i8** %arrayidx137, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.126, %if.end.124
  %89 = load i32*, i32** %modes.addr, align 8
  %tobool139 = icmp ne i32* %89, null
  br i1 %tobool139, label %if.then.140, label %if.end.152

if.then.140:                                      ; preds = %if.end.138
  %90 = load i32, i32* %i, align 4
  %idxprom141 = sext i32 %90 to i64
  %91 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 4
  %rtvec144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtvec_def**
  %92 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec144, align 8
  %elem145 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %92, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem145, i32 0, i64 %idxprom141
  %93 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx146, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load147 = load i32, i32* %94, align 8
  %bf.lshr148 = lshr i32 %bf.load147, 16
  %bf.clear149 = and i32 %bf.lshr148, 255
  %95 = load i32, i32* %i, align 4
  %idxprom150 = sext i32 %95 to i64
  %96 = load i32*, i32** %modes.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %96, i64 %idxprom150
  store i32 %bf.clear149, i32* %arrayidx151, align 4
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.140, %if.end.138
  br label %for.inc.153

for.inc.153:                                      ; preds = %if.end.152
  %97 = load i32, i32* %i, align 4
  %inc154 = add nsw i32 %97, 1
  store i32 %inc154, i32* %i, align 4
  br label %for.cond.100

for.end.155:                                      ; preds = %for.cond.100
  %98 = load %struct.rtx_def*, %struct.rtx_def** %asmop95, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtstr158 = bitcast %union.rtunion_def* %arrayidx157 to i8**
  %99 = load i8*, i8** %rtstr158, align 8
  store i8* %99, i8** %template, align 8
  br label %if.end.431

if.else.159:                                      ; preds = %if.else
  %100 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load160 = load i32, i32* %101, align 8
  %bf.clear161 = and i32 %bf.load160, 65535
  %cmp162 = icmp eq i32 %bf.clear161, 39
  br i1 %cmp162, label %land.lhs.true.163, label %if.else.345

land.lhs.true.163:                                ; preds = %if.else.159
  %102 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtvec166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtvec_def**
  %103 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec166, align 8
  %elem167 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %103, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem167, i32 0, i64 0
  %104 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx168, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load169 = load i32, i32* %105, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp eq i32 %bf.clear170, 47
  br i1 %cmp171, label %land.lhs.true.172, label %if.else.345

land.lhs.true.172:                                ; preds = %land.lhs.true.163
  %106 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtvec175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtvec_def**
  %107 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec175, align 8
  %elem176 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %107, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem176, i32 0, i64 0
  %108 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx177, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 1
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load181 = load i32, i32* %110, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp eq i32 %bf.clear182, 41
  br i1 %cmp183, label %if.then.184, label %if.else.345

if.then.184:                                      ; preds = %land.lhs.true.172
  %111 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtvec188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtvec_def**
  %112 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec188, align 8
  %elem189 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %112, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem189, i32 0, i64 0
  %113 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx190, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 1
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  store %struct.rtx_def* %114, %struct.rtx_def** %asmop185, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 0
  %rtvec196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtvec_def**
  %116 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec196, align 8
  %num_elem197 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %116, i32 0, i32 0
  %117 = load i32, i32* %num_elem197, align 4
  store i32 %117, i32* %nparallel, align 4
  %118 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 3
  %rtvec200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtvec_def**
  %119 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec200, align 8
  %num_elem201 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %119, i32 0, i32 0
  %120 = load i32, i32* %num_elem201, align 4
  store i32 %120, i32* %nin, align 4
  store i32 0, i32* %nout, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.279, %if.then.184
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* %nparallel, align 4
  %cmp203 = icmp slt i32 %121, %122
  br i1 %cmp203, label %for.body.204, label %for.end.281

for.body.204:                                     ; preds = %for.cond.202
  %123 = load i32, i32* %i, align 4
  %idxprom205 = sext i32 %123 to i64
  %124 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtvec208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtvec_def**
  %125 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec208, align 8
  %elem209 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %125, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem209, i32 0, i64 %idxprom205
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx210, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load211 = load i32, i32* %127, align 8
  %bf.clear212 = and i32 %bf.load211, 65535
  %cmp213 = icmp eq i32 %bf.clear212, 49
  br i1 %cmp213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %for.body.204
  br label %for.end.281

if.end.215:                                       ; preds = %for.body.204
  %128 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool216 = icmp ne %struct.rtx_def** %128, null
  br i1 %tobool216, label %if.then.217, label %if.end.229

if.then.217:                                      ; preds = %if.end.215
  %129 = load i32, i32* %i, align 4
  %idxprom218 = sext i32 %129 to i64
  %130 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 0
  %rtvec221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtvec_def**
  %131 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec221, align 8
  %elem222 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %131, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem222, i32 0, i64 %idxprom218
  %132 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx223, align 8
  %fld224 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx225 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld224, i32 0, i64 0
  %rtx226 = bitcast %union.rtunion_def* %arrayidx225 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx226, align 8
  %134 = load i32, i32* %i, align 4
  %idxprom227 = sext i32 %134 to i64
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx228 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %135, i64 %idxprom227
  store %struct.rtx_def* %133, %struct.rtx_def** %arrayidx228, align 8
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.217, %if.end.215
  %136 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool230 = icmp ne %struct.rtx_def*** %136, null
  br i1 %tobool230, label %if.then.231, label %if.end.243

if.then.231:                                      ; preds = %if.end.229
  %137 = load i32, i32* %i, align 4
  %idxprom232 = sext i32 %137 to i64
  %138 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 0
  %rtvec235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtvec_def**
  %139 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec235, align 8
  %elem236 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %139, i32 0, i32 1
  %arrayidx237 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem236, i32 0, i64 %idxprom232
  %140 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx237, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %141 = load i32, i32* %i, align 4
  %idxprom241 = sext i32 %141 to i64
  %142 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx242 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %142, i64 %idxprom241
  store %struct.rtx_def** %rtx240, %struct.rtx_def*** %arrayidx242, align 8
  br label %if.end.243

if.end.243:                                       ; preds = %if.then.231, %if.end.229
  %143 = load i8**, i8*** %constraints.addr, align 8
  %tobool244 = icmp ne i8** %143, null
  br i1 %tobool244, label %if.then.245, label %if.end.260

if.then.245:                                      ; preds = %if.end.243
  %144 = load i32, i32* %i, align 4
  %idxprom246 = sext i32 %144 to i64
  %145 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtvec249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtvec_def**
  %146 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec249, align 8
  %elem250 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %146, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem250, i32 0, i64 %idxprom246
  %147 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx251, align 8
  %fld252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld252, i32 0, i64 1
  %rtx254 = bitcast %union.rtunion_def* %arrayidx253 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtx254, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 1
  %rtstr257 = bitcast %union.rtunion_def* %arrayidx256 to i8**
  %149 = load i8*, i8** %rtstr257, align 8
  %150 = load i32, i32* %i, align 4
  %idxprom258 = sext i32 %150 to i64
  %151 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx259 = getelementptr inbounds i8*, i8** %151, i64 %idxprom258
  store i8* %149, i8** %arrayidx259, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.245, %if.end.243
  %152 = load i32*, i32** %modes.addr, align 8
  %tobool261 = icmp ne i32* %152, null
  br i1 %tobool261, label %if.then.262, label %if.end.277

if.then.262:                                      ; preds = %if.end.260
  %153 = load i32, i32* %i, align 4
  %idxprom263 = sext i32 %153 to i64
  %154 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld264 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx265 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld264, i32 0, i64 0
  %rtvec266 = bitcast %union.rtunion_def* %arrayidx265 to %struct.rtvec_def**
  %155 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec266, align 8
  %elem267 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %155, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem267, i32 0, i64 %idxprom263
  %156 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx268, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 0
  %rtx271 = bitcast %union.rtunion_def* %arrayidx270 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx271, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load272 = load i32, i32* %158, align 8
  %bf.lshr273 = lshr i32 %bf.load272, 16
  %bf.clear274 = and i32 %bf.lshr273, 255
  %159 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %159 to i64
  %160 = load i32*, i32** %modes.addr, align 8
  %arrayidx276 = getelementptr inbounds i32, i32* %160, i64 %idxprom275
  store i32 %bf.clear274, i32* %arrayidx276, align 4
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.262, %if.end.260
  %161 = load i32, i32* %nout, align 4
  %inc278 = add nsw i32 %161, 1
  store i32 %inc278, i32* %nout, align 4
  br label %for.inc.279

for.inc.279:                                      ; preds = %if.end.277
  %162 = load i32, i32* %i, align 4
  %inc280 = add nsw i32 %162, 1
  store i32 %inc280, i32* %i, align 4
  br label %for.cond.202

for.end.281:                                      ; preds = %if.then.214, %for.cond.202
  store i32 0, i32* %i, align 4
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.339, %for.end.281
  %163 = load i32, i32* %i, align 4
  %164 = load i32, i32* %nin, align 4
  %cmp283 = icmp slt i32 %163, %164
  br i1 %cmp283, label %for.body.284, label %for.end.341

for.body.284:                                     ; preds = %for.cond.282
  %165 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool285 = icmp ne %struct.rtx_def*** %165, null
  br i1 %tobool285, label %if.then.286, label %if.end.296

if.then.286:                                      ; preds = %for.body.284
  %166 = load i32, i32* %i, align 4
  %idxprom287 = sext i32 %166 to i64
  %167 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld288 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx289 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld288, i32 0, i64 3
  %rtvec290 = bitcast %union.rtunion_def* %arrayidx289 to %struct.rtvec_def**
  %168 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec290, align 8
  %elem291 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %168, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem291, i32 0, i64 %idxprom287
  %169 = load i32, i32* %i, align 4
  %170 = load i32, i32* %nout, align 4
  %add293 = add nsw i32 %169, %170
  %idxprom294 = sext i32 %add293 to i64
  %171 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx295 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %171, i64 %idxprom294
  store %struct.rtx_def** %arrayidx292, %struct.rtx_def*** %arrayidx295, align 8
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.286, %for.body.284
  %172 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool297 = icmp ne %struct.rtx_def** %172, null
  br i1 %tobool297, label %if.then.298, label %if.end.308

if.then.298:                                      ; preds = %if.end.296
  %173 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %173 to i64
  %174 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 3
  %rtvec302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtvec_def**
  %175 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec302, align 8
  %elem303 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %175, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem303, i32 0, i64 %idxprom299
  %176 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx304, align 8
  %177 = load i32, i32* %i, align 4
  %178 = load i32, i32* %nout, align 4
  %add305 = add nsw i32 %177, %178
  %idxprom306 = sext i32 %add305 to i64
  %179 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx307 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %179, i64 %idxprom306
  store %struct.rtx_def* %176, %struct.rtx_def** %arrayidx307, align 8
  br label %if.end.308

if.end.308:                                       ; preds = %if.then.298, %if.end.296
  %180 = load i8**, i8*** %constraints.addr, align 8
  %tobool309 = icmp ne i8** %180, null
  br i1 %tobool309, label %if.then.310, label %if.end.323

if.then.310:                                      ; preds = %if.end.308
  %181 = load i32, i32* %i, align 4
  %idxprom311 = sext i32 %181 to i64
  %182 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld312, i32 0, i64 4
  %rtvec314 = bitcast %union.rtunion_def* %arrayidx313 to %struct.rtvec_def**
  %183 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec314, align 8
  %elem315 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %183, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem315, i32 0, i64 %idxprom311
  %184 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx316, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtstr319 = bitcast %union.rtunion_def* %arrayidx318 to i8**
  %185 = load i8*, i8** %rtstr319, align 8
  %186 = load i32, i32* %i, align 4
  %187 = load i32, i32* %nout, align 4
  %add320 = add nsw i32 %186, %187
  %idxprom321 = sext i32 %add320 to i64
  %188 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx322 = getelementptr inbounds i8*, i8** %188, i64 %idxprom321
  store i8* %185, i8** %arrayidx322, align 8
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.310, %if.end.308
  %189 = load i32*, i32** %modes.addr, align 8
  %tobool324 = icmp ne i32* %189, null
  br i1 %tobool324, label %if.then.325, label %if.end.338

if.then.325:                                      ; preds = %if.end.323
  %190 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %190 to i64
  %191 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld327 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld327, i32 0, i64 4
  %rtvec329 = bitcast %union.rtunion_def* %arrayidx328 to %struct.rtvec_def**
  %192 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec329, align 8
  %elem330 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %192, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem330, i32 0, i64 %idxprom326
  %193 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx331, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load332 = load i32, i32* %194, align 8
  %bf.lshr333 = lshr i32 %bf.load332, 16
  %bf.clear334 = and i32 %bf.lshr333, 255
  %195 = load i32, i32* %i, align 4
  %196 = load i32, i32* %nout, align 4
  %add335 = add nsw i32 %195, %196
  %idxprom336 = sext i32 %add335 to i64
  %197 = load i32*, i32** %modes.addr, align 8
  %arrayidx337 = getelementptr inbounds i32, i32* %197, i64 %idxprom336
  store i32 %bf.clear334, i32* %arrayidx337, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.325, %if.end.323
  br label %for.inc.339

for.inc.339:                                      ; preds = %if.end.338
  %198 = load i32, i32* %i, align 4
  %inc340 = add nsw i32 %198, 1
  store i32 %inc340, i32* %i, align 4
  br label %for.cond.282

for.end.341:                                      ; preds = %for.cond.282
  %199 = load %struct.rtx_def*, %struct.rtx_def** %asmop185, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 0
  %rtstr344 = bitcast %union.rtunion_def* %arrayidx343 to i8**
  %200 = load i8*, i8** %rtstr344, align 8
  store i8* %200, i8** %template, align 8
  br label %if.end.430

if.else.345:                                      ; preds = %land.lhs.true.172, %land.lhs.true.163, %if.else.159
  %201 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %202 = bitcast %struct.rtx_def* %201 to i32*
  %bf.load346 = load i32, i32* %202, align 8
  %bf.clear347 = and i32 %bf.load346, 65535
  %cmp348 = icmp eq i32 %bf.clear347, 39
  br i1 %cmp348, label %land.lhs.true.349, label %if.end.429

land.lhs.true.349:                                ; preds = %if.else.345
  %203 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld350, i32 0, i64 0
  %rtvec352 = bitcast %union.rtunion_def* %arrayidx351 to %struct.rtvec_def**
  %204 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec352, align 8
  %elem353 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %204, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem353, i32 0, i64 0
  %205 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx354, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %bf.load355 = load i32, i32* %206, align 8
  %bf.clear356 = and i32 %bf.load355, 65535
  %cmp357 = icmp eq i32 %bf.clear356, 41
  br i1 %cmp357, label %if.then.358, label %if.end.429

if.then.358:                                      ; preds = %land.lhs.true.349
  %207 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 0
  %rtvec362 = bitcast %union.rtunion_def* %arrayidx361 to %struct.rtvec_def**
  %208 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec362, align 8
  %elem363 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %208, i32 0, i32 1
  %arrayidx364 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem363, i32 0, i64 0
  %209 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx364, align 8
  store %struct.rtx_def* %209, %struct.rtx_def** %asmop359, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 3
  %rtvec368 = bitcast %union.rtunion_def* %arrayidx367 to %struct.rtvec_def**
  %211 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec368, align 8
  %num_elem369 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %211, i32 0, i32 0
  %212 = load i32, i32* %num_elem369, align 4
  store i32 %212, i32* %nin365, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.423, %if.then.358
  %213 = load i32, i32* %i, align 4
  %214 = load i32, i32* %nin365, align 4
  %cmp371 = icmp slt i32 %213, %214
  br i1 %cmp371, label %for.body.372, label %for.end.425

for.body.372:                                     ; preds = %for.cond.370
  %215 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %tobool373 = icmp ne %struct.rtx_def*** %215, null
  br i1 %tobool373, label %if.then.374, label %if.end.383

if.then.374:                                      ; preds = %for.body.372
  %216 = load i32, i32* %i, align 4
  %idxprom375 = sext i32 %216 to i64
  %217 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 3
  %rtvec378 = bitcast %union.rtunion_def* %arrayidx377 to %struct.rtvec_def**
  %218 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec378, align 8
  %elem379 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %218, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem379, i32 0, i64 %idxprom375
  %219 = load i32, i32* %i, align 4
  %idxprom381 = sext i32 %219 to i64
  %220 = load %struct.rtx_def***, %struct.rtx_def**** %operand_locs.addr, align 8
  %arrayidx382 = getelementptr inbounds %struct.rtx_def**, %struct.rtx_def*** %220, i64 %idxprom381
  store %struct.rtx_def** %arrayidx380, %struct.rtx_def*** %arrayidx382, align 8
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.374, %for.body.372
  %221 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %tobool384 = icmp ne %struct.rtx_def** %221, null
  br i1 %tobool384, label %if.then.385, label %if.end.394

if.then.385:                                      ; preds = %if.end.383
  %222 = load i32, i32* %i, align 4
  %idxprom386 = sext i32 %222 to i64
  %223 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %223, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld387, i32 0, i64 3
  %rtvec389 = bitcast %union.rtunion_def* %arrayidx388 to %struct.rtvec_def**
  %224 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec389, align 8
  %elem390 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %224, i32 0, i32 1
  %arrayidx391 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem390, i32 0, i64 %idxprom386
  %225 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx391, align 8
  %226 = load i32, i32* %i, align 4
  %idxprom392 = sext i32 %226 to i64
  %227 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx393 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %227, i64 %idxprom392
  store %struct.rtx_def* %225, %struct.rtx_def** %arrayidx393, align 8
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.385, %if.end.383
  %228 = load i8**, i8*** %constraints.addr, align 8
  %tobool395 = icmp ne i8** %228, null
  br i1 %tobool395, label %if.then.396, label %if.end.408

if.then.396:                                      ; preds = %if.end.394
  %229 = load i32, i32* %i, align 4
  %idxprom397 = sext i32 %229 to i64
  %230 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld398 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx399 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld398, i32 0, i64 4
  %rtvec400 = bitcast %union.rtunion_def* %arrayidx399 to %struct.rtvec_def**
  %231 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec400, align 8
  %elem401 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %231, i32 0, i32 1
  %arrayidx402 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem401, i32 0, i64 %idxprom397
  %232 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx402, align 8
  %fld403 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx404 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld403, i32 0, i64 0
  %rtstr405 = bitcast %union.rtunion_def* %arrayidx404 to i8**
  %233 = load i8*, i8** %rtstr405, align 8
  %234 = load i32, i32* %i, align 4
  %idxprom406 = sext i32 %234 to i64
  %235 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx407 = getelementptr inbounds i8*, i8** %235, i64 %idxprom406
  store i8* %233, i8** %arrayidx407, align 8
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.396, %if.end.394
  %236 = load i32*, i32** %modes.addr, align 8
  %tobool409 = icmp ne i32* %236, null
  br i1 %tobool409, label %if.then.410, label %if.end.422

if.then.410:                                      ; preds = %if.end.408
  %237 = load i32, i32* %i, align 4
  %idxprom411 = sext i32 %237 to i64
  %238 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 4
  %rtvec414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtvec_def**
  %239 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec414, align 8
  %elem415 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %239, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem415, i32 0, i64 %idxprom411
  %240 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx416, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %bf.load417 = load i32, i32* %241, align 8
  %bf.lshr418 = lshr i32 %bf.load417, 16
  %bf.clear419 = and i32 %bf.lshr418, 255
  %242 = load i32, i32* %i, align 4
  %idxprom420 = sext i32 %242 to i64
  %243 = load i32*, i32** %modes.addr, align 8
  %arrayidx421 = getelementptr inbounds i32, i32* %243, i64 %idxprom420
  store i32 %bf.clear419, i32* %arrayidx421, align 4
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.410, %if.end.408
  br label %for.inc.423

for.inc.423:                                      ; preds = %if.end.422
  %244 = load i32, i32* %i, align 4
  %inc424 = add nsw i32 %244, 1
  store i32 %inc424, i32* %i, align 4
  br label %for.cond.370

for.end.425:                                      ; preds = %for.cond.370
  %245 = load %struct.rtx_def*, %struct.rtx_def** %asmop359, align 8
  %fld426 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx427 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld426, i32 0, i64 0
  %rtstr428 = bitcast %union.rtunion_def* %arrayidx427 to i8**
  %246 = load i8*, i8** %rtstr428, align 8
  store i8* %246, i8** %template, align 8
  br label %if.end.429

if.end.429:                                       ; preds = %for.end.425, %land.lhs.true.349, %if.else.345
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %for.end.341
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %for.end.155
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.end.87
  %247 = load i8*, i8** %template, align 8
  ret i8* %247
}

; Function Attrs: nounwind uwtable
define i32 @asm_operand_ok(%struct.rtx_def* %op, i8* %constraint) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %constraint.addr = alloca i8*, align 8
  %result = alloca i32, align 4
  %c = alloca i8, align 1
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i8* %constraint, i8** %constraint.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1655, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.asm_operand_ok, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load i8*, i8** %constraint.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %while.body, label %while.end.1042

while.body:                                       ; preds = %while.cond
  %3 = load i8*, i8** %constraint.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %constraint.addr, align 8
  %4 = load i8, i8* %3, align 1
  store i8 %4, i8* %c, align 1
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  switch i32 %conv, label %sw.default [
    i32 61, label %sw.bb
    i32 43, label %sw.bb
    i32 42, label %sw.bb
    i32 37, label %sw.bb
    i32 63, label %sw.bb
    i32 33, label %sw.bb
    i32 35, label %sw.bb
    i32 38, label %sw.bb
    i32 44, label %sw.bb
    i32 48, label %sw.bb.2
    i32 49, label %sw.bb.2
    i32 50, label %sw.bb.2
    i32 51, label %sw.bb.2
    i32 52, label %sw.bb.2
    i32 53, label %sw.bb.2
    i32 54, label %sw.bb.2
    i32 55, label %sw.bb.2
    i32 56, label %sw.bb.2
    i32 57, label %sw.bb.2
    i32 112, label %sw.bb.10
    i32 109, label %sw.bb.14
    i32 86, label %sw.bb.14
    i32 111, label %sw.bb.19
    i32 60, label %sw.bb.24
    i32 62, label %sw.bb.28
    i32 69, label %sw.bb.35
    i32 70, label %sw.bb.35
    i32 71, label %sw.bb.42
    i32 72, label %sw.bb.55
    i32 115, label %sw.bb.71
    i32 105, label %sw.bb.87
    i32 110, label %sw.bb.152
    i32 73, label %sw.bb.170
    i32 74, label %sw.bb.254
    i32 75, label %sw.bb.340
    i32 76, label %sw.bb.426
    i32 77, label %sw.bb.512
    i32 78, label %sw.bb.598
    i32 79, label %sw.bb.684
    i32 80, label %sw.bb.770
    i32 88, label %sw.bb.856
    i32 103, label %sw.bb.857
    i32 114, label %sw.bb.1013
  ]

sw.bb:                                            ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %sw.epilog

sw.bb.2:                                          ; preds = %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body, %while.body
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.8, %sw.bb.2
  %6 = load i8*, i8** %constraint.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %and = and i32 %conv4, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv5 = zext i16 %8 to i32
  %and6 = and i32 %conv5, 4
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %while.body.8, label %while.end

while.body.8:                                     ; preds = %while.cond.3
  %9 = load i8*, i8** %constraint.addr, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %9, i32 1
  store i8* %incdec.ptr9, i8** %constraint.addr, align 8
  br label %while.cond.3

while.end:                                        ; preds = %while.cond.3
  store i32 -1, i32* %result, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call = call i32 @address_operand(%struct.rtx_def* %10, i32 0)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %sw.bb.10
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %sw.bb.10
  br label %sw.epilog

sw.bb.14:                                         ; preds = %while.body, %while.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call15 = call i32 @memory_operand(%struct.rtx_def* %11, i32 0)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %sw.bb.14
  store i32 1, i32* %retval
  br label %return

if.end.18:                                        ; preds = %sw.bb.14
  br label %sw.epilog

sw.bb.19:                                         ; preds = %while.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call20 = call i32 @offsettable_nonstrict_memref_p(%struct.rtx_def* %12)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %sw.bb.19
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %sw.bb.19
  br label %sw.epilog

sw.bb.24:                                         ; preds = %while.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %sw.bb.24
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %sw.bb.24
  br label %sw.epilog

sw.bb.28:                                         ; preds = %while.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load29 = load i32, i32* %16, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 66
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.28
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.28
  br label %sw.epilog

sw.bb.35:                                         ; preds = %while.body, %while.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load36 = load i32, i32* %18, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 55
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %sw.bb.35
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %sw.bb.35
  br label %sw.epilog

sw.bb.42:                                         ; preds = %while.body
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load43 = load i32, i32* %20, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 55
  br i1 %cmp45, label %land.lhs.true, label %if.end.54

land.lhs.true:                                    ; preds = %sw.bb.42
  br i1 true, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call47 = call i32 @standard_80387_constant_p(%struct.rtx_def* %21)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.53, label %if.end.54

cond.false:                                       ; preds = %land.lhs.true
  br i1 false, label %cond.true.49, label %cond.false.52

cond.true.49:                                     ; preds = %cond.false
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call50 = call i32 @standard_sse_constant_p(%struct.rtx_def* %22)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.53, label %if.end.54

cond.false.52:                                    ; preds = %cond.false
  br i1 false, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %cond.false.52, %cond.true.49, %cond.true
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %cond.false.52, %cond.true.49, %cond.true, %sw.bb.42
  br label %sw.epilog

sw.bb.55:                                         ; preds = %while.body
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load56 = load i32, i32* %24, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 55
  br i1 %cmp58, label %land.lhs.true.60, label %if.end.70

land.lhs.true.60:                                 ; preds = %sw.bb.55
  br i1 false, label %cond.true.61, label %cond.false.64

cond.true.61:                                     ; preds = %land.lhs.true.60
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call62 = call i32 @standard_80387_constant_p(%struct.rtx_def* %25)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.69, label %if.end.70

cond.false.64:                                    ; preds = %land.lhs.true.60
  br i1 true, label %cond.true.65, label %cond.false.68

cond.true.65:                                     ; preds = %cond.false.64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call66 = call i32 @standard_sse_constant_p(%struct.rtx_def* %26)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.69, label %if.end.70

cond.false.68:                                    ; preds = %cond.false.64
  br i1 false, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %cond.false.68, %cond.true.65, %cond.true.61
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %cond.false.68, %cond.true.65, %cond.true.61, %sw.bb.55
  br label %sw.epilog

sw.bb.71:                                         ; preds = %while.body
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load72 = load i32, i32* %28, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 54
  br i1 %cmp74, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.71
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load76 = load i32, i32* %30, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 55
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %lor.lhs.false
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load81 = load i32, i32* %32, align 8
  %bf.lshr = lshr i32 %bf.load81, 16
  %bf.clear82 = and i32 %bf.lshr, 255
  %cmp83 = icmp eq i32 %bf.clear82, 0
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.80, %sw.bb.71
  br label %sw.epilog

if.end.86:                                        ; preds = %land.lhs.true.80, %lor.lhs.false
  br label %sw.bb.87

sw.bb.87:                                         ; preds = %while.body, %if.end.86
  %33 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load88 = load i32, i32* %34, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 67
  br i1 %cmp90, label %land.lhs.true.127, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %sw.bb.87
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load93 = load i32, i32* %36, align 8
  %bf.clear94 = and i32 %bf.load93, 65535
  %cmp95 = icmp eq i32 %bf.clear94, 68
  br i1 %cmp95, label %land.lhs.true.127, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %lor.lhs.false.92
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load98 = load i32, i32* %38, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 54
  br i1 %cmp100, label %land.lhs.true.127, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.97
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load103 = load i32, i32* %40, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp eq i32 %bf.clear104, 55
  br i1 %cmp105, label %land.lhs.true.127, label %lor.lhs.false.107

lor.lhs.false.107:                                ; preds = %lor.lhs.false.102
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load108 = load i32, i32* %42, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 58
  br i1 %cmp110, label %land.lhs.true.127, label %lor.lhs.false.112

lor.lhs.false.112:                                ; preds = %lor.lhs.false.107
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load113 = load i32, i32* %44, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 134
  br i1 %cmp115, label %land.lhs.true.127, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %lor.lhs.false.112
  %45 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load118 = load i32, i32* %46, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp eq i32 %bf.clear119, 56
  br i1 %cmp120, label %land.lhs.true.127, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.117
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load123 = load i32, i32* %48, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 140
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.151

land.lhs.true.127:                                ; preds = %lor.lhs.false.122, %lor.lhs.false.117, %lor.lhs.false.112, %lor.lhs.false.107, %lor.lhs.false.102, %lor.lhs.false.97, %lor.lhs.false.92, %sw.bb.87
  %49 = load i32, i32* @flag_pic, align 4
  %tobool128 = icmp ne i32 %49, 0
  br i1 %tobool128, label %lor.lhs.false.129, label %if.then.150

lor.lhs.false.129:                                ; preds = %land.lhs.true.127
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load130 = load i32, i32* %51, align 8
  %bf.clear131 = and i32 %bf.load130, 65535
  %cmp132 = icmp eq i32 %bf.clear131, 68
  br i1 %cmp132, label %lor.lhs.false.147, label %lor.lhs.false.134

lor.lhs.false.134:                                ; preds = %lor.lhs.false.129
  %52 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load135 = load i32, i32* %53, align 8
  %bf.clear136 = and i32 %bf.load135, 65535
  %cmp137 = icmp eq i32 %bf.clear136, 67
  br i1 %cmp137, label %lor.lhs.false.147, label %lor.lhs.false.139

lor.lhs.false.139:                                ; preds = %lor.lhs.false.134
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load140 = load i32, i32* %55, align 8
  %bf.clear141 = and i32 %bf.load140, 65535
  %cmp142 = icmp eq i32 %bf.clear141, 58
  br i1 %cmp142, label %land.lhs.true.144, label %if.then.150

land.lhs.true.144:                                ; preds = %lor.lhs.false.139
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call145 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %56)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %lor.lhs.false.147, label %if.then.150

lor.lhs.false.147:                                ; preds = %land.lhs.true.144, %lor.lhs.false.134, %lor.lhs.false.129
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call148 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %57)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %lor.lhs.false.147, %land.lhs.true.144, %lor.lhs.false.139, %land.lhs.true.127
  store i32 1, i32* %retval
  br label %return

if.end.151:                                       ; preds = %lor.lhs.false.147, %lor.lhs.false.122
  br label %sw.epilog

sw.bb.152:                                        ; preds = %while.body
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load153 = load i32, i32* %59, align 8
  %bf.clear154 = and i32 %bf.load153, 65535
  %cmp155 = icmp eq i32 %bf.clear154, 54
  br i1 %cmp155, label %if.then.168, label %lor.lhs.false.157

lor.lhs.false.157:                                ; preds = %sw.bb.152
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load158 = load i32, i32* %61, align 8
  %bf.clear159 = and i32 %bf.load158, 65535
  %cmp160 = icmp eq i32 %bf.clear159, 55
  br i1 %cmp160, label %land.lhs.true.162, label %if.end.169

land.lhs.true.162:                                ; preds = %lor.lhs.false.157
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load163 = load i32, i32* %63, align 8
  %bf.lshr164 = lshr i32 %bf.load163, 16
  %bf.clear165 = and i32 %bf.lshr164, 255
  %cmp166 = icmp eq i32 %bf.clear165, 0
  br i1 %cmp166, label %if.then.168, label %if.end.169

if.then.168:                                      ; preds = %land.lhs.true.162, %sw.bb.152
  store i32 1, i32* %retval
  br label %return

if.end.169:                                       ; preds = %land.lhs.true.162, %lor.lhs.false.157
  br label %sw.epilog

sw.bb.170:                                        ; preds = %while.body
  %64 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load171 = load i32, i32* %65, align 8
  %bf.clear172 = and i32 %bf.load171, 65535
  %cmp173 = icmp eq i32 %bf.clear172, 54
  br i1 %cmp173, label %land.lhs.true.175, label %if.end.253

land.lhs.true.175:                                ; preds = %sw.bb.170
  br i1 true, label %cond.true.176, label %cond.false.186

cond.true.176:                                    ; preds = %land.lhs.true.175
  %66 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx177 to i64*
  %67 = load i64, i64* %rtwint, align 8
  %cmp178 = icmp sge i64 %67, 0
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.253

land.lhs.true.180:                                ; preds = %cond.true.176
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtwint183 = bitcast %union.rtunion_def* %arrayidx182 to i64*
  %69 = load i64, i64* %rtwint183, align 8
  %cmp184 = icmp sle i64 %69, 31
  br i1 %cmp184, label %if.then.252, label %if.end.253

cond.false.186:                                   ; preds = %land.lhs.true.175
  br i1 false, label %cond.true.187, label %cond.false.199

cond.true.187:                                    ; preds = %cond.false.186
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 0
  %rtwint190 = bitcast %union.rtunion_def* %arrayidx189 to i64*
  %71 = load i64, i64* %rtwint190, align 8
  %cmp191 = icmp sge i64 %71, 0
  br i1 %cmp191, label %land.lhs.true.193, label %if.end.253

land.lhs.true.193:                                ; preds = %cond.true.187
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 0
  %rtwint196 = bitcast %union.rtunion_def* %arrayidx195 to i64*
  %73 = load i64, i64* %rtwint196, align 8
  %cmp197 = icmp sle i64 %73, 63
  br i1 %cmp197, label %if.then.252, label %if.end.253

cond.false.199:                                   ; preds = %cond.false.186
  br i1 false, label %cond.true.200, label %cond.false.212

cond.true.200:                                    ; preds = %cond.false.199
  %74 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 0
  %rtwint203 = bitcast %union.rtunion_def* %arrayidx202 to i64*
  %75 = load i64, i64* %rtwint203, align 8
  %cmp204 = icmp sge i64 %75, -128
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.253

land.lhs.true.206:                                ; preds = %cond.true.200
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtwint209 = bitcast %union.rtunion_def* %arrayidx208 to i64*
  %77 = load i64, i64* %rtwint209, align 8
  %cmp210 = icmp sle i64 %77, 127
  br i1 %cmp210, label %if.then.252, label %if.end.253

cond.false.212:                                   ; preds = %cond.false.199
  br i1 false, label %cond.true.213, label %cond.false.225

cond.true.213:                                    ; preds = %cond.false.212
  %78 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 0
  %rtwint216 = bitcast %union.rtunion_def* %arrayidx215 to i64*
  %79 = load i64, i64* %rtwint216, align 8
  %cmp217 = icmp eq i64 %79, 255
  br i1 %cmp217, label %if.then.252, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %cond.true.213
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 0
  %rtwint222 = bitcast %union.rtunion_def* %arrayidx221 to i64*
  %81 = load i64, i64* %rtwint222, align 8
  %cmp223 = icmp eq i64 %81, 65535
  br i1 %cmp223, label %if.then.252, label %if.end.253

cond.false.225:                                   ; preds = %cond.false.212
  br i1 false, label %cond.true.226, label %cond.false.238

cond.true.226:                                    ; preds = %cond.false.225
  %82 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 0
  %rtwint229 = bitcast %union.rtunion_def* %arrayidx228 to i64*
  %83 = load i64, i64* %rtwint229, align 8
  %cmp230 = icmp sge i64 %83, 0
  br i1 %cmp230, label %land.lhs.true.232, label %if.end.253

land.lhs.true.232:                                ; preds = %cond.true.226
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 0
  %rtwint235 = bitcast %union.rtunion_def* %arrayidx234 to i64*
  %85 = load i64, i64* %rtwint235, align 8
  %cmp236 = icmp sle i64 %85, 3
  br i1 %cmp236, label %if.then.252, label %if.end.253

cond.false.238:                                   ; preds = %cond.false.225
  br i1 false, label %cond.true.239, label %cond.false.251

cond.true.239:                                    ; preds = %cond.false.238
  %86 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld240, i32 0, i64 0
  %rtwint242 = bitcast %union.rtunion_def* %arrayidx241 to i64*
  %87 = load i64, i64* %rtwint242, align 8
  %cmp243 = icmp sge i64 %87, 0
  br i1 %cmp243, label %land.lhs.true.245, label %if.end.253

land.lhs.true.245:                                ; preds = %cond.true.239
  %88 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 0
  %rtwint248 = bitcast %union.rtunion_def* %arrayidx247 to i64*
  %89 = load i64, i64* %rtwint248, align 8
  %cmp249 = icmp sle i64 %89, 255
  br i1 %cmp249, label %if.then.252, label %if.end.253

cond.false.251:                                   ; preds = %cond.false.238
  br i1 false, label %if.then.252, label %if.end.253

if.then.252:                                      ; preds = %cond.false.251, %land.lhs.true.245, %land.lhs.true.232, %lor.lhs.false.219, %cond.true.213, %land.lhs.true.206, %land.lhs.true.193, %land.lhs.true.180
  store i32 1, i32* %retval
  br label %return

if.end.253:                                       ; preds = %cond.false.251, %land.lhs.true.245, %cond.true.239, %land.lhs.true.232, %cond.true.226, %lor.lhs.false.219, %land.lhs.true.206, %cond.true.200, %land.lhs.true.193, %cond.true.187, %land.lhs.true.180, %cond.true.176, %sw.bb.170
  br label %sw.epilog

sw.bb.254:                                        ; preds = %while.body
  %90 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load255 = load i32, i32* %91, align 8
  %bf.clear256 = and i32 %bf.load255, 65535
  %cmp257 = icmp eq i32 %bf.clear256, 54
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.339

land.lhs.true.259:                                ; preds = %sw.bb.254
  br i1 false, label %cond.true.260, label %cond.false.272

cond.true.260:                                    ; preds = %land.lhs.true.259
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld261, i32 0, i64 0
  %rtwint263 = bitcast %union.rtunion_def* %arrayidx262 to i64*
  %93 = load i64, i64* %rtwint263, align 8
  %cmp264 = icmp sge i64 %93, 0
  br i1 %cmp264, label %land.lhs.true.266, label %if.end.339

land.lhs.true.266:                                ; preds = %cond.true.260
  %94 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 0
  %rtwint269 = bitcast %union.rtunion_def* %arrayidx268 to i64*
  %95 = load i64, i64* %rtwint269, align 8
  %cmp270 = icmp sle i64 %95, 31
  br i1 %cmp270, label %if.then.338, label %if.end.339

cond.false.272:                                   ; preds = %land.lhs.true.259
  br i1 true, label %cond.true.273, label %cond.false.285

cond.true.273:                                    ; preds = %cond.false.272
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtwint276 = bitcast %union.rtunion_def* %arrayidx275 to i64*
  %97 = load i64, i64* %rtwint276, align 8
  %cmp277 = icmp sge i64 %97, 0
  br i1 %cmp277, label %land.lhs.true.279, label %if.end.339

land.lhs.true.279:                                ; preds = %cond.true.273
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld280, i32 0, i64 0
  %rtwint282 = bitcast %union.rtunion_def* %arrayidx281 to i64*
  %99 = load i64, i64* %rtwint282, align 8
  %cmp283 = icmp sle i64 %99, 63
  br i1 %cmp283, label %if.then.338, label %if.end.339

cond.false.285:                                   ; preds = %cond.false.272
  br i1 false, label %cond.true.286, label %cond.false.298

cond.true.286:                                    ; preds = %cond.false.285
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 0
  %rtwint289 = bitcast %union.rtunion_def* %arrayidx288 to i64*
  %101 = load i64, i64* %rtwint289, align 8
  %cmp290 = icmp sge i64 %101, -128
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.339

land.lhs.true.292:                                ; preds = %cond.true.286
  %102 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 0
  %rtwint295 = bitcast %union.rtunion_def* %arrayidx294 to i64*
  %103 = load i64, i64* %rtwint295, align 8
  %cmp296 = icmp sle i64 %103, 127
  br i1 %cmp296, label %if.then.338, label %if.end.339

cond.false.298:                                   ; preds = %cond.false.285
  br i1 false, label %cond.true.299, label %cond.false.311

cond.true.299:                                    ; preds = %cond.false.298
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 0
  %rtwint302 = bitcast %union.rtunion_def* %arrayidx301 to i64*
  %105 = load i64, i64* %rtwint302, align 8
  %cmp303 = icmp eq i64 %105, 255
  br i1 %cmp303, label %if.then.338, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %cond.true.299
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld306 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx307 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld306, i32 0, i64 0
  %rtwint308 = bitcast %union.rtunion_def* %arrayidx307 to i64*
  %107 = load i64, i64* %rtwint308, align 8
  %cmp309 = icmp eq i64 %107, 65535
  br i1 %cmp309, label %if.then.338, label %if.end.339

cond.false.311:                                   ; preds = %cond.false.298
  br i1 false, label %cond.true.312, label %cond.false.324

cond.true.312:                                    ; preds = %cond.false.311
  %108 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 0
  %rtwint315 = bitcast %union.rtunion_def* %arrayidx314 to i64*
  %109 = load i64, i64* %rtwint315, align 8
  %cmp316 = icmp sge i64 %109, 0
  br i1 %cmp316, label %land.lhs.true.318, label %if.end.339

land.lhs.true.318:                                ; preds = %cond.true.312
  %110 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld319 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx320 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld319, i32 0, i64 0
  %rtwint321 = bitcast %union.rtunion_def* %arrayidx320 to i64*
  %111 = load i64, i64* %rtwint321, align 8
  %cmp322 = icmp sle i64 %111, 3
  br i1 %cmp322, label %if.then.338, label %if.end.339

cond.false.324:                                   ; preds = %cond.false.311
  br i1 false, label %cond.true.325, label %cond.false.337

cond.true.325:                                    ; preds = %cond.false.324
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtwint328 = bitcast %union.rtunion_def* %arrayidx327 to i64*
  %113 = load i64, i64* %rtwint328, align 8
  %cmp329 = icmp sge i64 %113, 0
  br i1 %cmp329, label %land.lhs.true.331, label %if.end.339

land.lhs.true.331:                                ; preds = %cond.true.325
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld332, i32 0, i64 0
  %rtwint334 = bitcast %union.rtunion_def* %arrayidx333 to i64*
  %115 = load i64, i64* %rtwint334, align 8
  %cmp335 = icmp sle i64 %115, 255
  br i1 %cmp335, label %if.then.338, label %if.end.339

cond.false.337:                                   ; preds = %cond.false.324
  br i1 false, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %cond.false.337, %land.lhs.true.331, %land.lhs.true.318, %lor.lhs.false.305, %cond.true.299, %land.lhs.true.292, %land.lhs.true.279, %land.lhs.true.266
  store i32 1, i32* %retval
  br label %return

if.end.339:                                       ; preds = %cond.false.337, %land.lhs.true.331, %cond.true.325, %land.lhs.true.318, %cond.true.312, %lor.lhs.false.305, %land.lhs.true.292, %cond.true.286, %land.lhs.true.279, %cond.true.273, %land.lhs.true.266, %cond.true.260, %sw.bb.254
  br label %sw.epilog

sw.bb.340:                                        ; preds = %while.body
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load341 = load i32, i32* %117, align 8
  %bf.clear342 = and i32 %bf.load341, 65535
  %cmp343 = icmp eq i32 %bf.clear342, 54
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.425

land.lhs.true.345:                                ; preds = %sw.bb.340
  br i1 false, label %cond.true.346, label %cond.false.358

cond.true.346:                                    ; preds = %land.lhs.true.345
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 0
  %rtwint349 = bitcast %union.rtunion_def* %arrayidx348 to i64*
  %119 = load i64, i64* %rtwint349, align 8
  %cmp350 = icmp sge i64 %119, 0
  br i1 %cmp350, label %land.lhs.true.352, label %if.end.425

land.lhs.true.352:                                ; preds = %cond.true.346
  %120 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld353, i32 0, i64 0
  %rtwint355 = bitcast %union.rtunion_def* %arrayidx354 to i64*
  %121 = load i64, i64* %rtwint355, align 8
  %cmp356 = icmp sle i64 %121, 31
  br i1 %cmp356, label %if.then.424, label %if.end.425

cond.false.358:                                   ; preds = %land.lhs.true.345
  br i1 false, label %cond.true.359, label %cond.false.371

cond.true.359:                                    ; preds = %cond.false.358
  %122 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 0
  %rtwint362 = bitcast %union.rtunion_def* %arrayidx361 to i64*
  %123 = load i64, i64* %rtwint362, align 8
  %cmp363 = icmp sge i64 %123, 0
  br i1 %cmp363, label %land.lhs.true.365, label %if.end.425

land.lhs.true.365:                                ; preds = %cond.true.359
  %124 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld366 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx367 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld366, i32 0, i64 0
  %rtwint368 = bitcast %union.rtunion_def* %arrayidx367 to i64*
  %125 = load i64, i64* %rtwint368, align 8
  %cmp369 = icmp sle i64 %125, 63
  br i1 %cmp369, label %if.then.424, label %if.end.425

cond.false.371:                                   ; preds = %cond.false.358
  br i1 true, label %cond.true.372, label %cond.false.384

cond.true.372:                                    ; preds = %cond.false.371
  %126 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 0
  %rtwint375 = bitcast %union.rtunion_def* %arrayidx374 to i64*
  %127 = load i64, i64* %rtwint375, align 8
  %cmp376 = icmp sge i64 %127, -128
  br i1 %cmp376, label %land.lhs.true.378, label %if.end.425

land.lhs.true.378:                                ; preds = %cond.true.372
  %128 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 0
  %rtwint381 = bitcast %union.rtunion_def* %arrayidx380 to i64*
  %129 = load i64, i64* %rtwint381, align 8
  %cmp382 = icmp sle i64 %129, 127
  br i1 %cmp382, label %if.then.424, label %if.end.425

cond.false.384:                                   ; preds = %cond.false.371
  br i1 false, label %cond.true.385, label %cond.false.397

cond.true.385:                                    ; preds = %cond.false.384
  %130 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld386, i32 0, i64 0
  %rtwint388 = bitcast %union.rtunion_def* %arrayidx387 to i64*
  %131 = load i64, i64* %rtwint388, align 8
  %cmp389 = icmp eq i64 %131, 255
  br i1 %cmp389, label %if.then.424, label %lor.lhs.false.391

lor.lhs.false.391:                                ; preds = %cond.true.385
  %132 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld392 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx393 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld392, i32 0, i64 0
  %rtwint394 = bitcast %union.rtunion_def* %arrayidx393 to i64*
  %133 = load i64, i64* %rtwint394, align 8
  %cmp395 = icmp eq i64 %133, 65535
  br i1 %cmp395, label %if.then.424, label %if.end.425

cond.false.397:                                   ; preds = %cond.false.384
  br i1 false, label %cond.true.398, label %cond.false.410

cond.true.398:                                    ; preds = %cond.false.397
  %134 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld399, i32 0, i64 0
  %rtwint401 = bitcast %union.rtunion_def* %arrayidx400 to i64*
  %135 = load i64, i64* %rtwint401, align 8
  %cmp402 = icmp sge i64 %135, 0
  br i1 %cmp402, label %land.lhs.true.404, label %if.end.425

land.lhs.true.404:                                ; preds = %cond.true.398
  %136 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld405, i32 0, i64 0
  %rtwint407 = bitcast %union.rtunion_def* %arrayidx406 to i64*
  %137 = load i64, i64* %rtwint407, align 8
  %cmp408 = icmp sle i64 %137, 3
  br i1 %cmp408, label %if.then.424, label %if.end.425

cond.false.410:                                   ; preds = %cond.false.397
  br i1 false, label %cond.true.411, label %cond.false.423

cond.true.411:                                    ; preds = %cond.false.410
  %138 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 0
  %rtwint414 = bitcast %union.rtunion_def* %arrayidx413 to i64*
  %139 = load i64, i64* %rtwint414, align 8
  %cmp415 = icmp sge i64 %139, 0
  br i1 %cmp415, label %land.lhs.true.417, label %if.end.425

land.lhs.true.417:                                ; preds = %cond.true.411
  %140 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld418 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx419 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld418, i32 0, i64 0
  %rtwint420 = bitcast %union.rtunion_def* %arrayidx419 to i64*
  %141 = load i64, i64* %rtwint420, align 8
  %cmp421 = icmp sle i64 %141, 255
  br i1 %cmp421, label %if.then.424, label %if.end.425

cond.false.423:                                   ; preds = %cond.false.410
  br i1 false, label %if.then.424, label %if.end.425

if.then.424:                                      ; preds = %cond.false.423, %land.lhs.true.417, %land.lhs.true.404, %lor.lhs.false.391, %cond.true.385, %land.lhs.true.378, %land.lhs.true.365, %land.lhs.true.352
  store i32 1, i32* %retval
  br label %return

if.end.425:                                       ; preds = %cond.false.423, %land.lhs.true.417, %cond.true.411, %land.lhs.true.404, %cond.true.398, %lor.lhs.false.391, %land.lhs.true.378, %cond.true.372, %land.lhs.true.365, %cond.true.359, %land.lhs.true.352, %cond.true.346, %sw.bb.340
  br label %sw.epilog

sw.bb.426:                                        ; preds = %while.body
  %142 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load427 = load i32, i32* %143, align 8
  %bf.clear428 = and i32 %bf.load427, 65535
  %cmp429 = icmp eq i32 %bf.clear428, 54
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.511

land.lhs.true.431:                                ; preds = %sw.bb.426
  br i1 false, label %cond.true.432, label %cond.false.444

cond.true.432:                                    ; preds = %land.lhs.true.431
  %144 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 0
  %rtwint435 = bitcast %union.rtunion_def* %arrayidx434 to i64*
  %145 = load i64, i64* %rtwint435, align 8
  %cmp436 = icmp sge i64 %145, 0
  br i1 %cmp436, label %land.lhs.true.438, label %if.end.511

land.lhs.true.438:                                ; preds = %cond.true.432
  %146 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld439 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx440 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld439, i32 0, i64 0
  %rtwint441 = bitcast %union.rtunion_def* %arrayidx440 to i64*
  %147 = load i64, i64* %rtwint441, align 8
  %cmp442 = icmp sle i64 %147, 31
  br i1 %cmp442, label %if.then.510, label %if.end.511

cond.false.444:                                   ; preds = %land.lhs.true.431
  br i1 false, label %cond.true.445, label %cond.false.457

cond.true.445:                                    ; preds = %cond.false.444
  %148 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld446 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld446, i32 0, i64 0
  %rtwint448 = bitcast %union.rtunion_def* %arrayidx447 to i64*
  %149 = load i64, i64* %rtwint448, align 8
  %cmp449 = icmp sge i64 %149, 0
  br i1 %cmp449, label %land.lhs.true.451, label %if.end.511

land.lhs.true.451:                                ; preds = %cond.true.445
  %150 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld452, i32 0, i64 0
  %rtwint454 = bitcast %union.rtunion_def* %arrayidx453 to i64*
  %151 = load i64, i64* %rtwint454, align 8
  %cmp455 = icmp sle i64 %151, 63
  br i1 %cmp455, label %if.then.510, label %if.end.511

cond.false.457:                                   ; preds = %cond.false.444
  br i1 false, label %cond.true.458, label %cond.false.470

cond.true.458:                                    ; preds = %cond.false.457
  %152 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld459 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld459, i32 0, i64 0
  %rtwint461 = bitcast %union.rtunion_def* %arrayidx460 to i64*
  %153 = load i64, i64* %rtwint461, align 8
  %cmp462 = icmp sge i64 %153, -128
  br i1 %cmp462, label %land.lhs.true.464, label %if.end.511

land.lhs.true.464:                                ; preds = %cond.true.458
  %154 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld465 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx466 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld465, i32 0, i64 0
  %rtwint467 = bitcast %union.rtunion_def* %arrayidx466 to i64*
  %155 = load i64, i64* %rtwint467, align 8
  %cmp468 = icmp sle i64 %155, 127
  br i1 %cmp468, label %if.then.510, label %if.end.511

cond.false.470:                                   ; preds = %cond.false.457
  br i1 true, label %cond.true.471, label %cond.false.483

cond.true.471:                                    ; preds = %cond.false.470
  %156 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld472 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx473 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld472, i32 0, i64 0
  %rtwint474 = bitcast %union.rtunion_def* %arrayidx473 to i64*
  %157 = load i64, i64* %rtwint474, align 8
  %cmp475 = icmp eq i64 %157, 255
  br i1 %cmp475, label %if.then.510, label %lor.lhs.false.477

lor.lhs.false.477:                                ; preds = %cond.true.471
  %158 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld478 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx479 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld478, i32 0, i64 0
  %rtwint480 = bitcast %union.rtunion_def* %arrayidx479 to i64*
  %159 = load i64, i64* %rtwint480, align 8
  %cmp481 = icmp eq i64 %159, 65535
  br i1 %cmp481, label %if.then.510, label %if.end.511

cond.false.483:                                   ; preds = %cond.false.470
  br i1 false, label %cond.true.484, label %cond.false.496

cond.true.484:                                    ; preds = %cond.false.483
  %160 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 0
  %rtwint487 = bitcast %union.rtunion_def* %arrayidx486 to i64*
  %161 = load i64, i64* %rtwint487, align 8
  %cmp488 = icmp sge i64 %161, 0
  br i1 %cmp488, label %land.lhs.true.490, label %if.end.511

land.lhs.true.490:                                ; preds = %cond.true.484
  %162 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld491, i32 0, i64 0
  %rtwint493 = bitcast %union.rtunion_def* %arrayidx492 to i64*
  %163 = load i64, i64* %rtwint493, align 8
  %cmp494 = icmp sle i64 %163, 3
  br i1 %cmp494, label %if.then.510, label %if.end.511

cond.false.496:                                   ; preds = %cond.false.483
  br i1 false, label %cond.true.497, label %cond.false.509

cond.true.497:                                    ; preds = %cond.false.496
  %164 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 0
  %rtwint500 = bitcast %union.rtunion_def* %arrayidx499 to i64*
  %165 = load i64, i64* %rtwint500, align 8
  %cmp501 = icmp sge i64 %165, 0
  br i1 %cmp501, label %land.lhs.true.503, label %if.end.511

land.lhs.true.503:                                ; preds = %cond.true.497
  %166 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld504 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx505 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld504, i32 0, i64 0
  %rtwint506 = bitcast %union.rtunion_def* %arrayidx505 to i64*
  %167 = load i64, i64* %rtwint506, align 8
  %cmp507 = icmp sle i64 %167, 255
  br i1 %cmp507, label %if.then.510, label %if.end.511

cond.false.509:                                   ; preds = %cond.false.496
  br i1 false, label %if.then.510, label %if.end.511

if.then.510:                                      ; preds = %cond.false.509, %land.lhs.true.503, %land.lhs.true.490, %lor.lhs.false.477, %cond.true.471, %land.lhs.true.464, %land.lhs.true.451, %land.lhs.true.438
  store i32 1, i32* %retval
  br label %return

if.end.511:                                       ; preds = %cond.false.509, %land.lhs.true.503, %cond.true.497, %land.lhs.true.490, %cond.true.484, %lor.lhs.false.477, %land.lhs.true.464, %cond.true.458, %land.lhs.true.451, %cond.true.445, %land.lhs.true.438, %cond.true.432, %sw.bb.426
  br label %sw.epilog

sw.bb.512:                                        ; preds = %while.body
  %168 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %169 = bitcast %struct.rtx_def* %168 to i32*
  %bf.load513 = load i32, i32* %169, align 8
  %bf.clear514 = and i32 %bf.load513, 65535
  %cmp515 = icmp eq i32 %bf.clear514, 54
  br i1 %cmp515, label %land.lhs.true.517, label %if.end.597

land.lhs.true.517:                                ; preds = %sw.bb.512
  br i1 false, label %cond.true.518, label %cond.false.530

cond.true.518:                                    ; preds = %land.lhs.true.517
  %170 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld519 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx520 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld519, i32 0, i64 0
  %rtwint521 = bitcast %union.rtunion_def* %arrayidx520 to i64*
  %171 = load i64, i64* %rtwint521, align 8
  %cmp522 = icmp sge i64 %171, 0
  br i1 %cmp522, label %land.lhs.true.524, label %if.end.597

land.lhs.true.524:                                ; preds = %cond.true.518
  %172 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld525 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx526 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld525, i32 0, i64 0
  %rtwint527 = bitcast %union.rtunion_def* %arrayidx526 to i64*
  %173 = load i64, i64* %rtwint527, align 8
  %cmp528 = icmp sle i64 %173, 31
  br i1 %cmp528, label %if.then.596, label %if.end.597

cond.false.530:                                   ; preds = %land.lhs.true.517
  br i1 false, label %cond.true.531, label %cond.false.543

cond.true.531:                                    ; preds = %cond.false.530
  %174 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 0
  %rtwint534 = bitcast %union.rtunion_def* %arrayidx533 to i64*
  %175 = load i64, i64* %rtwint534, align 8
  %cmp535 = icmp sge i64 %175, 0
  br i1 %cmp535, label %land.lhs.true.537, label %if.end.597

land.lhs.true.537:                                ; preds = %cond.true.531
  %176 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtwint540 = bitcast %union.rtunion_def* %arrayidx539 to i64*
  %177 = load i64, i64* %rtwint540, align 8
  %cmp541 = icmp sle i64 %177, 63
  br i1 %cmp541, label %if.then.596, label %if.end.597

cond.false.543:                                   ; preds = %cond.false.530
  br i1 false, label %cond.true.544, label %cond.false.556

cond.true.544:                                    ; preds = %cond.false.543
  %178 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld545 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx546 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld545, i32 0, i64 0
  %rtwint547 = bitcast %union.rtunion_def* %arrayidx546 to i64*
  %179 = load i64, i64* %rtwint547, align 8
  %cmp548 = icmp sge i64 %179, -128
  br i1 %cmp548, label %land.lhs.true.550, label %if.end.597

land.lhs.true.550:                                ; preds = %cond.true.544
  %180 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld551, i32 0, i64 0
  %rtwint553 = bitcast %union.rtunion_def* %arrayidx552 to i64*
  %181 = load i64, i64* %rtwint553, align 8
  %cmp554 = icmp sle i64 %181, 127
  br i1 %cmp554, label %if.then.596, label %if.end.597

cond.false.556:                                   ; preds = %cond.false.543
  br i1 false, label %cond.true.557, label %cond.false.569

cond.true.557:                                    ; preds = %cond.false.556
  %182 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld558 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx559 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld558, i32 0, i64 0
  %rtwint560 = bitcast %union.rtunion_def* %arrayidx559 to i64*
  %183 = load i64, i64* %rtwint560, align 8
  %cmp561 = icmp eq i64 %183, 255
  br i1 %cmp561, label %if.then.596, label %lor.lhs.false.563

lor.lhs.false.563:                                ; preds = %cond.true.557
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld564 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx565 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld564, i32 0, i64 0
  %rtwint566 = bitcast %union.rtunion_def* %arrayidx565 to i64*
  %185 = load i64, i64* %rtwint566, align 8
  %cmp567 = icmp eq i64 %185, 65535
  br i1 %cmp567, label %if.then.596, label %if.end.597

cond.false.569:                                   ; preds = %cond.false.556
  br i1 true, label %cond.true.570, label %cond.false.582

cond.true.570:                                    ; preds = %cond.false.569
  %186 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld571, i32 0, i64 0
  %rtwint573 = bitcast %union.rtunion_def* %arrayidx572 to i64*
  %187 = load i64, i64* %rtwint573, align 8
  %cmp574 = icmp sge i64 %187, 0
  br i1 %cmp574, label %land.lhs.true.576, label %if.end.597

land.lhs.true.576:                                ; preds = %cond.true.570
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld577 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx578 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld577, i32 0, i64 0
  %rtwint579 = bitcast %union.rtunion_def* %arrayidx578 to i64*
  %189 = load i64, i64* %rtwint579, align 8
  %cmp580 = icmp sle i64 %189, 3
  br i1 %cmp580, label %if.then.596, label %if.end.597

cond.false.582:                                   ; preds = %cond.false.569
  br i1 false, label %cond.true.583, label %cond.false.595

cond.true.583:                                    ; preds = %cond.false.582
  %190 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld584 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %190, i32 0, i32 1
  %arrayidx585 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld584, i32 0, i64 0
  %rtwint586 = bitcast %union.rtunion_def* %arrayidx585 to i64*
  %191 = load i64, i64* %rtwint586, align 8
  %cmp587 = icmp sge i64 %191, 0
  br i1 %cmp587, label %land.lhs.true.589, label %if.end.597

land.lhs.true.589:                                ; preds = %cond.true.583
  %192 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld590 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx591 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld590, i32 0, i64 0
  %rtwint592 = bitcast %union.rtunion_def* %arrayidx591 to i64*
  %193 = load i64, i64* %rtwint592, align 8
  %cmp593 = icmp sle i64 %193, 255
  br i1 %cmp593, label %if.then.596, label %if.end.597

cond.false.595:                                   ; preds = %cond.false.582
  br i1 false, label %if.then.596, label %if.end.597

if.then.596:                                      ; preds = %cond.false.595, %land.lhs.true.589, %land.lhs.true.576, %lor.lhs.false.563, %cond.true.557, %land.lhs.true.550, %land.lhs.true.537, %land.lhs.true.524
  store i32 1, i32* %retval
  br label %return

if.end.597:                                       ; preds = %cond.false.595, %land.lhs.true.589, %cond.true.583, %land.lhs.true.576, %cond.true.570, %lor.lhs.false.563, %land.lhs.true.550, %cond.true.544, %land.lhs.true.537, %cond.true.531, %land.lhs.true.524, %cond.true.518, %sw.bb.512
  br label %sw.epilog

sw.bb.598:                                        ; preds = %while.body
  %194 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %bf.load599 = load i32, i32* %195, align 8
  %bf.clear600 = and i32 %bf.load599, 65535
  %cmp601 = icmp eq i32 %bf.clear600, 54
  br i1 %cmp601, label %land.lhs.true.603, label %if.end.683

land.lhs.true.603:                                ; preds = %sw.bb.598
  br i1 false, label %cond.true.604, label %cond.false.616

cond.true.604:                                    ; preds = %land.lhs.true.603
  %196 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld605 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx606 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld605, i32 0, i64 0
  %rtwint607 = bitcast %union.rtunion_def* %arrayidx606 to i64*
  %197 = load i64, i64* %rtwint607, align 8
  %cmp608 = icmp sge i64 %197, 0
  br i1 %cmp608, label %land.lhs.true.610, label %if.end.683

land.lhs.true.610:                                ; preds = %cond.true.604
  %198 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld611, i32 0, i64 0
  %rtwint613 = bitcast %union.rtunion_def* %arrayidx612 to i64*
  %199 = load i64, i64* %rtwint613, align 8
  %cmp614 = icmp sle i64 %199, 31
  br i1 %cmp614, label %if.then.682, label %if.end.683

cond.false.616:                                   ; preds = %land.lhs.true.603
  br i1 false, label %cond.true.617, label %cond.false.629

cond.true.617:                                    ; preds = %cond.false.616
  %200 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld618 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx619 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld618, i32 0, i64 0
  %rtwint620 = bitcast %union.rtunion_def* %arrayidx619 to i64*
  %201 = load i64, i64* %rtwint620, align 8
  %cmp621 = icmp sge i64 %201, 0
  br i1 %cmp621, label %land.lhs.true.623, label %if.end.683

land.lhs.true.623:                                ; preds = %cond.true.617
  %202 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld624 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx625 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld624, i32 0, i64 0
  %rtwint626 = bitcast %union.rtunion_def* %arrayidx625 to i64*
  %203 = load i64, i64* %rtwint626, align 8
  %cmp627 = icmp sle i64 %203, 63
  br i1 %cmp627, label %if.then.682, label %if.end.683

cond.false.629:                                   ; preds = %cond.false.616
  br i1 false, label %cond.true.630, label %cond.false.642

cond.true.630:                                    ; preds = %cond.false.629
  %204 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld631 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx632 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld631, i32 0, i64 0
  %rtwint633 = bitcast %union.rtunion_def* %arrayidx632 to i64*
  %205 = load i64, i64* %rtwint633, align 8
  %cmp634 = icmp sge i64 %205, -128
  br i1 %cmp634, label %land.lhs.true.636, label %if.end.683

land.lhs.true.636:                                ; preds = %cond.true.630
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld637 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx638 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld637, i32 0, i64 0
  %rtwint639 = bitcast %union.rtunion_def* %arrayidx638 to i64*
  %207 = load i64, i64* %rtwint639, align 8
  %cmp640 = icmp sle i64 %207, 127
  br i1 %cmp640, label %if.then.682, label %if.end.683

cond.false.642:                                   ; preds = %cond.false.629
  br i1 false, label %cond.true.643, label %cond.false.655

cond.true.643:                                    ; preds = %cond.false.642
  %208 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld644 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx645 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld644, i32 0, i64 0
  %rtwint646 = bitcast %union.rtunion_def* %arrayidx645 to i64*
  %209 = load i64, i64* %rtwint646, align 8
  %cmp647 = icmp eq i64 %209, 255
  br i1 %cmp647, label %if.then.682, label %lor.lhs.false.649

lor.lhs.false.649:                                ; preds = %cond.true.643
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld650 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx651 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld650, i32 0, i64 0
  %rtwint652 = bitcast %union.rtunion_def* %arrayidx651 to i64*
  %211 = load i64, i64* %rtwint652, align 8
  %cmp653 = icmp eq i64 %211, 65535
  br i1 %cmp653, label %if.then.682, label %if.end.683

cond.false.655:                                   ; preds = %cond.false.642
  br i1 false, label %cond.true.656, label %cond.false.668

cond.true.656:                                    ; preds = %cond.false.655
  %212 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld657 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %arrayidx658 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld657, i32 0, i64 0
  %rtwint659 = bitcast %union.rtunion_def* %arrayidx658 to i64*
  %213 = load i64, i64* %rtwint659, align 8
  %cmp660 = icmp sge i64 %213, 0
  br i1 %cmp660, label %land.lhs.true.662, label %if.end.683

land.lhs.true.662:                                ; preds = %cond.true.656
  %214 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld663 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx664 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld663, i32 0, i64 0
  %rtwint665 = bitcast %union.rtunion_def* %arrayidx664 to i64*
  %215 = load i64, i64* %rtwint665, align 8
  %cmp666 = icmp sle i64 %215, 3
  br i1 %cmp666, label %if.then.682, label %if.end.683

cond.false.668:                                   ; preds = %cond.false.655
  br i1 true, label %cond.true.669, label %cond.false.681

cond.true.669:                                    ; preds = %cond.false.668
  %216 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld670 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx671 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld670, i32 0, i64 0
  %rtwint672 = bitcast %union.rtunion_def* %arrayidx671 to i64*
  %217 = load i64, i64* %rtwint672, align 8
  %cmp673 = icmp sge i64 %217, 0
  br i1 %cmp673, label %land.lhs.true.675, label %if.end.683

land.lhs.true.675:                                ; preds = %cond.true.669
  %218 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld676 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx677 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld676, i32 0, i64 0
  %rtwint678 = bitcast %union.rtunion_def* %arrayidx677 to i64*
  %219 = load i64, i64* %rtwint678, align 8
  %cmp679 = icmp sle i64 %219, 255
  br i1 %cmp679, label %if.then.682, label %if.end.683

cond.false.681:                                   ; preds = %cond.false.668
  br i1 false, label %if.then.682, label %if.end.683

if.then.682:                                      ; preds = %cond.false.681, %land.lhs.true.675, %land.lhs.true.662, %lor.lhs.false.649, %cond.true.643, %land.lhs.true.636, %land.lhs.true.623, %land.lhs.true.610
  store i32 1, i32* %retval
  br label %return

if.end.683:                                       ; preds = %cond.false.681, %land.lhs.true.675, %cond.true.669, %land.lhs.true.662, %cond.true.656, %lor.lhs.false.649, %land.lhs.true.636, %cond.true.630, %land.lhs.true.623, %cond.true.617, %land.lhs.true.610, %cond.true.604, %sw.bb.598
  br label %sw.epilog

sw.bb.684:                                        ; preds = %while.body
  %220 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %bf.load685 = load i32, i32* %221, align 8
  %bf.clear686 = and i32 %bf.load685, 65535
  %cmp687 = icmp eq i32 %bf.clear686, 54
  br i1 %cmp687, label %land.lhs.true.689, label %if.end.769

land.lhs.true.689:                                ; preds = %sw.bb.684
  br i1 false, label %cond.true.690, label %cond.false.702

cond.true.690:                                    ; preds = %land.lhs.true.689
  %222 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld691 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %222, i32 0, i32 1
  %arrayidx692 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld691, i32 0, i64 0
  %rtwint693 = bitcast %union.rtunion_def* %arrayidx692 to i64*
  %223 = load i64, i64* %rtwint693, align 8
  %cmp694 = icmp sge i64 %223, 0
  br i1 %cmp694, label %land.lhs.true.696, label %if.end.769

land.lhs.true.696:                                ; preds = %cond.true.690
  %224 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld697 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx698 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld697, i32 0, i64 0
  %rtwint699 = bitcast %union.rtunion_def* %arrayidx698 to i64*
  %225 = load i64, i64* %rtwint699, align 8
  %cmp700 = icmp sle i64 %225, 31
  br i1 %cmp700, label %if.then.768, label %if.end.769

cond.false.702:                                   ; preds = %land.lhs.true.689
  br i1 false, label %cond.true.703, label %cond.false.715

cond.true.703:                                    ; preds = %cond.false.702
  %226 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %226, i32 0, i32 1
  %arrayidx705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld704, i32 0, i64 0
  %rtwint706 = bitcast %union.rtunion_def* %arrayidx705 to i64*
  %227 = load i64, i64* %rtwint706, align 8
  %cmp707 = icmp sge i64 %227, 0
  br i1 %cmp707, label %land.lhs.true.709, label %if.end.769

land.lhs.true.709:                                ; preds = %cond.true.703
  %228 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld710 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %228, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld710, i32 0, i64 0
  %rtwint712 = bitcast %union.rtunion_def* %arrayidx711 to i64*
  %229 = load i64, i64* %rtwint712, align 8
  %cmp713 = icmp sle i64 %229, 63
  br i1 %cmp713, label %if.then.768, label %if.end.769

cond.false.715:                                   ; preds = %cond.false.702
  br i1 false, label %cond.true.716, label %cond.false.728

cond.true.716:                                    ; preds = %cond.false.715
  %230 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld717 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %230, i32 0, i32 1
  %arrayidx718 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld717, i32 0, i64 0
  %rtwint719 = bitcast %union.rtunion_def* %arrayidx718 to i64*
  %231 = load i64, i64* %rtwint719, align 8
  %cmp720 = icmp sge i64 %231, -128
  br i1 %cmp720, label %land.lhs.true.722, label %if.end.769

land.lhs.true.722:                                ; preds = %cond.true.716
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld723 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx724 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld723, i32 0, i64 0
  %rtwint725 = bitcast %union.rtunion_def* %arrayidx724 to i64*
  %233 = load i64, i64* %rtwint725, align 8
  %cmp726 = icmp sle i64 %233, 127
  br i1 %cmp726, label %if.then.768, label %if.end.769

cond.false.728:                                   ; preds = %cond.false.715
  br i1 false, label %cond.true.729, label %cond.false.741

cond.true.729:                                    ; preds = %cond.false.728
  %234 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld730, i32 0, i64 0
  %rtwint732 = bitcast %union.rtunion_def* %arrayidx731 to i64*
  %235 = load i64, i64* %rtwint732, align 8
  %cmp733 = icmp eq i64 %235, 255
  br i1 %cmp733, label %if.then.768, label %lor.lhs.false.735

lor.lhs.false.735:                                ; preds = %cond.true.729
  %236 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld736 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %236, i32 0, i32 1
  %arrayidx737 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld736, i32 0, i64 0
  %rtwint738 = bitcast %union.rtunion_def* %arrayidx737 to i64*
  %237 = load i64, i64* %rtwint738, align 8
  %cmp739 = icmp eq i64 %237, 65535
  br i1 %cmp739, label %if.then.768, label %if.end.769

cond.false.741:                                   ; preds = %cond.false.728
  br i1 false, label %cond.true.742, label %cond.false.754

cond.true.742:                                    ; preds = %cond.false.741
  %238 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld743 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx744 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld743, i32 0, i64 0
  %rtwint745 = bitcast %union.rtunion_def* %arrayidx744 to i64*
  %239 = load i64, i64* %rtwint745, align 8
  %cmp746 = icmp sge i64 %239, 0
  br i1 %cmp746, label %land.lhs.true.748, label %if.end.769

land.lhs.true.748:                                ; preds = %cond.true.742
  %240 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld749 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %240, i32 0, i32 1
  %arrayidx750 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld749, i32 0, i64 0
  %rtwint751 = bitcast %union.rtunion_def* %arrayidx750 to i64*
  %241 = load i64, i64* %rtwint751, align 8
  %cmp752 = icmp sle i64 %241, 3
  br i1 %cmp752, label %if.then.768, label %if.end.769

cond.false.754:                                   ; preds = %cond.false.741
  br i1 false, label %cond.true.755, label %cond.false.767

cond.true.755:                                    ; preds = %cond.false.754
  %242 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld756 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx757 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld756, i32 0, i64 0
  %rtwint758 = bitcast %union.rtunion_def* %arrayidx757 to i64*
  %243 = load i64, i64* %rtwint758, align 8
  %cmp759 = icmp sge i64 %243, 0
  br i1 %cmp759, label %land.lhs.true.761, label %if.end.769

land.lhs.true.761:                                ; preds = %cond.true.755
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld762 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx763 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld762, i32 0, i64 0
  %rtwint764 = bitcast %union.rtunion_def* %arrayidx763 to i64*
  %245 = load i64, i64* %rtwint764, align 8
  %cmp765 = icmp sle i64 %245, 255
  br i1 %cmp765, label %if.then.768, label %if.end.769

cond.false.767:                                   ; preds = %cond.false.754
  br i1 false, label %if.then.768, label %if.end.769

if.then.768:                                      ; preds = %cond.false.767, %land.lhs.true.761, %land.lhs.true.748, %lor.lhs.false.735, %cond.true.729, %land.lhs.true.722, %land.lhs.true.709, %land.lhs.true.696
  store i32 1, i32* %retval
  br label %return

if.end.769:                                       ; preds = %cond.false.767, %land.lhs.true.761, %cond.true.755, %land.lhs.true.748, %cond.true.742, %lor.lhs.false.735, %land.lhs.true.722, %cond.true.716, %land.lhs.true.709, %cond.true.703, %land.lhs.true.696, %cond.true.690, %sw.bb.684
  br label %sw.epilog

sw.bb.770:                                        ; preds = %while.body
  %246 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %247 = bitcast %struct.rtx_def* %246 to i32*
  %bf.load771 = load i32, i32* %247, align 8
  %bf.clear772 = and i32 %bf.load771, 65535
  %cmp773 = icmp eq i32 %bf.clear772, 54
  br i1 %cmp773, label %land.lhs.true.775, label %if.end.855

land.lhs.true.775:                                ; preds = %sw.bb.770
  br i1 false, label %cond.true.776, label %cond.false.788

cond.true.776:                                    ; preds = %land.lhs.true.775
  %248 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld777 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx778 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld777, i32 0, i64 0
  %rtwint779 = bitcast %union.rtunion_def* %arrayidx778 to i64*
  %249 = load i64, i64* %rtwint779, align 8
  %cmp780 = icmp sge i64 %249, 0
  br i1 %cmp780, label %land.lhs.true.782, label %if.end.855

land.lhs.true.782:                                ; preds = %cond.true.776
  %250 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld783 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx784 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld783, i32 0, i64 0
  %rtwint785 = bitcast %union.rtunion_def* %arrayidx784 to i64*
  %251 = load i64, i64* %rtwint785, align 8
  %cmp786 = icmp sle i64 %251, 31
  br i1 %cmp786, label %if.then.854, label %if.end.855

cond.false.788:                                   ; preds = %land.lhs.true.775
  br i1 false, label %cond.true.789, label %cond.false.801

cond.true.789:                                    ; preds = %cond.false.788
  %252 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld790 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld790, i32 0, i64 0
  %rtwint792 = bitcast %union.rtunion_def* %arrayidx791 to i64*
  %253 = load i64, i64* %rtwint792, align 8
  %cmp793 = icmp sge i64 %253, 0
  br i1 %cmp793, label %land.lhs.true.795, label %if.end.855

land.lhs.true.795:                                ; preds = %cond.true.789
  %254 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld796 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx797 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld796, i32 0, i64 0
  %rtwint798 = bitcast %union.rtunion_def* %arrayidx797 to i64*
  %255 = load i64, i64* %rtwint798, align 8
  %cmp799 = icmp sle i64 %255, 63
  br i1 %cmp799, label %if.then.854, label %if.end.855

cond.false.801:                                   ; preds = %cond.false.788
  br i1 false, label %cond.true.802, label %cond.false.814

cond.true.802:                                    ; preds = %cond.false.801
  %256 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld803 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx804 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld803, i32 0, i64 0
  %rtwint805 = bitcast %union.rtunion_def* %arrayidx804 to i64*
  %257 = load i64, i64* %rtwint805, align 8
  %cmp806 = icmp sge i64 %257, -128
  br i1 %cmp806, label %land.lhs.true.808, label %if.end.855

land.lhs.true.808:                                ; preds = %cond.true.802
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld809 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx810 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld809, i32 0, i64 0
  %rtwint811 = bitcast %union.rtunion_def* %arrayidx810 to i64*
  %259 = load i64, i64* %rtwint811, align 8
  %cmp812 = icmp sle i64 %259, 127
  br i1 %cmp812, label %if.then.854, label %if.end.855

cond.false.814:                                   ; preds = %cond.false.801
  br i1 false, label %cond.true.815, label %cond.false.827

cond.true.815:                                    ; preds = %cond.false.814
  %260 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld816 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %260, i32 0, i32 1
  %arrayidx817 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld816, i32 0, i64 0
  %rtwint818 = bitcast %union.rtunion_def* %arrayidx817 to i64*
  %261 = load i64, i64* %rtwint818, align 8
  %cmp819 = icmp eq i64 %261, 255
  br i1 %cmp819, label %if.then.854, label %lor.lhs.false.821

lor.lhs.false.821:                                ; preds = %cond.true.815
  %262 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld822 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %262, i32 0, i32 1
  %arrayidx823 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld822, i32 0, i64 0
  %rtwint824 = bitcast %union.rtunion_def* %arrayidx823 to i64*
  %263 = load i64, i64* %rtwint824, align 8
  %cmp825 = icmp eq i64 %263, 65535
  br i1 %cmp825, label %if.then.854, label %if.end.855

cond.false.827:                                   ; preds = %cond.false.814
  br i1 false, label %cond.true.828, label %cond.false.840

cond.true.828:                                    ; preds = %cond.false.827
  %264 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld829 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %264, i32 0, i32 1
  %arrayidx830 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld829, i32 0, i64 0
  %rtwint831 = bitcast %union.rtunion_def* %arrayidx830 to i64*
  %265 = load i64, i64* %rtwint831, align 8
  %cmp832 = icmp sge i64 %265, 0
  br i1 %cmp832, label %land.lhs.true.834, label %if.end.855

land.lhs.true.834:                                ; preds = %cond.true.828
  %266 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld835 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %266, i32 0, i32 1
  %arrayidx836 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld835, i32 0, i64 0
  %rtwint837 = bitcast %union.rtunion_def* %arrayidx836 to i64*
  %267 = load i64, i64* %rtwint837, align 8
  %cmp838 = icmp sle i64 %267, 3
  br i1 %cmp838, label %if.then.854, label %if.end.855

cond.false.840:                                   ; preds = %cond.false.827
  br i1 false, label %cond.true.841, label %cond.false.853

cond.true.841:                                    ; preds = %cond.false.840
  %268 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld842 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx843 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld842, i32 0, i64 0
  %rtwint844 = bitcast %union.rtunion_def* %arrayidx843 to i64*
  %269 = load i64, i64* %rtwint844, align 8
  %cmp845 = icmp sge i64 %269, 0
  br i1 %cmp845, label %land.lhs.true.847, label %if.end.855

land.lhs.true.847:                                ; preds = %cond.true.841
  %270 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld848 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %arrayidx849 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld848, i32 0, i64 0
  %rtwint850 = bitcast %union.rtunion_def* %arrayidx849 to i64*
  %271 = load i64, i64* %rtwint850, align 8
  %cmp851 = icmp sle i64 %271, 255
  br i1 %cmp851, label %if.then.854, label %if.end.855

cond.false.853:                                   ; preds = %cond.false.840
  br i1 false, label %if.then.854, label %if.end.855

if.then.854:                                      ; preds = %cond.false.853, %land.lhs.true.847, %land.lhs.true.834, %lor.lhs.false.821, %cond.true.815, %land.lhs.true.808, %land.lhs.true.795, %land.lhs.true.782
  store i32 1, i32* %retval
  br label %return

if.end.855:                                       ; preds = %cond.false.853, %land.lhs.true.847, %cond.true.841, %land.lhs.true.834, %cond.true.828, %lor.lhs.false.821, %land.lhs.true.808, %cond.true.802, %land.lhs.true.795, %cond.true.789, %land.lhs.true.782, %cond.true.776, %sw.bb.770
  br label %sw.epilog

sw.bb.856:                                        ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

sw.bb.857:                                        ; preds = %while.body
  %272 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call858 = call i32 @general_operand(%struct.rtx_def* %272, i32 0)
  %tobool859 = icmp ne i32 %call858, 0
  br i1 %tobool859, label %if.then.860, label %if.end.861

if.then.860:                                      ; preds = %sw.bb.857
  store i32 1, i32* %retval
  br label %return

if.end.861:                                       ; preds = %sw.bb.857
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %273 = load i8, i8* %c, align 1
  %conv862 = sext i8 %273 to i32
  %cmp863 = icmp eq i32 %conv862, 114
  br i1 %cmp863, label %cond.true.865, label %cond.false.866

cond.true.865:                                    ; preds = %sw.default
  br label %cond.end.1008

cond.false.866:                                   ; preds = %sw.default
  %274 = load i8, i8* %c, align 1
  %conv867 = sext i8 %274 to i32
  %cmp868 = icmp eq i32 %conv867, 82
  br i1 %cmp868, label %cond.true.870, label %cond.false.871

cond.true.870:                                    ; preds = %cond.false.866
  br label %cond.end.1006

cond.false.871:                                   ; preds = %cond.false.866
  %275 = load i8, i8* %c, align 1
  %conv872 = sext i8 %275 to i32
  %cmp873 = icmp eq i32 %conv872, 113
  br i1 %cmp873, label %cond.true.875, label %cond.false.878

cond.true.875:                                    ; preds = %cond.false.871
  %276 = load i32, i32* @target_flags, align 4
  %and876 = and i32 %276, 33554432
  %tobool877 = icmp ne i32 %and876, 0
  %cond = select i1 %tobool877, i32 12, i32 8
  br label %cond.end.1004

cond.false.878:                                   ; preds = %cond.false.871
  %277 = load i8, i8* %c, align 1
  %conv879 = sext i8 %277 to i32
  %cmp880 = icmp eq i32 %conv879, 81
  br i1 %cmp880, label %cond.true.882, label %cond.false.883

cond.true.882:                                    ; preds = %cond.false.878
  br label %cond.end.1002

cond.false.883:                                   ; preds = %cond.false.878
  %278 = load i8, i8* %c, align 1
  %conv884 = sext i8 %278 to i32
  %cmp885 = icmp eq i32 %conv884, 102
  br i1 %cmp885, label %cond.true.887, label %cond.false.893

cond.true.887:                                    ; preds = %cond.false.883
  %279 = load i32, i32* @target_flags, align 4
  %and888 = and i32 %279, 1
  %tobool889 = icmp ne i32 %and888, 0
  br i1 %tobool889, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.887
  %280 = load i32, i32* @target_flags, align 4
  %and890 = and i32 %280, 32
  %tobool891 = icmp ne i32 %and890, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.887
  %281 = phi i1 [ true, %cond.true.887 ], [ %tobool891, %lor.rhs ]
  %cond892 = select i1 %281, i32 15, i32 0
  br label %cond.end.1000

cond.false.893:                                   ; preds = %cond.false.883
  %282 = load i8, i8* %c, align 1
  %conv894 = sext i8 %282 to i32
  %cmp895 = icmp eq i32 %conv894, 116
  br i1 %cmp895, label %cond.true.897, label %cond.false.905

cond.true.897:                                    ; preds = %cond.false.893
  %283 = load i32, i32* @target_flags, align 4
  %and898 = and i32 %283, 1
  %tobool899 = icmp ne i32 %and898, 0
  br i1 %tobool899, label %lor.end.903, label %lor.rhs.900

lor.rhs.900:                                      ; preds = %cond.true.897
  %284 = load i32, i32* @target_flags, align 4
  %and901 = and i32 %284, 32
  %tobool902 = icmp ne i32 %and901, 0
  br label %lor.end.903

lor.end.903:                                      ; preds = %lor.rhs.900, %cond.true.897
  %285 = phi i1 [ true, %cond.true.897 ], [ %tobool902, %lor.rhs.900 ]
  %cond904 = select i1 %285, i32 13, i32 0
  br label %cond.end.998

cond.false.905:                                   ; preds = %cond.false.893
  %286 = load i8, i8* %c, align 1
  %conv906 = sext i8 %286 to i32
  %cmp907 = icmp eq i32 %conv906, 117
  br i1 %cmp907, label %cond.true.909, label %cond.false.917

cond.true.909:                                    ; preds = %cond.false.905
  %287 = load i32, i32* @target_flags, align 4
  %and910 = and i32 %287, 1
  %tobool911 = icmp ne i32 %and910, 0
  br i1 %tobool911, label %lor.end.915, label %lor.rhs.912

lor.rhs.912:                                      ; preds = %cond.true.909
  %288 = load i32, i32* @target_flags, align 4
  %and913 = and i32 %288, 32
  %tobool914 = icmp ne i32 %and913, 0
  br label %lor.end.915

lor.end.915:                                      ; preds = %lor.rhs.912, %cond.true.909
  %289 = phi i1 [ true, %cond.true.909 ], [ %tobool914, %lor.rhs.912 ]
  %cond916 = select i1 %289, i32 14, i32 0
  br label %cond.end.996

cond.false.917:                                   ; preds = %cond.false.905
  %290 = load i8, i8* %c, align 1
  %conv918 = sext i8 %290 to i32
  %cmp919 = icmp eq i32 %conv918, 97
  br i1 %cmp919, label %cond.true.921, label %cond.false.922

cond.true.921:                                    ; preds = %cond.false.917
  br label %cond.end.994

cond.false.922:                                   ; preds = %cond.false.917
  %291 = load i8, i8* %c, align 1
  %conv923 = sext i8 %291 to i32
  %cmp924 = icmp eq i32 %conv923, 98
  br i1 %cmp924, label %cond.true.926, label %cond.false.927

cond.true.926:                                    ; preds = %cond.false.922
  br label %cond.end.992

cond.false.927:                                   ; preds = %cond.false.922
  %292 = load i8, i8* %c, align 1
  %conv928 = sext i8 %292 to i32
  %cmp929 = icmp eq i32 %conv928, 99
  br i1 %cmp929, label %cond.true.931, label %cond.false.932

cond.true.931:                                    ; preds = %cond.false.927
  br label %cond.end.990

cond.false.932:                                   ; preds = %cond.false.927
  %293 = load i8, i8* %c, align 1
  %conv933 = sext i8 %293 to i32
  %cmp934 = icmp eq i32 %conv933, 100
  br i1 %cmp934, label %cond.true.936, label %cond.false.937

cond.true.936:                                    ; preds = %cond.false.932
  br label %cond.end.988

cond.false.937:                                   ; preds = %cond.false.932
  %294 = load i8, i8* %c, align 1
  %conv938 = sext i8 %294 to i32
  %cmp939 = icmp eq i32 %conv938, 120
  br i1 %cmp939, label %cond.true.941, label %cond.false.946

cond.true.941:                                    ; preds = %cond.false.937
  %295 = load i32, i32* @target_flags, align 4
  %and942 = and i32 %295, 327680
  %cmp943 = icmp ne i32 %and942, 0
  %cond945 = select i1 %cmp943, i32 16, i32 0
  br label %cond.end.986

cond.false.946:                                   ; preds = %cond.false.937
  %296 = load i8, i8* %c, align 1
  %conv947 = sext i8 %296 to i32
  %cmp948 = icmp eq i32 %conv947, 89
  br i1 %cmp948, label %cond.true.950, label %cond.false.955

cond.true.950:                                    ; preds = %cond.false.946
  %297 = load i32, i32* @target_flags, align 4
  %and951 = and i32 %297, 262144
  %cmp952 = icmp ne i32 %and951, 0
  %cond954 = select i1 %cmp952, i32 16, i32 0
  br label %cond.end.984

cond.false.955:                                   ; preds = %cond.false.946
  %298 = load i8, i8* %c, align 1
  %conv956 = sext i8 %298 to i32
  %cmp957 = icmp eq i32 %conv956, 121
  br i1 %cmp957, label %cond.true.959, label %cond.false.964

cond.true.959:                                    ; preds = %cond.false.955
  %299 = load i32, i32* @target_flags, align 4
  %and960 = and i32 %299, 16384
  %cmp961 = icmp ne i32 %and960, 0
  %cond963 = select i1 %cmp961, i32 17, i32 0
  br label %cond.end.982

cond.false.964:                                   ; preds = %cond.false.955
  %300 = load i8, i8* %c, align 1
  %conv965 = sext i8 %300 to i32
  %cmp966 = icmp eq i32 %conv965, 65
  br i1 %cmp966, label %cond.true.968, label %cond.false.969

cond.true.968:                                    ; preds = %cond.false.964
  br label %cond.end.980

cond.false.969:                                   ; preds = %cond.false.964
  %301 = load i8, i8* %c, align 1
  %conv970 = sext i8 %301 to i32
  %cmp971 = icmp eq i32 %conv970, 68
  br i1 %cmp971, label %cond.true.973, label %cond.false.974

cond.true.973:                                    ; preds = %cond.false.969
  br label %cond.end

cond.false.974:                                   ; preds = %cond.false.969
  %302 = load i8, i8* %c, align 1
  %conv975 = sext i8 %302 to i32
  %cmp976 = icmp eq i32 %conv975, 83
  %cond978 = select i1 %cmp976, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.974, %cond.true.973
  %cond979 = phi i32 [ 6, %cond.true.973 ], [ %cond978, %cond.false.974 ]
  br label %cond.end.980

cond.end.980:                                     ; preds = %cond.end, %cond.true.968
  %cond981 = phi i32 [ 7, %cond.true.968 ], [ %cond979, %cond.end ]
  br label %cond.end.982

cond.end.982:                                     ; preds = %cond.end.980, %cond.true.959
  %cond983 = phi i32 [ %cond963, %cond.true.959 ], [ %cond981, %cond.end.980 ]
  br label %cond.end.984

cond.end.984:                                     ; preds = %cond.end.982, %cond.true.950
  %cond985 = phi i32 [ %cond954, %cond.true.950 ], [ %cond983, %cond.end.982 ]
  br label %cond.end.986

cond.end.986:                                     ; preds = %cond.end.984, %cond.true.941
  %cond987 = phi i32 [ %cond945, %cond.true.941 ], [ %cond985, %cond.end.984 ]
  br label %cond.end.988

cond.end.988:                                     ; preds = %cond.end.986, %cond.true.936
  %cond989 = phi i32 [ 2, %cond.true.936 ], [ %cond987, %cond.end.986 ]
  br label %cond.end.990

cond.end.990:                                     ; preds = %cond.end.988, %cond.true.931
  %cond991 = phi i32 [ 3, %cond.true.931 ], [ %cond989, %cond.end.988 ]
  br label %cond.end.992

cond.end.992:                                     ; preds = %cond.end.990, %cond.true.926
  %cond993 = phi i32 [ 4, %cond.true.926 ], [ %cond991, %cond.end.990 ]
  br label %cond.end.994

cond.end.994:                                     ; preds = %cond.end.992, %cond.true.921
  %cond995 = phi i32 [ 1, %cond.true.921 ], [ %cond993, %cond.end.992 ]
  br label %cond.end.996

cond.end.996:                                     ; preds = %cond.end.994, %lor.end.915
  %cond997 = phi i32 [ %cond916, %lor.end.915 ], [ %cond995, %cond.end.994 ]
  br label %cond.end.998

cond.end.998:                                     ; preds = %cond.end.996, %lor.end.903
  %cond999 = phi i32 [ %cond904, %lor.end.903 ], [ %cond997, %cond.end.996 ]
  br label %cond.end.1000

cond.end.1000:                                    ; preds = %cond.end.998, %lor.end
  %cond1001 = phi i32 [ %cond892, %lor.end ], [ %cond999, %cond.end.998 ]
  br label %cond.end.1002

cond.end.1002:                                    ; preds = %cond.end.1000, %cond.true.882
  %cond1003 = phi i32 [ 8, %cond.true.882 ], [ %cond1001, %cond.end.1000 ]
  br label %cond.end.1004

cond.end.1004:                                    ; preds = %cond.end.1002, %cond.true.875
  %cond1005 = phi i32 [ %cond, %cond.true.875 ], [ %cond1003, %cond.end.1002 ]
  br label %cond.end.1006

cond.end.1006:                                    ; preds = %cond.end.1004, %cond.true.870
  %cond1007 = phi i32 [ 11, %cond.true.870 ], [ %cond1005, %cond.end.1004 ]
  br label %cond.end.1008

cond.end.1008:                                    ; preds = %cond.end.1006, %cond.true.865
  %cond1009 = phi i32 [ 12, %cond.true.865 ], [ %cond1007, %cond.end.1006 ]
  %cmp1010 = icmp ne i32 %cond1009, 0
  br i1 %cmp1010, label %if.then.1012, label %if.end.1025

if.then.1012:                                     ; preds = %cond.end.1008
  br label %sw.bb.1013

sw.bb.1013:                                       ; preds = %while.body, %if.then.1012
  %303 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load1014 = load i32, i32* %304, align 8
  %bf.lshr1015 = lshr i32 %bf.load1014, 16
  %bf.clear1016 = and i32 %bf.lshr1015, 255
  %cmp1017 = icmp eq i32 %bf.clear1016, 51
  br i1 %cmp1017, label %if.then.1019, label %if.end.1020

if.then.1019:                                     ; preds = %sw.bb.1013
  br label %sw.epilog

if.end.1020:                                      ; preds = %sw.bb.1013
  %305 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call1021 = call i32 @register_operand(%struct.rtx_def* %305, i32 0)
  %tobool1022 = icmp ne i32 %call1021, 0
  br i1 %tobool1022, label %if.then.1023, label %if.end.1024

if.then.1023:                                     ; preds = %if.end.1020
  store i32 1, i32* %retval
  br label %return

if.end.1024:                                      ; preds = %if.end.1020
  br label %if.end.1025

if.end.1025:                                      ; preds = %if.end.1024, %cond.end.1008
  %306 = load i8, i8* %c, align 1
  %conv1026 = sext i8 %306 to i32
  %cmp1027 = icmp eq i32 %conv1026, 101
  br i1 %cmp1027, label %cond.true.1029, label %cond.false.1032

cond.true.1029:                                   ; preds = %if.end.1025
  %307 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call1030 = call i32 @x86_64_sign_extended_value(%struct.rtx_def* %307)
  %tobool1031 = icmp ne i32 %call1030, 0
  br i1 %tobool1031, label %if.then.1040, label %if.end.1041

cond.false.1032:                                  ; preds = %if.end.1025
  %308 = load i8, i8* %c, align 1
  %conv1033 = sext i8 %308 to i32
  %cmp1034 = icmp eq i32 %conv1033, 90
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1039

cond.true.1036:                                   ; preds = %cond.false.1032
  %309 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call1037 = call i32 @x86_64_zero_extended_value(%struct.rtx_def* %309)
  %tobool1038 = icmp ne i32 %call1037, 0
  br i1 %tobool1038, label %if.then.1040, label %if.end.1041

cond.false.1039:                                  ; preds = %cond.false.1032
  br i1 false, label %if.then.1040, label %if.end.1041

if.then.1040:                                     ; preds = %cond.false.1039, %cond.true.1036, %cond.true.1029
  store i32 1, i32* %retval
  br label %return

if.end.1041:                                      ; preds = %cond.false.1039, %cond.true.1036, %cond.true.1029
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.1041, %if.then.1019, %if.end.861, %if.end.855, %if.end.769, %if.end.683, %if.end.597, %if.end.511, %if.end.425, %if.end.339, %if.end.253, %if.end.169, %if.end.151, %if.then.85, %if.end.70, %if.end.54, %if.end.41, %if.end.34, %if.end.27, %if.end.23, %if.end.18, %if.end.13, %while.end, %sw.bb
  br label %while.cond

while.end.1042:                                   ; preds = %while.cond
  %310 = load i32, i32* %result, align 4
  store i32 %310, i32* %retval
  br label %return

return:                                           ; preds = %while.end.1042, %if.then.1040, %if.then.1023, %if.then.860, %sw.bb.856, %if.then.854, %if.then.768, %if.then.682, %if.then.596, %if.then.510, %if.then.424, %if.then.338, %if.then.252, %if.then.168, %if.then.150, %if.then.69, %if.then.53, %if.then.40, %if.then.33, %if.then.26, %if.then.22, %if.then.17, %if.then.12
  %311 = load i32, i32* %retval
  ret i32 %311
}

; Function Attrs: nounwind uwtable
define i32 @validate_change(%struct.rtx_def* %object, %struct.rtx_def** %loc, %struct.rtx_def* %new, i32 %in_group) #0 {
entry:
  %retval = alloca i32, align 4
  %object.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %new.addr = alloca %struct.rtx_def*, align 8
  %in_group.addr = alloca i32, align 4
  %old = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %object, %struct.rtx_def** %object.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %new, %struct.rtx_def** %new.addr, align 8
  store i32 %in_group, i32* %in_group.addr, align 4
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %old, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %old, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %old, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %in_group.addr, align 4
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* @num_changes, align 4
  %cmp2 = icmp ne i32 %7, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.validate_change, i32 0, i32 0)) #5
  unreachable

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %new.addr, align 8
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %9, align 8
  %10 = load i32, i32* @num_changes, align 4
  %11 = load i32, i32* @changes_allocated, align 4
  %cmp5 = icmp sge i32 %10, %11
  br i1 %cmp5, label %if.then.6, label %if.end.12

if.then.6:                                        ; preds = %if.end.4
  %12 = load i32, i32* @changes_allocated, align 4
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  store i32 150, i32* @changes_allocated, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.then.6
  %13 = load i32, i32* @changes_allocated, align 4
  %mul = mul nsw i32 %13, 2
  store i32 %mul, i32* @changes_allocated, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %14 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %15 = bitcast %struct.change_t* %14 to i8*
  %16 = load i32, i32* @changes_allocated, align 4
  %conv = sext i32 %16 to i64
  %mul10 = mul i64 32, %conv
  %call11 = call i8* @xrealloc(i8* %15, i64 %mul10)
  %17 = bitcast i8* %call11 to %struct.change_t*
  store %struct.change_t* %17, %struct.change_t** @changes, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.9, %if.end.4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %19 = load i32, i32* @num_changes, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx = getelementptr inbounds %struct.change_t, %struct.change_t* %20, i64 %idxprom
  %object13 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx, i32 0, i32 0
  store %struct.rtx_def* %18, %struct.rtx_def** %object13, align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %22 = load i32, i32* @num_changes, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx15 = getelementptr inbounds %struct.change_t, %struct.change_t* %23, i64 %idxprom14
  %loc16 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx15, i32 0, i32 2
  store %struct.rtx_def** %21, %struct.rtx_def*** %loc16, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %old, align 8
  %25 = load i32, i32* @num_changes, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx18 = getelementptr inbounds %struct.change_t, %struct.change_t* %26, i64 %idxprom17
  %old19 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx18, i32 0, i32 3
  store %struct.rtx_def* %24, %struct.rtx_def** %old19, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %tobool20 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.31

land.lhs.true.21:                                 ; preds = %if.end.12
  %28 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load = load i32, i32* %29, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp22 = icmp ne i32 %bf.clear, 66
  br i1 %cmp22, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %land.lhs.true.21
  %30 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx25 to i32*
  %31 = load i32, i32* %rtint, align 4
  %32 = load i32, i32* @num_changes, align 4
  %idxprom26 = sext i32 %32 to i64
  %33 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx27 = getelementptr inbounds %struct.change_t, %struct.change_t* %33, i64 %idxprom26
  %old_code = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx27, i32 0, i32 1
  store i32 %31, i32* %old_code, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 4
  %rtint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  store i32 -1, i32* %rtint30, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.24, %land.lhs.true.21, %if.end.12
  %35 = load i32, i32* @num_changes, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* @num_changes, align 4
  %36 = load i32, i32* %in_group.addr, align 4
  %tobool32 = icmp ne i32 %36, 0
  br i1 %tobool32, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %if.end.31
  store i32 1, i32* %retval
  br label %return

if.else.34:                                       ; preds = %if.end.31
  %call35 = call i32 @apply_change_group()
  store i32 %call35, i32* %retval
  br label %return

return:                                           ; preds = %if.else.34, %if.then.33, %if.then
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @apply_change_group() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %last_validated = alloca %struct.rtx_def*, align 8
  %object = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %newpat = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %last_validated, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @num_changes, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx = getelementptr inbounds %struct.change_t, %struct.change_t* %3, i64 %idxprom
  %object1 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %object1, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %object, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %cmp2 = icmp eq %struct.rtx_def* %5, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %last_validated, align 8
  %cmp3 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.92

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 66
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load6, 16
  %bf.clear7 = and i32 %bf.lshr, 255
  %12 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @memory_address_p(i32 %bf.clear7, %struct.rtx_def* %13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.then.5
  br label %for.end.94

if.end.10:                                        ; preds = %if.then.5
  br label %if.end.91

if.else:                                          ; preds = %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %call11 = call i32 @insn_invalid_p(%struct.rtx_def* %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.90

if.then.13:                                       ; preds = %if.else
  %15 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %pat, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load17 = load i32, i32* %18, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 39
  br i1 %cmp19, label %land.lhs.true, label %if.else.80

land.lhs.true:                                    ; preds = %if.then.13
  %19 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 0
  %21 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %21, 1
  %idxprom22 = sext i32 %sub to i64
  %22 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtvec25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec25, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom22
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load27 = load i32, i32* %25, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 49
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.80

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call i32 @asm_noperands(%struct.rtx_def* %27)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.80

if.then.36:                                       ; preds = %land.lhs.true.30
  %28 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtvec39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec39, align 8
  %num_elem40 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 0
  %30 = load i32, i32* %num_elem40, align 4
  %cmp41 = icmp eq i32 %30, 2
  br i1 %cmp41, label %if.then.42, label %if.else.48

if.then.42:                                       ; preds = %if.then.36
  %31 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtvec45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec45, align 8
  %elem46 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem46, i32 0, i64 0
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx47, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %newpat, align 8
  br label %if.end.75

if.else.48:                                       ; preds = %if.then.36
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtvec51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtvec_def**
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec51, align 8
  %num_elem52 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i32 0, i32 0
  %36 = load i32, i32* %num_elem52, align 4
  %sub53 = sub nsw i32 %36, 1
  %call54 = call %struct.rtvec_def* @rtvec_alloc(i32 %sub53)
  %call55 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 39, i32 0, %struct.rtvec_def* %call54)
  store %struct.rtx_def* %call55, %struct.rtx_def** %newpat, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %if.else.48
  %37 = load i32, i32* %j, align 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtvec59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtvec_def**
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec59, align 8
  %num_elem60 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i32 0, i32 0
  %40 = load i32, i32* %num_elem60, align 4
  %cmp61 = icmp slt i32 %37, %40
  br i1 %cmp61, label %for.body.62, label %for.end

for.body.62:                                      ; preds = %for.cond.56
  %41 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtvec66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec66, align 8
  %elem67 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem67, i32 0, i64 %idxprom63
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx68, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtvec72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**
  %47 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec72, align 8
  %elem73 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %47, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem73, i32 0, i64 %idxprom69
  store %struct.rtx_def* %44, %struct.rtx_def** %arrayidx74, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.62
  %48 = load i32, i32* %j, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.56

for.end:                                          ; preds = %for.cond.56
  br label %if.end.75

if.end.75:                                        ; preds = %for.end, %if.then.42
  %49 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 3
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  %call79 = call i32 @validate_change(%struct.rtx_def* %49, %struct.rtx_def** %rtx78, %struct.rtx_def* %51, i32 1)
  br label %for.inc.92

if.else.80:                                       ; preds = %land.lhs.true.30, %land.lhs.true, %if.then.13
  %52 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load81 = load i32, i32* %53, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 48
  br i1 %cmp83, label %if.then.88, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %if.else.80
  %54 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load85 = load i32, i32* %55, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 49
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %lor.lhs.false.84, %if.else.80
  br label %for.inc.92

if.else.89:                                       ; preds = %lor.lhs.false.84
  br label %for.end.94

if.end.90:                                        ; preds = %if.else
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.10
  %56 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %last_validated, align 8
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91, %if.then.88, %if.end.75, %if.then
  %57 = load i32, i32* %i, align 4
  %inc93 = add nsw i32 %57, 1
  store i32 %inc93, i32* %i, align 4
  br label %for.cond

for.end.94:                                       ; preds = %if.else.89, %if.then.9, %for.cond
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* @num_changes, align 4
  %cmp95 = icmp eq i32 %58, %59
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %for.end.94
  store i32 0, i32* @num_changes, align 4
  store i32 1, i32* %retval
  br label %return

if.else.97:                                       ; preds = %for.end.94
  call void @cancel_changes(i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.97, %if.then.96
  %60 = load i32, i32* %retval
  ret i32 %60
}

; Function Attrs: nounwind uwtable
define i32 @insn_invalid_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %num_clobbers = alloca i32, align 4
  %icode = alloca i32, align 4
  %is_asm = alloca i32, align 4
  %newpat = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %pat, align 8
  store i32 0, i32* %num_clobbers, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %cond.false, label %land.lhs.true.1

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %7 = load i32, i32* @reload_in_progress, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true.1
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %num_clobbers, %cond.true ], [ null, %cond.false ]
  %call = call i32 @recog(%struct.rtx_def* %2, %struct.rtx_def* %3, i32* %cond)
  store i32 %call, i32* %icode, align 4
  %8 = load i32, i32* %icode, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %cond.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %call7 = call i32 @asm_noperands(%struct.rtx_def* %10)
  %cmp8 = icmp sge i32 %call7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.end
  %11 = phi i1 [ false, %cond.end ], [ %cmp8, %land.rhs ]
  %land.ext = zext i1 %11 to i32
  store i32 %land.ext, i32* %is_asm, align 4
  %12 = load i32, i32* %is_asm, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %land.lhs.true.10, label %lor.lhs.false

land.lhs.true.10:                                 ; preds = %land.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %call14 = call i32 @check_asm_operands(%struct.rtx_def* %14)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.10, %land.end
  %15 = load i32, i32* %is_asm, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.end, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %icode, align 4
  %cmp18 = icmp slt i32 %16, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.17, %land.lhs.true.10
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.17, %lor.lhs.false
  %17 = load i32, i32* %num_clobbers, align 4
  %cmp19 = icmp sgt i32 %17, 0
  br i1 %cmp19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end
  %18 = load i32, i32* %icode, align 4
  %call21 = call i32 @added_clobbers_hard_reg_p(i32 %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.20
  store i32 1, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.20
  %19 = load i32, i32* %num_clobbers, align 4
  %add = add nsw i32 %19, 1
  %call25 = call %struct.rtvec_def* @rtvec_alloc(i32 %add)
  %call26 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 39, i32 0, %struct.rtvec_def* %call25)
  store %struct.rtx_def* %call26, %struct.rtx_def** %newpat, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  store %struct.rtx_def* %20, %struct.rtx_def** %arrayidx29, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  %24 = load i32, i32* %icode, align 4
  call void @add_clobbers(%struct.rtx_def* %23, i32 %24)
  %25 = load %struct.rtx_def*, %struct.rtx_def** %newpat, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %pat, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  store %struct.rtx_def* %25, %struct.rtx_def** %rtx32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.24, %if.end
  %27 = load i32, i32* @reload_completed, align 4
  %tobool34 = icmp ne i32 %27, 0
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %if.end.33
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %28)
  %call36 = call i32 @constrain_operands(i32 1)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.then.35
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.then.35
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end.33
  %29 = load i32, i32* %icode, align 4
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx42 to i32*
  store i32 %29, i32* %rtint, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.38, %if.then.23, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @added_clobbers_hard_reg_p(i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_E(i32, i32, %struct.rtvec_def*) #1

declare %struct.rtvec_def* @rtvec_alloc(i32) #1

declare void @add_clobbers(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @memory_address_p(i32 %mode, %struct.rtx_def* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 70
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load i32, i32* %mode.addr, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call i32 @legitimate_address_p(i32 %2, %struct.rtx_def* %3, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.body
  br label %win

if.end.2:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.2
  store i32 0, i32* %retval
  br label %return

win:                                              ; preds = %if.then.1
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %win, %do.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @cancel_changes(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  %0 = load i32, i32* @num_changes, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %num.addr, align 4
  %cmp = icmp sge i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx = getelementptr inbounds %struct.change_t, %struct.change_t* %4, i64 %idxprom
  %old = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %old, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx2 = getelementptr inbounds %struct.change_t, %struct.change_t* %7, i64 %idxprom1
  %loc = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx2, i32 0, i32 2
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %loc, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %8, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx4 = getelementptr inbounds %struct.change_t, %struct.change_t* %10, i64 %idxprom3
  %object = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx4, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %object, align 8
  %tobool = icmp ne %struct.rtx_def* %11, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx6 = getelementptr inbounds %struct.change_t, %struct.change_t* %13, i64 %idxprom5
  %object7 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx6, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %object7, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp8 = icmp ne i32 %bf.clear, 66
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %16 to i64
  %17 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx10 = getelementptr inbounds %struct.change_t, %struct.change_t* %17, i64 %idxprom9
  %old_code = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx10, i32 0, i32 1
  %18 = load i32, i32* %old_code, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.change_t*, %struct.change_t** @changes, align 8
  %arrayidx12 = getelementptr inbounds %struct.change_t, %struct.change_t* %20, i64 %idxprom11
  %object13 = getelementptr inbounds %struct.change_t, %struct.change_t* %arrayidx12, i32 0, i32 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %object13, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  store i32 %18, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %num.addr, align 4
  store i32 %23, i32* @num_changes, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @num_validated_changes() #0 {
entry:
  %0 = load i32, i32* @num_changes, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @validate_replace_rtx_subexp(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %insn, %struct.rtx_def** %loc) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %0, %struct.rtx_def* %1, %struct.rtx_def* %2, %struct.rtx_def* %3)
  %call = call i32 @apply_change_group()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @validate_replace_rtx_1(%struct.rtx_def** %loc, %struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %object) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def**, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %object.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %op0_mode = alloca i32, align 4
  %prev_changes = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  %wanted_mode = alloca i32, align 4
  %is_mode = alloca i32, align 4
  %pos = alloca i32, align 4
  %new_mode = alloca i32, align 4
  %new_mode345 = alloca i32, align 4
  %offset = alloca i32, align 4
  %newmem = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %object, %struct.rtx_def** %object.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  store i32 0, i32* %op0_mode, align 4
  %2 = load i32, i32* @num_changes, align 4
  store i32 %2, i32* %prev_changes, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %6 = load i32, i32* %code, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %fmt, align 8
  %8 = load i8*, i8** %fmt, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %8, i64 0
  %9 = load i8, i8* %arrayidx1, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, 101
  br i1 %cmp, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load5 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load5, 16
  %bf.clear6 = and i32 %bf.lshr, 255
  store i32 %bf.clear6, i32* %op0_mode, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %cmp8 = icmp eq %struct.rtx_def* %13, %14
  br i1 %cmp8, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load10 = load i32, i32* %16, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 61
  br i1 %cmp12, label %land.lhs.true, label %lor.lhs.false.35

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load14 = load i32, i32* %18, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 61
  br i1 %cmp16, label %land.lhs.true.18, label %lor.lhs.false.35

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 16
  %bf.clear21 = and i32 %bf.lshr20, 255
  %21 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load22 = load i32, i32* %22, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %cmp25 = icmp eq i32 %bf.clear21, %bf.clear24
  br i1 %cmp25, label %land.lhs.true.27, label %lor.lhs.false.35

land.lhs.true.27:                                 ; preds = %land.lhs.true.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %24 = load i32, i32* %rtuint, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtuint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %26 = load i32, i32* %rtuint32, align 4
  %cmp33 = icmp eq i32 %24, %26
  br i1 %cmp33, label %if.then.53, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.27, %land.lhs.true.18, %land.lhs.true, %lor.lhs.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load36 = load i32, i32* %28, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %29 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load38 = load i32, i32* %30, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear37, %bf.clear39
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.55

land.lhs.true.42:                                 ; preds = %lor.lhs.false.35
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load43 = load i32, i32* %32, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 16
  %bf.clear45 = and i32 %bf.lshr44, 255
  %33 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load46 = load i32, i32* %34, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %cmp49 = icmp eq i32 %bf.clear45, %bf.clear48
  br i1 %cmp49, label %land.lhs.true.51, label %if.end.55

land.lhs.true.51:                                 ; preds = %land.lhs.true.42
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %35, %struct.rtx_def* %36)
  %tobool52 = icmp ne i32 %call, 0
  br i1 %tobool52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true.51, %land.lhs.true.27, %if.end.7
  %37 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call54 = call i32 @validate_change(%struct.rtx_def* %37, %struct.rtx_def** %38, %struct.rtx_def* %39, i32 1)
  br label %sw.epilog

if.end.55:                                        ; preds = %land.lhs.true.51, %land.lhs.true.42, %lor.lhs.false.35
  %40 = load i32, i32* %code, align 4
  %idxprom56 = sext i32 %40 to i64
  %arrayidx57 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom56
  %41 = load i8, i8* %arrayidx57, align 1
  %conv58 = zext i8 %41 to i32
  %sub = sub nsw i32 %conv58, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.93, %if.end.55
  %42 = load i32, i32* %i, align 4
  %cmp59 = icmp sge i32 %42, 0
  br i1 %cmp59, label %for.body, label %for.end.95

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %43 to i64
  %44 = load i8*, i8** %fmt, align 8
  %arrayidx62 = getelementptr inbounds i8, i8* %44, i64 %idxprom61
  %45 = load i8, i8* %arrayidx62, align 1
  %conv63 = sext i8 %45 to i32
  %cmp64 = icmp eq i32 %conv63, 101
  br i1 %cmp64, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %for.body
  %46 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 %idxprom67
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %rtx70, %struct.rtx_def* %48, %struct.rtx_def* %49, %struct.rtx_def* %50)
  br label %if.end.92

if.else:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %51 to i64
  %52 = load i8*, i8** %fmt, align 8
  %arrayidx72 = getelementptr inbounds i8, i8* %52, i64 %idxprom71
  %53 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %53 to i32
  %cmp74 = icmp eq i32 %conv73, 69
  br i1 %cmp74, label %if.then.76, label %if.end.91

if.then.76:                                       ; preds = %if.else
  %54 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 %idxprom77
  %rtvec = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtvec_def**
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i32 0, i32 0
  %57 = load i32, i32* %num_elem, align 4
  %sub80 = sub nsw i32 %57, 1
  store i32 %sub80, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc, %if.then.76
  %58 = load i32, i32* %j, align 4
  %cmp82 = icmp sge i32 %58, 0
  br i1 %cmp82, label %for.body.84, label %for.end

for.body.84:                                      ; preds = %for.cond.81
  %59 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %59 to i64
  %60 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %60 to i64
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 %idxprom86
  %rtvec89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtvec_def**
  %62 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec89, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %62, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom85
  %63 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %arrayidx90, %struct.rtx_def* %63, %struct.rtx_def* %64, %struct.rtx_def* %65)
  br label %for.inc

for.inc:                                          ; preds = %for.body.84
  %66 = load i32, i32* %j, align 4
  %dec = add nsw i32 %66, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.81

for.end:                                          ; preds = %for.cond.81
  br label %if.end.91

if.end.91:                                        ; preds = %for.end, %if.else
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.66
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %67 = load i32, i32* %i, align 4
  %dec94 = add nsw i32 %67, -1
  store i32 %dec94, i32* %i, align 4
  br label %for.cond

for.end.95:                                       ; preds = %for.cond
  %68 = load i32, i32* @num_changes, align 4
  %69 = load i32, i32* %prev_changes, align 4
  %cmp96 = icmp eq i32 %68, %69
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.end.95
  br label %sw.epilog

if.end.99:                                        ; preds = %for.end.95
  %70 = load i8*, i8** %fmt, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %71 to i32
  %cmp102 = icmp eq i32 %conv101, 101
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.120

land.lhs.true.104:                                ; preds = %if.end.99
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load108 = load i32, i32* %74, align 8
  %bf.lshr109 = lshr i32 %bf.load108, 16
  %bf.clear110 = and i32 %bf.lshr109, 255
  %cmp111 = icmp ne i32 %bf.clear110, 0
  br i1 %cmp111, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %land.lhs.true.104
  %75 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load117 = load i32, i32* %77, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  store i32 %bf.clear119, i32* %op0_mode, align 4
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.113, %land.lhs.true.104, %if.end.99
  %78 = load i32, i32* %code, align 4
  %idxprom121 = sext i32 %78 to i64
  %arrayidx122 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom121
  %79 = load i8, i8* %arrayidx122, align 1
  %conv123 = sext i8 %79 to i32
  %cmp124 = icmp eq i32 %conv123, 60
  br i1 %cmp124, label %land.lhs.true.132, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %if.end.120
  %80 = load i32, i32* %code, align 4
  %idxprom127 = sext i32 %80 to i64
  %arrayidx128 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom127
  %81 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %81 to i32
  %cmp130 = icmp eq i32 %conv129, 99
  br i1 %cmp130, label %land.lhs.true.132, label %if.end.161

land.lhs.true.132:                                ; preds = %lor.lhs.false.126, %if.end.120
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 1
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  %call139 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %83, %struct.rtx_def* %85)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.161

if.then.141:                                      ; preds = %land.lhs.true.132
  %86 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %87 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %88 = load i32, i32* %code, align 4
  %idxprom142 = sext i32 %88 to i64
  %arrayidx143 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom142
  %89 = load i8, i8* %arrayidx143, align 1
  %conv144 = sext i8 %89 to i32
  %cmp145 = icmp eq i32 %conv144, 99
  br i1 %cmp145, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.141
  %90 = load i32, i32* %code, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.141
  %91 = load i32, i32* %code, align 4
  %call147 = call i32 @swap_condition(i32 %91)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %90, %cond.true ], [ %call147, %cond.false ]
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load148 = load i32, i32* %93, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 16
  %bf.clear150 = and i32 %bf.lshr149, 255
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 1
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %call157 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %cond, i32 %bf.clear150, %struct.rtx_def* %95, %struct.rtx_def* %97)
  %call158 = call i32 @validate_change(%struct.rtx_def* %86, %struct.rtx_def** %87, %struct.rtx_def* %call157, i32 1)
  %98 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %98, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %x, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load159 = load i32, i32* %101, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  store i32 %bf.clear160, i32* %code, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %cond.end, %land.lhs.true.132, %lor.lhs.false.126
  %102 = load i32, i32* %code, align 4
  switch i32 %102, label %sw.default [
    i32 75, label %sw.bb
    i32 76, label %sw.bb.182
    i32 121, label %sw.bb.218
    i32 120, label %sw.bb.218
    i32 63, label %sw.bb.244
    i32 133, label %sw.bb.275
    i32 132, label %sw.bb.275
  ]

sw.bb:                                            ; preds = %if.end.161
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 1
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx164, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load165 = load i32, i32* %105, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %cmp167 = icmp eq i32 %bf.clear166, 54
  br i1 %cmp167, label %if.then.169, label %if.end.181

if.then.169:                                      ; preds = %sw.bb
  %106 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load170 = load i32, i32* %109, align 8
  %bf.lshr171 = lshr i32 %bf.load170, 16
  %bf.clear172 = and i32 %bf.lshr171, 255
  %110 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  %111 = load %struct.rtx_def*, %struct.rtx_def** %rtx175, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 1
  %rtx178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx178, align 8
  %call179 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %bf.clear172, %struct.rtx_def* %111, %struct.rtx_def* %113)
  %call180 = call i32 @validate_change(%struct.rtx_def* %106, %struct.rtx_def** %107, %struct.rtx_def* %call179, i32 1)
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.169, %sw.bb
  br label %sw.epilog

sw.bb.182:                                        ; preds = %if.end.161
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 1
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load186 = load i32, i32* %116, align 8
  %bf.clear187 = and i32 %bf.load186, 65535
  %cmp188 = icmp eq i32 %bf.clear187, 54
  br i1 %cmp188, label %if.then.198, label %lor.lhs.false.190

lor.lhs.false.190:                                ; preds = %sw.bb.182
  %117 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 1
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load194 = load i32, i32* %119, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp eq i32 %bf.clear195, 55
  br i1 %cmp196, label %if.then.198, label %if.end.217

if.then.198:                                      ; preds = %lor.lhs.false.190, %sw.bb.182
  %120 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %121 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load199 = load i32, i32* %123, align 8
  %bf.lshr200 = lshr i32 %bf.load199, 16
  %bf.clear201 = and i32 %bf.lshr200, 255
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtx204 = bitcast %union.rtunion_def* %arrayidx203 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx204, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load205 = load i32, i32* %127, align 8
  %bf.lshr206 = lshr i32 %bf.load205, 16
  %bf.clear207 = and i32 %bf.lshr206, 255
  %128 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 1
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load211 = load i32, i32* %131, align 8
  %bf.lshr212 = lshr i32 %bf.load211, 16
  %bf.clear213 = and i32 %bf.lshr212, 255
  %call214 = call %struct.rtx_def* @simplify_gen_unary(i32 77, i32 %bf.clear207, %struct.rtx_def* %129, i32 %bf.clear213)
  %call215 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %bf.clear201, %struct.rtx_def* %125, %struct.rtx_def* %call214)
  %call216 = call i32 @validate_change(%struct.rtx_def* %120, %struct.rtx_def** %121, %struct.rtx_def* %call215, i32 1)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.198, %lor.lhs.false.190
  br label %sw.epilog

sw.bb.218:                                        ; preds = %if.end.161, %if.end.161
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 0
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load222 = load i32, i32* %134, align 8
  %bf.lshr223 = lshr i32 %bf.load222, 16
  %bf.clear224 = and i32 %bf.lshr223, 255
  %cmp225 = icmp eq i32 %bf.clear224, 0
  br i1 %cmp225, label %if.then.227, label %if.end.243

if.then.227:                                      ; preds = %sw.bb.218
  %135 = load i32, i32* %code, align 4
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load228 = load i32, i32* %137, align 8
  %bf.lshr229 = lshr i32 %bf.load228, 16
  %bf.clear230 = and i32 %bf.lshr229, 255
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  %140 = load i32, i32* %op0_mode, align 4
  %call234 = call %struct.rtx_def* @simplify_gen_unary(i32 %135, i32 %bf.clear230, %struct.rtx_def* %139, i32 %140)
  store %struct.rtx_def* %call234, %struct.rtx_def** %new, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool235 = icmp ne %struct.rtx_def* %141, null
  br i1 %tobool235, label %if.end.241, label %if.then.236

if.then.236:                                      ; preds = %if.then.227
  %142 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load237 = load i32, i32* %143, align 8
  %bf.lshr238 = lshr i32 %bf.load237, 16
  %bf.clear239 = and i32 %bf.lshr238, 255
  %144 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call240 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 %bf.clear239, %struct.rtx_def* %144)
  store %struct.rtx_def* %call240, %struct.rtx_def** %new, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.236, %if.then.227
  %145 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %146 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call242 = call i32 @validate_change(%struct.rtx_def* %145, %struct.rtx_def** %146, %struct.rtx_def* %147, i32 1)
  br label %if.end.243

if.end.243:                                       ; preds = %if.end.241, %sw.bb.218
  br label %sw.epilog

sw.bb.244:                                        ; preds = %if.end.161
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %149 = bitcast %struct.rtx_def* %148 to i32*
  %bf.load245 = load i32, i32* %149, align 8
  %bf.lshr246 = lshr i32 %bf.load245, 16
  %bf.clear247 = and i32 %bf.lshr246, 255
  %150 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 0
  %rtx250 = bitcast %union.rtunion_def* %arrayidx249 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx250, align 8
  %152 = load i32, i32* %op0_mode, align 4
  %153 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 1
  %rtuint253 = bitcast %union.rtunion_def* %arrayidx252 to i32*
  %154 = load i32, i32* %rtuint253, align 4
  %call254 = call %struct.rtx_def* @simplify_subreg(i32 %bf.clear247, %struct.rtx_def* %151, i32 %152, i32 %154)
  store %struct.rtx_def* %call254, %struct.rtx_def** %new, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool255 = icmp ne %struct.rtx_def* %155, null
  br i1 %tobool255, label %if.end.270, label %land.lhs.true.256

land.lhs.true.256:                                ; preds = %sw.bb.244
  %156 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx259, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load260 = load i32, i32* %158, align 8
  %bf.lshr261 = lshr i32 %bf.load260, 16
  %bf.clear262 = and i32 %bf.lshr261, 255
  %cmp263 = icmp eq i32 %bf.clear262, 0
  br i1 %cmp263, label %if.then.265, label %if.end.270

if.then.265:                                      ; preds = %land.lhs.true.256
  %159 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load266 = load i32, i32* %160, align 8
  %bf.lshr267 = lshr i32 %bf.load266, 16
  %bf.clear268 = and i32 %bf.lshr267, 255
  %161 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call269 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 %bf.clear268, %struct.rtx_def* %161)
  store %struct.rtx_def* %call269, %struct.rtx_def** %new, align 8
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.265, %land.lhs.true.256, %sw.bb.244
  %162 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %tobool271 = icmp ne %struct.rtx_def* %162, null
  br i1 %tobool271, label %if.then.272, label %if.end.274

if.then.272:                                      ; preds = %if.end.270
  %163 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %164 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call273 = call i32 @validate_change(%struct.rtx_def* %163, %struct.rtx_def** %164, %struct.rtx_def* %165, i32 1)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.272, %if.end.270
  br label %sw.epilog

sw.bb.275:                                        ; preds = %if.end.161, %if.end.161
  %166 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld276, i32 0, i64 0
  %rtx278 = bitcast %union.rtunion_def* %arrayidx277 to %struct.rtx_def**
  %167 = load %struct.rtx_def*, %struct.rtx_def** %rtx278, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load279 = load i32, i32* %168, align 8
  %bf.clear280 = and i32 %bf.load279, 65535
  %cmp281 = icmp eq i32 %bf.clear280, 66
  br i1 %cmp281, label %land.lhs.true.283, label %if.end.384

land.lhs.true.283:                                ; preds = %sw.bb.275
  %169 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 1
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load287 = load i32, i32* %171, align 8
  %bf.clear288 = and i32 %bf.load287, 65535
  %cmp289 = icmp eq i32 %bf.clear288, 54
  br i1 %cmp289, label %land.lhs.true.291, label %if.end.384

land.lhs.true.291:                                ; preds = %land.lhs.true.283
  %172 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %172, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld292, i32 0, i64 2
  %rtx294 = bitcast %union.rtunion_def* %arrayidx293 to %struct.rtx_def**
  %173 = load %struct.rtx_def*, %struct.rtx_def** %rtx294, align 8
  %174 = bitcast %struct.rtx_def* %173 to i32*
  %bf.load295 = load i32, i32* %174, align 8
  %bf.clear296 = and i32 %bf.load295, 65535
  %cmp297 = icmp eq i32 %bf.clear296, 54
  br i1 %cmp297, label %land.lhs.true.299, label %if.end.384

land.lhs.true.299:                                ; preds = %land.lhs.true.291
  %175 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 0
  %rtx302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx302, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 0
  %rtx305 = bitcast %union.rtunion_def* %arrayidx304 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx305, align 8
  %call306 = call i32 @mode_dependent_address_p(%struct.rtx_def* %177)
  %tobool307 = icmp ne i32 %call306, 0
  br i1 %tobool307, label %if.end.384, label %land.lhs.true.308

land.lhs.true.308:                                ; preds = %land.lhs.true.299
  %178 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 0
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load312 = load i32, i32* %180, align 8
  %bf.lshr313 = lshr i32 %bf.load312, 27
  %bf.clear314 = and i32 %bf.lshr313, 1
  %tobool315 = icmp ne i32 %bf.clear314, 0
  br i1 %tobool315, label %if.end.384, label %if.then.316

if.then.316:                                      ; preds = %land.lhs.true.308
  store i32 0, i32* %wanted_mode, align 4
  %181 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %182 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  %183 = bitcast %struct.rtx_def* %182 to i32*
  %bf.load320 = load i32, i32* %183, align 8
  %bf.lshr321 = lshr i32 %bf.load320, 16
  %bf.clear322 = and i32 %bf.lshr321, 255
  store i32 %bf.clear322, i32* %is_mode, align 4
  %184 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld323, i32 0, i64 2
  %rtx325 = bitcast %union.rtunion_def* %arrayidx324 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx325, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx327 to i64*
  %186 = load i64, i64* %rtwint, align 8
  %conv328 = trunc i64 %186 to i32
  store i32 %conv328, i32* %pos, align 4
  %187 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %188 = bitcast %struct.rtx_def* %187 to i32*
  %bf.load329 = load i32, i32* %188, align 8
  %bf.clear330 = and i32 %bf.load329, 65535
  %cmp331 = icmp eq i32 %bf.clear330, 133
  br i1 %cmp331, label %if.then.333, label %if.else.339

if.then.333:                                      ; preds = %if.then.316
  %call334 = call i32 @mode_for_extraction(i32 2, i32 1)
  store i32 %call334, i32* %new_mode, align 4
  %189 = load i32, i32* %new_mode, align 4
  %cmp335 = icmp ne i32 %189, 59
  br i1 %cmp335, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.then.333
  %190 = load i32, i32* %new_mode, align 4
  store i32 %190, i32* %wanted_mode, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.337, %if.then.333
  br label %if.end.352

if.else.339:                                      ; preds = %if.then.316
  %191 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load340 = load i32, i32* %192, align 8
  %bf.clear341 = and i32 %bf.load340, 65535
  %cmp342 = icmp eq i32 %bf.clear341, 132
  br i1 %cmp342, label %if.then.344, label %if.end.351

if.then.344:                                      ; preds = %if.else.339
  %call346 = call i32 @mode_for_extraction(i32 1, i32 1)
  store i32 %call346, i32* %new_mode345, align 4
  %193 = load i32, i32* %new_mode345, align 4
  %cmp347 = icmp ne i32 %193, 59
  br i1 %cmp347, label %if.then.349, label %if.end.350

if.then.349:                                      ; preds = %if.then.344
  %194 = load i32, i32* %new_mode345, align 4
  store i32 %194, i32* %wanted_mode, align 4
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.349, %if.then.344
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.else.339
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.end.338
  %195 = load i32, i32* %wanted_mode, align 4
  %cmp353 = icmp ne i32 %195, 0
  br i1 %cmp353, label %land.lhs.true.355, label %if.end.383

land.lhs.true.355:                                ; preds = %if.end.352
  %196 = load i32, i32* %wanted_mode, align 4
  %idxprom356 = sext i32 %196 to i64
  %arrayidx357 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom356
  %197 = load i8, i8* %arrayidx357, align 1
  %conv358 = zext i8 %197 to i32
  %198 = load i32, i32* %is_mode, align 4
  %idxprom359 = sext i32 %198 to i64
  %arrayidx360 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom359
  %199 = load i8, i8* %arrayidx360, align 1
  %conv361 = zext i8 %199 to i32
  %cmp362 = icmp slt i32 %conv358, %conv361
  br i1 %cmp362, label %if.then.364, label %if.end.383

if.then.364:                                      ; preds = %land.lhs.true.355
  %200 = load i32, i32* %pos, align 4
  %div = sdiv i32 %200, 8
  store i32 %div, i32* %offset, align 4
  %201 = load i32, i32* %wanted_mode, align 4
  %idxprom365 = sext i32 %201 to i64
  %arrayidx366 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom365
  %202 = load i16, i16* %arrayidx366, align 2
  %conv367 = zext i16 %202 to i32
  %203 = load i32, i32* %pos, align 4
  %rem = srem i32 %203, %conv367
  store i32 %rem, i32* %pos, align 4
  %204 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld368, i32 0, i64 0
  %rtx370 = bitcast %union.rtunion_def* %arrayidx369 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtx370, align 8
  %206 = load i32, i32* %wanted_mode, align 4
  %207 = load i32, i32* %offset, align 4
  %conv371 = sext i32 %207 to i64
  %call372 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %205, i32 %206, i64 %conv371, i32 0, i32 1)
  store %struct.rtx_def* %call372, %struct.rtx_def** %newmem, align 8
  %208 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 2
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %210 = load i32, i32* %pos, align 4
  %conv376 = sext i32 %210 to i64
  %call377 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv376)
  %call378 = call i32 @validate_change(%struct.rtx_def* %208, %struct.rtx_def** %rtx375, %struct.rtx_def* %call377, i32 1)
  %211 = load %struct.rtx_def*, %struct.rtx_def** %object.addr, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 0
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %213 = load %struct.rtx_def*, %struct.rtx_def** %newmem, align 8
  %call382 = call i32 @validate_change(%struct.rtx_def* %211, %struct.rtx_def** %rtx381, %struct.rtx_def* %213, i32 1)
  br label %if.end.383

if.end.383:                                       ; preds = %if.then.364, %land.lhs.true.355, %if.end.352
  br label %if.end.384

if.end.384:                                       ; preds = %if.end.383, %land.lhs.true.308, %land.lhs.true.299, %land.lhs.true.291, %land.lhs.true.283, %sw.bb.275
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.161
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.53, %if.then.98, %sw.default, %if.end.384, %if.end.274, %if.end.243, %if.end.217, %if.end.181
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @validate_replace_rtx(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %insn) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %rtx, %struct.rtx_def* %1, %struct.rtx_def* %2, %struct.rtx_def* %3)
  %call = call i32 @apply_change_group()
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @validate_replace_rtx_group(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %insn) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %rtx, %struct.rtx_def* %1, %struct.rtx_def* %2, %struct.rtx_def* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @validate_replace_src(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %insn) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %d = alloca %struct.validate_replace_src_data, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %from1 = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %d, i32 0, i32 0
  store %struct.rtx_def* %0, %struct.rtx_def** %from1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %to2 = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %d, i32 0, i32 1
  store %struct.rtx_def* %1, %struct.rtx_def** %to2, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %insn3 = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %d, i32 0, i32 2
  store %struct.rtx_def* %2, %struct.rtx_def** %insn3, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = bitcast %struct.validate_replace_src_data* %d to i8*
  call void @note_uses(%struct.rtx_def** %rtx, void (%struct.rtx_def**, i8*)* @validate_replace_src_1, i8* %4)
  %call = call i32 @apply_change_group()
  ret i32 %call
}

declare void @note_uses(%struct.rtx_def**, void (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @validate_replace_src_1(%struct.rtx_def** %x, i8* %data) #0 {
entry:
  %x.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %d = alloca %struct.validate_replace_src_data*, align 8
  store %struct.rtx_def** %x, %struct.rtx_def*** %x.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.validate_replace_src_data*
  store %struct.validate_replace_src_data* %1, %struct.validate_replace_src_data** %d, align 8
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %x.addr, align 8
  %3 = load %struct.validate_replace_src_data*, %struct.validate_replace_src_data** %d, align 8
  %from = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %from, align 8
  %5 = load %struct.validate_replace_src_data*, %struct.validate_replace_src_data** %d, align 8
  %to = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %to, align 8
  %7 = load %struct.validate_replace_src_data*, %struct.validate_replace_src_data** %d, align 8
  %insn = getelementptr inbounds %struct.validate_replace_src_data, %struct.validate_replace_src_data* %7, i32 0, i32 2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @validate_replace_rtx_1(%struct.rtx_def** %2, %struct.rtx_def* %4, %struct.rtx_def* %6, %struct.rtx_def* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def** @find_single_use(%struct.rtx_def* %dest, %struct.rtx_def* %insn, %struct.rtx_def** %ploc) #0 {
entry:
  %retval = alloca %struct.rtx_def**, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %ploc.addr = alloca %struct.rtx_def**, align 8
  %next = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def**, align 8
  %link = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def** %ploc, %struct.rtx_def*** %ploc.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @reload_in_progress, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %next, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %cmp3 = icmp ne %struct.rtx_def* %5, null
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp ne i32 %bf.clear5, 36
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp6, %land.rhs ]
  br i1 %8, label %for.body, label %for.end.41

for.body:                                         ; preds = %land.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %idxprom = sext i32 %bf.clear8 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %11 to i32
  %cmp9 = icmp eq i32 %conv, 105
  br i1 %cmp9, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %call11 = call i32 @dead_or_set_p(%struct.rtx_def* %12, %struct.rtx_def* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.38

if.then.13:                                       ; preds = %land.lhs.true
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtx = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %link, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool16 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp21 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.body.17
  br label %for.end

if.end.24:                                        ; preds = %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %20 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %link, align 8
  br label %for.cond.15

for.end:                                          ; preds = %if.then.23, %for.cond.15
  %22 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool28 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool28, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %for.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %call33 = call %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %23, %struct.rtx_def** %rtx32)
  store %struct.rtx_def** %call33, %struct.rtx_def*** %result, align 8
  %25 = load %struct.rtx_def**, %struct.rtx_def*** %ploc.addr, align 8
  %tobool34 = icmp ne %struct.rtx_def** %25, null
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.then.29
  %26 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %ploc.addr, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %27, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.then.29
  %28 = load %struct.rtx_def**, %struct.rtx_def*** %result, align 8
  store %struct.rtx_def** %28, %struct.rtx_def*** %retval
  br label %return

if.end.37:                                        ; preds = %for.end
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %land.lhs.true, %for.body
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %29 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call40 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %29)
  store %struct.rtx_def* %call40, %struct.rtx_def** %next, align 8
  br label %for.cond

for.end.41:                                       ; preds = %land.end
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

return:                                           ; preds = %for.end.41, %if.end.36, %if.then
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %retval
  ret %struct.rtx_def** %30
}

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare i32 @dead_or_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %dest, %struct.rtx_def** %loc) #0 {
entry:
  %retval = alloca %struct.rtx_def**, align 8
  %dest.addr = alloca %struct.rtx_def*, align 8
  %loc.addr = alloca %struct.rtx_def**, align 8
  %x = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %result = alloca %struct.rtx_def**, align 8
  %this_result = alloca %struct.rtx_def**, align 8
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def** %loc, %struct.rtx_def*** %loc.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  store %struct.rtx_def** null, %struct.rtx_def*** %result, align 8
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 67, label %sw.bb
    i32 68, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 49, label %sw.bb
    i32 47, label %sw.bb.1
    i32 66, label %sw.bb.70
    i32 63, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp = icmp ne i32 %bf.clear3, 69
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 59
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp ne i32 %bf.clear15, 61
  br i1 %cmp16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 63
  br i1 %cmp23, label %land.lhs.true.24, label %if.then

land.lhs.true.24:                                 ; preds = %land.lhs.true.17
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load31 = load i32, i32* %20, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 61
  br i1 %cmp33, label %land.lhs.true.34, label %if.then

land.lhs.true.34:                                 ; preds = %land.lhs.true.24
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load41 = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load41, 16
  %bf.clear42 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear42 to i64
  %arrayidx43 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %25 = load i8, i8* %arrayidx43, align 1
  %conv = zext i8 %25 to i32
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %sub = sub nsw i32 %cond, 1
  %add = add nsw i32 %conv, %sub
  %27 = load i32, i32* @target_flags, align 4
  %and44 = and i32 %27, 33554432
  %tobool45 = icmp ne i32 %and44, 0
  %cond46 = select i1 %tobool45, i32 8, i32 4
  %div = sdiv i32 %add, %cond46
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load50 = load i32, i32* %30, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 16
  %bf.clear52 = and i32 %bf.lshr51, 255
  %idxprom53 = sext i32 %bf.clear52 to i64
  %arrayidx54 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom53
  %31 = load i8, i8* %arrayidx54, align 1
  %conv55 = zext i8 %31 to i32
  %32 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %32, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 8, i32 4
  %sub59 = sub nsw i32 %cond58, 1
  %add60 = add nsw i32 %conv55, %sub59
  %33 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %33, 33554432
  %tobool62 = icmp ne i32 %and61, 0
  %cond63 = select i1 %tobool62, i32 8, i32 4
  %div64 = sdiv i32 %add60, %cond63
  %cmp65 = icmp eq i32 %div, %div64
  br i1 %cmp65, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.34, %land.lhs.true.24, %land.lhs.true.17
  br label %sw.epilog

if.end:                                           ; preds = %land.lhs.true.34, %land.lhs.true.10, %land.lhs.true, %sw.bb.1
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %call = call %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %34, %struct.rtx_def** %rtx69)
  store %struct.rtx_def** %call, %struct.rtx_def*** %retval
  br label %return

sw.bb.70:                                         ; preds = %entry, %entry
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %call74 = call %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %36, %struct.rtx_def** %rtx73)
  store %struct.rtx_def** %call74, %struct.rtx_def*** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then
  %38 = load i32, i32* %code, align 4
  %idxprom75 = sext i32 %38 to i64
  %arrayidx76 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom75
  %39 = load i8*, i8** %arrayidx76, align 8
  store i8* %39, i8** %fmt, align 8
  %40 = load i32, i32* %code, align 4
  %idxprom77 = sext i32 %40 to i64
  %arrayidx78 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom77
  %41 = load i8, i8* %arrayidx78, align 1
  %conv79 = zext i8 %41 to i32
  %sub80 = sub nsw i32 %conv79, 1
  store i32 %sub80, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.212, %sw.epilog
  %42 = load i32, i32* %i, align 4
  %cmp81 = icmp sge i32 %42, 0
  br i1 %cmp81, label %for.body, label %for.end.214

for.body:                                         ; preds = %for.cond
  %43 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %43 to i64
  %44 = load i8*, i8** %fmt, align 8
  %arrayidx84 = getelementptr inbounds i8, i8* %44, i64 %idxprom83
  %45 = load i8, i8* %arrayidx84, align 1
  %conv85 = sext i8 %45 to i32
  %cmp86 = icmp eq i32 %conv85, 101
  br i1 %cmp86, label %if.then.88, label %if.else.135

if.then.88:                                       ; preds = %for.body
  %46 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %47 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %47 to i64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 %idxprom89
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %cmp93 = icmp eq %struct.rtx_def* %46, %49
  br i1 %cmp93, label %if.then.120, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.88
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load95 = load i32, i32* %51, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 61
  br i1 %cmp97, label %land.lhs.true.99, label %if.else

land.lhs.true.99:                                 ; preds = %lor.lhs.false
  %52 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %52 to i64
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 %idxprom100
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load104 = load i32, i32* %55, align 8
  %bf.clear105 = and i32 %bf.load104, 65535
  %cmp106 = icmp eq i32 %bf.clear105, 61
  br i1 %cmp106, label %land.lhs.true.108, label %if.else

land.lhs.true.108:                                ; preds = %land.lhs.true.99
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx110 to i32*
  %57 = load i32, i32* %rtuint, align 4
  %58 = load i32, i32* %i, align 4
  %idxprom111 = sext i32 %58 to i64
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 %idxprom111
  %rtx114 = bitcast %union.rtunion_def* %arrayidx113 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx114, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 0
  %rtuint117 = bitcast %union.rtunion_def* %arrayidx116 to i32*
  %61 = load i32, i32* %rtuint117, align 4
  %cmp118 = icmp eq i32 %57, %61
  br i1 %cmp118, label %if.then.120, label %if.else

if.then.120:                                      ; preds = %land.lhs.true.108, %if.then.88
  %62 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def** %62, %struct.rtx_def*** %this_result, align 8
  br label %if.end.126

if.else:                                          ; preds = %land.lhs.true.108, %land.lhs.true.99, %lor.lhs.false
  %63 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %64 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %64 to i64
  %65 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 %idxprom121
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %call125 = call %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %63, %struct.rtx_def** %rtx124)
  store %struct.rtx_def** %call125, %struct.rtx_def*** %this_result, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else, %if.then.120
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %result, align 8
  %cmp127 = icmp eq %struct.rtx_def** %66, null
  br i1 %cmp127, label %if.then.129, label %if.else.130

if.then.129:                                      ; preds = %if.end.126
  %67 = load %struct.rtx_def**, %struct.rtx_def*** %this_result, align 8
  store %struct.rtx_def** %67, %struct.rtx_def*** %result, align 8
  br label %if.end.134

if.else.130:                                      ; preds = %if.end.126
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %this_result, align 8
  %tobool131 = icmp ne %struct.rtx_def** %68, null
  br i1 %tobool131, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %if.else.130
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

if.end.133:                                       ; preds = %if.else.130
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.129
  br label %if.end.211

if.else.135:                                      ; preds = %for.body
  %69 = load i32, i32* %i, align 4
  %idxprom136 = sext i32 %69 to i64
  %70 = load i8*, i8** %fmt, align 8
  %arrayidx137 = getelementptr inbounds i8, i8* %70, i64 %idxprom136
  %71 = load i8, i8* %arrayidx137, align 1
  %conv138 = sext i8 %71 to i32
  %cmp139 = icmp eq i32 %conv138, 69
  br i1 %cmp139, label %if.then.141, label %if.end.210

if.then.141:                                      ; preds = %if.else.135
  %72 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 %idxprom142
  %rtvec = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 0
  %75 = load i32, i32* %num_elem, align 4
  %sub145 = sub nsw i32 %75, 1
  store i32 %sub145, i32* %j, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc, %if.then.141
  %76 = load i32, i32* %j, align 4
  %cmp147 = icmp sge i32 %76, 0
  br i1 %cmp147, label %for.body.149, label %for.end

for.body.149:                                     ; preds = %for.cond.146
  %77 = load i32, i32* %j, align 4
  %idxprom150 = sext i32 %77 to i64
  %78 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %78 to i64
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 %idxprom151
  %rtvec154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtvec_def**
  %80 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec154, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %80, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom150
  %81 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx155, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp156 = icmp eq %struct.rtx_def* %81, %82
  br i1 %cmp156, label %if.then.191, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %for.body.149
  %83 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load159 = load i32, i32* %84, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 61
  br i1 %cmp161, label %land.lhs.true.163, label %if.else.192

land.lhs.true.163:                                ; preds = %lor.lhs.false.158
  %85 = load i32, i32* %j, align 4
  %idxprom164 = sext i32 %85 to i64
  %86 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %86 to i64
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 %idxprom165
  %rtvec168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtvec_def**
  %88 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec168, align 8
  %elem169 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %88, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem169, i32 0, i64 %idxprom164
  %89 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx170, align 8
  %90 = bitcast %struct.rtx_def* %89 to i32*
  %bf.load171 = load i32, i32* %90, align 8
  %bf.clear172 = and i32 %bf.load171, 65535
  %cmp173 = icmp eq i32 %bf.clear172, 61
  br i1 %cmp173, label %land.lhs.true.175, label %if.else.192

land.lhs.true.175:                                ; preds = %land.lhs.true.163
  %91 = load i32, i32* %j, align 4
  %idxprom176 = sext i32 %91 to i64
  %92 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %92 to i64
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 %idxprom177
  %rtvec180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtvec_def**
  %94 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec180, align 8
  %elem181 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %94, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem181, i32 0, i64 %idxprom176
  %95 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx182, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 0
  %rtuint185 = bitcast %union.rtunion_def* %arrayidx184 to i32*
  %96 = load i32, i32* %rtuint185, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtuint188 = bitcast %union.rtunion_def* %arrayidx187 to i32*
  %98 = load i32, i32* %rtuint188, align 4
  %cmp189 = icmp eq i32 %96, %98
  br i1 %cmp189, label %if.then.191, label %if.else.192

if.then.191:                                      ; preds = %land.lhs.true.175, %for.body.149
  %99 = load %struct.rtx_def**, %struct.rtx_def*** %loc.addr, align 8
  store %struct.rtx_def** %99, %struct.rtx_def*** %this_result, align 8
  br label %if.end.201

if.else.192:                                      ; preds = %land.lhs.true.175, %land.lhs.true.163, %lor.lhs.false.158
  %100 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %101 = load i32, i32* %j, align 4
  %idxprom193 = sext i32 %101 to i64
  %102 = load i32, i32* %i, align 4
  %idxprom194 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 %idxprom194
  %rtvec197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtvec_def**
  %104 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec197, align 8
  %elem198 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %104, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem198, i32 0, i64 %idxprom193
  %call200 = call %struct.rtx_def** @find_single_use_1(%struct.rtx_def* %100, %struct.rtx_def** %arrayidx199)
  store %struct.rtx_def** %call200, %struct.rtx_def*** %this_result, align 8
  br label %if.end.201

if.end.201:                                       ; preds = %if.else.192, %if.then.191
  %105 = load %struct.rtx_def**, %struct.rtx_def*** %result, align 8
  %cmp202 = icmp eq %struct.rtx_def** %105, null
  br i1 %cmp202, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %if.end.201
  %106 = load %struct.rtx_def**, %struct.rtx_def*** %this_result, align 8
  store %struct.rtx_def** %106, %struct.rtx_def*** %result, align 8
  br label %if.end.209

if.else.205:                                      ; preds = %if.end.201
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %this_result, align 8
  %tobool206 = icmp ne %struct.rtx_def** %107, null
  br i1 %tobool206, label %if.then.207, label %if.end.208

if.then.207:                                      ; preds = %if.else.205
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

if.end.208:                                       ; preds = %if.else.205
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %if.then.204
  br label %for.inc

for.inc:                                          ; preds = %if.end.209
  %108 = load i32, i32* %j, align 4
  %dec = add nsw i32 %108, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.146

for.end:                                          ; preds = %for.cond.146
  br label %if.end.210

if.end.210:                                       ; preds = %for.end, %if.else.135
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %if.end.134
  br label %for.inc.212

for.inc.212:                                      ; preds = %if.end.211
  %109 = load i32, i32* %i, align 4
  %dec213 = add nsw i32 %109, -1
  store i32 %dec213, i32* %i, align 4
  br label %for.cond

for.end.214:                                      ; preds = %for.cond
  %110 = load %struct.rtx_def**, %struct.rtx_def*** %result, align 8
  store %struct.rtx_def** %110, %struct.rtx_def*** %retval
  br label %return

return:                                           ; preds = %for.end.214, %if.then.207, %if.then.132, %sw.bb.70, %if.end, %sw.bb
  %111 = load %struct.rtx_def**, %struct.rtx_def*** %retval
  ret %struct.rtx_def** %111
}

; Function Attrs: nounwind uwtable
define i32 @general_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %sub = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  store i32 %bf.clear2, i32* %mode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 16
  %bf.clear5 = and i32 %bf.lshr4, 255
  %cmp6 = icmp eq i32 %bf.clear5, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %7 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.15

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %8 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  %cmp9 = icmp ne i32 %9, 1
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.15

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom11
  %11 = load i32, i32* %arrayidx12, align 4
  %cmp13 = icmp ne i32 %11, 3
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %land.lhs.true.10
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 54
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.26

land.lhs.true.19:                                 ; preds = %if.end.15
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx20 to i64*
  %15 = load i64, i64* %rtwint, align 8
  %16 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %15, i32 %16)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtwint23 = bitcast %union.rtunion_def* %arrayidx22 to i64*
  %18 = load i64, i64* %rtwint23, align 8
  %cmp24 = icmp ne i64 %call, %18
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.19
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.19, %if.end.15
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load27 = load i32, i32* %20, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 67
  br i1 %cmp29, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load30 = load i32, i32* %22, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 68
  br i1 %cmp32, label %if.then.57, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load34 = load i32, i32* %24, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 54
  br i1 %cmp36, label %if.then.57, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false.33
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load38 = load i32, i32* %26, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 55
  br i1 %cmp40, label %if.then.57, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.37
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load42 = load i32, i32* %28, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 58
  br i1 %cmp44, label %if.then.57, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.41
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load46 = load i32, i32* %30, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 134
  br i1 %cmp48, label %if.then.57, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.45
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load50 = load i32, i32* %32, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 56
  br i1 %cmp52, label %if.then.57, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.49
  %33 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load54 = load i32, i32* %34, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 140
  br i1 %cmp56, label %if.then.57, label %if.end.88

if.then.57:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false.49, %lor.lhs.false.45, %lor.lhs.false.41, %lor.lhs.false.37, %lor.lhs.false.33, %lor.lhs.false, %if.end.26
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load58 = load i32, i32* %36, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 16
  %bf.clear60 = and i32 %bf.lshr59, 255
  %cmp61 = icmp eq i32 %bf.clear60, 0
  br i1 %cmp61, label %land.lhs.true.69, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %if.then.57
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load63 = load i32, i32* %38, align 8
  %bf.lshr64 = lshr i32 %bf.load63, 16
  %bf.clear65 = and i32 %bf.lshr64, 255
  %39 = load i32, i32* %mode.addr, align 4
  %cmp66 = icmp eq i32 %bf.clear65, %39
  br i1 %cmp66, label %land.lhs.true.69, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.62
  %40 = load i32, i32* %mode.addr, align 4
  %cmp68 = icmp eq i32 %40, 0
  br i1 %cmp68, label %land.lhs.true.69, label %land.end

land.lhs.true.69:                                 ; preds = %lor.lhs.false.67, %lor.lhs.false.62, %if.then.57
  %41 = load i32, i32* @flag_pic, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %lor.lhs.false.70, label %land.rhs

lor.lhs.false.70:                                 ; preds = %land.lhs.true.69
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load71 = load i32, i32* %43, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 68
  br i1 %cmp73, label %lor.lhs.false.85, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.70
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load75 = load i32, i32* %45, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 67
  br i1 %cmp77, label %lor.lhs.false.85, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %lor.lhs.false.74
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load79 = load i32, i32* %47, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 58
  br i1 %cmp81, label %land.lhs.true.82, label %land.rhs

land.lhs.true.82:                                 ; preds = %lor.lhs.false.78
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call83 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %48)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %lor.lhs.false.85, label %land.rhs

lor.lhs.false.85:                                 ; preds = %land.lhs.true.82, %lor.lhs.false.74, %lor.lhs.false.70
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call86 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %49)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.85, %land.lhs.true.82, %lor.lhs.false.78, %land.lhs.true.69
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.85, %lor.lhs.false.67
  %50 = phi i1 [ false, %lor.lhs.false.85 ], [ false, %lor.lhs.false.67 ], [ true, %land.rhs ]
  %land.ext = zext i1 %50 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.88:                                        ; preds = %lor.lhs.false.53
  %51 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load89 = load i32, i32* %52, align 8
  %bf.lshr90 = lshr i32 %bf.load89, 16
  %bf.clear91 = and i32 %bf.lshr90, 255
  %53 = load i32, i32* %mode.addr, align 4
  %cmp92 = icmp ne i32 %bf.clear91, %53
  br i1 %cmp92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.end.88
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.88
  %54 = load i32, i32* %code, align 4
  %cmp95 = icmp eq i32 %54, 63
  br i1 %cmp95, label %if.then.96, label %if.end.154

if.then.96:                                       ; preds = %if.end.94
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %sub, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load99 = load i32, i32* %58, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 66
  br i1 %cmp101, label %land.lhs.true.102, label %if.end.114

land.lhs.true.102:                                ; preds = %if.then.96
  %59 = load i32, i32* %mode.addr, align 4
  %idxprom103 = sext i32 %59 to i64
  %arrayidx104 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom103
  %60 = load i8, i8* %arrayidx104, align 1
  %conv = zext i8 %60 to i32
  %61 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load105 = load i32, i32* %62, align 8
  %bf.lshr106 = lshr i32 %bf.load105, 16
  %bf.clear107 = and i32 %bf.lshr106, 255
  %idxprom108 = sext i32 %bf.clear107 to i64
  %arrayidx109 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom108
  %63 = load i8, i8* %arrayidx109, align 1
  %conv110 = zext i8 %63 to i32
  %cmp111 = icmp sgt i32 %conv, %conv110
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.102
  store i32 0, i32* %retval
  br label %return

if.end.114:                                       ; preds = %land.lhs.true.102, %if.then.96
  %64 = load i32, i32* @reload_completed, align 4
  %tobool115 = icmp ne i32 %64, 0
  br i1 %tobool115, label %if.end.127, label %land.lhs.true.116

land.lhs.true.116:                                ; preds = %if.end.114
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx118 to i32*
  %66 = load i32, i32* %rtuint, align 4
  %cmp119 = icmp ne i32 %66, 0
  br i1 %cmp119, label %land.lhs.true.121, label %if.end.127

land.lhs.true.121:                                ; preds = %land.lhs.true.116
  %67 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load122 = load i32, i32* %68, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 66
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %land.lhs.true.121
  store i32 0, i32* %retval
  br label %return

if.end.127:                                       ; preds = %land.lhs.true.121, %land.lhs.true.116, %if.end.114
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load128 = load i32, i32* %70, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %idxprom131 = sext i32 %bf.clear130 to i64
  %arrayidx132 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom131
  %71 = load i32, i32* %arrayidx132, align 4
  %cmp133 = icmp eq i32 %71, 2
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.151

land.lhs.true.135:                                ; preds = %if.end.127
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load136 = load i32, i32* %73, align 8
  %bf.lshr137 = lshr i32 %bf.load136, 16
  %bf.clear138 = and i32 %bf.lshr137, 255
  %idxprom139 = sext i32 %bf.clear138 to i64
  %arrayidx140 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom139
  %74 = load i8, i8* %arrayidx140, align 1
  %conv141 = zext i8 %74 to i32
  %75 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load142 = load i32, i32* %76, align 8
  %bf.lshr143 = lshr i32 %bf.load142, 16
  %bf.clear144 = and i32 %bf.lshr143, 255
  %idxprom145 = sext i32 %bf.clear144 to i64
  %arrayidx146 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom145
  %77 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %77 to i32
  %cmp148 = icmp sgt i32 %conv141, %conv147
  br i1 %cmp148, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %land.lhs.true.135
  store i32 0, i32* %retval
  br label %return

if.end.151:                                       ; preds = %land.lhs.true.135, %if.end.127
  %78 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %op.addr, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load152 = load i32, i32* %80, align 8
  %bf.clear153 = and i32 %bf.load152, 65535
  store i32 %bf.clear153, i32* %code, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.151, %if.end.94
  %81 = load i32, i32* %code, align 4
  %cmp155 = icmp eq i32 %81, 61
  br i1 %cmp155, label %if.then.157, label %if.end.170

if.then.157:                                      ; preds = %if.end.154
  %82 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtuint160 = bitcast %union.rtunion_def* %arrayidx159 to i32*
  %83 = load i32, i32* %rtuint160, align 4
  %cmp161 = icmp uge i32 %83, 53
  br i1 %cmp161, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.157
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtuint165 = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %85 = load i32, i32* %rtuint165, align 4
  %idxprom166 = zext i32 %85 to i64
  %arrayidx167 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom166
  %86 = load i32, i32* %arrayidx167, align 4
  %cmp168 = icmp ne i32 %86, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.157
  %87 = phi i1 [ true, %if.then.157 ], [ %cmp168, %lor.rhs ]
  %lor.ext = zext i1 %87 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.170:                                       ; preds = %if.end.154
  %88 = load i32, i32* %code, align 4
  %cmp171 = icmp eq i32 %88, 66
  br i1 %cmp171, label %if.then.173, label %if.end.198

if.then.173:                                      ; preds = %if.end.170
  %89 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %y, align 8
  %91 = load i32, i32* @volatile_ok, align 4
  %tobool177 = icmp ne i32 %91, 0
  br i1 %tobool177, label %if.end.184, label %land.lhs.true.178

land.lhs.true.178:                                ; preds = %if.then.173
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load179 = load i32, i32* %93, align 8
  %bf.lshr180 = lshr i32 %bf.load179, 27
  %bf.clear181 = and i32 %bf.lshr180, 1
  %tobool182 = icmp ne i32 %bf.clear181, 0
  br i1 %tobool182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %land.lhs.true.178
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %land.lhs.true.178, %if.then.173
  %94 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load185 = load i32, i32* %95, align 8
  %bf.clear186 = and i32 %bf.load185, 65535
  %cmp187 = icmp eq i32 %bf.clear186, 70
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.184
  store i32 1, i32* %retval
  br label %return

if.end.190:                                       ; preds = %if.end.184
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load191 = load i32, i32* %97, align 8
  %bf.lshr192 = lshr i32 %bf.load191, 16
  %bf.clear193 = and i32 %bf.lshr192, 255
  store i32 %bf.clear193, i32* %mode.addr, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.190
  %98 = load i32, i32* %mode.addr, align 4
  %99 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call194 = call i32 @legitimate_address_p(i32 %98, %struct.rtx_def* %99, i32 0)
  %tobool195 = icmp ne i32 %call194, 0
  br i1 %tobool195, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %do.body
  br label %win

if.end.197:                                       ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.197
  br label %if.end.198

if.end.198:                                       ; preds = %do.end, %if.end.170
  %100 = load i32, i32* %code, align 4
  %cmp199 = icmp eq i32 %100, 70
  br i1 %cmp199, label %if.then.201, label %if.end.202

if.then.201:                                      ; preds = %if.end.198
  store i32 1, i32* %retval
  br label %return

if.end.202:                                       ; preds = %if.end.198
  store i32 0, i32* %retval
  br label %return

win:                                              ; preds = %if.then.196
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %win, %if.end.202, %if.then.201, %if.then.189, %if.then.183, %lor.end, %if.then.150, %if.then.126, %if.then.113, %if.then.93, %land.end, %if.then.25, %if.then.14
  %101 = load i32, i32* %retval
  ret i32 %101
}

declare i64 @trunc_int_for_mode(i64, i32) #1

declare i32 @symbolic_reference_mentioned_p(%struct.rtx_def*) #1

declare i32 @legitimate_pic_address_disp_p(%struct.rtx_def*) #1

declare i32 @legitimate_address_p(i32, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @address_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call = call i32 @memory_address_p(i32 %0, %struct.rtx_def* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @register_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %sub = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %bf.clear, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 63
  br i1 %cmp4, label %if.then.5, label %if.end.33

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %sub, align 8
  %8 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.end.11, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.then.5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 66
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.6
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %12 = load i32, i32* %mode.addr, align 4
  %call = call i32 @general_operand(%struct.rtx_def* %11, i32 %12)
  store i32 %call, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.6, %if.then.5
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load12 = load i32, i32* %14, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 16
  %bf.clear14 = and i32 %bf.lshr13, 255
  %idxprom = sext i32 %bf.clear14 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %15, 2
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.32

land.lhs.true.17:                                 ; preds = %if.end.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load18 = load i32, i32* %17, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %idxprom21 = sext i32 %bf.clear20 to i64
  %arrayidx22 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom21
  %18 = load i8, i8* %arrayidx22, align 1
  %conv = zext i8 %18 to i32
  %19 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load23 = load i32, i32* %20, align 8
  %bf.lshr24 = lshr i32 %bf.load23, 16
  %bf.clear25 = and i32 %bf.lshr24, 255
  %idxprom26 = sext i32 %bf.clear25 to i64
  %arrayidx27 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom26
  %21 = load i8, i8* %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %cmp29 = icmp sgt i32 %conv, %conv28
  br i1 %cmp29, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true.17
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true.17, %if.end.11
  %22 = load %struct.rtx_def*, %struct.rtx_def** %sub, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %op.addr, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load34 = load i32, i32* %24, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 70
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.33
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.33
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load40 = load i32, i32* %26, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 61
  br i1 %cmp42, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.39
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx45 to i32*
  %28 = load i32, i32* %rtuint, align 4
  %cmp46 = icmp uge i32 %28, 53
  br i1 %cmp46, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtuint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %30 = load i32, i32* %rtuint50, align 4
  %idxprom51 = zext i32 %30 to i64
  %arrayidx52 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom51
  %31 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp ne i32 %31, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %32 = phi i1 [ true, %land.rhs ], [ %cmp53, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.39
  %33 = phi i1 [ false, %if.end.39 ], [ %32, %lor.end ]
  %land.ext = zext i1 %33 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.38, %if.then.31, %if.then.10, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define i32 @pmode_register_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call = call i32 @register_operand(%struct.rtx_def* %0, i32 %cond)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @scratch_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %bf.clear, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 62
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 61
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %9 = load i32, i32* %rtuint, align 4
  %cmp8 = icmp ult i32 %9, 53
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %10 = phi i1 [ false, %lor.rhs ], [ %cmp8, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %if.end
  %11 = phi i1 [ true, %if.end ], [ %10, %land.end ]
  %lor.ext = zext i1 %11 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @immediate_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ne i32 %4, 1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %6, 3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 54
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.18

land.lhs.true.11:                                 ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx12 to i64*
  %10 = load i64, i64* %rtwint, align 8
  %11 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %10, i32 %11)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtwint15 = bitcast %union.rtunion_def* %arrayidx14 to i64*
  %13 = load i64, i64* %rtwint15, align 8
  %cmp16 = icmp ne i64 %call, %13
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %land.lhs.true.11
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true.11, %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load19 = load i32, i32* %15, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 140
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 67
  br i1 %cmp26, label %land.lhs.true.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load27 = load i32, i32* %19, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 68
  br i1 %cmp29, label %land.lhs.true.54, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load31 = load i32, i32* %21, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 54
  br i1 %cmp33, label %land.lhs.true.54, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.30
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load35 = load i32, i32* %23, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 55
  br i1 %cmp37, label %land.lhs.true.54, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load39 = load i32, i32* %25, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 58
  br i1 %cmp41, label %land.lhs.true.54, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load43 = load i32, i32* %27, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 134
  br i1 %cmp45, label %land.lhs.true.54, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load47 = load i32, i32* %29, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 56
  br i1 %cmp49, label %land.lhs.true.54, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load51 = load i32, i32* %31, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 140
  br i1 %cmp53, label %land.lhs.true.54, label %land.end

land.lhs.true.54:                                 ; preds = %lor.lhs.false.50, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %lor.lhs.false.30, %lor.lhs.false, %if.end.23
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load55 = load i32, i32* %33, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %34 = load i32, i32* %mode.addr, align 4
  %cmp58 = icmp eq i32 %bf.clear57, %34
  br i1 %cmp58, label %land.lhs.true.66, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.54
  %35 = load i32, i32* %mode.addr, align 4
  %cmp60 = icmp eq i32 %35, 0
  br i1 %cmp60, label %land.lhs.true.66, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.59
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load62 = load i32, i32* %37, align 8
  %bf.lshr63 = lshr i32 %bf.load62, 16
  %bf.clear64 = and i32 %bf.lshr63, 255
  %cmp65 = icmp eq i32 %bf.clear64, 0
  br i1 %cmp65, label %land.lhs.true.66, label %land.end

land.lhs.true.66:                                 ; preds = %lor.lhs.false.61, %lor.lhs.false.59, %land.lhs.true.54
  %38 = load i32, i32* @flag_pic, align 4
  %tobool = icmp ne i32 %38, 0
  br i1 %tobool, label %lor.lhs.false.67, label %land.rhs

lor.lhs.false.67:                                 ; preds = %land.lhs.true.66
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load68 = load i32, i32* %40, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 68
  br i1 %cmp70, label %lor.lhs.false.82, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.67
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load72 = load i32, i32* %42, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 67
  br i1 %cmp74, label %lor.lhs.false.82, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.71
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load76 = load i32, i32* %44, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 58
  br i1 %cmp78, label %land.lhs.true.79, label %land.rhs

land.lhs.true.79:                                 ; preds = %lor.lhs.false.75
  %45 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call80 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %45)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %lor.lhs.false.82, label %land.rhs

lor.lhs.false.82:                                 ; preds = %land.lhs.true.79, %lor.lhs.false.71, %lor.lhs.false.67
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call83 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %46)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.82, %land.lhs.true.79, %lor.lhs.false.75, %land.lhs.true.66
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.82, %lor.lhs.false.61, %lor.lhs.false.50
  %47 = phi i1 [ false, %lor.lhs.false.82 ], [ false, %lor.lhs.false.61 ], [ false, %lor.lhs.false.50 ], [ true, %land.rhs ]
  %land.ext = zext i1 %47 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.22, %if.then.17, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define i32 @const_int_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 54
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %4 = load i64, i64* %rtwint, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %4, i32 %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtwint4 = bitcast %union.rtunion_def* %arrayidx3 to i64*
  %7 = load i64, i64* %rtwint4, align 8
  %cmp5 = icmp ne i64 %call, %7
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i32 @const_double_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp ne i32 %4, 1
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp ne i32 %6, 3
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %land.lhs.true.2, %land.lhs.true, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 55
  br i1 %cmp10, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load11 = load i32, i32* %10, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 54
  br i1 %cmp13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %if.end
  %11 = load i32, i32* %mode.addr, align 4
  %cmp14 = icmp eq i32 %11, 0
  br i1 %cmp14, label %lor.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.rhs
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load16 = load i32, i32* %13, align 8
  %bf.lshr17 = lshr i32 %bf.load16, 16
  %bf.clear18 = and i32 %bf.lshr17, 255
  %14 = load i32, i32* %mode.addr, align 4
  %cmp19 = icmp eq i32 %bf.clear18, %14
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load20 = load i32, i32* %16, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 255
  %cmp23 = icmp eq i32 %bf.clear22, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.15, %land.rhs
  %17 = phi i1 [ true, %lor.lhs.false.15 ], [ true, %land.rhs ], [ %cmp23, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false
  %18 = phi i1 [ false, %lor.lhs.false ], [ %17, %lor.end ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define i32 @nonimmediate_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %call = call i32 @general_operand(%struct.rtx_def* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 68
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 54
  br i1 %cmp7, label %lor.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 55
  br i1 %cmp11, label %lor.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 58
  br i1 %cmp15, label %lor.end, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 134
  br i1 %cmp19, label %lor.end, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load21 = load i32, i32* %15, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 56
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.20
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load24 = load i32, i32* %17, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 140
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %land.rhs
  %18 = phi i1 [ true, %lor.lhs.false.20 ], [ true, %lor.lhs.false.16 ], [ true, %lor.lhs.false.12 ], [ true, %lor.lhs.false.8 ], [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %cmp26, %lor.rhs ]
  %lnot = xor i1 %18, true
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %19 = phi i1 [ false, %entry ], [ %lnot, %lor.end ]
  %land.ext = zext i1 %19 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @nonmemory_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 68
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 54
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load9 = load i32, i32* %7, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 55
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load13 = load i32, i32* %9, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 58
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false.12
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load17 = load i32, i32* %11, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 134
  br i1 %cmp19, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.16
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load21 = load i32, i32* %13, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 56
  br i1 %cmp23, label %if.then, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.20
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load25 = load i32, i32* %15, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 140
  br i1 %cmp27, label %if.then, label %if.end.80

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.20, %lor.lhs.false.16, %lor.lhs.false.12, %lor.lhs.false.8, %lor.lhs.false.4, %lor.lhs.false, %entry
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load28 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load28, 16
  %bf.clear29 = and i32 %bf.lshr, 255
  %cmp30 = icmp eq i32 %bf.clear29, 0
  br i1 %cmp30, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load i32, i32* %mode.addr, align 4
  %cmp31 = icmp ne i32 %18, 0
  br i1 %cmp31, label %land.lhs.true.32, label %if.end

land.lhs.true.32:                                 ; preds = %land.lhs.true
  %19 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %19 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %20 = load i32, i32* %arrayidx, align 4
  %cmp33 = icmp ne i32 %20, 1
  br i1 %cmp33, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %21 = load i32, i32* %mode.addr, align 4
  %idxprom35 = sext i32 %21 to i64
  %arrayidx36 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom35
  %22 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp ne i32 %22, 3
  br i1 %cmp37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.34, %land.lhs.true.32, %land.lhs.true, %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load39 = load i32, i32* %24, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 54
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.49

land.lhs.true.42:                                 ; preds = %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx43 to i64*
  %26 = load i64, i64* %rtwint, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %26, i32 %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtwint46 = bitcast %union.rtunion_def* %arrayidx45 to i64*
  %29 = load i64, i64* %rtwint46, align 8
  %cmp47 = icmp ne i64 %call, %29
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %land.lhs.true.42
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %land.lhs.true.42, %if.end
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load50 = load i32, i32* %31, align 8
  %bf.lshr51 = lshr i32 %bf.load50, 16
  %bf.clear52 = and i32 %bf.lshr51, 255
  %cmp53 = icmp eq i32 %bf.clear52, 0
  br i1 %cmp53, label %land.lhs.true.61, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %if.end.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load55 = load i32, i32* %33, align 8
  %bf.lshr56 = lshr i32 %bf.load55, 16
  %bf.clear57 = and i32 %bf.lshr56, 255
  %34 = load i32, i32* %mode.addr, align 4
  %cmp58 = icmp eq i32 %bf.clear57, %34
  br i1 %cmp58, label %land.lhs.true.61, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.54
  %35 = load i32, i32* %mode.addr, align 4
  %cmp60 = icmp eq i32 %35, 0
  br i1 %cmp60, label %land.lhs.true.61, label %land.end

land.lhs.true.61:                                 ; preds = %lor.lhs.false.59, %lor.lhs.false.54, %if.end.49
  %36 = load i32, i32* @flag_pic, align 4
  %tobool = icmp ne i32 %36, 0
  br i1 %tobool, label %lor.lhs.false.62, label %land.rhs

lor.lhs.false.62:                                 ; preds = %land.lhs.true.61
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load63 = load i32, i32* %38, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 68
  br i1 %cmp65, label %lor.lhs.false.77, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load67 = load i32, i32* %40, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 67
  br i1 %cmp69, label %lor.lhs.false.77, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.66
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load71 = load i32, i32* %42, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 58
  br i1 %cmp73, label %land.lhs.true.74, label %land.rhs

land.lhs.true.74:                                 ; preds = %lor.lhs.false.70
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call75 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %43)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %lor.lhs.false.77, label %land.rhs

lor.lhs.false.77:                                 ; preds = %land.lhs.true.74, %lor.lhs.false.66, %lor.lhs.false.62
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call78 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %44)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.77, %land.lhs.true.74, %lor.lhs.false.70, %land.lhs.true.61
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.77, %lor.lhs.false.59
  %45 = phi i1 [ false, %lor.lhs.false.77 ], [ false, %lor.lhs.false.59 ], [ true, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end.80:                                        ; preds = %lor.lhs.false.24
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load81 = load i32, i32* %47, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 16
  %bf.clear83 = and i32 %bf.lshr82, 255
  %48 = load i32, i32* %mode.addr, align 4
  %cmp84 = icmp ne i32 %bf.clear83, %48
  br i1 %cmp84, label %land.lhs.true.85, label %if.end.88

land.lhs.true.85:                                 ; preds = %if.end.80
  %49 = load i32, i32* %mode.addr, align 4
  %cmp86 = icmp ne i32 %49, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %land.lhs.true.85
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %land.lhs.true.85, %if.end.80
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load89 = load i32, i32* %51, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 63
  br i1 %cmp91, label %if.then.92, label %if.end.106

if.then.92:                                       ; preds = %if.end.88
  %52 = load i32, i32* @reload_completed, align 4
  %tobool93 = icmp ne i32 %52, 0
  br i1 %tobool93, label %if.end.102, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %if.then.92
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load97 = load i32, i32* %55, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp eq i32 %bf.clear98, 66
  br i1 %cmp99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %land.lhs.true.94
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %57 = load i32, i32* %mode.addr, align 4
  %call101 = call i32 @general_operand(%struct.rtx_def* %56, i32 %57)
  store i32 %call101, i32* %retval
  br label %return

if.end.102:                                       ; preds = %land.lhs.true.94, %if.then.92
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %op.addr, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.102, %if.end.88
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load107 = load i32, i32* %61, align 8
  %bf.clear108 = and i32 %bf.load107, 65535
  %cmp109 = icmp eq i32 %bf.clear108, 61
  br i1 %cmp109, label %land.rhs.110, label %land.end.120

land.rhs.110:                                     ; preds = %if.end.106
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %63 = load i32, i32* %rtuint, align 4
  %cmp113 = icmp uge i32 %63, 53
  br i1 %cmp113, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs.110
  %64 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %65 = load i32, i32* %rtuint116, align 4
  %idxprom117 = zext i32 %65 to i64
  %arrayidx118 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom117
  %66 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp ne i32 %66, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs.110
  %67 = phi i1 [ true, %land.rhs.110 ], [ %cmp119, %lor.rhs ]
  br label %land.end.120

land.end.120:                                     ; preds = %lor.end, %if.end.106
  %68 = phi i1 [ false, %if.end.106 ], [ %67, %lor.end ]
  %land.ext121 = zext i1 %68 to i32
  store i32 %land.ext121, i32* %retval
  br label %return

return:                                           ; preds = %land.end.120, %if.then.100, %if.then.87, %land.end, %if.then.48, %if.then.38
  %69 = load i32, i32* %retval
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define i32 @push_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %rounded_size = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %rounded_size, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %rounded_size, align 4
  %add = add i32 %3, 7
  %and1 = and i32 %add, -8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %rounded_size, align 4
  %add2 = add i32 %4, 1
  %and3 = and i32 %add2, -2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and1, %cond.true ], [ %and3, %cond.false ]
  store i32 %cond, i32* %rounded_size, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %7 = load i32, i32* %mode.addr, align 4
  %cmp5 = icmp ne i32 %7, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load7, 16
  %bf.clear8 = and i32 %bf.lshr, 255
  %10 = load i32, i32* %mode.addr, align 4
  %cmp9 = icmp ne i32 %bf.clear8, %10
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %land.lhs.true, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %op.addr, align 8
  %13 = load i32, i32* %rounded_size, align 4
  %14 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom14
  %15 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %15 to i32
  %cmp17 = icmp eq i32 %13, %conv16
  br i1 %cmp17, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.12
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load20 = load i32, i32* %17, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp ne i32 %bf.clear21, 96
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.19
  br label %if.end.74

if.else:                                          ; preds = %if.end.12
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp ne i32 %bf.clear27, 100
  br i1 %cmp28, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load33 = load i32, i32* %22, align 8
  %bf.clear34 = and i32 %bf.load33, 65535
  %cmp35 = icmp ne i32 %bf.clear34, 75
  br i1 %cmp35, label %if.then.72, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %lor.lhs.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %cmp47 = icmp ne %struct.rtx_def* %25, %27
  br i1 %cmp47, label %if.then.72, label %lor.lhs.false.49

lor.lhs.false.49:                                 ; preds = %lor.lhs.false.37
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load56 = load i32, i32* %31, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp ne i32 %bf.clear57, 54
  br i1 %cmp58, label %if.then.72, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 1
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx68 to i64*
  %35 = load i64, i64* %rtwint, align 8
  %36 = load i32, i32* %rounded_size, align 4
  %sub = sub nsw i32 0, %36
  %conv69 = sext i32 %sub to i64
  %cmp70 = icmp ne i64 %35, %conv69
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %lor.lhs.false.60, %lor.lhs.false.49, %lor.lhs.false.37, %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false.60
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.end.25
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp78 = icmp eq %struct.rtx_def* %38, %39
  %conv79 = zext i1 %cmp78 to i32
  store i32 %conv79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.72, %if.then.24, %if.then.11, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define i32 @pop_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %2, 0
  br i1 %cmp1, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load2, 16
  %bf.clear3 = and i32 %bf.lshr, 255
  %5 = load i32, i32* %mode.addr, align 4
  %cmp4 = icmp ne i32 %bf.clear3, %5
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %land.lhs.true, %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %op.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp ne i32 %bf.clear8, 99
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp15 = icmp eq %struct.rtx_def* %11, %12
  %conv = zext i1 %cmp15 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @memory_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %inner = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %call = call i32 @general_operand(%struct.rtx_def* %3, i32 %4)
  %tobool1 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %tobool1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %mode.addr, align 4
  %cmp2 = icmp ne i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load3 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  %9 = load i32, i32* %mode.addr, align 4
  %cmp5 = icmp ne i32 %bf.clear4, %9
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %inner, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load8 = load i32, i32* %12, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 63
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %inner, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load13 = load i32, i32* %16, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 66
  br i1 %cmp15, label %land.rhs.16, label %land.end.19

land.rhs.16:                                      ; preds = %if.end.12
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %18 = load i32, i32* %mode.addr, align 4
  %call17 = call i32 @general_operand(%struct.rtx_def* %17, i32 %18)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.16, %if.end.12
  %19 = phi i1 [ false, %if.end.12 ], [ %tobool18, %land.rhs.16 ]
  %land.ext20 = zext i1 %19 to i32
  store i32 %land.ext20, i32* %retval
  br label %return

return:                                           ; preds = %land.end.19, %if.then.6, %land.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define i32 @indirect_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %inner = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.61, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %land.lhs.true.1, label %if.end.61

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 66
  br i1 %cmp4, label %if.then, label %if.end.61

if.then:                                          ; preds = %land.lhs.true.1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %7 = load i32, i32* %rtuint, align 4
  store i32 %7, i32* %offset, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %inner, align 8
  %10 = load i32, i32* %mode.addr, align 4
  %cmp10 = icmp ne i32 %10, 0
  br i1 %cmp10, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load12, 16
  %bf.clear13 = and i32 %bf.lshr, 255
  %13 = load i32, i32* %mode.addr, align 4
  %cmp14 = icmp ne i32 %bf.clear13, %13
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %land.lhs.true.11
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %if.then
  %14 = load i32, i32* %offset, align 4
  %cmp16 = icmp eq i32 %14, 0
  br i1 %cmp16, label %land.lhs.true.17, label %lor.rhs

land.lhs.true.17:                                 ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %17 = load i32, i32* @target_flags, align 4
  %and = and i32 %17, 33554432
  %tobool21 = icmp ne i32 %and, 0
  %cond = select i1 %tobool21, i32 5, i32 4
  %call = call i32 @general_operand(%struct.rtx_def* %16, i32 %cond)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.17, %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load26 = load i32, i32* %20, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 75
  br i1 %cmp28, label %land.lhs.true.29, label %land.end

land.lhs.true.29:                                 ; preds = %lor.rhs
  %21 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load36 = load i32, i32* %24, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 54
  br i1 %cmp38, label %land.lhs.true.39, label %land.end

land.lhs.true.39:                                 ; preds = %land.lhs.true.29
  %25 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx47 to i64*
  %28 = load i64, i64* %rtwint, align 8
  %29 = load i32, i32* %offset, align 4
  %sub = sub nsw i32 0, %29
  %conv = sext i32 %sub to i64
  %cmp48 = icmp eq i64 %28, %conv
  br i1 %cmp48, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.39
  %30 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %33 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %33, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 5, i32 4
  %call59 = call i32 @general_operand(%struct.rtx_def* %32, i32 %cond58)
  %tobool60 = icmp ne i32 %call59, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.39, %land.lhs.true.29, %lor.rhs
  %34 = phi i1 [ false, %land.lhs.true.39 ], [ false, %land.lhs.true.29 ], [ false, %lor.rhs ], [ %tobool60, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.17
  %35 = phi i1 [ true, %land.lhs.true.17 ], [ %34, %land.end ]
  %lor.ext = zext i1 %35 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load62 = load i32, i32* %37, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 66
  br i1 %cmp64, label %land.lhs.true.66, label %land.end.78

land.lhs.true.66:                                 ; preds = %if.end.61
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %39 = load i32, i32* %mode.addr, align 4
  %call67 = call i32 @memory_operand(%struct.rtx_def* %38, i32 %39)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %land.rhs.69, label %land.end.78

land.rhs.69:                                      ; preds = %land.lhs.true.66
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %42 = load i32, i32* @target_flags, align 4
  %and73 = and i32 %42, 33554432
  %tobool74 = icmp ne i32 %and73, 0
  %cond75 = select i1 %tobool74, i32 5, i32 4
  %call76 = call i32 @general_operand(%struct.rtx_def* %41, i32 %cond75)
  %tobool77 = icmp ne i32 %call76, 0
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.69, %land.lhs.true.66, %if.end.61
  %43 = phi i1 [ false, %land.lhs.true.66 ], [ false, %if.end.61 ], [ %tobool77, %land.rhs.69 ]
  %land.ext = zext i1 %43 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end.78, %lor.end, %if.then.15
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define i32 @comparison_operator(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %bf.clear, %3
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom = sext i32 %bf.clear3 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp4 = icmp eq i32 %conv, 60
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false
  %7 = phi i1 [ false, %lor.lhs.false ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @offsettable_nonstrict_memref_p(%struct.rtx_def* %op) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @offsettable_address_p(i32 0, i32 %bf.clear2, %struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

declare i32 @standard_80387_constant_p(%struct.rtx_def*) #1

declare i32 @standard_sse_constant_p(%struct.rtx_def*) #1

declare i32 @x86_64_sign_extended_value(%struct.rtx_def*) #1

declare i32 @x86_64_zero_extended_value(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %p) #0 {
entry:
  %retval = alloca %struct.rtx_def**, align 8
  %p.addr = alloca %struct.rtx_def**, align 8
  %tem = alloca %struct.rtx_def**, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def** %p, %struct.rtx_def*** %p.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %3, 54
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %cmp1 = icmp eq i32 %4, 68
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %code, align 4
  %cmp3 = icmp eq i32 %5, 67
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %6 = load i32, i32* %code, align 4
  %cmp5 = icmp eq i32 %6, 58
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  store %struct.rtx_def** %7, %struct.rtx_def*** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.4
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load6 = load i32, i32* %10, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp ne i32 %bf.clear7, 75
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %if.end.10
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %14, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load14 = load i32, i32* %17, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 67
  br i1 %cmp16, label %land.lhs.true.66, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %18, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 68
  br i1 %cmp23, label %land.lhs.true.66, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.17
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load28 = load i32, i32* %25, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 54
  br i1 %cmp30, label %land.lhs.true.66, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.24
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load35 = load i32, i32* %29, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 55
  br i1 %cmp37, label %land.lhs.true.66, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.31
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %30, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load42 = load i32, i32* %33, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 58
  br i1 %cmp44, label %land.lhs.true.66, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.38
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load49 = load i32, i32* %37, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 134
  br i1 %cmp51, label %land.lhs.true.66, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.45
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load56 = load i32, i32* %41, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 56
  br i1 %cmp58, label %land.lhs.true.66, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.52
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load63 = load i32, i32* %45, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 140
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.128

land.lhs.true.66:                                 ; preds = %lor.lhs.false.59, %lor.lhs.false.52, %lor.lhs.false.45, %lor.lhs.false.38, %lor.lhs.false.31, %lor.lhs.false.24, %lor.lhs.false.17, %land.lhs.true
  %46 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %46, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %tobool70 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.128

land.lhs.true.71:                                 ; preds = %land.lhs.true.66
  %49 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 1
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load75 = load i32, i32* %52, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp eq i32 %bf.clear76, 67
  br i1 %cmp77, label %if.then.127, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.lhs.true.71
  %53 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load82 = load i32, i32* %56, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 68
  br i1 %cmp84, label %if.then.127, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.78
  %57 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %57, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 1
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load89 = load i32, i32* %60, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 54
  br i1 %cmp91, label %if.then.127, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %lor.lhs.false.85
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %61, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 1
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load96 = load i32, i32* %64, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 55
  br i1 %cmp98, label %if.then.127, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %lor.lhs.false.92
  %65 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 1
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load103 = load i32, i32* %68, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp eq i32 %bf.clear104, 58
  br i1 %cmp105, label %if.then.127, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.99
  %69 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %69, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load110 = load i32, i32* %72, align 8
  %bf.clear111 = and i32 %bf.load110, 65535
  %cmp112 = icmp eq i32 %bf.clear111, 134
  br i1 %cmp112, label %if.then.127, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %lor.lhs.false.106
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %73, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load117 = load i32, i32* %76, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 56
  br i1 %cmp119, label %if.then.127, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.113
  %77 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %77, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load124 = load i32, i32* %80, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %cmp126 = icmp eq i32 %bf.clear125, 140
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %lor.lhs.false.120, %lor.lhs.false.113, %lor.lhs.false.106, %lor.lhs.false.99, %lor.lhs.false.92, %lor.lhs.false.85, %lor.lhs.false.78, %land.lhs.true.71
  %81 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  store %struct.rtx_def** %81, %struct.rtx_def*** %retval
  br label %return

if.end.128:                                       ; preds = %lor.lhs.false.120, %land.lhs.true.66, %lor.lhs.false.59, %if.end.10
  %82 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %82, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %cmp132 = icmp ne %struct.rtx_def* %84, null
  br i1 %cmp132, label %if.then.133, label %if.end.140

if.then.133:                                      ; preds = %if.end.128
  %85 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %call = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %rtx136)
  store %struct.rtx_def** %call, %struct.rtx_def*** %tem, align 8
  %87 = load %struct.rtx_def**, %struct.rtx_def*** %tem, align 8
  %cmp137 = icmp ne %struct.rtx_def** %87, null
  br i1 %cmp137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.133
  %88 = load %struct.rtx_def**, %struct.rtx_def*** %tem, align 8
  store %struct.rtx_def** %88, %struct.rtx_def*** %retval
  br label %return

if.end.139:                                       ; preds = %if.then.133
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.end.128
  %89 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %89, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 1
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  %cmp144 = icmp ne %struct.rtx_def* %91, null
  br i1 %cmp144, label %if.then.145, label %if.end.153

if.then.145:                                      ; preds = %if.end.140
  %92 = load %struct.rtx_def**, %struct.rtx_def*** %p.addr, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %92, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 1
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %call149 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %rtx148)
  store %struct.rtx_def** %call149, %struct.rtx_def*** %tem, align 8
  %94 = load %struct.rtx_def**, %struct.rtx_def*** %tem, align 8
  %cmp150 = icmp ne %struct.rtx_def** %94, null
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.then.145
  %95 = load %struct.rtx_def**, %struct.rtx_def*** %tem, align 8
  store %struct.rtx_def** %95, %struct.rtx_def*** %retval
  br label %return

if.end.152:                                       ; preds = %if.then.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.140
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

return:                                           ; preds = %if.end.153, %if.then.151, %if.then.138, %if.then.127, %if.then.9, %if.then
  %96 = load %struct.rtx_def**, %struct.rtx_def*** %retval
  ret %struct.rtx_def** %96
}

; Function Attrs: nounwind uwtable
define i32 @offsettable_memref_p(%struct.rtx_def* %op) #0 {
entry:
  %op.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @offsettable_address_p(i32 1, i32 %bf.clear2, %struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @offsettable_address_p(i32 %strictp, i32 %mode, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %strictp.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %y.addr = alloca %struct.rtx_def*, align 8
  %ycode = alloca i32, align 4
  %z = alloca %struct.rtx_def*, align 8
  %y1 = alloca %struct.rtx_def*, align 8
  %y2 = alloca %struct.rtx_def**, align 8
  %addressp = alloca i32 (i32, %struct.rtx_def*)*, align 8
  %mode_sz = alloca i32, align 4
  %good = alloca i32, align 4
  store i32 %strictp, i32* %strictp.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %ycode, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %y1, align 8
  %3 = load i32, i32* %strictp.addr, align 4
  %tobool = icmp ne i32 %3, 0
  %cond = select i1 %tobool, i32 (i32, %struct.rtx_def*)* @strict_memory_address_p, i32 (i32, %struct.rtx_def*)* @memory_address_p
  store i32 (i32, %struct.rtx_def*)* %cond, i32 (i32, %struct.rtx_def*)** %addressp, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %5 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %5 to i32
  store i32 %conv, i32* %mode_sz, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 67
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 68
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load9 = load i32, i32* %11, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 54
  br i1 %cmp11, label %if.then, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 58
  br i1 %cmp16, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load19 = load i32, i32* %15, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 55
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.13, %lor.lhs.false.8, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.18
  %16 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call i32 @mode_dependent_address_p(%struct.rtx_def* %16)
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end
  %17 = load i32, i32* %mode_sz, align 4
  %cmp26 = icmp eq i32 %17, 0
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  store i32 16, i32* %mode_sz, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.end.25
  %18 = load i32, i32* %ycode, align 4
  %cmp30 = icmp eq i32 %18, 75
  br i1 %cmp30, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end.29
  %call32 = call %struct.rtx_def** @find_constant_term_loc(%struct.rtx_def** %y1)
  store %struct.rtx_def** %call32, %struct.rtx_def*** %y2, align 8
  %tobool33 = icmp ne %struct.rtx_def** %call32, null
  br i1 %tobool33, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %land.lhs.true
  %19 = load %struct.rtx_def**, %struct.rtx_def*** %y2, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %19, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %y1, align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %y2, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %21, align 8
  %23 = load i32, i32* %mode_sz, align 4
  %sub = sub i32 %23, 1
  %conv35 = zext i32 %sub to i64
  %call36 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %22, i64 %conv35)
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %y2, align 8
  store %struct.rtx_def* %call36, %struct.rtx_def** %24, align 8
  %25 = load i32 (i32, %struct.rtx_def*)*, i32 (i32, %struct.rtx_def*)** %addressp, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call37 = call i32 %25(i32 2, %struct.rtx_def* %26)
  store i32 %call37, i32* %good, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %28 = load %struct.rtx_def**, %struct.rtx_def*** %y2, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %28, align 8
  %29 = load i32, i32* %good, align 4
  store i32 %29, i32* %retval
  br label %return

if.end.38:                                        ; preds = %land.lhs.true, %if.end.29
  %30 = load i32, i32* %ycode, align 4
  %idxprom39 = sext i32 %30 to i64
  %arrayidx40 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom39
  %31 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %31 to i32
  %cmp42 = icmp eq i32 %conv41, 97
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %if.end.38
  %32 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load46 = load i32, i32* %33, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 135
  br i1 %cmp48, label %land.lhs.true.50, label %if.else

land.lhs.true.50:                                 ; preds = %if.end.45
  %34 = load i32, i32* %mode.addr, align 4
  %cmp51 = icmp ne i32 %34, 51
  br i1 %cmp51, label %land.lhs.true.53, label %if.else

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %35 = load i32, i32* %mode_sz, align 4
  %36 = load i32, i32* %mode.addr, align 4
  %call54 = call i32 @get_mode_alignment(i32 %36)
  %div = udiv i32 %call54, 8
  %cmp55 = icmp ule i32 %35, %div
  br i1 %cmp55, label %if.then.57, label %if.else

if.then.57:                                       ; preds = %land.lhs.true.53
  %37 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load58 = load i32, i32* %38, align 8
  %bf.lshr = lshr i32 %bf.load58, 16
  %bf.clear59 = and i32 %bf.lshr, 255
  %39 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %43 = load i32, i32* %mode_sz, align 4
  %sub64 = sub i32 %43, 1
  %conv65 = zext i32 %sub64 to i64
  %call66 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %42, i64 %conv65)
  %call67 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 135, i32 %bf.clear59, %struct.rtx_def* %40, %struct.rtx_def* %call66)
  store %struct.rtx_def* %call67, %struct.rtx_def** %z, align 8
  br label %if.end.71

if.else:                                          ; preds = %land.lhs.true.53, %land.lhs.true.50, %if.end.45
  %44 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %45 = load i32, i32* %mode_sz, align 4
  %sub68 = sub i32 %45, 1
  %conv69 = zext i32 %sub68 to i64
  %call70 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %44, i64 %conv69)
  store %struct.rtx_def* %call70, %struct.rtx_def** %z, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.else, %if.then.57
  %46 = load i32 (i32, %struct.rtx_def*)*, i32 (i32, %struct.rtx_def*)** %addressp, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %z, align 8
  %call72 = call i32 %46(i32 2, %struct.rtx_def* %47)
  store i32 %call72, i32* %retval
  br label %return

return:                                           ; preds = %if.end.71, %if.then.44, %if.then.34, %if.then.24, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

declare i32 @strict_memory_address_p(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @mode_dependent_address_p(%struct.rtx_def* %addr) #0 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 99
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 98
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %do.body
  br label %win

if.end:                                           ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

win:                                              ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %win, %do.end
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare i32 @get_mode_alignment(i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @mode_independent_operand(%struct.rtx_def* %op, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %call = call i32 @general_operand(%struct.rtx_def* %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %addr, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 99
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load6 = load i32, i32* %9, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 98
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %do.body
  br label %lose

if.end.10:                                        ; preds = %lor.lhs.false
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 1, i32* %retval
  br label %return

lose:                                             ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %lose, %do.end, %if.then.1, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @extract_insn_cached(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 10), align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtint, align 4
  %cmp1 = icmp sge i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 10), align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @extract_constrain_insn_cached(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn_cached(%struct.rtx_def* %0)
  %1 = load i32, i32* @which_alternative, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @reload_completed, align 4
  %call = call i32 @constrain_operands(i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2063, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__FUNCTION__.extract_constrain_insn_cached, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: noreturn
declare void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @constrain_operands_cached(i32 %strict) #0 {
entry:
  %retval = alloca i32, align 4
  %strict.addr = alloca i32, align 4
  store i32 %strict, i32* %strict.addr, align 4
  %0 = load i32, i32* @which_alternative, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %strict.addr, align 4
  %call = call i32 @constrain_operands(i32 %1)
  store i32 %call, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare void @insn_extract(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @preprocess_constraints() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %op_alt = alloca %struct.operand_alternative*, align 8
  %p = alloca i8*, align 8
  %c = alloca i8, align 1
  %end = alloca i8*, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([30 x [30 x %struct.operand_alternative]]* @recog_op_alt to i8*), i8 0, i64 28800, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.292, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end.294

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  store i8* %3, i8** %p, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom2
  %arraydecay = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx3, i32 0, i32 0
  store %struct.operand_alternative* %arraydecay, %struct.operand_alternative** %op_alt, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv5 = sext i8 %6 to i32
  %cmp6 = icmp slt i32 %5, %conv5
  br i1 %cmp6, label %for.body.8, label %for.end.291

for.body.8:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %8 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx10 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %8, i64 %idxprom9
  %class = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx10, i32 0, i32 1
  store i32 0, i32* %class, align 4
  %9 = load i8*, i8** %p, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx12 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %11, i64 %idxprom11
  %constraint = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx12, i32 0, i32 0
  store i8* %9, i8** %constraint, align 8
  %12 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %12 to i64
  %13 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx14 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %13, i64 %idxprom13
  %matches = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx14, i32 0, i32 3
  store i32 -1, i32* %matches, align 4
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx16 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %15, i64 %idxprom15
  %matched = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx16, i32 0, i32 4
  store i32 -1, i32* %matched, align 4
  %16 = load i8*, i8** %p, align 8
  %17 = load i8, i8* %16, align 1
  %conv17 = sext i8 %17 to i32
  %cmp18 = icmp eq i32 %conv17, 0
  br i1 %cmp18, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.8
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 44
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body.8
  %20 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx24 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %21, i64 %idxprom23
  %anything_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx24, i32 0, i32 5
  %bf.load = load i8, i8* %anything_ok, align 8
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, -128
  store i8 %bf.set, i8* %anything_ok, align 8
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br label %for.cond.25

for.cond.25:                                      ; preds = %sw.epilog, %if.end
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %c, align 1
  %24 = load i8, i8* %c, align 1
  %conv26 = sext i8 %24 to i32
  %cmp27 = icmp eq i32 %conv26, 35
  br i1 %cmp27, label %if.then.29, label %if.end.37

if.then.29:                                       ; preds = %for.cond.25
  br label %do.body

do.body:                                          ; preds = %land.end, %if.then.29
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr30, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %c, align 1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %27 = load i8, i8* %c, align 1
  %conv31 = sext i8 %27 to i32
  %cmp32 = icmp ne i32 %conv31, 44
  br i1 %cmp32, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %28 = load i8, i8* %c, align 1
  %conv34 = sext i8 %28 to i32
  %cmp35 = icmp ne i32 %conv34, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %29 = phi i1 [ false, %do.cond ], [ %cmp35, %land.rhs ]
  br i1 %29, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %for.cond.25
  %30 = load i8, i8* %c, align 1
  %conv38 = sext i8 %30 to i32
  %cmp39 = icmp eq i32 %conv38, 44
  br i1 %cmp39, label %if.then.45, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.37
  %31 = load i8, i8* %c, align 1
  %conv42 = sext i8 %31 to i32
  %cmp43 = icmp eq i32 %conv42, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %lor.lhs.false.41, %if.end.37
  br label %for.end

if.end.46:                                        ; preds = %lor.lhs.false.41
  %32 = load i8, i8* %c, align 1
  %conv47 = sext i8 %32 to i32
  switch i32 %conv47, label %sw.default [
    i32 61, label %sw.bb
    i32 43, label %sw.bb
    i32 42, label %sw.bb
    i32 37, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 71, label %sw.bb
    i32 72, label %sw.bb
    i32 115, label %sw.bb
    i32 105, label %sw.bb
    i32 110, label %sw.bb
    i32 73, label %sw.bb
    i32 74, label %sw.bb
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 77, label %sw.bb
    i32 78, label %sw.bb
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 63, label %sw.bb.48
    i32 33, label %sw.bb.51
    i32 38, label %sw.bb.56
    i32 48, label %sw.bb.62
    i32 49, label %sw.bb.62
    i32 50, label %sw.bb.62
    i32 51, label %sw.bb.62
    i32 52, label %sw.bb.62
    i32 53, label %sw.bb.62
    i32 54, label %sw.bb.62
    i32 55, label %sw.bb.62
    i32 56, label %sw.bb.62
    i32 57, label %sw.bb.62
    i32 109, label %sw.bb.75
    i32 60, label %sw.bb.81
    i32 62, label %sw.bb.87
    i32 86, label %sw.bb.93
    i32 111, label %sw.bb.99
    i32 88, label %sw.bb.105
    i32 112, label %sw.bb.112
    i32 103, label %sw.bb.127
    i32 114, label %sw.bb.127
  ]

sw.bb:                                            ; preds = %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.end.46
  %33 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %33 to i64
  %34 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx50 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %34, i64 %idxprom49
  %reject = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx50, i32 0, i32 2
  %35 = load i32, i32* %reject, align 4
  %add = add i32 %35, 6
  store i32 %add, i32* %reject, align 4
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.46
  %36 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %36 to i64
  %37 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx53 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %37, i64 %idxprom52
  %reject54 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx53, i32 0, i32 2
  %38 = load i32, i32* %reject54, align 4
  %add55 = add i32 %38, 600
  store i32 %add55, i32* %reject54, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.46
  %39 = load i32, i32* %j, align 4
  %idxprom57 = sext i32 %39 to i64
  %40 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx58 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %40, i64 %idxprom57
  %earlyclobber = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx58, i32 0, i32 5
  %bf.load59 = load i8, i8* %earlyclobber, align 8
  %bf.clear60 = and i8 %bf.load59, -2
  %bf.set61 = or i8 %bf.clear60, 1
  store i8 %bf.set61, i8* %earlyclobber, align 8
  br label %sw.epilog

sw.bb.62:                                         ; preds = %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46, %if.end.46
  %41 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %41, i64 -1
  %call = call i64 @strtoul(i8* %add.ptr, i8** %end, i32 10) #3
  %conv63 = trunc i64 %call to i32
  %42 = load i32, i32* %j, align 4
  %idxprom64 = sext i32 %42 to i64
  %43 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx65 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %43, i64 %idxprom64
  %matches66 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx65, i32 0, i32 3
  store i32 %conv63, i32* %matches66, align 4
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %j, align 4
  %idxprom67 = sext i32 %45 to i64
  %46 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %46 to i64
  %47 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx69 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %47, i64 %idxprom68
  %matches70 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx69, i32 0, i32 3
  %48 = load i32, i32* %matches70, align 4
  %idxprom71 = sext i32 %48 to i64
  %arrayidx72 = getelementptr inbounds [30 x [30 x %struct.operand_alternative]], [30 x [30 x %struct.operand_alternative]]* @recog_op_alt, i32 0, i64 %idxprom71
  %arrayidx73 = getelementptr inbounds [30 x %struct.operand_alternative], [30 x %struct.operand_alternative]* %arrayidx72, i32 0, i64 %idxprom67
  %matched74 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx73, i32 0, i32 4
  store i32 %44, i32* %matched74, align 4
  %49 = load i8*, i8** %end, align 8
  store i8* %49, i8** %p, align 8
  br label %sw.epilog

sw.bb.75:                                         ; preds = %if.end.46
  %50 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %50 to i64
  %51 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx77 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %51, i64 %idxprom76
  %memory_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx77, i32 0, i32 5
  %bf.load78 = load i8, i8* %memory_ok, align 8
  %bf.clear79 = and i8 %bf.load78, -3
  %bf.set80 = or i8 %bf.clear79, 2
  store i8 %bf.set80, i8* %memory_ok, align 8
  br label %sw.epilog

sw.bb.81:                                         ; preds = %if.end.46
  %52 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %52 to i64
  %53 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx83 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %53, i64 %idxprom82
  %decmem_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx83, i32 0, i32 5
  %bf.load84 = load i8, i8* %decmem_ok, align 8
  %bf.clear85 = and i8 %bf.load84, -17
  %bf.set86 = or i8 %bf.clear85, 16
  store i8 %bf.set86, i8* %decmem_ok, align 8
  br label %sw.epilog

sw.bb.87:                                         ; preds = %if.end.46
  %54 = load i32, i32* %j, align 4
  %idxprom88 = sext i32 %54 to i64
  %55 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx89 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %55, i64 %idxprom88
  %incmem_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx89, i32 0, i32 5
  %bf.load90 = load i8, i8* %incmem_ok, align 8
  %bf.clear91 = and i8 %bf.load90, -33
  %bf.set92 = or i8 %bf.clear91, 32
  store i8 %bf.set92, i8* %incmem_ok, align 8
  br label %sw.epilog

sw.bb.93:                                         ; preds = %if.end.46
  %56 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %56 to i64
  %57 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx95 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %57, i64 %idxprom94
  %nonoffmem_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx95, i32 0, i32 5
  %bf.load96 = load i8, i8* %nonoffmem_ok, align 8
  %bf.clear97 = and i8 %bf.load96, -9
  %bf.set98 = or i8 %bf.clear97, 8
  store i8 %bf.set98, i8* %nonoffmem_ok, align 8
  br label %sw.epilog

sw.bb.99:                                         ; preds = %if.end.46
  %58 = load i32, i32* %j, align 4
  %idxprom100 = sext i32 %58 to i64
  %59 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx101 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %59, i64 %idxprom100
  %offmem_ok = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx101, i32 0, i32 5
  %bf.load102 = load i8, i8* %offmem_ok, align 8
  %bf.clear103 = and i8 %bf.load102, -5
  %bf.set104 = or i8 %bf.clear103, 4
  store i8 %bf.set104, i8* %offmem_ok, align 8
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.end.46
  %60 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %60 to i64
  %61 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx107 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %61, i64 %idxprom106
  %anything_ok108 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx107, i32 0, i32 5
  %bf.load109 = load i8, i8* %anything_ok108, align 8
  %bf.clear110 = and i8 %bf.load109, 127
  %bf.set111 = or i8 %bf.clear110, -128
  store i8 %bf.set111, i8* %anything_ok108, align 8
  br label %sw.epilog

sw.bb.112:                                        ; preds = %if.end.46
  %62 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %62 to i64
  %63 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx114 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %63, i64 %idxprom113
  %is_address = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx114, i32 0, i32 5
  %bf.load115 = load i8, i8* %is_address, align 8
  %bf.clear116 = and i8 %bf.load115, -65
  %bf.set117 = or i8 %bf.clear116, 64
  store i8 %bf.set117, i8* %is_address, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %64 to i64
  %65 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx119 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %65, i64 %idxprom118
  %class120 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx119, i32 0, i32 1
  %66 = load i32, i32* %class120, align 4
  %idxprom121 = sext i32 %66 to i64
  %arrayidx122 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom121
  %arrayidx123 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx122, i32 0, i64 12
  %67 = load i32, i32* %arrayidx123, align 4
  %68 = load i32, i32* %j, align 4
  %idxprom124 = sext i32 %68 to i64
  %69 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx125 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %69, i64 %idxprom124
  %class126 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx125, i32 0, i32 1
  store i32 %67, i32* %class126, align 4
  br label %sw.epilog

sw.bb.127:                                        ; preds = %if.end.46, %if.end.46
  %70 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %70 to i64
  %71 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx129 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %71, i64 %idxprom128
  %class130 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx129, i32 0, i32 1
  %72 = load i32, i32* %class130, align 4
  %idxprom131 = sext i32 %72 to i64
  %arrayidx132 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx132, i32 0, i64 12
  %73 = load i32, i32* %arrayidx133, align 4
  %74 = load i32, i32* %j, align 4
  %idxprom134 = sext i32 %74 to i64
  %75 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx135 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %75, i64 %idxprom134
  %class136 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx135, i32 0, i32 1
  store i32 %73, i32* %class136, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.46
  %76 = load i8, i8* %c, align 1
  %conv137 = zext i8 %76 to i32
  %cmp138 = icmp eq i32 %conv137, 114
  br i1 %cmp138, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.default
  br label %cond.end.279

cond.false:                                       ; preds = %sw.default
  %77 = load i8, i8* %c, align 1
  %conv140 = zext i8 %77 to i32
  %cmp141 = icmp eq i32 %conv140, 82
  br i1 %cmp141, label %cond.true.143, label %cond.false.144

cond.true.143:                                    ; preds = %cond.false
  br label %cond.end.277

cond.false.144:                                   ; preds = %cond.false
  %78 = load i8, i8* %c, align 1
  %conv145 = zext i8 %78 to i32
  %cmp146 = icmp eq i32 %conv145, 113
  br i1 %cmp146, label %cond.true.148, label %cond.false.149

cond.true.148:                                    ; preds = %cond.false.144
  %79 = load i32, i32* @target_flags, align 4
  %and = and i32 %79, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 12, i32 8
  br label %cond.end.275

cond.false.149:                                   ; preds = %cond.false.144
  %80 = load i8, i8* %c, align 1
  %conv150 = zext i8 %80 to i32
  %cmp151 = icmp eq i32 %conv150, 81
  br i1 %cmp151, label %cond.true.153, label %cond.false.154

cond.true.153:                                    ; preds = %cond.false.149
  br label %cond.end.273

cond.false.154:                                   ; preds = %cond.false.149
  %81 = load i8, i8* %c, align 1
  %conv155 = zext i8 %81 to i32
  %cmp156 = icmp eq i32 %conv155, 102
  br i1 %cmp156, label %cond.true.158, label %cond.false.164

cond.true.158:                                    ; preds = %cond.false.154
  %82 = load i32, i32* @target_flags, align 4
  %and159 = and i32 %82, 1
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.158
  %83 = load i32, i32* @target_flags, align 4
  %and161 = and i32 %83, 32
  %tobool162 = icmp ne i32 %and161, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.158
  %84 = phi i1 [ true, %cond.true.158 ], [ %tobool162, %lor.rhs ]
  %cond163 = select i1 %84, i32 15, i32 0
  br label %cond.end.271

cond.false.164:                                   ; preds = %cond.false.154
  %85 = load i8, i8* %c, align 1
  %conv165 = zext i8 %85 to i32
  %cmp166 = icmp eq i32 %conv165, 116
  br i1 %cmp166, label %cond.true.168, label %cond.false.176

cond.true.168:                                    ; preds = %cond.false.164
  %86 = load i32, i32* @target_flags, align 4
  %and169 = and i32 %86, 1
  %tobool170 = icmp ne i32 %and169, 0
  br i1 %tobool170, label %lor.end.174, label %lor.rhs.171

lor.rhs.171:                                      ; preds = %cond.true.168
  %87 = load i32, i32* @target_flags, align 4
  %and172 = and i32 %87, 32
  %tobool173 = icmp ne i32 %and172, 0
  br label %lor.end.174

lor.end.174:                                      ; preds = %lor.rhs.171, %cond.true.168
  %88 = phi i1 [ true, %cond.true.168 ], [ %tobool173, %lor.rhs.171 ]
  %cond175 = select i1 %88, i32 13, i32 0
  br label %cond.end.269

cond.false.176:                                   ; preds = %cond.false.164
  %89 = load i8, i8* %c, align 1
  %conv177 = zext i8 %89 to i32
  %cmp178 = icmp eq i32 %conv177, 117
  br i1 %cmp178, label %cond.true.180, label %cond.false.188

cond.true.180:                                    ; preds = %cond.false.176
  %90 = load i32, i32* @target_flags, align 4
  %and181 = and i32 %90, 1
  %tobool182 = icmp ne i32 %and181, 0
  br i1 %tobool182, label %lor.end.186, label %lor.rhs.183

lor.rhs.183:                                      ; preds = %cond.true.180
  %91 = load i32, i32* @target_flags, align 4
  %and184 = and i32 %91, 32
  %tobool185 = icmp ne i32 %and184, 0
  br label %lor.end.186

lor.end.186:                                      ; preds = %lor.rhs.183, %cond.true.180
  %92 = phi i1 [ true, %cond.true.180 ], [ %tobool185, %lor.rhs.183 ]
  %cond187 = select i1 %92, i32 14, i32 0
  br label %cond.end.267

cond.false.188:                                   ; preds = %cond.false.176
  %93 = load i8, i8* %c, align 1
  %conv189 = zext i8 %93 to i32
  %cmp190 = icmp eq i32 %conv189, 97
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %cond.false.188
  br label %cond.end.265

cond.false.193:                                   ; preds = %cond.false.188
  %94 = load i8, i8* %c, align 1
  %conv194 = zext i8 %94 to i32
  %cmp195 = icmp eq i32 %conv194, 98
  br i1 %cmp195, label %cond.true.197, label %cond.false.198

cond.true.197:                                    ; preds = %cond.false.193
  br label %cond.end.263

cond.false.198:                                   ; preds = %cond.false.193
  %95 = load i8, i8* %c, align 1
  %conv199 = zext i8 %95 to i32
  %cmp200 = icmp eq i32 %conv199, 99
  br i1 %cmp200, label %cond.true.202, label %cond.false.203

cond.true.202:                                    ; preds = %cond.false.198
  br label %cond.end.261

cond.false.203:                                   ; preds = %cond.false.198
  %96 = load i8, i8* %c, align 1
  %conv204 = zext i8 %96 to i32
  %cmp205 = icmp eq i32 %conv204, 100
  br i1 %cmp205, label %cond.true.207, label %cond.false.208

cond.true.207:                                    ; preds = %cond.false.203
  br label %cond.end.259

cond.false.208:                                   ; preds = %cond.false.203
  %97 = load i8, i8* %c, align 1
  %conv209 = zext i8 %97 to i32
  %cmp210 = icmp eq i32 %conv209, 120
  br i1 %cmp210, label %cond.true.212, label %cond.false.217

cond.true.212:                                    ; preds = %cond.false.208
  %98 = load i32, i32* @target_flags, align 4
  %and213 = and i32 %98, 327680
  %cmp214 = icmp ne i32 %and213, 0
  %cond216 = select i1 %cmp214, i32 16, i32 0
  br label %cond.end.257

cond.false.217:                                   ; preds = %cond.false.208
  %99 = load i8, i8* %c, align 1
  %conv218 = zext i8 %99 to i32
  %cmp219 = icmp eq i32 %conv218, 89
  br i1 %cmp219, label %cond.true.221, label %cond.false.226

cond.true.221:                                    ; preds = %cond.false.217
  %100 = load i32, i32* @target_flags, align 4
  %and222 = and i32 %100, 262144
  %cmp223 = icmp ne i32 %and222, 0
  %cond225 = select i1 %cmp223, i32 16, i32 0
  br label %cond.end.255

cond.false.226:                                   ; preds = %cond.false.217
  %101 = load i8, i8* %c, align 1
  %conv227 = zext i8 %101 to i32
  %cmp228 = icmp eq i32 %conv227, 121
  br i1 %cmp228, label %cond.true.230, label %cond.false.235

cond.true.230:                                    ; preds = %cond.false.226
  %102 = load i32, i32* @target_flags, align 4
  %and231 = and i32 %102, 16384
  %cmp232 = icmp ne i32 %and231, 0
  %cond234 = select i1 %cmp232, i32 17, i32 0
  br label %cond.end.253

cond.false.235:                                   ; preds = %cond.false.226
  %103 = load i8, i8* %c, align 1
  %conv236 = zext i8 %103 to i32
  %cmp237 = icmp eq i32 %conv236, 65
  br i1 %cmp237, label %cond.true.239, label %cond.false.240

cond.true.239:                                    ; preds = %cond.false.235
  br label %cond.end.251

cond.false.240:                                   ; preds = %cond.false.235
  %104 = load i8, i8* %c, align 1
  %conv241 = zext i8 %104 to i32
  %cmp242 = icmp eq i32 %conv241, 68
  br i1 %cmp242, label %cond.true.244, label %cond.false.245

cond.true.244:                                    ; preds = %cond.false.240
  br label %cond.end

cond.false.245:                                   ; preds = %cond.false.240
  %105 = load i8, i8* %c, align 1
  %conv246 = zext i8 %105 to i32
  %cmp247 = icmp eq i32 %conv246, 83
  %cond249 = select i1 %cmp247, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.245, %cond.true.244
  %cond250 = phi i32 [ 6, %cond.true.244 ], [ %cond249, %cond.false.245 ]
  br label %cond.end.251

cond.end.251:                                     ; preds = %cond.end, %cond.true.239
  %cond252 = phi i32 [ 7, %cond.true.239 ], [ %cond250, %cond.end ]
  br label %cond.end.253

cond.end.253:                                     ; preds = %cond.end.251, %cond.true.230
  %cond254 = phi i32 [ %cond234, %cond.true.230 ], [ %cond252, %cond.end.251 ]
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.end.253, %cond.true.221
  %cond256 = phi i32 [ %cond225, %cond.true.221 ], [ %cond254, %cond.end.253 ]
  br label %cond.end.257

cond.end.257:                                     ; preds = %cond.end.255, %cond.true.212
  %cond258 = phi i32 [ %cond216, %cond.true.212 ], [ %cond256, %cond.end.255 ]
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.end.257, %cond.true.207
  %cond260 = phi i32 [ 2, %cond.true.207 ], [ %cond258, %cond.end.257 ]
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.end.259, %cond.true.202
  %cond262 = phi i32 [ 3, %cond.true.202 ], [ %cond260, %cond.end.259 ]
  br label %cond.end.263

cond.end.263:                                     ; preds = %cond.end.261, %cond.true.197
  %cond264 = phi i32 [ 4, %cond.true.197 ], [ %cond262, %cond.end.261 ]
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.end.263, %cond.true.192
  %cond266 = phi i32 [ 1, %cond.true.192 ], [ %cond264, %cond.end.263 ]
  br label %cond.end.267

cond.end.267:                                     ; preds = %cond.end.265, %lor.end.186
  %cond268 = phi i32 [ %cond187, %lor.end.186 ], [ %cond266, %cond.end.265 ]
  br label %cond.end.269

cond.end.269:                                     ; preds = %cond.end.267, %lor.end.174
  %cond270 = phi i32 [ %cond175, %lor.end.174 ], [ %cond268, %cond.end.267 ]
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.end.269, %lor.end
  %cond272 = phi i32 [ %cond163, %lor.end ], [ %cond270, %cond.end.269 ]
  br label %cond.end.273

cond.end.273:                                     ; preds = %cond.end.271, %cond.true.153
  %cond274 = phi i32 [ 8, %cond.true.153 ], [ %cond272, %cond.end.271 ]
  br label %cond.end.275

cond.end.275:                                     ; preds = %cond.end.273, %cond.true.148
  %cond276 = phi i32 [ %cond, %cond.true.148 ], [ %cond274, %cond.end.273 ]
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.end.275, %cond.true.143
  %cond278 = phi i32 [ 11, %cond.true.143 ], [ %cond276, %cond.end.275 ]
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.end.277, %cond.true
  %cond280 = phi i32 [ 12, %cond.true ], [ %cond278, %cond.end.277 ]
  %idxprom281 = sext i32 %cond280 to i64
  %106 = load i32, i32* %j, align 4
  %idxprom282 = sext i32 %106 to i64
  %107 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx283 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %107, i64 %idxprom282
  %class284 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx283, i32 0, i32 1
  %108 = load i32, i32* %class284, align 4
  %idxprom285 = sext i32 %108 to i64
  %arrayidx286 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom285
  %arrayidx287 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx286, i32 0, i64 %idxprom281
  %109 = load i32, i32* %arrayidx287, align 4
  %110 = load i32, i32* %j, align 4
  %idxprom288 = sext i32 %110 to i64
  %111 = load %struct.operand_alternative*, %struct.operand_alternative** %op_alt, align 8
  %arrayidx289 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %111, i64 %idxprom288
  %class290 = getelementptr inbounds %struct.operand_alternative, %struct.operand_alternative* %arrayidx289, i32 0, i32 1
  store i32 %109, i32* %class290, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end.279, %sw.bb.127, %sw.bb.112, %sw.bb.105, %sw.bb.99, %sw.bb.93, %sw.bb.87, %sw.bb.81, %sw.bb.75, %sw.bb.62, %sw.bb.56, %sw.bb.51, %sw.bb.48, %sw.bb
  br label %for.cond.25

for.end:                                          ; preds = %if.then.45
  br label %for.inc

for.inc:                                          ; preds = %for.end, %if.then
  %112 = load i32, i32* %j, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end.291:                                      ; preds = %for.cond.4
  br label %for.inc.292

for.inc.292:                                      ; preds = %for.end.291
  %113 = load i32, i32* %i, align 4
  %inc293 = add nsw i32 %113, 1
  store i32 %inc293, i32* %i, align 4
  br label %for.cond

for.end.294:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

declare i32 @subreg_regno_offset(i32, i32, i32, i32) #1

declare i32 @operands_match_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @reg_fits_class_p(%struct.rtx_def* %operand, i32 %class, i32 %offset, i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %operand.addr = alloca %struct.rtx_def*, align 8
  %class.addr = alloca i32, align 4
  %offset.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  %sr = alloca i32, align 4
  store %struct.rtx_def* %operand, %struct.rtx_def** %operand.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %operand.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno, align 4
  %2 = load i32, i32* %regno, align 4
  %cmp = icmp slt i32 %2, 53
  br i1 %cmp, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %class.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx1 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx1, align 8
  %5 = load i32, i32* %regno, align 4
  %6 = load i32, i32* %offset.addr, align 4
  %add = add nsw i32 %5, %6
  %sh_prom = zext i32 %add to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %4, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.62

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %offset.addr, align 4
  %8 = load i32, i32* %regno, align 4
  %add2 = add nsw i32 %8, %7
  store i32 %add2, i32* %regno, align 4
  %9 = load i32, i32* %regno, align 4
  %cmp3 = icmp sge i32 %9, 8
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false

land.lhs.true.4:                                  ; preds = %if.then
  %10 = load i32, i32* %regno, align 4
  %cmp5 = icmp sle i32 %10, 15
  br i1 %cmp5, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4, %if.then
  %11 = load i32, i32* %regno, align 4
  %cmp6 = icmp sge i32 %11, 21
  br i1 %cmp6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp8 = icmp sle i32 %12, 28
  br i1 %cmp8, label %cond.true, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false
  %13 = load i32, i32* %regno, align 4
  %cmp10 = icmp sge i32 %13, 45
  br i1 %cmp10, label %land.lhs.true.11, label %lor.lhs.false.13

land.lhs.true.11:                                 ; preds = %lor.lhs.false.9
  %14 = load i32, i32* %regno, align 4
  %cmp12 = icmp sle i32 %14, 52
  br i1 %cmp12, label %cond.true, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true.11, %lor.lhs.false.9
  %15 = load i32, i32* %regno, align 4
  %cmp14 = icmp sge i32 %15, 29
  br i1 %cmp14, label %land.lhs.true.15, label %cond.false

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %16 = load i32, i32* %regno, align 4
  %cmp16 = icmp sle i32 %16, 36
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.15, %land.lhs.true.11, %land.lhs.true.7, %land.lhs.true.4
  %17 = load i32, i32* %mode.addr, align 4
  %idxprom17 = sext i32 %17 to i64
  %arrayidx18 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom17
  %18 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %18, 5
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %19 = load i32, i32* %mode.addr, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom20
  %20 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %20, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %21 = phi i1 [ true, %cond.true ], [ %cmp22, %lor.rhs ]
  %cond = select i1 %21, i32 2, i32 1
  br label %cond.end.47

cond.false:                                       ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %22 = load i32, i32* %mode.addr, align 4
  %cmp23 = icmp eq i32 %22, 18
  br i1 %cmp23, label %cond.true.24, label %cond.false.28

cond.true.24:                                     ; preds = %cond.false
  %23 = load i32, i32* @target_flags, align 4
  %and25 = and i32 %23, 33554432
  %tobool26 = icmp ne i32 %and25, 0
  %cond27 = select i1 %tobool26, i32 2, i32 3
  br label %cond.end.45

cond.false.28:                                    ; preds = %cond.false
  %24 = load i32, i32* %mode.addr, align 4
  %cmp29 = icmp eq i32 %24, 24
  br i1 %cmp29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.false.28
  %25 = load i32, i32* @target_flags, align 4
  %and31 = and i32 %25, 33554432
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 4, i32 6
  br label %cond.end

cond.false.34:                                    ; preds = %cond.false.28
  %26 = load i32, i32* %mode.addr, align 4
  %idxprom35 = sext i32 %26 to i64
  %arrayidx36 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom35
  %27 = load i8, i8* %arrayidx36, align 1
  %conv = zext i8 %27 to i32
  %28 = load i32, i32* @target_flags, align 4
  %and37 = and i32 %28, 33554432
  %tobool38 = icmp ne i32 %and37, 0
  %cond39 = select i1 %tobool38, i32 8, i32 4
  %add40 = add nsw i32 %conv, %cond39
  %sub = sub nsw i32 %add40, 1
  %29 = load i32, i32* @target_flags, align 4
  %and41 = and i32 %29, 33554432
  %tobool42 = icmp ne i32 %and41, 0
  %cond43 = select i1 %tobool42, i32 8, i32 4
  %div = sdiv i32 %sub, %cond43
  br label %cond.end

cond.end:                                         ; preds = %cond.false.34, %cond.true.30
  %cond44 = phi i32 [ %cond33, %cond.true.30 ], [ %div, %cond.false.34 ]
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.end, %cond.true.24
  %cond46 = phi i32 [ %cond27, %cond.true.24 ], [ %cond44, %cond.end ]
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.end.45, %lor.end
  %cond48 = phi i32 [ %cond, %lor.end ], [ %cond46, %cond.end.45 ]
  %sub49 = sub nsw i32 %cond48, 1
  store i32 %sub49, i32* %sr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.47
  %30 = load i32, i32* %sr, align 4
  %cmp50 = icmp sgt i32 %30, 0
  br i1 %cmp50, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %class.addr, align 4
  %idxprom52 = sext i32 %31 to i64
  %arrayidx53 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom52
  %32 = load i64, i64* %arrayidx53, align 8
  %33 = load i32, i32* %regno, align 4
  %34 = load i32, i32* %sr, align 4
  %add54 = add nsw i32 %33, %34
  %sh_prom55 = zext i32 %add54 to i64
  %shl56 = shl i64 1, %sh_prom55
  %and57 = and i64 %32, %shl56
  %tobool58 = icmp ne i64 %and57, 0
  br i1 %tobool58, label %if.end, label %if.then.59

if.then.59:                                       ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %35 = load i32, i32* %sr, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %sr, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %for.cond
  %36 = load i32, i32* %sr, align 4
  %cmp60 = icmp eq i32 %36, 0
  %conv61 = zext i1 %cmp60 to i32
  store i32 %conv61, i32* %retval
  br label %return

if.end.62:                                        ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.62, %for.end
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @safe_from_earlyclobber(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @split_all_insns(i32 %upd_life) #0 {
entry:
  %upd_life.addr = alloca i32, align 4
  %blocks = alloca %struct.simple_bitmap_def*, align 8
  %changed = alloca i32, align 4
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store i32 %upd_life, i32* %upd_life.addr, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %blocks, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %1)
  store i32 0, i32* %changed, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %next, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call5 = call %struct.rtx_def* @split_insn(%struct.rtx_def* %12)
  store %struct.rtx_def* %call5, %struct.rtx_def** %last, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %tobool6 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp7 = icmp eq i32 %bf.clear, 35
  br i1 %cmp7, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %last, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load i32, i32* %i, align 4
  %rem = urem i32 %18, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %19 = load i32, i32* %i, align 4
  %div = udiv i32 %19, 64
  %idxprom11 = zext i32 %div to i64
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom11
  %21 = load i64, i64* %arrayidx12, align 8
  %or = or i64 %21, %shl
  store i64 %or, i64* %arrayidx12, align 8
  store i32 1, i32* %changed, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %for.body.3
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp13 = icmp eq %struct.rtx_def* %23, %25
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end
  br label %for.end

if.end.15:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %26 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %insn, align 8
  br label %for.cond.2

for.end:                                          ; preds = %if.then.14, %for.cond.2
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp16 = icmp eq %struct.rtx_def* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2798, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.split_all_insns, i32 0, i32 0)) #5
  unreachable

if.end.18:                                        ; preds = %for.end
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end.18
  %28 = load i32, i32* %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  %29 = load i32, i32* %changed, align 4
  %tobool21 = icmp ne i32 %29, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %for.end.20
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @find_many_sub_basic_blocks(%struct.simple_bitmap_def* %30)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %for.end.20
  %31 = load i32, i32* %changed, align 4
  %tobool24 = icmp ne i32 %31, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end.23
  %32 = load i32, i32* %upd_life.addr, align 4
  %tobool25 = icmp ne i32 %32, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %call27 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* %33, i32 1)
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @update_life_info(%struct.simple_bitmap_def* %34, i32 0, i32 1)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %land.lhs.true, %if.end.23
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %36 = bitcast %struct.simple_bitmap_def* %35 to i8*
  call void @free(i8* %36) #3
  ret void
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @split_insn(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %first = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
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
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.83

if.else:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 105
  br i1 %cmp7, label %cond.true, label %cond.false.21

cond.true:                                        ; preds = %if.else
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load10 = load i32, i32* %8, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 47
  br i1 %cmp12, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %11, %struct.rtx_def* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi %struct.rtx_def* [ %10, %cond.true.14 ], [ %call, %cond.false ]
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.else
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.end
  %cond23 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.21 ]
  store %struct.rtx_def* %cond23, %struct.rtx_def** %set, align 8
  %cmp24 = icmp ne %struct.rtx_def* %cond23, null
  br i1 %cmp24, label %land.lhs.true, label %if.else.36

land.lhs.true:                                    ; preds = %cond.end.22
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %call26 = call i32 @set_noop_p(%struct.rtx_def* %14)
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.then.27, label %if.else.36

if.then.27:                                       ; preds = %land.lhs.true
  %15 = load i32, i32* @reload_completed, align 4
  %tobool28 = icmp ne i32 %15, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %if.then.27
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load30 = load i32, i32* %17, align 8
  %bf.clear31 = and i32 %bf.load30, -65536
  %bf.set = or i32 %bf.clear31, 37
  store i32 %bf.set, i32* %17, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx33 to i32*
  store i32 -99, i32* %rtint, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx35 to i8**
  store i8* null, i8** %rtstr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %if.then.27
  br label %if.end.82

if.else.36:                                       ; preds = %land.lhs.true, %cond.end.22
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %first, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 3
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call43 = call %struct.rtx_def* @try_split(%struct.rtx_def* %23, %struct.rtx_def* %24, i32 1)
  store %struct.rtx_def* %call43, %struct.rtx_def** %last, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp44 = icmp ne %struct.rtx_def* %25, %26
  br i1 %cmp44, label %if.then.46, label %if.end.81

if.then.46:                                       ; preds = %if.else.36
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load47 = load i32, i32* %28, align 8
  %bf.clear48 = and i32 %bf.load47, -65536
  %bf.set49 = or i32 %bf.clear48, 37
  store i32 %bf.set49, i32* %28, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtstr52 = bitcast %union.rtunion_def* %arrayidx51 to i8**
  store i8* null, i8** %rtstr52, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 4
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  store i32 -99, i32* %rtint55, align 4
  %31 = load i32, i32* @reload_completed, align 4
  %tobool56 = icmp ne i32 %31, 0
  br i1 %tobool56, label %land.lhs.true.57, label %if.end.80

land.lhs.true.57:                                 ; preds = %if.then.46
  %32 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp58 = icmp ne %struct.rtx_def* %32, %33
  br i1 %cmp58, label %if.then.60, label %if.end.80

if.then.60:                                       ; preds = %land.lhs.true.57
  %34 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 2
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %first, align 8
  br label %while.body

while.body:                                       ; preds = %if.then.60, %if.end.76
  %36 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load64 = load i32, i32* %37, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %idxprom66 = sext i32 %bf.clear65 to i64
  %arrayidx67 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom66
  %38 = load i8, i8* %arrayidx67, align 1
  %conv68 = sext i8 %38 to i32
  %cmp69 = icmp eq i32 %conv68, 105
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %while.body
  %39 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  call void @cleanup_subreg_operands(%struct.rtx_def* %39)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %while.body
  %40 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp73 = icmp eq %struct.rtx_def* %40, %41
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.72
  br label %while.end

if.end.76:                                        ; preds = %if.end.72
  %42 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 2
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %first, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.75
  br label %if.end.80

if.end.80:                                        ; preds = %while.end, %land.lhs.true.57, %if.then.46
  %44 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %retval
  br label %return

if.end.81:                                        ; preds = %if.else.36
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.end.80
  %45 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %45
}

declare void @find_many_sub_basic_blocks(%struct.simple_bitmap_def*) #1

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @split_all_insns_noflow() #0 {
entry:
  %next = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call1 = call %struct.rtx_def* @split_insn(%struct.rtx_def* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @peep2_next_insn(i32 %n) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp sge i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2858, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.peep2_next_insn, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @peep2_current, align 4
  %2 = load i32, i32* %n.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %n.addr, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp sge i32 %3, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %n.addr, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, i32* %n.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom
  %insn = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx, i32 0, i32 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp4 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %8 = load i32, i32* %n.addr, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom7
  %insn9 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn9, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5
  %10 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define i32 @peep2_regno_dead_p(i32 %ofs, i32 %regno) #0 {
entry:
  %ofs.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %ofs, i32* %ofs.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %ofs.addr, align 4
  %cmp = icmp sge i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2878, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.peep2_regno_dead_p, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @peep2_current, align 4
  %2 = load i32, i32* %ofs.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %ofs.addr, align 4
  %3 = load i32, i32* %ofs.addr, align 4
  %cmp1 = icmp sge i32 %3, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %ofs.addr, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, i32* %ofs.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %ofs.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom
  %insn = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx, i32 0, i32 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp4 = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2885, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.peep2_regno_dead_p, i32 0, i32 0)) #5
  unreachable

if.end.6:                                         ; preds = %if.end.3
  %7 = load i32, i32* %ofs.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom7
  %live_before = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx8, i32 0, i32 1
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before, align 8
  %9 = load i32, i32* %regno.addr, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %8, i32 %9)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @peep2_reg_dead_p(i32 %ofs, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %ofs.addr = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 %ofs, i32* %ofs.addr, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load i32, i32* %ofs.addr, align 4
  %cmp = icmp sge i32 %0, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2900, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.peep2_reg_dead_p, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @peep2_current, align 4
  %2 = load i32, i32* %ofs.addr, align 4
  %add = add nsw i32 %2, %1
  store i32 %add, i32* %ofs.addr, align 4
  %3 = load i32, i32* %ofs.addr, align 4
  %cmp1 = icmp sge i32 %3, 5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %ofs.addr, align 4
  %sub = sub nsw i32 %4, 5
  store i32 %sub, i32* %ofs.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load i32, i32* %ofs.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom
  %insn = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx, i32 0, i32 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp4 = icmp eq %struct.rtx_def* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2907, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.peep2_reg_dead_p, i32 0, i32 0)) #5
  unreachable

if.end.6:                                         ; preds = %if.end.3
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %8 = load i32, i32* %rtuint, align 4
  store i32 %8, i32* %regno, align 4
  %9 = load i32, i32* %regno, align 4
  %cmp8 = icmp sge i32 %9, 8
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end.6
  %10 = load i32, i32* %regno, align 4
  %cmp9 = icmp sle i32 %10, 15
  br i1 %cmp9, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end.6
  %11 = load i32, i32* %regno, align 4
  %cmp10 = icmp sge i32 %11, 21
  br i1 %cmp10, label %land.lhs.true.11, label %lor.lhs.false.13

land.lhs.true.11:                                 ; preds = %lor.lhs.false
  %12 = load i32, i32* %regno, align 4
  %cmp12 = icmp sle i32 %12, 28
  br i1 %cmp12, label %cond.true, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true.11, %lor.lhs.false
  %13 = load i32, i32* %regno, align 4
  %cmp14 = icmp sge i32 %13, 45
  br i1 %cmp14, label %land.lhs.true.15, label %lor.lhs.false.17

land.lhs.true.15:                                 ; preds = %lor.lhs.false.13
  %14 = load i32, i32* %regno, align 4
  %cmp16 = icmp sle i32 %14, 52
  br i1 %cmp16, label %cond.true, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15, %lor.lhs.false.13
  %15 = load i32, i32* %regno, align 4
  %cmp18 = icmp sge i32 %15, 29
  br i1 %cmp18, label %land.lhs.true.19, label %cond.false

land.lhs.true.19:                                 ; preds = %lor.lhs.false.17
  %16 = load i32, i32* %regno, align 4
  %cmp20 = icmp sle i32 %16, 36
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.19, %land.lhs.true.15, %land.lhs.true.11, %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom21 = sext i32 %bf.clear to i64
  %arrayidx22 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom21
  %19 = load i32, i32* %arrayidx22, align 4
  %cmp23 = icmp eq i32 %19, 5
  br i1 %cmp23, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load24 = load i32, i32* %21, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %idxprom27 = sext i32 %bf.clear26 to i64
  %arrayidx28 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom27
  %22 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp eq i32 %22, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %23 = phi i1 [ true, %cond.true ], [ %cmp29, %lor.rhs ]
  %cond = select i1 %23, i32 2, i32 1
  br label %cond.end.62

cond.false:                                       ; preds = %land.lhs.true.19, %lor.lhs.false.17
  %24 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load30 = load i32, i32* %25, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 18
  br i1 %cmp33, label %cond.true.34, label %cond.false.36

cond.true.34:                                     ; preds = %cond.false
  %26 = load i32, i32* @target_flags, align 4
  %and = and i32 %26, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond35 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.60

cond.false.36:                                    ; preds = %cond.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load37 = load i32, i32* %28, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %bf.clear39 = and i32 %bf.lshr38, 255
  %cmp40 = icmp eq i32 %bf.clear39, 24
  br i1 %cmp40, label %cond.true.41, label %cond.false.45

cond.true.41:                                     ; preds = %cond.false.36
  %29 = load i32, i32* @target_flags, align 4
  %and42 = and i32 %29, 33554432
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 4, i32 6
  br label %cond.end

cond.false.45:                                    ; preds = %cond.false.36
  %30 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load46 = load i32, i32* %31, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %idxprom49 = sext i32 %bf.clear48 to i64
  %arrayidx50 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom49
  %32 = load i8, i8* %arrayidx50, align 1
  %conv = zext i8 %32 to i32
  %33 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %33, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 8, i32 4
  %add54 = add nsw i32 %conv, %cond53
  %sub55 = sub nsw i32 %add54, 1
  %34 = load i32, i32* @target_flags, align 4
  %and56 = and i32 %34, 33554432
  %tobool57 = icmp ne i32 %and56, 0
  %cond58 = select i1 %tobool57, i32 8, i32 4
  %div = sdiv i32 %sub55, %cond58
  br label %cond.end

cond.end:                                         ; preds = %cond.false.45, %cond.true.41
  %cond59 = phi i32 [ %cond44, %cond.true.41 ], [ %div, %cond.false.45 ]
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.end, %cond.true.34
  %cond61 = phi i32 [ %cond35, %cond.true.34 ], [ %cond59, %cond.end ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end.60, %lor.end
  %cond63 = phi i32 [ %cond, %lor.end ], [ %cond61, %cond.end.60 ]
  store i32 %cond63, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %cond.end.62
  %35 = load i32, i32* %n, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %n, align 4
  %cmp64 = icmp sge i32 %dec, 0
  br i1 %cmp64, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load i32, i32* %ofs.addr, align 4
  %idxprom66 = sext i32 %36 to i64
  %arrayidx67 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom66
  %live_before = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx67, i32 0, i32 1
  %37 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before, align 8
  %38 = load i32, i32* %regno, align 4
  %39 = load i32, i32* %n, align 4
  %add68 = add nsw i32 %38, %39
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %37, i32 %add68)
  %tobool69 = icmp ne i32 %call, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.70
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @peep2_find_free_register(i32 %from, i32 %to, i8* %class_str, i32 %mode, i64* %reg_set) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %class_str.addr = alloca i8*, align 8
  %mode.addr = alloca i32, align 4
  %reg_set.addr = alloca i64*, align 8
  %class = alloca i32, align 4
  %live = alloca i64, align 8
  %i = alloca i32, align 4
  %this_live = alloca i64, align 8
  %raw_regno = alloca i32, align 4
  %regno = alloca i32, align 4
  %success = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %from, i32* %from.addr, align 4
  store i32 %to, i32* %to.addr, align 4
  store i8* %class_str, i8** %class_str.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64* %reg_set, i64** %reg_set.addr, align 8
  %0 = load i32, i32* %from.addr, align 4
  %cmp = icmp sge i32 %0, 5
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %to.addr, align 4
  %cmp1 = icmp sge i32 %1, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2941, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.peep2_find_free_register, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %2 = load i32, i32* @peep2_current, align 4
  %3 = load i32, i32* %from.addr, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, i32* %from.addr, align 4
  %4 = load i32, i32* %from.addr, align 4
  %cmp2 = icmp sge i32 %4, 5
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* %from.addr, align 4
  %sub = sub nsw i32 %5, 5
  store i32 %sub, i32* %from.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %6 = load i32, i32* @peep2_current, align 4
  %7 = load i32, i32* %to.addr, align 4
  %add5 = add nsw i32 %7, %6
  store i32 %add5, i32* %to.addr, align 4
  %8 = load i32, i32* %to.addr, align 4
  %cmp6 = icmp sge i32 %8, 5
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %9 = load i32, i32* %to.addr, align 4
  %sub8 = sub nsw i32 %9, 5
  store i32 %sub8, i32* %to.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %10 = load i32, i32* %from.addr, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom
  %insn = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx, i32 0, i32 0
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp10 = icmp eq %struct.rtx_def* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2951, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.peep2_find_free_register, i32 0, i32 0)) #5
  unreachable

if.end.12:                                        ; preds = %if.end.9
  br label %do.body

do.body:                                          ; preds = %if.end.12
  store i64 0, i64* %live, align 8
  %12 = load i32, i32* %from.addr, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom13
  %live_before = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx14, i32 0, i32 1
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before, align 8
  call void @reg_set_to_hard_reg_set(i64* %live, %struct.bitmap_head_def* %13)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %while.cond

while.cond:                                       ; preds = %do.end.29, %do.end
  %14 = load i32, i32* %from.addr, align 4
  %15 = load i32, i32* %to.addr, align 4
  %cmp15 = icmp ne i32 %14, %15
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load i32, i32* %from.addr, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %from.addr, align 4
  %cmp16 = icmp sge i32 %inc, 5
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.body
  store i32 0, i32* %from.addr, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %while.body
  %17 = load i32, i32* %from.addr, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom19
  %insn21 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx20, i32 0, i32 0
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn21, align 8
  %cmp22 = icmp eq %struct.rtx_def* %18, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.18
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2961, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.peep2_find_free_register, i32 0, i32 0)) #5
  unreachable

if.end.24:                                        ; preds = %if.end.18
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  store i64 0, i64* %this_live, align 8
  %19 = load i32, i32* %from.addr, align 4
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom26
  %live_before28 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx27, i32 0, i32 1
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before28, align 8
  call void @reg_set_to_hard_reg_set(i64* %this_live, %struct.bitmap_head_def* %20)
  br label %do.end.29

do.end.29:                                        ; preds = %do.body.25
  %21 = load i64, i64* %this_live, align 8
  %22 = load i64, i64* %live, align 8
  %or = or i64 %22, %21
  store i64 %or, i64* %live, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load i8*, i8** %class_str.addr, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx30, align 1
  %conv = sext i8 %24 to i32
  %cmp31 = icmp eq i32 %conv, 114
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end.196

cond.false:                                       ; preds = %while.end
  %25 = load i8*, i8** %class_str.addr, align 8
  %arrayidx33 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx33, align 1
  %conv34 = sext i8 %26 to i32
  %cmp35 = icmp eq i32 %conv34, 114
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %cond.false
  br label %cond.end.194

cond.false.38:                                    ; preds = %cond.false
  %27 = load i8*, i8** %class_str.addr, align 8
  %arrayidx39 = getelementptr inbounds i8, i8* %27, i64 0
  %28 = load i8, i8* %arrayidx39, align 1
  %conv40 = sext i8 %28 to i32
  %cmp41 = icmp eq i32 %conv40, 82
  br i1 %cmp41, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.38
  br label %cond.end.192

cond.false.44:                                    ; preds = %cond.false.38
  %29 = load i8*, i8** %class_str.addr, align 8
  %arrayidx45 = getelementptr inbounds i8, i8* %29, i64 0
  %30 = load i8, i8* %arrayidx45, align 1
  %conv46 = sext i8 %30 to i32
  %cmp47 = icmp eq i32 %conv46, 113
  br i1 %cmp47, label %cond.true.49, label %cond.false.50

cond.true.49:                                     ; preds = %cond.false.44
  %31 = load i32, i32* @target_flags, align 4
  %and = and i32 %31, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 12, i32 8
  br label %cond.end.190

cond.false.50:                                    ; preds = %cond.false.44
  %32 = load i8*, i8** %class_str.addr, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %32, i64 0
  %33 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %33 to i32
  %cmp53 = icmp eq i32 %conv52, 81
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.false.50
  br label %cond.end.188

cond.false.56:                                    ; preds = %cond.false.50
  %34 = load i8*, i8** %class_str.addr, align 8
  %arrayidx57 = getelementptr inbounds i8, i8* %34, i64 0
  %35 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %35 to i32
  %cmp59 = icmp eq i32 %conv58, 102
  br i1 %cmp59, label %cond.true.61, label %cond.false.67

cond.true.61:                                     ; preds = %cond.false.56
  %36 = load i32, i32* @target_flags, align 4
  %and62 = and i32 %36, 1
  %tobool63 = icmp ne i32 %and62, 0
  br i1 %tobool63, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true.61
  %37 = load i32, i32* @target_flags, align 4
  %and64 = and i32 %37, 32
  %tobool65 = icmp ne i32 %and64, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true.61
  %38 = phi i1 [ true, %cond.true.61 ], [ %tobool65, %lor.rhs ]
  %cond66 = select i1 %38, i32 15, i32 0
  br label %cond.end.186

cond.false.67:                                    ; preds = %cond.false.56
  %39 = load i8*, i8** %class_str.addr, align 8
  %arrayidx68 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %40 to i32
  %cmp70 = icmp eq i32 %conv69, 116
  br i1 %cmp70, label %cond.true.72, label %cond.false.80

cond.true.72:                                     ; preds = %cond.false.67
  %41 = load i32, i32* @target_flags, align 4
  %and73 = and i32 %41, 1
  %tobool74 = icmp ne i32 %and73, 0
  br i1 %tobool74, label %lor.end.78, label %lor.rhs.75

lor.rhs.75:                                       ; preds = %cond.true.72
  %42 = load i32, i32* @target_flags, align 4
  %and76 = and i32 %42, 32
  %tobool77 = icmp ne i32 %and76, 0
  br label %lor.end.78

lor.end.78:                                       ; preds = %lor.rhs.75, %cond.true.72
  %43 = phi i1 [ true, %cond.true.72 ], [ %tobool77, %lor.rhs.75 ]
  %cond79 = select i1 %43, i32 13, i32 0
  br label %cond.end.184

cond.false.80:                                    ; preds = %cond.false.67
  %44 = load i8*, i8** %class_str.addr, align 8
  %arrayidx81 = getelementptr inbounds i8, i8* %44, i64 0
  %45 = load i8, i8* %arrayidx81, align 1
  %conv82 = sext i8 %45 to i32
  %cmp83 = icmp eq i32 %conv82, 117
  br i1 %cmp83, label %cond.true.85, label %cond.false.93

cond.true.85:                                     ; preds = %cond.false.80
  %46 = load i32, i32* @target_flags, align 4
  %and86 = and i32 %46, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %lor.end.91, label %lor.rhs.88

lor.rhs.88:                                       ; preds = %cond.true.85
  %47 = load i32, i32* @target_flags, align 4
  %and89 = and i32 %47, 32
  %tobool90 = icmp ne i32 %and89, 0
  br label %lor.end.91

lor.end.91:                                       ; preds = %lor.rhs.88, %cond.true.85
  %48 = phi i1 [ true, %cond.true.85 ], [ %tobool90, %lor.rhs.88 ]
  %cond92 = select i1 %48, i32 14, i32 0
  br label %cond.end.182

cond.false.93:                                    ; preds = %cond.false.80
  %49 = load i8*, i8** %class_str.addr, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %49, i64 0
  %50 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %50 to i32
  %cmp96 = icmp eq i32 %conv95, 97
  br i1 %cmp96, label %cond.true.98, label %cond.false.99

cond.true.98:                                     ; preds = %cond.false.93
  br label %cond.end.180

cond.false.99:                                    ; preds = %cond.false.93
  %51 = load i8*, i8** %class_str.addr, align 8
  %arrayidx100 = getelementptr inbounds i8, i8* %51, i64 0
  %52 = load i8, i8* %arrayidx100, align 1
  %conv101 = sext i8 %52 to i32
  %cmp102 = icmp eq i32 %conv101, 98
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %cond.false.99
  br label %cond.end.178

cond.false.105:                                   ; preds = %cond.false.99
  %53 = load i8*, i8** %class_str.addr, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %53, i64 0
  %54 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %54 to i32
  %cmp108 = icmp eq i32 %conv107, 99
  br i1 %cmp108, label %cond.true.110, label %cond.false.111

cond.true.110:                                    ; preds = %cond.false.105
  br label %cond.end.176

cond.false.111:                                   ; preds = %cond.false.105
  %55 = load i8*, i8** %class_str.addr, align 8
  %arrayidx112 = getelementptr inbounds i8, i8* %55, i64 0
  %56 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %56 to i32
  %cmp114 = icmp eq i32 %conv113, 100
  br i1 %cmp114, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %cond.false.111
  br label %cond.end.174

cond.false.117:                                   ; preds = %cond.false.111
  %57 = load i8*, i8** %class_str.addr, align 8
  %arrayidx118 = getelementptr inbounds i8, i8* %57, i64 0
  %58 = load i8, i8* %arrayidx118, align 1
  %conv119 = sext i8 %58 to i32
  %cmp120 = icmp eq i32 %conv119, 120
  br i1 %cmp120, label %cond.true.122, label %cond.false.127

cond.true.122:                                    ; preds = %cond.false.117
  %59 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %59, 327680
  %cmp124 = icmp ne i32 %and123, 0
  %cond126 = select i1 %cmp124, i32 16, i32 0
  br label %cond.end.172

cond.false.127:                                   ; preds = %cond.false.117
  %60 = load i8*, i8** %class_str.addr, align 8
  %arrayidx128 = getelementptr inbounds i8, i8* %60, i64 0
  %61 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %61 to i32
  %cmp130 = icmp eq i32 %conv129, 89
  br i1 %cmp130, label %cond.true.132, label %cond.false.137

cond.true.132:                                    ; preds = %cond.false.127
  %62 = load i32, i32* @target_flags, align 4
  %and133 = and i32 %62, 262144
  %cmp134 = icmp ne i32 %and133, 0
  %cond136 = select i1 %cmp134, i32 16, i32 0
  br label %cond.end.170

cond.false.137:                                   ; preds = %cond.false.127
  %63 = load i8*, i8** %class_str.addr, align 8
  %arrayidx138 = getelementptr inbounds i8, i8* %63, i64 0
  %64 = load i8, i8* %arrayidx138, align 1
  %conv139 = sext i8 %64 to i32
  %cmp140 = icmp eq i32 %conv139, 121
  br i1 %cmp140, label %cond.true.142, label %cond.false.147

cond.true.142:                                    ; preds = %cond.false.137
  %65 = load i32, i32* @target_flags, align 4
  %and143 = and i32 %65, 16384
  %cmp144 = icmp ne i32 %and143, 0
  %cond146 = select i1 %cmp144, i32 17, i32 0
  br label %cond.end.168

cond.false.147:                                   ; preds = %cond.false.137
  %66 = load i8*, i8** %class_str.addr, align 8
  %arrayidx148 = getelementptr inbounds i8, i8* %66, i64 0
  %67 = load i8, i8* %arrayidx148, align 1
  %conv149 = sext i8 %67 to i32
  %cmp150 = icmp eq i32 %conv149, 65
  br i1 %cmp150, label %cond.true.152, label %cond.false.153

cond.true.152:                                    ; preds = %cond.false.147
  br label %cond.end.166

cond.false.153:                                   ; preds = %cond.false.147
  %68 = load i8*, i8** %class_str.addr, align 8
  %arrayidx154 = getelementptr inbounds i8, i8* %68, i64 0
  %69 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %69 to i32
  %cmp156 = icmp eq i32 %conv155, 68
  br i1 %cmp156, label %cond.true.158, label %cond.false.159

cond.true.158:                                    ; preds = %cond.false.153
  br label %cond.end

cond.false.159:                                   ; preds = %cond.false.153
  %70 = load i8*, i8** %class_str.addr, align 8
  %arrayidx160 = getelementptr inbounds i8, i8* %70, i64 0
  %71 = load i8, i8* %arrayidx160, align 1
  %conv161 = sext i8 %71 to i32
  %cmp162 = icmp eq i32 %conv161, 83
  %cond164 = select i1 %cmp162, i32 5, i32 0
  br label %cond.end

cond.end:                                         ; preds = %cond.false.159, %cond.true.158
  %cond165 = phi i32 [ 6, %cond.true.158 ], [ %cond164, %cond.false.159 ]
  br label %cond.end.166

cond.end.166:                                     ; preds = %cond.end, %cond.true.152
  %cond167 = phi i32 [ 7, %cond.true.152 ], [ %cond165, %cond.end ]
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.end.166, %cond.true.142
  %cond169 = phi i32 [ %cond146, %cond.true.142 ], [ %cond167, %cond.end.166 ]
  br label %cond.end.170

cond.end.170:                                     ; preds = %cond.end.168, %cond.true.132
  %cond171 = phi i32 [ %cond136, %cond.true.132 ], [ %cond169, %cond.end.168 ]
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.end.170, %cond.true.122
  %cond173 = phi i32 [ %cond126, %cond.true.122 ], [ %cond171, %cond.end.170 ]
  br label %cond.end.174

cond.end.174:                                     ; preds = %cond.end.172, %cond.true.116
  %cond175 = phi i32 [ 2, %cond.true.116 ], [ %cond173, %cond.end.172 ]
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.end.174, %cond.true.110
  %cond177 = phi i32 [ 3, %cond.true.110 ], [ %cond175, %cond.end.174 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end.176, %cond.true.104
  %cond179 = phi i32 [ 4, %cond.true.104 ], [ %cond177, %cond.end.176 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end.178, %cond.true.98
  %cond181 = phi i32 [ 1, %cond.true.98 ], [ %cond179, %cond.end.178 ]
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.end.180, %lor.end.91
  %cond183 = phi i32 [ %cond92, %lor.end.91 ], [ %cond181, %cond.end.180 ]
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.end.182, %lor.end.78
  %cond185 = phi i32 [ %cond79, %lor.end.78 ], [ %cond183, %cond.end.182 ]
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.end.184, %lor.end
  %cond187 = phi i32 [ %cond66, %lor.end ], [ %cond185, %cond.end.184 ]
  br label %cond.end.188

cond.end.188:                                     ; preds = %cond.end.186, %cond.true.55
  %cond189 = phi i32 [ 8, %cond.true.55 ], [ %cond187, %cond.end.186 ]
  br label %cond.end.190

cond.end.190:                                     ; preds = %cond.end.188, %cond.true.49
  %cond191 = phi i32 [ %cond, %cond.true.49 ], [ %cond189, %cond.end.188 ]
  br label %cond.end.192

cond.end.192:                                     ; preds = %cond.end.190, %cond.true.43
  %cond193 = phi i32 [ 11, %cond.true.43 ], [ %cond191, %cond.end.190 ]
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.end.192, %cond.true.37
  %cond195 = phi i32 [ 12, %cond.true.37 ], [ %cond193, %cond.end.192 ]
  br label %cond.end.196

cond.end.196:                                     ; preds = %cond.end.194, %cond.true
  %cond197 = phi i32 [ 12, %cond.true ], [ %cond195, %cond.end.194 ]
  store i32 %cond197, i32* %class, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.415, %cond.end.196
  %72 = load i32, i32* %i, align 4
  %cmp198 = icmp slt i32 %72, 53
  br i1 %cmp198, label %for.body, label %for.end.417

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* @peep2_find_free_register.search_ofs, align 4
  %74 = load i32, i32* %i, align 4
  %add200 = add nsw i32 %73, %74
  store i32 %add200, i32* %raw_regno, align 4
  %75 = load i32, i32* %raw_regno, align 4
  %cmp201 = icmp sge i32 %75, 53
  br i1 %cmp201, label %if.then.203, label %if.end.205

if.then.203:                                      ; preds = %for.body
  %76 = load i32, i32* %raw_regno, align 4
  %sub204 = sub nsw i32 %76, 53
  store i32 %sub204, i32* %raw_regno, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.then.203, %for.body
  %77 = load i32, i32* %raw_regno, align 4
  %idxprom206 = sext i32 %77 to i64
  %arrayidx207 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i32 0, i64 %idxprom206
  %78 = load i32, i32* %arrayidx207, align 4
  store i32 %78, i32* %regno, align 4
  %79 = load i32, i32* %regno, align 4
  %idxprom208 = sext i32 %79 to i64
  %arrayidx209 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom208
  %80 = load i8, i8* %arrayidx209, align 1
  %tobool210 = icmp ne i8 %80, 0
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %if.end.205
  br label %for.inc.415

if.end.212:                                       ; preds = %if.end.205
  %81 = load i32, i32* %class, align 4
  %idxprom213 = zext i32 %81 to i64
  %arrayidx214 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom213
  %82 = load i64, i64* %arrayidx214, align 8
  %83 = load i32, i32* %regno, align 4
  %sh_prom = zext i32 %83 to i64
  %shl = shl i64 1, %sh_prom
  %and215 = and i64 %82, %shl
  %tobool216 = icmp ne i64 %and215, 0
  br i1 %tobool216, label %if.end.218, label %if.then.217

if.then.217:                                      ; preds = %if.end.212
  br label %for.inc.415

if.end.218:                                       ; preds = %if.end.212
  %84 = load i32, i32* %regno, align 4
  %85 = load i32, i32* %mode.addr, align 4
  %call = call i32 @ix86_hard_regno_mode_ok(i32 %84, i32 %85)
  %tobool219 = icmp ne i32 %call, 0
  br i1 %tobool219, label %if.end.221, label %if.then.220

if.then.220:                                      ; preds = %if.end.218
  br label %for.inc.415

if.end.221:                                       ; preds = %if.end.218
  %86 = load i32, i32* %regno, align 4
  %idxprom222 = sext i32 %86 to i64
  %arrayidx223 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom222
  %87 = load i8, i8* %arrayidx223, align 1
  %tobool224 = icmp ne i8 %87, 0
  br i1 %tobool224, label %if.end.229, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.221
  %88 = load i32, i32* %regno, align 4
  %idxprom225 = sext i32 %88 to i64
  %arrayidx226 = getelementptr inbounds [53 x i8], [53 x i8]* @regs_ever_live, i32 0, i64 %idxprom225
  %89 = load i8, i8* %arrayidx226, align 1
  %tobool227 = icmp ne i8 %89, 0
  br i1 %tobool227, label %if.end.229, label %if.then.228

if.then.228:                                      ; preds = %land.lhs.true
  br label %for.inc.415

if.end.229:                                       ; preds = %land.lhs.true, %if.end.221
  %90 = load i32, i32* %regno, align 4
  %cmp230 = icmp eq i32 %90, 20
  br i1 %cmp230, label %land.lhs.true.235, label %lor.lhs.false.232

lor.lhs.false.232:                                ; preds = %if.end.229
  %91 = load i32, i32* %regno, align 4
  %cmp233 = icmp eq i32 %91, 6
  br i1 %cmp233, label %land.lhs.true.235, label %if.end.240

land.lhs.true.235:                                ; preds = %lor.lhs.false.232, %if.end.229
  %92 = load i32, i32* @reload_completed, align 4
  %tobool236 = icmp ne i32 %92, 0
  br i1 %tobool236, label %lor.lhs.false.237, label %if.then.239

lor.lhs.false.237:                                ; preds = %land.lhs.true.235
  %93 = load i32, i32* @frame_pointer_needed, align 4
  %tobool238 = icmp ne i32 %93, 0
  br i1 %tobool238, label %if.then.239, label %if.end.240

if.then.239:                                      ; preds = %lor.lhs.false.237, %land.lhs.true.235
  br label %for.inc.415

if.end.240:                                       ; preds = %lor.lhs.false.237, %lor.lhs.false.232
  store i32 1, i32* %success, align 4
  %94 = load i32, i32* %regno, align 4
  %cmp241 = icmp sge i32 %94, 8
  br i1 %cmp241, label %land.lhs.true.243, label %lor.lhs.false.246

land.lhs.true.243:                                ; preds = %if.end.240
  %95 = load i32, i32* %regno, align 4
  %cmp244 = icmp sle i32 %95, 15
  br i1 %cmp244, label %cond.true.264, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %land.lhs.true.243, %if.end.240
  %96 = load i32, i32* %regno, align 4
  %cmp247 = icmp sge i32 %96, 21
  br i1 %cmp247, label %land.lhs.true.249, label %lor.lhs.false.252

land.lhs.true.249:                                ; preds = %lor.lhs.false.246
  %97 = load i32, i32* %regno, align 4
  %cmp250 = icmp sle i32 %97, 28
  br i1 %cmp250, label %cond.true.264, label %lor.lhs.false.252

lor.lhs.false.252:                                ; preds = %land.lhs.true.249, %lor.lhs.false.246
  %98 = load i32, i32* %regno, align 4
  %cmp253 = icmp sge i32 %98, 45
  br i1 %cmp253, label %land.lhs.true.255, label %lor.lhs.false.258

land.lhs.true.255:                                ; preds = %lor.lhs.false.252
  %99 = load i32, i32* %regno, align 4
  %cmp256 = icmp sle i32 %99, 52
  br i1 %cmp256, label %cond.true.264, label %lor.lhs.false.258

lor.lhs.false.258:                                ; preds = %land.lhs.true.255, %lor.lhs.false.252
  %100 = load i32, i32* %regno, align 4
  %cmp259 = icmp sge i32 %100, 29
  br i1 %cmp259, label %land.lhs.true.261, label %cond.false.276

land.lhs.true.261:                                ; preds = %lor.lhs.false.258
  %101 = load i32, i32* %regno, align 4
  %cmp262 = icmp sle i32 %101, 36
  br i1 %cmp262, label %cond.true.264, label %cond.false.276

cond.true.264:                                    ; preds = %land.lhs.true.261, %land.lhs.true.255, %land.lhs.true.249, %land.lhs.true.243
  %102 = load i32, i32* %mode.addr, align 4
  %idxprom265 = sext i32 %102 to i64
  %arrayidx266 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom265
  %103 = load i32, i32* %arrayidx266, align 4
  %cmp267 = icmp eq i32 %103, 5
  br i1 %cmp267, label %lor.end.274, label %lor.rhs.269

lor.rhs.269:                                      ; preds = %cond.true.264
  %104 = load i32, i32* %mode.addr, align 4
  %idxprom270 = sext i32 %104 to i64
  %arrayidx271 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom270
  %105 = load i32, i32* %arrayidx271, align 4
  %cmp272 = icmp eq i32 %105, 6
  br label %lor.end.274

lor.end.274:                                      ; preds = %lor.rhs.269, %cond.true.264
  %106 = phi i1 [ true, %cond.true.264 ], [ %cmp272, %lor.rhs.269 ]
  %cond275 = select i1 %106, i32 2, i32 1
  br label %cond.end.306

cond.false.276:                                   ; preds = %land.lhs.true.261, %lor.lhs.false.258
  %107 = load i32, i32* %mode.addr, align 4
  %cmp277 = icmp eq i32 %107, 18
  br i1 %cmp277, label %cond.true.279, label %cond.false.283

cond.true.279:                                    ; preds = %cond.false.276
  %108 = load i32, i32* @target_flags, align 4
  %and280 = and i32 %108, 33554432
  %tobool281 = icmp ne i32 %and280, 0
  %cond282 = select i1 %tobool281, i32 2, i32 3
  br label %cond.end.304

cond.false.283:                                   ; preds = %cond.false.276
  %109 = load i32, i32* %mode.addr, align 4
  %cmp284 = icmp eq i32 %109, 24
  br i1 %cmp284, label %cond.true.286, label %cond.false.290

cond.true.286:                                    ; preds = %cond.false.283
  %110 = load i32, i32* @target_flags, align 4
  %and287 = and i32 %110, 33554432
  %tobool288 = icmp ne i32 %and287, 0
  %cond289 = select i1 %tobool288, i32 4, i32 6
  br label %cond.end.302

cond.false.290:                                   ; preds = %cond.false.283
  %111 = load i32, i32* %mode.addr, align 4
  %idxprom291 = sext i32 %111 to i64
  %arrayidx292 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom291
  %112 = load i8, i8* %arrayidx292, align 1
  %conv293 = zext i8 %112 to i32
  %113 = load i32, i32* @target_flags, align 4
  %and294 = and i32 %113, 33554432
  %tobool295 = icmp ne i32 %and294, 0
  %cond296 = select i1 %tobool295, i32 8, i32 4
  %add297 = add nsw i32 %conv293, %cond296
  %sub298 = sub nsw i32 %add297, 1
  %114 = load i32, i32* @target_flags, align 4
  %and299 = and i32 %114, 33554432
  %tobool300 = icmp ne i32 %and299, 0
  %cond301 = select i1 %tobool300, i32 8, i32 4
  %div = sdiv i32 %sub298, %cond301
  br label %cond.end.302

cond.end.302:                                     ; preds = %cond.false.290, %cond.true.286
  %cond303 = phi i32 [ %cond289, %cond.true.286 ], [ %div, %cond.false.290 ]
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.end.302, %cond.true.279
  %cond305 = phi i32 [ %cond282, %cond.true.279 ], [ %cond303, %cond.end.302 ]
  br label %cond.end.306

cond.end.306:                                     ; preds = %cond.end.304, %lor.end.274
  %cond307 = phi i32 [ %cond275, %lor.end.274 ], [ %cond305, %cond.end.304 ]
  %sub308 = sub nsw i32 %cond307, 1
  store i32 %sub308, i32* %j, align 4
  br label %for.cond.309

for.cond.309:                                     ; preds = %for.inc, %cond.end.306
  %115 = load i32, i32* %j, align 4
  %cmp310 = icmp sge i32 %115, 0
  br i1 %cmp310, label %for.body.312, label %for.end

for.body.312:                                     ; preds = %for.cond.309
  %116 = load i64*, i64** %reg_set.addr, align 8
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %regno, align 4
  %119 = load i32, i32* %j, align 4
  %add313 = add nsw i32 %118, %119
  %sh_prom314 = zext i32 %add313 to i64
  %shl315 = shl i64 1, %sh_prom314
  %and316 = and i64 %117, %shl315
  %tobool317 = icmp ne i64 %and316, 0
  br i1 %tobool317, label %if.then.324, label %lor.lhs.false.318

lor.lhs.false.318:                                ; preds = %for.body.312
  %120 = load i64, i64* %live, align 8
  %121 = load i32, i32* %regno, align 4
  %122 = load i32, i32* %j, align 4
  %add319 = add nsw i32 %121, %122
  %sh_prom320 = zext i32 %add319 to i64
  %shl321 = shl i64 1, %sh_prom320
  %and322 = and i64 %120, %shl321
  %tobool323 = icmp ne i64 %and322, 0
  br i1 %tobool323, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %lor.lhs.false.318, %for.body.312
  store i32 0, i32* %success, align 4
  br label %for.end

if.end.325:                                       ; preds = %lor.lhs.false.318
  br label %for.inc

for.inc:                                          ; preds = %if.end.325
  %123 = load i32, i32* %j, align 4
  %dec = add nsw i32 %123, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.309

for.end:                                          ; preds = %if.then.324, %for.cond.309
  %124 = load i32, i32* %success, align 4
  %tobool326 = icmp ne i32 %124, 0
  br i1 %tobool326, label %if.then.327, label %if.end.414

if.then.327:                                      ; preds = %for.end
  %125 = load i32, i32* %regno, align 4
  %cmp328 = icmp sge i32 %125, 8
  br i1 %cmp328, label %land.lhs.true.330, label %lor.lhs.false.333

land.lhs.true.330:                                ; preds = %if.then.327
  %126 = load i32, i32* %regno, align 4
  %cmp331 = icmp sle i32 %126, 15
  br i1 %cmp331, label %cond.true.351, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %land.lhs.true.330, %if.then.327
  %127 = load i32, i32* %regno, align 4
  %cmp334 = icmp sge i32 %127, 21
  br i1 %cmp334, label %land.lhs.true.336, label %lor.lhs.false.339

land.lhs.true.336:                                ; preds = %lor.lhs.false.333
  %128 = load i32, i32* %regno, align 4
  %cmp337 = icmp sle i32 %128, 28
  br i1 %cmp337, label %cond.true.351, label %lor.lhs.false.339

lor.lhs.false.339:                                ; preds = %land.lhs.true.336, %lor.lhs.false.333
  %129 = load i32, i32* %regno, align 4
  %cmp340 = icmp sge i32 %129, 45
  br i1 %cmp340, label %land.lhs.true.342, label %lor.lhs.false.345

land.lhs.true.342:                                ; preds = %lor.lhs.false.339
  %130 = load i32, i32* %regno, align 4
  %cmp343 = icmp sle i32 %130, 52
  br i1 %cmp343, label %cond.true.351, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %land.lhs.true.342, %lor.lhs.false.339
  %131 = load i32, i32* %regno, align 4
  %cmp346 = icmp sge i32 %131, 29
  br i1 %cmp346, label %land.lhs.true.348, label %cond.false.363

land.lhs.true.348:                                ; preds = %lor.lhs.false.345
  %132 = load i32, i32* %regno, align 4
  %cmp349 = icmp sle i32 %132, 36
  br i1 %cmp349, label %cond.true.351, label %cond.false.363

cond.true.351:                                    ; preds = %land.lhs.true.348, %land.lhs.true.342, %land.lhs.true.336, %land.lhs.true.330
  %133 = load i32, i32* %mode.addr, align 4
  %idxprom352 = sext i32 %133 to i64
  %arrayidx353 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom352
  %134 = load i32, i32* %arrayidx353, align 4
  %cmp354 = icmp eq i32 %134, 5
  br i1 %cmp354, label %lor.end.361, label %lor.rhs.356

lor.rhs.356:                                      ; preds = %cond.true.351
  %135 = load i32, i32* %mode.addr, align 4
  %idxprom357 = sext i32 %135 to i64
  %arrayidx358 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom357
  %136 = load i32, i32* %arrayidx358, align 4
  %cmp359 = icmp eq i32 %136, 6
  br label %lor.end.361

lor.end.361:                                      ; preds = %lor.rhs.356, %cond.true.351
  %137 = phi i1 [ true, %cond.true.351 ], [ %cmp359, %lor.rhs.356 ]
  %cond362 = select i1 %137, i32 2, i32 1
  br label %cond.end.394

cond.false.363:                                   ; preds = %land.lhs.true.348, %lor.lhs.false.345
  %138 = load i32, i32* %mode.addr, align 4
  %cmp364 = icmp eq i32 %138, 18
  br i1 %cmp364, label %cond.true.366, label %cond.false.370

cond.true.366:                                    ; preds = %cond.false.363
  %139 = load i32, i32* @target_flags, align 4
  %and367 = and i32 %139, 33554432
  %tobool368 = icmp ne i32 %and367, 0
  %cond369 = select i1 %tobool368, i32 2, i32 3
  br label %cond.end.392

cond.false.370:                                   ; preds = %cond.false.363
  %140 = load i32, i32* %mode.addr, align 4
  %cmp371 = icmp eq i32 %140, 24
  br i1 %cmp371, label %cond.true.373, label %cond.false.377

cond.true.373:                                    ; preds = %cond.false.370
  %141 = load i32, i32* @target_flags, align 4
  %and374 = and i32 %141, 33554432
  %tobool375 = icmp ne i32 %and374, 0
  %cond376 = select i1 %tobool375, i32 4, i32 6
  br label %cond.end.390

cond.false.377:                                   ; preds = %cond.false.370
  %142 = load i32, i32* %mode.addr, align 4
  %idxprom378 = sext i32 %142 to i64
  %arrayidx379 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom378
  %143 = load i8, i8* %arrayidx379, align 1
  %conv380 = zext i8 %143 to i32
  %144 = load i32, i32* @target_flags, align 4
  %and381 = and i32 %144, 33554432
  %tobool382 = icmp ne i32 %and381, 0
  %cond383 = select i1 %tobool382, i32 8, i32 4
  %add384 = add nsw i32 %conv380, %cond383
  %sub385 = sub nsw i32 %add384, 1
  %145 = load i32, i32* @target_flags, align 4
  %and386 = and i32 %145, 33554432
  %tobool387 = icmp ne i32 %and386, 0
  %cond388 = select i1 %tobool387, i32 8, i32 4
  %div389 = sdiv i32 %sub385, %cond388
  br label %cond.end.390

cond.end.390:                                     ; preds = %cond.false.377, %cond.true.373
  %cond391 = phi i32 [ %cond376, %cond.true.373 ], [ %div389, %cond.false.377 ]
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.end.390, %cond.true.366
  %cond393 = phi i32 [ %cond369, %cond.true.366 ], [ %cond391, %cond.end.390 ]
  br label %cond.end.394

cond.end.394:                                     ; preds = %cond.end.392, %lor.end.361
  %cond395 = phi i32 [ %cond362, %lor.end.361 ], [ %cond393, %cond.end.392 ]
  %sub396 = sub nsw i32 %cond395, 1
  store i32 %sub396, i32* %j, align 4
  br label %for.cond.397

for.cond.397:                                     ; preds = %for.inc.405, %cond.end.394
  %146 = load i32, i32* %j, align 4
  %cmp398 = icmp sge i32 %146, 0
  br i1 %cmp398, label %for.body.400, label %for.end.407

for.body.400:                                     ; preds = %for.cond.397
  %147 = load i32, i32* %regno, align 4
  %148 = load i32, i32* %j, align 4
  %add401 = add nsw i32 %147, %148
  %sh_prom402 = zext i32 %add401 to i64
  %shl403 = shl i64 1, %sh_prom402
  %149 = load i64*, i64** %reg_set.addr, align 8
  %150 = load i64, i64* %149, align 8
  %or404 = or i64 %150, %shl403
  store i64 %or404, i64* %149, align 8
  br label %for.inc.405

for.inc.405:                                      ; preds = %for.body.400
  %151 = load i32, i32* %j, align 4
  %dec406 = add nsw i32 %151, -1
  store i32 %dec406, i32* %j, align 4
  br label %for.cond.397

for.end.407:                                      ; preds = %for.cond.397
  %152 = load i32, i32* %raw_regno, align 4
  %inc408 = add nsw i32 %152, 1
  store i32 %inc408, i32* %raw_regno, align 4
  %cmp409 = icmp sge i32 %inc408, 53
  br i1 %cmp409, label %if.then.411, label %if.end.412

if.then.411:                                      ; preds = %for.end.407
  store i32 0, i32* %raw_regno, align 4
  br label %if.end.412

if.end.412:                                       ; preds = %if.then.411, %for.end.407
  %153 = load i32, i32* %raw_regno, align 4
  store i32 %153, i32* @peep2_find_free_register.search_ofs, align 4
  %154 = load i32, i32* %mode.addr, align 4
  %155 = load i32, i32* %regno, align 4
  %call413 = call %struct.rtx_def* @gen_rtx_REG(i32 %154, i32 %155)
  store %struct.rtx_def* %call413, %struct.rtx_def** %retval
  br label %return

if.end.414:                                       ; preds = %for.end
  br label %for.inc.415

for.inc.415:                                      ; preds = %if.end.414, %if.then.239, %if.then.228, %if.then.220, %if.then.217, %if.then.211
  %156 = load i32, i32* %i, align 4
  %inc416 = add nsw i32 %156, 1
  store i32 %inc416, i32* %i, align 4
  br label %for.cond

for.end.417:                                      ; preds = %for.cond
  store i32 0, i32* @peep2_find_free_register.search_ofs, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.417, %if.end.412
  %157 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %157
}

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @peephole2_optimize(%struct._IO_FILE* %dump_file) #0 {
entry:
  %dump_file.addr = alloca %struct._IO_FILE*, align 8
  %rs_heads = alloca [6 x %struct.bitmap_head_def], align 16
  %insn = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %live = alloca %struct.bitmap_head_def*, align 8
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %do_cleanup_cfg = alloca i8, align 1
  %do_rebuild_jump_labels = alloca i8, align 1
  %bb = alloca %struct.basic_block_def*, align 8
  %pbi = alloca %struct.propagate_block_info*, align 8
  %try = alloca %struct.rtx_def*, align 8
  %before_try = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %match_len = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %old_insn = alloca %struct.rtx_def*, align 8
  %new_insn = alloca %struct.rtx_def*, align 8
  %note50 = alloca %struct.rtx_def*, align 8
  %x77 = alloca %struct.rtx_def*, align 8
  %eh_edge = alloca %struct.edge_def*, align 8
  %nfte = alloca %struct.edge_def*, align 8
  %nehe = alloca %struct.edge_def*, align 8
  %flags218 = alloca i32, align 4
  store %struct._IO_FILE* %dump_file, %struct._IO_FILE** %dump_file.addr, align 8
  store i8 0, i8* %do_cleanup_cfg, align 1
  store i8 0, i8* %do_rebuild_jump_labels, align 1
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [6 x %struct.bitmap_head_def], [6 x %struct.bitmap_head_def]* %rs_heads, i32 0, i64 %idxprom
  %call = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %arrayidx)
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom1
  %live_before = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx2, i32 0, i32 1
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %live_before, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [6 x %struct.bitmap_head_def], [6 x %struct.bitmap_head_def]* %rs_heads, i32 0, i64 %idxprom3
  %call5 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %arrayidx4)
  store %struct.bitmap_head_def* %call5, %struct.bitmap_head_def** %live, align 8
  %call6 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* null, i32 1)
  %5 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %5, 1
  store i32 %sub, i32* %b, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.311, %for.end
  %6 = load i32, i32* %b, align 4
  %cmp8 = icmp sge i32 %6, 0
  br i1 %cmp8, label %for.body.9, label %for.end.313

for.body.9:                                       ; preds = %for.cond.7
  %7 = load i32, i32* %b, align 4
  %idxprom10 = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb11 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb11, i32 0, i64 %idxprom10
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx12, align 8
  store %struct.basic_block_def* %9, %struct.basic_block_def** %bb, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %for.body.9
  %10 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %10, 4
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.13
  %11 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %11 to i64
  %arrayidx17 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom16
  %insn18 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx17, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %insn18, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %12 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %12, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** getelementptr inbounds ([5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 4, i32 0), align 8
  store i32 4, i32* @peep2_current, align 4
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 9
  %16 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %14, %struct.bitmap_head_def* %16)
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** getelementptr inbounds ([5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 4, i32 1), align 8
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %17, %struct.bitmap_head_def* %18)
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %20 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %call22 = call %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def* %19, %struct.bitmap_head_def* %20, %struct.bitmap_head_def* null, %struct.bitmap_head_def* null, i32 1)
  store %struct.propagate_block_info* %call22, %struct.propagate_block_info** %pbi, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.309, %for.end.21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %prev, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load = load i32, i32* %26, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom25 = sext i32 %bf.clear to i64
  %arrayidx26 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom25
  %27 = load i8, i8* %arrayidx26, align 1
  %conv = sext i8 %27 to i32
  %cmp27 = icmp eq i32 %conv, 105
  br i1 %cmp27, label %if.then, label %if.end.304

if.then:                                          ; preds = %for.cond.23
  %28 = load i32, i32* @peep2_current, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, i32* @peep2_current, align 4
  %cmp29 = icmp slt i32 %dec, 0
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %if.then
  store i32 4, i32* @peep2_current, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %if.then
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %30 = load i32, i32* @peep2_current, align 4
  %idxprom32 = sext i32 %30 to i64
  %arrayidx33 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom32
  %insn34 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx33, i32 0, i32 0
  store %struct.rtx_def* %29, %struct.rtx_def** %insn34, align 8
  %31 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call35 = call %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info* %31, %struct.rtx_def* %32)
  %33 = load i32, i32* @peep2_current, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom36
  %live_before38 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx37, i32 0, i32 1
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before38, align 8
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %34, %struct.bitmap_head_def* %35)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 3
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call42 = call %struct.rtx_def* @peephole2_insns(%struct.rtx_def* %37, %struct.rtx_def* %38, i32* %match_len)
  store %struct.rtx_def* %call42, %struct.rtx_def** %try, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %cmp43 = icmp ne %struct.rtx_def* %39, null
  br i1 %cmp43, label %if.then.45, label %if.end.303

if.then.45:                                       ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.151, %if.then.45
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %match_len, align 4
  %cmp47 = icmp sle i32 %40, %41
  br i1 %cmp47, label %for.body.49, label %for.end.153

for.body.49:                                      ; preds = %for.cond.46
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* @peep2_current, align 4
  %add = add nsw i32 %42, %43
  store i32 %add, i32* %j, align 4
  %44 = load i32, i32* %j, align 4
  %cmp51 = icmp sge i32 %44, 5
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %for.body.49
  %45 = load i32, i32* %j, align 4
  %sub54 = sub nsw i32 %45, 5
  store i32 %sub54, i32* %j, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %for.body.49
  %46 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %46 to i64
  %arrayidx57 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom56
  %insn58 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx57, i32 0, i32 0
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn58, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %old_insn, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %old_insn, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load59 = load i32, i32* %49, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp ne i32 %bf.clear60, 34
  br i1 %cmp61, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.55
  br label %for.inc.151

if.end.64:                                        ; preds = %if.end.55
  store %struct.rtx_def* null, %struct.rtx_def** %new_insn, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load65 = load i32, i32* %51, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 24
  br i1 %cmp67, label %if.then.69, label %if.else

if.then.69:                                       ; preds = %if.end.64
  %52 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtvec_def**
  %53 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %53, i32 0, i32 0
  %54 = load i32, i32* %num_elem, align 4
  %sub72 = sub nsw i32 %54, 1
  store i32 %sub72, i32* %k, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.89, %if.then.69
  %55 = load i32, i32* %k, align 4
  %cmp74 = icmp sge i32 %55, 0
  br i1 %cmp74, label %for.body.76, label %for.end.91

for.body.76:                                      ; preds = %for.cond.73
  %56 = load i32, i32* %k, align 4
  %idxprom78 = sext i32 %56 to i64
  %57 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtvec81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtvec_def**
  %58 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec81, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %58, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom78
  %59 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx82, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %x77, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x77, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load83 = load i32, i32* %61, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 34
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %for.body.76
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x77, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %new_insn, align 8
  br label %for.end.91

if.end.88:                                        ; preds = %for.body.76
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %63 = load i32, i32* %k, align 4
  %dec90 = add nsw i32 %63, -1
  store i32 %dec90, i32* %k, align 4
  br label %for.cond.73

for.end.91:                                       ; preds = %if.then.87, %for.cond.73
  br label %if.end.98

if.else:                                          ; preds = %if.end.64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load92 = load i32, i32* %65, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 34
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.else
  %66 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %new_insn, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %if.else
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %for.end.91
  %67 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %67, null
  br i1 %tobool, label %if.end.100, label %if.then.99

if.then.99:                                       ; preds = %if.end.98
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.peephole2_optimize, i32 0, i32 0)) #5
  unreachable

if.end.100:                                       ; preds = %if.end.98
  %68 = load %struct.rtx_def*, %struct.rtx_def** %old_insn, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 7
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 7
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  store %struct.rtx_def* %69, %struct.rtx_def** %rtx106, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %old_insn, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 6
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %note50, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.128, %if.end.100
  %73 = load %struct.rtx_def*, %struct.rtx_def** %note50, align 8
  %tobool111 = icmp ne %struct.rtx_def* %73, null
  br i1 %tobool111, label %for.body.112, label %for.end.132

for.body.112:                                     ; preds = %for.cond.110
  %74 = load %struct.rtx_def*, %struct.rtx_def** %note50, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load113 = load i32, i32* %75, align 8
  %bf.lshr = lshr i32 %bf.load113, 16
  %bf.clear114 = and i32 %bf.lshr, 255
  switch i32 %bf.clear114, label %sw.default [
    i32 26, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body.112, %for.body.112, %for.body.112
  %76 = load %struct.rtx_def*, %struct.rtx_def** %note50, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load115 = load i32, i32* %77, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 16
  %bf.clear117 = and i32 %bf.lshr116, 255
  %78 = load %struct.rtx_def*, %struct.rtx_def** %note50, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 6
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %call124 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %bf.clear117, %struct.rtx_def* %79, %struct.rtx_def* %81)
  %82 = load %struct.rtx_def*, %struct.rtx_def** %new_insn, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 6
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  store %struct.rtx_def* %call124, %struct.rtx_def** %rtx127, align 8
  br label %sw.default

sw.default:                                       ; preds = %for.body.112, %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %for.inc.128

for.inc.128:                                      ; preds = %sw.epilog
  %83 = load %struct.rtx_def*, %struct.rtx_def** %note50, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %note50, align 8
  br label %for.cond.110

for.end.132:                                      ; preds = %for.cond.110
  br label %while.cond

while.cond:                                       ; preds = %if.end.150, %for.end.132
  %85 = load i32, i32* %i, align 4
  %inc133 = add nsw i32 %85, 1
  store i32 %inc133, i32* %i, align 4
  %86 = load i32, i32* %match_len, align 4
  %cmp134 = icmp sle i32 %inc133, %86
  br i1 %cmp134, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %87 = load i32, i32* %i, align 4
  %88 = load i32, i32* @peep2_current, align 4
  %add136 = add nsw i32 %87, %88
  store i32 %add136, i32* %j, align 4
  %89 = load i32, i32* %j, align 4
  %cmp137 = icmp sge i32 %89, 5
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %while.body
  %90 = load i32, i32* %j, align 4
  %sub140 = sub nsw i32 %90, 5
  store i32 %sub140, i32* %j, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %while.body
  %91 = load i32, i32* %j, align 4
  %idxprom142 = sext i32 %91 to i64
  %arrayidx143 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom142
  %insn144 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx143, i32 0, i32 0
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn144, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %old_insn, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %old_insn, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load145 = load i32, i32* %94, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 34
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %if.end.141
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3160, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.peephole2_optimize, i32 0, i32 0)) #5
  unreachable

if.end.150:                                       ; preds = %if.end.141
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.end.153

for.inc.151:                                      ; preds = %if.then.63
  %95 = load i32, i32* %i, align 4
  %inc152 = add nsw i32 %95, 1
  store i32 %inc152, i32* %i, align 4
  br label %for.cond.46

for.end.153:                                      ; preds = %while.end, %for.cond.46
  %96 = load i32, i32* %match_len, align 4
  %97 = load i32, i32* @peep2_current, align 4
  %add154 = add nsw i32 %96, %97
  store i32 %add154, i32* %i, align 4
  %98 = load i32, i32* %i, align 4
  %cmp155 = icmp sge i32 %98, 5
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %for.end.153
  %99 = load i32, i32* %i, align 4
  %sub158 = sub nsw i32 %99, 5
  store i32 %sub158, i32* %i, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %for.end.153
  %100 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %100 to i64
  %arrayidx161 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom160
  %insn162 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx161, i32 0, i32 0
  %101 = load %struct.rtx_def*, %struct.rtx_def** %insn162, align 8
  %call163 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %101, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call163, %struct.rtx_def** %note, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  %103 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %103 to i64
  %arrayidx165 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom164
  %insn166 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx165, i32 0, i32 0
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn166, align 8
  %call167 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %102, %struct.rtx_def* %104)
  store %struct.rtx_def* %call167, %struct.rtx_def** %try, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 1
  %rtx170 = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx170, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %before_try, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %108 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %108 to i64
  %arrayidx172 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom171
  %insn173 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx172, i32 0, i32 0
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn173, align 8
  call void @delete_insn_chain(%struct.rtx_def* %107, %struct.rtx_def* %109)
  %110 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool174 = icmp ne %struct.rtx_def* %110, null
  br i1 %tobool174, label %if.then.175, label %if.end.253

if.then.175:                                      ; preds = %if.end.159
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 5
  %112 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %112, %struct.edge_def** %eh_edge, align 8
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.182, %if.then.175
  %113 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %tobool177 = icmp ne %struct.edge_def* %113, null
  br i1 %tobool177, label %for.body.178, label %for.end.183

for.body.178:                                     ; preds = %for.cond.176
  %114 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 6
  %115 = load i32, i32* %flags, align 4
  %and = and i32 %115, 8
  %tobool179 = icmp ne i32 %and, 0
  br i1 %tobool179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.178
  br label %for.end.183

if.end.181:                                       ; preds = %for.body.178
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %116 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %116, i32 0, i32 1
  %117 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %117, %struct.edge_def** %eh_edge, align 8
  br label %for.cond.176

for.end.183:                                      ; preds = %if.then.180, %for.cond.176
  %118 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  store %struct.rtx_def* %118, %struct.rtx_def** %x, align 8
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.241, %for.end.183
  %119 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %before_try, align 8
  %cmp185 = icmp ne %struct.rtx_def* %119, %120
  br i1 %cmp185, label %for.body.187, label %for.end.245

for.body.187:                                     ; preds = %for.cond.184
  %121 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %122 = bitcast %struct.rtx_def* %121 to i32*
  %bf.load188 = load i32, i32* %122, align 8
  %bf.clear189 = and i32 %bf.load188, 65535
  %cmp190 = icmp eq i32 %bf.clear189, 34
  br i1 %cmp190, label %if.then.201, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.187
  %123 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool192 = icmp ne i32 %123, 0
  br i1 %tobool192, label %land.lhs.true, label %if.end.240

land.lhs.true:                                    ; preds = %lor.lhs.false
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld193 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld193, i32 0, i64 3
  %rtx195 = bitcast %union.rtunion_def* %arrayidx194 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx195, align 8
  %call196 = call i32 @may_trap_p(%struct.rtx_def* %125)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %land.lhs.true.198, label %if.end.240

land.lhs.true.198:                                ; preds = %land.lhs.true
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call199 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %126, i32 23, %struct.rtx_def* null)
  %tobool200 = icmp ne %struct.rtx_def* %call199, null
  br i1 %tobool200, label %if.end.240, label %if.then.201

if.then.201:                                      ; preds = %land.lhs.true.198, %for.body.187
  %127 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtx204 = bitcast %union.rtunion_def* %arrayidx203 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx204, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld205, i32 0, i64 6
  %rtx207 = bitcast %union.rtunion_def* %arrayidx206 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx207, align 8
  %call208 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 23, %struct.rtx_def* %128, %struct.rtx_def* %130)
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 6
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  store %struct.rtx_def* %call208, %struct.rtx_def** %rtx211, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end212 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 1
  %134 = load %struct.rtx_def*, %struct.rtx_def** %end212, align 8
  %cmp213 = icmp ne %struct.rtx_def* %132, %134
  br i1 %cmp213, label %land.lhs.true.215, label %if.end.239

land.lhs.true.215:                                ; preds = %if.then.201
  %135 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %tobool216 = icmp ne %struct.edge_def* %135, null
  br i1 %tobool216, label %if.then.217, label %if.end.239

if.then.217:                                      ; preds = %land.lhs.true.215
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call219 = call %struct.edge_def* @split_block(%struct.basic_block_def* %136, %struct.rtx_def* %137)
  store %struct.edge_def* %call219, %struct.edge_def** %nfte, align 8
  store i32 10, i32* %flags218, align 4
  %138 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load220 = load i32, i32* %139, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 34
  br i1 %cmp222, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.then.217
  %140 = load i32, i32* %flags218, align 4
  %or = or i32 %140, 4
  store i32 %or, i32* %flags218, align 4
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.then.217
  %141 = load %struct.edge_def*, %struct.edge_def** %nfte, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i32 0, i32 2
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %143 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %143, i32 0, i32 3
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %145 = load i32, i32* %flags218, align 4
  %call226 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %142, %struct.basic_block_def* %144, i32 %145)
  store %struct.edge_def* %call226, %struct.edge_def** %nehe, align 8
  %146 = load %struct.edge_def*, %struct.edge_def** %eh_edge, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i32 0, i32 7
  %147 = load i32, i32* %probability, align 4
  %148 = load %struct.edge_def*, %struct.edge_def** %nehe, align 8
  %probability227 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %148, i32 0, i32 7
  store i32 %147, i32* %probability227, align 4
  %149 = load %struct.edge_def*, %struct.edge_def** %nehe, align 8
  %probability228 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %149, i32 0, i32 7
  %150 = load i32, i32* %probability228, align 4
  %sub229 = sub nsw i32 10000, %150
  %151 = load %struct.edge_def*, %struct.edge_def** %nfte, align 8
  %probability230 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 7
  store i32 %sub229, i32* %probability230, align 4
  %152 = load %struct.edge_def*, %struct.edge_def** %nfte, align 8
  %dest231 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %152, i32 0, i32 3
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %dest231, align 8
  %call232 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %153)
  %conv233 = zext i1 %call232 to i32
  %154 = load i8, i8* %do_cleanup_cfg, align 1
  %tobool234 = trunc i8 %154 to i1
  %conv235 = zext i1 %tobool234 to i32
  %or236 = or i32 %conv235, %conv233
  %tobool237 = icmp ne i32 %or236, 0
  %frombool = zext i1 %tobool237 to i8
  store i8 %frombool, i8* %do_cleanup_cfg, align 1
  %155 = load %struct.edge_def*, %struct.edge_def** %nfte, align 8
  %src238 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %155, i32 0, i32 2
  %156 = load %struct.basic_block_def*, %struct.basic_block_def** %src238, align 8
  store %struct.basic_block_def* %156, %struct.basic_block_def** %bb, align 8
  %157 = load %struct.edge_def*, %struct.edge_def** %nehe, align 8
  store %struct.edge_def* %157, %struct.edge_def** %eh_edge, align 8
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.225, %land.lhs.true.215, %if.then.201
  br label %if.end.240

if.end.240:                                       ; preds = %if.end.239, %land.lhs.true.198, %land.lhs.true, %lor.lhs.false
  br label %for.inc.241

for.inc.241:                                      ; preds = %if.end.240
  %158 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld242, i32 0, i64 1
  %rtx244 = bitcast %union.rtunion_def* %arrayidx243 to %struct.rtx_def**
  %159 = load %struct.rtx_def*, %struct.rtx_def** %rtx244, align 8
  store %struct.rtx_def* %159, %struct.rtx_def** %x, align 8
  br label %for.cond.184

for.end.245:                                      ; preds = %for.cond.184
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %call246 = call zeroext i1 @purge_dead_edges(%struct.basic_block_def* %160)
  %conv247 = zext i1 %call246 to i32
  %161 = load i8, i8* %do_cleanup_cfg, align 1
  %tobool248 = trunc i8 %161 to i1
  %conv249 = zext i1 %tobool248 to i32
  %or250 = or i32 %conv249, %conv247
  %tobool251 = icmp ne i32 %or250, 0
  %frombool252 = zext i1 %tobool251 to i8
  store i8 %frombool252, i8* %do_cleanup_cfg, align 1
  br label %if.end.253

if.end.253:                                       ; preds = %for.end.245, %if.end.159
  %162 = load i32, i32* %i, align 4
  %inc254 = add nsw i32 %162, 1
  store i32 %inc254, i32* %i, align 4
  %cmp255 = icmp sge i32 %inc254, 5
  br i1 %cmp255, label %if.then.257, label %if.end.258

if.then.257:                                      ; preds = %if.end.253
  store i32 0, i32* %i, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.then.257, %if.end.253
  %163 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %164 = load i32, i32* %i, align 4
  %idxprom259 = sext i32 %164 to i64
  %arrayidx260 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom259
  %live_before261 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx260, i32 0, i32 1
  %165 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before261, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %163, %struct.bitmap_head_def* %165)
  %166 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  store %struct.rtx_def* %166, %struct.rtx_def** %x, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.258
  %167 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load262 = load i32, i32* %168, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %idxprom264 = sext i32 %bf.clear263 to i64
  %arrayidx265 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom264
  %169 = load i8, i8* %arrayidx265, align 1
  %conv266 = sext i8 %169 to i32
  %cmp267 = icmp eq i32 %conv266, 105
  br i1 %cmp267, label %if.then.269, label %if.end.282

if.then.269:                                      ; preds = %do.body
  %170 = load i32, i32* %i, align 4
  %dec270 = add nsw i32 %170, -1
  store i32 %dec270, i32* %i, align 4
  %cmp271 = icmp slt i32 %dec270, 0
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.then.269
  store i32 4, i32* %i, align 4
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %if.then.269
  %171 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %172 = load i32, i32* %i, align 4
  %idxprom275 = sext i32 %172 to i64
  %arrayidx276 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom275
  %insn277 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx276, i32 0, i32 0
  store %struct.rtx_def* %171, %struct.rtx_def** %insn277, align 8
  %173 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call278 = call %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info* %173, %struct.rtx_def* %174)
  %175 = load i32, i32* %i, align 4
  %idxprom279 = sext i32 %175 to i64
  %arrayidx280 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom279
  %live_before281 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx280, i32 0, i32 1
  %176 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before281, align 8
  %177 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %176, %struct.bitmap_head_def* %177)
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.274, %do.body
  %178 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 1
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %179 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  store %struct.rtx_def* %179, %struct.rtx_def** %x, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.282
  %180 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %cmp286 = icmp ne %struct.rtx_def* %180, %181
  br i1 %cmp286, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %182 = load i32, i32* %i, align 4
  store i32 %182, i32* @peep2_current, align 4
  %183 = load %struct.rtx_def*, %struct.rtx_def** %try, align 8
  store %struct.rtx_def* %183, %struct.rtx_def** %x, align 8
  br label %for.cond.288

for.cond.288:                                     ; preds = %for.inc.298, %do.end
  %184 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** %before_try, align 8
  %cmp289 = icmp ne %struct.rtx_def* %184, %185
  br i1 %cmp289, label %for.body.291, label %for.end.302

for.body.291:                                     ; preds = %for.cond.288
  %186 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load292 = load i32, i32* %187, align 8
  %bf.clear293 = and i32 %bf.load292, 65535
  %cmp294 = icmp eq i32 %bf.clear293, 33
  br i1 %cmp294, label %if.then.296, label %if.end.297

if.then.296:                                      ; preds = %for.body.291
  store i8 1, i8* %do_rebuild_jump_labels, align 1
  br label %for.end.302

if.end.297:                                       ; preds = %for.body.291
  br label %for.inc.298

for.inc.298:                                      ; preds = %if.end.297
  %188 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 1
  %rtx301 = bitcast %union.rtunion_def* %arrayidx300 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx301, align 8
  store %struct.rtx_def* %189, %struct.rtx_def** %x, align 8
  br label %for.cond.288

for.end.302:                                      ; preds = %if.then.296, %for.cond.288
  br label %if.end.303

if.end.303:                                       ; preds = %for.end.302, %if.end
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %for.cond.23
  %190 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %191 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %191, i32 0, i32 0
  %192 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp305 = icmp eq %struct.rtx_def* %190, %192
  br i1 %cmp305, label %if.then.307, label %if.end.308

if.then.307:                                      ; preds = %if.end.304
  br label %for.end.310

if.end.308:                                       ; preds = %if.end.304
  br label %for.inc.309

for.inc.309:                                      ; preds = %if.end.308
  %193 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %193, %struct.rtx_def** %insn, align 8
  br label %for.cond.23

for.end.310:                                      ; preds = %if.then.307
  %194 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  call void @free_propagate_block_info(%struct.propagate_block_info* %194)
  br label %for.inc.311

for.inc.311:                                      ; preds = %for.end.310
  %195 = load i32, i32* %b, align 4
  %dec312 = add nsw i32 %195, -1
  store i32 %dec312, i32* %b, align 4
  br label %for.cond.7

for.end.313:                                      ; preds = %for.cond.7
  store i32 0, i32* %i, align 4
  br label %for.cond.314

for.cond.314:                                     ; preds = %for.inc.333, %for.end.313
  %196 = load i32, i32* %i, align 4
  %cmp315 = icmp slt i32 %196, 5
  br i1 %cmp315, label %for.body.317, label %for.end.335

for.body.317:                                     ; preds = %for.cond.314
  br label %do.body.318

do.body.318:                                      ; preds = %for.body.317
  %197 = load i32, i32* %i, align 4
  %idxprom319 = sext i32 %197 to i64
  %arrayidx320 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom319
  %live_before321 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx320, i32 0, i32 1
  %198 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before321, align 8
  %tobool322 = icmp ne %struct.bitmap_head_def* %198, null
  br i1 %tobool322, label %if.then.323, label %if.end.330

if.then.323:                                      ; preds = %do.body.318
  %199 = load i32, i32* %i, align 4
  %idxprom324 = sext i32 %199 to i64
  %arrayidx325 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom324
  %live_before326 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx325, i32 0, i32 1
  %200 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live_before326, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %200)
  %201 = load i32, i32* %i, align 4
  %idxprom327 = sext i32 %201 to i64
  %arrayidx328 = getelementptr inbounds [5 x %struct.peep2_insn_data], [5 x %struct.peep2_insn_data]* @peep2_insn_data, i32 0, i64 %idxprom327
  %live_before329 = getelementptr inbounds %struct.peep2_insn_data, %struct.peep2_insn_data* %arrayidx328, i32 0, i32 1
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %live_before329, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.323, %do.body.318
  br label %do.end.332

do.end.332:                                       ; preds = %if.end.330
  br label %for.inc.333

for.inc.333:                                      ; preds = %do.end.332
  %202 = load i32, i32* %i, align 4
  %inc334 = add nsw i32 %202, 1
  store i32 %inc334, i32* %i, align 4
  br label %for.cond.314

for.end.335:                                      ; preds = %for.cond.314
  br label %do.body.336

do.body.336:                                      ; preds = %for.end.335
  %203 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %tobool337 = icmp ne %struct.bitmap_head_def* %203, null
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %do.body.336
  %204 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %204)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %live, align 8
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.338, %do.body.336
  br label %do.end.341

do.end.341:                                       ; preds = %if.end.339
  %205 = load i8, i8* %do_rebuild_jump_labels, align 1
  %tobool342 = trunc i8 %205 to i1
  br i1 %tobool342, label %if.then.343, label %if.end.345

if.then.343:                                      ; preds = %do.end.341
  %call344 = call %struct.rtx_def* @get_insns()
  call void @rebuild_jump_labels(%struct.rtx_def* %call344)
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.343, %do.end.341
  %206 = load i8, i8* %do_cleanup_cfg, align 1
  %tobool346 = trunc i8 %206 to i1
  br i1 %tobool346, label %if.then.347, label %if.end.349

if.then.347:                                      ; preds = %if.end.345
  %call348 = call zeroext i1 @cleanup_cfg(i32 0)
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 2, i32 1)
  br label %if.end.349

if.end.349:                                       ; preds = %if.then.347, %if.end.345
  ret void
}

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info*, %struct.rtx_def*) #1

declare %struct.rtx_def* @peephole2_insns(%struct.rtx_def*, %struct.rtx_def*, i32*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @delete_insn_chain(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @may_trap_p(%struct.rtx_def*) #1

declare %struct.edge_def* @split_block(%struct.basic_block_def*, %struct.rtx_def*) #1

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare zeroext i1 @purge_dead_edges(%struct.basic_block_def*) #1

declare void @free_propagate_block_info(%struct.propagate_block_info*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare void @rebuild_jump_labels(%struct.rtx_def*) #1

declare zeroext i1 @cleanup_cfg(i32) #1

declare i32 @swap_commutative_operands_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @swap_condition(i32) #1

declare %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_gen_unary(i32, i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare i32 @mode_for_extraction(i32, i32) #1

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @set_noop_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @try_split(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare void @cleanup_subreg_operands(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
