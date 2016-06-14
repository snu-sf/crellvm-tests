; ModuleID = 'alias.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon.0, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon.0 = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.2 = type { %struct.function* }
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
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.alias_set_entry = type { i64, %struct.splay_tree_s*, i32 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.3, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.3 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.cselib_val_struct = type { i32, %union.anon, %struct.elt_loc_list*, %struct.elt_list* }
%union.anon = type { %struct.rtx_def* }
%struct.elt_loc_list = type { %struct.elt_loc_list*, %struct.rtx_def*, %struct.rtx_def* }
%struct.elt_list = type { %struct.elt_list*, %struct.cselib_val_struct* }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@flag_strict_aliasing = external global i32, align 4
@global_trees = external global [51 x %union.tree_node*], align 16
@tree_code_type = external global [256 x i8], align 16
@lang_hooks = external constant %struct.lang_hooks, align 8
@new_alias_set.last_alias_set = internal global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"alias.c\00", align 1
@__FUNCTION__.record_alias_subset = private unnamed_addr constant [20 x i8] c"record_alias_subset\00", align 1
@alias_sets = internal global %struct.splay_tree_s* null, align 8
@get_varargs_alias_set.set = internal global i64 -1, align 8
@get_frame_alias_set.set = internal global i64 -1, align 8
@reg_base_value_size = internal global i32 0, align 4
@alias_invariant = internal global %struct.rtx_def** null, align 8
@reg_base_value = internal global %struct.rtx_def** null, align 8
@reg_known_value_size = internal global i32 0, align 4
@reg_known_value = common global %struct.rtx_def** null, align 8
@mode_size = external constant [59 x i8], align 16
@current_function_decl = external global %union.tree_node*, align 8
@rtx_class = external constant [153 x i8], align 16
@target_flags = external global i32, align 4
@argument_registers = internal global i64 0, align 8
@reg_known_equiv_p = common global i8* null, align 8
@new_reg_base_value = internal global %struct.rtx_def** null, align 8
@reg_seen = internal global i8* null, align 8
@reload_completed = external global i32, align 4
@flag_unroll_loops = external global i32, align 4
@unique_id = internal global i32 0, align 4
@copying_arguments = internal global i32 0, align 4
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@reg_n_info = external global %struct.varray_head_tag*, align 8
@cfun = external global %struct.function*, align 8
@fixed_regs = external global [53 x i8], align 16
@pic_offset_table_rtx = external global %struct.rtx_def*, align 8
@flag_expensive_optimizations = external global i32, align 4
@mode_unit_size = external constant [59 x i8], align 16
@flag_argument_noalias = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@__FUNCTION__.rtx_equal_for_memref_p = private unnamed_addr constant [23 x i8] c"rtx_equal_for_memref_p\00", align 1
@global_regs = external global [53 x i8], align 16
@__FUNCTION__.record_set = private unnamed_addr constant [11 x i8] c"record_set\00", align 1

; Function Attrs: nounwind uwtable
define i32 @alias_sets_conflict_p(i64 %set1, i64 %set2) #0 {
entry:
  %retval = alloca i32, align 4
  %set1.addr = alloca i64, align 8
  %set2.addr = alloca i64, align 8
  %ase = alloca %struct.alias_set_entry*, align 8
  store i64 %set1, i64* %set1.addr, align 8
  store i64 %set2, i64* %set2.addr, align 8
  %0 = load i64, i64* %set1.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i64, i64* %set2.addr, align 8
  %cmp1 = icmp eq i64 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i64, i64* %set1.addr, align 8
  %3 = load i64, i64* %set2.addr, align 8
  %cmp3 = icmp eq i64 %2, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %4 = load i64, i64* %set1.addr, align 8
  %call = call %struct.alias_set_entry* @get_alias_set_entry(i64 %4)
  store %struct.alias_set_entry* %call, %struct.alias_set_entry** %ase, align 8
  %5 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %cmp4 = icmp ne %struct.alias_set_entry* %5, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %has_zero_child = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %6, i32 0, i32 2
  %7 = load i32, i32* %has_zero_child, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true
  %8 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %children = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %8, i32 0, i32 1
  %9 = load %struct.splay_tree_s*, %struct.splay_tree_s** %children, align 8
  %10 = load i64, i64* %set2.addr, align 8
  %call6 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %9, i64 %10)
  %tobool7 = icmp ne %struct.splay_tree_node_s* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.5, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.5, %if.end
  %11 = load i64, i64* %set2.addr, align 8
  %call10 = call %struct.alias_set_entry* @get_alias_set_entry(i64 %11)
  store %struct.alias_set_entry* %call10, %struct.alias_set_entry** %ase, align 8
  %12 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %cmp11 = icmp ne %struct.alias_set_entry* %12, null
  br i1 %cmp11, label %land.lhs.true.12, label %if.end.20

land.lhs.true.12:                                 ; preds = %if.end.9
  %13 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %has_zero_child13 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %13, i32 0, i32 2
  %14 = load i32, i32* %has_zero_child13, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.19, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.12
  %15 = load %struct.alias_set_entry*, %struct.alias_set_entry** %ase, align 8
  %children16 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %15, i32 0, i32 1
  %16 = load %struct.splay_tree_s*, %struct.splay_tree_s** %children16, align 8
  %17 = load i64, i64* %set1.addr, align 8
  %call17 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %16, i64 %17)
  %tobool18 = icmp ne %struct.splay_tree_node_s* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %lor.lhs.false.15, %land.lhs.true.12
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false.15, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.8, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.alias_set_entry* @get_alias_set_entry(i64 %alias_set) #0 {
entry:
  %alias_set.addr = alloca i64, align 8
  %sn = alloca %struct.splay_tree_node_s*, align 8
  store i64 %alias_set, i64* %alias_set.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** @alias_sets, align 8
  %1 = load i64, i64* %alias_set.addr, align 8
  %call = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %0, i64 %1)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %sn, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %sn, align 8
  %cmp = icmp ne %struct.splay_tree_node_s* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %sn, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i32 0, i32 1
  %4 = load i64, i64* %value, align 8
  %5 = inttoptr i64 %4 to %struct.alias_set_entry*
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.alias_set_entry* [ %5, %cond.true ], [ null, %cond.false ]
  ret %struct.alias_set_entry* %cond
}

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @readonly_fields_p(%union.tree_node* %type) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %union.tree_node*, align 8
  %field = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 20
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp ne i32 %bf.clear4, 21
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common7 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code8 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load9 = load i32, i32* %code8, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp ne i32 %bf.clear10, 22
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true, %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type12 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %4, %union.tree_node** %field, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %union.tree_node*, %union.tree_node** %field, align 8
  %cmp13 = icmp ne %union.tree_node* %5, null
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common14 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %code15, align 8
  %bf.clear17 = and i32 %bf.load16, 255
  %cmp18 = icmp eq i32 %bf.clear17, 37
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.27

land.lhs.true.19:                                 ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common20 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load21 = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load21, 12
  %bf.clear22 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear22, 0
  br i1 %tobool, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.19
  %8 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common23 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %type24, align 8
  %call = call i32 @readonly_fields_p(%union.tree_node* %9)
  %tobool25 = icmp ne i32 %call, 0
  br i1 %tobool25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %lor.lhs.false, %land.lhs.true.19
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %10 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common28 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %11, %union.tree_node** %field, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @objects_must_conflict_p(%union.tree_node* %t1, %union.tree_node* %t2) #0 {
entry:
  %retval = alloca i32, align 4
  %t1.addr = alloca %union.tree_node*, align 8
  %t2.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t1, %union.tree_node** %t1.addr, align 8
  store %union.tree_node* %t2, %union.tree_node** %t2.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp1 = icmp eq %union.tree_node* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp2 = icmp ne %union.tree_node* %2, null
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false

land.lhs.true.3:                                  ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %call = call i32 @readonly_fields_p(%union.tree_node* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3, %if.end
  %4 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp4 = icmp ne %union.tree_node* %4, null
  br i1 %cmp4, label %land.lhs.true.5, label %lor.lhs.false.8

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %5 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %call6 = call i32 @readonly_fields_p(%union.tree_node* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.21, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true.5, %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp9 = icmp ne %union.tree_node* %6, null
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %7 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common = bitcast %union.tree_node* %7 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %tobool11 = icmp ne i32 %bf.clear, 0
  br i1 %tobool11, label %if.then.21, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false.8
  %8 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp13 = icmp ne %union.tree_node* %8, null
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.22

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %9 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common15 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %readonly_flag16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %readonly_flag16, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 12
  %bf.clear19 = and i32 %bf.lshr18, 1
  %tobool20 = icmp ne i32 %bf.clear19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.5, %land.lhs.true.3
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %10 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp23 = icmp eq %union.tree_node* %10, %11
  br i1 %cmp23, label %if.then.41, label %lor.lhs.false.24

lor.lhs.false.24:                                 ; preds = %if.end.22
  %12 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp25 = icmp ne %union.tree_node* %12, null
  br i1 %cmp25, label %land.lhs.true.26, label %if.end.42

land.lhs.true.26:                                 ; preds = %lor.lhs.false.24
  %13 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common27 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load28 = load i32, i32* %volatile_flag, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 11
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.42

land.lhs.true.32:                                 ; preds = %land.lhs.true.26
  %14 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp33 = icmp ne %union.tree_node* %14, null
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.42

land.lhs.true.34:                                 ; preds = %land.lhs.true.32
  %15 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common35 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %volatile_flag36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load37 = load i32, i32* %volatile_flag36, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 11
  %bf.clear39 = and i32 %bf.lshr38, 1
  %tobool40 = icmp ne i32 %bf.clear39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.34, %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.34, %land.lhs.true.32, %land.lhs.true.26, %lor.lhs.false.24
  %16 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %cmp43 = icmp ne %union.tree_node* %16, null
  br i1 %cmp43, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.42
  %17 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common44 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load45 = load i32, i32* %code, align 8
  %bf.clear46 = and i32 %bf.load45, 255
  %cmp47 = icmp eq i32 %bf.clear46, 18
  br i1 %cmp47, label %lor.end, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %land.rhs
  %18 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common49 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %code50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 2
  %bf.load51 = load i32, i32* %code50, align 8
  %bf.clear52 = and i32 %bf.load51, 255
  %cmp53 = icmp eq i32 %bf.clear52, 20
  br i1 %cmp53, label %lor.end, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.48
  %19 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common55 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %code56 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common55, i32 0, i32 2
  %bf.load57 = load i32, i32* %code56, align 8
  %bf.clear58 = and i32 %bf.load57, 255
  %cmp59 = icmp eq i32 %bf.clear58, 21
  br i1 %cmp59, label %lor.end, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.54
  %20 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common61 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 2
  %bf.load63 = load i32, i32* %code62, align 8
  %bf.clear64 = and i32 %bf.load63, 255
  %cmp65 = icmp eq i32 %bf.clear64, 22
  br i1 %cmp65, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.60
  %21 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %common66 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code67 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common66, i32 0, i32 2
  %bf.load68 = load i32, i32* %code67, align 8
  %bf.clear69 = and i32 %bf.load68, 255
  %cmp70 = icmp eq i32 %bf.clear69, 19
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.60, %lor.lhs.false.54, %lor.lhs.false.48, %land.rhs
  %22 = phi i1 [ true, %lor.lhs.false.60 ], [ true, %lor.lhs.false.54 ], [ true, %lor.lhs.false.48 ], [ true, %land.rhs ], [ %cmp70, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %if.end.42
  %23 = phi i1 [ false, %if.end.42 ], [ %22, %lor.end ]
  %land.ext = zext i1 %23 to i32
  %24 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %cmp71 = icmp ne %union.tree_node* %24, null
  br i1 %cmp71, label %land.rhs.72, label %land.end.103

land.rhs.72:                                      ; preds = %land.end
  %25 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common73 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %code74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 2
  %bf.load75 = load i32, i32* %code74, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp eq i32 %bf.clear76, 18
  br i1 %cmp77, label %lor.end.102, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %land.rhs.72
  %26 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common79 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %code80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load81 = load i32, i32* %code80, align 8
  %bf.clear82 = and i32 %bf.load81, 255
  %cmp83 = icmp eq i32 %bf.clear82, 20
  br i1 %cmp83, label %lor.end.102, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.78
  %27 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common85 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %code86 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common85, i32 0, i32 2
  %bf.load87 = load i32, i32* %code86, align 8
  %bf.clear88 = and i32 %bf.load87, 255
  %cmp89 = icmp eq i32 %bf.clear88, 21
  br i1 %cmp89, label %lor.end.102, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.84
  %28 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common91 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %code92 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common91, i32 0, i32 2
  %bf.load93 = load i32, i32* %code92, align 8
  %bf.clear94 = and i32 %bf.load93, 255
  %cmp95 = icmp eq i32 %bf.clear94, 22
  br i1 %cmp95, label %lor.end.102, label %lor.rhs.96

lor.rhs.96:                                       ; preds = %lor.lhs.false.90
  %29 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %common97 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %code98 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common97, i32 0, i32 2
  %bf.load99 = load i32, i32* %code98, align 8
  %bf.clear100 = and i32 %bf.load99, 255
  %cmp101 = icmp eq i32 %bf.clear100, 19
  br label %lor.end.102

lor.end.102:                                      ; preds = %lor.rhs.96, %lor.lhs.false.90, %lor.lhs.false.84, %lor.lhs.false.78, %land.rhs.72
  %30 = phi i1 [ true, %lor.lhs.false.90 ], [ true, %lor.lhs.false.84 ], [ true, %lor.lhs.false.78 ], [ true, %land.rhs.72 ], [ %cmp101, %lor.rhs.96 ]
  br label %land.end.103

land.end.103:                                     ; preds = %lor.end.102, %land.end
  %31 = phi i1 [ false, %land.end ], [ %30, %lor.end.102 ]
  %land.ext104 = zext i1 %31 to i32
  %cmp105 = icmp ne i32 %land.ext, %land.ext104
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %land.end.103
  store i32 0, i32* %retval
  br label %return

if.end.107:                                       ; preds = %land.end.103
  %32 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %tobool108 = icmp ne %union.tree_node* %32, null
  br i1 %tobool108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.107
  %33 = load %union.tree_node*, %union.tree_node** %t1.addr, align 8
  %call109 = call i64 @get_alias_set(%union.tree_node* %33)
  br label %cond.end

cond.false:                                       ; preds = %if.end.107
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call109, %cond.true ], [ 0, %cond.false ]
  %34 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %tobool110 = icmp ne %union.tree_node* %34, null
  br i1 %tobool110, label %cond.true.111, label %cond.false.113

cond.true.111:                                    ; preds = %cond.end
  %35 = load %union.tree_node*, %union.tree_node** %t2.addr, align 8
  %call112 = call i64 @get_alias_set(%union.tree_node* %35)
  br label %cond.end.114

cond.false.113:                                   ; preds = %cond.end
  br label %cond.end.114

cond.end.114:                                     ; preds = %cond.false.113, %cond.true.111
  %cond115 = phi i64 [ %call112, %cond.true.111 ], [ 0, %cond.false.113 ]
  %call116 = call i32 @alias_sets_conflict_p(i64 %cond, i64 %cond115)
  store i32 %call116, i32* %retval
  br label %return

return:                                           ; preds = %cond.end.114, %if.then.106, %if.then.41, %if.then.21, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define i64 @get_alias_set(%union.tree_node* %t) #0 {
entry:
  %retval = alloca i64, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %set = alloca i64, align 8
  %inner = alloca %union.tree_node*, align 8
  %placeholder_ptr = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  %pointed_to_alias_set = alloca i64, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load i32, i32* @flag_strict_aliasing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp = icmp eq %union.tree_node* %1, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp2 = icmp eq i32 %conv, 116
  br i1 %cmp2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.1
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %cmp5 = icmp eq %union.tree_node* %6, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common8 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type9, align 8
  %9 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp10 = icmp eq %union.tree_node* %8, %9
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %land.lhs.true, %lor.lhs.false, %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7, %lor.lhs.false.1
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common12 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %idxprom16 = sext i32 %bf.clear15 to i64
  %arrayidx17 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom16
  %11 = load i8, i8* %arrayidx17, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp eq i32 %conv18, 116
  br i1 %cmp19, label %if.end.340, label %if.then.21

if.then.21:                                       ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %12, %union.tree_node** %inner, align 8
  store %union.tree_node* null, %union.tree_node** %placeholder_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.21
  %13 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common22 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %code23, align 8
  %bf.clear25 = and i32 %bf.load24, 255
  %cmp26 = icmp eq i32 %bf.clear25, 115
  br i1 %cmp26, label %land.lhs.true.42, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %while.cond
  %14 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common29 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 114
  br i1 %cmp33, label %land.lhs.true.42, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.28
  %15 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common36 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load38 = load i32, i32* %code37, align 8
  %bf.clear39 = and i32 %bf.load38, 255
  %cmp40 = icmp eq i32 %bf.clear39, 116
  br i1 %cmp40, label %land.lhs.true.42, label %land.end

land.lhs.true.42:                                 ; preds = %lor.lhs.false.35, %lor.lhs.false.28, %while.cond
  %16 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx43 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx43, align 8
  %18 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp44 = icmp ne %union.tree_node* %17, %18
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.42
  %19 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common46 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %type47, align 8
  %type48 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i32 0, i32 6
  %bf.load49 = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load49, 9
  %bf.clear50 = and i32 %bf.lshr, 127
  %21 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp51 = bitcast %union.tree_node* %21 to %struct.tree_exp*
  %operands52 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp51, i32 0, i32 2
  %arrayidx53 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands52, i32 0, i64 0
  %22 = load %union.tree_node*, %union.tree_node** %arrayidx53, align 8
  %common54 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %type55 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common54, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %type55, align 8
  %type56 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %mode57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type56, i32 0, i32 6
  %bf.load58 = load i32, i32* %mode57, align 4
  %bf.lshr59 = lshr i32 %bf.load58, 9
  %bf.clear60 = and i32 %bf.lshr59, 127
  %cmp61 = icmp eq i32 %bf.clear50, %bf.clear60
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.42, %lor.lhs.false.35
  %24 = phi i1 [ false, %land.lhs.true.42 ], [ false, %lor.lhs.false.35 ], [ %cmp61, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %25 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp63 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands64 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp63, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands64, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx65, align 8
  store %union.tree_node* %26, %union.tree_node** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i64 (%union.tree_node*)*, i64 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 8), align 8
  %28 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call = call i64 %27(%union.tree_node* %28)
  store i64 %call, i64* %set, align 8
  %29 = load i64, i64* %set, align 8
  %cmp66 = icmp ne i64 %29, -1
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %while.end
  %30 = load i64, i64* %set, align 8
  store i64 %30, i64* %retval
  br label %return

if.end.69:                                        ; preds = %while.end
  br label %while.cond.70

while.cond.70:                                    ; preds = %while.end.144, %if.end.69
  %31 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common71 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code72 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common71, i32 0, i32 2
  %bf.load73 = load i32, i32* %code72, align 8
  %bf.clear74 = and i32 %bf.load73, 255
  %cmp75 = icmp eq i32 %bf.clear74, 57
  br i1 %cmp75, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.70
  %32 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %call77 = call i32 @handled_component_p(%union.tree_node* %32)
  %tobool78 = icmp ne i32 %call77, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.70
  %33 = phi i1 [ true, %while.cond.70 ], [ %tobool78, %lor.rhs ]
  br i1 %33, label %while.body.79, label %while.end.145

while.body.79:                                    ; preds = %lor.end
  %34 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common80 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %code81 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common80, i32 0, i32 2
  %bf.load82 = load i32, i32* %code81, align 8
  %bf.clear83 = and i32 %bf.load82, 255
  %cmp84 = icmp eq i32 %bf.clear83, 57
  br i1 %cmp84, label %if.then.86, label %if.else

if.then.86:                                       ; preds = %while.body.79
  %35 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %call87 = call %union.tree_node* @find_placeholder(%union.tree_node* %35, %union.tree_node** %placeholder_ptr)
  store %union.tree_node* %call87, %union.tree_node** %inner, align 8
  br label %if.end.91

if.else:                                          ; preds = %while.body.79
  %36 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp88 = bitcast %union.tree_node* %36 to %struct.tree_exp*
  %operands89 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp88, i32 0, i32 2
  %arrayidx90 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands89, i32 0, i64 0
  %37 = load %union.tree_node*, %union.tree_node** %arrayidx90, align 8
  store %union.tree_node* %37, %union.tree_node** %inner, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else, %if.then.86
  br label %while.cond.92

while.cond.92:                                    ; preds = %while.body.140, %if.end.91
  %38 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common93 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code94 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common93, i32 0, i32 2
  %bf.load95 = load i32, i32* %code94, align 8
  %bf.clear96 = and i32 %bf.load95, 255
  %cmp97 = icmp eq i32 %bf.clear96, 115
  br i1 %cmp97, label %land.lhs.true.113, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %while.cond.92
  %39 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common100 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %code101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 2
  %bf.load102 = load i32, i32* %code101, align 8
  %bf.clear103 = and i32 %bf.load102, 255
  %cmp104 = icmp eq i32 %bf.clear103, 114
  br i1 %cmp104, label %land.lhs.true.113, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.99
  %40 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common107 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 2
  %bf.load109 = load i32, i32* %code108, align 8
  %bf.clear110 = and i32 %bf.load109, 255
  %cmp111 = icmp eq i32 %bf.clear110, 116
  br i1 %cmp111, label %land.lhs.true.113, label %land.end.139

land.lhs.true.113:                                ; preds = %lor.lhs.false.106, %lor.lhs.false.99, %while.cond.92
  %41 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp114 = bitcast %union.tree_node* %41 to %struct.tree_exp*
  %operands115 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp114, i32 0, i32 2
  %arrayidx116 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands115, i32 0, i64 0
  %42 = load %union.tree_node*, %union.tree_node** %arrayidx116, align 8
  %43 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp117 = icmp ne %union.tree_node* %42, %43
  br i1 %cmp117, label %land.rhs.119, label %land.end.139

land.rhs.119:                                     ; preds = %land.lhs.true.113
  %44 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common120 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %type121 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common120, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %type121, align 8
  %type122 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %mode123 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type122, i32 0, i32 6
  %bf.load124 = load i32, i32* %mode123, align 4
  %bf.lshr125 = lshr i32 %bf.load124, 9
  %bf.clear126 = and i32 %bf.lshr125, 127
  %46 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp127 = bitcast %union.tree_node* %46 to %struct.tree_exp*
  %operands128 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp127, i32 0, i32 2
  %arrayidx129 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands128, i32 0, i64 0
  %47 = load %union.tree_node*, %union.tree_node** %arrayidx129, align 8
  %common130 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %type131 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 1
  %48 = load %union.tree_node*, %union.tree_node** %type131, align 8
  %type132 = bitcast %union.tree_node* %48 to %struct.tree_type*
  %mode133 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type132, i32 0, i32 6
  %bf.load134 = load i32, i32* %mode133, align 4
  %bf.lshr135 = lshr i32 %bf.load134, 9
  %bf.clear136 = and i32 %bf.lshr135, 127
  %cmp137 = icmp eq i32 %bf.clear126, %bf.clear136
  br label %land.end.139

land.end.139:                                     ; preds = %land.rhs.119, %land.lhs.true.113, %lor.lhs.false.106
  %49 = phi i1 [ false, %land.lhs.true.113 ], [ false, %lor.lhs.false.106 ], [ %cmp137, %land.rhs.119 ]
  br i1 %49, label %while.body.140, label %while.end.144

while.body.140:                                   ; preds = %land.end.139
  %50 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp141 = bitcast %union.tree_node* %50 to %struct.tree_exp*
  %operands142 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp141, i32 0, i32 2
  %arrayidx143 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands142, i32 0, i64 0
  %51 = load %union.tree_node*, %union.tree_node** %arrayidx143, align 8
  store %union.tree_node* %51, %union.tree_node** %inner, align 8
  br label %while.cond.92

while.end.144:                                    ; preds = %land.end.139
  br label %while.cond.70

while.end.145:                                    ; preds = %lor.end
  %52 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common146 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %code147 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common146, i32 0, i32 2
  %bf.load148 = load i32, i32* %code147, align 8
  %bf.clear149 = and i32 %bf.load148, 255
  %cmp150 = icmp eq i32 %bf.clear149, 41
  br i1 %cmp150, label %if.then.152, label %if.end.198

if.then.152:                                      ; preds = %while.end.145
  %53 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp153 = bitcast %union.tree_node* %53 to %struct.tree_exp*
  %operands154 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp153, i32 0, i32 2
  %arrayidx155 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands154, i32 0, i64 0
  %54 = load %union.tree_node*, %union.tree_node** %arrayidx155, align 8
  %call156 = call %union.tree_node* @find_base_decl(%union.tree_node* %54)
  store %union.tree_node* %call156, %union.tree_node** %decl, align 8
  %55 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool157 = icmp ne %union.tree_node* %55, null
  br i1 %tobool157, label %land.lhs.true.158, label %if.else.186

land.lhs.true.158:                                ; preds = %if.then.152
  %56 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl159 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %pointer_alias_set = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl159, i32 0, i32 23
  %57 = load i64, i64* %pointer_alias_set, align 8
  %cmp160 = icmp ne i64 %57, -1
  br i1 %cmp160, label %if.then.162, label %if.else.186

if.then.162:                                      ; preds = %land.lhs.true.158
  %58 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl163 = bitcast %union.tree_node* %58 to %struct.tree_decl*
  %pointer_alias_set164 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl163, i32 0, i32 23
  %59 = load i64, i64* %pointer_alias_set164, align 8
  %cmp165 = icmp eq i64 %59, -2
  br i1 %cmp165, label %if.then.167, label %if.end.183

if.then.167:                                      ; preds = %if.then.162
  %60 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common168 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %type169 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common168, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %type169, align 8
  %common170 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %type171 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common170, i32 0, i32 1
  %62 = load %union.tree_node*, %union.tree_node** %type171, align 8
  %call172 = call i64 @get_alias_set(%union.tree_node* %62)
  store i64 %call172, i64* %pointed_to_alias_set, align 8
  %63 = load i64, i64* %pointed_to_alias_set, align 8
  %cmp173 = icmp eq i64 %63, 0
  br i1 %cmp173, label %if.then.175, label %if.else.176

if.then.175:                                      ; preds = %if.then.167
  br label %if.end.182

if.else.176:                                      ; preds = %if.then.167
  %call177 = call i64 @new_alias_set()
  %64 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl178 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %pointer_alias_set179 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl178, i32 0, i32 23
  store i64 %call177, i64* %pointer_alias_set179, align 8
  %65 = load i64, i64* %pointed_to_alias_set, align 8
  %66 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl180 = bitcast %union.tree_node* %66 to %struct.tree_decl*
  %pointer_alias_set181 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl180, i32 0, i32 23
  %67 = load i64, i64* %pointer_alias_set181, align 8
  call void @record_alias_subset(i64 %65, i64 %67)
  br label %if.end.182

if.end.182:                                       ; preds = %if.else.176, %if.then.175
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.162
  %68 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl184 = bitcast %union.tree_node* %68 to %struct.tree_decl*
  %pointer_alias_set185 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl184, i32 0, i32 23
  %69 = load i64, i64* %pointer_alias_set185, align 8
  store i64 %69, i64* %retval
  br label %return

if.else.186:                                      ; preds = %land.lhs.true.158, %if.then.152
  %70 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common187 = bitcast %union.tree_node* %70 to %struct.tree_common*
  %type188 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common187, i32 0, i32 1
  %71 = load %union.tree_node*, %union.tree_node** %type188, align 8
  %common189 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code190 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common189, i32 0, i32 2
  %bf.load191 = load i32, i32* %code190, align 8
  %bf.clear192 = and i32 %bf.load191, 255
  %cmp193 = icmp eq i32 %bf.clear192, 5
  br i1 %cmp193, label %if.then.195, label %if.end.196

if.then.195:                                      ; preds = %if.else.186
  store i64 0, i64* %retval
  br label %return

if.end.196:                                       ; preds = %if.else.186
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %while.end.145
  store %union.tree_node* null, %union.tree_node** %placeholder_ptr, align 8
  br label %while.cond.199

while.cond.199:                                   ; preds = %while.end.280, %if.end.198
  %72 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common200 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %code201 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common200, i32 0, i32 2
  %bf.load202 = load i32, i32* %code201, align 8
  %bf.clear203 = and i32 %bf.load202, 255
  %cmp204 = icmp eq i32 %bf.clear203, 57
  br i1 %cmp204, label %lor.end.213, label %lor.rhs.206

lor.rhs.206:                                      ; preds = %while.cond.199
  %73 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call207 = call i32 @handled_component_p(%union.tree_node* %73)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %land.rhs.209, label %land.end.212

land.rhs.209:                                     ; preds = %lor.rhs.206
  %74 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call210 = call i32 @can_address_p(%union.tree_node* %74)
  %tobool211 = icmp ne i32 %call210, 0
  %lnot = xor i1 %tobool211, true
  br label %land.end.212

land.end.212:                                     ; preds = %land.rhs.209, %lor.rhs.206
  %75 = phi i1 [ false, %lor.rhs.206 ], [ %lnot, %land.rhs.209 ]
  br label %lor.end.213

lor.end.213:                                      ; preds = %land.end.212, %while.cond.199
  %76 = phi i1 [ true, %while.cond.199 ], [ %75, %land.end.212 ]
  br i1 %76, label %while.body.214, label %while.end.281

while.body.214:                                   ; preds = %lor.end.213
  %77 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common215 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %code216 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common215, i32 0, i32 2
  %bf.load217 = load i32, i32* %code216, align 8
  %bf.clear218 = and i32 %bf.load217, 255
  %cmp219 = icmp eq i32 %bf.clear218, 57
  br i1 %cmp219, label %if.then.221, label %if.else.223

if.then.221:                                      ; preds = %while.body.214
  %78 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call222 = call %union.tree_node* @find_placeholder(%union.tree_node* %78, %union.tree_node** %placeholder_ptr)
  store %union.tree_node* %call222, %union.tree_node** %t.addr, align 8
  br label %if.end.227

if.else.223:                                      ; preds = %while.body.214
  %79 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp224 = bitcast %union.tree_node* %79 to %struct.tree_exp*
  %operands225 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp224, i32 0, i32 2
  %arrayidx226 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands225, i32 0, i64 0
  %80 = load %union.tree_node*, %union.tree_node** %arrayidx226, align 8
  store %union.tree_node* %80, %union.tree_node** %t.addr, align 8
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.223, %if.then.221
  br label %while.cond.228

while.cond.228:                                   ; preds = %while.body.276, %if.end.227
  %81 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common229 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %code230 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common229, i32 0, i32 2
  %bf.load231 = load i32, i32* %code230, align 8
  %bf.clear232 = and i32 %bf.load231, 255
  %cmp233 = icmp eq i32 %bf.clear232, 115
  br i1 %cmp233, label %land.lhs.true.249, label %lor.lhs.false.235

lor.lhs.false.235:                                ; preds = %while.cond.228
  %82 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common236 = bitcast %union.tree_node* %82 to %struct.tree_common*
  %code237 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common236, i32 0, i32 2
  %bf.load238 = load i32, i32* %code237, align 8
  %bf.clear239 = and i32 %bf.load238, 255
  %cmp240 = icmp eq i32 %bf.clear239, 114
  br i1 %cmp240, label %land.lhs.true.249, label %lor.lhs.false.242

lor.lhs.false.242:                                ; preds = %lor.lhs.false.235
  %83 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common243 = bitcast %union.tree_node* %83 to %struct.tree_common*
  %code244 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common243, i32 0, i32 2
  %bf.load245 = load i32, i32* %code244, align 8
  %bf.clear246 = and i32 %bf.load245, 255
  %cmp247 = icmp eq i32 %bf.clear246, 116
  br i1 %cmp247, label %land.lhs.true.249, label %land.end.275

land.lhs.true.249:                                ; preds = %lor.lhs.false.242, %lor.lhs.false.235, %while.cond.228
  %84 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp250 = bitcast %union.tree_node* %84 to %struct.tree_exp*
  %operands251 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp250, i32 0, i32 2
  %arrayidx252 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands251, i32 0, i64 0
  %85 = load %union.tree_node*, %union.tree_node** %arrayidx252, align 8
  %86 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp253 = icmp ne %union.tree_node* %85, %86
  br i1 %cmp253, label %land.rhs.255, label %land.end.275

land.rhs.255:                                     ; preds = %land.lhs.true.249
  %87 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common256 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %type257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common256, i32 0, i32 1
  %88 = load %union.tree_node*, %union.tree_node** %type257, align 8
  %type258 = bitcast %union.tree_node* %88 to %struct.tree_type*
  %mode259 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type258, i32 0, i32 6
  %bf.load260 = load i32, i32* %mode259, align 4
  %bf.lshr261 = lshr i32 %bf.load260, 9
  %bf.clear262 = and i32 %bf.lshr261, 127
  %89 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp263 = bitcast %union.tree_node* %89 to %struct.tree_exp*
  %operands264 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp263, i32 0, i32 2
  %arrayidx265 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands264, i32 0, i64 0
  %90 = load %union.tree_node*, %union.tree_node** %arrayidx265, align 8
  %common266 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %type267 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common266, i32 0, i32 1
  %91 = load %union.tree_node*, %union.tree_node** %type267, align 8
  %type268 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %mode269 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type268, i32 0, i32 6
  %bf.load270 = load i32, i32* %mode269, align 4
  %bf.lshr271 = lshr i32 %bf.load270, 9
  %bf.clear272 = and i32 %bf.lshr271, 127
  %cmp273 = icmp eq i32 %bf.clear262, %bf.clear272
  br label %land.end.275

land.end.275:                                     ; preds = %land.rhs.255, %land.lhs.true.249, %lor.lhs.false.242
  %92 = phi i1 [ false, %land.lhs.true.249 ], [ false, %lor.lhs.false.242 ], [ %cmp273, %land.rhs.255 ]
  br i1 %92, label %while.body.276, label %while.end.280

while.body.276:                                   ; preds = %land.end.275
  %93 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp277 = bitcast %union.tree_node* %93 to %struct.tree_exp*
  %operands278 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp277, i32 0, i32 2
  %arrayidx279 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands278, i32 0, i64 0
  %94 = load %union.tree_node*, %union.tree_node** %arrayidx279, align 8
  store %union.tree_node* %94, %union.tree_node** %t.addr, align 8
  br label %while.cond.228

while.end.280:                                    ; preds = %land.end.275
  br label %while.cond.199

while.end.281:                                    ; preds = %lor.end.213
  %95 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common282 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %code283 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common282, i32 0, i32 2
  %bf.load284 = load i32, i32* %code283, align 8
  %bf.clear285 = and i32 %bf.load284, 255
  %cmp286 = icmp eq i32 %bf.clear285, 34
  br i1 %cmp286, label %land.lhs.true.288, label %if.end.337

land.lhs.true.288:                                ; preds = %while.end.281
  %96 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl289 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl289, i32 0, i32 17
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp290 = icmp ne %struct.rtx_def* %97, null
  br i1 %cmp290, label %land.lhs.true.292, label %if.end.337

land.lhs.true.292:                                ; preds = %land.lhs.true.288
  %98 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl293 = bitcast %union.tree_node* %98 to %struct.tree_decl*
  %rtl294 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl293, i32 0, i32 17
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtl294, align 8
  %tobool295 = icmp ne %struct.rtx_def* %99, null
  br i1 %tobool295, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.292
  %100 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl296 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %rtl297 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl296, i32 0, i32 17
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtl297, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.292
  %102 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %102, i8* null)
  %103 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl298 = bitcast %union.tree_node* %103 to %struct.tree_decl*
  %rtl299 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl298, i32 0, i32 17
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtl299, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %101, %cond.true ], [ %104, %cond.false ]
  %105 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load300 = load i32, i32* %105, align 8
  %bf.clear301 = and i32 %bf.load300, 65535
  %cmp302 = icmp eq i32 %bf.clear301, 66
  br i1 %cmp302, label %if.then.304, label %if.end.337

if.then.304:                                      ; preds = %cond.end
  %106 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl305 = bitcast %union.tree_node* %106 to %struct.tree_decl*
  %rtl306 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl305, i32 0, i32 17
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtl306, align 8
  %tobool307 = icmp ne %struct.rtx_def* %107, null
  br i1 %tobool307, label %cond.true.308, label %cond.false.311

cond.true.308:                                    ; preds = %if.then.304
  %108 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl309 = bitcast %union.tree_node* %108 to %struct.tree_decl*
  %rtl310 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl309, i32 0, i32 17
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtl310, align 8
  br label %cond.end.314

cond.false.311:                                   ; preds = %if.then.304
  %110 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %110, i8* null)
  %111 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl312 = bitcast %union.tree_node* %111 to %struct.tree_decl*
  %rtl313 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl312, i32 0, i32 17
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtl313, align 8
  br label %cond.end.314

cond.end.314:                                     ; preds = %cond.false.311, %cond.true.308
  %cond315 = phi %struct.rtx_def* [ %109, %cond.true.308 ], [ %112, %cond.false.311 ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond315, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx316 to %struct.mem_attrs**
  %113 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp317 = icmp eq %struct.mem_attrs* %113, null
  br i1 %cmp317, label %cond.true.319, label %cond.false.320

cond.true.319:                                    ; preds = %cond.end.314
  br label %cond.end.335

cond.false.320:                                   ; preds = %cond.end.314
  %114 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl321 = bitcast %union.tree_node* %114 to %struct.tree_decl*
  %rtl322 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl321, i32 0, i32 17
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtl322, align 8
  %tobool323 = icmp ne %struct.rtx_def* %115, null
  br i1 %tobool323, label %cond.true.324, label %cond.false.327

cond.true.324:                                    ; preds = %cond.false.320
  %116 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl325 = bitcast %union.tree_node* %116 to %struct.tree_decl*
  %rtl326 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl325, i32 0, i32 17
  %117 = load %struct.rtx_def*, %struct.rtx_def** %rtl326, align 8
  br label %cond.end.330

cond.false.327:                                   ; preds = %cond.false.320
  %118 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %118, i8* null)
  %119 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl328 = bitcast %union.tree_node* %119 to %struct.tree_decl*
  %rtl329 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl328, i32 0, i32 17
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtl329, align 8
  br label %cond.end.330

