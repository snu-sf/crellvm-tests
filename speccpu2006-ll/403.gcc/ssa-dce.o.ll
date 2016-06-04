; ModuleID = 'ssa-dce.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.control_dependent_block_to_edge_map_s = type { %struct.bitmap_head_def**, i32 }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }

@.str = private unnamed_addr constant [25 x i8] c"unprocessed instructions\00", align 1
@n_basic_blocks = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"ssa-dce.c\00", align 1
@__FUNCTION__.ssa_eliminate_dead_code = private unnamed_addr constant [24 x i8] c"ssa_eliminate_dead_code\00", align 1
@__FUNCTION__.find_control_dependence = private unnamed_addr constant [24 x i8] c"find_control_dependence\00", align 1
@__FUNCTION__.set_control_dependent_block_to_edge_map_bit = private unnamed_addr constant [44 x i8] c"set_control_dependent_block_to_edge_map_bit\00", align 1
@__FUNCTION__.find_inherently_necessary = private unnamed_addr constant [26 x i8] c"find_inherently_necessary\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@ssa_definition = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.find_pdom = private unnamed_addr constant [10 x i8] c"find_pdom\00", align 1
@__FUNCTION__.delete_insn_bb = private unnamed_addr constant [15 x i8] c"delete_insn_bb\00", align 1

; Function Attrs: nounwind uwtable
define void @ssa_eliminate_dead_code() #0 {
entry:
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %unprocessed_instructions = alloca %struct.varray_head_tag*, align 8
  %cdbte = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  %pdom = alloca i32*, align 8
  %el = alloca %struct.edge_list*, align 8
  %max_insn_uid = alloca i32, align 4
  %current_instruction = alloca %struct.rtx_def*, align 8
  %edge_number = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %jump_insn = alloca %struct.rtx_def*, align 8
  %phi_vec = alloca %struct.rtvec_def*, align 8
  %num_elem = alloca i32, align 4
  %v = alloca i32, align 4
  %bb214 = alloca %struct.basic_block_def*, align 8
  %ptr_224 = alloca %struct.bitmap_element_def*, align 8
  %indx_240 = alloca i32, align 4
  %bit_num_241 = alloca i32, align 4
  %word_num_242 = alloca i32, align 4
  %word_270 = alloca i64, align 8
  %mask_281 = alloca i64, align 8
  %jump_insn295 = alloca %struct.rtx_def*, align 8
  %insn352 = alloca %struct.rtx_def*, align 8
  %bb366 = alloca %struct.basic_block_def*, align 8
  %pdom_bb = alloca %struct.basic_block_def*, align 8
  %lbl = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %temp = alloca %struct.edge_def*, align 8
  %insn388 = alloca %struct.rtx_def*, align 8
  %temp441 = alloca %struct.edge_def*, align 8
  %insn452 = alloca %struct.rtx_def*, align 8
  %bb531 = alloca %struct.basic_block_def*, align 8
  %next540 = alloca %struct.rtx_def*, align 8
  %call = call i32 @get_max_uid()
  store i32 %call, i32* %max_insn_uid, align 4
  call void @mark_all_insn_unnecessary()
  %call1 = call %struct.varray_head_tag* @varray_init(i64 64, i64 8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0))
  store %struct.varray_head_tag* %call1, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %call2 = call %struct.control_dependent_block_to_edge_map_s* @control_dependent_block_to_edge_map_create(i64 %conv)
  store %struct.control_dependent_block_to_edge_map_s* %call2, %struct.control_dependent_block_to_edge_map_s** %cdbte, align 8
  call void @connect_infinite_loops_to_exit()
  %1 = load i32, i32* %max_insn_uid, align 4
  call void @compute_bb_for_insn(i32 %1)
  %2 = load i32, i32* @n_basic_blocks, align 4
  %conv3 = sext i32 %2 to i64
  %mul = mul i64 %conv3, 4
  %call4 = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call4 to i32*
  store i32* %3, i32** %pdom, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32*, i32** %pdom, align 8
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 -3, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32*, i32** %pdom, align 8
  call void @calculate_dominance_info(i32* %9, %struct.simple_bitmap_def** null, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.16, %for.end
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body.9, label %for.end.18

for.body.9:                                       ; preds = %for.cond.6
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32*, i32** %pdom, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %13, i64 %idxprom10
  %14 = load i32, i32* %arrayidx11, align 4
  %cmp12 = icmp eq i32 %14, -3
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %16 = load i32*, i32** %pdom, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %16, i64 %idxprom14
  store i32 -2, i32* %arrayidx15, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %17, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.6

for.end.18:                                       ; preds = %for.cond.6
  %call19 = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call19, %struct.edge_list** %el, align 8
  %18 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %19 = load i32*, i32** %pdom, align 8
  %20 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte, align 8
  call void @find_all_control_dependences(%struct.edge_list* %18, i32* %19, %struct.control_dependent_block_to_edge_map_s* %20)
  %call20 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call20, %struct.rtx_def** %insn, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.38, %for.end.18
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp22 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp22, label %for.body.24, label %for.end.41

for.body.24:                                      ; preds = %for.cond.21
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call25 = call i32 @find_inherently_necessary(%struct.rtx_def* %22)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %for.body.24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, -268435457
  store i32 %bf.clear, i32* %24, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 1
  %26 = load i64, i64* %elements_used, align 8
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 0
  %28 = load i64, i64* %num_elements, align 8
  %cmp27 = icmp uge i64 %26, %28
  br i1 %cmp27, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %do.body
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %30 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements30 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %30, i32 0, i32 0
  %31 = load i64, i64* %num_elements30, align 8
  %mul31 = mul i64 2, %31
  %call32 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %29, i64 %mul31)
  store %struct.varray_head_tag* %call32, %struct.varray_head_tag** %unprocessed_instructions, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %do.body
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used34 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 1
  %34 = load i64, i64* %elements_used34, align 8
  %inc35 = add i64 %34, 1
  store i64 %inc35, i64* %elements_used34, align 8
  %35 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %35, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %34
  store %struct.rtx_def* %32, %struct.rtx_def** %arrayidx36, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.33
  br label %if.end.37

if.end.37:                                        ; preds = %do.end, %for.body.24
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond.21

for.end.41:                                       ; preds = %for.cond.21
  br label %while.cond

while.cond:                                       ; preds = %if.end.350, %for.end.41
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used42 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 1
  %39 = load i64, i64* %elements_used42, align 8
  %cmp43 = icmp ugt i64 %39, 0
  br i1 %cmp43, label %while.body, label %while.end.351

while.body:                                       ; preds = %while.cond
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 1
  %41 = load i64, i64* %elements_used45, align 8
  %sub = sub i64 %41, 1
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %data46 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %rtx47 = bitcast %union.varray_data_tag* %data46 to [1 x %struct.rtx_def*]*
  %arrayidx48 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx47, i32 0, i64 %sub
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx48, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %current_instruction, align 8
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used49 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %44, i32 0, i32 1
  %45 = load i64, i64* %elements_used49, align 8
  %dec = add i64 %45, -1
  store i64 %dec, i64* %elements_used49, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load50 = load i32, i32* %47, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom52
  %48 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %48 to i32
  %cmp55 = icmp eq i32 %conv54, 105
  br i1 %cmp55, label %land.lhs.true, label %if.end.350

land.lhs.true:                                    ; preds = %while.body
  %49 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load57 = load i32, i32* %50, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 33
  br i1 %cmp59, label %land.lhs.true.61, label %if.then.76

land.lhs.true.61:                                 ; preds = %land.lhs.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 3
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load65 = load i32, i32* %53, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 44
  br i1 %cmp67, label %if.end.350, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.61
  %54 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 3
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load72 = load i32, i32* %56, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 45
  br i1 %cmp74, label %if.end.350, label %if.then.76

if.then.76:                                       ; preds = %lor.lhs.false, %land.lhs.true
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %57 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %58 = load i32, i32* %rtint, align 4
  %idxprom80 = sext i32 %58 to i64
  %59 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data81 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %59, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data81 to [1 x %struct.basic_block_def*]*
  %arrayidx82 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom80
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx82, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 11
  %61 = load i32, i32* %index, align 4
  %add = add nsw i32 %61, 0
  %sub83 = sub nsw i32 %add, -2
  %idxprom84 = sext i32 %sub83 to i64
  %62 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte, align 8
  %data85 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %62, i32 0, i32 0
  %63 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data85, align 8
  %arrayidx86 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %63, i64 %idxprom84
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx86, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %64, i32 0, i32 0
  %65 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %65, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.92, %do.body.77
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp88 = icmp ne %struct.bitmap_element_def* %66, null
  br i1 %cmp88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.87
  %67 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %67, i32 0, i32 2
  %68 = load i32, i32* %indx, align 4
  %69 = load i32, i32* %indx_, align 4
  %cmp90 = icmp ult i32 %68, %69
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.87
  %70 = phi i1 [ false, %while.cond.87 ], [ %cmp90, %land.rhs ]
  br i1 %70, label %while.body.92, label %while.end

