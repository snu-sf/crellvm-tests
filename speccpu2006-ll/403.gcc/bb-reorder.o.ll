; ModuleID = 'bb-reorder.c'
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
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.reorder_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %struct.basic_block_def*, i32 }

@n_basic_blocks = external global i32, align 4
@targetm = external global %struct.gcc_target, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@basic_block_info = external global %struct.varray_head_tag*, align 8
@.str = private unnamed_addr constant [30 x i8] c"Reordering block %d after %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"bb-reorder.c\00", align 1
@__FUNCTION__.make_reorder_chain_1 = private unnamed_addr constant [21 x i8] c"make_reorder_chain_1\00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16

; Function Attrs: nounwind uwtable
define void @reorder_basic_blocks() #0 {
entry:
  %0 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i1 ()*, i1 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 15), align 8
  %call = call zeroext i1 %1()
  br i1 %call, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  call void @cfg_layout_initialize()
  call void @make_reorder_chain()
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end.2
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  call void @dump_flow_info(%struct._IO_FILE* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end.2
  call void @cfg_layout_finalize()
  br label %return

return:                                           ; preds = %if.end.4, %if.then.1, %if.then
  ret void
}

declare void @cfg_layout_initialize() #1

; Function Attrs: nounwind uwtable
define internal void @make_reorder_chain() #0 {
entry:
  %prev = alloca %struct.basic_block_def*, align 8
  %nbb_m1 = alloca i32, align 4
  %next = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %prev, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %nbb_m1, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store %struct.basic_block_def* null, %struct.basic_block_def** %next, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nbb_m1, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool = icmp ne %struct.basic_block_def* %3, null
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %7, %struct.basic_block_def** %bb, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 10
  %9 = load i8*, i8** %aux, align 8
  %10 = bitcast i8* %9 to %struct.reorder_block_def*
  %visited = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %10, i32 0, i32 3
  %11 = load i32, i32* %visited, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  store %struct.basic_block_def* %12, %struct.basic_block_def** %next, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool3 = icmp ne %struct.basic_block_def* %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.end
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %prev, align 8
  %call = call %struct.basic_block_def* @make_reorder_chain_1(%struct.basic_block_def* %15, %struct.basic_block_def* %16)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %prev, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %for.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.5
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool6 = icmp ne %struct.basic_block_def* %17, null
  br i1 %tobool6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %prev, align 8
  %aux7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 10
  %19 = load i8*, i8** %aux7, align 8
  %20 = bitcast i8* %19 to %struct.reorder_block_def*
  %next8 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %20, i32 0, i32 2
  store %struct.basic_block_def* null, %struct.basic_block_def** %next8, align 8
  ret void
}

declare void @dump_flow_info(%struct._IO_FILE*) #1

declare void @cfg_layout_finalize() #1

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @make_reorder_chain_1(%struct.basic_block_def* %bb, %struct.basic_block_def* %prev) #0 {
entry:
  %retval = alloca %struct.basic_block_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %prev.addr = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %next = alloca %struct.basic_block_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %taken = alloca i32, align 4
  %probability = alloca i32, align 4
  %e_taken = alloca %struct.edge_def*, align 8
  %e_fall = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.basic_block_def* %prev, %struct.basic_block_def** %prev.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %restart

restart:                                          ; preds = %if.then.121, %if.then
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 10
  %3 = load i8*, i8** %aux, align 8
  %4 = bitcast i8* %3 to %struct.reorder_block_def*
  %next1 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %4, i32 0, i32 2
  store %struct.basic_block_def* %1, %struct.basic_block_def** %next1, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %restart
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %add = add nsw i32 %7, 1
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index3, align 4
  %cmp = icmp ne i32 %add, %9
  br i1 %cmp, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index5, align 4
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index6, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 %12, i32 %14)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %restart
  br label %if.end.11

if.else:                                          ; preds = %entry
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 11
  %16 = load i32, i32* %index7, align 4
  %cmp8 = icmp ne i32 %16, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.make_reorder_chain_1, i32 0, i32 0)) #3
  unreachable

if.end.10:                                        ; preds = %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 10
  %18 = load i8*, i8** %aux12, align 8
  %19 = bitcast i8* %18 to %struct.reorder_block_def*
  %visited = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %19, i32 0, i32 3
  store i32 1, i32* %visited, align 4
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  store %struct.basic_block_def* %20, %struct.basic_block_def** %prev.addr, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 5
  %22 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp13 = icmp eq %struct.edge_def* %22, null
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  store %struct.basic_block_def* %23, %struct.basic_block_def** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.11
  store %struct.basic_block_def* null, %struct.basic_block_def** %next, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call16 = call i32 @any_condjump_p(%struct.rtx_def* %25)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.39