cond.end.330:                                     ; preds = %cond.false.327, %cond.true.324
  %cond331 = phi %struct.rtx_def* [ %117, %cond.true.324 ], [ %120, %cond.false.327 ]
  %fld332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond331, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld332, i32 0, i64 1
  %rtmem334 = bitcast %union.rtunion_def* %arrayidx333 to %struct.mem_attrs**
  %121 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem334, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %121, i32 0, i32 0
  %122 = load i64, i64* %alias, align 8
  br label %cond.end.335

cond.end.335:                                     ; preds = %cond.end.330, %cond.true.319
  %cond336 = phi i64 [ 0, %cond.true.319 ], [ %122, %cond.end.330 ]
  store i64 %cond336, i64* %retval
  br label %return

if.end.337:                                       ; preds = %cond.end, %land.lhs.true.288, %while.end.281
  %123 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common338 = bitcast %union.tree_node* %123 to %struct.tree_common*
  %type339 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common338, i32 0, i32 1
  %124 = load %union.tree_node*, %union.tree_node** %type339, align 8
  store %union.tree_node* %124, %union.tree_node** %t.addr, align 8
  br label %if.end.340

if.end.340:                                       ; preds = %if.end.337, %if.end
  %125 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type341 = bitcast %union.tree_node* %125 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type341, i32 0, i32 15
  %126 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  store %union.tree_node* %126, %union.tree_node** %t.addr, align 8
  %127 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type342 = bitcast %union.tree_node* %127 to %struct.tree_type*
  %alias_set = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type342, i32 0, i32 18
  %128 = load i64, i64* %alias_set, align 8
  %cmp343 = icmp ne i64 %128, -1
  br i1 %cmp343, label %if.then.345, label %if.end.348

if.then.345:                                      ; preds = %if.end.340
  %129 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type346 = bitcast %union.tree_node* %129 to %struct.tree_type*
  %alias_set347 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type346, i32 0, i32 18
  %130 = load i64, i64* %alias_set347, align 8
  store i64 %130, i64* %retval
  br label %return

if.end.348:                                       ; preds = %if.end.340
  %131 = load i64 (%union.tree_node*)*, i64 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 8), align 8
  %132 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call349 = call i64 %131(%union.tree_node* %132)
  store i64 %call349, i64* %set, align 8
  %133 = load i64, i64* %set, align 8
  %cmp350 = icmp ne i64 %133, -1
  br i1 %cmp350, label %if.then.352, label %if.else.353

if.then.352:                                      ; preds = %if.end.348
  %134 = load i64, i64* %set, align 8
  store i64 %134, i64* %retval
  br label %return

if.else.353:                                      ; preds = %if.end.348
  %135 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common354 = bitcast %union.tree_node* %135 to %struct.tree_common*
  %code355 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common354, i32 0, i32 2
  %bf.load356 = load i32, i32* %code355, align 8
  %bf.clear357 = and i32 %bf.load356, 255
  %cmp358 = icmp eq i32 %bf.clear357, 23
  br i1 %cmp358, label %if.then.360, label %if.else.361

if.then.360:                                      ; preds = %if.else.353
  store i64 0, i64* %set, align 8
  br label %if.end.375

if.else.361:                                      ; preds = %if.else.353
  %136 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common362 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code363 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common362, i32 0, i32 2
  %bf.load364 = load i32, i32* %code363, align 8
  %bf.clear365 = and i32 %bf.load364, 255
  %cmp366 = icmp eq i32 %bf.clear365, 9
  br i1 %cmp366, label %if.then.368, label %if.else.372

if.then.368:                                      ; preds = %if.else.361
  %137 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common369 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %type370 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common369, i32 0, i32 1
  %138 = load %union.tree_node*, %union.tree_node** %type370, align 8
  %call371 = call i64 @get_alias_set(%union.tree_node* %138)
  store i64 %call371, i64* %set, align 8
  br label %if.end.374

if.else.372:                                      ; preds = %if.else.361
  %call373 = call i64 @new_alias_set()
  store i64 %call373, i64* %set, align 8
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.372, %if.then.368
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %if.then.360
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.375
  %139 = load i64, i64* %set, align 8
  %140 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type377 = bitcast %union.tree_node* %140 to %struct.tree_type*
  %alias_set378 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type377, i32 0, i32 18
  store i64 %139, i64* %alias_set378, align 8
  %141 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common379 = bitcast %union.tree_node* %141 to %struct.tree_common*
  %code380 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common379, i32 0, i32 2
  %bf.load381 = load i32, i32* %code380, align 8
  %bf.clear382 = and i32 %bf.load381, 255
  %cmp383 = icmp eq i32 %bf.clear382, 18
  br i1 %cmp383, label %if.then.420, label %lor.lhs.false.385

lor.lhs.false.385:                                ; preds = %if.end.376
  %142 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common386 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %code387 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common386, i32 0, i32 2
  %bf.load388 = load i32, i32* %code387, align 8
  %bf.clear389 = and i32 %bf.load388, 255
  %cmp390 = icmp eq i32 %bf.clear389, 20
  br i1 %cmp390, label %if.then.420, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %lor.lhs.false.385
  %143 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common393 = bitcast %union.tree_node* %143 to %struct.tree_common*
  %code394 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common393, i32 0, i32 2
  %bf.load395 = load i32, i32* %code394, align 8
  %bf.clear396 = and i32 %bf.load395, 255
  %cmp397 = icmp eq i32 %bf.clear396, 21
  br i1 %cmp397, label %if.then.420, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %lor.lhs.false.392
  %144 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common400 = bitcast %union.tree_node* %144 to %struct.tree_common*
  %code401 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common400, i32 0, i32 2
  %bf.load402 = load i32, i32* %code401, align 8
  %bf.clear403 = and i32 %bf.load402, 255
  %cmp404 = icmp eq i32 %bf.clear403, 22
  br i1 %cmp404, label %if.then.420, label %lor.lhs.false.406

lor.lhs.false.406:                                ; preds = %lor.lhs.false.399
  %145 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common407 = bitcast %union.tree_node* %145 to %struct.tree_common*
  %code408 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common407, i32 0, i32 2
  %bf.load409 = load i32, i32* %code408, align 8
  %bf.clear410 = and i32 %bf.load409, 255
  %cmp411 = icmp eq i32 %bf.clear410, 19
  br i1 %cmp411, label %if.then.420, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %lor.lhs.false.406
  %146 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common414 = bitcast %union.tree_node* %146 to %struct.tree_common*
  %code415 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common414, i32 0, i32 2
  %bf.load416 = load i32, i32* %code415, align 8
  %bf.clear417 = and i32 %bf.load416, 255
  %cmp418 = icmp eq i32 %bf.clear417, 8
  br i1 %cmp418, label %if.then.420, label %if.end.421

if.then.420:                                      ; preds = %lor.lhs.false.413, %lor.lhs.false.406, %lor.lhs.false.399, %lor.lhs.false.392, %lor.lhs.false.385, %if.end.376
  %147 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @record_component_aliases(%union.tree_node* %147)
  br label %if.end.421

if.end.421:                                       ; preds = %if.then.420, %lor.lhs.false.413
  %148 = load i64, i64* %set, align 8
  store i64 %148, i64* %retval
  br label %return

return:                                           ; preds = %if.end.421, %if.then.352, %if.then.345, %cond.end.335, %if.then.195, %if.end.183, %if.then.68, %if.then
  %149 = load i64, i64* %retval
  ret i64 %149
}

; Function Attrs: nounwind uwtable
define i32 @can_address_p(%union.tree_node* %t) #0 {
entry:
  %retval = alloca i32, align 4
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call = call i32 @handled_component_p(%union.tree_node* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 40
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.2:                                        ; preds = %if.else
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common3 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 39
  br i1 %cmp7, label %land.lhs.true, label %if.else.25

land.lhs.true:                                    ; preds = %if.else.2
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %decl = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %non_addressable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %5 = bitcast i48* %non_addressable to i64*
  %bf.load8 = load i64, i64* %5, align 8
  %bf.lshr = lshr i64 %bf.load8, 34
  %bf.clear9 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear9 to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.else.25, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp12 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  %common15 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call16 = call i64 @get_alias_set(%union.tree_node* %8)
  %cmp17 = icmp ne i64 %call16, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.25

land.lhs.true.18:                                 ; preds = %land.lhs.true.11
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp19 = bitcast %union.tree_node* %9 to %struct.tree_exp*
  %operands20 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp19, i32 0, i32 2
  %arrayidx21 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands20, i32 0, i64 0
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx21, align 8
  %call22 = call i32 @can_address_p(%union.tree_node* %10)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.else.25:                                       ; preds = %land.lhs.true.18, %land.lhs.true.11, %land.lhs.true, %if.else.2
  %11 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common26 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code27 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load28 = load i32, i32* %code27, align 8
  %bf.clear29 = and i32 %bf.load28, 255
  %cmp30 = icmp eq i32 %bf.clear29, 43
  br i1 %cmp30, label %land.lhs.true.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.25
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common31 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 44
  br i1 %cmp35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %lor.lhs.false, %if.else.25
  %13 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp37 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands38 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp37, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands38, i32 0, i64 0
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx39, align 8
  %common40 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type41 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common40, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type41, align 8
  %type42 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type42, i32 0, i32 6
  %bf.load43 = load i32, i32* %transparent_union_flag, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 19
  %bf.clear45 = and i32 %bf.lshr44, 1
  %tobool46 = icmp ne i32 %bf.clear45, 0
  br i1 %tobool46, label %if.end, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %land.lhs.true.36
  %16 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp48 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %common51 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type52 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common51, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %type52, align 8
  %call53 = call i64 @get_alias_set(%union.tree_node* %18)
  %cmp54 = icmp ne i64 %call53, 0
  br i1 %cmp54, label %land.lhs.true.55, label %if.end

land.lhs.true.55:                                 ; preds = %land.lhs.true.47
  %19 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp56 = bitcast %union.tree_node* %19 to %struct.tree_exp*
  %operands57 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp56, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands57, i32 0, i64 0
  %20 = load %union.tree_node*, %union.tree_node** %arrayidx58, align 8
  %call59 = call i32 @can_address_p(%union.tree_node* %20)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end

if.then.61:                                       ; preds = %land.lhs.true.55
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.55, %land.lhs.true.47, %land.lhs.true.36, %lor.lhs.false
  br label %if.end.62

if.end.62:                                        ; preds = %if.end
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.61, %if.then.24, %if.then.1, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @handled_component_p(%union.tree_node*) #1

declare %union.tree_node* @find_placeholder(%union.tree_node*, %union.tree_node**) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @find_base_decl(%union.tree_node* %t) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %d0 = alloca %union.tree_node*, align 8
  %d1 = alloca %union.tree_node*, align 8
  %d2 = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp1 = icmp eq %union.tree_node* %1, %2
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp4 = icmp eq i32 %bf.clear, 13
  br i1 %cmp4, label %if.end, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false.2
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type7, align 8
  %common8 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 15
  br i1 %cmp12, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5, %lor.lhs.false.2
  %7 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common13 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load15 = load i32, i32* %code14, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %idxprom = sext i32 %bf.clear16 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %8 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %8 to i32
  %cmp17 = icmp eq i32 %conv, 100
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %9, %union.tree_node** %retval
  br label %return

if.end.20:                                        ; preds = %if.end
  %10 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common21 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %idxprom25 = sext i32 %bf.clear24 to i64
  %arrayidx26 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom25
  %11 = load i8, i8* %arrayidx26, align 1
  %conv27 = sext i8 %11 to i32
  switch i32 %conv27, label %sw.default [
    i32 49, label %sw.bb
    i32 50, label %sw.bb.29
    i32 51, label %sw.bb.49
  ]

sw.bb:                                            ; preds = %if.end.20
  %12 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx28, align 8
  %call = call %union.tree_node* @find_base_decl(%union.tree_node* %13)
  store %union.tree_node* %call, %union.tree_node** %retval
  br label %return

sw.bb.29:                                         ; preds = %if.end.20
  %14 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp30 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands31 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp30, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands31, i32 0, i64 0
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx32, align 8
  %call33 = call %union.tree_node* @find_base_decl(%union.tree_node* %15)
  store %union.tree_node* %call33, %union.tree_node** %d0, align 8
  %16 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp34 = bitcast %union.tree_node* %16 to %struct.tree_exp*
  %operands35 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp34, i32 0, i32 2
  %arrayidx36 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands35, i32 0, i64 1
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx36, align 8
  %call37 = call %union.tree_node* @find_base_decl(%union.tree_node* %17)
  store %union.tree_node* %call37, %union.tree_node** %d1, align 8
  %18 = load %union.tree_node*, %union.tree_node** %d0, align 8
  %19 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %cmp38 = icmp eq %union.tree_node* %18, %19
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %sw.bb.29
  %20 = load %union.tree_node*, %union.tree_node** %d0, align 8
  store %union.tree_node* %20, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %sw.bb.29
  %21 = load %union.tree_node*, %union.tree_node** %d0, align 8
  %cmp41 = icmp eq %union.tree_node* %21, null
  br i1 %cmp41, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else
  %22 = load %union.tree_node*, %union.tree_node** %d1, align 8
  store %union.tree_node* %22, %union.tree_node** %retval
  br label %return

if.else.44:                                       ; preds = %if.else
  %23 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %cmp45 = icmp eq %union.tree_node* %23, null
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.44
  %24 = load %union.tree_node*, %union.tree_node** %d0, align 8
  store %union.tree_node* %24, %union.tree_node** %retval
  br label %return

if.else.48:                                       ; preds = %if.else.44
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

sw.bb.49:                                         ; preds = %if.end.20
  %25 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp50 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands51 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp50, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands51, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx52, align 8
  %call53 = call %union.tree_node* @find_base_decl(%union.tree_node* %26)
  store %union.tree_node* %call53, %union.tree_node** %d0, align 8
  %27 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp54 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands55 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp54, i32 0, i32 2
  %arrayidx56 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands55, i32 0, i64 1
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx56, align 8
  %call57 = call %union.tree_node* @find_base_decl(%union.tree_node* %28)
  store %union.tree_node* %call57, %union.tree_node** %d1, align 8
  %29 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp58 = bitcast %union.tree_node* %29 to %struct.tree_exp*
  %operands59 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp58, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands59, i32 0, i64 2
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx60, align 8
  %call61 = call %union.tree_node* @find_base_decl(%union.tree_node* %30)
  store %union.tree_node* %call61, %union.tree_node** %d2, align 8
  %31 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %cmp62 = icmp eq %union.tree_node* %31, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %sw.bb.49
  %32 = load %union.tree_node*, %union.tree_node** %d2, align 8
  store %union.tree_node* %32, %union.tree_node** %d1, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.64, %sw.bb.49
  %33 = load %union.tree_node*, %union.tree_node** %d0, align 8
  %cmp66 = icmp eq %union.tree_node* %33, null
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.end.65
  %34 = load %union.tree_node*, %union.tree_node** %d1, align 8
  store %union.tree_node* %34, %union.tree_node** %d0, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.68, %if.end.65
  %35 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %cmp70 = icmp eq %union.tree_node* %35, null
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  %36 = load %union.tree_node*, %union.tree_node** %d0, align 8
  store %union.tree_node* %36, %union.tree_node** %d1, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.69
  %37 = load %union.tree_node*, %union.tree_node** %d2, align 8
  %cmp74 = icmp eq %union.tree_node* %37, null
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.73
  %38 = load %union.tree_node*, %union.tree_node** %d1, align 8
  store %union.tree_node* %38, %union.tree_node** %d2, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.end.73
  %39 = load %union.tree_node*, %union.tree_node** %d0, align 8
  %40 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %cmp78 = icmp eq %union.tree_node* %39, %40
  br i1 %cmp78, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.77
  %41 = load %union.tree_node*, %union.tree_node** %d1, align 8
  %42 = load %union.tree_node*, %union.tree_node** %d2, align 8
  %cmp80 = icmp eq %union.tree_node* %41, %42
  br i1 %cmp80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %43 = load %union.tree_node*, %union.tree_node** %d0, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.77
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %43, %cond.true ], [ null, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %if.end.20
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end, %if.else.48, %if.then.47, %if.then.43, %if.then.40, %sw.bb, %if.then.19, %if.then
  %44 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %44
}

; Function Attrs: nounwind uwtable
define i64 @new_alias_set() #0 {
entry:
  %retval = alloca i64, align 8
  %0 = load i32, i32* @flag_strict_aliasing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @new_alias_set.last_alias_set, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* @new_alias_set.last_alias_set, align 8
  store i64 %inc, i64* %retval
  br label %return

if.else:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @record_alias_subset(i64 %superset, i64 %subset) #0 {
entry:
  %superset.addr = alloca i64, align 8
  %subset.addr = alloca i64, align 8
  %superset_entry = alloca %struct.alias_set_entry*, align 8
  %subset_entry = alloca %struct.alias_set_entry*, align 8
  store i64 %superset, i64* %superset.addr, align 8
  store i64 %subset, i64* %subset.addr, align 8
  %0 = load i64, i64* %superset.addr, align 8
  %1 = load i64, i64* %subset.addr, align 8
  %cmp = icmp eq i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.26

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %superset.addr, align 8
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 625, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.record_alias_subset, i32 0, i32 0)) #6
  unreachable

if.end.3:                                         ; preds = %if.end
  %3 = load i64, i64* %superset.addr, align 8
  %call = call %struct.alias_set_entry* @get_alias_set_entry(i64 %3)
  store %struct.alias_set_entry* %call, %struct.alias_set_entry** %superset_entry, align 8
  %4 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %cmp4 = icmp eq %struct.alias_set_entry* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.9

if.then.5:                                        ; preds = %if.end.3
  %call6 = call noalias i8* @xmalloc(i64 24)
  %5 = bitcast i8* %call6 to %struct.alias_set_entry*
  store %struct.alias_set_entry* %5, %struct.alias_set_entry** %superset_entry, align 8
  %6 = load i64, i64* %superset.addr, align 8
  %7 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %alias_set = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %7, i32 0, i32 0
  store i64 %6, i64* %alias_set, align 8
  %call7 = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* @splay_tree_compare_ints, void (i64)* null, void (i64)* null)
  %8 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %children = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %8, i32 0, i32 1
  store %struct.splay_tree_s* %call7, %struct.splay_tree_s** %children, align 8
  %9 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %has_zero_child = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %9, i32 0, i32 2
  store i32 0, i32* %has_zero_child, align 4
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** @alias_sets, align 8
  %11 = load i64, i64* %superset.addr, align 8
  %12 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %13 = ptrtoint %struct.alias_set_entry* %12 to i64
  %call8 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %10, i64 %11, i64 %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.5, %if.end.3
  %14 = load i64, i64* %subset.addr, align 8
  %cmp10 = icmp eq i64 %14, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end.9
  %15 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %has_zero_child12 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %15, i32 0, i32 2
  store i32 1, i32* %has_zero_child12, align 4
  br label %if.end.26

if.else:                                          ; preds = %if.end.9
  %16 = load i64, i64* %subset.addr, align 8
  %call13 = call %struct.alias_set_entry* @get_alias_set_entry(i64 %16)
  store %struct.alias_set_entry* %call13, %struct.alias_set_entry** %subset_entry, align 8
  %17 = load %struct.alias_set_entry*, %struct.alias_set_entry** %subset_entry, align 8
  %tobool = icmp ne %struct.alias_set_entry* %17, null
  br i1 %tobool, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %if.else
  %18 = load %struct.alias_set_entry*, %struct.alias_set_entry** %subset_entry, align 8
  %has_zero_child15 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %18, i32 0, i32 2
  %19 = load i32, i32* %has_zero_child15, align 4
  %tobool16 = icmp ne i32 %19, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.14
  %20 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %has_zero_child18 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %20, i32 0, i32 2
  store i32 1, i32* %has_zero_child18, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.14
  %21 = load %struct.alias_set_entry*, %struct.alias_set_entry** %subset_entry, align 8
  %children20 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %21, i32 0, i32 1
  %22 = load %struct.splay_tree_s*, %struct.splay_tree_s** %children20, align 8
  %23 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %children21 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %23, i32 0, i32 1
  %24 = load %struct.splay_tree_s*, %struct.splay_tree_s** %children21, align 8
  %25 = bitcast %struct.splay_tree_s* %24 to i8*
  %call22 = call i32 @splay_tree_foreach(%struct.splay_tree_s* %22, i32 (%struct.splay_tree_node_s*, i8*)* @insert_subset_children, i8* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.19, %if.else
  %26 = load %struct.alias_set_entry*, %struct.alias_set_entry** %superset_entry, align 8
  %children24 = getelementptr inbounds %struct.alias_set_entry, %struct.alias_set_entry* %26, i32 0, i32 1
  %27 = load %struct.splay_tree_s*, %struct.splay_tree_s** %children24, align 8
  %28 = load i64, i64* %subset.addr, align 8
  %call25 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %27, i64 %28, i64 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then, %if.end.23, %if.then.11
  ret void
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

; Function Attrs: nounwind uwtable
define void @record_component_aliases(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %superset = alloca i64, align 8
  %field = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call i64 @get_alias_set(%union.tree_node* %0)
  store i64 %call, i64* %superset, align 8
  %1 = load i64, i64* %superset, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 18, label %sw.bb
    i32 20, label %sw.bb.9
    i32 21, label %sw.bb.9
    i32 22, label %sw.bb.9
    i32 8, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %transparent_union_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load2 = load i32, i32* %transparent_union_flag, align 4
  %bf.lshr = lshr i32 %bf.load2, 19
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %if.end.8, label %if.then.4

if.then.4:                                        ; preds = %sw.bb
  %4 = load i64, i64* %superset, align 8
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common5 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type6, align 8
  %call7 = call i64 @get_alias_set(%union.tree_node* %6)
  call void @record_alias_subset(i64 %4, i64 %call7)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %sw.bb
  br label %sw.epilog

sw.bb.9:                                          ; preds = %if.end, %if.end, %if.end
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type10 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %8, %union.tree_node** %field, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.9
  %9 = load %union.tree_node*, %union.tree_node** %field, align 8
  %cmp11 = icmp ne %union.tree_node* %9, null
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common12 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 37
  br i1 %cmp16, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %for.body
  %11 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl = bitcast %union.tree_node* %11 to %struct.tree_decl*
  %non_addressable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %12 = bitcast i48* %non_addressable to i64*
  %bf.load17 = load i64, i64* %12, align 8
  %bf.lshr18 = lshr i64 %bf.load17, 34
  %bf.clear19 = and i64 %bf.lshr18, 1
  %bf.cast = trunc i64 %bf.clear19 to i32
  %tobool20 = icmp ne i32 %bf.cast, 0
  br i1 %tobool20, label %if.end.25, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true
  %13 = load i64, i64* %superset, align 8
  %14 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common22 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 1
  %15 = load %union.tree_node*, %union.tree_node** %type23, align 8
  %call24 = call i64 @get_alias_set(%union.tree_node* %15)
  call void @record_alias_subset(i64 %13, i64 %call24)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %16 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common26 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 0
  %17 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %17, %union.tree_node** %field, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %18 = load i64, i64* %superset, align 8
  %19 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common28 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %type29, align 8
  %call30 = call i64 @get_alias_set(%union.tree_node* %20)
  call void @record_alias_subset(i64 %18, i64 %call30)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.27, %for.end, %if.end.8
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare noalias i8* @xmalloc(i64) #1

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #1

declare i32 @splay_tree_compare_ints(i64, i64) #1

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #1

declare i32 @splay_tree_foreach(%struct.splay_tree_s*, i32 (%struct.splay_tree_node_s*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @insert_subset_children(%struct.splay_tree_node_s* %node, i8* %data) #0 {
entry:
  %node.addr = alloca %struct.splay_tree_node_s*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.splay_tree_node_s* %node, %struct.splay_tree_node_s** %node.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.splay_tree_s*
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i32 0, i32 0
  %3 = load i64, i64* %key, align 8
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %4, i32 0, i32 1
  %5 = load i64, i64* %value, align 8
  %call = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %1, i64 %3, i64 %5)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i64 @get_varargs_alias_set() #0 {
entry:
  %0 = load i64, i64* @get_varargs_alias_set.set, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @new_alias_set()
  store i64 %call, i64* @get_varargs_alias_set.set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @get_varargs_alias_set.set, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @get_frame_alias_set() #0 {
entry:
  %0 = load i64, i64* @get_frame_alias_set.set, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i64 @new_alias_set()
  store i64 %call, i64* @get_frame_alias_set.set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @get_frame_alias_set.set, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define void @record_base_value(i32 %regno, %struct.rtx_def* %val, i32 %invariant) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %val.addr = alloca %struct.rtx_def*, align 8
  %invariant.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* %val, %struct.rtx_def** %val.addr, align 8
  store i32 %invariant, i32* %invariant.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %1 = load i32, i32* @reg_base_value_size, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %invariant.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %tobool1 = icmp ne %struct.rtx_def** %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %5 = load i32, i32* %regno.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %6, i64 %idxprom
  store %struct.rtx_def* %4, %struct.rtx_def** %arrayidx, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %land.lhs.true, %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 61
  br i1 %cmp4, label %if.then.5, label %if.end.17

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %11 = load i32, i32* @reg_base_value_size, align 4
  %cmp7 = icmp ult i32 %10, %11
  br i1 %cmp7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.then.5
  %12 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtuint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %13 = load i32, i32* %rtuint11, align 4
  %idxprom12 = zext i32 %13 to i64
  %14 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx13 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %14, i64 %idxprom12
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx13, align 8
  %16 = load i32, i32* %regno.addr, align 4
  %idxprom14 = zext i32 %16 to i64
  %17 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx15 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %17, i64 %idxprom14
  store %struct.rtx_def* %15, %struct.rtx_def** %arrayidx15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.8, %if.then.5
  br label %return

if.end.17:                                        ; preds = %if.end.3
  %18 = load %struct.rtx_def*, %struct.rtx_def** %val.addr, align 8
  %call = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %18)
  %19 = load i32, i32* %regno.addr, align 4
  %idxprom18 = zext i32 %19 to i64
  %20 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx19 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %20, i64 %idxprom18
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx19, align 8
  br label %return

return:                                           ; preds = %if.end.17, %if.end.16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_base_value(%struct.rtx_def* %src) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %src.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %src_0 = alloca %struct.rtx_def*, align 8
  %src_1 = alloca %struct.rtx_def*, align 8
  %temp301 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %src, %struct.rtx_def** %src.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 61, label %sw.bb.1
    i32 66, label %sw.bb.18
    i32 58, label %sw.bb.44
    i32 75, label %sw.bb.59
    i32 76, label %sw.bb.59
    i32 135, label %sw.bb.253
    i32 83, label %sw.bb.258
    i32 122, label %sw.bb.280
    i32 134, label %sw.bb.295
    i32 97, label %sw.bb.295
    i32 96, label %sw.bb.295
    i32 99, label %sw.bb.295
    i32 98, label %sw.bb.295
    i32 100, label %sw.bb.295
    i32 101, label %sw.bb.295
    i32 121, label %sw.bb.300
    i32 120, label %sw.bb.300
  ]

sw.bb:                                            ; preds = %entry, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  store i32 %4, i32* %regno, align 4
  %5 = load i32, i32* %regno, align 4
  %cmp = icmp ult i32 %5, 53
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %sw.bb.1
  %6 = load i32, i32* @copying_arguments, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %sw.bb.1
  %10 = load i32, i32* %regno, align 4
  %cmp3 = icmp uge i32 %10, 53
  br i1 %cmp3, label %land.lhs.true.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %regno, align 4
  %idxprom4 = zext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom4
  %12 = load i8, i8* %arrayidx5, align 1
  %conv = sext i8 %12 to i32
  %tobool6 = icmp ne i32 %conv, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end.17

land.lhs.true.7:                                  ; preds = %lor.lhs.false, %if.end
  %13 = load i32, i32* %regno, align 4
  %14 = load i32, i32* @reg_base_value_size, align 4
  %cmp8 = icmp ult i32 %13, %14
  br i1 %cmp8, label %land.lhs.true.10, label %if.end.17

land.lhs.true.10:                                 ; preds = %land.lhs.true.7
  %15 = load i32, i32* %regno, align 4
  %idxprom11 = zext i32 %15 to i64
  %16 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx12 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %16, i64 %idxprom11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx12, align 8
  %tobool13 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %land.lhs.true.10
  %18 = load i32, i32* %regno, align 4
  %idxprom15 = zext i32 %18 to i64
  %19 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx16 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %19, i64 %idxprom15
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx16, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.10, %land.lhs.true.7, %lor.lhs.false
  %21 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  %22 = load i32, i32* @copying_arguments, align 4
  %tobool19 = icmp ne i32 %22, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.43

land.lhs.true.20:                                 ; preds = %sw.bb.18
  %23 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp23 = icmp eq %struct.rtx_def* %24, %25
  br i1 %cmp23, label %if.then.42, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %land.lhs.true.20
  %26 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load29 = load i32, i32* %28, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 75
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.43

land.lhs.true.33:                                 ; preds = %lor.lhs.false.25
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp40 = icmp eq %struct.rtx_def* %31, %32
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.33, %land.lhs.true.20
  %33 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 0, %struct.rtx_def* %33)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true.33, %lor.lhs.false.25, %sw.bb.18
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.44:                                         ; preds = %entry
  %34 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %src.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load48 = load i32, i32* %37, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp ne i32 %bf.clear49, 75
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.58

land.lhs.true.52:                                 ; preds = %sw.bb.44
  %38 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load53 = load i32, i32* %39, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp ne i32 %bf.clear54, 76
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.52
  br label %sw.epilog

if.end.58:                                        ; preds = %land.lhs.true.52, %sw.bb.44
  br label %sw.bb.59

sw.bb.59:                                         ; preds = %entry, %entry, %if.end.58
  %40 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %src_0, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 1
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %src_1, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load66 = load i32, i32* %45, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 61
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.75

land.lhs.true.70:                                 ; preds = %sw.bb.59
  %46 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load71 = load i32, i32* %47, align 8
  %bf.lshr = lshr i32 %bf.load71, 31
  %tobool72 = icmp ne i32 %bf.lshr, 0
  br i1 %tobool72, label %if.then.73, label %if.end.75

if.then.73:                                       ; preds = %land.lhs.true.70
  %48 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %call74 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %48)
  store %struct.rtx_def* %call74, %struct.rtx_def** %retval
  br label %return

if.end.75:                                        ; preds = %land.lhs.true.70, %sw.bb.59
  %49 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load76 = load i32, i32* %50, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 61
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.86

land.lhs.true.80:                                 ; preds = %if.end.75
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load81 = load i32, i32* %52, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 31
  %tobool83 = icmp ne i32 %bf.lshr82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %land.lhs.true.80
  %53 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %call85 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %53)
  store %struct.rtx_def* %call85, %struct.rtx_def** %retval
  br label %return

if.end.86:                                        ; preds = %land.lhs.true.80, %if.end.75
  %54 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load87 = load i32, i32* %55, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 61
  br i1 %cmp89, label %if.then.91, label %if.end.97

if.then.91:                                       ; preds = %if.end.86
  %56 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %call92 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %56)
  store %struct.rtx_def* %call92, %struct.rtx_def** %temp, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp93 = icmp ne %struct.rtx_def* %57, null
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.then.91
  %58 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %src_0, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.95, %if.then.91
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.86
  %59 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load98 = load i32, i32* %60, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 61
  br i1 %cmp100, label %if.then.102, label %if.end.108

if.then.102:                                      ; preds = %if.end.97
  %61 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %call103 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %61)
  store %struct.rtx_def* %call103, %struct.rtx_def** %temp, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp104 = icmp ne %struct.rtx_def* %62, null
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %if.then.102
  %63 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %63, %struct.rtx_def** %src_1, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.106, %if.then.102
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.end.97
  %64 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %cmp109 = icmp ne %struct.rtx_def* %64, null
  br i1 %cmp109, label %land.lhs.true.111, label %if.end.133

land.lhs.true.111:                                ; preds = %if.end.108
  %65 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load112 = load i32, i32* %66, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 68
  br i1 %cmp114, label %if.then.132, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.111
  %67 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load117 = load i32, i32* %68, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 67
  br i1 %cmp119, label %if.then.132, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.116
  %69 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load122 = load i32, i32* %70, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 25
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.133

land.lhs.true.126:                                ; preds = %lor.lhs.false.121
  %71 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load127 = load i32, i32* %72, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %cmp130 = icmp ne i32 %bf.clear129, 0
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %land.lhs.true.126, %lor.lhs.false.116, %land.lhs.true.111
  %73 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  store %struct.rtx_def* %73, %struct.rtx_def** %retval
  br label %return

if.end.133:                                       ; preds = %land.lhs.true.126, %lor.lhs.false.121, %if.end.108
  %74 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %cmp134 = icmp ne %struct.rtx_def* %74, null
  br i1 %cmp134, label %land.lhs.true.136, label %if.end.158

land.lhs.true.136:                                ; preds = %if.end.133
  %75 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load137 = load i32, i32* %76, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 68
  br i1 %cmp139, label %if.then.157, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %land.lhs.true.136
  %77 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load142 = load i32, i32* %78, align 8
  %bf.clear143 = and i32 %bf.load142, 65535
  %cmp144 = icmp eq i32 %bf.clear143, 67
  br i1 %cmp144, label %if.then.157, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %lor.lhs.false.141
  %79 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load147 = load i32, i32* %80, align 8
  %bf.clear148 = and i32 %bf.load147, 65535
  %cmp149 = icmp eq i32 %bf.clear148, 25
  br i1 %cmp149, label %land.lhs.true.151, label %if.end.158

land.lhs.true.151:                                ; preds = %lor.lhs.false.146
  %81 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load152 = load i32, i32* %82, align 8
  %bf.lshr153 = lshr i32 %bf.load152, 16
  %bf.clear154 = and i32 %bf.lshr153, 255
  %cmp155 = icmp ne i32 %bf.clear154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %land.lhs.true.151, %lor.lhs.false.141, %land.lhs.true.136
  %83 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %retval
  br label %return

if.end.158:                                       ; preds = %land.lhs.true.151, %lor.lhs.false.146, %if.end.133
  %84 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load159 = load i32, i32* %85, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 54
  br i1 %cmp161, label %if.then.203, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.end.158
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load164 = load i32, i32* %87, align 8
  %bf.clear165 = and i32 %bf.load164, 65535
  %cmp166 = icmp eq i32 %bf.clear165, 67
  br i1 %cmp166, label %if.then.203, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %lor.lhs.false.163
  %88 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load169 = load i32, i32* %89, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp eq i32 %bf.clear170, 68
  br i1 %cmp171, label %if.then.203, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %lor.lhs.false.168
  %90 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load174 = load i32, i32* %91, align 8
  %bf.clear175 = and i32 %bf.load174, 65535
  %cmp176 = icmp eq i32 %bf.clear175, 54
  br i1 %cmp176, label %if.then.203, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %lor.lhs.false.173
  %92 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load179 = load i32, i32* %93, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %cmp181 = icmp eq i32 %bf.clear180, 55
  br i1 %cmp181, label %if.then.203, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %lor.lhs.false.178
  %94 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load184 = load i32, i32* %95, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %cmp186 = icmp eq i32 %bf.clear185, 58
  br i1 %cmp186, label %if.then.203, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %lor.lhs.false.183
  %96 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load189 = load i32, i32* %97, align 8
  %bf.clear190 = and i32 %bf.load189, 65535
  %cmp191 = icmp eq i32 %bf.clear190, 134
  br i1 %cmp191, label %if.then.203, label %lor.lhs.false.193

lor.lhs.false.193:                                ; preds = %lor.lhs.false.188
  %98 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load194 = load i32, i32* %99, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp eq i32 %bf.clear195, 56
  br i1 %cmp196, label %if.then.203, label %lor.lhs.false.198

lor.lhs.false.198:                                ; preds = %lor.lhs.false.193
  %100 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load199 = load i32, i32* %101, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 140
  br i1 %cmp201, label %if.then.203, label %if.else

if.then.203:                                      ; preds = %lor.lhs.false.198, %lor.lhs.false.193, %lor.lhs.false.188, %lor.lhs.false.183, %lor.lhs.false.178, %lor.lhs.false.173, %lor.lhs.false.168, %lor.lhs.false.163, %if.end.158
  %102 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %call204 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %102)
  store %struct.rtx_def* %call204, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.198
  %103 = load %struct.rtx_def*, %struct.rtx_def** %src_0, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load205 = load i32, i32* %104, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp eq i32 %bf.clear206, 54
  br i1 %cmp207, label %if.then.249, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.else
  %105 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load210 = load i32, i32* %106, align 8
  %bf.clear211 = and i32 %bf.load210, 65535
  %cmp212 = icmp eq i32 %bf.clear211, 67
  br i1 %cmp212, label %if.then.249, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %lor.lhs.false.209
  %107 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load215 = load i32, i32* %108, align 8
  %bf.clear216 = and i32 %bf.load215, 65535
  %cmp217 = icmp eq i32 %bf.clear216, 68
  br i1 %cmp217, label %if.then.249, label %lor.lhs.false.219

lor.lhs.false.219:                                ; preds = %lor.lhs.false.214
  %109 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load220 = load i32, i32* %110, align 8
  %bf.clear221 = and i32 %bf.load220, 65535
  %cmp222 = icmp eq i32 %bf.clear221, 54
  br i1 %cmp222, label %if.then.249, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %lor.lhs.false.219
  %111 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load225 = load i32, i32* %112, align 8
  %bf.clear226 = and i32 %bf.load225, 65535
  %cmp227 = icmp eq i32 %bf.clear226, 55
  br i1 %cmp227, label %if.then.249, label %lor.lhs.false.229

lor.lhs.false.229:                                ; preds = %lor.lhs.false.224
  %113 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load230 = load i32, i32* %114, align 8
  %bf.clear231 = and i32 %bf.load230, 65535
  %cmp232 = icmp eq i32 %bf.clear231, 58
  br i1 %cmp232, label %if.then.249, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %lor.lhs.false.229
  %115 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load235 = load i32, i32* %116, align 8
  %bf.clear236 = and i32 %bf.load235, 65535
  %cmp237 = icmp eq i32 %bf.clear236, 134
  br i1 %cmp237, label %if.then.249, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.234
  %117 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load240 = load i32, i32* %118, align 8
  %bf.clear241 = and i32 %bf.load240, 65535
  %cmp242 = icmp eq i32 %bf.clear241, 56
  br i1 %cmp242, label %if.then.249, label %lor.lhs.false.244