while.body.92:                                    ; preds = %land.end
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %71, i32 0, i32 0
  %72 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %72, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond.87

while.end:                                        ; preds = %land.end
  %73 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp93 = icmp ne %struct.bitmap_element_def* %73, null
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.100

land.lhs.true.95:                                 ; preds = %while.end
  %74 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx96 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %74, i32 0, i32 2
  %75 = load i32, i32* %indx96, align 4
  %76 = load i32, i32* %indx_, align 4
  %cmp97 = icmp ne i32 %75, %76
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %land.lhs.true.95
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %land.lhs.true.95, %while.end
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.169, %if.end.100
  %77 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp102 = icmp ne %struct.bitmap_element_def* %77, null
  br i1 %cmp102, label %for.body.104, label %for.end.171

for.body.104:                                     ; preds = %for.cond.101
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.166, %for.body.104
  %78 = load i32, i32* %word_num_, align 4
  %cmp106 = icmp ult i32 %78, 2
  br i1 %cmp106, label %for.body.108, label %for.end.168

for.body.108:                                     ; preds = %for.cond.105
  %79 = load i32, i32* %word_num_, align 4
  %idxprom109 = zext i32 %79 to i64
  %80 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %80, i32 0, i32 3
  %arrayidx110 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom109
  %81 = load i64, i64* %arrayidx110, align 8
  store i64 %81, i64* %word_, align 8
  %82 = load i64, i64* %word_, align 8
  %cmp111 = icmp ne i64 %82, 0
  br i1 %cmp111, label %if.then.113, label %if.end.165

if.then.113:                                      ; preds = %for.body.108
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.162, %if.then.113
  %83 = load i32, i32* %bit_num_, align 4
  %cmp115 = icmp ult i32 %83, 64
  br i1 %cmp115, label %for.body.117, label %for.end.164

for.body.117:                                     ; preds = %for.cond.114
  %84 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %84 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %85 = load i64, i64* %word_, align 8
  %86 = load i64, i64* %mask_, align 8
  %and = and i64 %85, %86
  %cmp118 = icmp ne i64 %and, 0
  br i1 %cmp118, label %if.then.120, label %if.end.161

if.then.120:                                      ; preds = %for.body.117
  %87 = load i64, i64* %mask_, align 8
  %neg = xor i64 %87, -1
  %88 = load i64, i64* %word_, align 8
  %and121 = and i64 %88, %neg
  store i64 %and121, i64* %word_, align 8
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx122 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %89, i32 0, i32 2
  %90 = load i32, i32* %indx122, align 4
  %mul123 = mul i32 %90, 128
  %91 = load i32, i32* %word_num_, align 4
  %mul124 = mul i32 %91, 64
  %add125 = add i32 %mul123, %mul124
  %92 = load i32, i32* %bit_num_, align 4
  %add126 = add i32 %add125, %92
  store i32 %add126, i32* %edge_number, align 4
  %93 = load i32, i32* %edge_number, align 4
  %idxprom127 = sext i32 %93 to i64
  %94 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %94, i32 0, i32 2
  %95 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx128 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %95, i64 %idxprom127
  %96 = load %struct.edge_def*, %struct.edge_def** %arrayidx128, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %96, i32 0, i32 2
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 1
  %98 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %jump_insn, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load129 = load i32, i32* %100, align 8
  %bf.clear130 = and i32 %bf.load129, 65535
  %cmp131 = icmp eq i32 %bf.clear130, 33
  br i1 %cmp131, label %land.lhs.true.133, label %if.end.156

land.lhs.true.133:                                ; preds = %if.then.120
  %101 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load134 = load i32, i32* %102, align 8
  %bf.lshr = lshr i32 %bf.load134, 28
  %bf.clear135 = and i32 %bf.lshr, 1
  %tobool136 = icmp ne i32 %bf.clear135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.156

if.then.137:                                      ; preds = %land.lhs.true.133
  %103 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load138 = load i32, i32* %104, align 8
  %bf.clear139 = and i32 %bf.load138, -268435457
  store i32 %bf.clear139, i32* %104, align 8
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.137
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used141 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 1
  %106 = load i64, i64* %elements_used141, align 8
  %107 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements142 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %107, i32 0, i32 0
  %108 = load i64, i64* %num_elements142, align 8
  %cmp143 = icmp uge i64 %106, %108
  br i1 %cmp143, label %if.then.145, label %if.end.149

if.then.145:                                      ; preds = %do.body.140
  %109 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements146 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 0
  %111 = load i64, i64* %num_elements146, align 8
  %mul147 = mul i64 2, %111
  %call148 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %109, i64 %mul147)
  store %struct.varray_head_tag* %call148, %struct.varray_head_tag** %unprocessed_instructions, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.145, %do.body.140
  %112 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn, align 8
  %113 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used150 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %113, i32 0, i32 1
  %114 = load i64, i64* %elements_used150, align 8
  %inc151 = add i64 %114, 1
  store i64 %inc151, i64* %elements_used150, align 8
  %115 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %data152 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %115, i32 0, i32 4
  %rtx153 = bitcast %union.varray_data_tag* %data152 to [1 x %struct.rtx_def*]*
  %arrayidx154 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx153, i32 0, i64 %114
  store %struct.rtx_def* %112, %struct.rtx_def** %arrayidx154, align 8
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.149
  br label %if.end.156

if.end.156:                                       ; preds = %do.end.155, %land.lhs.true.133, %if.then.120
  %116 = load i64, i64* %word_, align 8
  %cmp157 = icmp eq i64 %116, 0
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.156
  br label %for.end.164

if.end.160:                                       ; preds = %if.end.156
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %for.body.117
  br label %for.inc.162

for.inc.162:                                      ; preds = %if.end.161
  %117 = load i32, i32* %bit_num_, align 4
  %inc163 = add i32 %117, 1
  store i32 %inc163, i32* %bit_num_, align 4
  br label %for.cond.114

for.end.164:                                      ; preds = %if.then.159, %for.cond.114
  br label %if.end.165

if.end.165:                                       ; preds = %for.end.164, %for.body.108
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %118 = load i32, i32* %word_num_, align 4
  %inc167 = add i32 %118, 1
  store i32 %inc167, i32* %word_num_, align 4
  br label %for.cond.105

for.end.168:                                      ; preds = %for.cond.105
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.169

for.inc.169:                                      ; preds = %for.end.168
  %119 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next170 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %119, i32 0, i32 0
  %120 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next170, align 8
  store %struct.bitmap_element_def* %120, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.101

for.end.171:                                      ; preds = %for.cond.101
  br label %do.end.172

do.end.172:                                       ; preds = %for.end.171
  %121 = bitcast %struct.varray_head_tag** %unprocessed_instructions to i8*
  %call173 = call i32 @for_each_rtx(%struct.rtx_def** %current_instruction, i32 (%struct.rtx_def**, i8*)* @propagate_necessity_through_operand, i8* %121)
  %122 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %tobool174 = icmp ne %struct.rtx_def* %122, null
  br i1 %tobool174, label %land.lhs.true.175, label %if.end.349

land.lhs.true.175:                                ; preds = %do.end.172
  %123 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load176 = load i32, i32* %124, align 8
  %bf.clear177 = and i32 %bf.load176, 65535
  %cmp178 = icmp eq i32 %bf.clear177, 32
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.349

land.lhs.true.180:                                ; preds = %land.lhs.true.175
  %125 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 3
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  %126 = load %struct.rtx_def*, %struct.rtx_def** %rtx183, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load184 = load i32, i32* %127, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %cmp186 = icmp eq i32 %bf.clear185, 47
  br i1 %cmp186, label %land.lhs.true.188, label %if.end.349

land.lhs.true.188:                                ; preds = %land.lhs.true.180
  %128 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 3
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 1
  %rtx194 = bitcast %union.rtunion_def* %arrayidx193 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx194, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load195 = load i32, i32* %131, align 8
  %bf.clear196 = and i32 %bf.load195, 65535
  %cmp197 = icmp eq i32 %bf.clear196, 152
  br i1 %cmp197, label %if.then.199, label %if.end.349

if.then.199:                                      ; preds = %land.lhs.true.188
  %132 = load %struct.rtx_def*, %struct.rtx_def** %current_instruction, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 3
  %rtx202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx202, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 1
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtvec_def**
  %135 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %135, %struct.rtvec_def** %phi_vec, align 8
  %136 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %num_elem208 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %136, i32 0, i32 0
  %137 = load i32, i32* %num_elem208, align 4
  store i32 %137, i32* %num_elem, align 4
  %138 = load i32, i32* %num_elem, align 4
  %sub209 = sub nsw i32 %138, 2
  store i32 %sub209, i32* %v, align 4
  br label %for.cond.210