land.lhs.true.18:                                 ; preds = %if.end.15
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 1
  %27 = load %struct.rtx_def*, %struct.rtx_def** %end19, align 8
  %call20 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call20, %struct.rtx_def** %note, align 8
  %cmp21 = icmp ne %struct.rtx_def* %call20, null
  br i1 %cmp21, label %if.then.22, label %if.end.39

if.then.22:                                       ; preds = %land.lhs.true.18
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx24 to i64*
  %30 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %30 to i32
  store i32 %conv, i32* %probability, align 4
  %31 = load i32, i32* %probability, align 4
  %cmp25 = icmp sgt i32 %31, 5000
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %taken, align 4
  store %struct.edge_def* null, %struct.edge_def** %e_fall, align 8
  store %struct.edge_def* null, %struct.edge_def** %e_taken, align 8
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 5
  %33 = load %struct.edge_def*, %struct.edge_def** %succ27, align 8
  store %struct.edge_def* %33, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool28 = icmp ne %struct.edge_def* %34, null
  br i1 %tobool28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 6
  %36 = load i32, i32* %flags, align 4
  %and = and i32 %36, 1
  %tobool29 = icmp ne i32 %and, 0
  br i1 %tobool29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %for.body
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %37, %struct.edge_def** %e_fall, align 8
  br label %if.end.37

if.else.31:                                       ; preds = %for.body
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 6
  %39 = load i32, i32* %flags32, align 4
  %and33 = and i32 %39, 8
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %if.else.31
  %40 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %40, %struct.edge_def** %e_taken, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.else.31
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 1
  %42 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %42, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load i32, i32* %taken, align 4
  %tobool38 = icmp ne i32 %43, 0
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %44 = load %struct.edge_def*, %struct.edge_def** %e_taken, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %45 = load %struct.edge_def*, %struct.edge_def** %e_fall, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %44, %cond.true ], [ %45, %cond.false ]
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond, i32 0, i32 3
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %46, %struct.basic_block_def** %next, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %cond.end, %land.lhs.true.18, %if.end.15
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool40 = icmp ne %struct.basic_block_def* %47, null
  br i1 %tobool40, label %if.end.70, label %if.then.41

if.then.41:                                       ; preds = %if.end.39
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 5
  %49 = load %struct.edge_def*, %struct.edge_def** %succ42, align 8
  store %struct.edge_def* %49, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.67, %if.then.41
  %50 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool44 = icmp ne %struct.edge_def* %50, null
  br i1 %tobool44, label %for.body.45, label %for.end.69

for.body.45:                                      ; preds = %for.cond.43
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 6
  %52 = load i32, i32* %flags46, align 4
  %and47 = and i32 %52, 1
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then.49, label %if.else.51

if.then.49:                                       ; preds = %for.body.45
  %53 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %53, i32 0, i32 3
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %dest50, align 8
  store %struct.basic_block_def* %54, %struct.basic_block_def** %next, align 8
  br label %for.end.69

if.else.51:                                       ; preds = %for.body.45
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 3
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %dest52, align 8
  %index53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 11
  %57 = load i32, i32* %index53, align 4
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index54, align 4
  %add55 = add nsw i32 %59, 1
  %cmp56 = icmp eq i32 %57, %add55
  br i1 %cmp56, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.else.51
  %60 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 6
  %61 = load i32, i32* %flags59, align 4
  %and60 = and i32 %61, 12
  %tobool61 = icmp ne i32 %and60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %if.then.58
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i32 0, i32 3
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %dest63, align 8
  store %struct.basic_block_def* %63, %struct.basic_block_def** %next, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.else.51
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 1
  %65 = load %struct.edge_def*, %struct.edge_def** %succ_next68, align 8
  store %struct.edge_def* %65, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.end.69:                                       ; preds = %if.then.49, %for.cond.43
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %if.end.39
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool71 = icmp ne %struct.basic_block_def* %66, null
  br i1 %tobool71, label %lor.lhs.false, label %if.then.78

lor.lhs.false:                                    ; preds = %if.end.70
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %cmp72 = icmp eq %struct.basic_block_def* %67, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp72, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %aux75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 10
  %69 = load i8*, i8** %aux75, align 8
  %70 = bitcast i8* %69 to %struct.reorder_block_def*
  %visited76 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %70, i32 0, i32 3
  %71 = load i32, i32* %visited76, align 4
  %tobool77 = icmp ne i32 %71, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.74, %lor.lhs.false, %if.end.70
  store %struct.basic_block_def* null, %struct.basic_block_def** %next, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %lor.lhs.false.74
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 5
  %73 = load %struct.edge_def*, %struct.edge_def** %succ80, align 8
  store %struct.edge_def* %73, %struct.edge_def** %e, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.117, %if.end.79
  %74 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool82 = icmp ne %struct.edge_def* %74, null
  br i1 %tobool82, label %for.body.83, label %for.end.119