lor.lhs.false.244:                                ; preds = %lor.lhs.false.239
  %119 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load245 = load i32, i32* %120, align 8
  %bf.clear246 = and i32 %bf.load245, 65535
  %cmp247 = icmp eq i32 %bf.clear246, 140
  br i1 %cmp247, label %if.then.249, label %if.end.251

if.then.249:                                      ; preds = %lor.lhs.false.244, %lor.lhs.false.239, %lor.lhs.false.234, %lor.lhs.false.229, %lor.lhs.false.224, %lor.lhs.false.219, %lor.lhs.false.214, %lor.lhs.false.209, %if.else
  %121 = load %struct.rtx_def*, %struct.rtx_def** %src_1, align 8
  %call250 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %121)
  store %struct.rtx_def* %call250, %struct.rtx_def** %retval
  br label %return

if.end.251:                                       ; preds = %lor.lhs.false.244
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.251
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.253:                                        ; preds = %entry
  %122 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld254 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx255 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld254, i32 0, i64 1
  %rtx256 = bitcast %union.rtunion_def* %arrayidx255 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx256, align 8
  %call257 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %123)
  store %struct.rtx_def* %call257, %struct.rtx_def** %retval
  br label %return

sw.bb.258:                                        ; preds = %entry
  %124 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 1
  %rtx261 = bitcast %union.rtunion_def* %arrayidx260 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx261, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load262 = load i32, i32* %126, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %cmp264 = icmp eq i32 %bf.clear263, 54
  br i1 %cmp264, label %land.lhs.true.266, label %if.end.279

land.lhs.true.266:                                ; preds = %sw.bb.258
  %127 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 1
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  %fld270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld270, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx271 to i64*
  %129 = load i64, i64* %rtwint, align 8
  %cmp272 = icmp ne i64 %129, 0
  br i1 %cmp272, label %if.then.274, label %if.end.279

if.then.274:                                      ; preds = %land.lhs.true.266
  %130 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 0
  %rtx277 = bitcast %union.rtunion_def* %arrayidx276 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx277, align 8
  %call278 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %131)
  store %struct.rtx_def* %call278, %struct.rtx_def** %retval
  br label %return

if.end.279:                                       ; preds = %land.lhs.true.266, %sw.bb.258
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.280:                                        ; preds = %entry
  %132 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load281 = load i32, i32* %133, align 8
  %bf.lshr282 = lshr i32 %bf.load281, 16
  %bf.clear283 = and i32 %bf.lshr282, 255
  %idxprom284 = sext i32 %bf.clear283 to i64
  %arrayidx285 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom284
  %134 = load i8, i8* %arrayidx285, align 1
  %conv286 = zext i8 %134 to i32
  %135 = load i32, i32* @target_flags, align 4
  %and = and i32 %135, 33554432
  %tobool287 = icmp ne i32 %and, 0
  %cond = select i1 %tobool287, i32 5, i32 4
  %idxprom288 = sext i32 %cond to i64
  %arrayidx289 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom288
  %136 = load i8, i8* %arrayidx289, align 1
  %conv290 = zext i8 %136 to i32
  %cmp291 = icmp slt i32 %conv286, %conv290
  br i1 %cmp291, label %if.then.293, label %if.end.294

if.then.293:                                      ; preds = %sw.bb.280
  br label %sw.epilog

if.end.294:                                       ; preds = %sw.bb.280
  br label %sw.bb.295

sw.bb.295:                                        ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %if.end.294
  %137 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  %call299 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %138)
  store %struct.rtx_def* %call299, %struct.rtx_def** %retval
  br label %return

sw.bb.300:                                        ; preds = %entry, %entry
  %139 = load %struct.rtx_def*, %struct.rtx_def** %src.addr, align 8
  %fld302 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx303 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld302, i32 0, i64 0
  %rtx304 = bitcast %union.rtunion_def* %arrayidx303 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx304, align 8
  %call305 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %140)
  store %struct.rtx_def* %call305, %struct.rtx_def** %temp301, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %temp301, align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then.293, %if.then.57
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.300, %sw.bb.295, %if.end.279, %if.then.274, %sw.bb.253, %if.end.252, %if.then.249, %if.then.203, %if.then.157, %if.then.132, %if.then.84, %if.then.73, %if.end.43, %if.then.42, %if.end.17, %if.then.14, %if.then, %sw.bb
  %142 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %142
}

; Function Attrs: nounwind uwtable
define void @clear_reg_alias_info(%struct.rtx_def* %reg) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  store i32 %1, i32* %regno, align 4
  %2 = load i32, i32* %regno, align 4
  %3 = load i32, i32* @reg_known_value_size, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %regno, align 4
  %cmp1 = icmp uge i32 %4, 53
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %6 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 %idxprom
  store %struct.rtx_def* %5, %struct.rtx_def** %arrayidx2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @canon_rtx(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %x0 = alloca %struct.rtx_def*, align 8
  %x1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp uge i32 %3, 53
  br i1 %cmp1, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %5 = load i32, i32* %rtuint5, align 4
  %6 = load i32, i32* @reg_known_value_size, align 4
  %cmp6 = icmp ult i32 %5, %6
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %8 = load i32, i32* %rtuint9, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx10 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %9, i64 %idxprom
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp11 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %14 = load i32, i32* %rtuint14, align 4
  %idxprom15 = zext i32 %14 to i64
  %15 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx16 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %15, i64 %idxprom15
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx16, align 8
  %call = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %16)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %12, %cond.true ], [ %call, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load17 = load i32, i32* %18, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 75
  br i1 %cmp19, label %if.then.20, label %if.else.58

if.then.20:                                       ; preds = %if.else
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call23 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %20)
  store %struct.rtx_def* %call23, %struct.rtx_def** %x0, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %call27 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %22)
  store %struct.rtx_def* %call27, %struct.rtx_def** %x1, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %cmp31 = icmp ne %struct.rtx_def* %23, %25
  br i1 %cmp31, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.20
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp ne %struct.rtx_def* %26, %28
  br i1 %cmp35, label %if.then.36, label %if.end.57

if.then.36:                                       ; preds = %lor.lhs.false, %if.then.20
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load37 = load i32, i32* %30, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 54
  br i1 %cmp39, label %if.then.40, label %if.else.44

if.then.40:                                       ; preds = %if.then.36
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx42 to i64*
  %33 = load i64, i64* %rtwint, align 8
  %call43 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %31, i64 %33)
  store %struct.rtx_def* %call43, %struct.rtx_def** %retval
  br label %return

if.else.44:                                       ; preds = %if.then.36
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load45 = load i32, i32* %35, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp eq i32 %bf.clear46, 54
  br i1 %cmp47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.else.44
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtwint51 = bitcast %union.rtunion_def* %arrayidx50 to i64*
  %38 = load i64, i64* %rtwint51, align 8
  %call52 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %36, i64 %38)
  store %struct.rtx_def* %call52, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.else.44
  br label %if.end.53

if.end.53:                                        ; preds = %if.end
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load54 = load i32, i32* %40, align 8
  %bf.lshr = lshr i32 %bf.load54, 16
  %bf.clear55 = and i32 %bf.lshr, 255
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %call56 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear55, %struct.rtx_def* %41, %struct.rtx_def* %42)
  store %struct.rtx_def* %call56, %struct.rtx_def** %retval
  br label %return

if.end.57:                                        ; preds = %lor.lhs.false
  br label %if.end.69

if.else.58:                                       ; preds = %if.else
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load59 = load i32, i32* %44, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 66
  br i1 %cmp61, label %if.then.62, label %if.end.68

if.then.62:                                       ; preds = %if.else.58
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %call66 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %47)
  %call67 = call %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %45, %struct.rtx_def* %call66)
  store %struct.rtx_def* %call67, %struct.rtx_def** %x.addr, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.62, %if.else.58
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.57
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.end.53, %if.then.48, %if.then.40, %cond.end
  %49 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %49
}

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_addr(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %v = alloca %struct.cselib_val_struct*, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**
  %4 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  store %struct.cselib_val_struct* %4, %struct.cselib_val_struct** %v, align 8
  %5 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %5, i32 0, i32 2
  %6 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  store %struct.elt_loc_list* %6, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool = icmp ne %struct.elt_loc_list* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load1 = load i32, i32* %10, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 67
  br i1 %cmp3, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc4 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %loc4, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load5 = load i32, i32* %13, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 68
  br i1 %cmp7, label %if.then.38, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %14 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc9 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %loc9, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load10 = load i32, i32* %16, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 54
  br i1 %cmp12, label %if.then.38, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false.8
  %17 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc14 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %17, i32 0, i32 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %loc14, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load15 = load i32, i32* %19, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 55
  br i1 %cmp17, label %if.then.38, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.13
  %20 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc19 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %loc19, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load20 = load i32, i32* %22, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 58
  br i1 %cmp22, label %if.then.38, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.18
  %23 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc24 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %23, i32 0, i32 1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %loc24, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load25 = load i32, i32* %25, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 134
  br i1 %cmp27, label %if.then.38, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.23
  %26 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc29 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %26, i32 0, i32 1
  %27 = load %struct.rtx_def*, %struct.rtx_def** %loc29, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load30 = load i32, i32* %28, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 56
  br i1 %cmp32, label %if.then.38, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.28
  %29 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc34 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %29, i32 0, i32 1
  %30 = load %struct.rtx_def*, %struct.rtx_def** %loc34, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load35 = load i32, i32* %31, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 140
  br i1 %cmp37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.28, %lor.lhs.false.23, %lor.lhs.false.18, %lor.lhs.false.13, %lor.lhs.false.8, %lor.lhs.false, %for.body
  %32 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc39 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %32, i32 0, i32 1
  %33 = load %struct.rtx_def*, %struct.rtx_def** %loc39, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %lor.lhs.false.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %34 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %34, i32 0, i32 0
  %35 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  store %struct.elt_loc_list* %35, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs41 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %36, i32 0, i32 2
  %37 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs41, align 8
  store %struct.elt_loc_list* %37, %struct.elt_loc_list** %l, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.56, %for.end
  %38 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool43 = icmp ne %struct.elt_loc_list* %38, null
  br i1 %tobool43, label %for.body.44, label %for.end.58

for.body.44:                                      ; preds = %for.cond.42
  %39 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc45 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %39, i32 0, i32 1
  %40 = load %struct.rtx_def*, %struct.rtx_def** %loc45, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load46 = load i32, i32* %41, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp ne i32 %bf.clear47, 61
  br i1 %cmp48, label %land.lhs.true, label %if.end.55

land.lhs.true:                                    ; preds = %for.body.44
  %42 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc49 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %42, i32 0, i32 1
  %43 = load %struct.rtx_def*, %struct.rtx_def** %loc49, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load50 = load i32, i32* %44, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp ne i32 %bf.clear51, 66
  br i1 %cmp52, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %land.lhs.true
  %45 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc54 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %45, i32 0, i32 1
  %46 = load %struct.rtx_def*, %struct.rtx_def** %loc54, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true, %for.body.44
  br label %for.inc.56

for.inc.56:                                       ; preds = %if.end.55
  %47 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next57 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %47, i32 0, i32 0
  %48 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next57, align 8
  store %struct.elt_loc_list* %48, %struct.elt_loc_list** %l, align 8
  br label %for.cond.42

for.end.58:                                       ; preds = %for.cond.42
  %49 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs59 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %49, i32 0, i32 2
  %50 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs59, align 8
  %tobool60 = icmp ne %struct.elt_loc_list* %50, null
  br i1 %tobool60, label %if.then.61, label %if.end.64

if.then.61:                                       ; preds = %for.end.58
  %51 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %v, align 8
  %locs62 = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %51, i32 0, i32 2
  %52 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs62, align 8
  %loc63 = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %loc63, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %retval
  br label %return

if.end.64:                                        ; preds = %for.end.58
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.64, %if.then.61, %if.then.53, %if.then.38, %if.then
  %55 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %55
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @addr_side_effect_eval(%struct.rtx_def* %addr, i32 %size, i32 %n_refs) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  %size.addr = alloca i32, align 4
  %n_refs.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i32 %n_refs, i32* %n_refs.addr, align 4
  store i32 0, i32* %offset, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 97, label %sw.bb
    i32 96, label %sw.bb.1
    i32 99, label %sw.bb.4
    i32 98, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %2 = load i32, i32* %n_refs.addr, align 4
  %add = add nsw i32 %2, 1
  %3 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %add, %3
  store i32 %mul, i32* %offset, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %4 = load i32, i32* %n_refs.addr, align 4
  %add2 = add nsw i32 %4, 1
  %sub = sub nsw i32 0, %add2
  %5 = load i32, i32* %size.addr, align 4
  %mul3 = mul nsw i32 %sub, %5
  store i32 %mul3, i32* %offset, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %6 = load i32, i32* %n_refs.addr, align 4
  %7 = load i32, i32* %size.addr, align 4
  %mul5 = mul nsw i32 %6, %7
  store i32 %mul5, i32* %offset, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %8 = load i32, i32* %n_refs.addr, align 4
  %sub7 = sub nsw i32 0, %8
  %9 = load i32, i32* %size.addr, align 4
  %mul8 = mul nsw i32 %sub7, %9
  store i32 %mul8, i32* %offset, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.6, %sw.bb.4, %sw.bb.1, %sw.bb
  %11 = load i32, i32* %offset, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.epilog
  %12 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load9 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load9, 16
  %bf.clear10 = and i32 %bf.lshr, 255
  %14 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %16 = load i32, i32* %offset, align 4
  %conv = sext i32 %16 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %call11 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear10, %struct.rtx_def* %15, %struct.rtx_def* %call)
  store %struct.rtx_def* %call11, %struct.rtx_def** %addr.addr, align 8
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  %17 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %addr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %sw.default
  %20 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %20
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

; Function Attrs: nounwind uwtable
define i32 @read_dependence(%struct.rtx_def* %mem, %struct.rtx_def* %x) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 27
  %bf.clear3 = and i32 %bf.lshr2, 1
  %tobool4 = icmp ne i32 %bf.clear3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool4, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @true_dependence(%struct.rtx_def* %mem, i32 %mem_mode, %struct.rtx_def* %x, i32 (%struct.rtx_def*, i32)* %varies) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.rtx_def*, align 8
  %mem_mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %varies.addr = alloca i32 (%struct.rtx_def*, i32)*, align 8
  %x_addr = alloca %struct.rtx_def*, align 8
  %mem_addr = alloca %struct.rtx_def*, align 8
  %base = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store i32 %mem_mode, i32* %mem_mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 (%struct.rtx_def*, i32)* %varies, i32 (%struct.rtx_def*, i32)** %varies.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 27
  %bf.clear3 = and i32 %bf.lshr2, 1
  %tobool4 = icmp ne i32 %bf.clear3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %cmp = icmp eq i32 %bf.clear7, 51
  br i1 %cmp, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load9 = load i32, i32* %8, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 62
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 16
  %bf.clear16 = and i32 %bf.lshr15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 51
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.26

land.lhs.true.18:                                 ; preds = %if.end.13
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load22 = load i32, i32* %13, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 62
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.18, %if.end.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call = call i32 @mems_in_disjoint_alias_sets_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load30 = load i32, i32* %17, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 26
  %bf.clear32 = and i32 %bf.lshr31, 1
  %tobool33 = icmp ne i32 %bf.clear32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %if.end.29
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load35 = load i32, i32* %19, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 26
  %bf.clear37 = and i32 %bf.lshr36, 1
  %tobool38 = icmp ne i32 %bf.clear37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.34, %if.end.29
  %20 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call41 = call i32 @nonoverlapping_memrefs_p(%struct.rtx_def* %20, %struct.rtx_def* %21)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %22 = load i32, i32* %mem_mode.addr, align 4
  %cmp45 = icmp eq i32 %22, 0
  br i1 %cmp45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.44
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load47 = load i32, i32* %24, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  store i32 %bf.clear49, i32* %mem_mode.addr, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.end.44
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %call54 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %26)
  store %struct.rtx_def* %call54, %struct.rtx_def** %x_addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %call58 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %28)
  store %struct.rtx_def* %call58, %struct.rtx_def** %mem_addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call59 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %29)
  store %struct.rtx_def* %call59, %struct.rtx_def** %base, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %tobool60 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.74

land.lhs.true.61:                                 ; preds = %if.end.50
  %31 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load62 = load i32, i32* %32, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 67
  br i1 %cmp64, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.61
  %33 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load65 = load i32, i32* %34, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 68
  br i1 %cmp67, label %land.lhs.true.68, label %if.end.74

land.lhs.true.68:                                 ; preds = %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load69 = load i32, i32* %36, align 8
  %bf.lshr70 = lshr i32 %bf.load69, 26
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %land.lhs.true.68, %land.lhs.true.61
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %land.lhs.true.68, %lor.lhs.false, %if.end.50
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load75 = load i32, i32* %40, align 8
  %bf.lshr76 = lshr i32 %bf.load75, 16
  %bf.clear77 = and i32 %bf.lshr76, 255
  %41 = load i32, i32* %mem_mode.addr, align 4
  %call78 = call i32 @base_alias_check(%struct.rtx_def* %37, %struct.rtx_def* %38, i32 %bf.clear77, i32 %41)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.end.81, label %if.then.80

if.then.80:                                       ; preds = %if.end.74
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.74
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call82 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %42)
  store %struct.rtx_def* %call82, %struct.rtx_def** %x_addr, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %call83 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %43)
  store %struct.rtx_def* %call83, %struct.rtx_def** %mem_addr, align 8
  %44 = load i32, i32* %mem_mode.addr, align 4
  %idxprom = sext i32 %44 to i64
  %arrayidx84 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %45 = load i8, i8* %arrayidx84, align 1
  %conv = zext i8 %45 to i32
  %46 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load85 = load i32, i32* %48, align 8
  %bf.lshr86 = lshr i32 %bf.load85, 16
  %bf.clear87 = and i32 %bf.lshr86, 255
  %idxprom88 = sext i32 %bf.clear87 to i64
  %arrayidx89 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom88
  %49 = load i8, i8* %arrayidx89, align 1
  %conv90 = zext i8 %49 to i32
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call91 = call i32 @memrefs_conflict_p(i32 %conv, %struct.rtx_def* %46, i32 %conv90, %struct.rtx_def* %50, i64 0)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.81
  store i32 0, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.81
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call95 = call i32 @aliases_everything_p(%struct.rtx_def* %51)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.94
  store i32 1, i32* %retval
  br label %return

if.end.98:                                        ; preds = %if.end.94
  %52 = load i32, i32* %mem_mode.addr, align 4
  %cmp99 = icmp eq i32 %52, 2
  br i1 %cmp99, label %if.then.106, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.end.98
  %53 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load102 = load i32, i32* %54, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 83
  br i1 %cmp104, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %lor.lhs.false.101, %if.end.98
  store i32 1, i32* %retval
  br label %return

if.end.107:                                       ; preds = %lor.lhs.false.101
  %55 = load i32, i32* %mem_mode.addr, align 4
  %cmp108 = icmp eq i32 %55, 51
  br i1 %cmp108, label %if.then.116, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %if.end.107
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load111 = load i32, i32* %57, align 8
  %bf.lshr112 = lshr i32 %bf.load111, 16
  %bf.clear113 = and i32 %bf.lshr112, 255
  %cmp114 = icmp eq i32 %bf.clear113, 51
  br i1 %cmp114, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %lor.lhs.false.110, %if.end.107
  store i32 1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %lor.lhs.false.110
  %58 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %62 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies.addr, align 8
  %call118 = call %struct.rtx_def* @fixed_scalar_and_varying_struct_p(%struct.rtx_def* %58, %struct.rtx_def* %59, %struct.rtx_def* %60, %struct.rtx_def* %61, i32 (%struct.rtx_def*, i32)* %62)
  %tobool119 = icmp ne %struct.rtx_def* %call118, null
  %lnot = xor i1 %tobool119, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.117, %if.then.116, %if.then.106, %if.then.97, %if.then.93, %if.then.80, %if.then.73, %if.then.43, %if.then.39, %if.then.28, %if.then.25, %if.then.12, %if.then
  %63 = load i32, i32* %retval
  ret i32 %63
}

; Function Attrs: nounwind uwtable
define internal i32 @mems_in_disjoint_alias_sets_p(%struct.rtx_def* %mem1, %struct.rtx_def* %mem2) #0 {
entry:
  %mem1.addr = alloca %struct.rtx_def*, align 8
  %mem2.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem1, %struct.rtx_def** %mem1.addr, align 8
  store %struct.rtx_def* %mem2, %struct.rtx_def** %mem2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem1.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 0
  %4 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %5 = load %struct.rtx_def*, %struct.rtx_def** %mem2.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem2.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %alias13 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 0
  %9 = load i64, i64* %alias13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i64 [ 0, %cond.true.8 ], [ %9, %cond.false.9 ]
  %call = call i32 @alias_sets_conflict_p(i64 %cond, i64 %cond15)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @nonoverlapping_memrefs_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %exprx = alloca %union.tree_node*, align 8
  %expry = alloca %union.tree_node*, align 8
  %rtlx = alloca %struct.rtx_def*, align 8
  %rtly = alloca %struct.rtx_def*, align 8
  %basex = alloca %struct.rtx_def*, align 8
  %basey = alloca %struct.rtx_def*, align 8
  %moffsetx = alloca %struct.rtx_def*, align 8
  %moffsety = alloca %struct.rtx_def*, align 8
  %offsetx = alloca i64, align 8
  %offsety = alloca i64, align 8
  %sizex = alloca i64, align 8
  %sizey = alloca i64, align 8
  %tem = alloca i64, align 8
  %t = alloca %union.tree_node*, align 8
  %t67 = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ null, %cond.true ], [ %4, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %exprx, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %expr13 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %expr13, align 8
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi %union.tree_node* [ null, %cond.true.8 ], [ %9, %cond.false.9 ]
  store %union.tree_node* %cond15, %union.tree_node** %expry, align 8
  store i64 0, i64* %offsetx, align 8
  store i64 0, i64* %offsety, align 8
  %10 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %cmp16 = icmp eq %union.tree_node* %10, null
  br i1 %cmp16, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.14
  %11 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %cmp17 = icmp eq %union.tree_node* %11, null
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.14
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp18 = icmp eq i32 %bf.clear, 39
  br i1 %cmp18, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %common19 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %cmp23 = icmp eq i32 %bf.clear22, 39
  br i1 %cmp23, label %land.lhs.true.24, label %if.end.26

land.lhs.true.24:                                 ; preds = %land.lhs.true
  %14 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %15 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %call = call zeroext i1 @nonoverlapping_component_refs_p(%union.tree_node* %14, %union.tree_node* %15)
  br i1 %call, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.24, %land.lhs.true, %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtmem29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.mem_attrs**
  %17 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem29, align 8
  %cmp30 = icmp eq %struct.mem_attrs* %17, null
  br i1 %cmp30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.end.26
  br label %cond.end.36

cond.false.32:                                    ; preds = %if.end.26
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtmem35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.mem_attrs**
  %19 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem35, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %19, i32 0, i32 2
  %20 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.32, %cond.true.31
  %cond37 = phi %struct.rtx_def* [ null, %cond.true.31 ], [ %20, %cond.false.32 ]
  store %struct.rtx_def* %cond37, %struct.rtx_def** %moffsetx, align 8
  %21 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %common38 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %code39, align 8
  %bf.clear41 = and i32 %bf.load40, 255
  %cmp42 = icmp eq i32 %bf.clear41, 39
  br i1 %cmp42, label %if.then.43, label %if.end.48

if.then.43:                                       ; preds = %cond.end.36
  %22 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %call44 = call %union.tree_node* @decl_for_component_ref(%union.tree_node* %22)
  store %union.tree_node* %call44, %union.tree_node** %t, align 8
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %23, null
  br i1 %tobool, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %if.then.43
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.43
  %24 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %moffsetx, align 8
  %call47 = call %struct.rtx_def* @adjust_offset_for_component_ref(%union.tree_node* %24, %struct.rtx_def* %25)
  store %struct.rtx_def* %call47, %struct.rtx_def** %moffsetx, align 8
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %26, %union.tree_node** %exprx, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.46, %cond.end.36
  %27 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtmem51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.mem_attrs**
  %28 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem51, align 8
  %cmp52 = icmp eq %struct.mem_attrs* %28, null
  br i1 %cmp52, label %cond.true.53, label %cond.false.54

cond.true.53:                                     ; preds = %if.end.48
  br label %cond.end.59

cond.false.54:                                    ; preds = %if.end.48
  %29 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtmem57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.mem_attrs**
  %30 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem57, align 8
  %offset58 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %30, i32 0, i32 2
  %31 = load %struct.rtx_def*, %struct.rtx_def** %offset58, align 8
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.54, %cond.true.53
  %cond60 = phi %struct.rtx_def* [ null, %cond.true.53 ], [ %31, %cond.false.54 ]
  store %struct.rtx_def* %cond60, %struct.rtx_def** %moffsety, align 8
  %32 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %common61 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code62 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 2
  %bf.load63 = load i32, i32* %code62, align 8
  %bf.clear64 = and i32 %bf.load63, 255
  %cmp65 = icmp eq i32 %bf.clear64, 39
  br i1 %cmp65, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %cond.end.59
  %33 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %call68 = call %union.tree_node* @decl_for_component_ref(%union.tree_node* %33)
  store %union.tree_node* %call68, %union.tree_node** %t67, align 8
  %34 = load %union.tree_node*, %union.tree_node** %t67, align 8
  %tobool69 = icmp ne %union.tree_node* %34, null
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.then.66
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.then.66
  %35 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %moffsety, align 8
  %call72 = call %struct.rtx_def* @adjust_offset_for_component_ref(%union.tree_node* %35, %struct.rtx_def* %36)
  store %struct.rtx_def* %call72, %struct.rtx_def** %moffsety, align 8
  %37 = load %union.tree_node*, %union.tree_node** %t67, align 8
  store %union.tree_node* %37, %union.tree_node** %expry, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.71, %cond.end.59
  %38 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %common74 = bitcast %union.tree_node* %38 to %struct.tree_common*
  %code75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 2
  %bf.load76 = load i32, i32* %code75, align 8
  %bf.clear77 = and i32 %bf.load76, 255
  %idxprom = sext i32 %bf.clear77 to i64
  %arrayidx78 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %39 = load i8, i8* %arrayidx78, align 1
  %conv = sext i8 %39 to i32
  %cmp79 = icmp eq i32 %conv, 100
  br i1 %cmp79, label %lor.lhs.false.81, label %if.then.91

lor.lhs.false.81:                                 ; preds = %if.end.73
  %40 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %common82 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 2
  %bf.load84 = load i32, i32* %code83, align 8
  %bf.clear85 = and i32 %bf.load84, 255
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom86
  %41 = load i8, i8* %arrayidx87, align 1
  %conv88 = sext i8 %41 to i32
  %cmp89 = icmp eq i32 %conv88, 100
  br i1 %cmp89, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false.81, %if.end.73
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %lor.lhs.false.81
  %42 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %decl = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool93 = icmp ne %struct.rtx_def* %43, null
  br i1 %tobool93, label %cond.true.94, label %cond.false.97

cond.true.94:                                     ; preds = %if.end.92
  %44 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %decl95 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %rtl96 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl95, i32 0, i32 17
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtl96, align 8
  br label %cond.end.100

cond.false.97:                                    ; preds = %if.end.92
  %46 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  call void @make_decl_rtl(%union.tree_node* %46, i8* null)
  %47 = load %union.tree_node*, %union.tree_node** %exprx, align 8
  %decl98 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %rtl99 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl98, i32 0, i32 17
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtl99, align 8
  br label %cond.end.100

cond.end.100:                                     ; preds = %cond.false.97, %cond.true.94
  %cond101 = phi %struct.rtx_def* [ %45, %cond.true.94 ], [ %48, %cond.false.97 ]
  store %struct.rtx_def* %cond101, %struct.rtx_def** %rtlx, align 8
  %49 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %decl102 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %rtl103 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl102, i32 0, i32 17
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtl103, align 8
  %tobool104 = icmp ne %struct.rtx_def* %50, null
  br i1 %tobool104, label %cond.true.105, label %cond.false.108

cond.true.105:                                    ; preds = %cond.end.100
  %51 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %decl106 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %rtl107 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl106, i32 0, i32 17
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtl107, align 8
  br label %cond.end.111

cond.false.108:                                   ; preds = %cond.end.100
  %53 = load %union.tree_node*, %union.tree_node** %expry, align 8
  call void @make_decl_rtl(%union.tree_node* %53, i8* null)
  %54 = load %union.tree_node*, %union.tree_node** %expry, align 8
  %decl109 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %rtl110 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl109, i32 0, i32 17
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtl110, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.108, %cond.true.105
  %cond112 = phi %struct.rtx_def* [ %52, %cond.true.105 ], [ %55, %cond.false.108 ]
  store %struct.rtx_def* %cond112, %struct.rtx_def** %rtly, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load113 = load i32, i32* %57, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp ne i32 %bf.clear114, 66
  br i1 %cmp115, label %land.lhs.true.122, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %cond.end.111
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load118 = load i32, i32* %59, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp ne i32 %bf.clear119, 66
  br i1 %cmp120, label %land.lhs.true.122, label %if.end.126

land.lhs.true.122:                                ; preds = %lor.lhs.false.117, %cond.end.111
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %call123 = call i32 @rtx_equal_p(%struct.rtx_def* %60, %struct.rtx_def* %61)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.126, label %if.then.125

if.then.125:                                      ; preds = %land.lhs.true.122
  store i32 1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %land.lhs.true.122, %lor.lhs.false.117
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load127 = load i32, i32* %63, align 8
  %bf.clear128 = and i32 %bf.load127, 65535
  %cmp129 = icmp eq i32 %bf.clear128, 66
  br i1 %cmp129, label %cond.true.131, label %cond.false.134

cond.true.131:                                    ; preds = %if.end.126
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  br label %cond.end.135

cond.false.134:                                   ; preds = %if.end.126
  %66 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  br label %cond.end.135

cond.end.135:                                     ; preds = %cond.false.134, %cond.true.131
  %cond136 = phi %struct.rtx_def* [ %65, %cond.true.131 ], [ %66, %cond.false.134 ]
  store %struct.rtx_def* %cond136, %struct.rtx_def** %basex, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load137 = load i32, i32* %68, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  %cmp139 = icmp eq i32 %bf.clear138, 75
  br i1 %cmp139, label %land.lhs.true.141, label %if.end.158

land.lhs.true.141:                                ; preds = %cond.end.135
  %69 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load145 = load i32, i32* %71, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 54
  br i1 %cmp147, label %if.then.149, label %if.end.158

if.then.149:                                      ; preds = %land.lhs.true.141
  %72 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 1
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx154 to i64*
  %74 = load i64, i64* %rtwint, align 8
  store i64 %74, i64* %offsetx, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 0
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %basex, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.149, %land.lhs.true.141, %cond.end.135
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load159 = load i32, i32* %78, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 66
  br i1 %cmp161, label %cond.true.163, label %cond.false.167

cond.true.163:                                    ; preds = %if.end.158
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx166, align 8
  br label %cond.end.168

cond.false.167:                                   ; preds = %if.end.158
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  br label %cond.end.168

cond.end.168:                                     ; preds = %cond.false.167, %cond.true.163
  %cond169 = phi %struct.rtx_def* [ %80, %cond.true.163 ], [ %81, %cond.false.167 ]
  store %struct.rtx_def* %cond169, %struct.rtx_def** %basey, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load170 = load i32, i32* %83, align 8
  %bf.clear171 = and i32 %bf.load170, 65535
  %cmp172 = icmp eq i32 %bf.clear171, 75
  br i1 %cmp172, label %land.lhs.true.174, label %if.end.192

land.lhs.true.174:                                ; preds = %cond.end.168
  %84 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 1
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load178 = load i32, i32* %86, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  %cmp180 = icmp eq i32 %bf.clear179, 54
  br i1 %cmp180, label %if.then.182, label %if.end.192

if.then.182:                                      ; preds = %land.lhs.true.174
  %87 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 1
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtwint188 = bitcast %union.rtunion_def* %arrayidx187 to i64*
  %89 = load i64, i64* %rtwint188, align 8
  store i64 %89, i64* %offsety, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %basey, align 8
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.182, %land.lhs.true.174, %cond.end.168
  %92 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %call193 = call i32 @rtx_equal_p(%struct.rtx_def* %92, %struct.rtx_def* %93)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.end.436, label %if.then.195

if.then.195:                                      ; preds = %if.end.192
  %94 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load196 = load i32, i32* %95, align 8
  %bf.clear197 = and i32 %bf.load196, 65535
  %cmp198 = icmp eq i32 %bf.clear197, 67
  br i1 %cmp198, label %land.lhs.true.235, label %lor.lhs.false.200

lor.lhs.false.200:                                ; preds = %if.then.195
  %96 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %97 = bitcast %struct.rtx_def* %96 to i32*
  %bf.load201 = load i32, i32* %97, align 8
  %bf.clear202 = and i32 %bf.load201, 65535
  %cmp203 = icmp eq i32 %bf.clear202, 68
  br i1 %cmp203, label %land.lhs.true.235, label %lor.lhs.false.205

lor.lhs.false.205:                                ; preds = %lor.lhs.false.200
  %98 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load206 = load i32, i32* %99, align 8
  %bf.clear207 = and i32 %bf.load206, 65535
  %cmp208 = icmp eq i32 %bf.clear207, 54
  br i1 %cmp208, label %land.lhs.true.235, label %lor.lhs.false.210

lor.lhs.false.210:                                ; preds = %lor.lhs.false.205
  %100 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load211 = load i32, i32* %101, align 8
  %bf.clear212 = and i32 %bf.load211, 65535
  %cmp213 = icmp eq i32 %bf.clear212, 55
  br i1 %cmp213, label %land.lhs.true.235, label %lor.lhs.false.215

lor.lhs.false.215:                                ; preds = %lor.lhs.false.210
  %102 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load216 = load i32, i32* %103, align 8
  %bf.clear217 = and i32 %bf.load216, 65535
  %cmp218 = icmp eq i32 %bf.clear217, 58
  br i1 %cmp218, label %land.lhs.true.235, label %lor.lhs.false.220

lor.lhs.false.220:                                ; preds = %lor.lhs.false.215
  %104 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load221 = load i32, i32* %105, align 8
  %bf.clear222 = and i32 %bf.load221, 65535
  %cmp223 = icmp eq i32 %bf.clear222, 134
  br i1 %cmp223, label %land.lhs.true.235, label %lor.lhs.false.225

lor.lhs.false.225:                                ; preds = %lor.lhs.false.220
  %106 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load226 = load i32, i32* %107, align 8
  %bf.clear227 = and i32 %bf.load226, 65535
  %cmp228 = icmp eq i32 %bf.clear227, 56
  br i1 %cmp228, label %land.lhs.true.235, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %lor.lhs.false.225
  %108 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %109 = bitcast %struct.rtx_def* %108 to i32*
  %bf.load231 = load i32, i32* %109, align 8
  %bf.clear232 = and i32 %bf.load231, 65535
  %cmp233 = icmp eq i32 %bf.clear232, 140
  br i1 %cmp233, label %land.lhs.true.235, label %lor.lhs.false.275

land.lhs.true.235:                                ; preds = %lor.lhs.false.230, %lor.lhs.false.225, %lor.lhs.false.220, %lor.lhs.false.215, %lor.lhs.false.210, %lor.lhs.false.205, %lor.lhs.false.200, %if.then.195
  %110 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load236 = load i32, i32* %111, align 8
  %bf.clear237 = and i32 %bf.load236, 65535
  %cmp238 = icmp eq i32 %bf.clear237, 67
  br i1 %cmp238, label %lor.end.435, label %lor.lhs.false.240

lor.lhs.false.240:                                ; preds = %land.lhs.true.235
  %112 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load241 = load i32, i32* %113, align 8
  %bf.clear242 = and i32 %bf.load241, 65535
  %cmp243 = icmp eq i32 %bf.clear242, 68
  br i1 %cmp243, label %lor.end.435, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %lor.lhs.false.240
  %114 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load246 = load i32, i32* %115, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp eq i32 %bf.clear247, 54
  br i1 %cmp248, label %lor.end.435, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %lor.lhs.false.245
  %116 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load251 = load i32, i32* %117, align 8
  %bf.clear252 = and i32 %bf.load251, 65535
  %cmp253 = icmp eq i32 %bf.clear252, 55
  br i1 %cmp253, label %lor.end.435, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %lor.lhs.false.250
  %118 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load256 = load i32, i32* %119, align 8
  %bf.clear257 = and i32 %bf.load256, 65535
  %cmp258 = icmp eq i32 %bf.clear257, 58
  br i1 %cmp258, label %lor.end.435, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %lor.lhs.false.255
  %120 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load261 = load i32, i32* %121, align 8
  %bf.clear262 = and i32 %bf.load261, 65535
  %cmp263 = icmp eq i32 %bf.clear262, 134
  br i1 %cmp263, label %lor.end.435, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %lor.lhs.false.260
  %122 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load266 = load i32, i32* %123, align 8
  %bf.clear267 = and i32 %bf.load266, 65535
  %cmp268 = icmp eq i32 %bf.clear267, 56
  br i1 %cmp268, label %lor.end.435, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %lor.lhs.false.265
  %124 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load271 = load i32, i32* %125, align 8
  %bf.clear272 = and i32 %bf.load271, 65535
  %cmp273 = icmp eq i32 %bf.clear272, 140
  br i1 %cmp273, label %lor.end.435, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %lor.lhs.false.270, %lor.lhs.false.230
  %126 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load276 = load i32, i32* %127, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 67
  br i1 %cmp278, label %land.lhs.true.315, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %lor.lhs.false.275
  %128 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load281 = load i32, i32* %129, align 8
  %bf.clear282 = and i32 %bf.load281, 65535
  %cmp283 = icmp eq i32 %bf.clear282, 68
  br i1 %cmp283, label %land.lhs.true.315, label %lor.lhs.false.285

lor.lhs.false.285:                                ; preds = %lor.lhs.false.280
  %130 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load286 = load i32, i32* %131, align 8
  %bf.clear287 = and i32 %bf.load286, 65535
  %cmp288 = icmp eq i32 %bf.clear287, 54
  br i1 %cmp288, label %land.lhs.true.315, label %lor.lhs.false.290

lor.lhs.false.290:                                ; preds = %lor.lhs.false.285
  %132 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load291 = load i32, i32* %133, align 8
  %bf.clear292 = and i32 %bf.load291, 65535
  %cmp293 = icmp eq i32 %bf.clear292, 55
  br i1 %cmp293, label %land.lhs.true.315, label %lor.lhs.false.295

lor.lhs.false.295:                                ; preds = %lor.lhs.false.290
  %134 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load296 = load i32, i32* %135, align 8
  %bf.clear297 = and i32 %bf.load296, 65535
  %cmp298 = icmp eq i32 %bf.clear297, 58
  br i1 %cmp298, label %land.lhs.true.315, label %lor.lhs.false.300

lor.lhs.false.300:                                ; preds = %lor.lhs.false.295
  %136 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load301 = load i32, i32* %137, align 8
  %bf.clear302 = and i32 %bf.load301, 65535
  %cmp303 = icmp eq i32 %bf.clear302, 134
  br i1 %cmp303, label %land.lhs.true.315, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %lor.lhs.false.300
  %138 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load306 = load i32, i32* %139, align 8
  %bf.clear307 = and i32 %bf.load306, 65535
  %cmp308 = icmp eq i32 %bf.clear307, 56
  br i1 %cmp308, label %land.lhs.true.315, label %lor.lhs.false.310

lor.lhs.false.310:                                ; preds = %lor.lhs.false.305
  %140 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load311 = load i32, i32* %141, align 8
  %bf.clear312 = and i32 %bf.load311, 65535
  %cmp313 = icmp eq i32 %bf.clear312, 140
  br i1 %cmp313, label %land.lhs.true.315, label %lor.rhs

land.lhs.true.315:                                ; preds = %lor.lhs.false.310, %lor.lhs.false.305, %lor.lhs.false.300, %lor.lhs.false.295, %lor.lhs.false.290, %lor.lhs.false.285, %lor.lhs.false.280, %lor.lhs.false.275
  %142 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load316 = load i32, i32* %143, align 8
  %bf.clear317 = and i32 %bf.load316, 65535
  %cmp318 = icmp eq i32 %bf.clear317, 61
  br i1 %cmp318, label %land.lhs.true.320, label %lor.rhs

land.lhs.true.320:                                ; preds = %land.lhs.true.315
  %144 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx322 to i32*
  %145 = load i32, i32* %rtuint, align 4
  %cmp323 = icmp eq i32 %145, 7
  br i1 %cmp323, label %lor.end.435, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %land.lhs.true.320
  %146 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 0
  %rtuint328 = bitcast %union.rtunion_def* %arrayidx327 to i32*
  %147 = load i32, i32* %rtuint328, align 4
  %cmp329 = icmp eq i32 %147, 20
  br i1 %cmp329, label %lor.end.435, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %lor.lhs.false.325
  %148 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld332 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx333 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld332, i32 0, i64 0
  %rtuint334 = bitcast %union.rtunion_def* %arrayidx333 to i32*
  %149 = load i32, i32* %rtuint334, align 4
  %cmp335 = icmp eq i32 %149, 6
  br i1 %cmp335, label %lor.end.435, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %lor.lhs.false.331
  %150 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld338 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx339 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld338, i32 0, i64 0
  %rtuint340 = bitcast %union.rtunion_def* %arrayidx339 to i32*
  %151 = load i32, i32* %rtuint340, align 4
  %cmp341 = icmp eq i32 %151, 16
  br i1 %cmp341, label %lor.end.435, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %lor.lhs.false.337
  %152 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 0
  %rtuint346 = bitcast %union.rtunion_def* %arrayidx345 to i32*
  %153 = load i32, i32* %rtuint346, align 4
  %cmp347 = icmp uge i32 %153, 53
  br i1 %cmp347, label %land.lhs.true.349, label %lor.rhs

land.lhs.true.349:                                ; preds = %lor.lhs.false.343
  %154 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %fld350 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx351 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld350, i32 0, i64 0
  %rtuint352 = bitcast %union.rtunion_def* %arrayidx351 to i32*
  %155 = load i32, i32* %rtuint352, align 4
  %cmp353 = icmp ule i32 %155, 57
  br i1 %cmp353, label %lor.end.435, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.349, %lor.lhs.false.343, %land.lhs.true.315, %lor.lhs.false.310
  %156 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load355 = load i32, i32* %157, align 8
  %bf.clear356 = and i32 %bf.load355, 65535
  %cmp357 = icmp eq i32 %bf.clear356, 67
  br i1 %cmp357, label %land.lhs.true.394, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %lor.rhs
  %158 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load360 = load i32, i32* %159, align 8
  %bf.clear361 = and i32 %bf.load360, 65535
  %cmp362 = icmp eq i32 %bf.clear361, 68
  br i1 %cmp362, label %land.lhs.true.394, label %lor.lhs.false.364

lor.lhs.false.364:                                ; preds = %lor.lhs.false.359
  %160 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load365 = load i32, i32* %161, align 8
  %bf.clear366 = and i32 %bf.load365, 65535
  %cmp367 = icmp eq i32 %bf.clear366, 54
  br i1 %cmp367, label %land.lhs.true.394, label %lor.lhs.false.369

lor.lhs.false.369:                                ; preds = %lor.lhs.false.364
  %162 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load370 = load i32, i32* %163, align 8
  %bf.clear371 = and i32 %bf.load370, 65535
  %cmp372 = icmp eq i32 %bf.clear371, 55
  br i1 %cmp372, label %land.lhs.true.394, label %lor.lhs.false.374

lor.lhs.false.374:                                ; preds = %lor.lhs.false.369
  %164 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load375 = load i32, i32* %165, align 8
  %bf.clear376 = and i32 %bf.load375, 65535
  %cmp377 = icmp eq i32 %bf.clear376, 58
  br i1 %cmp377, label %land.lhs.true.394, label %lor.lhs.false.379

lor.lhs.false.379:                                ; preds = %lor.lhs.false.374
  %166 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load380 = load i32, i32* %167, align 8
  %bf.clear381 = and i32 %bf.load380, 65535
  %cmp382 = icmp eq i32 %bf.clear381, 134
  br i1 %cmp382, label %land.lhs.true.394, label %lor.lhs.false.384

lor.lhs.false.384:                                ; preds = %lor.lhs.false.379
  %168 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %169 = bitcast %struct.rtx_def* %168 to i32*
  %bf.load385 = load i32, i32* %169, align 8
  %bf.clear386 = and i32 %bf.load385, 65535
  %cmp387 = icmp eq i32 %bf.clear386, 56
  br i1 %cmp387, label %land.lhs.true.394, label %lor.lhs.false.389

lor.lhs.false.389:                                ; preds = %lor.lhs.false.384
  %170 = load %struct.rtx_def*, %struct.rtx_def** %basey, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load390 = load i32, i32* %171, align 8
  %bf.clear391 = and i32 %bf.load390, 65535
  %cmp392 = icmp eq i32 %bf.clear391, 140
  br i1 %cmp392, label %land.lhs.true.394, label %land.end.434

land.lhs.true.394:                                ; preds = %lor.lhs.false.389, %lor.lhs.false.384, %lor.lhs.false.379, %lor.lhs.false.374, %lor.lhs.false.369, %lor.lhs.false.364, %lor.lhs.false.359, %lor.rhs
  %172 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load395 = load i32, i32* %173, align 8
  %bf.clear396 = and i32 %bf.load395, 65535
  %cmp397 = icmp eq i32 %bf.clear396, 61
  br i1 %cmp397, label %land.rhs, label %land.end.434

land.rhs:                                         ; preds = %land.lhs.true.394
  %174 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld399, i32 0, i64 0
  %rtuint401 = bitcast %union.rtunion_def* %arrayidx400 to i32*
  %175 = load i32, i32* %rtuint401, align 4
  %cmp402 = icmp eq i32 %175, 7
  br i1 %cmp402, label %lor.end, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %land.rhs
  %176 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld405 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx406 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld405, i32 0, i64 0
  %rtuint407 = bitcast %union.rtunion_def* %arrayidx406 to i32*
  %177 = load i32, i32* %rtuint407, align 4
  %cmp408 = icmp eq i32 %177, 20
  br i1 %cmp408, label %lor.end, label %lor.lhs.false.410

lor.lhs.false.410:                                ; preds = %lor.lhs.false.404
  %178 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld411 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx412 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld411, i32 0, i64 0
  %rtuint413 = bitcast %union.rtunion_def* %arrayidx412 to i32*
  %179 = load i32, i32* %rtuint413, align 4
  %cmp414 = icmp eq i32 %179, 6
  br i1 %cmp414, label %lor.end, label %lor.lhs.false.416

lor.lhs.false.416:                                ; preds = %lor.lhs.false.410
  %180 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld417 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx418 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld417, i32 0, i64 0
  %rtuint419 = bitcast %union.rtunion_def* %arrayidx418 to i32*
  %181 = load i32, i32* %rtuint419, align 4
  %cmp420 = icmp eq i32 %181, 16
  br i1 %cmp420, label %lor.end, label %lor.rhs.422

lor.rhs.422:                                      ; preds = %lor.lhs.false.416
  %182 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld423 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx424 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld423, i32 0, i64 0
  %rtuint425 = bitcast %union.rtunion_def* %arrayidx424 to i32*
  %183 = load i32, i32* %rtuint425, align 4
  %cmp426 = icmp uge i32 %183, 53
  br i1 %cmp426, label %land.rhs.428, label %land.end

land.rhs.428:                                     ; preds = %lor.rhs.422
  %184 = load %struct.rtx_def*, %struct.rtx_def** %basex, align 8
  %fld429 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx430 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld429, i32 0, i64 0
  %rtuint431 = bitcast %union.rtunion_def* %arrayidx430 to i32*
  %185 = load i32, i32* %rtuint431, align 4
  %cmp432 = icmp ule i32 %185, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs.428, %lor.rhs.422
  %186 = phi i1 [ false, %lor.rhs.422 ], [ %cmp432, %land.rhs.428 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %lor.lhs.false.416, %lor.lhs.false.410, %lor.lhs.false.404, %land.rhs
  %187 = phi i1 [ true, %lor.lhs.false.416 ], [ true, %lor.lhs.false.410 ], [ true, %lor.lhs.false.404 ], [ true, %land.rhs ], [ %186, %land.end ]
  br label %land.end.434

land.end.434:                                     ; preds = %lor.end, %land.lhs.true.394, %lor.lhs.false.389
  %188 = phi i1 [ false, %land.lhs.true.394 ], [ false, %lor.lhs.false.389 ], [ %187, %lor.end ]
  br label %lor.end.435

lor.end.435:                                      ; preds = %land.end.434, %land.lhs.true.349, %lor.lhs.false.337, %lor.lhs.false.331, %lor.lhs.false.325, %land.lhs.true.320, %lor.lhs.false.270, %lor.lhs.false.265, %lor.lhs.false.260, %lor.lhs.false.255, %lor.lhs.false.250, %lor.lhs.false.245, %lor.lhs.false.240, %land.lhs.true.235
  %189 = phi i1 [ true, %land.lhs.true.349 ], [ true, %lor.lhs.false.337 ], [ true, %lor.lhs.false.331 ], [ true, %lor.lhs.false.325 ], [ true, %land.lhs.true.320 ], [ true, %lor.lhs.false.270 ], [ true, %lor.lhs.false.265 ], [ true, %lor.lhs.false.260 ], [ true, %lor.lhs.false.255 ], [ true, %lor.lhs.false.250 ], [ true, %lor.lhs.false.245 ], [ true, %lor.lhs.false.240 ], [ true, %land.lhs.true.235 ], [ %188, %land.end.434 ]
  %lor.ext = zext i1 %189 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.436:                                       ; preds = %if.end.192
  %190 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %191 = bitcast %struct.rtx_def* %190 to i32*
  %bf.load437 = load i32, i32* %191, align 8
  %bf.clear438 = and i32 %bf.load437, 65535
  %cmp439 = icmp ne i32 %bf.clear438, 66
  br i1 %cmp439, label %cond.true.441, label %cond.false.448

cond.true.441:                                    ; preds = %if.end.436
  %192 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load442 = load i32, i32* %193, align 8
  %bf.lshr = lshr i32 %bf.load442, 16
  %bf.clear443 = and i32 %bf.lshr, 255
  %idxprom444 = sext i32 %bf.clear443 to i64
  %arrayidx445 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom444
  %194 = load i8, i8* %arrayidx445, align 1
  %conv446 = zext i8 %194 to i32
  %conv447 = sext i32 %conv446 to i64
  br label %cond.end.511

cond.false.448:                                   ; preds = %if.end.436
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 1
  %rtmem451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.mem_attrs**
  %196 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem451, align 8
  %cmp452 = icmp ne %struct.mem_attrs* %196, null
  br i1 %cmp452, label %cond.true.454, label %cond.false.459

cond.true.454:                                    ; preds = %cond.false.448
  %197 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %fld455 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx456 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld455, i32 0, i64 1
  %rtmem457 = bitcast %union.rtunion_def* %arrayidx456 to %struct.mem_attrs**
  %198 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem457, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %198, i32 0, i32 3
  %199 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %tobool458 = icmp ne %struct.rtx_def* %199, null
  br i1 %tobool458, label %cond.true.475, label %cond.false.508

cond.false.459:                                   ; preds = %cond.false.448
  %200 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %201 = bitcast %struct.rtx_def* %200 to i32*
  %bf.load460 = load i32, i32* %201, align 8
  %bf.lshr461 = lshr i32 %bf.load460, 16
  %bf.clear462 = and i32 %bf.lshr461, 255
  %cmp463 = icmp ne i32 %bf.clear462, 51
  br i1 %cmp463, label %cond.true.465, label %cond.false.474

cond.true.465:                                    ; preds = %cond.false.459
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load466 = load i32, i32* %203, align 8
  %bf.lshr467 = lshr i32 %bf.load466, 16
  %bf.clear468 = and i32 %bf.lshr467, 255
  %idxprom469 = sext i32 %bf.clear468 to i64
  %arrayidx470 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom469
  %204 = load i8, i8* %arrayidx470, align 1
  %conv471 = zext i8 %204 to i64
  %call472 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv471)
  %tobool473 = icmp ne %struct.rtx_def* %call472, null
  br i1 %tobool473, label %cond.true.475, label %cond.false.508

cond.false.474:                                   ; preds = %cond.false.459
  br i1 false, label %cond.true.475, label %cond.false.508

cond.true.475:                                    ; preds = %cond.false.474, %cond.true.465, %cond.true.454
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %fld476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld476, i32 0, i64 1
  %rtmem478 = bitcast %union.rtunion_def* %arrayidx477 to %struct.mem_attrs**
  %206 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem478, align 8
  %cmp479 = icmp ne %struct.mem_attrs* %206, null
  br i1 %cmp479, label %cond.true.481, label %cond.false.486

cond.true.481:                                    ; preds = %cond.true.475
  %207 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %fld482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %207, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld482, i32 0, i64 1
  %rtmem484 = bitcast %union.rtunion_def* %arrayidx483 to %struct.mem_attrs**
  %208 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem484, align 8
  %size485 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %208, i32 0, i32 3
  %209 = load %struct.rtx_def*, %struct.rtx_def** %size485, align 8
  br label %cond.end.503

cond.false.486:                                   ; preds = %cond.true.475
  %210 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load487 = load i32, i32* %211, align 8
  %bf.lshr488 = lshr i32 %bf.load487, 16
  %bf.clear489 = and i32 %bf.lshr488, 255
  %cmp490 = icmp ne i32 %bf.clear489, 51
  br i1 %cmp490, label %cond.true.492, label %cond.false.500

cond.true.492:                                    ; preds = %cond.false.486
  %212 = load %struct.rtx_def*, %struct.rtx_def** %rtlx, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load493 = load i32, i32* %213, align 8
  %bf.lshr494 = lshr i32 %bf.load493, 16
  %bf.clear495 = and i32 %bf.lshr494, 255
  %idxprom496 = sext i32 %bf.clear495 to i64
  %arrayidx497 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom496
  %214 = load i8, i8* %arrayidx497, align 1
  %conv498 = zext i8 %214 to i64
  %call499 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv498)
  br label %cond.end.501