for.cond.210:                                     ; preds = %for.inc.346, %if.then.199
  %139 = load i32, i32* %v, align 4
  %cmp211 = icmp sge i32 %139, 0
  br i1 %cmp211, label %for.body.213, label %for.end.348

for.body.213:                                     ; preds = %for.cond.210
  %140 = load i32, i32* %v, align 4
  %add215 = add nsw i32 %140, 1
  %idxprom216 = sext i32 %add215 to i64
  %141 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %141, i32 0, i32 1
  %arrayidx217 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom216
  %142 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx217, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx219 to i64*
  %143 = load i64, i64* %rtwint, align 8
  %144 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data220 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %144, i32 0, i32 4
  %bb221 = bitcast %union.varray_data_tag* %data220 to [1 x %struct.basic_block_def*]*
  %arrayidx222 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb221, i32 0, i64 %143
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx222, align 8
  store %struct.basic_block_def* %145, %struct.basic_block_def** %bb214, align 8
  br label %do.body.223

do.body.223:                                      ; preds = %for.body.213
  %146 = load %struct.basic_block_def*, %struct.basic_block_def** %bb214, align 8
  %end225 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %146, i32 0, i32 1
  %147 = load %struct.rtx_def*, %struct.rtx_def** %end225, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtint228 = bitcast %union.rtunion_def* %arrayidx227 to i32*
  %148 = load i32, i32* %rtint228, align 4
  %idxprom229 = sext i32 %148 to i64
  %149 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data230 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %149, i32 0, i32 4
  %bb231 = bitcast %union.varray_data_tag* %data230 to [1 x %struct.basic_block_def*]*
  %arrayidx232 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb231, i32 0, i64 %idxprom229
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx232, align 8
  %index233 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %150, i32 0, i32 11
  %151 = load i32, i32* %index233, align 4
  %add234 = add nsw i32 %151, 0
  %sub235 = sub nsw i32 %add234, -2
  %idxprom236 = sext i32 %sub235 to i64
  %152 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte, align 8
  %data237 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %152, i32 0, i32 0
  %153 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data237, align 8
  %arrayidx238 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %153, i64 %idxprom236
  %154 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx238, align 8
  %first239 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %154, i32 0, i32 0
  %155 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first239, align 8
  store %struct.bitmap_element_def* %155, %struct.bitmap_element_def** %ptr_224, align 8
  store i32 0, i32* %indx_240, align 4
  store i32 0, i32* %bit_num_241, align 4
  store i32 0, i32* %word_num_242, align 4
  br label %while.cond.243

while.cond.243:                                   ; preds = %while.body.251, %do.body.223
  %156 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %cmp244 = icmp ne %struct.bitmap_element_def* %156, null
  br i1 %cmp244, label %land.rhs.246, label %land.end.250

land.rhs.246:                                     ; preds = %while.cond.243
  %157 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %indx247 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %157, i32 0, i32 2
  %158 = load i32, i32* %indx247, align 4
  %159 = load i32, i32* %indx_240, align 4
  %cmp248 = icmp ult i32 %158, %159
  br label %land.end.250

land.end.250:                                     ; preds = %land.rhs.246, %while.cond.243
  %160 = phi i1 [ false, %while.cond.243 ], [ %cmp248, %land.rhs.246 ]
  br i1 %160, label %while.body.251, label %while.end.253

while.body.251:                                   ; preds = %land.end.250
  %161 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %next252 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %161, i32 0, i32 0
  %162 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next252, align 8
  store %struct.bitmap_element_def* %162, %struct.bitmap_element_def** %ptr_224, align 8
  br label %while.cond.243

while.end.253:                                    ; preds = %land.end.250
  %163 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %cmp254 = icmp ne %struct.bitmap_element_def* %163, null
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.261

land.lhs.true.256:                                ; preds = %while.end.253
  %164 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %indx257 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %164, i32 0, i32 2
  %165 = load i32, i32* %indx257, align 4
  %166 = load i32, i32* %indx_240, align 4
  %cmp258 = icmp ne i32 %165, %166
  br i1 %cmp258, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %land.lhs.true.256
  store i32 0, i32* %bit_num_241, align 4
  store i32 0, i32* %word_num_242, align 4
  br label %if.end.261

if.end.261:                                       ; preds = %if.then.260, %land.lhs.true.256, %while.end.253
  br label %for.cond.262

for.cond.262:                                     ; preds = %for.inc.342, %if.end.261
  %167 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %cmp263 = icmp ne %struct.bitmap_element_def* %167, null
  br i1 %cmp263, label %for.body.265, label %for.end.344

for.body.265:                                     ; preds = %for.cond.262
  br label %for.cond.266

for.cond.266:                                     ; preds = %for.inc.339, %for.body.265
  %168 = load i32, i32* %word_num_242, align 4
  %cmp267 = icmp ult i32 %168, 2
  br i1 %cmp267, label %for.body.269, label %for.end.341

for.body.269:                                     ; preds = %for.cond.266
  %169 = load i32, i32* %word_num_242, align 4
  %idxprom271 = zext i32 %169 to i64
  %170 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %bits272 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %170, i32 0, i32 3
  %arrayidx273 = getelementptr inbounds [2 x i64], [2 x i64]* %bits272, i32 0, i64 %idxprom271
  %171 = load i64, i64* %arrayidx273, align 8
  store i64 %171, i64* %word_270, align 8
  %172 = load i64, i64* %word_270, align 8
  %cmp274 = icmp ne i64 %172, 0
  br i1 %cmp274, label %if.then.276, label %if.end.338

if.then.276:                                      ; preds = %for.body.269
  br label %for.cond.277

for.cond.277:                                     ; preds = %for.inc.335, %if.then.276
  %173 = load i32, i32* %bit_num_241, align 4
  %cmp278 = icmp ult i32 %173, 64
  br i1 %cmp278, label %for.body.280, label %for.end.337

for.body.280:                                     ; preds = %for.cond.277
  %174 = load i32, i32* %bit_num_241, align 4
  %sh_prom282 = zext i32 %174 to i64
  %shl283 = shl i64 1, %sh_prom282
  store i64 %shl283, i64* %mask_281, align 8
  %175 = load i64, i64* %word_270, align 8
  %176 = load i64, i64* %mask_281, align 8
  %and284 = and i64 %175, %176
  %cmp285 = icmp ne i64 %and284, 0
  br i1 %cmp285, label %if.then.287, label %if.end.334

if.then.287:                                      ; preds = %for.body.280
  %177 = load i64, i64* %mask_281, align 8
  %neg288 = xor i64 %177, -1
  %178 = load i64, i64* %word_270, align 8
  %and289 = and i64 %178, %neg288
  store i64 %and289, i64* %word_270, align 8
  %179 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %indx290 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %179, i32 0, i32 2
  %180 = load i32, i32* %indx290, align 4
  %mul291 = mul i32 %180, 128
  %181 = load i32, i32* %word_num_242, align 4
  %mul292 = mul i32 %181, 64
  %add293 = add i32 %mul291, %mul292
  %182 = load i32, i32* %bit_num_241, align 4
  %add294 = add i32 %add293, %182
  store i32 %add294, i32* %edge_number, align 4
  %183 = load i32, i32* %edge_number, align 4
  %idxprom296 = sext i32 %183 to i64
  %184 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  %index_to_edge297 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %184, i32 0, i32 2
  %185 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge297, align 8
  %arrayidx298 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %185, i64 %idxprom296
  %186 = load %struct.edge_def*, %struct.edge_def** %arrayidx298, align 8
  %src299 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i32 0, i32 2
  %187 = load %struct.basic_block_def*, %struct.basic_block_def** %src299, align 8
  %end300 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %187, i32 0, i32 1
  %188 = load %struct.rtx_def*, %struct.rtx_def** %end300, align 8
  store %struct.rtx_def* %188, %struct.rtx_def** %jump_insn295, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn295, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load301 = load i32, i32* %190, align 8
  %bf.clear302 = and i32 %bf.load301, 65535
  %cmp303 = icmp eq i32 %bf.clear302, 33
  br i1 %cmp303, label %land.lhs.true.305, label %if.end.329

land.lhs.true.305:                                ; preds = %if.then.287
  %191 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn295, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load306 = load i32, i32* %192, align 8
  %bf.lshr307 = lshr i32 %bf.load306, 28
  %bf.clear308 = and i32 %bf.lshr307, 1
  %tobool309 = icmp ne i32 %bf.clear308, 0
  br i1 %tobool309, label %if.then.310, label %if.end.329

if.then.310:                                      ; preds = %land.lhs.true.305
  %193 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn295, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load311 = load i32, i32* %194, align 8
  %bf.clear312 = and i32 %bf.load311, -268435457
  store i32 %bf.clear312, i32* %194, align 8
  br label %do.body.313