for.body.83:                                      ; preds = %for.cond.81
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 3
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %dest84, align 8
  %cmp85 = icmp ne %struct.basic_block_def* %76, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.116

land.lhs.true.87:                                 ; preds = %for.body.83
  %77 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest88 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i32 0, i32 3
  %78 = load %struct.basic_block_def*, %struct.basic_block_def** %dest88, align 8
  %aux89 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %78, i32 0, i32 10
  %79 = load i8*, i8** %aux89, align 8
  %80 = bitcast i8* %79 to %struct.reorder_block_def*
  %visited90 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %80, i32 0, i32 3
  %81 = load i32, i32* %visited90, align 4
  %tobool91 = icmp ne i32 %81, 0
  br i1 %tobool91, label %if.end.116, label %land.lhs.true.92

land.lhs.true.92:                                 ; preds = %land.lhs.true.87
  %82 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest93 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %82, i32 0, i32 3
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %dest93, align 8
  %succ94 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %83, i32 0, i32 5
  %84 = load %struct.edge_def*, %struct.edge_def** %succ94, align 8
  %tobool95 = icmp ne %struct.edge_def* %84, null
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.116

land.lhs.true.96:                                 ; preds = %land.lhs.true.92
  %85 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags97 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %85, i32 0, i32 6
  %86 = load i32, i32* %flags97, align 4
  %and98 = and i32 %86, 12
  %tobool99 = icmp ne i32 %and98, 0
  br i1 %tobool99, label %if.end.116, label %if.then.100

if.then.100:                                      ; preds = %land.lhs.true.96
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool101 = icmp ne %struct.basic_block_def* %87, null
  br i1 %tobool101, label %if.then.102, label %if.else.113

if.then.102:                                      ; preds = %if.then.100
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  %call103 = call %struct.basic_block_def* @make_reorder_chain_1(%struct.basic_block_def* %88, %struct.basic_block_def* %89)
  store %struct.basic_block_def* %call103, %struct.basic_block_def** %prev.addr, align 8
  %90 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %90, i32 0, i32 3
  %91 = load %struct.basic_block_def*, %struct.basic_block_def** %dest104, align 8
  %aux105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %91, i32 0, i32 10
  %92 = load i8*, i8** %aux105, align 8
  %93 = bitcast i8* %92 to %struct.reorder_block_def*
  %visited106 = getelementptr inbounds %struct.reorder_block_def, %struct.reorder_block_def* %93, i32 0, i32 3
  %94 = load i32, i32* %visited106, align 4
  %tobool107 = icmp ne i32 %94, 0
  br i1 %tobool107, label %cond.true.108, label %cond.false.109

cond.true.108:                                    ; preds = %if.then.102
  br label %cond.end.111

cond.false.109:                                   ; preds = %if.then.102
  %95 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest110 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %95, i32 0, i32 3
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %dest110, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.108
  %cond112 = phi %struct.basic_block_def* [ null, %cond.true.108 ], [ %96, %cond.false.109 ]
  store %struct.basic_block_def* %cond112, %struct.basic_block_def** %next, align 8
  br label %if.end.115

if.else.113:                                      ; preds = %if.then.100
  %97 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i32 0, i32 3
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %dest114, align 8
  store %struct.basic_block_def* %98, %struct.basic_block_def** %next, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.113, %cond.end.111
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %land.lhs.true.96, %land.lhs.true.92, %land.lhs.true.87, %for.body.83
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116
  %99 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i32 0, i32 1
  %100 = load %struct.edge_def*, %struct.edge_def** %succ_next118, align 8
  store %struct.edge_def* %100, %struct.edge_def** %e, align 8
  br label %for.cond.81

for.end.119:                                      ; preds = %for.cond.81
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  %tobool120 = icmp ne %struct.basic_block_def* %101, null
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %for.end.119
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %next, align 8
  store %struct.basic_block_def* %102, %struct.basic_block_def** %bb.addr, align 8
  br label %restart

if.end.122:                                       ; preds = %for.end.119
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %prev.addr, align 8
  store %struct.basic_block_def* %103, %struct.basic_block_def** %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.then.14
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %retval
  ret %struct.basic_block_def* %104
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