cond.false.500:                                   ; preds = %cond.false.486
  br label %cond.end.501

cond.end.501:                                     ; preds = %cond.false.500, %cond.true.492
  %cond502 = phi %struct.rtx_def* [ %call499, %cond.true.492 ], [ null, %cond.false.500 ]
  br label %cond.end.503

cond.end.503:                                     ; preds = %cond.end.501, %cond.true.481
  %cond504 = phi %struct.rtx_def* [ %209, %cond.true.481 ], [ %cond502, %cond.end.501 ]
  %fld505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond504, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld505, i32 0, i64 0
  %rtwint507 = bitcast %union.rtunion_def* %arrayidx506 to i64*
  %215 = load i64, i64* %rtwint507, align 8
  br label %cond.end.509

cond.false.508:                                   ; preds = %cond.false.474, %cond.true.465, %cond.true.454
  br label %cond.end.509

cond.end.509:                                     ; preds = %cond.false.508, %cond.end.503
  %cond510 = phi i64 [ %215, %cond.end.503 ], [ -1, %cond.false.508 ]
  br label %cond.end.511

cond.end.511:                                     ; preds = %cond.end.509, %cond.true.441
  %cond512 = phi i64 [ %conv447, %cond.true.441 ], [ %cond510, %cond.end.509 ]
  store i64 %cond512, i64* %sizex, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %217 = bitcast %struct.rtx_def* %216 to i32*
  %bf.load513 = load i32, i32* %217, align 8
  %bf.clear514 = and i32 %bf.load513, 65535
  %cmp515 = icmp ne i32 %bf.clear514, 66
  br i1 %cmp515, label %cond.true.517, label %cond.false.525

cond.true.517:                                    ; preds = %cond.end.511
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %219 = bitcast %struct.rtx_def* %218 to i32*
  %bf.load518 = load i32, i32* %219, align 8
  %bf.lshr519 = lshr i32 %bf.load518, 16
  %bf.clear520 = and i32 %bf.lshr519, 255
  %idxprom521 = sext i32 %bf.clear520 to i64
  %arrayidx522 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom521
  %220 = load i8, i8* %arrayidx522, align 1
  %conv523 = zext i8 %220 to i32
  %conv524 = sext i32 %conv523 to i64
  br label %cond.end.589

cond.false.525:                                   ; preds = %cond.end.511
  %221 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %fld526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %221, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld526, i32 0, i64 1
  %rtmem528 = bitcast %union.rtunion_def* %arrayidx527 to %struct.mem_attrs**
  %222 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem528, align 8
  %cmp529 = icmp ne %struct.mem_attrs* %222, null
  br i1 %cmp529, label %cond.true.531, label %cond.false.537

cond.true.531:                                    ; preds = %cond.false.525
  %223 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %223, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 1
  %rtmem534 = bitcast %union.rtunion_def* %arrayidx533 to %struct.mem_attrs**
  %224 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem534, align 8
  %size535 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %224, i32 0, i32 3
  %225 = load %struct.rtx_def*, %struct.rtx_def** %size535, align 8
  %tobool536 = icmp ne %struct.rtx_def* %225, null
  br i1 %tobool536, label %cond.true.553, label %cond.false.586

cond.false.537:                                   ; preds = %cond.false.525
  %226 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load538 = load i32, i32* %227, align 8
  %bf.lshr539 = lshr i32 %bf.load538, 16
  %bf.clear540 = and i32 %bf.lshr539, 255
  %cmp541 = icmp ne i32 %bf.clear540, 51
  br i1 %cmp541, label %cond.true.543, label %cond.false.552

cond.true.543:                                    ; preds = %cond.false.537
  %228 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load544 = load i32, i32* %229, align 8
  %bf.lshr545 = lshr i32 %bf.load544, 16
  %bf.clear546 = and i32 %bf.lshr545, 255
  %idxprom547 = sext i32 %bf.clear546 to i64
  %arrayidx548 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom547
  %230 = load i8, i8* %arrayidx548, align 1
  %conv549 = zext i8 %230 to i64
  %call550 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv549)
  %tobool551 = icmp ne %struct.rtx_def* %call550, null
  br i1 %tobool551, label %cond.true.553, label %cond.false.586

cond.false.552:                                   ; preds = %cond.false.537
  br i1 false, label %cond.true.553, label %cond.false.586

cond.true.553:                                    ; preds = %cond.false.552, %cond.true.543, %cond.true.531
  %231 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %fld554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %231, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld554, i32 0, i64 1
  %rtmem556 = bitcast %union.rtunion_def* %arrayidx555 to %struct.mem_attrs**
  %232 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem556, align 8
  %cmp557 = icmp ne %struct.mem_attrs* %232, null
  br i1 %cmp557, label %cond.true.559, label %cond.false.564

cond.true.559:                                    ; preds = %cond.true.553
  %233 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %fld560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx561 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld560, i32 0, i64 1
  %rtmem562 = bitcast %union.rtunion_def* %arrayidx561 to %struct.mem_attrs**
  %234 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem562, align 8
  %size563 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %234, i32 0, i32 3
  %235 = load %struct.rtx_def*, %struct.rtx_def** %size563, align 8
  br label %cond.end.581

cond.false.564:                                   ; preds = %cond.true.553
  %236 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load565 = load i32, i32* %237, align 8
  %bf.lshr566 = lshr i32 %bf.load565, 16
  %bf.clear567 = and i32 %bf.lshr566, 255
  %cmp568 = icmp ne i32 %bf.clear567, 51
  br i1 %cmp568, label %cond.true.570, label %cond.false.578

cond.true.570:                                    ; preds = %cond.false.564
  %238 = load %struct.rtx_def*, %struct.rtx_def** %rtly, align 8
  %239 = bitcast %struct.rtx_def* %238 to i32*
  %bf.load571 = load i32, i32* %239, align 8
  %bf.lshr572 = lshr i32 %bf.load571, 16
  %bf.clear573 = and i32 %bf.lshr572, 255
  %idxprom574 = sext i32 %bf.clear573 to i64
  %arrayidx575 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom574
  %240 = load i8, i8* %arrayidx575, align 1
  %conv576 = zext i8 %240 to i64
  %call577 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv576)
  br label %cond.end.579

cond.false.578:                                   ; preds = %cond.false.564
  br label %cond.end.579

cond.end.579:                                     ; preds = %cond.false.578, %cond.true.570
  %cond580 = phi %struct.rtx_def* [ %call577, %cond.true.570 ], [ null, %cond.false.578 ]
  br label %cond.end.581

cond.end.581:                                     ; preds = %cond.end.579, %cond.true.559
  %cond582 = phi %struct.rtx_def* [ %235, %cond.true.559 ], [ %cond580, %cond.end.579 ]
  %fld583 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond582, i32 0, i32 1
  %arrayidx584 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld583, i32 0, i64 0
  %rtwint585 = bitcast %union.rtunion_def* %arrayidx584 to i64*
  %241 = load i64, i64* %rtwint585, align 8
  br label %cond.end.587

cond.false.586:                                   ; preds = %cond.false.552, %cond.true.543, %cond.true.531
  br label %cond.end.587

cond.end.587:                                     ; preds = %cond.false.586, %cond.end.581
  %cond588 = phi i64 [ %241, %cond.end.581 ], [ -1, %cond.false.586 ]
  br label %cond.end.589

cond.end.589:                                     ; preds = %cond.end.587, %cond.true.517
  %cond590 = phi i64 [ %conv524, %cond.true.517 ], [ %cond588, %cond.end.587 ]
  store i64 %cond590, i64* %sizey, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** %moffsetx, align 8
  %tobool591 = icmp ne %struct.rtx_def* %242, null
  br i1 %tobool591, label %if.then.592, label %if.end.599

if.then.592:                                      ; preds = %cond.end.589
  %243 = load %struct.rtx_def*, %struct.rtx_def** %moffsetx, align 8
  %fld593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld593, i32 0, i64 0
  %rtwint595 = bitcast %union.rtunion_def* %arrayidx594 to i64*
  %244 = load i64, i64* %rtwint595, align 8
  %245 = load i64, i64* %offsetx, align 8
  %add = add nsw i64 %245, %244
  store i64 %add, i64* %offsetx, align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** %moffsetx, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 0
  %rtwint598 = bitcast %union.rtunion_def* %arrayidx597 to i64*
  %247 = load i64, i64* %rtwint598, align 8
  %248 = load i64, i64* %sizex, align 8
  %sub = sub nsw i64 %248, %247
  store i64 %sub, i64* %sizex, align 8
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.592, %cond.end.589
  %249 = load %struct.rtx_def*, %struct.rtx_def** %moffsety, align 8
  %tobool600 = icmp ne %struct.rtx_def* %249, null
  br i1 %tobool600, label %if.then.601, label %if.end.610

if.then.601:                                      ; preds = %if.end.599
  %250 = load %struct.rtx_def*, %struct.rtx_def** %moffsety, align 8
  %fld602 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx603 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld602, i32 0, i64 0
  %rtwint604 = bitcast %union.rtunion_def* %arrayidx603 to i64*
  %251 = load i64, i64* %rtwint604, align 8
  %252 = load i64, i64* %offsety, align 8
  %add605 = add nsw i64 %252, %251
  store i64 %add605, i64* %offsety, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %moffsety, align 8
  %fld606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld606, i32 0, i64 0
  %rtwint608 = bitcast %union.rtunion_def* %arrayidx607 to i64*
  %254 = load i64, i64* %rtwint608, align 8
  %255 = load i64, i64* %sizey, align 8
  %sub609 = sub nsw i64 %255, %254
  store i64 %sub609, i64* %sizey, align 8
  br label %if.end.610

if.end.610:                                       ; preds = %if.then.601, %if.end.599
  %256 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld611, i32 0, i64 1
  %rtmem613 = bitcast %union.rtunion_def* %arrayidx612 to %struct.mem_attrs**
  %257 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem613, align 8
  %cmp614 = icmp ne %struct.mem_attrs* %257, null
  br i1 %cmp614, label %cond.true.616, label %cond.false.622

cond.true.616:                                    ; preds = %if.end.610
  %258 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld617 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx618 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld617, i32 0, i64 1
  %rtmem619 = bitcast %union.rtunion_def* %arrayidx618 to %struct.mem_attrs**
  %259 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem619, align 8
  %size620 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %259, i32 0, i32 3
  %260 = load %struct.rtx_def*, %struct.rtx_def** %size620, align 8
  %tobool621 = icmp ne %struct.rtx_def* %260, null
  br i1 %tobool621, label %land.lhs.true.638, label %if.end.673

cond.false.622:                                   ; preds = %if.end.610
  %261 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %262 = bitcast %struct.rtx_def* %261 to i32*
  %bf.load623 = load i32, i32* %262, align 8
  %bf.lshr624 = lshr i32 %bf.load623, 16
  %bf.clear625 = and i32 %bf.lshr624, 255
  %cmp626 = icmp ne i32 %bf.clear625, 51
  br i1 %cmp626, label %cond.true.628, label %cond.false.637

cond.true.628:                                    ; preds = %cond.false.622
  %263 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %264 = bitcast %struct.rtx_def* %263 to i32*
  %bf.load629 = load i32, i32* %264, align 8
  %bf.lshr630 = lshr i32 %bf.load629, 16
  %bf.clear631 = and i32 %bf.lshr630, 255
  %idxprom632 = sext i32 %bf.clear631 to i64
  %arrayidx633 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom632
  %265 = load i8, i8* %arrayidx633, align 1
  %conv634 = zext i8 %265 to i64
  %call635 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv634)
  %tobool636 = icmp ne %struct.rtx_def* %call635, null
  br i1 %tobool636, label %land.lhs.true.638, label %if.end.673

cond.false.637:                                   ; preds = %cond.false.622
  br i1 false, label %land.lhs.true.638, label %if.end.673

land.lhs.true.638:                                ; preds = %cond.false.637, %cond.true.628, %cond.true.616
  %266 = load %struct.rtx_def*, %struct.rtx_def** %moffsetx, align 8
  %tobool639 = icmp ne %struct.rtx_def* %266, null
  br i1 %tobool639, label %if.then.640, label %if.end.673

if.then.640:                                      ; preds = %land.lhs.true.638
  %267 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld641 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx642 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld641, i32 0, i64 1
  %rtmem643 = bitcast %union.rtunion_def* %arrayidx642 to %struct.mem_attrs**
  %268 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem643, align 8
  %cmp644 = icmp ne %struct.mem_attrs* %268, null
  br i1 %cmp644, label %cond.true.646, label %cond.false.651

cond.true.646:                                    ; preds = %if.then.640
  %269 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld647 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx648 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld647, i32 0, i64 1
  %rtmem649 = bitcast %union.rtunion_def* %arrayidx648 to %struct.mem_attrs**
  %270 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem649, align 8
  %size650 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %270, i32 0, i32 3
  %271 = load %struct.rtx_def*, %struct.rtx_def** %size650, align 8
  br label %cond.end.668

cond.false.651:                                   ; preds = %if.then.640
  %272 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load652 = load i32, i32* %273, align 8
  %bf.lshr653 = lshr i32 %bf.load652, 16
  %bf.clear654 = and i32 %bf.lshr653, 255
  %cmp655 = icmp ne i32 %bf.clear654, 51
  br i1 %cmp655, label %cond.true.657, label %cond.false.665

cond.true.657:                                    ; preds = %cond.false.651
  %274 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %275 = bitcast %struct.rtx_def* %274 to i32*
  %bf.load658 = load i32, i32* %275, align 8
  %bf.lshr659 = lshr i32 %bf.load658, 16
  %bf.clear660 = and i32 %bf.lshr659, 255
  %idxprom661 = sext i32 %bf.clear660 to i64
  %arrayidx662 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom661
  %276 = load i8, i8* %arrayidx662, align 1
  %conv663 = zext i8 %276 to i64
  %call664 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv663)
  br label %cond.end.666

cond.false.665:                                   ; preds = %cond.false.651
  br label %cond.end.666

cond.end.666:                                     ; preds = %cond.false.665, %cond.true.657
  %cond667 = phi %struct.rtx_def* [ %call664, %cond.true.657 ], [ null, %cond.false.665 ]
  br label %cond.end.668

cond.end.668:                                     ; preds = %cond.end.666, %cond.true.646
  %cond669 = phi %struct.rtx_def* [ %271, %cond.true.646 ], [ %cond667, %cond.end.666 ]
  %fld670 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond669, i32 0, i32 1
  %arrayidx671 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld670, i32 0, i64 0
  %rtwint672 = bitcast %union.rtunion_def* %arrayidx671 to i64*
  %277 = load i64, i64* %rtwint672, align 8
  store i64 %277, i64* %sizex, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %cond.end.668, %land.lhs.true.638, %cond.false.637, %cond.true.628, %cond.true.616
  %278 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld674 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx675 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld674, i32 0, i64 1
  %rtmem676 = bitcast %union.rtunion_def* %arrayidx675 to %struct.mem_attrs**
  %279 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem676, align 8
  %cmp677 = icmp ne %struct.mem_attrs* %279, null
  br i1 %cmp677, label %cond.true.679, label %cond.false.685

cond.true.679:                                    ; preds = %if.end.673
  %280 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld680 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx681 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld680, i32 0, i64 1
  %rtmem682 = bitcast %union.rtunion_def* %arrayidx681 to %struct.mem_attrs**
  %281 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem682, align 8
  %size683 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %281, i32 0, i32 3
  %282 = load %struct.rtx_def*, %struct.rtx_def** %size683, align 8
  %tobool684 = icmp ne %struct.rtx_def* %282, null
  br i1 %tobool684, label %land.lhs.true.701, label %if.end.736

cond.false.685:                                   ; preds = %if.end.673
  %283 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %284 = bitcast %struct.rtx_def* %283 to i32*
  %bf.load686 = load i32, i32* %284, align 8
  %bf.lshr687 = lshr i32 %bf.load686, 16
  %bf.clear688 = and i32 %bf.lshr687, 255
  %cmp689 = icmp ne i32 %bf.clear688, 51
  br i1 %cmp689, label %cond.true.691, label %cond.false.700

cond.true.691:                                    ; preds = %cond.false.685
  %285 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %286 = bitcast %struct.rtx_def* %285 to i32*
  %bf.load692 = load i32, i32* %286, align 8
  %bf.lshr693 = lshr i32 %bf.load692, 16
  %bf.clear694 = and i32 %bf.lshr693, 255
  %idxprom695 = sext i32 %bf.clear694 to i64
  %arrayidx696 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom695
  %287 = load i8, i8* %arrayidx696, align 1
  %conv697 = zext i8 %287 to i64
  %call698 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv697)
  %tobool699 = icmp ne %struct.rtx_def* %call698, null
  br i1 %tobool699, label %land.lhs.true.701, label %if.end.736

cond.false.700:                                   ; preds = %cond.false.685
  br i1 false, label %land.lhs.true.701, label %if.end.736

land.lhs.true.701:                                ; preds = %cond.false.700, %cond.true.691, %cond.true.679
  %288 = load %struct.rtx_def*, %struct.rtx_def** %moffsety, align 8
  %tobool702 = icmp ne %struct.rtx_def* %288, null
  br i1 %tobool702, label %if.then.703, label %if.end.736

if.then.703:                                      ; preds = %land.lhs.true.701
  %289 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld704, i32 0, i64 1
  %rtmem706 = bitcast %union.rtunion_def* %arrayidx705 to %struct.mem_attrs**
  %290 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem706, align 8
  %cmp707 = icmp ne %struct.mem_attrs* %290, null
  br i1 %cmp707, label %cond.true.709, label %cond.false.714

cond.true.709:                                    ; preds = %if.then.703
  %291 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld710 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx711 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld710, i32 0, i64 1
  %rtmem712 = bitcast %union.rtunion_def* %arrayidx711 to %struct.mem_attrs**
  %292 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem712, align 8
  %size713 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %292, i32 0, i32 3
  %293 = load %struct.rtx_def*, %struct.rtx_def** %size713, align 8
  br label %cond.end.731

cond.false.714:                                   ; preds = %if.then.703
  %294 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %295 = bitcast %struct.rtx_def* %294 to i32*
  %bf.load715 = load i32, i32* %295, align 8
  %bf.lshr716 = lshr i32 %bf.load715, 16
  %bf.clear717 = and i32 %bf.lshr716, 255
  %cmp718 = icmp ne i32 %bf.clear717, 51
  br i1 %cmp718, label %cond.true.720, label %cond.false.728

cond.true.720:                                    ; preds = %cond.false.714
  %296 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %297 = bitcast %struct.rtx_def* %296 to i32*
  %bf.load721 = load i32, i32* %297, align 8
  %bf.lshr722 = lshr i32 %bf.load721, 16
  %bf.clear723 = and i32 %bf.lshr722, 255
  %idxprom724 = sext i32 %bf.clear723 to i64
  %arrayidx725 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom724
  %298 = load i8, i8* %arrayidx725, align 1
  %conv726 = zext i8 %298 to i64
  %call727 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv726)
  br label %cond.end.729

cond.false.728:                                   ; preds = %cond.false.714
  br label %cond.end.729

cond.end.729:                                     ; preds = %cond.false.728, %cond.true.720
  %cond730 = phi %struct.rtx_def* [ %call727, %cond.true.720 ], [ null, %cond.false.728 ]
  br label %cond.end.731

cond.end.731:                                     ; preds = %cond.end.729, %cond.true.709
  %cond732 = phi %struct.rtx_def* [ %293, %cond.true.709 ], [ %cond730, %cond.end.729 ]
  %fld733 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond732, i32 0, i32 1
  %arrayidx734 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld733, i32 0, i64 0
  %rtwint735 = bitcast %union.rtunion_def* %arrayidx734 to i64*
  %299 = load i64, i64* %rtwint735, align 8
  store i64 %299, i64* %sizey, align 8
  br label %if.end.736

if.end.736:                                       ; preds = %cond.end.731, %land.lhs.true.701, %cond.false.700, %cond.true.691, %cond.true.679
  %300 = load i64, i64* %offsetx, align 8
  %301 = load i64, i64* %offsety, align 8
  %cmp737 = icmp sgt i64 %300, %301
  br i1 %cmp737, label %if.then.739, label %if.end.740

if.then.739:                                      ; preds = %if.end.736
  %302 = load i64, i64* %offsetx, align 8
  store i64 %302, i64* %tem, align 8
  %303 = load i64, i64* %offsety, align 8
  store i64 %303, i64* %offsetx, align 8
  %304 = load i64, i64* %tem, align 8
  store i64 %304, i64* %offsety, align 8
  %305 = load i64, i64* %sizex, align 8
  store i64 %305, i64* %tem, align 8
  %306 = load i64, i64* %sizey, align 8
  store i64 %306, i64* %sizex, align 8
  %307 = load i64, i64* %tem, align 8
  store i64 %307, i64* %sizey, align 8
  br label %if.end.740

if.end.740:                                       ; preds = %if.then.739, %if.end.736
  %308 = load i64, i64* %sizex, align 8
  %cmp741 = icmp sge i64 %308, 0
  br i1 %cmp741, label %land.rhs.743, label %land.end.747

land.rhs.743:                                     ; preds = %if.end.740
  %309 = load i64, i64* %offsety, align 8
  %310 = load i64, i64* %offsetx, align 8
  %311 = load i64, i64* %sizex, align 8
  %add744 = add nsw i64 %310, %311
  %cmp745 = icmp sgt i64 %309, %add744
  br label %land.end.747