do.body.313:                                      ; preds = %if.then.310
  %195 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used314 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %195, i32 0, i32 1
  %196 = load i64, i64* %elements_used314, align 8
  %197 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements315 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %197, i32 0, i32 0
  %198 = load i64, i64* %num_elements315, align 8
  %cmp316 = icmp uge i64 %196, %198
  br i1 %cmp316, label %if.then.318, label %if.end.322

if.then.318:                                      ; preds = %do.body.313
  %199 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %200 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %num_elements319 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %200, i32 0, i32 0
  %201 = load i64, i64* %num_elements319, align 8
  %mul320 = mul i64 2, %201
  %call321 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %199, i64 %mul320)
  store %struct.varray_head_tag* %call321, %struct.varray_head_tag** %unprocessed_instructions, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.318, %do.body.313
  %202 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn295, align 8
  %203 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used323 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %203, i32 0, i32 1
  %204 = load i64, i64* %elements_used323, align 8
  %inc324 = add i64 %204, 1
  store i64 %inc324, i64* %elements_used323, align 8
  %205 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %data325 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %205, i32 0, i32 4
  %rtx326 = bitcast %union.varray_data_tag* %data325 to [1 x %struct.rtx_def*]*
  %arrayidx327 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx326, i32 0, i64 %204
  store %struct.rtx_def* %202, %struct.rtx_def** %arrayidx327, align 8
  br label %do.end.328

do.end.328:                                       ; preds = %if.end.322
  br label %if.end.329

if.end.329:                                       ; preds = %do.end.328, %land.lhs.true.305, %if.then.287
  %206 = load i64, i64* %word_270, align 8
  %cmp330 = icmp eq i64 %206, 0
  br i1 %cmp330, label %if.then.332, label %if.end.333

if.then.332:                                      ; preds = %if.end.329
  br label %for.end.337

if.end.333:                                       ; preds = %if.end.329
  br label %if.end.334

if.end.334:                                       ; preds = %if.end.333, %for.body.280
  br label %for.inc.335

for.inc.335:                                      ; preds = %if.end.334
  %207 = load i32, i32* %bit_num_241, align 4
  %inc336 = add i32 %207, 1
  store i32 %inc336, i32* %bit_num_241, align 4
  br label %for.cond.277

for.end.337:                                      ; preds = %if.then.332, %for.cond.277
  br label %if.end.338

if.end.338:                                       ; preds = %for.end.337, %for.body.269
  store i32 0, i32* %bit_num_241, align 4
  br label %for.inc.339

for.inc.339:                                      ; preds = %if.end.338
  %208 = load i32, i32* %word_num_242, align 4
  %inc340 = add i32 %208, 1
  store i32 %inc340, i32* %word_num_242, align 4
  br label %for.cond.266

for.end.341:                                      ; preds = %for.cond.266
  store i32 0, i32* %word_num_242, align 4
  br label %for.inc.342

for.inc.342:                                      ; preds = %for.end.341
  %209 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_224, align 8
  %next343 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %209, i32 0, i32 0
  %210 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next343, align 8
  store %struct.bitmap_element_def* %210, %struct.bitmap_element_def** %ptr_224, align 8
  br label %for.cond.262

for.end.344:                                      ; preds = %for.cond.262
  br label %do.end.345

do.end.345:                                       ; preds = %for.end.344
  br label %for.inc.346

for.inc.346:                                      ; preds = %do.end.345
  %211 = load i32, i32* %v, align 4
  %sub347 = sub nsw i32 %211, 2
  store i32 %sub347, i32* %v, align 4
  br label %for.cond.210

for.end.348:                                      ; preds = %for.cond.210
  br label %if.end.349

if.end.349:                                       ; preds = %for.end.348, %land.lhs.true.188, %land.lhs.true.180, %land.lhs.true.175, %do.end.172
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %lor.lhs.false, %land.lhs.true.61, %while.body
  br label %while.cond

while.end.351:                                    ; preds = %while.cond
  %call353 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call353, %struct.rtx_def** %insn352, align 8
  br label %for.cond.354

for.cond.354:                                     ; preds = %for.inc.522, %while.end.351
  %212 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %cmp355 = icmp ne %struct.rtx_def* %212, null
  br i1 %cmp355, label %for.body.357, label %for.end.526

for.body.357:                                     ; preds = %for.cond.354
  %213 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %214 = bitcast %struct.rtx_def* %213 to i32*
  %bf.load358 = load i32, i32* %214, align 8
  %bf.lshr359 = lshr i32 %bf.load358, 28
  %bf.clear360 = and i32 %bf.lshr359, 1
  %tobool361 = icmp ne i32 %bf.clear360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.521

if.then.362:                                      ; preds = %for.body.357
  %215 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %call363 = call i32 @any_condjump_p(%struct.rtx_def* %215)
  %tobool364 = icmp ne i32 %call363, 0
  br i1 %tobool364, label %if.then.365, label %if.else

if.then.365:                                      ; preds = %if.then.362
  %216 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld367, i32 0, i64 0
  %rtint369 = bitcast %union.rtunion_def* %arrayidx368 to i32*
  %217 = load i32, i32* %rtint369, align 4
  %idxprom370 = sext i32 %217 to i64
  %218 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data371 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %218, i32 0, i32 4
  %bb372 = bitcast %union.varray_data_tag* %data371 to [1 x %struct.basic_block_def*]*
  %arrayidx373 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb372, i32 0, i64 %idxprom370
  %219 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx373, align 8
  store %struct.basic_block_def* %219, %struct.basic_block_def** %bb366, align 8
  %220 = load i32*, i32** %pdom, align 8
  %221 = load %struct.basic_block_def*, %struct.basic_block_def** %bb366, align 8
  %call374 = call %struct.basic_block_def* @find_pdom(i32* %220, %struct.basic_block_def* %221)
  store %struct.basic_block_def* %call374, %struct.basic_block_def** %pdom_bb, align 8
  %222 = load %struct.basic_block_def*, %struct.basic_block_def** %pdom_bb, align 8
  %cmp375 = icmp eq %struct.basic_block_def* %222, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp375, label %if.then.377, label %if.end.436

if.then.377:                                      ; preds = %if.then.365
  %223 = load %struct.basic_block_def*, %struct.basic_block_def** %bb366, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %223, i32 0, i32 5
  %224 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %224, %struct.edge_def** %e, align 8
  br label %while.cond.378

while.cond.378:                                   ; preds = %if.end.429, %if.then.377
  %225 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool379 = icmp ne %struct.edge_def* %225, null
  br i1 %tobool379, label %while.body.380, label %while.end.430

while.body.380:                                   ; preds = %while.cond.378
  %226 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %226, %struct.edge_def** %temp, align 8
  %227 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %227, i32 0, i32 1
  %228 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %228, %struct.edge_def** %e, align 8
  %229 = load %struct.edge_def*, %struct.edge_def** %temp, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %229, i32 0, i32 6
  %230 = load i32, i32* %flags, align 4
  %and381 = and i32 %230, 1
  %cmp382 = icmp eq i32 %and381, 0
  br i1 %cmp382, label %if.then.384, label %if.end.429

if.then.384:                                      ; preds = %while.body.380
  %231 = load %struct.edge_def*, %struct.edge_def** %temp, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %231, i32 0, i32 3
  %232 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp385 = icmp ne %struct.basic_block_def* %232, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp385, label %if.then.387, label %if.end.428

if.then.387:                                      ; preds = %if.then.384
  %233 = load %struct.edge_def*, %struct.edge_def** %temp, align 8
  %dest389 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %233, i32 0, i32 3
  %234 = load %struct.basic_block_def*, %struct.basic_block_def** %dest389, align 8
  %call390 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %234)
  store %struct.rtx_def* %call390, %struct.rtx_def** %insn388, align 8
  br label %while.cond.391

while.cond.391:                                   ; preds = %while.body.418, %if.then.387
  %235 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %tobool392 = icmp ne %struct.rtx_def* %235, null
  br i1 %tobool392, label %land.lhs.true.393, label %land.end.417

land.lhs.true.393:                                ; preds = %while.cond.391
  %236 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load394 = load i32, i32* %237, align 8
  %bf.clear395 = and i32 %bf.load394, 65535
  %cmp396 = icmp eq i32 %bf.clear395, 32
  br i1 %cmp396, label %land.lhs.true.398, label %land.end.417

land.lhs.true.398:                                ; preds = %land.lhs.true.393
  %238 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %fld399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld399, i32 0, i64 3
  %rtx401 = bitcast %union.rtunion_def* %arrayidx400 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %rtx401, align 8
  %240 = bitcast %struct.rtx_def* %239 to i32*
  %bf.load402 = load i32, i32* %240, align 8
  %bf.clear403 = and i32 %bf.load402, 65535
  %cmp404 = icmp eq i32 %bf.clear403, 47
  br i1 %cmp404, label %land.rhs.406, label %land.end.417

land.rhs.406:                                     ; preds = %land.lhs.true.398
  %241 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %fld407 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %241, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld407, i32 0, i64 3
  %rtx409 = bitcast %union.rtunion_def* %arrayidx408 to %struct.rtx_def**
  %242 = load %struct.rtx_def*, %struct.rtx_def** %rtx409, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 1
  %rtx412 = bitcast %union.rtunion_def* %arrayidx411 to %struct.rtx_def**
  %243 = load %struct.rtx_def*, %struct.rtx_def** %rtx412, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load413 = load i32, i32* %244, align 8
  %bf.clear414 = and i32 %bf.load413, 65535
  %cmp415 = icmp eq i32 %bf.clear414, 152
  br label %land.end.417

land.end.417:                                     ; preds = %land.rhs.406, %land.lhs.true.398, %land.lhs.true.393, %while.cond.391
  %245 = phi i1 [ false, %land.lhs.true.398 ], [ false, %land.lhs.true.393 ], [ false, %while.cond.391 ], [ %cmp415, %land.rhs.406 ]
  br i1 %245, label %while.body.418, label %while.end.427

while.body.418:                                   ; preds = %land.end.417
  %246 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 3
  %rtx421 = bitcast %union.rtunion_def* %arrayidx420 to %struct.rtx_def**
  %247 = load %struct.rtx_def*, %struct.rtx_def** %rtx421, align 8
  %248 = load %struct.edge_def*, %struct.edge_def** %temp, align 8
  %src422 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %248, i32 0, i32 2
  %249 = load %struct.basic_block_def*, %struct.basic_block_def** %src422, align 8
  %call423 = call i32 @remove_phi_alternative(%struct.rtx_def* %247, %struct.basic_block_def* %249)
  %250 = load %struct.rtx_def*, %struct.rtx_def** %insn388, align 8
  %fld424 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx425 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld424, i32 0, i64 2
  %rtx426 = bitcast %union.rtunion_def* %arrayidx425 to %struct.rtx_def**
  %251 = load %struct.rtx_def*, %struct.rtx_def** %rtx426, align 8
  store %struct.rtx_def* %251, %struct.rtx_def** %insn388, align 8
  br label %while.cond.391

while.end.427:                                    ; preds = %land.end.417
  br label %if.end.428

if.end.428:                                       ; preds = %while.end.427, %if.then.384
  %252 = load %struct.edge_def*, %struct.edge_def** %temp, align 8
  call void @remove_edge(%struct.edge_def* %252)
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %while.body.380
  br label %while.cond.378

while.end.430:                                    ; preds = %while.cond.378
  %253 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load431 = load i32, i32* %254, align 8
  %bf.clear432 = and i32 %bf.load431, -65536
  %bf.set = or i32 %bf.clear432, 37
  store i32 %bf.set, i32* %254, align 8
  %255 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 4
  %rtint435 = bitcast %union.rtunion_def* %arrayidx434 to i32*
  store i32 -99, i32* %rtint435, align 4
  br label %for.inc.522

if.end.436:                                       ; preds = %if.then.365
  %256 = load %struct.basic_block_def*, %struct.basic_block_def** %bb366, align 8
  %succ437 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %256, i32 0, i32 5
  %257 = load %struct.edge_def*, %struct.edge_def** %succ437, align 8
  store %struct.edge_def* %257, %struct.edge_def** %e, align 8
  br label %while.cond.438

while.cond.438:                                   ; preds = %if.end.492, %if.then.446, %if.end.436
  %258 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool439 = icmp ne %struct.edge_def* %258, null
  br i1 %tobool439, label %while.body.440, label %while.end.493

while.body.440:                                   ; preds = %while.cond.438
  %259 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %259, %struct.edge_def** %temp441, align 8
  %260 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next442 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %260, i32 0, i32 1
  %261 = load %struct.edge_def*, %struct.edge_def** %succ_next442, align 8
  store %struct.edge_def* %261, %struct.edge_def** %e, align 8
  %262 = load %struct.edge_def*, %struct.edge_def** %temp441, align 8
  %flags443 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %262, i32 0, i32 6
  %263 = load i32, i32* %flags443, align 4
  %and444 = and i32 %263, 2
  %tobool445 = icmp ne i32 %and444, 0
  br i1 %tobool445, label %if.then.446, label %if.end.447

if.then.446:                                      ; preds = %while.body.440
  br label %while.cond.438

if.end.447:                                       ; preds = %while.body.440
  %264 = load %struct.edge_def*, %struct.edge_def** %temp441, align 8
  %dest448 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %264, i32 0, i32 3
  %265 = load %struct.basic_block_def*, %struct.basic_block_def** %dest448, align 8
  %cmp449 = icmp ne %struct.basic_block_def* %265, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp449, label %if.then.451, label %if.end.492

if.then.451:                                      ; preds = %if.end.447
  %266 = load %struct.edge_def*, %struct.edge_def** %temp441, align 8
  %dest453 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %266, i32 0, i32 3
  %267 = load %struct.basic_block_def*, %struct.basic_block_def** %dest453, align 8
  %call454 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %267)
  store %struct.rtx_def* %call454, %struct.rtx_def** %insn452, align 8
  br label %while.cond.455

while.cond.455:                                   ; preds = %while.body.482, %if.then.451
  %268 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %tobool456 = icmp ne %struct.rtx_def* %268, null
  br i1 %tobool456, label %land.lhs.true.457, label %land.end.481

land.lhs.true.457:                                ; preds = %while.cond.455
  %269 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %270 = bitcast %struct.rtx_def* %269 to i32*
  %bf.load458 = load i32, i32* %270, align 8
  %bf.clear459 = and i32 %bf.load458, 65535
  %cmp460 = icmp eq i32 %bf.clear459, 32
  br i1 %cmp460, label %land.lhs.true.462, label %land.end.481

land.lhs.true.462:                                ; preds = %land.lhs.true.457
  %271 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %271, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 3
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  %272 = load %struct.rtx_def*, %struct.rtx_def** %rtx465, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load466 = load i32, i32* %273, align 8
  %bf.clear467 = and i32 %bf.load466, 65535
  %cmp468 = icmp eq i32 %bf.clear467, 47
  br i1 %cmp468, label %land.rhs.470, label %land.end.481

land.rhs.470:                                     ; preds = %land.lhs.true.462
  %274 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %fld471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld471, i32 0, i64 3
  %rtx473 = bitcast %union.rtunion_def* %arrayidx472 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx473, align 8
  %fld474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld474, i32 0, i64 1
  %rtx476 = bitcast %union.rtunion_def* %arrayidx475 to %struct.rtx_def**
  %276 = load %struct.rtx_def*, %struct.rtx_def** %rtx476, align 8
  %277 = bitcast %struct.rtx_def* %276 to i32*
  %bf.load477 = load i32, i32* %277, align 8
  %bf.clear478 = and i32 %bf.load477, 65535
  %cmp479 = icmp eq i32 %bf.clear478, 152
  br label %land.end.481

land.end.481:                                     ; preds = %land.rhs.470, %land.lhs.true.462, %land.lhs.true.457, %while.cond.455
  %278 = phi i1 [ false, %land.lhs.true.462 ], [ false, %land.lhs.true.457 ], [ false, %while.cond.455 ], [ %cmp479, %land.rhs.470 ]
  br i1 %278, label %while.body.482, label %while.end.491

while.body.482:                                   ; preds = %land.end.481
  %279 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 3
  %rtx485 = bitcast %union.rtunion_def* %arrayidx484 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx485, align 8
  %281 = load %struct.edge_def*, %struct.edge_def** %temp441, align 8
  %src486 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %281, i32 0, i32 2
  %282 = load %struct.basic_block_def*, %struct.basic_block_def** %src486, align 8
  %call487 = call i32 @remove_phi_alternative(%struct.rtx_def* %280, %struct.basic_block_def* %282)
  %283 = load %struct.rtx_def*, %struct.rtx_def** %insn452, align 8
  %fld488 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %arrayidx489 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld488, i32 0, i64 2
  %rtx490 = bitcast %union.rtunion_def* %arrayidx489 to %struct.rtx_def**
  %284 = load %struct.rtx_def*, %struct.rtx_def** %rtx490, align 8
  store %struct.rtx_def* %284, %struct.rtx_def** %insn452, align 8
  br label %while.cond.455

while.end.491:                                    ; preds = %land.end.481
  br label %if.end.492

if.end.492:                                       ; preds = %while.end.491, %if.end.447
  %285 = load %struct.edge_def*, %struct.edge_def** %temp441, align 8
  call void @remove_edge(%struct.edge_def* %285)
  br label %while.cond.438