land.end.747:                                     ; preds = %land.rhs.743, %if.end.740
  %312 = phi i1 [ false, %if.end.740 ], [ %cmp745, %land.rhs.743 ]
  %land.ext = zext i1 %312 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end.747, %lor.end.435, %if.then.125, %if.then.91, %if.then.70, %if.then.45, %if.then.25, %if.then
  %313 = load i32, i32* %retval
  ret i32 %313
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_base_term(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %val = alloca %struct.cselib_val_struct*, align 8
  %l = alloca %struct.elt_loc_list*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %tmp1 = alloca %struct.rtx_def*, align 8
  %tmp2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @ix86_find_base_term(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 61, label %sw.bb
    i32 122, label %sw.bb.5
    i32 134, label %sw.bb.16
    i32 97, label %sw.bb.16
    i32 96, label %sw.bb.16
    i32 99, label %sw.bb.16
    i32 98, label %sw.bb.16
    i32 100, label %sw.bb.16
    i32 101, label %sw.bb.16
    i32 121, label %sw.bb.20
    i32 120, label %sw.bb.20
    i32 60, label %sw.bb.25
    i32 58, label %sw.bb.34
    i32 135, label %sw.bb.48
    i32 75, label %sw.bb.48
    i32 76, label %sw.bb.48
    i32 83, label %sw.bb.173
    i32 68, label %sw.bb.195
    i32 67, label %sw.bb.195
    i32 70, label %sw.bb.196
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %5 = load i32, i32* @reg_base_value_size, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtuint3, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

sw.bb.5:                                          ; preds = %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load6, 16
  %bf.clear7 = and i32 %bf.lshr, 255
  %idxprom8 = sext i32 %bf.clear7 to i64
  %arrayidx9 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom8
  %12 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %12 to i32
  %13 = load i32, i32* @target_flags, align 4
  %and = and i32 %13, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond10 = select i1 %tobool, i32 5, i32 4
  %idxprom11 = sext i32 %cond10 to i64
  %arrayidx12 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom11
  %14 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %14 to i32
  %cmp14 = icmp slt i32 %conv, %conv13
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.5
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %sw.bb.5
  br label %sw.bb.16

sw.bb.16:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call19 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %16)
  store %struct.rtx_def* %call19, %struct.rtx_def** %retval
  br label %return

sw.bb.20:                                         ; preds = %entry, %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx23, align 8
  %call24 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %18)
  store %struct.rtx_def* %call24, %struct.rtx_def** %temp, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx27 to %struct.cselib_val_struct**
  %21 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  store %struct.cselib_val_struct* %21, %struct.cselib_val_struct** %val, align 8
  %22 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %val, align 8
  %locs = getelementptr inbounds %struct.cselib_val_struct, %struct.cselib_val_struct* %22, i32 0, i32 2
  %23 = load %struct.elt_loc_list*, %struct.elt_loc_list** %locs, align 8
  store %struct.elt_loc_list* %23, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.25
  %24 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %tobool28 = icmp ne %struct.elt_loc_list* %24, null
  br i1 %tobool28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %loc = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %25, i32 0, i32 1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %loc, align 8
  %call29 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %26)
  store %struct.rtx_def* %call29, %struct.rtx_def** %x.addr, align 8
  %cmp30 = icmp ne %struct.rtx_def* %call29, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %for.body
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %retval
  br label %return

if.end.33:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %28 = load %struct.elt_loc_list*, %struct.elt_loc_list** %l, align 8
  %next = getelementptr inbounds %struct.elt_loc_list, %struct.elt_loc_list* %28, i32 0, i32 0
  %29 = load %struct.elt_loc_list*, %struct.elt_loc_list** %next, align 8
  store %struct.elt_loc_list* %29, %struct.elt_loc_list** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.34:                                         ; preds = %entry
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %x.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load38 = load i32, i32* %33, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp ne i32 %bf.clear39, 75
  br i1 %cmp40, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %sw.bb.34
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load42 = load i32, i32* %35, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp ne i32 %bf.clear43, 76
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true, %sw.bb.34
  br label %sw.bb.48

sw.bb.48:                                         ; preds = %entry, %entry, %entry, %if.end.47
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %tmp1, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %tmp2, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp55 = icmp eq %struct.rtx_def* %40, %41
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.98

land.lhs.true.57:                                 ; preds = %sw.bb.48
  %42 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load58 = load i32, i32* %43, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 67
  br i1 %cmp60, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.57
  %44 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load62 = load i32, i32* %45, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 68
  br i1 %cmp64, label %if.then.96, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false
  %46 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load67 = load i32, i32* %47, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 54
  br i1 %cmp69, label %if.then.96, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.66
  %48 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load72 = load i32, i32* %49, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 55
  br i1 %cmp74, label %if.then.96, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.71
  %50 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load77 = load i32, i32* %51, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 58
  br i1 %cmp79, label %if.then.96, label %lor.lhs.false.81

lor.lhs.false.81:                                 ; preds = %lor.lhs.false.76
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load82 = load i32, i32* %53, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 134
  br i1 %cmp84, label %if.then.96, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %lor.lhs.false.81
  %54 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load87 = load i32, i32* %55, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 56
  br i1 %cmp89, label %if.then.96, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.86
  %56 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load92 = load i32, i32* %57, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 140
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %lor.lhs.false.91, %lor.lhs.false.86, %lor.lhs.false.81, %lor.lhs.false.76, %lor.lhs.false.71, %lor.lhs.false.66, %lor.lhs.false, %land.lhs.true.57
  %58 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %call97 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %58)
  store %struct.rtx_def* %call97, %struct.rtx_def** %retval
  br label %return

if.end.98:                                        ; preds = %lor.lhs.false.91, %sw.bb.48
  %59 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load99 = load i32, i32* %60, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 61
  br i1 %cmp101, label %land.lhs.true.103, label %if.end.109

land.lhs.true.103:                                ; preds = %if.end.98
  %61 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load104 = load i32, i32* %62, align 8
  %bf.lshr105 = lshr i32 %bf.load104, 31
  %tobool106 = icmp ne i32 %bf.lshr105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.109

if.then.107:                                      ; preds = %land.lhs.true.103
  %63 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %call108 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %63)
  store %struct.rtx_def* %call108, %struct.rtx_def** %retval
  br label %return

if.end.109:                                       ; preds = %land.lhs.true.103, %if.end.98
  %64 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load110 = load i32, i32* %65, align 8
  %bf.clear111 = and i32 %bf.load110, 65535
  %cmp112 = icmp eq i32 %bf.clear111, 61
  br i1 %cmp112, label %land.lhs.true.114, label %if.end.120

land.lhs.true.114:                                ; preds = %if.end.109
  %66 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load115 = load i32, i32* %67, align 8
  %bf.lshr116 = lshr i32 %bf.load115, 31
  %tobool117 = icmp ne i32 %bf.lshr116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %land.lhs.true.114
  %68 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %call119 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %68)
  store %struct.rtx_def* %call119, %struct.rtx_def** %retval
  br label %return

if.end.120:                                       ; preds = %land.lhs.true.114, %if.end.109
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %call121 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %69)
  store %struct.rtx_def* %call121, %struct.rtx_def** %tmp1, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %call122 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %70)
  store %struct.rtx_def* %call122, %struct.rtx_def** %tmp2, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %cmp123 = icmp ne %struct.rtx_def* %71, null
  br i1 %cmp123, label %land.lhs.true.125, label %if.end.147

land.lhs.true.125:                                ; preds = %if.end.120
  %72 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load126 = load i32, i32* %73, align 8
  %bf.clear127 = and i32 %bf.load126, 65535
  %cmp128 = icmp eq i32 %bf.clear127, 68
  br i1 %cmp128, label %if.then.146, label %lor.lhs.false.130

lor.lhs.false.130:                                ; preds = %land.lhs.true.125
  %74 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load131 = load i32, i32* %75, align 8
  %bf.clear132 = and i32 %bf.load131, 65535
  %cmp133 = icmp eq i32 %bf.clear132, 67
  br i1 %cmp133, label %if.then.146, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false.130
  %76 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load136 = load i32, i32* %77, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp eq i32 %bf.clear137, 25
  br i1 %cmp138, label %land.lhs.true.140, label %if.end.147

land.lhs.true.140:                                ; preds = %lor.lhs.false.135
  %78 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load141 = load i32, i32* %79, align 8
  %bf.lshr142 = lshr i32 %bf.load141, 16
  %bf.clear143 = and i32 %bf.lshr142, 255
  %cmp144 = icmp ne i32 %bf.clear143, 0
  br i1 %cmp144, label %if.then.146, label %if.end.147

if.then.146:                                      ; preds = %land.lhs.true.140, %lor.lhs.false.130, %land.lhs.true.125
  %80 = load %struct.rtx_def*, %struct.rtx_def** %tmp1, align 8
  store %struct.rtx_def* %80, %struct.rtx_def** %retval
  br label %return

if.end.147:                                       ; preds = %land.lhs.true.140, %lor.lhs.false.135, %if.end.120
  %81 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %cmp148 = icmp ne %struct.rtx_def* %81, null
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.172

land.lhs.true.150:                                ; preds = %if.end.147
  %82 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load151 = load i32, i32* %83, align 8
  %bf.clear152 = and i32 %bf.load151, 65535
  %cmp153 = icmp eq i32 %bf.clear152, 68
  br i1 %cmp153, label %if.then.171, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %land.lhs.true.150
  %84 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load156 = load i32, i32* %85, align 8
  %bf.clear157 = and i32 %bf.load156, 65535
  %cmp158 = icmp eq i32 %bf.clear157, 67
  br i1 %cmp158, label %if.then.171, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %lor.lhs.false.155
  %86 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load161 = load i32, i32* %87, align 8
  %bf.clear162 = and i32 %bf.load161, 65535
  %cmp163 = icmp eq i32 %bf.clear162, 25
  br i1 %cmp163, label %land.lhs.true.165, label %if.end.172

land.lhs.true.165:                                ; preds = %lor.lhs.false.160
  %88 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load166 = load i32, i32* %89, align 8
  %bf.lshr167 = lshr i32 %bf.load166, 16
  %bf.clear168 = and i32 %bf.lshr167, 255
  %cmp169 = icmp ne i32 %bf.clear168, 0
  br i1 %cmp169, label %if.then.171, label %if.end.172

if.then.171:                                      ; preds = %land.lhs.true.165, %lor.lhs.false.155, %land.lhs.true.150
  %90 = load %struct.rtx_def*, %struct.rtx_def** %tmp2, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %retval
  br label %return

if.end.172:                                       ; preds = %land.lhs.true.165, %lor.lhs.false.160, %if.end.147
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.173:                                        ; preds = %entry
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 1
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load177 = load i32, i32* %93, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp eq i32 %bf.clear178, 54
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.194

land.lhs.true.181:                                ; preds = %sw.bb.173
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 1
  %rtx184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx184, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx186 to i64*
  %96 = load i64, i64* %rtwint, align 8
  %cmp187 = icmp ne i64 %96, 0
  br i1 %cmp187, label %if.then.189, label %if.end.194

if.then.189:                                      ; preds = %land.lhs.true.181
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %call193 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %98)
  store %struct.rtx_def* %call193, %struct.rtx_def** %retval
  br label %return

if.end.194:                                       ; preds = %land.lhs.true.181, %sw.bb.173
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

sw.bb.195:                                        ; preds = %entry, %entry
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %retval
  br label %return

sw.bb.196:                                        ; preds = %entry
  %100 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 0
  %rtuint199 = bitcast %union.rtunion_def* %arrayidx198 to i32*
  %101 = load i32, i32* %rtuint199, align 4
  %102 = load i32, i32* @reg_base_value_size, align 4
  %cmp200 = icmp ult i32 %101, %102
  br i1 %cmp200, label %cond.true.202, label %cond.false.208

cond.true.202:                                    ; preds = %sw.bb.196
  %103 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtuint205 = bitcast %union.rtunion_def* %arrayidx204 to i32*
  %104 = load i32, i32* %rtuint205, align 4
  %idxprom206 = zext i32 %104 to i64
  %105 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx207 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %105, i64 %idxprom206
  %106 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx207, align 8
  br label %cond.end.209

cond.false.208:                                   ; preds = %sw.bb.196
  br label %cond.end.209

cond.end.209:                                     ; preds = %cond.false.208, %cond.true.202
  %cond210 = phi %struct.rtx_def* [ %106, %cond.true.202 ], [ null, %cond.false.208 ]
  store %struct.rtx_def* %cond210, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end.209, %sw.bb.195, %if.end.194, %if.then.189, %if.end.172, %if.then.171, %if.then.146, %if.then.118, %if.then.107, %if.then.96, %if.then.46, %for.end, %if.then.32, %sw.bb.20, %sw.bb.16, %if.then, %cond.end
  %107 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %107
}

; Function Attrs: nounwind uwtable
define internal i32 @base_alias_check(%struct.rtx_def* %x, %struct.rtx_def* %y, i32 %x_mode, i32 %y_mode) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %x_mode.addr = alloca i32, align 4
  %y_mode.addr = alloca i32, align 4
  %x_base = alloca %struct.rtx_def*, align 8
  %y_base = alloca %struct.rtx_def*, align 8
  %x_c = alloca %struct.rtx_def*, align 8
  %y_c = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i32 %x_mode, i32* %x_mode.addr, align 4
  store i32 %y_mode, i32* %y_mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x_base, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call1 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %y_base, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %cmp = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.4

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call2 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %4)
  store %struct.rtx_def* %call2, %struct.rtx_def** %x_c, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp3 = icmp eq %struct.rtx_def* %call2, %5
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %lor.lhs.false, %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x_c, align 8
  %call5 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %6)
  store %struct.rtx_def* %call5, %struct.rtx_def** %x_base, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %cmp6 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %cmp10 = icmp eq %struct.rtx_def* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.22

if.then.11:                                       ; preds = %if.end.9
  %9 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool12 = icmp ne i32 %9, 0
  br i1 %tobool12, label %lor.lhs.false.13, label %if.then.16

lor.lhs.false.13:                                 ; preds = %if.then.11
  %10 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call14 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %10)
  store %struct.rtx_def* %call14, %struct.rtx_def** %y_c, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp15 = icmp eq %struct.rtx_def* %call14, %11
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.then.11
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %lor.lhs.false.13
  %12 = load %struct.rtx_def*, %struct.rtx_def** %y_c, align 8
  %call18 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %12)
  store %struct.rtx_def* %call18, %struct.rtx_def** %y_base, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %cmp19 = icmp eq %struct.rtx_def* %13, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end.9
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %call23 = call i32 @rtx_equal_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.22
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.22
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp27 = icmp ne i32 %bf.clear, 25
  br i1 %cmp27, label %land.lhs.true, label %if.end.88

land.lhs.true:                                    ; preds = %if.end.26
  %18 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load28 = load i32, i32* %19, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp ne i32 %bf.clear29, 25
  br i1 %cmp30, label %if.then.31, label %if.end.88

if.then.31:                                       ; preds = %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load32 = load i32, i32* %21, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 83
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.40

land.lhs.true.35:                                 ; preds = %if.then.31
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load36 = load i32, i32* %23, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 83
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true.35
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.35, %if.then.31
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load41 = load i32, i32* %25, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 83
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.59

land.lhs.true.44:                                 ; preds = %if.end.40
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load45 = load i32, i32* %28, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %cmp47 = icmp ne i32 %bf.clear46, 54
  br i1 %cmp47, label %if.then.58, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %land.lhs.true.44
  %29 = load i32, i32* %y_mode.addr, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx49 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom
  %30 = load i8, i8* %arrayidx49, align 1
  %conv = zext i8 %30 to i32
  %conv50 = sext i32 %conv to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx55 to i64*
  %33 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 0, %33
  %cmp56 = icmp slt i64 %conv50, %sub
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.48, %land.lhs.true.44
  store i32 1, i32* %retval
  br label %return

if.end.59:                                        ; preds = %lor.lhs.false.48, %if.end.40
  %34 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load60 = load i32, i32* %35, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 83
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.87

land.lhs.true.64:                                 ; preds = %if.end.59
  %36 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 1
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load68 = load i32, i32* %38, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp ne i32 %bf.clear69, 54
  br i1 %cmp70, label %if.then.86, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.64
  %39 = load i32, i32* %x_mode.addr, align 4
  %idxprom73 = sext i32 %39 to i64
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom73
  %40 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %40 to i32
  %conv76 = sext i32 %conv75 to i64
  %41 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 1
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtwint82 = bitcast %union.rtunion_def* %arrayidx81 to i64*
  %43 = load i64, i64* %rtwint82, align 8
  %sub83 = sub nsw i64 0, %43
  %cmp84 = icmp slt i64 %conv76, %sub83
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %lor.lhs.false.72, %land.lhs.true.64
  store i32 1, i32* %retval
  br label %return

if.end.87:                                        ; preds = %lor.lhs.false.72, %if.end.59
  store i32 0, i32* %retval
  br label %return

if.end.88:                                        ; preds = %land.lhs.true, %if.end.26
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load89 = load i32, i32* %45, align 8
  %bf.clear90 = and i32 %bf.load89, 65535
  %cmp91 = icmp eq i32 %bf.clear90, 25
  br i1 %cmp91, label %land.lhs.true.93, label %lor.lhs.false.99

land.lhs.true.93:                                 ; preds = %if.end.88
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load94 = load i32, i32* %47, align 8
  %bf.lshr = lshr i32 %bf.load94, 16
  %bf.clear95 = and i32 %bf.lshr, 255
  %48 = load i32, i32* @target_flags, align 4
  %and = and i32 %48, 33554432
  %tobool96 = icmp ne i32 %and, 0
  %cond = select i1 %tobool96, i32 5, i32 4
  %cmp97 = icmp eq i32 %bf.clear95, %cond
  br i1 %cmp97, label %if.then.113, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.93, %if.end.88
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load100 = load i32, i32* %50, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 25
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.114

land.lhs.true.104:                                ; preds = %lor.lhs.false.99
  %51 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load105 = load i32, i32* %52, align 8
  %bf.lshr106 = lshr i32 %bf.load105, 16
  %bf.clear107 = and i32 %bf.lshr106, 255
  %53 = load i32, i32* @target_flags, align 4
  %and108 = and i32 %53, 33554432
  %tobool109 = icmp ne i32 %and108, 0
  %cond110 = select i1 %tobool109, i32 5, i32 4
  %cmp111 = icmp eq i32 %bf.clear107, %cond110
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.104, %land.lhs.true.93
  store i32 0, i32* %retval
  br label %return

if.end.114:                                       ; preds = %land.lhs.true.104, %lor.lhs.false.99
  %54 = load i32, i32* @flag_argument_noalias, align 4
  %tobool115 = icmp ne i32 %54, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %if.end.114
  store i32 1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.end.114
  %55 = load i32, i32* @flag_argument_noalias, align 4
  %cmp118 = icmp sgt i32 %55, 1
  br i1 %cmp118, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %if.end.117
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.117
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x_base, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load122 = load i32, i32* %57, align 8
  %bf.lshr123 = lshr i32 %bf.load122, 16
  %bf.clear124 = and i32 %bf.lshr123, 255
  %cmp125 = icmp eq i32 %bf.clear124, 0
  br i1 %cmp125, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.121
  %58 = load %struct.rtx_def*, %struct.rtx_def** %y_base, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load127 = load i32, i32* %59, align 8
  %bf.lshr128 = lshr i32 %bf.load127, 16
  %bf.clear129 = and i32 %bf.lshr128, 255
  %cmp130 = icmp eq i32 %bf.clear129, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.121
  %60 = phi i1 [ false, %if.end.121 ], [ %cmp130, %land.rhs ]
  %lnot = xor i1 %60, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.120, %if.then.116, %if.then.113, %if.end.87, %if.then.86, %if.then.58, %if.then.39, %if.then.25, %if.then.20, %if.then.16, %if.then.7, %if.then.4
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define internal i32 @memrefs_conflict_p(i32 %xsize, %struct.rtx_def* %x, i32 %ysize, %struct.rtx_def* %y, i64 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %xsize.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %ysize.addr = alloca i32, align 4
  %y.addr = alloca %struct.rtx_def*, align 8
  %c.addr = alloca i64, align 8
  %x0 = alloca %struct.rtx_def*, align 8
  %x1 = alloca %struct.rtx_def*, align 8
  %y0 = alloca %struct.rtx_def*, align 8
  %y1 = alloca %struct.rtx_def*, align 8
  %y0150 = alloca %struct.rtx_def*, align 8
  %y1154 = alloca %struct.rtx_def*, align 8
  %x0180 = alloca %struct.rtx_def*, align 8
  %y0181 = alloca %struct.rtx_def*, align 8
  %x1182 = alloca %struct.rtx_def*, align 8
  %y1187 = alloca %struct.rtx_def*, align 8
  %r_x = alloca i32, align 4
  %r_y = alloca i32, align 4
  %i_x = alloca %struct.rtx_def*, align 8
  %i_y = alloca %struct.rtx_def*, align 8
  store i32 %xsize, i32* %xsize.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %ysize, i32* %ysize.addr, align 4
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i64 %c, i64* %c.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 60
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @get_addr(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 60
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call5 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %5)
  store %struct.rtx_def* %call5, %struct.rtx_def** %y.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load7 = load i32, i32* %7, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 134
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.6
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %x.addr, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.end.6
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load11 = load i32, i32* %11, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 135
  br i1 %cmp13, label %if.then.14, label %if.else.18

if.then.14:                                       ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %x.addr, align 8
  br label %if.end.21

if.else.18:                                       ; preds = %if.else
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = load i32, i32* %xsize.addr, align 4
  %call19 = call %struct.rtx_def* @addr_side_effect_eval(%struct.rtx_def* %14, i32 %15, i32 0)
  %call20 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %call19)
  store %struct.rtx_def* %call20, %struct.rtx_def** %x.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.14
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.10
  %16 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load23 = load i32, i32* %17, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 134
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.end.22
  %18 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %y.addr, align 8
  br label %if.end.42

if.else.30:                                       ; preds = %if.end.22
  %20 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load31 = load i32, i32* %21, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 135
  br i1 %cmp33, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.else.30
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %y.addr, align 8
  br label %if.end.41

if.else.38:                                       ; preds = %if.else.30
  %24 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %25 = load i32, i32* %ysize.addr, align 4
  %call39 = call %struct.rtx_def* @addr_side_effect_eval(%struct.rtx_def* %24, i32 %25, i32 0)
  %call40 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %call39)
  store %struct.rtx_def* %call40, %struct.rtx_def** %y.addr, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.34
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.26
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call43 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %26, %struct.rtx_def* %27)
  %tobool = icmp ne i32 %call43, 0
  br i1 %tobool, label %if.then.44, label %if.end.62

if.then.44:                                       ; preds = %if.end.42
  %28 = load i32, i32* %xsize.addr, align 4
  %cmp45 = icmp sle i32 %28, 0
  br i1 %cmp45, label %if.then.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.44
  %29 = load i32, i32* %ysize.addr, align 4
  %cmp46 = icmp sle i32 %29, 0
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %lor.lhs.false, %if.then.44
  store i32 1, i32* %retval
  br label %return

if.end.48:                                        ; preds = %lor.lhs.false
  %30 = load i64, i64* %c.addr, align 8
  %cmp49 = icmp sge i64 %30, 0
  br i1 %cmp49, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.48
  %31 = load i32, i32* %xsize.addr, align 4
  %conv = sext i32 %31 to i64
  %32 = load i64, i64* %c.addr, align 8
  %cmp50 = icmp sgt i64 %conv, %32
  br i1 %cmp50, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true, %if.end.48
  %33 = load i64, i64* %c.addr, align 8
  %cmp54 = icmp slt i64 %33, 0
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.61

land.lhs.true.56:                                 ; preds = %if.end.53
  %34 = load i32, i32* %ysize.addr, align 4
  %conv57 = sext i32 %34 to i64
  %35 = load i64, i64* %c.addr, align 8
  %add = add nsw i64 %conv57, %35
  %cmp58 = icmp sgt i64 %add, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %land.lhs.true.56
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.56, %if.end.53
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.42
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load63 = load i32, i32* %37, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 75
  br i1 %cmp65, label %if.then.67, label %if.else.144

if.then.67:                                       ; preds = %if.end.62
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %x0, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %x1, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load74 = load i32, i32* %43, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 75
  br i1 %cmp76, label %if.then.78, label %if.else.131

if.then.78:                                       ; preds = %if.then.67
  %44 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %y0, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %y1, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %call85 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %48, %struct.rtx_def* %49)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %if.then.78
  %50 = load i32, i32* %xsize.addr, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %52 = load i32, i32* %ysize.addr, align 4
  %53 = load %struct.rtx_def*, %struct.rtx_def** %y0, align 8
  %54 = load i64, i64* %c.addr, align 8
  %call88 = call i32 @memrefs_conflict_p(i32 %50, %struct.rtx_def* %51, i32 %52, %struct.rtx_def* %53, i64 %54)
  store i32 %call88, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.78
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %y0, align 8
  %call90 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %55, %struct.rtx_def* %56)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.89
  %57 = load i32, i32* %xsize.addr, align 4
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %59 = load i32, i32* %ysize.addr, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %61 = load i64, i64* %c.addr, align 8
  %call93 = call i32 @memrefs_conflict_p(i32 %57, %struct.rtx_def* %58, i32 %59, %struct.rtx_def* %60, i64 %61)
  store i32 %call93, i32* %retval
  br label %return

if.end.94:                                        ; preds = %if.end.89
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load95 = load i32, i32* %63, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp eq i32 %bf.clear96, 54
  br i1 %cmp97, label %if.then.99, label %if.else.118

if.then.99:                                       ; preds = %if.end.94
  %64 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load100 = load i32, i32* %65, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 54
  br i1 %cmp102, label %if.then.104, label %if.else.112

if.then.104:                                      ; preds = %if.then.99
  %66 = load i32, i32* %xsize.addr, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %68 = load i32, i32* %ysize.addr, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %y0, align 8
  %70 = load i64, i64* %c.addr, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx106 to i64*
  %72 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 %70, %72
  %73 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtwint109 = bitcast %union.rtunion_def* %arrayidx108 to i64*
  %74 = load i64, i64* %rtwint109, align 8
  %add110 = add nsw i64 %sub, %74
  %call111 = call i32 @memrefs_conflict_p(i32 %66, %struct.rtx_def* %67, i32 %68, %struct.rtx_def* %69, i64 %add110)
  store i32 %call111, i32* %retval
  br label %return

if.else.112:                                      ; preds = %if.then.99
  %75 = load i32, i32* %xsize.addr, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %77 = load i32, i32* %ysize.addr, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %79 = load i64, i64* %c.addr, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtwint115 = bitcast %union.rtunion_def* %arrayidx114 to i64*
  %81 = load i64, i64* %rtwint115, align 8
  %sub116 = sub nsw i64 %79, %81
  %call117 = call i32 @memrefs_conflict_p(i32 %75, %struct.rtx_def* %76, i32 %77, %struct.rtx_def* %78, i64 %sub116)
  store i32 %call117, i32* %retval
  br label %return

if.else.118:                                      ; preds = %if.end.94
  %82 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load119 = load i32, i32* %83, align 8
  %bf.clear120 = and i32 %bf.load119, 65535
  %cmp121 = icmp eq i32 %bf.clear120, 54
  br i1 %cmp121, label %if.then.123, label %if.end.129

if.then.123:                                      ; preds = %if.else.118
  %84 = load i32, i32* %xsize.addr, align 4
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %86 = load i32, i32* %ysize.addr, align 4
  %87 = load %struct.rtx_def*, %struct.rtx_def** %y0, align 8
  %88 = load i64, i64* %c.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtwint126 = bitcast %union.rtunion_def* %arrayidx125 to i64*
  %90 = load i64, i64* %rtwint126, align 8
  %add127 = add nsw i64 %88, %90
  %call128 = call i32 @memrefs_conflict_p(i32 %84, %struct.rtx_def* %85, i32 %86, %struct.rtx_def* %87, i64 %add127)
  store i32 %call128, i32* %retval
  br label %return

if.end.129:                                       ; preds = %if.else.118
  br label %if.end.130

if.end.130:                                       ; preds = %if.end.129
  store i32 1, i32* %retval
  br label %return

if.else.131:                                      ; preds = %if.then.67
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load132 = load i32, i32* %92, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 54
  br i1 %cmp134, label %if.then.136, label %if.end.142

if.then.136:                                      ; preds = %if.else.131
  %93 = load i32, i32* %xsize.addr, align 4
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x0, align 8
  %95 = load i32, i32* %ysize.addr, align 4
  %96 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %97 = load i64, i64* %c.addr, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtwint139 = bitcast %union.rtunion_def* %arrayidx138 to i64*
  %99 = load i64, i64* %rtwint139, align 8
  %sub140 = sub nsw i64 %97, %99
  %call141 = call i32 @memrefs_conflict_p(i32 %93, %struct.rtx_def* %94, i32 %95, %struct.rtx_def* %96, i64 %sub140)
  store i32 %call141, i32* %retval
  br label %return

if.end.142:                                       ; preds = %if.else.131
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142
  br label %if.end.170

if.else.144:                                      ; preds = %if.end.62
  %100 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load145 = load i32, i32* %101, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 75
  br i1 %cmp147, label %if.then.149, label %if.end.169

if.then.149:                                      ; preds = %if.else.144
  %102 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 0
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %y0150, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %y1154, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %y1154, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load158 = load i32, i32* %107, align 8
  %bf.clear159 = and i32 %bf.load158, 65535
  %cmp160 = icmp eq i32 %bf.clear159, 54
  br i1 %cmp160, label %if.then.162, label %if.else.168

if.then.162:                                      ; preds = %if.then.149
  %108 = load i32, i32* %xsize.addr, align 4
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %110 = load i32, i32* %ysize.addr, align 4
  %111 = load %struct.rtx_def*, %struct.rtx_def** %y0150, align 8
  %112 = load i64, i64* %c.addr, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %y1154, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtwint165 = bitcast %union.rtunion_def* %arrayidx164 to i64*
  %114 = load i64, i64* %rtwint165, align 8
  %add166 = add nsw i64 %112, %114
  %call167 = call i32 @memrefs_conflict_p(i32 %108, %struct.rtx_def* %109, i32 %110, %struct.rtx_def* %111, i64 %add166)
  store i32 %call167, i32* %retval
  br label %return

if.else.168:                                      ; preds = %if.then.149
  store i32 1, i32* %retval
  br label %return

if.end.169:                                       ; preds = %if.else.144
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.143
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load171 = load i32, i32* %116, align 8
  %bf.clear172 = and i32 %bf.load171, 65535
  %117 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load173 = load i32, i32* %118, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp eq i32 %bf.clear172, %bf.clear174
  br i1 %cmp175, label %if.then.177, label %if.end.289

if.then.177:                                      ; preds = %if.end.170
  %119 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load178 = load i32, i32* %120, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  switch i32 %bf.clear179, label %sw.default [
    i32 78, label %sw.bb
    i32 61, label %sw.bb.248
  ]

sw.bb:                                            ; preds = %if.then.177
  %121 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 1
  %rtx185 = bitcast %union.rtunion_def* %arrayidx184 to %struct.rtx_def**
  %122 = load %struct.rtx_def*, %struct.rtx_def** %rtx185, align 8
  %call186 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %122)
  store %struct.rtx_def* %call186, %struct.rtx_def** %x1182, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %call191 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %124)
  store %struct.rtx_def* %call191, %struct.rtx_def** %y1187, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %x1182, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %y1187, align 8
  %call192 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %125, %struct.rtx_def* %126)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.end.195, label %if.then.194

if.then.194:                                      ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end.195:                                       ; preds = %sw.bb
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 0
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  %call199 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %128)
  store %struct.rtx_def* %call199, %struct.rtx_def** %x0180, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 0
  %rtx202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx202, align 8
  %call203 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %130)
  store %struct.rtx_def* %call203, %struct.rtx_def** %y0181, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x0180, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %y0181, align 8
  %call204 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %131, %struct.rtx_def* %132)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.225

if.then.206:                                      ; preds = %if.end.195
  %133 = load i32, i32* %xsize.addr, align 4
  %cmp207 = icmp eq i32 %133, 0
  br i1 %cmp207, label %lor.end, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.then.206
  %134 = load i32, i32* %ysize.addr, align 4
  %cmp210 = icmp eq i32 %134, 0
  br i1 %cmp210, label %lor.end, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %lor.lhs.false.209
  %135 = load i64, i64* %c.addr, align 8
  %cmp213 = icmp sge i64 %135, 0
  br i1 %cmp213, label %land.lhs.true.215, label %lor.rhs