while.end.493:                                    ; preds = %while.cond.438
  %286 = load %struct.basic_block_def*, %struct.basic_block_def** %bb366, align 8
  %287 = load %struct.basic_block_def*, %struct.basic_block_def** %pdom_bb, align 8
  %call494 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %286, %struct.basic_block_def* %287, i32 0)
  %288 = load %struct.basic_block_def*, %struct.basic_block_def** %pdom_bb, align 8
  %call495 = call %struct.rtx_def* @find_block_label(%struct.basic_block_def* %288)
  store %struct.rtx_def* %call495, %struct.rtx_def** %lbl, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %lbl, align 8
  %call496 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %289)
  %290 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 3
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx499, align 8
  %fld500 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx501 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld500, i32 0, i64 1
  %rtx502 = bitcast %union.rtunion_def* %arrayidx501 to %struct.rtx_def**
  store %struct.rtx_def* %call496, %struct.rtx_def** %rtx502, align 8
  %292 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld503, i32 0, i64 4
  %rtint505 = bitcast %union.rtunion_def* %arrayidx504 to i32*
  store i32 -1, i32* %rtint505, align 4
  %293 = load %struct.rtx_def*, %struct.rtx_def** %lbl, align 8
  %294 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 7
  %rtx508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtx_def**
  store %struct.rtx_def* %293, %struct.rtx_def** %rtx508, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %lbl, align 8
  %fld509 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx510 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld509, i32 0, i64 3
  %rtint511 = bitcast %union.rtunion_def* %arrayidx510 to i32*
  %296 = load i32, i32* %rtint511, align 4
  %inc512 = add nsw i32 %296, 1
  store i32 %inc512, i32* %rtint511, align 4
  %297 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %call513 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %297)
  br label %if.end.520

if.else:                                          ; preds = %if.then.362
  %298 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %bf.load514 = load i32, i32* %299, align 8
  %bf.clear515 = and i32 %bf.load514, 65535
  %cmp516 = icmp eq i32 %bf.clear515, 33
  br i1 %cmp516, label %if.end.519, label %if.then.518

if.then.518:                                      ; preds = %if.else
  %300 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  call void @delete_insn_bb(%struct.rtx_def* %300)
  br label %if.end.519

if.end.519:                                       ; preds = %if.then.518, %if.else
  br label %if.end.520

if.end.520:                                       ; preds = %if.end.519, %while.end.493
  br label %if.end.521

if.end.521:                                       ; preds = %if.end.520, %for.body.357
  br label %for.inc.522

for.inc.522:                                      ; preds = %if.end.521, %while.end.430
  %301 = load %struct.rtx_def*, %struct.rtx_def** %insn352, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 2
  %rtx525 = bitcast %union.rtunion_def* %arrayidx524 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx525, align 8
  store %struct.rtx_def* %302, %struct.rtx_def** %insn352, align 8
  br label %for.cond.354

for.end.526:                                      ; preds = %for.cond.354
  call void @remove_fake_edges()
  store i32 0, i32* %i, align 4
  br label %for.cond.527

for.cond.527:                                     ; preds = %for.inc.556, %for.end.526
  %303 = load i32, i32* %i, align 4
  %304 = load i32, i32* @n_basic_blocks, align 4
  %cmp528 = icmp slt i32 %303, %304
  br i1 %cmp528, label %for.body.530, label %for.end.558

for.body.530:                                     ; preds = %for.cond.527
  %305 = load i32, i32* %i, align 4
  %idxprom532 = sext i32 %305 to i64
  %306 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data533 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %306, i32 0, i32 4
  %bb534 = bitcast %union.varray_data_tag* %data533 to [1 x %struct.basic_block_def*]*
  %arrayidx535 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb534, i32 0, i64 %idxprom532
  %307 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx535, align 8
  store %struct.basic_block_def* %307, %struct.basic_block_def** %bb531, align 8
  %308 = load %struct.basic_block_def*, %struct.basic_block_def** %bb531, align 8
  %succ536 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %308, i32 0, i32 5
  %309 = load %struct.edge_def*, %struct.edge_def** %succ536, align 8
  %cmp537 = icmp eq %struct.edge_def* %309, null
  br i1 %cmp537, label %if.then.539, label %if.end.555

if.then.539:                                      ; preds = %for.body.530
  %310 = load %struct.basic_block_def*, %struct.basic_block_def** %bb531, align 8
  %end541 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %310, i32 0, i32 1
  %311 = load %struct.rtx_def*, %struct.rtx_def** %end541, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %311, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 2
  %rtx544 = bitcast %union.rtunion_def* %arrayidx543 to %struct.rtx_def**
  %312 = load %struct.rtx_def*, %struct.rtx_def** %rtx544, align 8
  store %struct.rtx_def* %312, %struct.rtx_def** %next540, align 8
  %313 = load %struct.rtx_def*, %struct.rtx_def** %next540, align 8
  %tobool545 = icmp ne %struct.rtx_def* %313, null
  br i1 %tobool545, label %lor.lhs.false.546, label %if.then.551

lor.lhs.false.546:                                ; preds = %if.then.539
  %314 = load %struct.rtx_def*, %struct.rtx_def** %next540, align 8
  %315 = bitcast %struct.rtx_def* %314 to i32*
  %bf.load547 = load i32, i32* %315, align 8
  %bf.clear548 = and i32 %bf.load547, 65535
  %cmp549 = icmp ne i32 %bf.clear548, 35
  br i1 %cmp549, label %if.then.551, label %if.end.554

if.then.551:                                      ; preds = %lor.lhs.false.546, %if.then.539
  %316 = load %struct.basic_block_def*, %struct.basic_block_def** %bb531, align 8
  %end552 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %316, i32 0, i32 1
  %317 = load %struct.rtx_def*, %struct.rtx_def** %end552, align 8
  %call553 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %317)
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.551, %lor.lhs.false.546
  br label %if.end.555

if.end.555:                                       ; preds = %if.end.554, %for.body.530
  br label %for.inc.556

for.inc.556:                                      ; preds = %if.end.555
  %318 = load i32, i32* %i, align 4
  %inc557 = add nsw i32 %318, 1
  store i32 %inc557, i32* %i, align 4
  br label %for.cond.527

for.end.558:                                      ; preds = %for.cond.527
  %call559 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call559, %struct.rtx_def** %insn, align 8
  br label %for.cond.560

for.cond.560:                                     ; preds = %for.inc.566, %for.end.558
  %319 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp561 = icmp ne %struct.rtx_def* %319, null
  br i1 %cmp561, label %for.body.563, label %for.end.570

for.body.563:                                     ; preds = %for.cond.560
  %320 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %321 = bitcast %struct.rtx_def* %320 to i32*
  %bf.load564 = load i32, i32* %321, align 8
  %bf.clear565 = and i32 %bf.load564, -268435457
  store i32 %bf.clear565, i32* %321, align 8
  br label %for.inc.566

for.inc.566:                                      ; preds = %for.body.563
  %322 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %322, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld567, i32 0, i64 2
  %rtx569 = bitcast %union.rtunion_def* %arrayidx568 to %struct.rtx_def**
  %323 = load %struct.rtx_def*, %struct.rtx_def** %rtx569, align 8
  store %struct.rtx_def* %323, %struct.rtx_def** %insn, align 8
  br label %for.cond.560

for.end.570:                                      ; preds = %for.cond.560
  %324 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %elements_used571 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %324, i32 0, i32 1
  %325 = load i64, i64* %elements_used571, align 8
  %cmp572 = icmp ne i64 %325, 0
  br i1 %cmp572, label %if.then.574, label %if.end.575

if.then.574:                                      ; preds = %for.end.570
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 737, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.ssa_eliminate_dead_code, i32 0, i32 0)) #4
  unreachable

if.end.575:                                       ; preds = %for.end.570
  br label %do.body.576

do.body.576:                                      ; preds = %if.end.575
  %326 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %tobool577 = icmp ne %struct.varray_head_tag* %326, null
  br i1 %tobool577, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %do.body.576
  %327 = load %struct.varray_head_tag*, %struct.varray_head_tag** %unprocessed_instructions, align 8
  %328 = bitcast %struct.varray_head_tag* %327 to i8*
  call void @free(i8* %328) #5
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %unprocessed_instructions, align 8
  br label %if.end.579

if.end.579:                                       ; preds = %if.then.578, %do.body.576
  br label %do.end.580

do.end.580:                                       ; preds = %if.end.579
  %329 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte, align 8
  call void @control_dependent_block_to_edge_map_free(%struct.control_dependent_block_to_edge_map_s* %329)
  %330 = load i32*, i32** %pdom, align 8
  %331 = bitcast i32* %330 to i8*
  call void @free(i8* %331) #5
  %332 = load %struct.edge_list*, %struct.edge_list** %el, align 8
  call void @free_edge_list(%struct.edge_list* %332)
  ret void
}

declare i32 @get_max_uid() #1

; Function Attrs: nounwind uwtable
define internal void @mark_all_insn_unnecessary() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp = icmp ne %struct.rtx_def* %0, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, -268435457
  %bf.set = or i32 %bf.clear, 268435456
  store i32 %bf.set, i32* %2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.control_dependent_block_to_edge_map_s* @control_dependent_block_to_edge_map_create(i64 %num_basic_blocks) #0 {