land.lhs.true.215:                                ; preds = %lor.lhs.false.212
  %136 = load i32, i32* %xsize.addr, align 4
  %conv216 = sext i32 %136 to i64
  %137 = load i64, i64* %c.addr, align 8
  %cmp217 = icmp sgt i64 %conv216, %137
  br i1 %cmp217, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.215, %lor.lhs.false.212
  %138 = load i64, i64* %c.addr, align 8
  %cmp219 = icmp slt i64 %138, 0
  br i1 %cmp219, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %139 = load i32, i32* %ysize.addr, align 4
  %conv221 = sext i32 %139 to i64
  %140 = load i64, i64* %c.addr, align 8
  %add222 = add nsw i64 %conv221, %140
  %cmp223 = icmp sgt i64 %add222, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %141 = phi i1 [ false, %lor.rhs ], [ %cmp223, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.215, %lor.lhs.false.209, %if.then.206
  %142 = phi i1 [ true, %land.lhs.true.215 ], [ true, %lor.lhs.false.209 ], [ true, %if.then.206 ], [ %141, %land.end ]
  %lor.ext = zext i1 %142 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.end.225:                                       ; preds = %if.end.195
  %143 = load %struct.rtx_def*, %struct.rtx_def** %x1182, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load226 = load i32, i32* %144, align 8
  %bf.clear227 = and i32 %bf.load226, 65535
  %cmp228 = icmp ne i32 %bf.clear227, 54
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.225
  store i32 1, i32* %retval
  br label %return

if.end.231:                                       ; preds = %if.end.225
  %145 = load %struct.rtx_def*, %struct.rtx_def** %x1182, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtwint234 = bitcast %union.rtunion_def* %arrayidx233 to i64*
  %146 = load i64, i64* %rtwint234, align 8
  %147 = load i32, i32* %xsize.addr, align 4
  %conv235 = sext i32 %147 to i64
  %div = sdiv i64 %conv235, %146
  %conv236 = trunc i64 %div to i32
  store i32 %conv236, i32* %xsize.addr, align 4
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x1182, align 8
  %fld237 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx238 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld237, i32 0, i64 0
  %rtwint239 = bitcast %union.rtunion_def* %arrayidx238 to i64*
  %149 = load i64, i64* %rtwint239, align 8
  %150 = load i32, i32* %ysize.addr, align 4
  %conv240 = sext i32 %150 to i64
  %div241 = sdiv i64 %conv240, %149
  %conv242 = trunc i64 %div241 to i32
  store i32 %conv242, i32* %ysize.addr, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %x1182, align 8
  %fld243 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx244 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld243, i32 0, i64 0
  %rtwint245 = bitcast %union.rtunion_def* %arrayidx244 to i64*
  %152 = load i64, i64* %rtwint245, align 8
  %153 = load i64, i64* %c.addr, align 8
  %div246 = sdiv i64 %153, %152
  store i64 %div246, i64* %c.addr, align 8
  %154 = load i32, i32* %xsize.addr, align 4
  %155 = load %struct.rtx_def*, %struct.rtx_def** %x0180, align 8
  %156 = load i32, i32* %ysize.addr, align 4
  %157 = load %struct.rtx_def*, %struct.rtx_def** %y0181, align 8
  %158 = load i64, i64* %c.addr, align 8
  %call247 = call i32 @memrefs_conflict_p(i32 %154, %struct.rtx_def* %155, i32 %156, %struct.rtx_def* %157, i64 %158)
  store i32 %call247, i32* %retval
  br label %return

sw.bb.248:                                        ; preds = %if.then.177
  %159 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %tobool249 = icmp ne %struct.rtx_def** %159, null
  br i1 %tobool249, label %if.then.250, label %if.end.288

if.then.250:                                      ; preds = %sw.bb.248
  %160 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx252 to i32*
  %161 = load i32, i32* %rtuint, align 4
  store i32 %161, i32* %r_x, align 4
  %162 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtuint255 = bitcast %union.rtunion_def* %arrayidx254 to i32*
  %163 = load i32, i32* %rtuint255, align 4
  store i32 %163, i32* %r_y, align 4
  %164 = load i32, i32* %r_x, align 4
  %165 = load i32, i32* @reg_base_value_size, align 4
  %cmp256 = icmp uge i32 %164, %165
  br i1 %cmp256, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.250
  br label %cond.end

cond.false:                                       ; preds = %if.then.250
  %166 = load i32, i32* %r_x, align 4
  %idxprom = zext i32 %166 to i64
  %167 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %arrayidx258 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %167, i64 %idxprom
  %168 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx258, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ null, %cond.true ], [ %168, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %i_x, align 8
  %169 = load i32, i32* %r_y, align 4
  %170 = load i32, i32* @reg_base_value_size, align 4
  %cmp259 = icmp uge i32 %169, %170
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %cond.end
  br label %cond.end.265

cond.false.262:                                   ; preds = %cond.end
  %171 = load i32, i32* %r_y, align 4
  %idxprom263 = zext i32 %171 to i64
  %172 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %arrayidx264 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %172, i64 %idxprom263
  %173 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx264, align 8
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.true.261
  %cond266 = phi %struct.rtx_def* [ null, %cond.true.261 ], [ %173, %cond.false.262 ]
  store %struct.rtx_def* %cond266, %struct.rtx_def** %i_y, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %i_x, align 8
  %cmp267 = icmp eq %struct.rtx_def* %174, null
  br i1 %cmp267, label %land.lhs.true.269, label %if.end.273

land.lhs.true.269:                                ; preds = %cond.end.265
  %175 = load %struct.rtx_def*, %struct.rtx_def** %i_y, align 8
  %cmp270 = icmp eq %struct.rtx_def* %175, null
  br i1 %cmp270, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %land.lhs.true.269
  br label %sw.epilog

if.end.273:                                       ; preds = %land.lhs.true.269, %cond.end.265
  %176 = load i32, i32* %xsize.addr, align 4
  %177 = load %struct.rtx_def*, %struct.rtx_def** %i_x, align 8
  %tobool274 = icmp ne %struct.rtx_def* %177, null
  br i1 %tobool274, label %cond.true.275, label %cond.false.276

cond.true.275:                                    ; preds = %if.end.273
  %178 = load %struct.rtx_def*, %struct.rtx_def** %i_x, align 8
  br label %cond.end.277

cond.false.276:                                   ; preds = %if.end.273
  %179 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  br label %cond.end.277

cond.end.277:                                     ; preds = %cond.false.276, %cond.true.275
  %cond278 = phi %struct.rtx_def* [ %178, %cond.true.275 ], [ %179, %cond.false.276 ]
  %180 = load i32, i32* %ysize.addr, align 4
  %181 = load %struct.rtx_def*, %struct.rtx_def** %i_y, align 8
  %tobool279 = icmp ne %struct.rtx_def* %181, null
  br i1 %tobool279, label %cond.true.280, label %cond.false.281

cond.true.280:                                    ; preds = %cond.end.277
  %182 = load %struct.rtx_def*, %struct.rtx_def** %i_y, align 8
  br label %cond.end.282

cond.false.281:                                   ; preds = %cond.end.277
  %183 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.281, %cond.true.280
  %cond283 = phi %struct.rtx_def* [ %182, %cond.true.280 ], [ %183, %cond.false.281 ]
  %184 = load i64, i64* %c.addr, align 8
  %call284 = call i32 @memrefs_conflict_p(i32 %176, %struct.rtx_def* %cond278, i32 %180, %struct.rtx_def* %cond283, i64 %184)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.end.287, label %if.then.286

if.then.286:                                      ; preds = %cond.end.282
  store i32 0, i32* %retval
  br label %return

if.end.287:                                       ; preds = %cond.end.282
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %sw.bb.248
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.177
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.288, %if.then.272
  br label %if.end.289

if.end.289:                                       ; preds = %sw.epilog, %if.end.170
  %185 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %bf.load290 = load i32, i32* %186, align 8
  %bf.clear291 = and i32 %bf.load290, 65535
  %cmp292 = icmp eq i32 %bf.clear291, 83
  br i1 %cmp292, label %land.lhs.true.294, label %if.end.324

land.lhs.true.294:                                ; preds = %if.end.289
  %187 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld295 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx296 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld295, i32 0, i64 1
  %rtx297 = bitcast %union.rtunion_def* %arrayidx296 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx297, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load298 = load i32, i32* %189, align 8
  %bf.clear299 = and i32 %bf.load298, 65535
  %cmp300 = icmp eq i32 %bf.clear299, 54
  br i1 %cmp300, label %if.then.302, label %if.end.324

if.then.302:                                      ; preds = %land.lhs.true.294
  %190 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %191 = bitcast %struct.rtx_def* %190 to i32*
  %bf.load303 = load i32, i32* %191, align 8
  %bf.clear304 = and i32 %bf.load303, 65535
  %cmp305 = icmp eq i32 %bf.clear304, 83
  br i1 %cmp305, label %if.then.318, label %lor.lhs.false.307

lor.lhs.false.307:                                ; preds = %if.then.302
  %192 = load i32, i32* %ysize.addr, align 4
  %conv308 = sext i32 %192 to i64
  %193 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %193, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 1
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  %fld312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld312, i32 0, i64 0
  %rtwint314 = bitcast %union.rtunion_def* %arrayidx313 to i64*
  %195 = load i64, i64* %rtwint314, align 8
  %sub315 = sub nsw i64 0, %195
  %cmp316 = icmp slt i64 %conv308, %sub315
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %lor.lhs.false.307, %if.then.302
  store i32 -1, i32* %xsize.addr, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %lor.lhs.false.307
  %196 = load i32, i32* %xsize.addr, align 4
  %197 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 0
  %rtx322 = bitcast %union.rtunion_def* %arrayidx321 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %rtx322, align 8
  %199 = load i32, i32* %ysize.addr, align 4
  %200 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %201 = load i64, i64* %c.addr, align 8
  %call323 = call i32 @memrefs_conflict_p(i32 %196, %struct.rtx_def* %198, i32 %199, %struct.rtx_def* %200, i64 %201)
  store i32 %call323, i32* %retval
  br label %return

if.end.324:                                       ; preds = %land.lhs.true.294, %if.end.289
  %202 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load325 = load i32, i32* %203, align 8
  %bf.clear326 = and i32 %bf.load325, 65535
  %cmp327 = icmp eq i32 %bf.clear326, 83
  br i1 %cmp327, label %land.lhs.true.329, label %if.end.359

land.lhs.true.329:                                ; preds = %if.end.324
  %204 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld330 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx331 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld330, i32 0, i64 1
  %rtx332 = bitcast %union.rtunion_def* %arrayidx331 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtx332, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %bf.load333 = load i32, i32* %206, align 8
  %bf.clear334 = and i32 %bf.load333, 65535
  %cmp335 = icmp eq i32 %bf.clear334, 54
  br i1 %cmp335, label %if.then.337, label %if.end.359

if.then.337:                                      ; preds = %land.lhs.true.329
  %207 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load338 = load i32, i32* %208, align 8
  %bf.clear339 = and i32 %bf.load338, 65535
  %cmp340 = icmp eq i32 %bf.clear339, 83
  br i1 %cmp340, label %if.then.353, label %lor.lhs.false.342

lor.lhs.false.342:                                ; preds = %if.then.337
  %209 = load i32, i32* %xsize.addr, align 4
  %conv343 = sext i32 %209 to i64
  %210 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 1
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %211, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 0
  %rtwint349 = bitcast %union.rtunion_def* %arrayidx348 to i64*
  %212 = load i64, i64* %rtwint349, align 8
  %sub350 = sub nsw i64 0, %212
  %cmp351 = icmp slt i64 %conv343, %sub350
  br i1 %cmp351, label %if.then.353, label %if.end.354

if.then.353:                                      ; preds = %lor.lhs.false.342, %if.then.337
  store i32 -1, i32* %ysize.addr, align 4
  br label %if.end.354

if.end.354:                                       ; preds = %if.then.353, %lor.lhs.false.342
  %213 = load i32, i32* %xsize.addr, align 4
  %214 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %215 = load i32, i32* %ysize.addr, align 4
  %216 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld355 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld355, i32 0, i64 0
  %rtx357 = bitcast %union.rtunion_def* %arrayidx356 to %struct.rtx_def**
  %217 = load %struct.rtx_def*, %struct.rtx_def** %rtx357, align 8
  %218 = load i64, i64* %c.addr, align 8
  %call358 = call i32 @memrefs_conflict_p(i32 %213, %struct.rtx_def* %214, i32 %215, %struct.rtx_def* %217, i64 %218)
  store i32 %call358, i32* %retval
  br label %return

if.end.359:                                       ; preds = %land.lhs.true.329, %if.end.324
  %219 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load360 = load i32, i32* %220, align 8
  %bf.clear361 = and i32 %bf.load360, 65535
  %cmp362 = icmp eq i32 %bf.clear361, 70
  br i1 %cmp362, label %if.then.364, label %if.end.381

if.then.364:                                      ; preds = %if.end.359
  %221 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp365 = icmp eq %struct.rtx_def* %221, %222
  br i1 %cmp365, label %if.then.372, label %lor.lhs.false.367

lor.lhs.false.367:                                ; preds = %if.then.364
  %223 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %224 = bitcast %struct.rtx_def* %223 to i32*
  %bf.load368 = load i32, i32* %224, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 70
  br i1 %cmp370, label %if.then.372, label %if.end.380

if.then.372:                                      ; preds = %lor.lhs.false.367, %if.then.364
  %225 = load i32, i32* %xsize.addr, align 4
  %cmp373 = icmp sle i32 %225, 0
  br i1 %cmp373, label %lor.end.378, label %lor.rhs.375

lor.rhs.375:                                      ; preds = %if.then.372
  %226 = load i32, i32* %ysize.addr, align 4
  %cmp376 = icmp sle i32 %226, 0
  br label %lor.end.378

lor.end.378:                                      ; preds = %lor.rhs.375, %if.then.372
  %227 = phi i1 [ true, %if.then.372 ], [ %cmp376, %lor.rhs.375 ]
  %lor.ext379 = zext i1 %227 to i32
  store i32 %lor.ext379, i32* %retval
  br label %return

if.end.380:                                       ; preds = %lor.lhs.false.367
  br label %if.end.381

if.end.381:                                       ; preds = %if.end.380, %if.end.359
  %228 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load382 = load i32, i32* %229, align 8
  %bf.clear383 = and i32 %bf.load382, 65535
  %cmp384 = icmp eq i32 %bf.clear383, 70
  br i1 %cmp384, label %if.then.386, label %if.end.398

if.then.386:                                      ; preds = %if.end.381
  %230 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %231 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp387 = icmp eq %struct.rtx_def* %230, %231
  br i1 %cmp387, label %if.then.389, label %if.end.397

if.then.389:                                      ; preds = %if.then.386
  %232 = load i32, i32* %xsize.addr, align 4
  %cmp390 = icmp sle i32 %232, 0
  br i1 %cmp390, label %lor.end.395, label %lor.rhs.392

lor.rhs.392:                                      ; preds = %if.then.389
  %233 = load i32, i32* %ysize.addr, align 4
  %cmp393 = icmp sle i32 %233, 0
  br label %lor.end.395

lor.end.395:                                      ; preds = %lor.rhs.392, %if.then.389
  %234 = phi i1 [ true, %if.then.389 ], [ %cmp393, %lor.rhs.392 ]
  %lor.ext396 = zext i1 %234 to i32
  store i32 %lor.ext396, i32* %retval
  br label %return

if.end.397:                                       ; preds = %if.then.386
  br label %if.end.398

if.end.398:                                       ; preds = %if.end.397, %if.end.381
  %235 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %236 = bitcast %struct.rtx_def* %235 to i32*
  %bf.load399 = load i32, i32* %236, align 8
  %bf.clear400 = and i32 %bf.load399, 65535
  %cmp401 = icmp eq i32 %bf.clear400, 67
  br i1 %cmp401, label %if.then.438, label %lor.lhs.false.403

lor.lhs.false.403:                                ; preds = %if.end.398
  %237 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %238 = bitcast %struct.rtx_def* %237 to i32*
  %bf.load404 = load i32, i32* %238, align 8
  %bf.clear405 = and i32 %bf.load404, 65535
  %cmp406 = icmp eq i32 %bf.clear405, 68
  br i1 %cmp406, label %if.then.438, label %lor.lhs.false.408

lor.lhs.false.408:                                ; preds = %lor.lhs.false.403
  %239 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %240 = bitcast %struct.rtx_def* %239 to i32*
  %bf.load409 = load i32, i32* %240, align 8
  %bf.clear410 = and i32 %bf.load409, 65535
  %cmp411 = icmp eq i32 %bf.clear410, 54
  br i1 %cmp411, label %if.then.438, label %lor.lhs.false.413

lor.lhs.false.413:                                ; preds = %lor.lhs.false.408
  %241 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %242 = bitcast %struct.rtx_def* %241 to i32*
  %bf.load414 = load i32, i32* %242, align 8
  %bf.clear415 = and i32 %bf.load414, 65535
  %cmp416 = icmp eq i32 %bf.clear415, 55
  br i1 %cmp416, label %if.then.438, label %lor.lhs.false.418

lor.lhs.false.418:                                ; preds = %lor.lhs.false.413
  %243 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %244 = bitcast %struct.rtx_def* %243 to i32*
  %bf.load419 = load i32, i32* %244, align 8
  %bf.clear420 = and i32 %bf.load419, 65535
  %cmp421 = icmp eq i32 %bf.clear420, 58
  br i1 %cmp421, label %if.then.438, label %lor.lhs.false.423

lor.lhs.false.423:                                ; preds = %lor.lhs.false.418
  %245 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %246 = bitcast %struct.rtx_def* %245 to i32*
  %bf.load424 = load i32, i32* %246, align 8
  %bf.clear425 = and i32 %bf.load424, 65535
  %cmp426 = icmp eq i32 %bf.clear425, 134
  br i1 %cmp426, label %if.then.438, label %lor.lhs.false.428

lor.lhs.false.428:                                ; preds = %lor.lhs.false.423
  %247 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %248 = bitcast %struct.rtx_def* %247 to i32*
  %bf.load429 = load i32, i32* %248, align 8
  %bf.clear430 = and i32 %bf.load429, 65535
  %cmp431 = icmp eq i32 %bf.clear430, 56
  br i1 %cmp431, label %if.then.438, label %lor.lhs.false.433

lor.lhs.false.433:                                ; preds = %lor.lhs.false.428
  %249 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %250 = bitcast %struct.rtx_def* %249 to i32*
  %bf.load434 = load i32, i32* %250, align 8
  %bf.clear435 = and i32 %bf.load434, 65535
  %cmp436 = icmp eq i32 %bf.clear435, 140
  br i1 %cmp436, label %if.then.438, label %if.end.588

if.then.438:                                      ; preds = %lor.lhs.false.433, %lor.lhs.false.428, %lor.lhs.false.423, %lor.lhs.false.418, %lor.lhs.false.413, %lor.lhs.false.408, %lor.lhs.false.403, %if.end.398
  %251 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load439 = load i32, i32* %252, align 8
  %bf.clear440 = and i32 %bf.load439, 65535
  %cmp441 = icmp eq i32 %bf.clear440, 54
  br i1 %cmp441, label %land.lhs.true.443, label %if.end.480

land.lhs.true.443:                                ; preds = %if.then.438
  %253 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load444 = load i32, i32* %254, align 8
  %bf.clear445 = and i32 %bf.load444, 65535
  %cmp446 = icmp eq i32 %bf.clear445, 54
  br i1 %cmp446, label %if.then.448, label %if.end.480

if.then.448:                                      ; preds = %land.lhs.true.443
  %255 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtwint451 = bitcast %union.rtunion_def* %arrayidx450 to i64*
  %256 = load i64, i64* %rtwint451, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld452 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld452, i32 0, i64 0
  %rtwint454 = bitcast %union.rtunion_def* %arrayidx453 to i64*
  %258 = load i64, i64* %rtwint454, align 8
  %sub455 = sub nsw i64 %256, %258
  %259 = load i64, i64* %c.addr, align 8
  %add456 = add nsw i64 %259, %sub455
  store i64 %add456, i64* %c.addr, align 8
  %260 = load i32, i32* %xsize.addr, align 4
  %cmp457 = icmp sle i32 %260, 0
  br i1 %cmp457, label %lor.end.478, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %if.then.448
  %261 = load i32, i32* %ysize.addr, align 4
  %cmp460 = icmp sle i32 %261, 0
  br i1 %cmp460, label %lor.end.478, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %lor.lhs.false.459
  %262 = load i64, i64* %c.addr, align 8
  %cmp463 = icmp sge i64 %262, 0
  br i1 %cmp463, label %land.lhs.true.465, label %lor.rhs.469

land.lhs.true.465:                                ; preds = %lor.lhs.false.462
  %263 = load i32, i32* %xsize.addr, align 4
  %conv466 = sext i32 %263 to i64
  %264 = load i64, i64* %c.addr, align 8
  %cmp467 = icmp sgt i64 %conv466, %264
  br i1 %cmp467, label %lor.end.478, label %lor.rhs.469

lor.rhs.469:                                      ; preds = %land.lhs.true.465, %lor.lhs.false.462
  %265 = load i64, i64* %c.addr, align 8
  %cmp470 = icmp slt i64 %265, 0
  br i1 %cmp470, label %land.rhs.472, label %land.end.477

land.rhs.472:                                     ; preds = %lor.rhs.469
  %266 = load i32, i32* %ysize.addr, align 4
  %conv473 = sext i32 %266 to i64
  %267 = load i64, i64* %c.addr, align 8
  %add474 = add nsw i64 %conv473, %267
  %cmp475 = icmp sgt i64 %add474, 0
  br label %land.end.477

land.end.477:                                     ; preds = %land.rhs.472, %lor.rhs.469
  %268 = phi i1 [ false, %lor.rhs.469 ], [ %cmp475, %land.rhs.472 ]
  br label %lor.end.478

lor.end.478:                                      ; preds = %land.end.477, %land.lhs.true.465, %lor.lhs.false.459, %if.then.448
  %269 = phi i1 [ true, %land.lhs.true.465 ], [ true, %lor.lhs.false.459 ], [ true, %if.then.448 ], [ %268, %land.end.477 ]
  %lor.ext479 = zext i1 %269 to i32
  store i32 %lor.ext479, i32* %retval
  br label %return

if.end.480:                                       ; preds = %land.lhs.true.443, %if.then.438
  %270 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %271 = bitcast %struct.rtx_def* %270 to i32*
  %bf.load481 = load i32, i32* %271, align 8
  %bf.clear482 = and i32 %bf.load481, 65535
  %cmp483 = icmp eq i32 %bf.clear482, 58
  br i1 %cmp483, label %if.then.485, label %if.end.506

if.then.485:                                      ; preds = %if.end.480
  %272 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load486 = load i32, i32* %273, align 8
  %bf.clear487 = and i32 %bf.load486, 65535
  %cmp488 = icmp eq i32 %bf.clear487, 58
  br i1 %cmp488, label %if.then.490, label %if.else.500

if.then.490:                                      ; preds = %if.then.485
  %274 = load i32, i32* %xsize.addr, align 4
  %275 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld491, i32 0, i64 0
  %rtx493 = bitcast %union.rtunion_def* %arrayidx492 to %struct.rtx_def**
  %276 = load %struct.rtx_def*, %struct.rtx_def** %rtx493, align 8
  %call494 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %276)
  %277 = load i32, i32* %ysize.addr, align 4
  %278 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld495 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx496 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld495, i32 0, i64 0
  %rtx497 = bitcast %union.rtunion_def* %arrayidx496 to %struct.rtx_def**
  %279 = load %struct.rtx_def*, %struct.rtx_def** %rtx497, align 8
  %call498 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %279)
  %280 = load i64, i64* %c.addr, align 8
  %call499 = call i32 @memrefs_conflict_p(i32 %274, %struct.rtx_def* %call494, i32 %277, %struct.rtx_def* %call498, i64 %280)
  store i32 %call499, i32* %retval
  br label %return

if.else.500:                                      ; preds = %if.then.485
  %281 = load i32, i32* %xsize.addr, align 4
  %282 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %282, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld501, i32 0, i64 0
  %rtx503 = bitcast %union.rtunion_def* %arrayidx502 to %struct.rtx_def**
  %283 = load %struct.rtx_def*, %struct.rtx_def** %rtx503, align 8
  %call504 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %283)
  %284 = load i32, i32* %ysize.addr, align 4
  %285 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %286 = load i64, i64* %c.addr, align 8
  %call505 = call i32 @memrefs_conflict_p(i32 %281, %struct.rtx_def* %call504, i32 %284, %struct.rtx_def* %285, i64 %286)
  store i32 %call505, i32* %retval
  br label %return

if.end.506:                                       ; preds = %if.end.480
  %287 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load507 = load i32, i32* %288, align 8
  %bf.clear508 = and i32 %bf.load507, 65535
  %cmp509 = icmp eq i32 %bf.clear508, 58
  br i1 %cmp509, label %if.then.511, label %if.end.517

if.then.511:                                      ; preds = %if.end.506
  %289 = load i32, i32* %xsize.addr, align 4
  %290 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %291 = load i32, i32* %ysize.addr, align 4
  %292 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld512 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld512, i32 0, i64 0
  %rtx514 = bitcast %union.rtunion_def* %arrayidx513 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx514, align 8
  %call515 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %293)
  %294 = load i64, i64* %c.addr, align 8
  %call516 = call i32 @memrefs_conflict_p(i32 %289, %struct.rtx_def* %290, i32 %291, %struct.rtx_def* %call515, i64 %294)
  store i32 %call516, i32* %retval
  br label %return

if.end.517:                                       ; preds = %if.end.506
  %295 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load518 = load i32, i32* %296, align 8
  %bf.clear519 = and i32 %bf.load518, 65535
  %cmp520 = icmp eq i32 %bf.clear519, 67
  br i1 %cmp520, label %if.then.557, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %if.end.517
  %297 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %298 = bitcast %struct.rtx_def* %297 to i32*
  %bf.load523 = load i32, i32* %298, align 8
  %bf.clear524 = and i32 %bf.load523, 65535
  %cmp525 = icmp eq i32 %bf.clear524, 68
  br i1 %cmp525, label %if.then.557, label %lor.lhs.false.527

lor.lhs.false.527:                                ; preds = %lor.lhs.false.522
  %299 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %300 = bitcast %struct.rtx_def* %299 to i32*
  %bf.load528 = load i32, i32* %300, align 8
  %bf.clear529 = and i32 %bf.load528, 65535
  %cmp530 = icmp eq i32 %bf.clear529, 54
  br i1 %cmp530, label %if.then.557, label %lor.lhs.false.532

lor.lhs.false.532:                                ; preds = %lor.lhs.false.527
  %301 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %302 = bitcast %struct.rtx_def* %301 to i32*
  %bf.load533 = load i32, i32* %302, align 8
  %bf.clear534 = and i32 %bf.load533, 65535
  %cmp535 = icmp eq i32 %bf.clear534, 55
  br i1 %cmp535, label %if.then.557, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %lor.lhs.false.532
  %303 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load538 = load i32, i32* %304, align 8
  %bf.clear539 = and i32 %bf.load538, 65535
  %cmp540 = icmp eq i32 %bf.clear539, 58
  br i1 %cmp540, label %if.then.557, label %lor.lhs.false.542

lor.lhs.false.542:                                ; preds = %lor.lhs.false.537
  %305 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %306 = bitcast %struct.rtx_def* %305 to i32*
  %bf.load543 = load i32, i32* %306, align 8
  %bf.clear544 = and i32 %bf.load543, 65535
  %cmp545 = icmp eq i32 %bf.clear544, 134
  br i1 %cmp545, label %if.then.557, label %lor.lhs.false.547

lor.lhs.false.547:                                ; preds = %lor.lhs.false.542
  %307 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %308 = bitcast %struct.rtx_def* %307 to i32*
  %bf.load548 = load i32, i32* %308, align 8
  %bf.clear549 = and i32 %bf.load548, 65535
  %cmp550 = icmp eq i32 %bf.clear549, 56
  br i1 %cmp550, label %if.then.557, label %lor.lhs.false.552

lor.lhs.false.552:                                ; preds = %lor.lhs.false.547
  %309 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %310 = bitcast %struct.rtx_def* %309 to i32*
  %bf.load553 = load i32, i32* %310, align 8
  %bf.clear554 = and i32 %bf.load553, 65535
  %cmp555 = icmp eq i32 %bf.clear554, 140
  br i1 %cmp555, label %if.then.557, label %if.end.587

if.then.557:                                      ; preds = %lor.lhs.false.552, %lor.lhs.false.547, %lor.lhs.false.542, %lor.lhs.false.537, %lor.lhs.false.532, %lor.lhs.false.527, %lor.lhs.false.522, %if.end.517
  %311 = load i32, i32* %xsize.addr, align 4
  %cmp558 = icmp sle i32 %311, 0
  br i1 %cmp558, label %lor.end.585, label %lor.lhs.false.560

lor.lhs.false.560:                                ; preds = %if.then.557
  %312 = load i32, i32* %ysize.addr, align 4
  %cmp561 = icmp sle i32 %312, 0
  br i1 %cmp561, label %lor.end.585, label %lor.rhs.563

lor.rhs.563:                                      ; preds = %lor.lhs.false.560
  %313 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call564 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %313, %struct.rtx_def* %314)
  %tobool565 = icmp ne i32 %call564, 0
  br i1 %tobool565, label %land.rhs.566, label %land.end.584

land.rhs.566:                                     ; preds = %lor.rhs.563
  %315 = load i64, i64* %c.addr, align 8
  %cmp567 = icmp sge i64 %315, 0
  br i1 %cmp567, label %land.lhs.true.569, label %lor.rhs.573

land.lhs.true.569:                                ; preds = %land.rhs.566
  %316 = load i32, i32* %xsize.addr, align 4
  %conv570 = sext i32 %316 to i64
  %317 = load i64, i64* %c.addr, align 8
  %cmp571 = icmp sgt i64 %conv570, %317
  br i1 %cmp571, label %lor.end.582, label %lor.rhs.573

lor.rhs.573:                                      ; preds = %land.lhs.true.569, %land.rhs.566
  %318 = load i64, i64* %c.addr, align 8
  %cmp574 = icmp slt i64 %318, 0
  br i1 %cmp574, label %land.rhs.576, label %land.end.581

land.rhs.576:                                     ; preds = %lor.rhs.573
  %319 = load i32, i32* %ysize.addr, align 4
  %conv577 = sext i32 %319 to i64
  %320 = load i64, i64* %c.addr, align 8
  %add578 = add nsw i64 %conv577, %320
  %cmp579 = icmp sgt i64 %add578, 0
  br label %land.end.581

land.end.581:                                     ; preds = %land.rhs.576, %lor.rhs.573
  %321 = phi i1 [ false, %lor.rhs.573 ], [ %cmp579, %land.rhs.576 ]
  br label %lor.end.582

lor.end.582:                                      ; preds = %land.end.581, %land.lhs.true.569
  %322 = phi i1 [ true, %land.lhs.true.569 ], [ %321, %land.end.581 ]
  br label %land.end.584

land.end.584:                                     ; preds = %lor.end.582, %lor.rhs.563
  %323 = phi i1 [ false, %lor.rhs.563 ], [ %322, %lor.end.582 ]
  br label %lor.end.585

lor.end.585:                                      ; preds = %land.end.584, %lor.lhs.false.560, %if.then.557
  %324 = phi i1 [ true, %lor.lhs.false.560 ], [ true, %if.then.557 ], [ %323, %land.end.584 ]
  %lor.ext586 = zext i1 %324 to i32
  store i32 %lor.ext586, i32* %retval
  br label %return

if.end.587:                                       ; preds = %lor.lhs.false.552
  store i32 1, i32* %retval
  br label %return

if.end.588:                                       ; preds = %lor.lhs.false.433
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.588, %if.end.587, %lor.end.585, %if.then.511, %if.else.500, %if.then.490, %lor.end.478, %lor.end.395, %lor.end.378, %if.end.354, %if.end.319, %if.then.286, %if.end.231, %if.then.230, %lor.end, %if.then.194, %if.else.168, %if.then.162, %if.then.136, %if.end.130, %if.then.123, %if.else.112, %if.then.104, %if.then.92, %if.then.87, %if.end.61, %if.then.60, %if.then.52, %if.then.47
  %325 = load i32, i32* %retval
  ret i32 %325
}

; Function Attrs: nounwind uwtable
define internal i32 @aliases_everything_p(%struct.rtx_def* %mem) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 83
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @fixed_scalar_and_varying_struct_p(%struct.rtx_def* %mem1, %struct.rtx_def* %mem2, %struct.rtx_def* %mem1_addr, %struct.rtx_def* %mem2_addr, i32 (%struct.rtx_def*, i32)* %varies_p) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mem1.addr = alloca %struct.rtx_def*, align 8
  %mem2.addr = alloca %struct.rtx_def*, align 8
  %mem1_addr.addr = alloca %struct.rtx_def*, align 8
  %mem2_addr.addr = alloca %struct.rtx_def*, align 8
  %varies_p.addr = alloca i32 (%struct.rtx_def*, i32)*, align 8
  store %struct.rtx_def* %mem1, %struct.rtx_def** %mem1.addr, align 8
  store %struct.rtx_def* %mem2, %struct.rtx_def** %mem2.addr, align 8
  store %struct.rtx_def* %mem1_addr, %struct.rtx_def** %mem1_addr.addr, align 8
  store %struct.rtx_def* %mem2_addr, %struct.rtx_def** %mem2_addr.addr, align 8
  store i32 (%struct.rtx_def*, i32)* %varies_p, i32 (%struct.rtx_def*, i32)** %varies_p.addr, align 8
  %0 = load i32, i32* @flag_strict_aliasing, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mem1.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool1 = icmp ne i32 %bf.lshr, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %mem2.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 28
  %bf.clear = and i32 %bf.lshr3, 1
  %tobool4 = icmp ne i32 %bf.clear, 0
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.11

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %5 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies_p.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mem1_addr.addr, align 8
  %call = call i32 %5(%struct.rtx_def* %6, i32 1)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.end.11, label %land.lhs.true.7

land.lhs.true.7:                                  ; preds = %land.lhs.true.5
  %7 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies_p.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mem2_addr.addr, align 8
  %call8 = call i32 %7(%struct.rtx_def* %8, i32 1)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true.7
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem1.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true.7, %land.lhs.true.5, %land.lhs.true, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %mem1.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load12 = load i32, i32* %11, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 28
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.27

land.lhs.true.16:                                 ; preds = %if.end.11
  %12 = load %struct.rtx_def*, %struct.rtx_def** %mem2.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 31
  %tobool19 = icmp ne i32 %bf.lshr18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.27

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %14 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies_p.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem1_addr.addr, align 8
  %call21 = call i32 %14(%struct.rtx_def* %15, i32 1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.27

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %16 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies_p.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %mem2_addr.addr, align 8
  %call24 = call i32 %16(%struct.rtx_def* %17, i32 1)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem2.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

if.end.27:                                        ; preds = %land.lhs.true.23, %land.lhs.true.20, %land.lhs.true.16, %if.end.11
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.then.10, %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define i32 @canon_true_dependence(%struct.rtx_def* %mem, i32 %mem_mode, %struct.rtx_def* %mem_addr, %struct.rtx_def* %x, i32 (%struct.rtx_def*, i32)* %varies) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.rtx_def*, align 8
  %mem_mode.addr = alloca i32, align 4
  %mem_addr.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %varies.addr = alloca i32 (%struct.rtx_def*, i32)*, align 8
  %x_addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store i32 %mem_mode, i32* %mem_mode.addr, align 4
  store %struct.rtx_def* %mem_addr, %struct.rtx_def** %mem_addr.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 (%struct.rtx_def*, i32)* %varies, i32 (%struct.rtx_def*, i32)** %varies.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 27
  %bf.clear3 = and i32 %bf.lshr2, 1
  %tobool4 = icmp ne i32 %bf.clear3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %cmp = icmp eq i32 %bf.clear7, 51
  br i1 %cmp, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load9 = load i32, i32* %8, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 62
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 16
  %bf.clear16 = and i32 %bf.lshr15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 51
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.26

land.lhs.true.18:                                 ; preds = %if.end.13
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load22 = load i32, i32* %13, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 62
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.18, %if.end.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call = call i32 @mems_in_disjoint_alias_sets_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load30 = load i32, i32* %17, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 26
  %bf.clear32 = and i32 %bf.lshr31, 1
  %tobool33 = icmp ne i32 %bf.clear32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.40

land.lhs.true.34:                                 ; preds = %if.end.29
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load35 = load i32, i32* %19, align 8
  %bf.lshr36 = lshr i32 %bf.load35, 26
  %bf.clear37 = and i32 %bf.lshr36, 1
  %tobool38 = icmp ne i32 %bf.clear37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true.34, %if.end.29
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call41 = call i32 @nonoverlapping_memrefs_p(%struct.rtx_def* %20, %struct.rtx_def* %21)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %call48 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %23)
  store %struct.rtx_def* %call48, %struct.rtx_def** %x_addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load49 = load i32, i32* %27, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %bf.clear51 = and i32 %bf.lshr50, 255
  %28 = load i32, i32* %mem_mode.addr, align 4
  %call52 = call i32 @base_alias_check(%struct.rtx_def* %24, %struct.rtx_def* %25, i32 %bf.clear51, i32 %28)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.44
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call56 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %29)
  store %struct.rtx_def* %call56, %struct.rtx_def** %x_addr, align 8
  %30 = load i32, i32* %mem_mode.addr, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx57 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %31 = load i8, i8* %arrayidx57, align 1
  %conv = zext i8 %31 to i32
  %32 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load58 = load i32, i32* %34, align 8
  %bf.lshr59 = lshr i32 %bf.load58, 16
  %bf.clear60 = and i32 %bf.lshr59, 255
  %idxprom61 = sext i32 %bf.clear60 to i64
  %arrayidx62 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom61
  %35 = load i8, i8* %arrayidx62, align 1
  %conv63 = zext i8 %35 to i32
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call64 = call i32 @memrefs_conflict_p(i32 %conv, %struct.rtx_def* %32, i32 %conv63, %struct.rtx_def* %36, i64 0)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.67, label %if.then.66

if.then.66:                                       ; preds = %if.end.55
  store i32 0, i32* %retval
  br label %return

if.end.67:                                        ; preds = %if.end.55
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call68 = call i32 @aliases_everything_p(%struct.rtx_def* %37)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  store i32 1, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.67
  %38 = load i32, i32* %mem_mode.addr, align 4
  %cmp72 = icmp eq i32 %38, 2
  br i1 %cmp72, label %if.then.78, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.71
  %39 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load74 = load i32, i32* %40, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 83
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false, %if.end.71
  store i32 1, i32* %retval
  br label %return

if.end.79:                                        ; preds = %lor.lhs.false
  %41 = load i32, i32* %mem_mode.addr, align 4
  %cmp80 = icmp eq i32 %41, 51
  br i1 %cmp80, label %if.then.88, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %if.end.79
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load83 = load i32, i32* %43, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %cmp86 = icmp eq i32 %bf.clear85, 51
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %lor.lhs.false.82, %if.end.79
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %lor.lhs.false.82
  %44 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %48 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %varies.addr, align 8
  %call90 = call %struct.rtx_def* @fixed_scalar_and_varying_struct_p(%struct.rtx_def* %44, %struct.rtx_def* %45, %struct.rtx_def* %46, %struct.rtx_def* %47, i32 (%struct.rtx_def*, i32)* %48)
  %tobool91 = icmp ne %struct.rtx_def* %call90, null
  %lnot = xor i1 %tobool91, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.88, %if.then.78, %if.then.70, %if.then.66, %if.then.54, %if.then.43, %if.then.39, %if.then.28, %if.then.25, %if.then.12, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: nounwind uwtable
define i32 @anti_dependence(%struct.rtx_def* %mem, %struct.rtx_def* %x) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @write_dependence_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @write_dependence_p(%struct.rtx_def* %mem, %struct.rtx_def* %x, i32 %writep) #0 {
entry:
  %retval = alloca i32, align 4
  %mem.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %writep.addr = alloca i32, align 4
  %x_addr = alloca %struct.rtx_def*, align 8
  %mem_addr = alloca %struct.rtx_def*, align 8
  %fixed_scalar = alloca %struct.rtx_def*, align 8
  %base = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %writep, i32* %writep.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 27
  %bf.clear3 = and i32 %bf.lshr2, 1
  %tobool4 = icmp ne i32 %bf.clear3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load5 = load i32, i32* %5, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %cmp = icmp eq i32 %bf.clear7, 51
  br i1 %cmp, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load9 = load i32, i32* %8, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 62
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 16
  %bf.clear16 = and i32 %bf.lshr15, 255
  %cmp17 = icmp eq i32 %bf.clear16, 51
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.26

land.lhs.true.18:                                 ; preds = %if.end.13
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load22 = load i32, i32* %13, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 62
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.18, %if.end.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call = call i32 @mems_in_disjoint_alias_sets_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.end.26
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load30 = load i32, i32* %17, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 26
  %bf.clear32 = and i32 %bf.lshr31, 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load33 = load i32, i32* %19, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 26
  %bf.clear35 = and i32 %bf.lshr34, 1
  %cmp36 = icmp ne i32 %bf.clear32, %bf.clear35
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.29
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.29
  %20 = load i32, i32* %writep.addr, align 4
  %tobool39 = icmp ne i32 %20, 0
  br i1 %tobool39, label %if.end.46, label %land.lhs.true.40

land.lhs.true.40:                                 ; preds = %if.end.38
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load41 = load i32, i32* %22, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 26
  %bf.clear43 = and i32 %bf.lshr42, 1
  %tobool44 = icmp ne i32 %bf.clear43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.40
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.40, %if.end.38
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call47 = call i32 @nonoverlapping_memrefs_p(%struct.rtx_def* %23, %struct.rtx_def* %24)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.46
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %call54 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %26)
  store %struct.rtx_def* %call54, %struct.rtx_def** %x_addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %call58 = call %struct.rtx_def* @get_addr(%struct.rtx_def* %28)
  store %struct.rtx_def* %call58, %struct.rtx_def** %mem_addr, align 8
  %29 = load i32, i32* %writep.addr, align 4
  %tobool59 = icmp ne i32 %29, 0
  br i1 %tobool59, label %if.end.77, label %if.then.60

if.then.60:                                       ; preds = %if.end.50
  %30 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %call61 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %30)
  store %struct.rtx_def* %call61, %struct.rtx_def** %base, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %tobool62 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.76

land.lhs.true.63:                                 ; preds = %if.then.60
  %32 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load64 = load i32, i32* %33, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 67
  br i1 %cmp66, label %if.then.75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.63
  %34 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load67 = load i32, i32* %35, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 68
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.76

land.lhs.true.70:                                 ; preds = %lor.lhs.false
  %36 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load71 = load i32, i32* %37, align 8
  %bf.lshr72 = lshr i32 %bf.load71, 26
  %bf.clear73 = and i32 %bf.lshr72, 1
  %tobool74 = icmp ne i32 %bf.clear73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.70, %land.lhs.true.63
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %land.lhs.true.70, %lor.lhs.false, %if.then.60
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.50
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load78 = load i32, i32* %41, align 8
  %bf.lshr79 = lshr i32 %bf.load78, 16
  %bf.clear80 = and i32 %bf.lshr79, 255
  %42 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load81 = load i32, i32* %43, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 16
  %bf.clear83 = and i32 %bf.lshr82, 255
  %call84 = call i32 @base_alias_check(%struct.rtx_def* %38, %struct.rtx_def* %39, i32 %bf.clear80, i32 %bf.clear83)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.end.87, label %if.then.86

if.then.86:                                       ; preds = %if.end.77
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.end.77
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call88 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %44)
  store %struct.rtx_def* %call88, %struct.rtx_def** %x_addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %call89 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %45)
  store %struct.rtx_def* %call89, %struct.rtx_def** %mem_addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load90 = load i32, i32* %47, align 8
  %bf.lshr91 = lshr i32 %bf.load90, 16
  %bf.clear92 = and i32 %bf.lshr91, 255
  %idxprom = sext i32 %bf.clear92 to i64
  %arrayidx93 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %48 = load i8, i8* %arrayidx93, align 1
  %conv = zext i8 %48 to i32
  %49 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load94 = load i32, i32* %51, align 8
  %bf.lshr95 = lshr i32 %bf.load94, 16
  %bf.clear96 = and i32 %bf.lshr95, 255
  %idxprom97 = sext i32 %bf.clear96 to i64
  %arrayidx98 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom97
  %52 = load i8, i8* %arrayidx98, align 1
  %conv99 = zext i8 %52 to i32
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call100 = call i32 @memrefs_conflict_p(i32 %conv, %struct.rtx_def* %49, i32 %conv99, %struct.rtx_def* %53, i64 0)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.end.87
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.end.87
  %54 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %mem_addr, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x_addr, align 8
  %call104 = call %struct.rtx_def* @fixed_scalar_and_varying_struct_p(%struct.rtx_def* %54, %struct.rtx_def* %55, %struct.rtx_def* %56, %struct.rtx_def* %57, i32 (%struct.rtx_def*, i32)* @rtx_addr_varies_p)
  store %struct.rtx_def* %call104, %struct.rtx_def** %fixed_scalar, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %fixed_scalar, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %cmp105 = icmp eq %struct.rtx_def* %58, %59
  br i1 %cmp105, label %land.lhs.true.107, label %land.rhs