entry:
  %num_basic_blocks.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %c = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  store i64 %num_basic_blocks, i64* %num_basic_blocks.addr, align 8
  %call = call noalias i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.control_dependent_block_to_edge_map_s*
  store %struct.control_dependent_block_to_edge_map_s* %0, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %1 = load i64, i64* %num_basic_blocks.addr, align 8
  %sub = sub i64 %1, -2
  %conv = trunc i64 %sub to i32
  %2 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %length = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %2, i32 0, i32 1
  store i32 %conv, i32* %length, align 4
  %3 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %length1 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %3, i32 0, i32 1
  %4 = load i32, i32* %length1, align 4
  %conv2 = sext i32 %4 to i64
  %mul = mul i64 %conv2, 8
  %call3 = call noalias i8* @xmalloc(i64 %mul)
  %5 = bitcast i8* %call3 to %struct.bitmap_head_def**
  %6 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %data = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %6, i32 0, i32 0
  store %struct.bitmap_head_def** %5, %struct.bitmap_head_def*** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %length4 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %8, i32 0, i32 1
  %9 = load i32, i32* %length4, align 4
  %cmp = icmp slt i32 %7, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call6 = call noalias i8* @xmalloc(i64 24)
  %10 = bitcast i8* %call6 to %struct.bitmap_head_def*
  %call7 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  %data8 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %12, i32 0, i32 0
  %13 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data8, align 8
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %13, i64 %idxprom
  store %struct.bitmap_head_def* %call7, %struct.bitmap_head_def** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c, align 8
  ret %struct.control_dependent_block_to_edge_map_s* %15
}

declare void @connect_infinite_loops_to_exit() #1

declare void @compute_bb_for_insn(i32) #1

declare noalias i8* @xmalloc(i64) #1

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

declare %struct.edge_list* @create_edge_list() #1

; Function Attrs: nounwind uwtable
define internal void @find_all_control_dependences(%struct.edge_list* %el, i32* %pdom, %struct.control_dependent_block_to_edge_map_s* %cdbte) #0 {
entry:
  %el.addr = alloca %struct.edge_list*, align 8
  %pdom.addr = alloca i32*, align 8
  %cdbte.addr = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  %i = alloca i32, align 4
  store %struct.edge_list* %el, %struct.edge_list** %el.addr, align 8
  store i32* %pdom, i32** %pdom.addr, align 8
  store %struct.control_dependent_block_to_edge_map_s* %cdbte, %struct.control_dependent_block_to_edge_map_s** %cdbte.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 1
  %2 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %4 = load i32, i32* %i, align 4
  %5 = load i32*, i32** %pdom.addr, align 8
  %6 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte.addr, align 8
  call void @find_control_dependence(%struct.edge_list* %3, i32 %4, i32* %5, %struct.control_dependent_block_to_edge_map_s* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal i32 @find_inherently_necessary(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %inherently_necessary_set = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @inherently_necessary_register(%struct.rtx_def* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.2:                                        ; preds = %if.else
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 34, label %sw.bb
    i32 35, label %sw.bb
    i32 46, label %sw.bb
    i32 36, label %sw.bb.3
    i32 37, label %sw.bb.3
    i32 33, label %sw.bb.4
    i32 32, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.else.2, %if.else.2, %if.else.2
  store i32 1, i32* %retval
  br label %return

sw.bb.3:                                          ; preds = %if.else.2, %if.else.2
  store i32 0, i32* %retval
  br label %return

sw.bb.4:                                          ; preds = %if.else.2
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 33
  br i1 %cmp7, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %sw.bb.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load8 = load i32, i32* %8, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 44
  br i1 %cmp10, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load14 = load i32, i32* %11, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 45
  br i1 %cmp16, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false, %sw.bb.4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call17 = call i32 @computed_jump_p(%struct.rtx_def* %12)
  %cmp18 = icmp ne i32 %call17, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.lhs.true
  %13 = phi i1 [ true, %lor.lhs.false ], [ true, %land.lhs.true ], [ %cmp18, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

sw.bb.19:                                         ; preds = %if.else.2
  store i32 0, i32* %inherently_necessary_set, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %16 = bitcast i32* %inherently_necessary_set to i8*
  call void @note_stores(%struct.rtx_def* %15, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @note_inherently_necessary_set, i8* %16)
  %17 = load i32, i32* %inherently_necessary_set, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %lor.end.37, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %sw.bb.19
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load28 = load i32, i32* %20, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 40
  br i1 %cmp30, label %lor.end.37, label %lor.rhs.31

lor.rhs.31:                                       ; preds = %lor.lhs.false.24
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %call35 = call i32 @asm_noperands(%struct.rtx_def* %22)
  %cmp36 = icmp sge i32 %call35, 0
  br label %lor.end.37

lor.end.37:                                       ; preds = %lor.rhs.31, %lor.lhs.false.24, %sw.bb.19
  %23 = phi i1 [ true, %lor.lhs.false.24 ], [ true, %sw.bb.19 ], [ %cmp36, %lor.rhs.31 ]
  %lor.ext38 = zext i1 %23 to i32
  store i32 %lor.ext38, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.else.2
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 399, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__FUNCTION__.find_inherently_necessary, i32 0, i32 0)) #4
  unreachable

return:                                           ; preds = %lor.end.37, %lor.end, %sw.bb.3, %sw.bb, %if.then.1, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @propagate_necessity_through_operand(%struct.rtx_def** %current_rtx, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %current_rtx.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %unprocessed_instructions = alloca %struct.varray_head_tag**, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %current_rtx, %struct.rtx_def*** %current_rtx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %current_rtx.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.varray_head_tag**
  store %struct.varray_head_tag** %3, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 61, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ult i32 %8, 53
  br i1 %cmp1, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %10 = load i32, i32* %rtuint4, align 4
  %cmp5 = icmp eq i32 %10, 17
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %12 = load i32, i32* %rtuint9, align 4
  %cmp10 = icmp eq i32 %12, 16
  br i1 %cmp10, label %if.then.11, label %if.end.32

if.then.11:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %sw.bb
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %14 = load i32, i32* %rtuint14, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data15 to [1 x %struct.rtx_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx16, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp17 = icmp ne %struct.rtx_def* %17, null
  br i1 %cmp17, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.11
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load18 = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load18, 28
  %bf.clear19 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear19, 0
  br i1 %tobool, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.clear22 = and i32 %bf.load21, -268435457
  store i32 %bf.clear22, i32* %21, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %22 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** %22, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 1
  %24 = load i64, i64* %elements_used, align 8
  %25 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %26 = load %struct.varray_head_tag*, %struct.varray_head_tag** %25, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %26, i32 0, i32 0
  %27 = load i64, i64* %num_elements, align 8
  %cmp23 = icmp uge i64 %24, %27
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %do.body
  %28 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** %28, align 8
  %30 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %31 = load %struct.varray_head_tag*, %struct.varray_head_tag** %30, align 8
  %num_elements25 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %31, i32 0, i32 0
  %32 = load i64, i64* %num_elements25, align 8
  %mul = mul i64 2, %32
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %29, i64 %mul)
  %33 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %33, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %do.body
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** %35, align 8
  %elements_used27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 1
  %37 = load i64, i64* %elements_used27, align 8
  %inc = add i64 %37, 1
  store i64 %inc, i64* %elements_used27, align 8
  %38 = load %struct.varray_head_tag**, %struct.varray_head_tag*** %unprocessed_instructions, align 8
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** %38, align 8
  %data28 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %rtx29 = bitcast %union.varray_data_tag* %data28 to [1 x %struct.rtx_def*]*
  %arrayidx30 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx29, i32 0, i64 %37
  store %struct.rtx_def* %34, %struct.rtx_def** %arrayidx30, align 8
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %land.lhs.true, %if.then.11
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %lor.lhs.false.6
  store i32 0, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.32, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @find_pdom(i32* %pdom, %struct.basic_block_def* %block) #0 {
entry:
  %retval = alloca %struct.basic_block_def*, align 8
  %pdom.addr = alloca i32*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  store i32* %pdom, i32** %pdom.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.find_pdom, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 11
  %2 = load i32, i32* %index, align 4
  %cmp = icmp eq i32 %2, -3
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 275, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.find_pdom, i32 0, i32 0)) #4
  unreachable

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %3, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 0
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %retval
  br label %return

if.else:                                          ; preds = %if.end.2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %cmp5 = icmp eq %struct.basic_block_def* %6, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp5, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index6, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** %pdom.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx7, align 4
  %cmp8 = icmp eq i32 %10, -2
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %lor.lhs.false, %if.else
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %retval
  br label %return

if.else.10:                                       ; preds = %lor.lhs.false
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index11, align 4
  %idxprom12 = sext i32 %12 to i64
  %13 = load i32*, i32** %pdom.addr, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %13, i64 %idxprom12
  %14 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb16 = bitcast %union.varray_data_tag* %data15 to [1 x %struct.basic_block_def*]*
  %arrayidx17 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb16, i32 0, i64 %idxprom14
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx17, align 8
  store %struct.basic_block_def* %16, %struct.basic_block_def** %retval
  br label %return

return:                                           ; preds = %if.else.10, %if.then.9, %if.then.4
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %retval
  ret %struct.basic_block_def* %17
}

declare %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def*) #1

declare i32 @remove_phi_alternative(%struct.rtx_def*, %struct.basic_block_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_block_label(%struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %new_label = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call = call %struct.rtx_def* @gen_label_rtx()
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call1 = call %struct.rtx_def* @emit_label_before(%struct.rtx_def* %call, %struct.rtx_def* %5)
  store %struct.rtx_def* %call1, %struct.rtx_def** %new_label, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head2, align 8
  %cmp3 = icmp eq %struct.rtx_def* %6, %8
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %9 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 0
  store %struct.rtx_def* %9, %struct.rtx_def** %head5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @delete_insn_bb(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 473, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.delete_insn_bb, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %4)
  br label %return

return:                                           ; preds = %if.end.3, %if.then.2
  ret void
}

declare void @remove_fake_edges() #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @control_dependent_block_to_edge_map_free(%struct.control_dependent_block_to_edge_map_s* %c) #0 {
entry:
  %c.addr = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  %i = alloca i32, align 4
  store %struct.control_dependent_block_to_edge_map_s* %c, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %length = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %1, i32 0, i32 1
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %data = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %4, i32 0, i32 0
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %idxprom
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %data2 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %8, i32 0, i32 0
  %9 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data2, align 8
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %9, i64 %idxprom1
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx3, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %10)
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %data5 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %12, i32 0, i32 0
  %13 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data5, align 8
  %arrayidx6 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %13, i64 %idxprom4
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx6, align 8
  %15 = bitcast %struct.bitmap_head_def* %14 to i8*
  call void @free(i8* %15) #5
  %16 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %16 to i64
  %17 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %data8 = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %17, i32 0, i32 0
  %18 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data8, align 8
  %arrayidx9 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %18, i64 %idxprom7
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %21 = bitcast %struct.control_dependent_block_to_edge_map_s* %20 to i8*
  call void @free(i8* %21) #5
  ret void
}

declare void @free_edge_list(%struct.edge_list*) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal void @find_control_dependence(%struct.edge_list* %el, i32 %edge_index, i32* %pdom, %struct.control_dependent_block_to_edge_map_s* %cdbte) #0 {
entry:
  %el.addr = alloca %struct.edge_list*, align 8
  %edge_index.addr = alloca i32, align 4
  %pdom.addr = alloca i32*, align 8
  %cdbte.addr = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  %current_block = alloca %struct.basic_block_def*, align 8
  %ending_block = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %el, %struct.edge_list** %el.addr, align 8
  store i32 %edge_index, i32* %edge_index.addr, align 4
  store i32* %pdom, i32** %pdom.addr, align 8
  store %struct.control_dependent_block_to_edge_map_s* %cdbte, %struct.control_dependent_block_to_edge_map_s** %cdbte.addr, align 8
  %0 = load i32, i32* %edge_index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 2
  %2 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %2, i64 %idxprom
  %3 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp = icmp eq %struct.basic_block_def* %4, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 247, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.find_control_dependence, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %edge_index.addr, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge2 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %6, i32 0, i32 2
  %7 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge2, align 8
  %arrayidx3 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %7, i64 %idxprom1
  %8 = load %struct.edge_def*, %struct.edge_def** %arrayidx3, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %cmp5 = icmp eq %struct.basic_block_def* %9, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx6 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 0
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx6, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load i32*, i32** %pdom.addr, align 8
  %13 = load i32, i32* %edge_index.addr, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge8 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %14, i32 0, i32 2
  %15 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge8, align 8
  %arrayidx9 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %15, i64 %idxprom7
  %16 = load %struct.edge_def*, %struct.edge_def** %arrayidx9, align 8
  %src10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 2
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src10, align 8
  %call = call %struct.basic_block_def* @find_pdom(i32* %12, %struct.basic_block_def* %17)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.basic_block_def* [ %11, %cond.true ], [ %call, %cond.false ]
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %ending_block, align 8
  %18 = load i32, i32* %edge_index.addr, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load %struct.edge_list*, %struct.edge_list** %el.addr, align 8
  %index_to_edge12 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %19, i32 0, i32 2
  %20 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge12, align 8
  %arrayidx13 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %20, i64 %idxprom11
  %21 = load %struct.edge_def*, %struct.edge_def** %arrayidx13, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 3
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %22, %struct.basic_block_def** %current_block, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %current_block, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %ending_block, align 8
  %cmp14 = icmp ne %struct.basic_block_def* %23, %24
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %current_block, align 8
  %cmp15 = icmp ne %struct.basic_block_def* %25, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %27 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %cdbte.addr, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %current_block, align 8
  %29 = load i32, i32* %edge_index.addr, align 4
  call void @set_control_dependent_block_to_edge_map_bit(%struct.control_dependent_block_to_edge_map_s* %27, %struct.basic_block_def* %28, i32 %29)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32*, i32** %pdom.addr, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %current_block, align 8
  %call16 = call %struct.basic_block_def* @find_pdom(i32* %30, %struct.basic_block_def* %31)
  store %struct.basic_block_def* %call16, %struct.basic_block_def** %current_block, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @set_control_dependent_block_to_edge_map_bit(%struct.control_dependent_block_to_edge_map_s* %c, %struct.basic_block_def* %bb, i32 %edge_index) #0 {
entry:
  %c.addr = alloca %struct.control_dependent_block_to_edge_map_s*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %edge_index.addr = alloca i32, align 4
  store %struct.control_dependent_block_to_edge_map_s* %c, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %edge_index, i32* %edge_index.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 11
  %1 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %1, -2
  %2 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %length = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %2, i32 0, i32 1
  %3 = load i32, i32* %length, align 4
  %cmp = icmp sge i32 %sub, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__FUNCTION__.set_control_dependent_block_to_edge_map_bit, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 11
  %5 = load i32, i32* %index1, align 4
  %sub2 = sub nsw i32 %5, -2
  %idxprom = sext i32 %sub2 to i64
  %6 = load %struct.control_dependent_block_to_edge_map_s*, %struct.control_dependent_block_to_edge_map_s** %c.addr, align 8
  %data = getelementptr inbounds %struct.control_dependent_block_to_edge_map_s, %struct.control_dependent_block_to_edge_map_s* %6, i32 0, i32 0
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %data, align 8
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8
  %9 = load i32, i32* %edge_index.addr, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %8, i32 %9)
  ret void
}

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @inherently_necessary_register(%struct.rtx_def* %current_rtx) #0 {
entry:
  %current_rtx.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %current_rtx, %struct.rtx_def** %current_rtx.addr, align 8
  %call = call i32 @for_each_rtx(%struct.rtx_def** %current_rtx.addr, i32 (%struct.rtx_def**, i8*)* @inherently_necessary_register_1, i8* null)
  ret i32 %call
}

declare i32 @computed_jump_p(%struct.rtx_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @note_inherently_necessary_set(%struct.rtx_def* %dest, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %inherently_necessary_set_p = alloca i32*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i32*
  store i32* %1, i32** %inherently_necessary_set_p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 64
  br i1 %cmp3, label %lor.end, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 133
  br i1 %cmp7, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 132
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.4, %lor.lhs.false, %while.cond
  %10 = phi i1 [ true, %lor.lhs.false.4 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp10, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %dest.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load11 = load i32, i32* %14, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 66
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %while.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load15 = load i32, i32* %16, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 42
  br i1 %cmp17, label %if.then, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %17 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load19 = load i32, i32* %18, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 43
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.18, %lor.lhs.false.14, %while.end
  %19 = load i32*, i32** %inherently_necessary_set_p, align 8
  store i32 1, i32* %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.18
  ret void
}

declare i32 @asm_noperands(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @inherently_necessary_register_1(%struct.rtx_def** %current_rtx, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %current_rtx.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %current_rtx, %struct.rtx_def*** %current_rtx.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %current_rtx.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 49, label %sw.bb
    i32 59, label %sw.bb.1
    i32 61, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtuint, align 4
  %cmp3 = icmp ult i32 %6, 53
  br i1 %cmp3, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %sw.bb.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %8 = load i32, i32* %rtuint6, align 4
  %cmp7 = icmp eq i32 %8, 17
  br i1 %cmp7, label %if.then.15, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %10 = load i32, i32* %rtuint11, align 4
  %cmp12 = icmp eq i32 %10, 16
  br i1 %cmp12, label %if.then.15, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp14 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %lor.lhs.false.13, %lor.lhs.false.8, %lor.lhs.false, %sw.bb.2
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.13
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.else, %if.then.15, %sw.bb.1, %sw.bb, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct.rtx_def* @emit_label_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_label_rtx() #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