land.lhs.true.107:                                ; preds = %if.end.103
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call108 = call i32 @aliases_everything_p(%struct.rtx_def* %60)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %land.rhs, label %land.end.116

land.rhs:                                         ; preds = %land.lhs.true.107, %if.end.103
  %61 = load %struct.rtx_def*, %struct.rtx_def** %fixed_scalar, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp110 = icmp eq %struct.rtx_def* %61, %62
  br i1 %cmp110, label %land.rhs.112, label %land.end

land.rhs.112:                                     ; preds = %land.rhs
  %63 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %call113 = call i32 @aliases_everything_p(%struct.rtx_def* %63)
  %tobool114 = icmp ne i32 %call113, 0
  %lnot = xor i1 %tobool114, true
  br label %land.end

land.end:                                         ; preds = %land.rhs.112, %land.rhs
  %64 = phi i1 [ false, %land.rhs ], [ %lnot, %land.rhs.112 ]
  %lnot115 = xor i1 %64, true
  br label %land.end.116

land.end.116:                                     ; preds = %land.end, %land.lhs.true.107
  %65 = phi i1 [ false, %land.lhs.true.107 ], [ %lnot115, %land.end ]
  %land.ext = zext i1 %65 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end.116, %if.then.102, %if.then.86, %if.then.75, %if.then.49, %if.then.45, %if.then.37, %if.then.28, %if.then.25, %if.then.12, %if.then
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @output_dependence(%struct.rtx_def* %mem, %struct.rtx_def* %x) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @write_dependence_p(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @mark_constant_function() #0 {
entry:
  %insn = alloca %struct.rtx_def*, align 8
  %nonlocal_mentioned = alloca i32, align 4
  %0 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %public_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 19
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %readonly_flag, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 12
  %bf.clear4 = and i32 %bf.lshr3, 1
  %tobool5 = icmp ne i32 %bf.clear4, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %pure_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %3 = bitcast i48* %pure_flag to i64*
  %bf.load7 = load i64, i64* %3, align 8
  %bf.lshr8 = lshr i64 %bf.load7, 31
  %bf.clear9 = and i64 %bf.lshr8, 1
  %bf.cast = trunc i64 %bf.clear9 to i32
  %tobool10 = icmp ne i32 %bf.cast, 0
  br i1 %tobool10, label %if.then, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false.6
  %4 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common12 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %volatile_flag, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 11
  %bf.clear15 = and i32 %bf.lshr14, 1
  %tobool16 = icmp ne i32 %bf.clear15, 0
  br i1 %tobool16, label %if.then, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.11
  %5 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common18 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 1
  %6 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type19 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load20 = load i32, i32* %mode, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 9
  %bf.clear22 = and i32 %bf.lshr21, 127
  %cmp = icmp eq i32 %bf.clear22, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.17, %lor.lhs.false.11, %lor.lhs.false.6, %lor.lhs.false, %entry
  br label %if.end.42

if.end:                                           ; preds = %lor.lhs.false.17
  %call = call zeroext i1 @mark_dfs_back_edges()
  br i1 %call, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end
  br label %if.end.42

if.end.24:                                        ; preds = %if.end
  store i32 0, i32* %nonlocal_mentioned, align 4
  call void @init_alias_analysis()
  %call25 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call25, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.24
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool26 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load27 = load i32, i32* %9, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %cmp29 = icmp eq i32 %conv, 105
  br i1 %cmp29, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call31 = call i32 @nonlocal_mentioned_p(%struct.rtx_def* %11)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true
  store i32 1, i32* %nonlocal_mentioned, align 4
  br label %for.end

if.end.34:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.34
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.33, %for.cond
  call void @end_alias_analysis()
  %14 = load i32, i32* %nonlocal_mentioned, align 4
  %tobool36 = icmp ne i32 %14, 0
  br i1 %tobool36, label %if.end.42, label %if.then.37

if.then.37:                                       ; preds = %for.end
  %15 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %common38 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %readonly_flag39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 2
  %bf.load40 = load i32, i32* %readonly_flag39, align 8
  %bf.clear41 = and i32 %bf.load40, -4097
  %bf.set = or i32 %bf.clear41, 4096
  store i32 %bf.set, i32* %readonly_flag39, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then, %if.then.23, %if.then.37, %for.end
  ret void
}

declare zeroext i1 @mark_dfs_back_edges() #1

; Function Attrs: nounwind uwtable
define void @init_alias_analysis() #0 {
entry:
  %maxreg = alloca i32, align 4
  %changed = alloca i32, align 4
  %pass = alloca i32, align 4
  %i = alloca i32, align 4
  %ui = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %base = alloca %struct.rtx_def*, align 8
  %base_regno = alloca i32, align 4
  %call = call i32 @max_reg_num()
  store i32 %call, i32* %maxreg, align 4
  %0 = load i32, i32* %maxreg, align 4
  store i32 %0, i32* @reg_known_value_size, align 4
  %1 = load i32, i32* %maxreg, align 4
  %sub = sub nsw i32 %1, 53
  %conv = sext i32 %sub to i64
  %call1 = call noalias i8* @xcalloc(i64 %conv, i64 8)
  %2 = bitcast i8* %call1 to %struct.rtx_def**
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %2, i64 -53
  store %struct.rtx_def** %add.ptr, %struct.rtx_def*** @reg_known_value, align 8
  %3 = load i32, i32* %maxreg, align 4
  %sub2 = sub nsw i32 %3, 53
  %conv3 = sext i32 %sub2 to i64
  %call4 = call noalias i8* @xcalloc(i64 %conv3, i64 1)
  %add.ptr5 = getelementptr inbounds i8, i8* %call4, i64 -53
  store i8* %add.ptr5, i8** @reg_known_equiv_p, align 8
  %4 = load i32, i32* %maxreg, align 4
  %mul = mul nsw i32 %4, 2
  store i32 %mul, i32* @reg_base_value_size, align 4
  %5 = load i32, i32* @reg_base_value_size, align 4
  %conv6 = zext i32 %5 to i64
  %call7 = call noalias i8* @xcalloc(i64 %conv6, i64 8)
  %6 = bitcast i8* %call7 to %struct.rtx_def**
  store %struct.rtx_def** %6, %struct.rtx_def*** @reg_base_value, align 8
  %7 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %8 = load i32, i32* @reg_base_value_size, align 4
  call void @ggc_add_rtx_root(%struct.rtx_def** %7, i32 %8)
  %9 = load i32, i32* @reg_base_value_size, align 4
  %conv8 = zext i32 %9 to i64
  %mul9 = mul i64 %conv8, 8
  %call10 = call noalias i8* @xmalloc(i64 %mul9)
  %10 = bitcast i8* %call10 to %struct.rtx_def**
  store %struct.rtx_def** %10, %struct.rtx_def*** @new_reg_base_value, align 8
  %11 = load i32, i32* @reg_base_value_size, align 4
  %conv11 = zext i32 %11 to i64
  %call12 = call noalias i8* @xmalloc(i64 %conv11)
  store i8* %call12, i8** @reg_seen, align 8
  %12 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %13 = load i32, i32* @flag_unroll_loops, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %15 = bitcast %struct.rtx_def** %14 to i8*
  %16 = load i32, i32* @reg_base_value_size, align 4
  %conv14 = zext i32 %16 to i64
  %mul15 = mul i64 %conv14, 8
  %call16 = call i8* @xrealloc(i8* %15, i64 %mul15)
  %17 = bitcast i8* %call16 to %struct.rtx_def**
  store %struct.rtx_def** %17, %struct.rtx_def*** @alias_invariant, align 8
  %18 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %19 = bitcast %struct.rtx_def** %18 to i8*
  %20 = load i32, i32* @reg_base_value_size, align 4
  %conv17 = zext i32 %20 to i64
  %mul18 = mul i64 %conv17, 8
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %mul18, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %pass, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  store i32 0, i32* %changed, align 4
  store i32 0, i32* @unique_id, align 4
  store i32 1, i32* @copying_arguments, align 4
  %21 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %22 = bitcast %struct.rtx_def** %21 to i8*
  %23 = load i32, i32* @reg_base_value_size, align 4
  %conv19 = zext i32 %23 to i64
  %mul20 = mul i64 %conv19, 8
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 %mul20, i32 1, i1 false)
  %24 = load i8*, i8** @reg_seen, align 8
  %25 = load i32, i32* @reg_base_value_size, align 4
  %conv21 = zext i32 %25 to i64
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %conv21, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %26 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %26, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load i64, i64* @argument_registers, align 8
  %28 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %28 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %27, %shl
  %tobool23 = icmp ne i64 %and, 0
  br i1 %tobool23, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %for.body
  %29 = load i32, i32* @target_flags, align 4
  %and25 = and i32 %29, 33554432
  %tobool26 = icmp ne i32 %and25, 0
  %cond = select i1 %tobool26, i32 5, i32 4
  %30 = load i32, i32* %i, align 4
  %call27 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond, i32 %30)
  %call28 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 0, %struct.rtx_def* %call27)
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %32, i64 %idxprom
  store %struct.rtx_def* %call28, %struct.rtx_def** %arrayidx, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %34, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 5, i32 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call33 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 %cond32, %struct.rtx_def* %35)
  %36 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx34 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %36, i64 7
  store %struct.rtx_def* %call33, %struct.rtx_def** %arrayidx34, align 8
  %37 = load i32, i32* @target_flags, align 4
  %and35 = and i32 %37, 33554432
  %tobool36 = icmp ne i32 %and35, 0
  %cond37 = select i1 %tobool36, i32 5, i32 4
  %38 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %call38 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 %cond37, %struct.rtx_def* %38)
  %39 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx39 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %39, i64 16
  store %struct.rtx_def* %call38, %struct.rtx_def** %arrayidx39, align 8
  %40 = load i32, i32* @target_flags, align 4
  %and40 = and i32 %40, 33554432
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 5, i32 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %call43 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 %cond42, %struct.rtx_def* %41)
  %42 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx44 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %42, i64 20
  store %struct.rtx_def* %call43, %struct.rtx_def** %arrayidx44, align 8
  %43 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %43, 33554432
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 5, i32 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %call48 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 %cond47, %struct.rtx_def* %44)
  %45 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx49 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %45, i64 6
  store %struct.rtx_def* %call48, %struct.rtx_def** %arrayidx49, align 8
  %call50 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call50, %struct.rtx_def** %insn, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.298, %for.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool52 = icmp ne %struct.rtx_def* %46, null
  br i1 %tobool52, label %for.body.53, label %for.end.302

for.body.53:                                      ; preds = %for.cond.51
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load = load i32, i32* %48, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom54 = sext i32 %bf.clear to i64
  %arrayidx55 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom54
  %49 = load i8, i8* %arrayidx55, align 1
  %conv56 = sext i8 %49 to i32
  %cmp57 = icmp eq i32 %conv56, 105
  br i1 %cmp57, label %if.then.59, label %if.else.285

if.then.59:                                       ; preds = %for.body.53
  %50 = load i32, i32* @reload_completed, align 4
  %tobool60 = icmp ne i32 %50, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.65

land.lhs.true.61:                                 ; preds = %if.then.59
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call62 = call i32 @prologue_epilogue_contains(%struct.rtx_def* %51)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %land.lhs.true.61
  br label %for.inc.298

if.end.65:                                        ; preds = %land.lhs.true.61, %if.then.59
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load67 = load i32, i32* %54, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 47
  br i1 %cmp69, label %land.lhs.true.71, label %if.else

land.lhs.true.71:                                 ; preds = %if.end.65
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 6
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %cmp75 = icmp ne %struct.rtx_def* %56, null
  br i1 %cmp75, label %land.lhs.true.77, label %if.else

land.lhs.true.77:                                 ; preds = %land.lhs.true.71
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call78 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %57, i32 18, %struct.rtx_def* null)
  %tobool79 = icmp ne %struct.rtx_def* %call78, null
  br i1 %tobool79, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %land.lhs.true.77
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 3
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  call void @record_set(%struct.rtx_def* %60, %struct.rtx_def* null, i8* null)
  br label %if.end.90

if.else:                                          ; preds = %land.lhs.true.77, %land.lhs.true.71, %if.end.65
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 3
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  call void @note_stores(%struct.rtx_def* %62, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @record_set, i8* null)
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.80
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load91 = load i32, i32* %64, align 8
  %bf.clear92 = and i32 %bf.load91, 65535
  %idxprom93 = sext i32 %bf.clear92 to i64
  %arrayidx94 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom93
  %65 = load i8, i8* %arrayidx94, align 1
  %conv95 = sext i8 %65 to i32
  %cmp96 = icmp eq i32 %conv95, 105
  br i1 %cmp96, label %cond.true, label %cond.false.114

cond.true:                                        ; preds = %if.end.90
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 3
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load101 = load i32, i32* %68, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 47
  br i1 %cmp103, label %cond.true.105, label %cond.false

cond.true.105:                                    ; preds = %cond.true
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 3
  %rtx108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx108, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 3
  %rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx111, align 8
  %call112 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %71, %struct.rtx_def* %73)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.105
  %cond113 = phi %struct.rtx_def* [ %70, %cond.true.105 ], [ %call112, %cond.false ]
  br label %cond.end.115

cond.false.114:                                   ; preds = %if.end.90
  br label %cond.end.115

cond.end.115:                                     ; preds = %cond.false.114, %cond.end
  %cond116 = phi %struct.rtx_def* [ %cond113, %cond.end ], [ null, %cond.false.114 ]
  store %struct.rtx_def* %cond116, %struct.rtx_def** %set, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp117 = icmp ne %struct.rtx_def* %74, null
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.284

land.lhs.true.119:                                ; preds = %cond.end.115
  %75 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx122, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load123 = load i32, i32* %77, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 61
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.284

land.lhs.true.127:                                ; preds = %land.lhs.true.119
  %78 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx132 to i32*
  %80 = load i32, i32* %rtuint, align 4
  %cmp133 = icmp uge i32 %80, 53
  br i1 %cmp133, label %if.then.135, label %if.end.284

if.then.135:                                      ; preds = %land.lhs.true.127
  %81 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtuint141 = bitcast %union.rtunion_def* %arrayidx140 to i32*
  %83 = load i32, i32* %rtuint141, align 4
  store i32 %83, i32* %regno, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %src, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 6
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  %cmp148 = icmp ne %struct.rtx_def* %87, null
  br i1 %cmp148, label %land.lhs.true.150, label %if.else.198

land.lhs.true.150:                                ; preds = %if.then.135
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call151 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %88, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call151, %struct.rtx_def** %note, align 8
  %cmp152 = icmp ne %struct.rtx_def* %call151, null
  br i1 %cmp152, label %land.lhs.true.154, label %lor.lhs.false

land.lhs.true.154:                                ; preds = %land.lhs.true.150
  %89 = load i32, i32* %regno, align 4
  %idxprom155 = zext i32 %89 to i64
  %90 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %90, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx156 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom155
  %91 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx156, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %91, i32 0, i32 3
  %92 = load i32, i32* %sets, align 4
  %cmp157 = icmp eq i32 %92, 1
  br i1 %cmp157, label %land.lhs.true.162, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.154, %land.lhs.true.150
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call159 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %93, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call159, %struct.rtx_def** %note, align 8
  %cmp160 = icmp ne %struct.rtx_def* %call159, null
  br i1 %cmp160, label %land.lhs.true.162, label %if.else.198

land.lhs.true.162:                                ; preds = %lor.lhs.false, %land.lhs.true.154
  %94 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load166 = load i32, i32* %96, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp ne i32 %bf.clear167, 3
  br i1 %cmp168, label %land.lhs.true.170, label %if.else.198

land.lhs.true.170:                                ; preds = %land.lhs.true.162
  %97 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 0
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  %call174 = call i32 @rtx_varies_p(%struct.rtx_def* %98, i32 1)
  %tobool175 = icmp ne i32 %call174, 0
  br i1 %tobool175, label %if.else.198, label %land.lhs.true.176

land.lhs.true.176:                                ; preds = %land.lhs.true.170
  %99 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld180 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld180, i32 0, i64 0
  %rtx182 = bitcast %union.rtunion_def* %arrayidx181 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx182, align 8
  %call183 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %100, %struct.rtx_def* %102)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.else.198, label %if.then.185

if.then.185:                                      ; preds = %land.lhs.true.176
  %103 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 0
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %105 = load i32, i32* %regno, align 4
  %idxprom189 = zext i32 %105 to i64
  %106 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx190 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %106, i64 %idxprom189
  store %struct.rtx_def* %104, %struct.rtx_def** %arrayidx190, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load191 = load i32, i32* %108, align 8
  %bf.lshr = lshr i32 %bf.load191, 16
  %bf.clear192 = and i32 %bf.lshr, 255
  %cmp193 = icmp eq i32 %bf.clear192, 3
  %conv194 = zext i1 %cmp193 to i32
  %conv195 = trunc i32 %conv194 to i8
  %109 = load i32, i32* %regno, align 4
  %idxprom196 = zext i32 %109 to i64
  %110 = load i8*, i8** @reg_known_equiv_p, align 8
  %arrayidx197 = getelementptr inbounds i8, i8* %110, i64 %idxprom196
  store i8 %conv195, i8* %arrayidx197, align 1
  br label %if.end.283

if.else.198:                                      ; preds = %land.lhs.true.176, %land.lhs.true.170, %land.lhs.true.162, %lor.lhs.false, %if.then.135
  %111 = load i32, i32* %regno, align 4
  %idxprom199 = zext i32 %111 to i64
  %112 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data200 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %112, i32 0, i32 4
  %reg201 = bitcast %union.varray_data_tag* %data200 to [1 x %struct.reg_info_def*]*
  %arrayidx202 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg201, i32 0, i64 %idxprom199
  %113 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx202, align 8
  %sets203 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %113, i32 0, i32 3
  %114 = load i32, i32* %sets203, align 4
  %cmp204 = icmp eq i32 %114, 1
  br i1 %cmp204, label %land.lhs.true.206, label %if.else.265

land.lhs.true.206:                                ; preds = %if.else.198
  %115 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load207 = load i32, i32* %116, align 8
  %bf.clear208 = and i32 %bf.load207, 65535
  %cmp209 = icmp eq i32 %bf.clear208, 75
  br i1 %cmp209, label %land.lhs.true.211, label %if.else.265

land.lhs.true.211:                                ; preds = %land.lhs.true.206
  %117 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtx214 = bitcast %union.rtunion_def* %arrayidx213 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx214, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load215 = load i32, i32* %119, align 8
  %bf.clear216 = and i32 %bf.load215, 65535
  %cmp217 = icmp eq i32 %bf.clear216, 61
  br i1 %cmp217, label %land.lhs.true.219, label %if.else.265

land.lhs.true.219:                                ; preds = %land.lhs.true.211
  %120 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 0
  %rtx222 = bitcast %union.rtunion_def* %arrayidx221 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx222, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %121, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtuint225 = bitcast %union.rtunion_def* %arrayidx224 to i32*
  %122 = load i32, i32* %rtuint225, align 4
  %cmp226 = icmp uge i32 %122, 53
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.265

land.lhs.true.228:                                ; preds = %land.lhs.true.219
  %123 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtuint234 = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %125 = load i32, i32* %rtuint234, align 4
  %idxprom235 = zext i32 %125 to i64
  %126 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx236 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %126, i64 %idxprom235
  %127 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx236, align 8
  %tobool237 = icmp ne %struct.rtx_def* %127, null
  br i1 %tobool237, label %land.lhs.true.238, label %if.else.265

land.lhs.true.238:                                ; preds = %land.lhs.true.228
  %128 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 1
  %rtx241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx241, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load242 = load i32, i32* %130, align 8
  %bf.clear243 = and i32 %bf.load242, 65535
  %cmp244 = icmp eq i32 %bf.clear243, 54
  br i1 %cmp244, label %if.then.246, label %if.else.265

if.then.246:                                      ; preds = %land.lhs.true.238
  %131 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld247 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx248 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld247, i32 0, i64 0
  %rtx249 = bitcast %union.rtunion_def* %arrayidx248 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx249, align 8
  store %struct.rtx_def* %132, %struct.rtx_def** %op0, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 0
  %rtuint252 = bitcast %union.rtunion_def* %arrayidx251 to i32*
  %134 = load i32, i32* %rtuint252, align 4
  %idxprom253 = zext i32 %134 to i64
  %135 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx254 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %135, i64 %idxprom253
  %136 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx254, align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %op0, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %138 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 1
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx259 to i64*
  %140 = load i64, i64* %rtwint, align 8
  %call260 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %137, i64 %140)
  %141 = load i32, i32* %regno, align 4
  %idxprom261 = zext i32 %141 to i64
  %142 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx262 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %142, i64 %idxprom261
  store %struct.rtx_def* %call260, %struct.rtx_def** %arrayidx262, align 8
  %143 = load i32, i32* %regno, align 4
  %idxprom263 = zext i32 %143 to i64
  %144 = load i8*, i8** @reg_known_equiv_p, align 8
  %arrayidx264 = getelementptr inbounds i8, i8* %144, i64 %idxprom263
  store i8 0, i8* %arrayidx264, align 1
  br label %if.end.282

if.else.265:                                      ; preds = %land.lhs.true.238, %land.lhs.true.228, %land.lhs.true.219, %land.lhs.true.211, %land.lhs.true.206, %if.else.198
  %145 = load i32, i32* %regno, align 4
  %idxprom266 = zext i32 %145 to i64
  %146 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data267 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %146, i32 0, i32 4
  %reg268 = bitcast %union.varray_data_tag* %data267 to [1 x %struct.reg_info_def*]*
  %arrayidx269 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg268, i32 0, i64 %idxprom266
  %147 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx269, align 8
  %sets270 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %147, i32 0, i32 3
  %148 = load i32, i32* %sets270, align 4
  %cmp271 = icmp eq i32 %148, 1
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.281

land.lhs.true.273:                                ; preds = %if.else.265
  %149 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call274 = call i32 @rtx_varies_p(%struct.rtx_def* %149, i32 1)
  %tobool275 = icmp ne i32 %call274, 0
  br i1 %tobool275, label %if.end.281, label %if.then.276

if.then.276:                                      ; preds = %land.lhs.true.273
  %150 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %151 = load i32, i32* %regno, align 4
  %idxprom277 = zext i32 %151 to i64
  %152 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx278 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %152, i64 %idxprom277
  store %struct.rtx_def* %150, %struct.rtx_def** %arrayidx278, align 8
  %153 = load i32, i32* %regno, align 4
  %idxprom279 = zext i32 %153 to i64
  %154 = load i8*, i8** @reg_known_equiv_p, align 8
  %arrayidx280 = getelementptr inbounds i8, i8* %154, i64 %idxprom279
  store i8 0, i8* %arrayidx280, align 1
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.276, %land.lhs.true.273, %if.else.265
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.246
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %if.then.185
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %land.lhs.true.127, %land.lhs.true.119, %cond.end.115
  br label %if.end.297

if.else.285:                                      ; preds = %for.body.53
  %155 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load286 = load i32, i32* %156, align 8
  %bf.clear287 = and i32 %bf.load286, 65535
  %cmp288 = icmp eq i32 %bf.clear287, 37
  br i1 %cmp288, label %land.lhs.true.290, label %if.end.296

land.lhs.true.290:                                ; preds = %if.else.285
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld291 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx292 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld291, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx292 to i32*
  %158 = load i32, i32* %rtint, align 4
  %cmp293 = icmp eq i32 %158, -87
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %land.lhs.true.290
  store i32 0, i32* @copying_arguments, align 4
  br label %if.end.296

if.end.296:                                       ; preds = %if.then.295, %land.lhs.true.290, %if.else.285
  br label %if.end.297

if.end.297:                                       ; preds = %if.end.296, %if.end.284
  br label %for.inc.298

for.inc.298:                                      ; preds = %if.end.297, %if.then.64
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld299 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx300 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld299, i32 0, i64 2
  %rtx301 = bitcast %union.rtunion_def* %arrayidx300 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx301, align 8
  store %struct.rtx_def* %160, %struct.rtx_def** %insn, align 8
  br label %for.cond.51

for.end.302:                                      ; preds = %for.cond.51
  store i32 0, i32* %ui, align 4
  br label %for.cond.303

for.cond.303:                                     ; preds = %for.inc.330, %for.end.302
  %161 = load i32, i32* %ui, align 4
  %162 = load i32, i32* @reg_base_value_size, align 4
  %cmp304 = icmp ult i32 %161, %162
  br i1 %cmp304, label %for.body.306, label %for.end.332

for.body.306:                                     ; preds = %for.cond.303
  %163 = load i32, i32* %ui, align 4
  %idxprom307 = zext i32 %163 to i64
  %164 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx308 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %164, i64 %idxprom307
  %165 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx308, align 8
  %tobool309 = icmp ne %struct.rtx_def* %165, null
  br i1 %tobool309, label %land.lhs.true.310, label %if.end.329

land.lhs.true.310:                                ; preds = %for.body.306
  %166 = load i32, i32* %ui, align 4
  %idxprom311 = zext i32 %166 to i64
  %167 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx312 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %167, i64 %idxprom311
  %168 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx312, align 8
  %169 = load i32, i32* %ui, align 4
  %idxprom313 = zext i32 %169 to i64
  %170 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx314 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %170, i64 %idxprom313
  %171 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx314, align 8
  %cmp315 = icmp ne %struct.rtx_def* %168, %171
  br i1 %cmp315, label %land.lhs.true.317, label %if.end.329

land.lhs.true.317:                                ; preds = %land.lhs.true.310
  %172 = load i32, i32* %ui, align 4
  %idxprom318 = zext i32 %172 to i64
  %173 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx319 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %173, i64 %idxprom318
  %174 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx319, align 8
  %175 = load i32, i32* %ui, align 4
  %idxprom320 = zext i32 %175 to i64
  %176 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx321 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %176, i64 %idxprom320
  %177 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx321, align 8
  %call322 = call i32 @rtx_equal_p(%struct.rtx_def* %174, %struct.rtx_def* %177)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.end.329, label %if.then.324

if.then.324:                                      ; preds = %land.lhs.true.317
  %178 = load i32, i32* %ui, align 4
  %idxprom325 = zext i32 %178 to i64
  %179 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx326 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %179, i64 %idxprom325
  %180 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx326, align 8
  %181 = load i32, i32* %ui, align 4
  %idxprom327 = zext i32 %181 to i64
  %182 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx328 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %182, i64 %idxprom327
  store %struct.rtx_def* %180, %struct.rtx_def** %arrayidx328, align 8
  store i32 1, i32* %changed, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.324, %land.lhs.true.317, %land.lhs.true.310, %for.body.306
  br label %for.inc.330

for.inc.330:                                      ; preds = %if.end.329
  %183 = load i32, i32* %ui, align 4
  %inc331 = add i32 %183, 1
  store i32 %inc331, i32* %ui, align 4
  br label %for.cond.303

for.end.332:                                      ; preds = %for.cond.303
  br label %do.cond

do.cond:                                          ; preds = %for.end.332
  %184 = load i32, i32* %changed, align 4
  %tobool333 = icmp ne i32 %184, 0
  br i1 %tobool333, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %185 = load i32, i32* %pass, align 4
  %inc334 = add nsw i32 %185, 1
  store i32 %inc334, i32* %pass, align 4
  %cmp335 = icmp slt i32 %inc334, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %186 = phi i1 [ false, %do.cond ], [ %cmp335, %land.rhs ]
  br i1 %186, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  store i32 53, i32* %i, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.351, %do.end
  %187 = load i32, i32* %i, align 4
  %188 = load i32, i32* %maxreg, align 4
  %cmp338 = icmp slt i32 %187, %188
  br i1 %cmp338, label %for.body.340, label %for.end.353

for.body.340:                                     ; preds = %for.cond.337
  %189 = load i32, i32* %i, align 4
  %idxprom341 = sext i32 %189 to i64
  %190 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx342 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %190, i64 %idxprom341
  %191 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx342, align 8
  %cmp343 = icmp eq %struct.rtx_def* %191, null
  br i1 %cmp343, label %if.then.345, label %if.end.350

if.then.345:                                      ; preds = %for.body.340
  %192 = load i32, i32* %i, align 4
  %idxprom346 = sext i32 %192 to i64
  %193 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %193, i32 0, i32 3
  %194 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %194, i32 0, i32 12
  %195 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx347 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %195, i64 %idxprom346
  %196 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx347, align 8
  %197 = load i32, i32* %i, align 4
  %idxprom348 = sext i32 %197 to i64
  %198 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %arrayidx349 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %198, i64 %idxprom348
  store %struct.rtx_def* %196, %struct.rtx_def** %arrayidx349, align 8
  br label %if.end.350

if.end.350:                                       ; preds = %if.then.345, %for.body.340
  br label %for.inc.351

for.inc.351:                                      ; preds = %if.end.350
  %199 = load i32, i32* %i, align 4
  %inc352 = add nsw i32 %199, 1
  store i32 %inc352, i32* %i, align 4
  br label %for.cond.337

for.end.353:                                      ; preds = %for.cond.337
  store i32 0, i32* %pass, align 4
  br label %do.body.354

do.body.354:                                      ; preds = %land.end.392, %for.end.353
  store i32 0, i32* %changed, align 4
  %200 = load i32, i32* %pass, align 4
  %inc355 = add nsw i32 %200, 1
  store i32 %inc355, i32* %pass, align 4
  store i32 0, i32* %ui, align 4
  br label %for.cond.356

for.cond.356:                                     ; preds = %for.inc.384, %do.body.354
  %201 = load i32, i32* %ui, align 4
  %202 = load i32, i32* @reg_base_value_size, align 4
  %cmp357 = icmp ult i32 %201, %202
  br i1 %cmp357, label %for.body.359, label %for.end.386

for.body.359:                                     ; preds = %for.cond.356
  %203 = load i32, i32* %ui, align 4
  %idxprom360 = zext i32 %203 to i64
  %204 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx361 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %204, i64 %idxprom360
  %205 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx361, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %base, align 8
  %206 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %tobool362 = icmp ne %struct.rtx_def* %206, null
  br i1 %tobool362, label %land.lhs.true.363, label %if.end.383

land.lhs.true.363:                                ; preds = %for.body.359
  %207 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load364 = load i32, i32* %208, align 8
  %bf.clear365 = and i32 %bf.load364, 65535
  %cmp366 = icmp eq i32 %bf.clear365, 61
  br i1 %cmp366, label %if.then.368, label %if.end.383

if.then.368:                                      ; preds = %land.lhs.true.363
  %209 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %209, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 0
  %rtuint371 = bitcast %union.rtunion_def* %arrayidx370 to i32*
  %210 = load i32, i32* %rtuint371, align 4
  store i32 %210, i32* %base_regno, align 4
  %211 = load i32, i32* %base_regno, align 4
  %212 = load i32, i32* %ui, align 4
  %cmp372 = icmp eq i32 %211, %212
  br i1 %cmp372, label %if.then.374, label %if.else.377

if.then.374:                                      ; preds = %if.then.368
  %213 = load i32, i32* %ui, align 4
  %idxprom375 = zext i32 %213 to i64
  %214 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx376 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %214, i64 %idxprom375
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx376, align 8
  br label %if.end.382

if.else.377:                                      ; preds = %if.then.368
  %215 = load i32, i32* %base_regno, align 4
  %idxprom378 = zext i32 %215 to i64
  %216 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx379 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %216, i64 %idxprom378
  %217 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx379, align 8
  %218 = load i32, i32* %ui, align 4
  %idxprom380 = zext i32 %218 to i64
  %219 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %arrayidx381 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %219, i64 %idxprom380
  store %struct.rtx_def* %217, %struct.rtx_def** %arrayidx381, align 8
  br label %if.end.382

if.end.382:                                       ; preds = %if.else.377, %if.then.374
  store i32 1, i32* %changed, align 4
  br label %if.end.383

if.end.383:                                       ; preds = %if.end.382, %land.lhs.true.363, %for.body.359
  br label %for.inc.384

for.inc.384:                                      ; preds = %if.end.383
  %220 = load i32, i32* %ui, align 4
  %inc385 = add i32 %220, 1
  store i32 %inc385, i32* %ui, align 4
  br label %for.cond.356

for.end.386:                                      ; preds = %for.cond.356
  br label %do.cond.387

do.cond.387:                                      ; preds = %for.end.386
  %221 = load i32, i32* %changed, align 4
  %tobool388 = icmp ne i32 %221, 0
  br i1 %tobool388, label %land.rhs.389, label %land.end.392

land.rhs.389:                                     ; preds = %do.cond.387
  %222 = load i32, i32* %pass, align 4
  %cmp390 = icmp slt i32 %222, 10
  br label %land.end.392

land.end.392:                                     ; preds = %land.rhs.389, %do.cond.387
  %223 = phi i1 [ false, %do.cond.387 ], [ %cmp390, %land.rhs.389 ]
  br i1 %223, label %do.body.354, label %do.end.393

do.end.393:                                       ; preds = %land.end.392
  %224 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %225 = bitcast %struct.rtx_def** %224 to i8*
  call void @free(i8* %225) #3
  store %struct.rtx_def** null, %struct.rtx_def*** @new_reg_base_value, align 8
  %226 = load i8*, i8** @reg_seen, align 8
  call void @free(i8* %226) #3
  store i8* null, i8** @reg_seen, align 8
  ret void
}

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal i32 @nonlocal_mentioned_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %base = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %regno = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %4, 34
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load4, 26
  %bf.clear5 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear5, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %x.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp8 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp8, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.6
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %x.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load15 = load i32, i32* %13, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  store i32 %bf.clear16, i32* %code, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.14, %entry
  %14 = load i32, i32* %code, align 4
  switch i32 %14, label %sw.default [
    i32 63, label %sw.bb
    i32 61, label %sw.bb.41
    i32 62, label %sw.bb.54
    i32 59, label %sw.bb.54
    i32 69, label %sw.bb.54
    i32 54, label %sw.bb.54
    i32 55, label %sw.bb.54
    i32 56, label %sw.bb.54
    i32 58, label %sw.bb.54
    i32 67, label %sw.bb.54
    i32 68, label %sw.bb.55
    i32 50, label %sw.bb.62
    i32 66, label %sw.bb.63
    i32 43, label %sw.bb.124
    i32 40, label %sw.bb.124
    i32 41, label %sw.bb.125
  ]

sw.bb:                                            ; preds = %if.end.17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load21 = load i32, i32* %17, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 61
  br i1 %cmp23, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %sw.bb
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %20 = load i32, i32* %rtuint, align 4
  %cmp31 = icmp ult i32 %20, 53
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.39

land.lhs.true.33:                                 ; preds = %if.then.25
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @subreg_regno(%struct.rtx_def* %21)
  %idxprom34 = zext i32 %call to i64
  %arrayidx35 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom34
  %22 = load i8, i8* %arrayidx35, align 1
  %conv36 = sext i8 %22 to i32
  %tobool37 = icmp ne i32 %conv36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.33, %if.then.25
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.41:                                         ; preds = %if.end.17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtuint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %24 = load i32, i32* %rtuint44, align 4
  store i32 %24, i32* %regno, align 4
  %25 = load i32, i32* %regno, align 4
  %cmp45 = icmp slt i32 %25, 53
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.53

land.lhs.true.47:                                 ; preds = %sw.bb.41
  %26 = load i32, i32* %regno, align 4
  %idxprom48 = sext i32 %26 to i64
  %arrayidx49 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom48
  %27 = load i8, i8* %arrayidx49, align 1
  %conv50 = sext i8 %27 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.47
  store i32 1, i32* %retval
  br label %return

if.end.53:                                        ; preds = %land.lhs.true.47, %sw.bb.41
  store i32 0, i32* %retval
  br label %return

sw.bb.54:                                         ; preds = %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17, %if.end.17
  store i32 0, i32* %retval
  br label %return

sw.bb.55:                                         ; preds = %if.end.17
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load56 = load i32, i32* %29, align 8
  %bf.lshr57 = lshr i32 %bf.load56, 26
  %bf.clear58 = and i32 %bf.lshr57, 1
  %tobool59 = icmp ne i32 %bf.clear58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %sw.bb.55
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %sw.bb.55
  store i32 1, i32* %retval
  br label %return

sw.bb.62:                                         ; preds = %if.end.17
  store i32 1, i32* %retval
  br label %return

sw.bb.63:                                         ; preds = %if.end.17
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load64 = load i32, i32* %31, align 8
  %bf.lshr65 = lshr i32 %bf.load64, 27
  %bf.clear66 = and i32 %bf.lshr65, 1
  %tobool67 = icmp ne i32 %bf.clear66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %sw.bb.63
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %sw.bb.63
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %call73 = call %struct.rtx_def* @find_base_term(%struct.rtx_def* %33)
  store %struct.rtx_def* %call73, %struct.rtx_def** %base, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %tobool74 = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool74, label %if.then.75, label %if.end.123

if.then.75:                                       ; preds = %if.end.69
  %35 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load76 = load i32, i32* %36, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 25
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.111

land.lhs.true.80:                                 ; preds = %if.then.75
  %37 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load81 = load i32, i32* %38, align 8
  %bf.lshr82 = lshr i32 %bf.load81, 16
  %bf.clear83 = and i32 %bf.lshr82, 255
  %39 = load i32, i32* @target_flags, align 4
  %and = and i32 %39, 33554432
  %tobool84 = icmp ne i32 %and, 0
  %cond = select i1 %tobool84, i32 5, i32 4
  %cmp85 = icmp eq i32 %bf.clear83, %cond
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.111

land.lhs.true.87:                                 ; preds = %land.lhs.true.80
  %40 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %cmp91 = icmp eq %struct.rtx_def* %41, %42
  br i1 %cmp91, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.87
  %43 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp96 = icmp eq %struct.rtx_def* %44, %45
  br i1 %cmp96, label %if.then.110, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false
  %46 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp102 = icmp eq %struct.rtx_def* %47, %48
  br i1 %cmp102, label %if.then.110, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %lor.lhs.false.98
  %49 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 0
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %cmp108 = icmp eq %struct.rtx_def* %50, %51
  br i1 %cmp108, label %if.then.110, label %if.end.111

if.then.110:                                      ; preds = %lor.lhs.false.104, %lor.lhs.false.98, %lor.lhs.false, %land.lhs.true.87
  store i32 0, i32* %retval
  br label %return

if.end.111:                                       ; preds = %lor.lhs.false.104, %land.lhs.true.80, %if.then.75
  %52 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load112 = load i32, i32* %53, align 8
  %bf.clear113 = and i32 %bf.load112, 65535
  %cmp114 = icmp eq i32 %bf.clear113, 68
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.122

land.lhs.true.116:                                ; preds = %if.end.111
  %54 = load %struct.rtx_def*, %struct.rtx_def** %base, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load117 = load i32, i32* %55, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 26
  %bf.clear119 = and i32 %bf.lshr118, 1
  %tobool120 = icmp ne i32 %bf.clear119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %land.lhs.true.116
  store i32 0, i32* %retval
  br label %return

if.end.122:                                       ; preds = %land.lhs.true.116, %if.end.111
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.end.69
  store i32 1, i32* %retval
  br label %return

sw.bb.124:                                        ; preds = %if.end.17, %if.end.17
  store i32 1, i32* %retval
  br label %return

sw.bb.125:                                        ; preds = %if.end.17
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load126 = load i32, i32* %57, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 27
  %bf.clear128 = and i32 %bf.lshr127, 1
  %tobool129 = icmp ne i32 %bf.clear128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %sw.bb.125
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %sw.bb.125
  br label %sw.default

sw.default:                                       ; preds = %if.end.17, %if.end.131
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.40
  %58 = load i32, i32* %code, align 4
  %idxprom132 = sext i32 %58 to i64
  %arrayidx133 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom132
  %59 = load i8*, i8** %arrayidx133, align 8
  store i8* %59, i8** %fmt, align 8
  %60 = load i32, i32* %code, align 4
  %idxprom134 = sext i32 %60 to i64
  %arrayidx135 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom134
  %61 = load i8, i8* %arrayidx135, align 1
  %conv136 = zext i8 %61 to i32
  %sub = sub nsw i32 %conv136, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.185, %sw.epilog
  %62 = load i32, i32* %i, align 4
  %cmp137 = icmp sge i32 %62, 0
  br i1 %cmp137, label %for.body, label %for.end.186

for.body:                                         ; preds = %for.cond
  %63 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %63 to i64
  %64 = load i8*, i8** %fmt, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %64, i64 %idxprom139
  %65 = load i8, i8* %arrayidx140, align 1
  %conv141 = sext i8 %65 to i32
  %cmp142 = icmp eq i32 %conv141, 101
  br i1 %cmp142, label %land.lhs.true.144, label %if.else.159

land.lhs.true.144:                                ; preds = %for.body
  %66 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %66 to i64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 %idxprom145
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %tobool149 = icmp ne %struct.rtx_def* %68, null
  br i1 %tobool149, label %if.then.150, label %if.else.159

if.then.150:                                      ; preds = %land.lhs.true.144
  %69 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 %idxprom151
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %call155 = call i32 @nonlocal_mentioned_p(%struct.rtx_def* %71)
  %tobool156 = icmp ne i32 %call155, 0
  br i1 %tobool156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.then.150
  store i32 1, i32* %retval
  br label %return

if.end.158:                                       ; preds = %if.then.150
  br label %if.end.184

if.else.159:                                      ; preds = %land.lhs.true.144, %for.body
  %72 = load i32, i32* %i, align 4
  %idxprom160 = sext i32 %72 to i64
  %73 = load i8*, i8** %fmt, align 8
  %arrayidx161 = getelementptr inbounds i8, i8* %73, i64 %idxprom160
  %74 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %74 to i32
  %cmp163 = icmp eq i32 %conv162, 69
  br i1 %cmp163, label %if.then.165, label %if.end.183

if.then.165:                                      ; preds = %if.else.159
  store i32 0, i32* %j, align 4
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc, %if.then.165
  %75 = load i32, i32* %j, align 4
  %76 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 %idxprom167
  %rtvec = bitcast %union.rtunion_def* %arrayidx169 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %78, i32 0, i32 0
  %79 = load i32, i32* %num_elem, align 4
  %cmp170 = icmp slt i32 %75, %79
  br i1 %cmp170, label %for.body.172, label %for.end

for.body.172:                                     ; preds = %for.cond.166
  %80 = load i32, i32* %j, align 4
  %idxprom173 = sext i32 %80 to i64
  %81 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %81 to i64
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 %idxprom174
  %rtvec177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtvec_def**
  %83 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec177, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %83, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom173
  %84 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx178, align 8
  %call179 = call i32 @nonlocal_mentioned_p(%struct.rtx_def* %84)
  %tobool180 = icmp ne i32 %call179, 0
  br i1 %tobool180, label %if.then.181, label %if.end.182

if.then.181:                                      ; preds = %for.body.172
  store i32 1, i32* %retval
  br label %return

if.end.182:                                       ; preds = %for.body.172
  br label %for.inc

for.inc:                                          ; preds = %if.end.182
  %85 = load i32, i32* %j, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.166

for.end:                                          ; preds = %for.cond.166
  br label %if.end.183

if.end.183:                                       ; preds = %for.end, %if.else.159
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.158
  br label %for.inc.185

for.inc.185:                                      ; preds = %if.end.184
  %86 = load i32, i32* %i, align 4
  %dec = add nsw i32 %86, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.186:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.186, %if.then.181, %if.then.157, %if.then.130, %sw.bb.124, %if.end.123, %if.then.121, %if.then.110, %if.then.68, %sw.bb.62, %if.end.61, %if.then.60, %sw.bb.54, %if.end.53, %if.then.52, %if.end.39, %if.then.38, %if.then.10
  %87 = load i32, i32* %retval
  ret i32 %87
}

; Function Attrs: nounwind uwtable
define void @end_alias_analysis() #0 {
entry:
  %0 = load %struct.rtx_def**, %struct.rtx_def*** @reg_known_value, align 8
  %add.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %0, i64 53
  %1 = bitcast %struct.rtx_def** %add.ptr to i8*
  call void @free(i8* %1) #3
  store %struct.rtx_def** null, %struct.rtx_def*** @reg_known_value, align 8
  store i32 0, i32* @reg_known_value_size, align 4
  %2 = load i8*, i8** @reg_known_equiv_p, align 8
  %add.ptr1 = getelementptr inbounds i8, i8* %2, i64 53
  call void @free(i8* %add.ptr1) #3
  store i8* null, i8** @reg_known_equiv_p, align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %tobool = icmp ne %struct.rtx_def** %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %5 = bitcast %struct.rtx_def** %4 to i8*
  call void @ggc_del_root(i8* %5)
  %6 = load %struct.rtx_def**, %struct.rtx_def*** @reg_base_value, align 8
  %7 = bitcast %struct.rtx_def** %6 to i8*
  call void @free(i8* %7) #3
  store %struct.rtx_def** null, %struct.rtx_def*** @reg_base_value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @reg_base_value_size, align 4
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %tobool2 = icmp ne %struct.rtx_def** %8, null
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.rtx_def**, %struct.rtx_def*** @alias_invariant, align 8
  %10 = bitcast %struct.rtx_def** %9 to i8*
  call void @free(i8* %10) #3
  store %struct.rtx_def** null, %struct.rtx_def*** @alias_invariant, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_alias_once() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call zeroext i1 @ix86_function_arg_regno_p(i32 %1)
  br i1 %call, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call1 = call i32 @ix86_hard_regno_mode_ok(i32 %2, i32 %cond)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %i, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  %5 = load i64, i64* @argument_registers, align 8
  %or = or i64 %5, %shl
  store i64 %or, i64* @argument_registers, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call3 = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* @splay_tree_compare_ints, void (i64)* null, void (i64)* null)
  store %struct.splay_tree_s* %call3, %struct.splay_tree_s** @alias_sets, align 8
  ret void
}

declare zeroext i1 @ix86_function_arg_regno_p(i32) #1

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare i32 @max_reg_num() #1

declare noalias i8* @xcalloc(i64, i64) #1

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare i32 @prologue_epilogue_contains(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @record_set(%struct.rtx_def* %dest, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %other = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load i32, i32* %regno, align 4
  %5 = load i32, i32* @reg_base_value_size, align 4
  %cmp1 = icmp uge i32 %4, %5
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 911, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.record_set, i32 0, i32 0)) #6
  unreachable

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end.3
  %7 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 49
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.then.4
  %9 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx9 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %10, i64 %idxprom
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx9, align 8
  br label %return

if.end.10:                                        ; preds = %if.then.4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %src, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end.3
  %13 = load i32, i32* %regno, align 4
  %idxprom13 = zext i32 %13 to i64
  %14 = load i8*, i8** @reg_seen, align 8
  %arrayidx14 = getelementptr inbounds i8, i8* %14, i64 %idxprom13
  %15 = load i8, i8* %arrayidx14, align 1
  %tobool15 = icmp ne i8 %15, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.else
  %16 = load i32, i32* %regno, align 4
  %idxprom17 = zext i32 %16 to i64
  %17 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx18 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %17, i64 %idxprom17
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx18, align 8
  br label %return

if.end.19:                                        ; preds = %if.else
  %18 = load i32, i32* %regno, align 4
  %idxprom20 = zext i32 %18 to i64
  %19 = load i8*, i8** @reg_seen, align 8
  %arrayidx21 = getelementptr inbounds i8, i8* %19, i64 %idxprom20
  store i8 1, i8* %arrayidx21, align 1
  %20 = load i32, i32* @target_flags, align 4
  %and = and i32 %20, 33554432
  %tobool22 = icmp ne i32 %and, 0
  %cond = select i1 %tobool22, i32 5, i32 4
  %21 = load i32, i32* @unique_id, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* @unique_id, align 4
  %conv = sext i32 %21 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %call23 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 25, i32 %cond, %struct.rtx_def* %call)
  %22 = load i32, i32* %regno, align 4
  %idxprom24 = zext i32 %22 to i64
  %23 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx25 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %23, i64 %idxprom24
  store %struct.rtx_def* %call23, %struct.rtx_def** %arrayidx25, align 8
  br label %return

if.end.26:                                        ; preds = %if.end.10
  %24 = load i32, i32* %regno, align 4
  %idxprom27 = zext i32 %24 to i64
  %25 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx28 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %25, i64 %idxprom27
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  %tobool29 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool29, label %if.then.30, label %if.else.96

if.then.30:                                       ; preds = %if.end.26
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load31 = load i32, i32* %28, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  switch i32 %bf.clear32, label %sw.default [
    i32 135, label %sw.bb
    i32 76, label %sw.bb
    i32 75, label %sw.bb.47
    i32 83, label %sw.bb.76
  ]

sw.bb:                                            ; preds = %if.then.30, %if.then.30
  %29 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp36 = icmp ne %struct.rtx_def* %30, %31
  br i1 %cmp36, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %sw.bb
  %32 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp41 = icmp ne %struct.rtx_def* %33, %34
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* %regno, align 4
  %idxprom44 = zext i32 %35 to i64
  %36 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx45 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %36, i64 %idxprom44
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %land.lhs.true, %sw.bb
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then.30
  store %struct.rtx_def* null, %struct.rtx_def** %other, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp51 = icmp eq %struct.rtx_def* %38, %39
  br i1 %cmp51, label %if.then.53, label %if.else.57

if.then.53:                                       ; preds = %sw.bb.47
  %40 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %other, align 8
  br label %if.end.68

if.else.57:                                       ; preds = %sw.bb.47
  %42 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp61 = icmp eq %struct.rtx_def* %43, %44
  br i1 %cmp61, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.else.57
  %45 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %other, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.else.57
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then.53
  %47 = load %struct.rtx_def*, %struct.rtx_def** %other, align 8
  %tobool69 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool69, label %lor.lhs.false, label %if.then.72

lor.lhs.false:                                    ; preds = %if.end.68
  %48 = load %struct.rtx_def*, %struct.rtx_def** %other, align 8
  %call70 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %48)
  %tobool71 = icmp ne %struct.rtx_def* %call70, null
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %lor.lhs.false, %if.end.68
  %49 = load i32, i32* %regno, align 4
  %idxprom73 = zext i32 %49 to i64
  %50 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx74 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %50, i64 %idxprom73
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx74, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %lor.lhs.false
  br label %sw.epilog

sw.bb.76:                                         ; preds = %if.then.30
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %cmp80 = icmp ne %struct.rtx_def* %52, %53
  br i1 %cmp80, label %if.then.90, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %sw.bb.76
  %54 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load86 = load i32, i32* %56, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp ne i32 %bf.clear87, 54
  br i1 %cmp88, label %if.then.90, label %if.end.93

if.then.90:                                       ; preds = %lor.lhs.false.82, %sw.bb.76
  %57 = load i32, i32* %regno, align 4
  %idxprom91 = zext i32 %57 to i64
  %58 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx92 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %58, i64 %idxprom91
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx92, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.90, %lor.lhs.false.82
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.30
  %59 = load i32, i32* %regno, align 4
  %idxprom94 = zext i32 %59 to i64
  %60 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx95 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %60, i64 %idxprom94
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx95, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.93, %if.end.75, %if.end.46
  br label %if.end.117

if.else.96:                                       ; preds = %if.end.26
  %61 = load i32, i32* %regno, align 4
  %cmp97 = icmp uge i32 %61, 53
  br i1 %cmp97, label %land.lhs.true.103, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.else.96
  %62 = load i32, i32* %regno, align 4
  %idxprom100 = zext i32 %62 to i64
  %arrayidx101 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom100
  %63 = load i8, i8* %arrayidx101, align 1
  %tobool102 = icmp ne i8 %63, 0
  br i1 %tobool102, label %if.end.116, label %land.lhs.true.103

land.lhs.true.103:                                ; preds = %lor.lhs.false.99, %if.else.96
  %64 = load i32, i32* %regno, align 4
  %idxprom104 = zext i32 %64 to i64
  %65 = load i8*, i8** @reg_seen, align 8
  %arrayidx105 = getelementptr inbounds i8, i8* %65, i64 %idxprom104
  %66 = load i8, i8* %arrayidx105, align 1
  %tobool106 = icmp ne i8 %66, 0
  br i1 %tobool106, label %if.end.116, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %land.lhs.true.103
  %67 = load i32, i32* %regno, align 4
  %idxprom108 = zext i32 %67 to i64
  %68 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx109 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %68, i64 %idxprom108
  %69 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx109, align 8
  %cmp110 = icmp eq %struct.rtx_def* %69, null
  br i1 %cmp110, label %if.then.112, label %if.end.116

if.then.112:                                      ; preds = %land.lhs.true.107
  %70 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call113 = call %struct.rtx_def* @find_base_value(%struct.rtx_def* %70)
  %71 = load i32, i32* %regno, align 4
  %idxprom114 = zext i32 %71 to i64
  %72 = load %struct.rtx_def**, %struct.rtx_def*** @new_reg_base_value, align 8
  %arrayidx115 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %72, i64 %idxprom114
  store %struct.rtx_def* %call113, %struct.rtx_def** %arrayidx115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.112, %land.lhs.true.107, %land.lhs.true.103, %lor.lhs.false.99
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %sw.epilog
  %73 = load i32, i32* %regno, align 4
  %idxprom118 = zext i32 %73 to i64
  %74 = load i8*, i8** @reg_seen, align 8
  %arrayidx119 = getelementptr inbounds i8, i8* %74, i64 %idxprom118
  store i8 1, i8* %arrayidx119, align 1
  br label %return

return:                                           ; preds = %if.end.117, %if.end.19, %if.then.16, %if.then.8, %if.then
  ret void
}

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_varies_p(%struct.rtx_def*, i32) #1

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

declare void @ggc_del_root(i8*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @nonoverlapping_component_refs_p(%union.tree_node* %x, %union.tree_node* %y) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca %union.tree_node*, align 8
  %y.addr = alloca %union.tree_node*, align 8
  %fieldx = alloca %union.tree_node*, align 8
  %fieldy = alloca %union.tree_node*, align 8
  %typex = alloca %union.tree_node*, align 8
  %typey = alloca %union.tree_node*, align 8
  %orig_y = alloca %union.tree_node*, align 8
  store %union.tree_node* %x, %union.tree_node** %x.addr, align 8
  store %union.tree_node* %y, %union.tree_node** %y.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.55, %entry
  %0 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  store %union.tree_node* %0, %union.tree_node** %orig_y, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %land.end.23, %do.body
  %1 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %2, %union.tree_node** %fieldx, align 8
  %3 = load %union.tree_node*, %union.tree_node** %fieldx, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 9
  %4 = load %union.tree_node*, %union.tree_node** %context, align 8
  store %union.tree_node* %4, %union.tree_node** %typex, align 8
  %5 = load %union.tree_node*, %union.tree_node** %orig_y, align 8
  store %union.tree_node* %5, %union.tree_node** %y.addr, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %land.end, %do.body.1
  %6 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %exp3 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 1
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx5, align 8
  store %union.tree_node* %7, %union.tree_node** %fieldy, align 8
  %8 = load %union.tree_node*, %union.tree_node** %fieldy, align 8
  %decl6 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %context7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 9
  %9 = load %union.tree_node*, %union.tree_node** %context7, align 8
  store %union.tree_node* %9, %union.tree_node** %typey, align 8
  %10 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %11 = load %union.tree_node*, %union.tree_node** %typey, align 8
  %cmp = icmp eq %union.tree_node* %10, %11
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.2
  br label %found

if.end:                                           ; preds = %do.body.2
  %12 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %exp8 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands9 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp8, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands9, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8
  store %union.tree_node* %13, %union.tree_node** %y.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %tobool = icmp ne %union.tree_node* %14, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp11 = icmp eq i32 %bf.clear, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp11, %land.rhs ]
  br i1 %16, label %do.body.2, label %do.end

do.end:                                           ; preds = %land.end
  %17 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp12 = bitcast %union.tree_node* %17 to %struct.tree_exp*
  %operands13 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp12, i32 0, i32 2
  %arrayidx14 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands13, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx14, align 8
  store %union.tree_node* %18, %union.tree_node** %x.addr, align 8
  br label %do.cond.15

do.cond.15:                                       ; preds = %do.end
  %19 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %tobool16 = icmp ne %union.tree_node* %19, null
  br i1 %tobool16, label %land.rhs.17, label %land.end.23

land.rhs.17:                                      ; preds = %do.cond.15
  %20 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %common18 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load20 = load i32, i32* %code19, align 8
  %bf.clear21 = and i32 %bf.load20, 255
  %cmp22 = icmp eq i32 %bf.clear21, 39
  br label %land.end.23

land.end.23:                                      ; preds = %land.rhs.17, %do.cond.15
  %21 = phi i1 [ false, %do.cond.15 ], [ %cmp22, %land.rhs.17 ]
  br i1 %21, label %do.body.1, label %do.end.24

do.end.24:                                        ; preds = %land.end.23
  store i1 false, i1* %retval
  br label %return

found:                                            ; preds = %if.then
  %22 = load %union.tree_node*, %union.tree_node** %typex, align 8
  %common25 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load27 = load i32, i32* %code26, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %cmp29 = icmp eq i32 %bf.clear28, 20
  br i1 %cmp29, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %found
  %23 = load %union.tree_node*, %union.tree_node** %fieldx, align 8
  %24 = load %union.tree_node*, %union.tree_node** %fieldy, align 8
  %cmp30 = icmp ne %union.tree_node* %23, %24
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %land.lhs.true
  store i1 true, i1* %retval
  br label %return

if.end.32:                                        ; preds = %land.lhs.true, %found
  %25 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp33 = bitcast %union.tree_node* %25 to %struct.tree_exp*
  %operands34 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp33, i32 0, i32 2
  %arrayidx35 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands34, i32 0, i64 0
  %26 = load %union.tree_node*, %union.tree_node** %arrayidx35, align 8
  store %union.tree_node* %26, %union.tree_node** %x.addr, align 8
  %27 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %exp36 = bitcast %union.tree_node* %27 to %struct.tree_exp*
  %operands37 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp36, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands37, i32 0, i64 0
  %28 = load %union.tree_node*, %union.tree_node** %arrayidx38, align 8
  store %union.tree_node* %28, %union.tree_node** %y.addr, align 8
  br label %do.cond.39

do.cond.39:                                       ; preds = %if.end.32
  %29 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %tobool40 = icmp ne %union.tree_node* %29, null
  br i1 %tobool40, label %land.lhs.true.41, label %land.end.55

land.lhs.true.41:                                 ; preds = %do.cond.39
  %30 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %tobool42 = icmp ne %union.tree_node* %30, null
  br i1 %tobool42, label %land.lhs.true.43, label %land.end.55

land.lhs.true.43:                                 ; preds = %land.lhs.true.41
  %31 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %common44 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 2
  %bf.load46 = load i32, i32* %code45, align 8
  %bf.clear47 = and i32 %bf.load46, 255
  %cmp48 = icmp eq i32 %bf.clear47, 39
  br i1 %cmp48, label %land.rhs.49, label %land.end.55

land.rhs.49:                                      ; preds = %land.lhs.true.43
  %32 = load %union.tree_node*, %union.tree_node** %y.addr, align 8
  %common50 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %code51 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common50, i32 0, i32 2
  %bf.load52 = load i32, i32* %code51, align 8
  %bf.clear53 = and i32 %bf.load52, 255
  %cmp54 = icmp eq i32 %bf.clear53, 39
  br label %land.end.55

land.end.55:                                      ; preds = %land.rhs.49, %land.lhs.true.43, %land.lhs.true.41, %do.cond.39
  %33 = phi i1 [ false, %land.lhs.true.43 ], [ false, %land.lhs.true.41 ], [ false, %do.cond.39 ], [ %cmp54, %land.rhs.49 ]
  br i1 %33, label %do.body, label %do.end.56

do.end.56:                                        ; preds = %land.end.55
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %do.end.56, %if.then.31, %do.end.24
  %34 = load i1, i1* %retval
  ret i1 %34
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @decl_for_component_ref(%union.tree_node* %x) #0 {
entry:
  %x.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %x, %union.tree_node** %x.addr, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %x.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %3 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %4 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %5 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %tobool1 = icmp ne %union.tree_node* %5, null
  br i1 %tobool1, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %do.end
  %6 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %common2 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 100
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  %8 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %do.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %8, %cond.true ], [ null, %cond.false ]
  ret %union.tree_node* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @adjust_offset_for_component_ref(%union.tree_node* %x, %struct.rtx_def* %offset) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %union.tree_node*, align 8
  %offset.addr = alloca %struct.rtx_def*, align 8
  %ioffset = alloca i64, align 8
  %field = alloca %union.tree_node*, align 8
  store %union.tree_node* %x, %union.tree_node** %x.addr, align 8
  store %struct.rtx_def* %offset, %struct.rtx_def** %offset.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %2 = load i64, i64* %rtwint, align 8
  store i64 %2, i64* %ioffset, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end
  %3 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp = bitcast %union.tree_node* %3 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx1 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx1, align 8
  store %union.tree_node* %4, %union.tree_node** %field, align 8
  %5 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %6 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call = call i32 @host_integerp(%union.tree_node* %6, i32 1)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.body
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %do.body
  %7 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl5 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %arguments6 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl5, i32 0, i32 10
  %8 = load %union.tree_node*, %union.tree_node** %arguments6, align 8
  %call7 = call i64 @tree_low_cst(%union.tree_node* %8, i32 1)
  %9 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl8 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 19
  %t = bitcast %union.anon.2* %u2 to %union.tree_node**
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call9 = call i64 @tree_low_cst(%union.tree_node* %10, i32 1)
  %div = sdiv i64 %call9, 8
  %add = add nsw i64 %call7, %div
  %11 = load i64, i64* %ioffset, align 8
  %add10 = add nsw i64 %11, %add
  store i64 %add10, i64* %ioffset, align 8
  %12 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %exp11 = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands12 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp11, i32 0, i32 2
  %arrayidx13 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands12, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx13, align 8
  store %union.tree_node* %13, %union.tree_node** %x.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.4
  %14 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %tobool14 = icmp ne %union.tree_node* %14, null
  br i1 %tobool14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %15 = load %union.tree_node*, %union.tree_node** %x.addr, align 8
  %common = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 39
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %16 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %16, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %17 = load i64, i64* %ioffset, align 8
  %call15 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %17)
  store %struct.rtx_def* %call15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3, %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %18
}

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare %struct.rtx_def* @ix86_find_base_term(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rtx_equal_for_memref_p(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp1 = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp3 = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call6 = call %struct.rtx_def* @canon_rtx(%struct.rtx_def* %5)
  store %struct.rtx_def* %call6, %struct.rtx_def** %y.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp7 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %10 = load i32, i32* %code, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp ne i32 %10, %bf.clear11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.9
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load15 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load15, 16
  %bf.clear16 = and i32 %bf.lshr, 255
  %15 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load17 = load i32, i32* %16, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %cmp20 = icmp ne i32 %bf.clear16, %bf.clear19
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.14
  %17 = load i32, i32* %code, align 4
  switch i32 %17, label %sw.default [
    i32 60, label %sw.bb
    i32 61, label %sw.bb.27
    i32 67, label %sw.bb.35
    i32 68, label %sw.bb.43
    i32 54, label %sw.bb.51
    i32 55, label %sw.bb.51
    i32 70, label %sw.bb.52
  ]

sw.bb:                                            ; preds = %if.end.22
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rt_cselib = bitcast %union.rtunion_def* %arrayidx to %struct.cselib_val_struct**
  %19 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rt_cselib25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.cselib_val_struct**
  %21 = load %struct.cselib_val_struct*, %struct.cselib_val_struct** %rt_cselib25, align 8
  %cmp26 = icmp eq %struct.cselib_val_struct* %19, %21
  %conv = zext i1 %cmp26 to i32
  store i32 %conv, i32* %retval
  br label %return

sw.bb.27:                                         ; preds = %if.end.22
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %23 = load i32, i32* %rtuint, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtuint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %25 = load i32, i32* %rtuint32, align 4
  %cmp33 = icmp eq i32 %23, %25
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %retval
  br label %return

sw.bb.35:                                         ; preds = %if.end.22
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %cmp41 = icmp eq %struct.rtx_def* %27, %29
  %conv42 = zext i1 %cmp41 to i32
  store i32 %conv42, i32* %retval
  br label %return

sw.bb.43:                                         ; preds = %if.end.22
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx45 to i8**
  %31 = load i8*, i8** %rtstr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtstr48 = bitcast %union.rtunion_def* %arrayidx47 to i8**
  %33 = load i8*, i8** %rtstr48, align 8
  %cmp49 = icmp eq i8* %31, %33
  %conv50 = zext i1 %cmp49 to i32
  store i32 %conv50, i32* %retval
  br label %return

sw.bb.51:                                         ; preds = %if.end.22, %if.end.22
  store i32 0, i32* %retval
  br label %return

sw.bb.52:                                         ; preds = %if.end.22
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtint = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %35 = load i32, i32* %rtint, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtint57 = bitcast %union.rtunion_def* %arrayidx56 to i32*
  %37 = load i32, i32* %rtint57, align 4
  %cmp58 = icmp eq i32 %35, %37
  br i1 %cmp58, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %sw.bb.52
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %call66 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %39, %struct.rtx_def* %41)
  %tobool = icmp ne i32 %call66, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.52
  %42 = phi i1 [ false, %sw.bb.52 ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %42 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end.22
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %43 = load i32, i32* %code, align 4
  %cmp67 = icmp eq i32 %43, 103
  br i1 %cmp67, label %if.then.77, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %sw.epilog
  %44 = load i32, i32* %code, align 4
  %cmp70 = icmp eq i32 %44, 102
  br i1 %cmp70, label %if.then.77, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %lor.lhs.false.69
  %45 = load i32, i32* %code, align 4
  %idxprom = sext i32 %45 to i64
  %arrayidx73 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %46 = load i8, i8* %arrayidx73, align 1
  %conv74 = sext i8 %46 to i32
  %cmp75 = icmp eq i32 %conv74, 99
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %lor.lhs.false.72, %lor.lhs.false.69, %sw.epilog
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %call84 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %48, %struct.rtx_def* %50)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %lor.rhs

land.lhs.true.86:                                 ; preds = %if.then.77
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 1
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 1
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %call93 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %52, %struct.rtx_def* %54)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.86, %if.then.77
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %call101 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %56, %struct.rtx_def* %58)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %land.rhs.103, label %land.end.112

land.rhs.103:                                     ; preds = %lor.rhs
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 1
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %call110 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %60, %struct.rtx_def* %62)
  %tobool111 = icmp ne i32 %call110, 0
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.103, %lor.rhs
  %63 = phi i1 [ false, %lor.rhs ], [ %tobool111, %land.rhs.103 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.112, %land.lhs.true.86
  %64 = phi i1 [ true, %land.lhs.true.86 ], [ %63, %land.end.112 ]
  %lor.ext = zext i1 %64 to i32
  store i32 %lor.ext, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.72
  %65 = load i32, i32* %code, align 4
  %idxprom114 = sext i32 %65 to i64
  %arrayidx115 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom114
  %66 = load i8, i8* %arrayidx115, align 1
  %conv116 = sext i8 %66 to i32
  %cmp117 = icmp eq i32 %conv116, 60
  br i1 %cmp117, label %if.then.125, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %if.else
  %67 = load i32, i32* %code, align 4
  %idxprom120 = sext i32 %67 to i64
  %arrayidx121 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom120
  %68 = load i8, i8* %arrayidx121, align 1
  %conv122 = sext i8 %68 to i32
  %cmp123 = icmp eq i32 %conv122, 50
  br i1 %cmp123, label %if.then.125, label %if.else.145

if.then.125:                                      ; preds = %lor.lhs.false.119, %if.else
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %call132 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %70, %struct.rtx_def* %72)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %land.rhs.134, label %land.end.143

land.rhs.134:                                     ; preds = %if.then.125
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 1
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 1
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx140, align 8
  %call141 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %74, %struct.rtx_def* %76)
  %tobool142 = icmp ne i32 %call141, 0
  br label %land.end.143

land.end.143:                                     ; preds = %land.rhs.134, %if.then.125
  %77 = phi i1 [ false, %if.then.125 ], [ %tobool142, %land.rhs.134 ]
  %land.ext144 = zext i1 %77 to i32
  store i32 %land.ext144, i32* %retval
  br label %return

if.else.145:                                      ; preds = %lor.lhs.false.119
  %78 = load i32, i32* %code, align 4
  %idxprom146 = sext i32 %78 to i64
  %arrayidx147 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom146
  %79 = load i8, i8* %arrayidx147, align 1
  %conv148 = sext i8 %79 to i32
  %cmp149 = icmp eq i32 %conv148, 49
  br i1 %cmp149, label %if.then.151, label %if.end.159

if.then.151:                                      ; preds = %if.else.145
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 0
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %call158 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %81, %struct.rtx_def* %83)
  store i32 %call158, i32* %retval
  br label %return

if.end.159:                                       ; preds = %if.else.145
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160
  %84 = load i32, i32* %code, align 4
  %idxprom162 = sext i32 %84 to i64
  %arrayidx163 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom162
  %85 = load i8*, i8** %arrayidx163, align 8
  store i8* %85, i8** %fmt, align 8
  %86 = load i32, i32* %code, align 4
  %idxprom164 = sext i32 %86 to i64
  %arrayidx165 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom164
  %87 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %87 to i32
  %sub = sub nsw i32 %conv166, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.255, %if.end.161
  %88 = load i32, i32* %i, align 4
  %cmp167 = icmp sge i32 %88, 0
  br i1 %cmp167, label %for.body, label %for.end.256

for.body:                                         ; preds = %for.cond
  %89 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %89 to i64
  %90 = load i8*, i8** %fmt, align 8
  %arrayidx170 = getelementptr inbounds i8, i8* %90, i64 %idxprom169
  %91 = load i8, i8* %arrayidx170, align 1
  %conv171 = sext i8 %91 to i32
  switch i32 %conv171, label %sw.default.253 [
    i32 105, label %sw.bb.172
    i32 69, label %sw.bb.185
    i32 101, label %sw.bb.225
    i32 115, label %sw.bb.239
    i32 48, label %sw.bb.252
  ]

sw.bb.172:                                        ; preds = %for.body
  %92 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %92 to i64
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 %idxprom173
  %rtint176 = bitcast %union.rtunion_def* %arrayidx175 to i32*
  %94 = load i32, i32* %rtint176, align 4
  %95 = load i32, i32* %i, align 4
  %idxprom177 = sext i32 %95 to i64
  %96 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 %idxprom177
  %rtint180 = bitcast %union.rtunion_def* %arrayidx179 to i32*
  %97 = load i32, i32* %rtint180, align 4
  %cmp181 = icmp ne i32 %94, %97
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %sw.bb.172
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %sw.bb.172
  br label %sw.epilog.254

sw.bb.185:                                        ; preds = %for.body
  %98 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %98 to i64
  %99 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 %idxprom186
  %rtvec = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtvec_def**
  %100 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %100, i32 0, i32 0
  %101 = load i32, i32* %num_elem, align 4
  %102 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 %idxprom189
  %rtvec192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtvec_def**
  %104 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec192, align 8
  %num_elem193 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %104, i32 0, i32 0
  %105 = load i32, i32* %num_elem193, align 4
  %cmp194 = icmp ne i32 %101, %105
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %sw.bb.185
  store i32 0, i32* %retval
  br label %return

if.end.197:                                       ; preds = %sw.bb.185
  store i32 0, i32* %j, align 4
  br label %for.cond.198

for.cond.198:                                     ; preds = %for.inc, %if.end.197
  %106 = load i32, i32* %j, align 4
  %107 = load i32, i32* %i, align 4
  %idxprom199 = sext i32 %107 to i64
  %108 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 %idxprom199
  %rtvec202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtvec_def**
  %109 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec202, align 8
  %num_elem203 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %109, i32 0, i32 0
  %110 = load i32, i32* %num_elem203, align 4
  %cmp204 = icmp slt i32 %106, %110
  br i1 %cmp204, label %for.body.206, label %for.end

for.body.206:                                     ; preds = %for.cond.198
  %111 = load i32, i32* %j, align 4
  %idxprom207 = sext i32 %111 to i64
  %112 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %112 to i64
  %113 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 %idxprom208
  %rtvec211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtvec_def**
  %114 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec211, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %114, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom207
  %115 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx212, align 8
  %116 = load i32, i32* %j, align 4
  %idxprom213 = sext i32 %116 to i64
  %117 = load i32, i32* %i, align 4
  %idxprom214 = sext i32 %117 to i64
  %118 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 %idxprom214
  %rtvec217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtvec_def**
  %119 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec217, align 8
  %elem218 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %119, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem218, i32 0, i64 %idxprom213
  %120 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx219, align 8
  %call220 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %115, %struct.rtx_def* %120)
  %cmp221 = icmp eq i32 %call220, 0
  br i1 %cmp221, label %if.then.223, label %if.end.224

if.then.223:                                      ; preds = %for.body.206
  store i32 0, i32* %retval
  br label %return

if.end.224:                                       ; preds = %for.body.206
  br label %for.inc

for.inc:                                          ; preds = %if.end.224
  %121 = load i32, i32* %j, align 4
  %inc = add nsw i32 %121, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.198

for.end:                                          ; preds = %for.cond.198
  br label %sw.epilog.254

sw.bb.225:                                        ; preds = %for.body
  %122 = load i32, i32* %i, align 4
  %idxprom226 = sext i32 %122 to i64
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 %idxprom226
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %125 = load i32, i32* %i, align 4
  %idxprom230 = sext i32 %125 to i64
  %126 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 %idxprom230
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  %call234 = call i32 @rtx_equal_for_memref_p(%struct.rtx_def* %124, %struct.rtx_def* %127)
  %cmp235 = icmp eq i32 %call234, 0
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %sw.bb.225
  store i32 0, i32* %retval
  br label %return

if.end.238:                                       ; preds = %sw.bb.225
  br label %sw.epilog.254

sw.bb.239:                                        ; preds = %for.body
  %128 = load i32, i32* %i, align 4
  %idxprom240 = sext i32 %128 to i64
  %129 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 %idxprom240
  %rtstr243 = bitcast %union.rtunion_def* %arrayidx242 to i8**
  %130 = load i8*, i8** %rtstr243, align 8
  %131 = load i32, i32* %i, align 4
  %idxprom244 = sext i32 %131 to i64
  %132 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %fld245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld245, i32 0, i64 %idxprom244
  %rtstr247 = bitcast %union.rtunion_def* %arrayidx246 to i8**
  %133 = load i8*, i8** %rtstr247, align 8
  %call248 = call i32 @strcmp(i8* %130, i8* %133) #7
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.251

if.then.250:                                      ; preds = %sw.bb.239
  store i32 0, i32* %retval
  br label %return

if.end.251:                                       ; preds = %sw.bb.239
  br label %sw.epilog.254

sw.bb.252:                                        ; preds = %for.body
  br label %sw.epilog.254

sw.default.253:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.rtx_equal_for_memref_p, i32 0, i32 0)) #6
  unreachable

sw.epilog.254:                                    ; preds = %sw.bb.252, %if.end.251, %if.end.238, %for.end, %if.end.184
  br label %for.inc.255

for.inc.255:                                      ; preds = %sw.epilog.254
  %134 = load i32, i32* %i, align 4
  %dec = add nsw i32 %134, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.256:                                      ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.256, %if.then.250, %if.then.237, %if.then.223, %if.then.196, %if.then.183, %if.then.151, %land.end.143, %lor.end, %land.end, %sw.bb.51, %sw.bb.43, %sw.bb.35, %sw.bb.27, %sw.bb, %if.then.21, %if.then.13, %if.then.8, %if.then.4, %if.then
  %135 = load i32, i32* %retval
  ret i32 %135
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

declare i32 @rtx_addr_varies_p(%struct.rtx_def*, i32) #1

declare i32 @subreg_regno(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
