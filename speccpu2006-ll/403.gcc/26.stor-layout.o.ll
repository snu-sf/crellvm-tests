; ModuleID = 'stor-layout.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
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
%struct.record_layout_info_s = type { %union.tree_node*, %union.tree_node*, i32, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.rtx_def*, %struct.anon }
%struct.anon = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.anon.0 = type { i32 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { i32, i8* }

@set_alignment = global i32 0, align 4
@reference_types_internal = internal global i32 0, align 4
@pending_sizes = internal global %union.tree_node* null, align 8
@current_function_decl = external global %union.tree_node*, align 8
@tree_code_type = external global [256 x i8], align 16
@.str = private unnamed_addr constant [14 x i8] c"stor-layout.c\00", align 1
@__FUNCTION__.put_pending_sizes = private unnamed_addr constant [18 x i8] c"put_pending_sizes\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"type size can't be explicitly evaluated\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"variable-size type declared outside of any function\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@immediate_size_expand = common global i32 0, align 4
@cfun = external global %struct.function*, align 8
@mode_bitsize = external constant [59 x i16], align 16
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@__FUNCTION__.smallest_mode_for_size = private unnamed_addr constant [23 x i8] c"smallest_mode_for_size\00", align 1
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.int_mode_for_mode = private unnamed_addr constant [18 x i8] c"int_mode_for_mode\00", align 1
@__FUNCTION__.layout_decl = private unnamed_addr constant [12 x i8] c"layout_decl\00", align 1
@sizetype_tab = common global [6 x %union.tree_node*] zeroinitializer, align 16
@maximum_field_alignment = common global i32 0, align 4
@warn_larger_than = external global i32, align 4
@larger_than_size = external global i64, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"size of `%s' is %d bytes\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"size of `%s' is larger than %d bytes\00", align 1
@lang_adjust_rli = global void (%struct.record_layout_info_s*)* null, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\0Aoffset\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" bitpos\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"\0Aaligns: rec = %u, unpack = %u, unpad = %u, off = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"packed may be necessary\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"pending statics:\0A\00", align 1
@targetm = external global %struct.gcc_target, align 8
@warn_packed = external global i32, align 4
@.str.11 = private unnamed_addr constant [41 x i8] c"packed attribute is unnecessary for `%s'\00", align 1
@warn_padded = external global i32, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"padding struct to align `%s'\00", align 1
@target_flags = external global i32, align 4
@__FUNCTION__.layout_type = private unnamed_addr constant [12 x i8] c"layout_type\00", align 1
@mode_size = external constant [59 x i8], align 16
@ptr_mode = external global i32, align 4
@sizetype_set = internal global i32 0, align 4
@early_type_list = internal global %union.tree_node* null, align 8
@integer_types = external global [11 x %union.tree_node*], align 16
@__FUNCTION__.set_sizetype = private unnamed_addr constant [13 x i8] c"set_sizetype\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"bit_size_type\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"padding struct size to alignment boundary\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"packed attribute is unnecessary\00", align 1

; Function Attrs: nounwind uwtable
define void @internal_reference_types() #0 {
entry:
  store i32 1, i32* @reference_types_internal, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @get_pending_sizes() #0 {
entry:
  %chain = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %0 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  store %union.tree_node* %0, %union.tree_node** %chain, align 8
  %1 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  %exp = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  store %union.tree_node* %3, %union.tree_node** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain1, align 8
  store %union.tree_node* %7, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %union.tree_node* null, %union.tree_node** @pending_sizes, align 8
  %8 = load %union.tree_node*, %union.tree_node** %chain, align 8
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define i32 @is_pending_size(%union.tree_node* %expr) #0 {
entry:
  %retval = alloca i32, align 4
  %expr.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  store %union.tree_node* %0, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %cmp = icmp eq %union.tree_node* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %6 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %6, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define void @put_pending_size(%union.tree_node* %expr) #0 {
entry:
  %expr.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 49
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %2 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load4 = load i32, i32* %code3, align 8
  %bf.clear5 = and i32 %bf.load4, 255
  %idxprom6 = sext i32 %bf.clear5 to i64
  %arrayidx7 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom6
  %3 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %3 to i32
  %cmp9 = icmp eq i32 %conv8, 50
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %4 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx11, align 8
  %common12 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load13, 9
  %bf.clear14 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %6 = phi i1 [ false, %lor.rhs ], [ %tobool, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond
  %7 = phi i1 [ true, %while.cond ], [ %6, %land.end ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %8 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %exp15 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands16 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp15, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands16, i32 0, i64 0
  %9 = load %union.tree_node*, %union.tree_node** %arrayidx17, align 8
  store %union.tree_node* %9, %union.tree_node** %expr.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %10 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %common18 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load20 = load i32, i32* %code19, align 8
  %bf.clear21 = and i32 %bf.load20, 255
  %cmp22 = icmp eq i32 %bf.clear21, 118
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %11 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %11, %union.tree_node* %12)
  store %union.tree_node* %call, %union.tree_node** @pending_sizes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @put_pending_sizes(%union.tree_node* %chain) #0 {
entry:
  %chain.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %chain, %union.tree_node** %chain.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** @pending_sizes, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.put_pending_sizes, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %chain.addr, align 8
  store %union.tree_node* %1, %union.tree_node** @pending_sizes, align 8
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %union.tree_node* @variable_size(%union.tree_node* %size) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %size.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %size, %union.tree_node** %size.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @global_bindings_p()
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %1 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %call2 = call i32 @contains_placeholder_p(%union.tree_node* %1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.1, %lor.lhs.false, %entry
  %2 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  store %union.tree_node* %2, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.1
  %3 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %call4 = call %union.tree_node* @save_expr(%union.tree_node* %3)
  store %union.tree_node* %call4, %union.tree_node** %size.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %common5 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 2
  %bf.load6 = load i32, i32* %code, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 118
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %common10 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %asm_written_flag, align 8
  %bf.clear12 = and i32 %bf.load11, -16385
  %bf.set = or i32 %bf.clear12, 16384
  store i32 %bf.set, i32* %asm_written_flag, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %call14 = call i32 @global_bindings_p()
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.25

if.then.16:                                       ; preds = %if.end.13
  %6 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %common17 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %constant_flag18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load19 = load i32, i32* %constant_flag18, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 9
  %bf.clear21 = and i32 %bf.lshr20, 1
  %tobool22 = icmp ne i32 %bf.clear21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.then.16
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.24

if.else:                                          ; preds = %if.then.16
  call void (i8*, ...) @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 16), align 8
  store %union.tree_node* %7, %union.tree_node** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.13
  %8 = load i32, i32* @immediate_size_expand, align 4
  %tobool26 = icmp ne i32 %8, 0
  br i1 %tobool26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.end.25
  %9 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 11), align 8
  %call28 = call %struct.rtx_def* @expand_expr(%union.tree_node* %10, %struct.rtx_def* null, i32 0, i32 0)
  %call29 = call %struct.rtx_def* @expand_expr(%union.tree_node* %9, %struct.rtx_def* %call28, i32 0, i32 0)
  br label %if.end.39

if.else.30:                                       ; preds = %if.end.25
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %cmp31 = icmp ne %struct.function* %11, null
  br i1 %cmp31, label %land.lhs.true, label %if.else.37

land.lhs.true:                                    ; preds = %if.else.30
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %x_dont_save_pending_sizes_p = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 56
  %13 = bitcast i24* %x_dont_save_pending_sizes_p to i32*
  %bf.load32 = load i32, i32* %13, align 8
  %bf.lshr33 = lshr i32 %bf.load32, 19
  %bf.clear34 = and i32 %bf.lshr33, 1
  %tobool35 = icmp ne i32 %bf.clear34, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %land.lhs.true
  br label %if.end.38

if.else.37:                                       ; preds = %land.lhs.true, %if.else.30
  %14 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  call void @put_pending_size(%union.tree_node* %14)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.37, %if.then.36
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %15 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  store %union.tree_node* %15, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.39, %if.end.24, %if.then
  %16 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %16
}

declare i32 @global_bindings_p() #1

declare i32 @contains_placeholder_p(%union.tree_node*) #1

declare %union.tree_node* @save_expr(%union.tree_node*) #1

declare void @error(i8*, ...) #1

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define i32 @mode_for_size(i32 %size, i32 %class, i32 %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load i32, i32* %limit.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %size.addr, align 4
  %2 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 5), align 2
  %conv = zext i16 %2 to i32
  %cmp = icmp ugt i32 %1, %conv
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 51, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load i32, i32* %class.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  store i32 %4, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %mode, align 4
  %cmp2 = icmp ne i32 %5, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %mode, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom4
  %7 = load i16, i16* %arrayidx5, align 2
  %conv6 = zext i16 %7 to i32
  %8 = load i32, i32* %size.addr, align 4
  %cmp7 = icmp eq i32 %conv6, %8
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  %9 = load i32, i32* %mode, align 4
  store i32 %9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %10 = load i32, i32* %mode, align 4
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom11
  %11 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  store i32 %conv13, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 51, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.9, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define i32 @mode_for_size_tree(%union.tree_node* %size, i32 %class, i32 %limit) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca %union.tree_node*, align 8
  %class.addr = alloca i32, align 4
  %limit.addr = alloca i32, align 4
  store %union.tree_node* %size, %union.tree_node** %size.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %limit, i32* %limit.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp ne i32 %bf.clear, 25
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %call = call i32 @compare_tree_int(%union.tree_node* %1, i64 1000)
  %cmp1 = icmp sgt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 51, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %2 = load %union.tree_node*, %union.tree_node** %size.addr, align 8
  %int_cst = bitcast %union.tree_node* %2 to %struct.tree_int_cst*
  %int_cst2 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst2, i32 0, i32 0
  %3 = load i64, i64* %low, align 8
  %conv = trunc i64 %3 to i32
  %4 = load i32, i32* %class.addr, align 4
  %5 = load i32, i32* %limit.addr, align 4
  %call3 = call i32 @mode_for_size(i32 %conv, i32 %4, i32 %5)
  store i32 %call3, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @smallest_mode_for_size(i32 %size, i32 %class) #0 {
entry:
  %size.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  %0 = load i32, i32* %class.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %mode, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom1
  %4 = load i16, i16* %arrayidx2, align 2
  %conv = zext i16 %4 to i32
  %5 = load i32, i32* %size.addr, align 4
  %cmp3 = icmp uge i32 %conv, %5
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %mode, align 4
  ret i32 %6

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %mode, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom5
  %8 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %8 to i32
  store i32 %conv7, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.smallest_mode_for_size, i32 0, i32 0)) #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @int_mode_for_mode(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  switch i32 %1, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb
    i32 5, label %sw.bb.1
    i32 6, label %sw.bb.1
    i32 2, label %sw.bb.1
    i32 7, label %sw.bb.1
    i32 8, label %sw.bb.1
    i32 0, label %sw.bb.4
    i32 4, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry, %entry, %entry, %entry, %entry
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom2
  %3 = load i16, i16* %arrayidx3, align 2
  %conv = zext i16 %3 to i32
  %call = call i32 @mode_for_size(i32 %conv, i32 1, i32 0)
  store i32 %call, i32* %mode.addr, align 4
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %4 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %4, 51
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.4
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb.4
  br label %sw.bb.6

sw.bb.6:                                          ; preds = %entry, %if.end
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.6
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 290, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.int_mode_for_mode, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.then, %sw.bb.1, %sw.bb
  %5 = load i32, i32* %mode.addr, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @round_up(%union.tree_node* %value, i32 %divisor) #0 {
entry:
  %value.addr = alloca %union.tree_node*, align 8
  %divisor.addr = alloca i32, align 4
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i32, i32* %divisor.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @size_int_type_wide(i64 %conv, %union.tree_node* %2)
  store %union.tree_node* %call, %union.tree_node** %arg, align 8
  %3 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %call1 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %3, %union.tree_node* %4)
  %5 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %call2 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call1, %union.tree_node* %5)
  ret %union.tree_node* %call2
}

declare %union.tree_node* @size_int_type_wide(i64, %union.tree_node*) #1

declare %union.tree_node* @size_binop(i32, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @round_down(%union.tree_node* %value, i32 %divisor) #0 {
entry:
  %value.addr = alloca %union.tree_node*, align 8
  %divisor.addr = alloca i32, align 4
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  store i32 %divisor, i32* %divisor.addr, align 4
  %0 = load i32, i32* %divisor.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  %call = call %union.tree_node* @size_int_type_wide(i64 %conv, %union.tree_node* %2)
  store %union.tree_node* %call, %union.tree_node** %arg, align 8
  %3 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %call1 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %3, %union.tree_node* %4)
  %5 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %call2 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call1, %union.tree_node* %5)
  ret %union.tree_node* %call2
}

; Function Attrs: nounwind uwtable
define void @layout_decl(%union.tree_node* %decl, i32 %known_align) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  %known_align.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %code = alloca i32, align 4
  %xmode = alloca i32, align 4
  %size360 = alloca %union.tree_node*, align 8
  %size_as_int = alloca i32, align 4
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store i32 %known_align, i32* %known_align.addr, align 4
  %0 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code3, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %3, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end.383

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %cmp4 = icmp ne i32 %4, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %5 = load i32, i32* %code, align 4
  %cmp5 = icmp ne i32 %5, 35
  br i1 %cmp5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %code, align 4
  %cmp7 = icmp ne i32 %6, 36
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %7 = load i32, i32* %code, align 4
  %cmp9 = icmp ne i32 %7, 33
  br i1 %cmp9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %8 = load i32, i32* %code, align 4
  %cmp11 = icmp ne i32 %8, 37
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %land.lhs.true.10
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 346, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_decl, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true.6, %land.lhs.true, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp14 = icmp eq %union.tree_node* %9, %10
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %11 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  store %union.tree_node* %11, %union.tree_node** %type, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common17 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load18, 13
  %bf.clear19 = and i32 %bf.lshr, 1
  %13 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %common20 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %unsigned_flag21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 2
  %bf.load22 = load i32, i32* %unsigned_flag21, align 8
  %bf.value = and i32 %bf.clear19, 1
  %bf.shl = shl i32 %bf.value, 13
  %bf.clear23 = and i32 %bf.load22, -8193
  %bf.set = or i32 %bf.clear23, %bf.shl
  store i32 %bf.set, i32* %unsigned_flag21, align 8
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl24 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %mode = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl24, i32 0, i32 5
  %15 = bitcast i48* %mode to i64*
  %bf.load25 = load i64, i64* %15, align 8
  %bf.clear26 = and i64 %bf.load25, 255
  %bf.cast = trunc i64 %bf.clear26 to i32
  %cmp27 = icmp eq i32 %bf.cast, 0
  br i1 %cmp27, label %if.then.28, label %if.end.40

if.then.28:                                       ; preds = %if.end.16
  %16 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type29 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %mode30 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type29, i32 0, i32 6
  %bf.load31 = load i32, i32* %mode30, align 4
  %bf.lshr32 = lshr i32 %bf.load31, 9
  %bf.clear33 = and i32 %bf.lshr32, 127
  %17 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl34 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %mode35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 5
  %18 = bitcast i48* %mode35 to i64*
  %19 = zext i32 %bf.clear33 to i64
  %bf.load36 = load i64, i64* %18, align 8
  %bf.value37 = and i64 %19, 255
  %bf.clear38 = and i64 %bf.load36, -256
  %bf.set39 = or i64 %bf.clear38, %bf.value37
  store i64 %bf.set39, i64* %18, align 8
  %bf.result.cast = trunc i64 %bf.value37 to i32
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.28, %if.end.16
  %20 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl41 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 4
  %21 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp42 = icmp eq %union.tree_node* %21, null
  br i1 %cmp42, label %if.then.43, label %if.else.51

if.then.43:                                       ; preds = %if.end.40
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type44 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %size45 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type44, i32 0, i32 2
  %23 = load %union.tree_node*, %union.tree_node** %size45, align 8
  %24 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl46 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %size47 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl46, i32 0, i32 4
  store %union.tree_node* %23, %union.tree_node** %size47, align 8
  %25 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type48 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type48, i32 0, i32 3
  %26 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %27 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl49 = bitcast %union.tree_node* %27 to %struct.tree_decl*
  %size_unit50 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl49, i32 0, i32 7
  store %union.tree_node* %26, %union.tree_node** %size_unit50, align 8
  br label %if.end.57

if.else.51:                                       ; preds = %if.end.40
  %28 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %29 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl52 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %size53 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl52, i32 0, i32 4
  %30 = load %union.tree_node*, %union.tree_node** %size53, align 8
  %31 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %30, %union.tree_node* %31)
  %call54 = call %union.tree_node* @convert(%union.tree_node* %28, %union.tree_node* %call)
  %32 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl55 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %size_unit56 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl55, i32 0, i32 7
  store %union.tree_node* %call54, %union.tree_node** %size_unit56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.51, %if.then.43
  %33 = load i32, i32* %code, align 4
  %cmp58 = icmp eq i32 %33, 37
  br i1 %cmp58, label %land.lhs.true.59, label %land.lhs.true.65

land.lhs.true.59:                                 ; preds = %if.end.57
  %34 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl60 = bitcast %union.tree_node* %34 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl60, i32 0, i32 5
  %35 = bitcast i48* %bit_field_flag to i64*
  %bf.load61 = load i64, i64* %35, align 8
  %bf.lshr62 = lshr i64 %bf.load61, 12
  %bf.clear63 = and i64 %bf.lshr62, 1
  %bf.cast64 = trunc i64 %bf.clear63 to i32
  %tobool = icmp ne i32 %bf.cast64, 0
  br i1 %tobool, label %if.end.99, label %land.lhs.true.65

land.lhs.true.65:                                 ; preds = %land.lhs.true.59, %if.end.57
  %36 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl66 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl66, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %37 = bitcast %struct.anon.0* %a to i32*
  %bf.load67 = load i32, i32* %37, align 4
  %bf.clear68 = and i32 %bf.load67, 16777215
  %cmp69 = icmp eq i32 %bf.clear68, 0
  br i1 %cmp69, label %if.then.86, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.65
  %38 = load i32, i32* %code, align 4
  %cmp70 = icmp eq i32 %38, 37
  br i1 %cmp70, label %land.lhs.true.71, label %land.lhs.true.78

land.lhs.true.71:                                 ; preds = %lor.lhs.false
  %39 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl72 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl72, i32 0, i32 5
  %40 = bitcast i48* %regdecl_flag to i64*
  %bf.load73 = load i64, i64* %40, align 8
  %bf.lshr74 = lshr i64 %bf.load73, 10
  %bf.clear75 = and i64 %bf.lshr74, 1
  %bf.cast76 = trunc i64 %bf.clear75 to i32
  %tobool77 = icmp ne i32 %bf.cast76, 0
  br i1 %tobool77, label %if.end.99, label %land.lhs.true.78

land.lhs.true.78:                                 ; preds = %land.lhs.true.71, %lor.lhs.false
  %41 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type79 = bitcast %union.tree_node* %41 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type79, i32 0, i32 7
  %42 = load i32, i32* %align, align 4
  %43 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl80 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %u181 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl80, i32 0, i32 6
  %a82 = bitcast %union.anon* %u181 to %struct.anon.0*
  %44 = bitcast %struct.anon.0* %a82 to i32*
  %bf.load83 = load i32, i32* %44, align 4
  %bf.clear84 = and i32 %bf.load83, 16777215
  %cmp85 = icmp ugt i32 %42, %bf.clear84
  br i1 %cmp85, label %if.then.86, label %if.end.99

if.then.86:                                       ; preds = %land.lhs.true.78, %land.lhs.true.65
  %45 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type87 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %align88 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type87, i32 0, i32 7
  %46 = load i32, i32* %align88, align 4
  %47 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl89 = bitcast %union.tree_node* %47 to %struct.tree_decl*
  %u190 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl89, i32 0, i32 6
  %a91 = bitcast %union.anon* %u190 to %struct.anon.0*
  %48 = bitcast %struct.anon.0* %a91 to i32*
  %bf.load92 = load i32, i32* %48, align 4
  %bf.value93 = and i32 %46, 16777215
  %bf.clear94 = and i32 %bf.load92, -16777216
  %bf.set95 = or i32 %bf.clear94, %bf.value93
  store i32 %bf.set95, i32* %48, align 4
  %49 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl96 = bitcast %union.tree_node* %49 to %struct.tree_decl*
  %user_align = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl96, i32 0, i32 5
  %50 = bitcast i48* %user_align to i64*
  %bf.load97 = load i64, i64* %50, align 8
  %bf.clear98 = and i64 %bf.load97, -34359738369
  store i64 %bf.clear98, i64* %50, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.86, %land.lhs.true.78, %land.lhs.true.71, %land.lhs.true.59
  %51 = load i32, i32* %code, align 4
  %cmp100 = icmp eq i32 %51, 37
  br i1 %cmp100, label %if.then.101, label %if.end.190

if.then.101:                                      ; preds = %if.end.99
  %52 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl102 = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %bit_field_flag103 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl102, i32 0, i32 5
  %53 = bitcast i48* %bit_field_flag103 to i64*
  %bf.load104 = load i64, i64* %53, align 8
  %bf.lshr105 = lshr i64 %bf.load104, 12
  %bf.clear106 = and i64 %bf.lshr105, 1
  %bf.cast107 = trunc i64 %bf.clear106 to i32
  %tobool108 = icmp ne i32 %bf.cast107, 0
  br i1 %tobool108, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.101
  %54 = load %union.tree_node*, %union.tree_node** %type, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.101
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %54, %cond.true ], [ null, %cond.false ]
  %55 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl109 = bitcast %union.tree_node* %55 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl109, i32 0, i32 11
  store %union.tree_node* %cond, %union.tree_node** %result, align 8
  %56 = load i32, i32* @maximum_field_alignment, align 4
  %cmp110 = icmp ne i32 %56, 0
  br i1 %cmp110, label %if.then.111, label %if.else.134

if.then.111:                                      ; preds = %cond.end
  %57 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl112 = bitcast %union.tree_node* %57 to %struct.tree_decl*
  %u1113 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl112, i32 0, i32 6
  %a114 = bitcast %union.anon* %u1113 to %struct.anon.0*
  %58 = bitcast %struct.anon.0* %a114 to i32*
  %bf.load115 = load i32, i32* %58, align 4
  %bf.clear116 = and i32 %bf.load115, 16777215
  %59 = load i32, i32* @maximum_field_alignment, align 4
  %cmp117 = icmp ult i32 %bf.clear116, %59
  br i1 %cmp117, label %cond.true.118, label %cond.false.124

cond.true.118:                                    ; preds = %if.then.111
  %60 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl119 = bitcast %union.tree_node* %60 to %struct.tree_decl*
  %u1120 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl119, i32 0, i32 6
  %a121 = bitcast %union.anon* %u1120 to %struct.anon.0*
  %61 = bitcast %struct.anon.0* %a121 to i32*
  %bf.load122 = load i32, i32* %61, align 4
  %bf.clear123 = and i32 %bf.load122, 16777215
  br label %cond.end.125

cond.false.124:                                   ; preds = %if.then.111
  %62 = load i32, i32* @maximum_field_alignment, align 4
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.124, %cond.true.118
  %cond126 = phi i32 [ %bf.clear123, %cond.true.118 ], [ %62, %cond.false.124 ]
  %63 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl127 = bitcast %union.tree_node* %63 to %struct.tree_decl*
  %u1128 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl127, i32 0, i32 6
  %a129 = bitcast %union.anon* %u1128 to %struct.anon.0*
  %64 = bitcast %struct.anon.0* %a129 to i32*
  %bf.load130 = load i32, i32* %64, align 4
  %bf.value131 = and i32 %cond126, 16777215
  %bf.clear132 = and i32 %bf.load130, -16777216
  %bf.set133 = or i32 %bf.clear132, %bf.value131
  store i32 %bf.set133, i32* %64, align 4
  br label %if.end.189

if.else.134:                                      ; preds = %cond.end
  %65 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl135 = bitcast %union.tree_node* %65 to %struct.tree_decl*
  %regdecl_flag136 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl135, i32 0, i32 5
  %66 = bitcast i48* %regdecl_flag136 to i64*
  %bf.load137 = load i64, i64* %66, align 8
  %bf.lshr138 = lshr i64 %bf.load137, 10
  %bf.clear139 = and i64 %bf.lshr138, 1
  %bf.cast140 = trunc i64 %bf.clear139 to i32
  %tobool141 = icmp ne i32 %bf.cast140, 0
  br i1 %tobool141, label %land.lhs.true.142, label %if.end.188

land.lhs.true.142:                                ; preds = %if.else.134
  %67 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl143 = bitcast %union.tree_node* %67 to %struct.tree_decl*
  %non_addressable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl143, i32 0, i32 5
  %68 = bitcast i48* %non_addressable to i64*
  %bf.load144 = load i64, i64* %68, align 8
  %bf.lshr145 = lshr i64 %bf.load144, 34
  %bf.clear146 = and i64 %bf.lshr145, 1
  %bf.cast147 = trunc i64 %bf.clear146 to i32
  %tobool148 = icmp ne i32 %bf.cast147, 0
  br i1 %tobool148, label %if.then.161, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.142
  %69 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl150 = bitcast %union.tree_node* %69 to %struct.tree_decl*
  %size_unit151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl150, i32 0, i32 7
  %70 = load %union.tree_node*, %union.tree_node** %size_unit151, align 8
  %cmp152 = icmp eq %union.tree_node* %70, null
  br i1 %cmp152, label %if.then.161, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %lor.lhs.false.149
  %71 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl154 = bitcast %union.tree_node* %71 to %struct.tree_decl*
  %size_unit155 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl154, i32 0, i32 7
  %72 = load %union.tree_node*, %union.tree_node** %size_unit155, align 8
  %common156 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %code157 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common156, i32 0, i32 2
  %bf.load158 = load i32, i32* %code157, align 8
  %bf.clear159 = and i32 %bf.load158, 255
  %cmp160 = icmp eq i32 %bf.clear159, 25
  br i1 %cmp160, label %if.then.161, label %if.end.188

if.then.161:                                      ; preds = %lor.lhs.false.153, %lor.lhs.false.149, %land.lhs.true.142
  %73 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl162 = bitcast %union.tree_node* %73 to %struct.tree_decl*
  %u1163 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl162, i32 0, i32 6
  %a164 = bitcast %union.anon* %u1163 to %struct.anon.0*
  %74 = bitcast %struct.anon.0* %a164 to i32*
  %bf.load165 = load i32, i32* %74, align 4
  %bf.clear166 = and i32 %bf.load165, 16777215
  %cmp167 = icmp slt i32 %bf.clear166, 8
  br i1 %cmp167, label %cond.true.168, label %cond.false.174

cond.true.168:                                    ; preds = %if.then.161
  %75 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl169 = bitcast %union.tree_node* %75 to %struct.tree_decl*
  %u1170 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl169, i32 0, i32 6
  %a171 = bitcast %union.anon* %u1170 to %struct.anon.0*
  %76 = bitcast %struct.anon.0* %a171 to i32*
  %bf.load172 = load i32, i32* %76, align 4
  %bf.clear173 = and i32 %bf.load172, 16777215
  br label %cond.end.175

cond.false.174:                                   ; preds = %if.then.161
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.false.174, %cond.true.168
  %cond176 = phi i32 [ %bf.clear173, %cond.true.168 ], [ 8, %cond.false.174 ]
  %77 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl177 = bitcast %union.tree_node* %77 to %struct.tree_decl*
  %u1178 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl177, i32 0, i32 6
  %a179 = bitcast %union.anon* %u1178 to %struct.anon.0*
  %78 = bitcast %struct.anon.0* %a179 to i32*
  %bf.load180 = load i32, i32* %78, align 4
  %bf.value181 = and i32 %cond176, 16777215
  %bf.clear182 = and i32 %bf.load180, -16777216
  %bf.set183 = or i32 %bf.clear182, %bf.value181
  store i32 %bf.set183, i32* %78, align 4
  %79 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl184 = bitcast %union.tree_node* %79 to %struct.tree_decl*
  %user_align185 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl184, i32 0, i32 5
  %80 = bitcast i48* %user_align185 to i64*
  %bf.load186 = load i64, i64* %80, align 8
  %bf.clear187 = and i64 %bf.load186, -34359738369
  store i64 %bf.clear187, i64* %80, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %cond.end.175, %lor.lhs.false.153, %if.else.134
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %cond.end.125
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.end.99
  %81 = load i32, i32* %code, align 4
  %cmp191 = icmp eq i32 %81, 37
  br i1 %cmp191, label %land.lhs.true.192, label %if.end.264

land.lhs.true.192:                                ; preds = %if.end.190
  %82 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl193 = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %bit_field_flag194 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl193, i32 0, i32 5
  %83 = bitcast i48* %bit_field_flag194 to i64*
  %bf.load195 = load i64, i64* %83, align 8
  %bf.lshr196 = lshr i64 %bf.load195, 12
  %bf.clear197 = and i64 %bf.lshr196, 1
  %bf.cast198 = trunc i64 %bf.clear197 to i32
  %tobool199 = icmp ne i32 %bf.cast198, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.264

land.lhs.true.200:                                ; preds = %land.lhs.true.192
  %84 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type201 = bitcast %union.tree_node* %84 to %struct.tree_type*
  %size202 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type201, i32 0, i32 2
  %85 = load %union.tree_node*, %union.tree_node** %size202, align 8
  %cmp203 = icmp ne %union.tree_node* %85, null
  br i1 %cmp203, label %land.lhs.true.204, label %if.end.264

land.lhs.true.204:                                ; preds = %land.lhs.true.200
  %86 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type205 = bitcast %union.tree_node* %86 to %struct.tree_type*
  %size206 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type205, i32 0, i32 2
  %87 = load %union.tree_node*, %union.tree_node** %size206, align 8
  %common207 = bitcast %union.tree_node* %87 to %struct.tree_common*
  %code208 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common207, i32 0, i32 2
  %bf.load209 = load i32, i32* %code208, align 8
  %bf.clear210 = and i32 %bf.load209, 255
  %cmp211 = icmp eq i32 %bf.clear210, 25
  br i1 %cmp211, label %land.lhs.true.212, label %if.end.264

land.lhs.true.212:                                ; preds = %land.lhs.true.204
  %88 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type213 = bitcast %union.tree_node* %88 to %struct.tree_type*
  %mode214 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type213, i32 0, i32 6
  %bf.load215 = load i32, i32* %mode214, align 4
  %bf.lshr216 = lshr i32 %bf.load215, 9
  %bf.clear217 = and i32 %bf.lshr216, 127
  %idxprom = sext i32 %bf.clear217 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %89 = load i32, i32* %arrayidx, align 4
  %cmp218 = icmp eq i32 %89, 1
  br i1 %cmp218, label %if.then.219, label %if.end.264

if.then.219:                                      ; preds = %land.lhs.true.212
  %90 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl220 = bitcast %union.tree_node* %90 to %struct.tree_decl*
  %size221 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl220, i32 0, i32 4
  %91 = load %union.tree_node*, %union.tree_node** %size221, align 8
  %call222 = call i32 @mode_for_size_tree(%union.tree_node* %91, i32 1, i32 1)
  store i32 %call222, i32* %xmode, align 4
  %92 = load i32, i32* %xmode, align 4
  %cmp223 = icmp ne i32 %92, 51
  br i1 %cmp223, label %land.lhs.true.224, label %if.end.263

land.lhs.true.224:                                ; preds = %if.then.219
  %93 = load i32, i32* %known_align.addr, align 4
  %94 = load i32, i32* %xmode, align 4
  %call225 = call i32 @get_mode_alignment(i32 %94)
  %cmp226 = icmp uge i32 %93, %call225
  br i1 %cmp226, label %if.then.227, label %if.end.263

if.then.227:                                      ; preds = %land.lhs.true.224
  %95 = load i32, i32* %xmode, align 4
  %call228 = call i32 @get_mode_alignment(i32 %95)
  %96 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl229 = bitcast %union.tree_node* %96 to %struct.tree_decl*
  %u1230 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl229, i32 0, i32 6
  %a231 = bitcast %union.anon* %u1230 to %struct.anon.0*
  %97 = bitcast %struct.anon.0* %a231 to i32*
  %bf.load232 = load i32, i32* %97, align 4
  %bf.clear233 = and i32 %bf.load232, 16777215
  %cmp234 = icmp ugt i32 %call228, %bf.clear233
  br i1 %cmp234, label %cond.true.235, label %cond.false.237

cond.true.235:                                    ; preds = %if.then.227
  %98 = load i32, i32* %xmode, align 4
  %call236 = call i32 @get_mode_alignment(i32 %98)
  br label %cond.end.243

cond.false.237:                                   ; preds = %if.then.227
  %99 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl238 = bitcast %union.tree_node* %99 to %struct.tree_decl*
  %u1239 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl238, i32 0, i32 6
  %a240 = bitcast %union.anon* %u1239 to %struct.anon.0*
  %100 = bitcast %struct.anon.0* %a240 to i32*
  %bf.load241 = load i32, i32* %100, align 4
  %bf.clear242 = and i32 %bf.load241, 16777215
  br label %cond.end.243

cond.end.243:                                     ; preds = %cond.false.237, %cond.true.235
  %cond244 = phi i32 [ %call236, %cond.true.235 ], [ %bf.clear242, %cond.false.237 ]
  %101 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl245 = bitcast %union.tree_node* %101 to %struct.tree_decl*
  %u1246 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl245, i32 0, i32 6
  %a247 = bitcast %union.anon* %u1246 to %struct.anon.0*
  %102 = bitcast %struct.anon.0* %a247 to i32*
  %bf.load248 = load i32, i32* %102, align 4
  %bf.value249 = and i32 %cond244, 16777215
  %bf.clear250 = and i32 %bf.load248, -16777216
  %bf.set251 = or i32 %bf.clear250, %bf.value249
  store i32 %bf.set251, i32* %102, align 4
  %103 = load i32, i32* %xmode, align 4
  %104 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl252 = bitcast %union.tree_node* %104 to %struct.tree_decl*
  %mode253 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl252, i32 0, i32 5
  %105 = bitcast i48* %mode253 to i64*
  %106 = zext i32 %103 to i64
  %bf.load254 = load i64, i64* %105, align 8
  %bf.value255 = and i64 %106, 255
  %bf.clear256 = and i64 %bf.load254, -256
  %bf.set257 = or i64 %bf.clear256, %bf.value255
  store i64 %bf.set257, i64* %105, align 8
  %bf.result.cast258 = trunc i64 %bf.value255 to i32
  %107 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl259 = bitcast %union.tree_node* %107 to %struct.tree_decl*
  %bit_field_flag260 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl259, i32 0, i32 5
  %108 = bitcast i48* %bit_field_flag260 to i64*
  %bf.load261 = load i64, i64* %108, align 8
  %bf.clear262 = and i64 %bf.load261, -4097
  store i64 %bf.clear262, i64* %108, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %cond.end.243, %land.lhs.true.224, %if.then.219
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %land.lhs.true.212, %land.lhs.true.204, %land.lhs.true.200, %land.lhs.true.192, %if.end.190
  %109 = load i32, i32* %code, align 4
  %cmp265 = icmp eq i32 %109, 37
  br i1 %cmp265, label %land.lhs.true.266, label %if.end.310

land.lhs.true.266:                                ; preds = %if.end.264
  %110 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl267 = bitcast %union.tree_node* %110 to %struct.tree_decl*
  %bit_field_flag268 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl267, i32 0, i32 5
  %111 = bitcast i48* %bit_field_flag268 to i64*
  %bf.load269 = load i64, i64* %111, align 8
  %bf.lshr270 = lshr i64 %bf.load269, 12
  %bf.clear271 = and i64 %bf.lshr270, 1
  %bf.cast272 = trunc i64 %bf.clear271 to i32
  %tobool273 = icmp ne i32 %bf.cast272, 0
  br i1 %tobool273, label %land.lhs.true.274, label %if.end.310

land.lhs.true.274:                                ; preds = %land.lhs.true.266
  %112 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type275 = bitcast %union.tree_node* %112 to %struct.tree_type*
  %mode276 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type275, i32 0, i32 6
  %bf.load277 = load i32, i32* %mode276, align 4
  %bf.lshr278 = lshr i32 %bf.load277, 9
  %bf.clear279 = and i32 %bf.lshr278, 127
  %cmp280 = icmp eq i32 %bf.clear279, 51
  br i1 %cmp280, label %land.lhs.true.281, label %if.end.310

land.lhs.true.281:                                ; preds = %land.lhs.true.274
  %113 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl282 = bitcast %union.tree_node* %113 to %struct.tree_decl*
  %mode283 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl282, i32 0, i32 5
  %114 = bitcast i48* %mode283 to i64*
  %bf.load284 = load i64, i64* %114, align 8
  %bf.clear285 = and i64 %bf.load284, 255
  %bf.cast286 = trunc i64 %bf.clear285 to i32
  %cmp287 = icmp eq i32 %bf.cast286, 51
  br i1 %cmp287, label %land.lhs.true.288, label %if.end.310

land.lhs.true.288:                                ; preds = %land.lhs.true.281
  %115 = load i32, i32* %known_align.addr, align 4
  %116 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type289 = bitcast %union.tree_node* %116 to %struct.tree_type*
  %align290 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type289, i32 0, i32 7
  %117 = load i32, i32* %align290, align 4
  %cmp291 = icmp uge i32 %115, %117
  br i1 %cmp291, label %land.lhs.true.292, label %if.end.310

land.lhs.true.292:                                ; preds = %land.lhs.true.288
  %118 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl293 = bitcast %union.tree_node* %118 to %struct.tree_decl*
  %u1294 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl293, i32 0, i32 6
  %a295 = bitcast %union.anon* %u1294 to %struct.anon.0*
  %119 = bitcast %struct.anon.0* %a295 to i32*
  %bf.load296 = load i32, i32* %119, align 4
  %bf.clear297 = and i32 %bf.load296, 16777215
  %120 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type298 = bitcast %union.tree_node* %120 to %struct.tree_type*
  %align299 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type298, i32 0, i32 7
  %121 = load i32, i32* %align299, align 4
  %cmp300 = icmp uge i32 %bf.clear297, %121
  br i1 %cmp300, label %land.lhs.true.301, label %if.end.310

land.lhs.true.301:                                ; preds = %land.lhs.true.292
  %122 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl302 = bitcast %union.tree_node* %122 to %struct.tree_decl*
  %size_unit303 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl302, i32 0, i32 7
  %123 = load %union.tree_node*, %union.tree_node** %size_unit303, align 8
  %cmp304 = icmp ne %union.tree_node* %123, null
  br i1 %cmp304, label %if.then.305, label %if.end.310

if.then.305:                                      ; preds = %land.lhs.true.301
  %124 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl306 = bitcast %union.tree_node* %124 to %struct.tree_decl*
  %bit_field_flag307 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl306, i32 0, i32 5
  %125 = bitcast i48* %bit_field_flag307 to i64*
  %bf.load308 = load i64, i64* %125, align 8
  %bf.clear309 = and i64 %bf.load308, -4097
  store i64 %bf.clear309, i64* %125, align 8
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.305, %land.lhs.true.301, %land.lhs.true.292, %land.lhs.true.288, %land.lhs.true.281, %land.lhs.true.274, %land.lhs.true.266, %if.end.264
  %126 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl311 = bitcast %union.tree_node* %126 to %struct.tree_decl*
  %size312 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl311, i32 0, i32 4
  %127 = load %union.tree_node*, %union.tree_node** %size312, align 8
  %cmp313 = icmp ne %union.tree_node* %127, null
  br i1 %cmp313, label %land.lhs.true.314, label %if.end.328

land.lhs.true.314:                                ; preds = %if.end.310
  %128 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl315 = bitcast %union.tree_node* %128 to %struct.tree_decl*
  %size316 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl315, i32 0, i32 4
  %129 = load %union.tree_node*, %union.tree_node** %size316, align 8
  %common317 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %code318 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common317, i32 0, i32 2
  %bf.load319 = load i32, i32* %code318, align 8
  %bf.clear320 = and i32 %bf.load319, 255
  %cmp321 = icmp ne i32 %bf.clear320, 25
  br i1 %cmp321, label %if.then.322, label %if.end.328

if.then.322:                                      ; preds = %land.lhs.true.314
  %130 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl323 = bitcast %union.tree_node* %130 to %struct.tree_decl*
  %size324 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl323, i32 0, i32 4
  %131 = load %union.tree_node*, %union.tree_node** %size324, align 8
  %call325 = call %union.tree_node* @variable_size(%union.tree_node* %131)
  %132 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl326 = bitcast %union.tree_node* %132 to %struct.tree_decl*
  %size327 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl326, i32 0, i32 4
  store %union.tree_node* %call325, %union.tree_node** %size327, align 8
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.322, %land.lhs.true.314, %if.end.310
  %133 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl329 = bitcast %union.tree_node* %133 to %struct.tree_decl*
  %size_unit330 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl329, i32 0, i32 7
  %134 = load %union.tree_node*, %union.tree_node** %size_unit330, align 8
  %cmp331 = icmp ne %union.tree_node* %134, null
  br i1 %cmp331, label %land.lhs.true.332, label %if.end.346

land.lhs.true.332:                                ; preds = %if.end.328
  %135 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl333 = bitcast %union.tree_node* %135 to %struct.tree_decl*
  %size_unit334 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl333, i32 0, i32 7
  %136 = load %union.tree_node*, %union.tree_node** %size_unit334, align 8
  %common335 = bitcast %union.tree_node* %136 to %struct.tree_common*
  %code336 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common335, i32 0, i32 2
  %bf.load337 = load i32, i32* %code336, align 8
  %bf.clear338 = and i32 %bf.load337, 255
  %cmp339 = icmp ne i32 %bf.clear338, 25
  br i1 %cmp339, label %if.then.340, label %if.end.346

if.then.340:                                      ; preds = %land.lhs.true.332
  %137 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl341 = bitcast %union.tree_node* %137 to %struct.tree_decl*
  %size_unit342 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl341, i32 0, i32 7
  %138 = load %union.tree_node*, %union.tree_node** %size_unit342, align 8
  %call343 = call %union.tree_node* @variable_size(%union.tree_node* %138)
  %139 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl344 = bitcast %union.tree_node* %139 to %struct.tree_decl*
  %size_unit345 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl344, i32 0, i32 7
  store %union.tree_node* %call343, %union.tree_node** %size_unit345, align 8
  br label %if.end.346

if.end.346:                                       ; preds = %if.then.340, %land.lhs.true.332, %if.end.328
  %140 = load i32, i32* @warn_larger_than, align 4
  %tobool347 = icmp ne i32 %140, 0
  br i1 %tobool347, label %land.lhs.true.348, label %if.end.383

land.lhs.true.348:                                ; preds = %if.end.346
  %141 = load i32, i32* %code, align 4
  %cmp349 = icmp eq i32 %141, 34
  br i1 %cmp349, label %land.lhs.true.352, label %lor.lhs.false.350

lor.lhs.false.350:                                ; preds = %land.lhs.true.348
  %142 = load i32, i32* %code, align 4
  %cmp351 = icmp eq i32 %142, 35
  br i1 %cmp351, label %land.lhs.true.352, label %if.end.383

land.lhs.true.352:                                ; preds = %lor.lhs.false.350, %land.lhs.true.348
  %143 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl353 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl353, i32 0, i32 5
  %144 = bitcast i48* %external_flag to i64*
  %bf.load354 = load i64, i64* %144, align 8
  %bf.lshr355 = lshr i64 %bf.load354, 8
  %bf.clear356 = and i64 %bf.lshr355, 1
  %bf.cast357 = trunc i64 %bf.clear356 to i32
  %tobool358 = icmp ne i32 %bf.cast357, 0
  br i1 %tobool358, label %if.end.383, label %if.then.359

if.then.359:                                      ; preds = %land.lhs.true.352
  %145 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl361 = bitcast %union.tree_node* %145 to %struct.tree_decl*
  %size_unit362 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl361, i32 0, i32 7
  %146 = load %union.tree_node*, %union.tree_node** %size_unit362, align 8
  store %union.tree_node* %146, %union.tree_node** %size360, align 8
  %147 = load %union.tree_node*, %union.tree_node** %size360, align 8
  %cmp363 = icmp ne %union.tree_node* %147, null
  br i1 %cmp363, label %land.lhs.true.364, label %if.end.382

land.lhs.true.364:                                ; preds = %if.then.359
  %148 = load %union.tree_node*, %union.tree_node** %size360, align 8
  %common365 = bitcast %union.tree_node* %148 to %struct.tree_common*
  %code366 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common365, i32 0, i32 2
  %bf.load367 = load i32, i32* %code366, align 8
  %bf.clear368 = and i32 %bf.load367, 255
  %cmp369 = icmp eq i32 %bf.clear368, 25
  br i1 %cmp369, label %land.lhs.true.370, label %if.end.382

land.lhs.true.370:                                ; preds = %land.lhs.true.364
  %149 = load %union.tree_node*, %union.tree_node** %size360, align 8
  %150 = load i64, i64* @larger_than_size, align 8
  %call371 = call i32 @compare_tree_int(%union.tree_node* %149, i64 %150)
  %cmp372 = icmp sgt i32 %call371, 0
  br i1 %cmp372, label %if.then.373, label %if.end.382

if.then.373:                                      ; preds = %land.lhs.true.370
  %151 = load %union.tree_node*, %union.tree_node** %size360, align 8
  %int_cst = bitcast %union.tree_node* %151 to %struct.tree_int_cst*
  %int_cst374 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst374, i32 0, i32 0
  %152 = load i64, i64* %low, align 8
  %conv = trunc i64 %152 to i32
  store i32 %conv, i32* %size_as_int, align 4
  %153 = load %union.tree_node*, %union.tree_node** %size360, align 8
  %154 = load i32, i32* %size_as_int, align 4
  %conv375 = zext i32 %154 to i64
  %call376 = call i32 @compare_tree_int(%union.tree_node* %153, i64 %conv375)
  %cmp377 = icmp eq i32 %call376, 0
  br i1 %cmp377, label %if.then.379, label %if.else.380

if.then.379:                                      ; preds = %if.then.373
  %155 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %156 = load i32, i32* %size_as_int, align 4
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %155, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %156)
  br label %if.end.381

if.else.380:                                      ; preds = %if.then.373
  %157 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %158 = load i64, i64* @larger_than_size, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i64 %158)
  br label %if.end.381

if.end.381:                                       ; preds = %if.else.380, %if.then.379
  br label %if.end.382

if.end.382:                                       ; preds = %if.end.381, %land.lhs.true.370, %land.lhs.true.364, %if.then.359
  br label %if.end.383

if.end.383:                                       ; preds = %if.then, %if.end.382, %land.lhs.true.352, %lor.lhs.false.350, %if.end.346
  ret void
}

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

declare i32 @get_mode_alignment(i32) #1

declare void @warning_with_decl(%union.tree_node*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @set_lang_adjust_rli(void (%struct.record_layout_info_s*)* %f) #0 {
entry:
  %f.addr = alloca void (%struct.record_layout_info_s*)*, align 8
  store void (%struct.record_layout_info_s*)* %f, void (%struct.record_layout_info_s*)** %f.addr, align 8
  %0 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** %f.addr, align 8
  store void (%struct.record_layout_info_s*)* %0, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.record_layout_info_s* @start_record_layout(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  %rli = alloca %struct.record_layout_info_s*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %call = call noalias i8* @xmalloc(i64 72)
  %0 = bitcast i8* %call to %struct.record_layout_info_s*
  store %struct.record_layout_info_s* %0, %struct.record_layout_info_s** %rli, align 8
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %2 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %t1 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %2, i32 0, i32 0
  store %union.tree_node* %1, %union.tree_node** %t1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type = bitcast %union.tree_node* %3 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 7
  %4 = load i32, i32* %align, align 4
  %cmp = icmp ugt i32 8, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type2 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %align3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 7
  %6 = load i32, i32* %align3, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8, %cond.true ], [ %6, %cond.false ]
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 4
  store i32 %cond, i32* %record_align, align 4
  %8 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %record_align4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %8, i32 0, i32 4
  %9 = load i32, i32* %record_align4, align 4
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %unpadded_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 6
  store i32 %9, i32* %unpadded_align, align 4
  %11 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %11, i32 0, i32 5
  store i32 %9, i32* %unpacked_align, align 4
  %12 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %record_align5 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %12, i32 0, i32 4
  %13 = load i32, i32* %record_align5, align 4
  %cmp6 = icmp ugt i32 %13, 128
  br i1 %cmp6, label %cond.true.7, label %cond.false.9

cond.true.7:                                      ; preds = %cond.end
  %14 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %record_align8 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %14, i32 0, i32 4
  %15 = load i32, i32* %record_align8, align 4
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.7
  %cond11 = phi i32 [ %15, %cond.true.7 ], [ 128, %cond.false.9 ]
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 2
  store i32 %cond11, i32* %offset_align, align 4
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  %18 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %18, i32 0, i32 1
  store %union.tree_node* %17, %union.tree_node** %offset, align 8
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 17), align 8
  %20 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %20, i32 0, i32 3
  store %union.tree_node* %19, %union.tree_node** %bitpos, align 8
  %21 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %prev_field = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %21, i32 0, i32 7
  store %union.tree_node* null, %union.tree_node** %prev_field, align 8
  %22 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %22, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %pending_statics, align 8
  %23 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %23, i32 0, i32 9
  store i32 0, i32* %packed_maybe_necessary, align 4
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  ret %struct.record_layout_info_s* %24
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @bit_from_pos(%union.tree_node* %offset, %union.tree_node* %bitpos) #0 {
entry:
  %offset.addr = alloca %union.tree_node*, align 8
  %bitpos.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %offset, %union.tree_node** %offset.addr, align 8
  store %union.tree_node* %bitpos, %union.tree_node** %bitpos.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %bitpos.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %2 = load %union.tree_node*, %union.tree_node** %offset.addr, align 8
  %call = call %union.tree_node* @convert(%union.tree_node* %1, %union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call1 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call, %union.tree_node* %3)
  %call2 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %0, %union.tree_node* %call1)
  ret %union.tree_node* %call2
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @byte_from_pos(%union.tree_node* %offset, %union.tree_node* %bitpos) #0 {
entry:
  %offset.addr = alloca %union.tree_node*, align 8
  %bitpos.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %offset, %union.tree_node** %offset.addr, align 8
  store %union.tree_node* %bitpos, %union.tree_node** %bitpos.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %offset.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %2 = load %union.tree_node*, %union.tree_node** %bitpos.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call = call %union.tree_node* @size_binop(i32 62, %union.tree_node* %2, %union.tree_node* %3)
  %call1 = call %union.tree_node* @convert(%union.tree_node* %1, %union.tree_node* %call)
  %call2 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %0, %union.tree_node* %call1)
  ret %union.tree_node* %call2
}

; Function Attrs: nounwind uwtable
define void @pos_from_byte(%union.tree_node** %poffset, %union.tree_node** %pbitpos, i32 %off_align, %union.tree_node* %pos) #0 {
entry:
  %poffset.addr = alloca %union.tree_node**, align 8
  %pbitpos.addr = alloca %union.tree_node**, align 8
  %off_align.addr = alloca i32, align 4
  %pos.addr = alloca %union.tree_node*, align 8
  store %union.tree_node** %poffset, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node** %pbitpos, %union.tree_node*** %pbitpos.addr, align 8
  store i32 %off_align, i32* %off_align.addr, align 4
  store %union.tree_node* %pos, %union.tree_node** %pos.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %1 = load %union.tree_node*, %union.tree_node** %pos.addr, align 8
  %2 = load i32, i32* %off_align.addr, align 4
  %div = udiv i32 %2, 8
  %conv = zext i32 %div to i64
  %call = call %union.tree_node* @size_int_wide(i64 %conv, i32 3)
  %call1 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %1, %union.tree_node* %call)
  %call2 = call %union.tree_node* @convert(%union.tree_node* %0, %union.tree_node* %call1)
  %3 = load i32, i32* %off_align.addr, align 4
  %div3 = udiv i32 %3, 8
  %conv4 = zext i32 %div3 to i64
  %call5 = call %union.tree_node* @size_int_wide(i64 %conv4, i32 0)
  %call6 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call2, %union.tree_node* %call5)
  %4 = load %union.tree_node**, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node* %call6, %union.tree_node** %4, align 8
  %5 = load %union.tree_node*, %union.tree_node** %pos.addr, align 8
  %6 = load i32, i32* %off_align.addr, align 4
  %div7 = udiv i32 %6, 8
  %conv8 = zext i32 %div7 to i64
  %call9 = call %union.tree_node* @size_int_wide(i64 %conv8, i32 3)
  %call10 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %5, %union.tree_node* %call9)
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call11 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call10, %union.tree_node* %7)
  %8 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  store %union.tree_node* %call11, %union.tree_node** %8, align 8
  ret void
}

declare %union.tree_node* @size_int_wide(i64, i32) #1

; Function Attrs: nounwind uwtable
define void @pos_from_bit(%union.tree_node** %poffset, %union.tree_node** %pbitpos, i32 %off_align, %union.tree_node* %pos) #0 {
entry:
  %poffset.addr = alloca %union.tree_node**, align 8
  %pbitpos.addr = alloca %union.tree_node**, align 8
  %off_align.addr = alloca i32, align 4
  %pos.addr = alloca %union.tree_node*, align 8
  store %union.tree_node** %poffset, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node** %pbitpos, %union.tree_node*** %pbitpos.addr, align 8
  store i32 %off_align, i32* %off_align.addr, align 4
  store %union.tree_node* %pos, %union.tree_node** %pos.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %1 = load %union.tree_node*, %union.tree_node** %pos.addr, align 8
  %2 = load i32, i32* %off_align.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call %union.tree_node* @size_int_wide(i64 %conv, i32 3)
  %call1 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %1, %union.tree_node* %call)
  %call2 = call %union.tree_node* @convert(%union.tree_node* %0, %union.tree_node* %call1)
  %3 = load i32, i32* %off_align.addr, align 4
  %div = udiv i32 %3, 8
  %conv3 = zext i32 %div to i64
  %call4 = call %union.tree_node* @size_int_wide(i64 %conv3, i32 0)
  %call5 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call2, %union.tree_node* %call4)
  %4 = load %union.tree_node**, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node* %call5, %union.tree_node** %4, align 8
  %5 = load %union.tree_node*, %union.tree_node** %pos.addr, align 8
  %6 = load i32, i32* %off_align.addr, align 4
  %conv6 = zext i32 %6 to i64
  %call7 = call %union.tree_node* @size_int_wide(i64 %conv6, i32 3)
  %call8 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %5, %union.tree_node* %call7)
  %7 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  store %union.tree_node* %call8, %union.tree_node** %7, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @normalize_offset(%union.tree_node** %poffset, %union.tree_node** %pbitpos, i32 %off_align) #0 {
entry:
  %poffset.addr = alloca %union.tree_node**, align 8
  %pbitpos.addr = alloca %union.tree_node**, align 8
  %off_align.addr = alloca i32, align 4
  %extra_aligns = alloca %union.tree_node*, align 8
  store %union.tree_node** %poffset, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node** %pbitpos, %union.tree_node*** %pbitpos.addr, align 8
  store i32 %off_align, i32* %off_align.addr, align 4
  %0 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %2 = load i32, i32* %off_align.addr, align 4
  %conv = zext i32 %2 to i64
  %call = call i32 @compare_tree_int(%union.tree_node* %1, i64 %conv)
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %5 = load i32, i32* %off_align.addr, align 4
  %conv2 = zext i32 %5 to i64
  %call3 = call %union.tree_node* @size_int_wide(i64 %conv2, i32 3)
  %call4 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %4, %union.tree_node* %call3)
  store %union.tree_node* %call4, %union.tree_node** %extra_aligns, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %poffset.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %8 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %9 = load %union.tree_node*, %union.tree_node** %extra_aligns, align 8
  %call5 = call %union.tree_node* @convert(%union.tree_node* %8, %union.tree_node* %9)
  %10 = load i32, i32* %off_align.addr, align 4
  %div = udiv i32 %10, 8
  %conv6 = zext i32 %div to i64
  %call7 = call %union.tree_node* @size_int_wide(i64 %conv6, i32 0)
  %call8 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %call5, %union.tree_node* %call7)
  %call9 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %7, %union.tree_node* %call8)
  %11 = load %union.tree_node**, %union.tree_node*** %poffset.addr, align 8
  store %union.tree_node* %call9, %union.tree_node** %11, align 8
  %12 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  %14 = load i32, i32* %off_align.addr, align 4
  %conv10 = zext i32 %14 to i64
  %call11 = call %union.tree_node* @size_int_wide(i64 %conv10, i32 3)
  %call12 = call %union.tree_node* @size_binop(i32 68, %union.tree_node* %13, %union.tree_node* %call11)
  %15 = load %union.tree_node**, %union.tree_node*** %pbitpos.addr, align 8
  store %union.tree_node* %call12, %union.tree_node** %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_rli(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @print_node_brief(%struct._IO_FILE* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), %union.tree_node* %2, i32 0)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %offset, align 8
  call void @print_node_brief(%struct._IO_FILE* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %union.tree_node* %5, i32 0)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 3
  %8 = load %union.tree_node*, %union.tree_node** %bitpos, align 8
  call void @print_node_brief(%struct._IO_FILE* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %union.tree_node* %8, i32 0)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 4
  %11 = load i32, i32* %record_align, align 4
  %12 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %12, i32 0, i32 5
  %13 = load i32, i32* %unpacked_align, align 4
  %14 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %14, i32 0, i32 6
  %15 = load i32, i32* %unpadded_align, align 4
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 2
  %17 = load i32, i32* %offset_align, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i32 0, i32 0), i32 %11, i32 %13, i32 %15, i32 %17)
  %18 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %18, i32 0, i32 9
  %19 = load i32, i32* %packed_maybe_necessary, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %21 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %21, i32 0, i32 8
  %22 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8
  %tobool2 = icmp ne %union.tree_node* %22, null
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0))
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics5 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %24, i32 0, i32 8
  %25 = load %union.tree_node*, %union.tree_node** %pending_statics5, align 8
  call void @debug_tree(%union.tree_node* %25)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  ret void
}

declare void @print_node_brief(%struct._IO_FILE*, i8*, %union.tree_node*, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @debug_tree(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @normalize_rli(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %0, i32 0, i32 1
  %1 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1, i32 0, i32 3
  %2 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %2, i32 0, i32 2
  %3 = load i32, i32* %offset_align, align 4
  call void @normalize_offset(%union.tree_node** %offset, %union.tree_node** %bitpos, i32 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %0, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %offset, align 8
  %2 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %2, i32 0, i32 3
  %3 = load %union.tree_node*, %union.tree_node** %bitpos, align 8
  %call = call %union.tree_node* @byte_from_pos(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %0, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %offset, align 8
  %2 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %2, i32 0, i32 3
  %3 = load %union.tree_node*, %union.tree_node** %bitpos, align 8
  %call = call %union.tree_node* @bit_from_pos(%union.tree_node* %1, %union.tree_node* %3)
  ret %union.tree_node* %call
}

; Function Attrs: nounwind uwtable
define void @place_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  %field.addr = alloca %union.tree_node*, align 8
  %desired_align = alloca i32, align 4
  %known_align = alloca i32, align 4
  %actual_align = alloca i32, align 4
  %user_align = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %type_align = alloca i32, align 4
  %type_align418 = alloca i32, align 4
  %dsize = alloca %union.tree_node*, align 8
  %field_size = alloca i64, align 8
  %offset424 = alloca i64, align 8
  %bit_offset = alloca i64, align 8
  %type_align570 = alloca i32, align 4
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %type1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %1 = load %union.tree_node*, %union.tree_node** %type1, align 8
  store %union.tree_node* %1, %union.tree_node** %type, align 8
  %2 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common2 = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code4 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load5 = load i32, i32* %code4, align 8
  %bf.clear6 = and i32 %bf.load5, 255
  %cmp7 = icmp eq i32 %bf.clear6, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.759

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common8 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code9 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common8, i32 0, i32 2
  %bf.load10 = load i32, i32* %code9, align 8
  %bf.clear11 = and i32 %bf.load10, 255
  %cmp12 = icmp eq i32 %bf.clear11, 34
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %6 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %6, i32 0, i32 8
  %7 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8
  %call = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %5, %union.tree_node* %7)
  %8 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics14 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %8, i32 0, i32 8
  store %union.tree_node* %call, %union.tree_node** %pending_statics14, align 8
  br label %if.end.759

if.else:                                          ; preds = %if.end
  %9 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common15 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 2
  %bf.load17 = load i32, i32* %code16, align 8
  %bf.clear18 = and i32 %bf.load17, 255
  %cmp19 = icmp ne i32 %bf.clear18, 37
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %if.else
  br label %if.end.759

if.else.21:                                       ; preds = %if.else
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 0
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common22 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 2
  %bf.load24 = load i32, i32* %code23, align 8
  %bf.clear25 = and i32 %bf.load24, 255
  %cmp26 = icmp ne i32 %bf.clear25, 20
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.else.21
  %12 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  call void @place_union_field(%struct.record_layout_info_s* %12, %union.tree_node* %13)
  br label %if.end.759

if.end.28:                                        ; preds = %if.else.21
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29
  %14 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %14, i32 0, i32 3
  %15 = load %union.tree_node*, %union.tree_node** %bitpos, align 8
  %call31 = call i32 @integer_zerop(%union.tree_node* %15)
  %tobool = icmp ne i32 %call31, 0
  br i1 %tobool, label %if.else.37, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos33 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 3
  %17 = load %union.tree_node*, %union.tree_node** %bitpos33, align 8
  %call34 = call i64 @tree_low_cst(%union.tree_node* %17, i32 1)
  %18 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos35 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %18, i32 0, i32 3
  %19 = load %union.tree_node*, %union.tree_node** %bitpos35, align 8
  %call36 = call i64 @tree_low_cst(%union.tree_node* %19, i32 1)
  %sub = sub nsw i64 0, %call36
  %and = and i64 %call34, %sub
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %known_align, align 4
  br label %if.end.56

if.else.37:                                       ; preds = %if.end.30
  %20 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %20, i32 0, i32 1
  %21 = load %union.tree_node*, %union.tree_node** %offset, align 8
  %call38 = call i32 @integer_zerop(%union.tree_node* %21)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %if.else.37
  store i32 128, i32* %known_align, align 4
  br label %if.end.55

if.else.41:                                       ; preds = %if.else.37
  %22 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset42 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %22, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %offset42, align 8
  %call43 = call i32 @host_integerp(%union.tree_node* %23, i32 1)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.53

if.then.45:                                       ; preds = %if.else.41
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset46 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %24, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %offset46, align 8
  %call47 = call i64 @tree_low_cst(%union.tree_node* %25, i32 1)
  %26 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset48 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %26, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %offset48, align 8
  %call49 = call i64 @tree_low_cst(%union.tree_node* %27, i32 1)
  %sub50 = sub nsw i64 0, %call49
  %and51 = and i64 %call47, %sub50
  %mul = mul nsw i64 8, %and51
  %conv52 = trunc i64 %mul to i32
  store i32 %conv52, i32* %known_align, align 4
  br label %if.end.54

if.else.53:                                       ; preds = %if.else.41
  %28 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %28, i32 0, i32 2
  %29 = load i32, i32* %offset_align, align 4
  store i32 %29, i32* %known_align, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.53, %if.then.45
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.40
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.32
  %30 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %31 = bitcast %struct.anon.0* %a to i32*
  %bf.load57 = load i32, i32* %31, align 4
  %bf.clear58 = and i32 %bf.load57, 16777215
  store i32 %bf.clear58, i32* %desired_align, align 4
  %32 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl59 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %user_align60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 5
  %33 = bitcast i48* %user_align60 to i64*
  %bf.load61 = load i64, i64* %33, align 8
  %bf.lshr = lshr i64 %bf.load61, 35
  %bf.clear62 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear62 to i32
  store i32 %bf.cast, i32* %user_align, align 4
  %34 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %35 = load i32, i32* %known_align, align 4
  call void @layout_decl(%union.tree_node* %34, i32 %35)
  %36 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl63 = bitcast %union.tree_node* %36 to %struct.tree_decl*
  %regdecl_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl63, i32 0, i32 5
  %37 = bitcast i48* %regdecl_flag to i64*
  %bf.load64 = load i64, i64* %37, align 8
  %bf.lshr65 = lshr i64 %bf.load64, 10
  %bf.clear66 = and i64 %bf.lshr65, 1
  %bf.cast67 = trunc i64 %bf.clear66 to i32
  %tobool68 = icmp ne i32 %bf.cast67, 0
  br i1 %tobool68, label %if.end.81, label %if.then.69

if.then.69:                                       ; preds = %if.end.56
  %38 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl70 = bitcast %union.tree_node* %38 to %struct.tree_decl*
  %u171 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl70, i32 0, i32 6
  %a72 = bitcast %union.anon* %u171 to %struct.anon.0*
  %39 = bitcast %struct.anon.0* %a72 to i32*
  %bf.load73 = load i32, i32* %39, align 4
  %bf.clear74 = and i32 %bf.load73, 16777215
  store i32 %bf.clear74, i32* %desired_align, align 4
  %40 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl75 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %user_align76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 5
  %41 = bitcast i48* %user_align76 to i64*
  %bf.load77 = load i64, i64* %41, align 8
  %bf.lshr78 = lshr i64 %bf.load77, 35
  %bf.clear79 = and i64 %bf.lshr78, 1
  %bf.cast80 = trunc i64 %bf.clear79 to i32
  store i32 %bf.cast80, i32* %user_align, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.69, %if.end.56
  %42 = load i32, i32* %user_align, align 4
  %tobool82 = icmp ne i32 %42, 0
  br i1 %tobool82, label %if.end.85, label %if.then.83

if.then.83:                                       ; preds = %if.end.81
  %43 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %44 = load i32, i32* %desired_align, align 4
  %call84 = call i32 @x86_field_alignment(%union.tree_node* %43, i32 %44)
  store i32 %call84, i32* %desired_align, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %if.end.81
  %45 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %46 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t86 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %46, i32 0, i32 0
  %47 = load %union.tree_node*, %union.tree_node** %t86, align 8
  %call87 = call zeroext i1 %45(%union.tree_node* %47)
  br i1 %call87, label %land.lhs.true, label %if.else.134

land.lhs.true:                                    ; preds = %if.end.85
  %48 = load %union.tree_node*, %union.tree_node** %type, align 8
  %49 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp89 = icmp ne %union.tree_node* %48, %49
  br i1 %cmp89, label %land.lhs.true.91, label %if.else.134

land.lhs.true.91:                                 ; preds = %land.lhs.true
  %50 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl92 = bitcast %union.tree_node* %50 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl92, i32 0, i32 11
  %51 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool93 = icmp ne %union.tree_node* %51, null
  br i1 %tobool93, label %land.lhs.true.94, label %if.else.134

land.lhs.true.94:                                 ; preds = %land.lhs.true.91
  %52 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type95 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type95, i32 0, i32 2
  %53 = load %union.tree_node*, %union.tree_node** %size, align 8
  %call96 = call i32 @integer_zerop(%union.tree_node* %53)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.else.134, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %land.lhs.true.94
  %54 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl99 = bitcast %union.tree_node* %54 to %struct.tree_decl*
  %size100 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl99, i32 0, i32 4
  %55 = load %union.tree_node*, %union.tree_node** %size100, align 8
  %call101 = call i32 @integer_zerop(%union.tree_node* %55)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.134

if.then.103:                                      ; preds = %land.lhs.true.98
  %56 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %56, i32 0, i32 7
  %57 = load %union.tree_node*, %union.tree_node** %prev_field, align 8
  %tobool104 = icmp ne %union.tree_node* %57, null
  br i1 %tobool104, label %land.lhs.true.105, label %if.else.132

land.lhs.true.105:                                ; preds = %if.then.103
  %58 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field106 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %58, i32 0, i32 7
  %59 = load %union.tree_node*, %union.tree_node** %prev_field106, align 8
  %decl107 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %result108 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl107, i32 0, i32 11
  %60 = load %union.tree_node*, %union.tree_node** %result108, align 8
  %tobool109 = icmp ne %union.tree_node* %60, null
  br i1 %tobool109, label %land.lhs.true.110, label %if.else.132

land.lhs.true.110:                                ; preds = %land.lhs.true.105
  %61 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field111 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %61, i32 0, i32 7
  %62 = load %union.tree_node*, %union.tree_node** %prev_field111, align 8
  %decl112 = bitcast %union.tree_node* %62 to %struct.tree_decl*
  %size113 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl112, i32 0, i32 4
  %63 = load %union.tree_node*, %union.tree_node** %size113, align 8
  %call114 = call i32 @integer_zerop(%union.tree_node* %63)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.else.132, label %if.then.116

if.then.116:                                      ; preds = %land.lhs.true.110
  %64 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %64, i32 0, i32 4
  %65 = load i32, i32* %record_align, align 4
  %66 = load i32, i32* %desired_align, align 4
  %cmp117 = icmp ugt i32 %65, %66
  br i1 %cmp117, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.116
  %67 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align119 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %67, i32 0, i32 4
  %68 = load i32, i32* %record_align119, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.116
  %69 = load i32, i32* %desired_align, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ %69, %cond.false ]
  %70 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align120 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %70, i32 0, i32 4
  store i32 %cond, i32* %record_align120, align 4
  %71 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %71, i32 0, i32 5
  %72 = load i32, i32* %unpacked_align, align 4
  %73 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type121 = bitcast %union.tree_node* %73 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type121, i32 0, i32 7
  %74 = load i32, i32* %align, align 4
  %cmp122 = icmp ugt i32 %72, %74
  br i1 %cmp122, label %cond.true.124, label %cond.false.126

cond.true.124:                                    ; preds = %cond.end
  %75 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align125 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %75, i32 0, i32 5
  %76 = load i32, i32* %unpacked_align125, align 4
  br label %cond.end.129

cond.false.126:                                   ; preds = %cond.end
  %77 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type127 = bitcast %union.tree_node* %77 to %struct.tree_type*
  %align128 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type127, i32 0, i32 7
  %78 = load i32, i32* %align128, align 4
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.126, %cond.true.124
  %cond130 = phi i32 [ %76, %cond.true.124 ], [ %78, %cond.false.126 ]
  %79 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align131 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %79, i32 0, i32 5
  store i32 %cond130, i32* %unpacked_align131, align 4
  br label %if.end.133

if.else.132:                                      ; preds = %land.lhs.true.110, %land.lhs.true.105, %if.then.103
  store i32 1, i32* %desired_align, align 4
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.132, %cond.end.129
  br label %if.end.308

if.else.134:                                      ; preds = %land.lhs.true.98, %land.lhs.true.94, %land.lhs.true.91, %land.lhs.true, %if.end.85
  %80 = load %union.tree_node*, %union.tree_node** %type, align 8
  %81 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp135 = icmp ne %union.tree_node* %80, %81
  br i1 %cmp135, label %land.lhs.true.137, label %if.else.265

land.lhs.true.137:                                ; preds = %if.else.134
  %82 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %83 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t138 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %83, i32 0, i32 0
  %84 = load %union.tree_node*, %union.tree_node** %t138, align 8
  %call139 = call zeroext i1 %82(%union.tree_node* %84)
  br i1 %call139, label %if.else.265, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %land.lhs.true.137
  %85 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl141 = bitcast %union.tree_node* %85 to %struct.tree_decl*
  %result142 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl141, i32 0, i32 11
  %86 = load %union.tree_node*, %union.tree_node** %result142, align 8
  %tobool143 = icmp ne %union.tree_node* %86, null
  br i1 %tobool143, label %land.lhs.true.144, label %if.else.265

land.lhs.true.144:                                ; preds = %land.lhs.true.140
  %87 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type145 = bitcast %union.tree_node* %87 to %struct.tree_type*
  %size146 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type145, i32 0, i32 2
  %88 = load %union.tree_node*, %union.tree_node** %size146, align 8
  %call147 = call i32 @integer_zerop(%union.tree_node* %88)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.else.265, label %if.then.149

if.then.149:                                      ; preds = %land.lhs.true.144
  %89 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl150 = bitcast %union.tree_node* %89 to %struct.tree_decl*
  %size151 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl150, i32 0, i32 4
  %90 = load %union.tree_node*, %union.tree_node** %size151, align 8
  %call152 = call i32 @integer_zerop(%union.tree_node* %90)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.else.164, label %if.then.154

if.then.154:                                      ; preds = %if.then.149
  %91 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align155 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %91, i32 0, i32 4
  %92 = load i32, i32* %record_align155, align 4
  %93 = load i32, i32* %desired_align, align 4
  %cmp156 = icmp ugt i32 %92, %93
  br i1 %cmp156, label %cond.true.158, label %cond.false.160

cond.true.158:                                    ; preds = %if.then.154
  %94 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align159 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %94, i32 0, i32 4
  %95 = load i32, i32* %record_align159, align 4
  br label %cond.end.161

cond.false.160:                                   ; preds = %if.then.154
  %96 = load i32, i32* %desired_align, align 4
  br label %cond.end.161

cond.end.161:                                     ; preds = %cond.false.160, %cond.true.158
  %cond162 = phi i32 [ %95, %cond.true.158 ], [ %96, %cond.false.160 ]
  %97 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align163 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %97, i32 0, i32 4
  store i32 %cond162, i32* %record_align163, align 4
  br label %if.end.176

if.else.164:                                      ; preds = %if.then.149
  %98 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl165 = bitcast %union.tree_node* %98 to %struct.tree_decl*
  %regdecl_flag166 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl165, i32 0, i32 5
  %99 = bitcast i48* %regdecl_flag166 to i64*
  %bf.load167 = load i64, i64* %99, align 8
  %bf.lshr168 = lshr i64 %bf.load167, 10
  %bf.clear169 = and i64 %bf.lshr168, 1
  %bf.cast170 = trunc i64 %bf.clear169 to i32
  %tobool171 = icmp ne i32 %bf.cast170, 0
  br i1 %tobool171, label %if.end.175, label %if.then.172

if.then.172:                                      ; preds = %if.else.164
  %100 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type173 = bitcast %union.tree_node* %100 to %struct.tree_type*
  %align174 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type173, i32 0, i32 7
  %101 = load i32, i32* %align174, align 4
  store i32 %101, i32* %desired_align, align 4
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.172, %if.else.164
  br label %if.end.176

if.end.176:                                       ; preds = %if.end.175, %cond.end.161
  %102 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl177 = bitcast %union.tree_node* %102 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl177, i32 0, i32 8
  %103 = load %union.tree_node*, %union.tree_node** %name, align 8
  %cmp178 = icmp ne %union.tree_node* %103, null
  br i1 %cmp178, label %if.then.180, label %if.end.264

if.then.180:                                      ; preds = %if.end.176
  %104 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type181 = bitcast %union.tree_node* %104 to %struct.tree_type*
  %align182 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type181, i32 0, i32 7
  %105 = load i32, i32* %align182, align 4
  store i32 %105, i32* %type_align, align 4
  %106 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type183 = bitcast %union.tree_node* %106 to %struct.tree_type*
  %user_align184 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type183, i32 0, i32 6
  %bf.load185 = load i32, i32* %user_align184, align 4
  %bf.lshr186 = lshr i32 %bf.load185, 31
  %tobool187 = icmp ne i32 %bf.lshr186, 0
  br i1 %tobool187, label %if.end.190, label %if.then.188

if.then.188:                                      ; preds = %if.then.180
  %107 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %108 = load i32, i32* %type_align, align 4
  %call189 = call i32 @x86_field_alignment(%union.tree_node* %107, i32 %108)
  store i32 %call189, i32* %type_align, align 4
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.188, %if.then.180
  %109 = load i32, i32* @maximum_field_alignment, align 4
  %cmp191 = icmp ne i32 %109, 0
  br i1 %cmp191, label %if.then.193, label %if.else.200

if.then.193:                                      ; preds = %if.end.190
  %110 = load i32, i32* %type_align, align 4
  %111 = load i32, i32* @maximum_field_alignment, align 4
  %cmp194 = icmp ult i32 %110, %111
  br i1 %cmp194, label %cond.true.196, label %cond.false.197

cond.true.196:                                    ; preds = %if.then.193
  %112 = load i32, i32* %type_align, align 4
  br label %cond.end.198

cond.false.197:                                   ; preds = %if.then.193
  %113 = load i32, i32* @maximum_field_alignment, align 4
  br label %cond.end.198

cond.end.198:                                     ; preds = %cond.false.197, %cond.true.196
  %cond199 = phi i32 [ %112, %cond.true.196 ], [ %113, %cond.false.197 ]
  store i32 %cond199, i32* %type_align, align 4
  br label %if.end.216

if.else.200:                                      ; preds = %if.end.190
  %114 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl201 = bitcast %union.tree_node* %114 to %struct.tree_decl*
  %regdecl_flag202 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl201, i32 0, i32 5
  %115 = bitcast i48* %regdecl_flag202 to i64*
  %bf.load203 = load i64, i64* %115, align 8
  %bf.lshr204 = lshr i64 %bf.load203, 10
  %bf.clear205 = and i64 %bf.lshr204, 1
  %bf.cast206 = trunc i64 %bf.clear205 to i32
  %tobool207 = icmp ne i32 %bf.cast206, 0
  br i1 %tobool207, label %if.then.208, label %if.end.215

if.then.208:                                      ; preds = %if.else.200
  %116 = load i32, i32* %type_align, align 4
  %cmp209 = icmp ult i32 %116, 8
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %if.then.208
  %117 = load i32, i32* %type_align, align 4
  br label %cond.end.213

cond.false.212:                                   ; preds = %if.then.208
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.false.212, %cond.true.211
  %cond214 = phi i32 [ %117, %cond.true.211 ], [ 8, %cond.false.212 ]
  store i32 %cond214, i32* %type_align, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %cond.end.213, %if.else.200
  br label %if.end.216

if.end.216:                                       ; preds = %if.end.215, %cond.end.198
  %118 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align217 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %118, i32 0, i32 4
  %119 = load i32, i32* %record_align217, align 4
  %120 = load i32, i32* %type_align, align 4
  %cmp218 = icmp ugt i32 %119, %120
  br i1 %cmp218, label %cond.true.220, label %cond.false.222

cond.true.220:                                    ; preds = %if.end.216
  %121 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align221 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %121, i32 0, i32 4
  %122 = load i32, i32* %record_align221, align 4
  br label %cond.end.223

cond.false.222:                                   ; preds = %if.end.216
  %123 = load i32, i32* %type_align, align 4
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.true.220
  %cond224 = phi i32 [ %122, %cond.true.220 ], [ %123, %cond.false.222 ]
  %124 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align225 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %124, i32 0, i32 4
  store i32 %cond224, i32* %record_align225, align 4
  %125 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %125, i32 0, i32 6
  %126 = load i32, i32* %unpadded_align, align 4
  %127 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl226 = bitcast %union.tree_node* %127 to %struct.tree_decl*
  %u1227 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl226, i32 0, i32 6
  %a228 = bitcast %union.anon* %u1227 to %struct.anon.0*
  %128 = bitcast %struct.anon.0* %a228 to i32*
  %bf.load229 = load i32, i32* %128, align 4
  %bf.clear230 = and i32 %bf.load229, 16777215
  %cmp231 = icmp ugt i32 %126, %bf.clear230
  br i1 %cmp231, label %cond.true.233, label %cond.false.235

cond.true.233:                                    ; preds = %cond.end.223
  %129 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align234 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %129, i32 0, i32 6
  %130 = load i32, i32* %unpadded_align234, align 4
  br label %cond.end.241

cond.false.235:                                   ; preds = %cond.end.223
  %131 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl236 = bitcast %union.tree_node* %131 to %struct.tree_decl*
  %u1237 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl236, i32 0, i32 6
  %a238 = bitcast %union.anon* %u1237 to %struct.anon.0*
  %132 = bitcast %struct.anon.0* %a238 to i32*
  %bf.load239 = load i32, i32* %132, align 4
  %bf.clear240 = and i32 %bf.load239, 16777215
  br label %cond.end.241

cond.end.241:                                     ; preds = %cond.false.235, %cond.true.233
  %cond242 = phi i32 [ %130, %cond.true.233 ], [ %bf.clear240, %cond.false.235 ]
  %133 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align243 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %133, i32 0, i32 6
  store i32 %cond242, i32* %unpadded_align243, align 4
  %134 = load i32, i32* @warn_packed, align 4
  %tobool244 = icmp ne i32 %134, 0
  br i1 %tobool244, label %if.then.245, label %if.end.259

if.then.245:                                      ; preds = %cond.end.241
  %135 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align246 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %135, i32 0, i32 5
  %136 = load i32, i32* %unpacked_align246, align 4
  %137 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type247 = bitcast %union.tree_node* %137 to %struct.tree_type*
  %align248 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type247, i32 0, i32 7
  %138 = load i32, i32* %align248, align 4
  %cmp249 = icmp ugt i32 %136, %138
  br i1 %cmp249, label %cond.true.251, label %cond.false.253

cond.true.251:                                    ; preds = %if.then.245
  %139 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align252 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %139, i32 0, i32 5
  %140 = load i32, i32* %unpacked_align252, align 4
  br label %cond.end.256

cond.false.253:                                   ; preds = %if.then.245
  %141 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type254 = bitcast %union.tree_node* %141 to %struct.tree_type*
  %align255 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type254, i32 0, i32 7
  %142 = load i32, i32* %align255, align 4
  br label %cond.end.256

cond.end.256:                                     ; preds = %cond.false.253, %cond.true.251
  %cond257 = phi i32 [ %140, %cond.true.251 ], [ %142, %cond.false.253 ]
  %143 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align258 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %143, i32 0, i32 5
  store i32 %cond257, i32* %unpacked_align258, align 4
  br label %if.end.259

if.end.259:                                       ; preds = %cond.end.256, %cond.end.241
  %144 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type260 = bitcast %union.tree_node* %144 to %struct.tree_type*
  %user_align261 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type260, i32 0, i32 6
  %bf.load262 = load i32, i32* %user_align261, align 4
  %bf.lshr263 = lshr i32 %bf.load262, 31
  %145 = load i32, i32* %user_align, align 4
  %or = or i32 %145, %bf.lshr263
  store i32 %or, i32* %user_align, align 4
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.259, %if.end.176
  br label %if.end.307

if.else.265:                                      ; preds = %land.lhs.true.144, %land.lhs.true.140, %land.lhs.true.137, %if.else.134
  %146 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align266 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %146, i32 0, i32 4
  %147 = load i32, i32* %record_align266, align 4
  %148 = load i32, i32* %desired_align, align 4
  %cmp267 = icmp ugt i32 %147, %148
  br i1 %cmp267, label %cond.true.269, label %cond.false.271

cond.true.269:                                    ; preds = %if.else.265
  %149 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align270 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %149, i32 0, i32 4
  %150 = load i32, i32* %record_align270, align 4
  br label %cond.end.272

cond.false.271:                                   ; preds = %if.else.265
  %151 = load i32, i32* %desired_align, align 4
  br label %cond.end.272

cond.end.272:                                     ; preds = %cond.false.271, %cond.true.269
  %cond273 = phi i32 [ %150, %cond.true.269 ], [ %151, %cond.false.271 ]
  %152 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align274 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %152, i32 0, i32 4
  store i32 %cond273, i32* %record_align274, align 4
  %153 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align275 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %153, i32 0, i32 5
  %154 = load i32, i32* %unpacked_align275, align 4
  %155 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type276 = bitcast %union.tree_node* %155 to %struct.tree_type*
  %align277 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type276, i32 0, i32 7
  %156 = load i32, i32* %align277, align 4
  %cmp278 = icmp ugt i32 %154, %156
  br i1 %cmp278, label %cond.true.280, label %cond.false.282

cond.true.280:                                    ; preds = %cond.end.272
  %157 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align281 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %157, i32 0, i32 5
  %158 = load i32, i32* %unpacked_align281, align 4
  br label %cond.end.285

cond.false.282:                                   ; preds = %cond.end.272
  %159 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type283 = bitcast %union.tree_node* %159 to %struct.tree_type*
  %align284 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type283, i32 0, i32 7
  %160 = load i32, i32* %align284, align 4
  br label %cond.end.285

cond.end.285:                                     ; preds = %cond.false.282, %cond.true.280
  %cond286 = phi i32 [ %158, %cond.true.280 ], [ %160, %cond.false.282 ]
  %161 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align287 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %161, i32 0, i32 5
  store i32 %cond286, i32* %unpacked_align287, align 4
  %162 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align288 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %162, i32 0, i32 6
  %163 = load i32, i32* %unpadded_align288, align 4
  %164 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl289 = bitcast %union.tree_node* %164 to %struct.tree_decl*
  %u1290 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl289, i32 0, i32 6
  %a291 = bitcast %union.anon* %u1290 to %struct.anon.0*
  %165 = bitcast %struct.anon.0* %a291 to i32*
  %bf.load292 = load i32, i32* %165, align 4
  %bf.clear293 = and i32 %bf.load292, 16777215
  %cmp294 = icmp ugt i32 %163, %bf.clear293
  br i1 %cmp294, label %cond.true.296, label %cond.false.298

cond.true.296:                                    ; preds = %cond.end.285
  %166 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align297 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %166, i32 0, i32 6
  %167 = load i32, i32* %unpadded_align297, align 4
  br label %cond.end.304

cond.false.298:                                   ; preds = %cond.end.285
  %168 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl299 = bitcast %union.tree_node* %168 to %struct.tree_decl*
  %u1300 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl299, i32 0, i32 6
  %a301 = bitcast %union.anon* %u1300 to %struct.anon.0*
  %169 = bitcast %struct.anon.0* %a301 to i32*
  %bf.load302 = load i32, i32* %169, align 4
  %bf.clear303 = and i32 %bf.load302, 16777215
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.298, %cond.true.296
  %cond305 = phi i32 [ %167, %cond.true.296 ], [ %bf.clear303, %cond.false.298 ]
  %170 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align306 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %170, i32 0, i32 6
  store i32 %cond305, i32* %unpadded_align306, align 4
  br label %if.end.307

if.end.307:                                       ; preds = %cond.end.304, %if.end.264
  br label %if.end.308

if.end.308:                                       ; preds = %if.end.307, %if.end.133
  %171 = load i32, i32* @warn_packed, align 4
  %tobool309 = icmp ne i32 %171, 0
  br i1 %tobool309, label %land.lhs.true.310, label %if.end.332

land.lhs.true.310:                                ; preds = %if.end.308
  %172 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl311 = bitcast %union.tree_node* %172 to %struct.tree_decl*
  %regdecl_flag312 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl311, i32 0, i32 5
  %173 = bitcast i48* %regdecl_flag312 to i64*
  %bf.load313 = load i64, i64* %173, align 8
  %bf.lshr314 = lshr i64 %bf.load313, 10
  %bf.clear315 = and i64 %bf.lshr314, 1
  %bf.cast316 = trunc i64 %bf.clear315 to i32
  %tobool317 = icmp ne i32 %bf.cast316, 0
  br i1 %tobool317, label %if.then.318, label %if.end.332

if.then.318:                                      ; preds = %land.lhs.true.310
  %174 = load i32, i32* %known_align, align 4
  %175 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type319 = bitcast %union.tree_node* %175 to %struct.tree_type*
  %align320 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type319, i32 0, i32 7
  %176 = load i32, i32* %align320, align 4
  %cmp321 = icmp ugt i32 %174, %176
  br i1 %cmp321, label %if.then.323, label %if.else.330

if.then.323:                                      ; preds = %if.then.318
  %177 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type324 = bitcast %union.tree_node* %177 to %struct.tree_type*
  %align325 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type324, i32 0, i32 7
  %178 = load i32, i32* %align325, align 4
  %179 = load i32, i32* %desired_align, align 4
  %cmp326 = icmp ugt i32 %178, %179
  br i1 %cmp326, label %if.then.328, label %if.end.329

if.then.328:                                      ; preds = %if.then.323
  %180 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %180, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.328, %if.then.323
  br label %if.end.331

if.else.330:                                      ; preds = %if.then.318
  %181 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %181, i32 0, i32 9
  store i32 1, i32* %packed_maybe_necessary, align 4
  br label %if.end.331

if.end.331:                                       ; preds = %if.else.330, %if.end.329
  br label %if.end.332

if.end.332:                                       ; preds = %if.end.331, %land.lhs.true.310, %if.end.308
  %182 = load i32, i32* %known_align, align 4
  %183 = load i32, i32* %desired_align, align 4
  %cmp333 = icmp ult i32 %182, %183
  br i1 %cmp333, label %if.then.335, label %if.end.367

if.then.335:                                      ; preds = %if.end.332
  %184 = load i32, i32* @warn_padded, align 4
  %tobool336 = icmp ne i32 %184, 0
  br i1 %tobool336, label %if.then.337, label %if.end.338

if.then.337:                                      ; preds = %if.then.335
  %185 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  call void (%union.tree_node*, i8*, ...) @warning_with_decl(%union.tree_node* %185, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.337, %if.then.335
  %186 = load i32, i32* %desired_align, align 4
  %187 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align339 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %187, i32 0, i32 2
  %188 = load i32, i32* %offset_align339, align 4
  %cmp340 = icmp ult i32 %186, %188
  br i1 %cmp340, label %if.then.342, label %if.else.346

if.then.342:                                      ; preds = %if.end.338
  %189 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos343 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %189, i32 0, i32 3
  %190 = load %union.tree_node*, %union.tree_node** %bitpos343, align 8
  %191 = load i32, i32* %desired_align, align 4
  %call344 = call %union.tree_node* @round_up(%union.tree_node* %190, i32 %191)
  %192 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos345 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %192, i32 0, i32 3
  store %union.tree_node* %call344, %union.tree_node** %bitpos345, align 8
  br label %if.end.357

if.else.346:                                      ; preds = %if.end.338
  %193 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset347 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %193, i32 0, i32 1
  %194 = load %union.tree_node*, %union.tree_node** %offset347, align 8
  %195 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %196 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos348 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %196, i32 0, i32 3
  %197 = load %union.tree_node*, %union.tree_node** %bitpos348, align 8
  %198 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call349 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %197, %union.tree_node* %198)
  %call350 = call %union.tree_node* @convert(%union.tree_node* %195, %union.tree_node* %call349)
  %call351 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %194, %union.tree_node* %call350)
  %199 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset352 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %199, i32 0, i32 1
  store %union.tree_node* %call351, %union.tree_node** %offset352, align 8
  %200 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 17), align 8
  %201 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos353 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %201, i32 0, i32 3
  store %union.tree_node* %200, %union.tree_node** %bitpos353, align 8
  %202 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset354 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %202, i32 0, i32 1
  %203 = load %union.tree_node*, %union.tree_node** %offset354, align 8
  %204 = load i32, i32* %desired_align, align 4
  %div = udiv i32 %204, 8
  %call355 = call %union.tree_node* @round_up(%union.tree_node* %203, i32 %div)
  %205 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset356 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %205, i32 0, i32 1
  store %union.tree_node* %call355, %union.tree_node** %offset356, align 8
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.346, %if.then.342
  %206 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset358 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %206, i32 0, i32 1
  %207 = load %union.tree_node*, %union.tree_node** %offset358, align 8
  %common359 = bitcast %union.tree_node* %207 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common359, i32 0, i32 2
  %bf.load360 = load i32, i32* %constant_flag, align 8
  %bf.lshr361 = lshr i32 %bf.load360, 9
  %bf.clear362 = and i32 %bf.lshr361, 1
  %tobool363 = icmp ne i32 %bf.clear362, 0
  br i1 %tobool363, label %if.end.366, label %if.then.364

if.then.364:                                      ; preds = %if.end.357
  %208 = load i32, i32* %desired_align, align 4
  %209 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align365 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %209, i32 0, i32 2
  store i32 %208, i32* %offset_align365, align 4
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.364, %if.end.357
  br label %if.end.367

if.end.367:                                       ; preds = %if.end.366, %if.end.332
  %210 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %211 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t368 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %211, i32 0, i32 0
  %212 = load %union.tree_node*, %union.tree_node** %t368, align 8
  %call369 = call zeroext i1 %210(%union.tree_node* %212)
  br i1 %call369, label %if.end.466, label %land.lhs.true.370

land.lhs.true.370:                                ; preds = %if.end.367
  %213 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common371 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %code372 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common371, i32 0, i32 2
  %bf.load373 = load i32, i32* %code372, align 8
  %bf.clear374 = and i32 %bf.load373, 255
  %cmp375 = icmp eq i32 %bf.clear374, 37
  br i1 %cmp375, label %land.lhs.true.377, label %if.end.466

land.lhs.true.377:                                ; preds = %land.lhs.true.370
  %214 = load %union.tree_node*, %union.tree_node** %type, align 8
  %215 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp378 = icmp ne %union.tree_node* %214, %215
  br i1 %cmp378, label %land.lhs.true.380, label %if.end.466

land.lhs.true.380:                                ; preds = %land.lhs.true.377
  %216 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl381 = bitcast %union.tree_node* %216 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl381, i32 0, i32 5
  %217 = bitcast i48* %bit_field_flag to i64*
  %bf.load382 = load i64, i64* %217, align 8
  %bf.lshr383 = lshr i64 %bf.load382, 12
  %bf.clear384 = and i64 %bf.lshr383, 1
  %bf.cast385 = trunc i64 %bf.clear384 to i32
  %tobool386 = icmp ne i32 %bf.cast385, 0
  br i1 %tobool386, label %land.lhs.true.387, label %if.end.466

land.lhs.true.387:                                ; preds = %land.lhs.true.380
  %218 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl388 = bitcast %union.tree_node* %218 to %struct.tree_decl*
  %regdecl_flag389 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl388, i32 0, i32 5
  %219 = bitcast i48* %regdecl_flag389 to i64*
  %bf.load390 = load i64, i64* %219, align 8
  %bf.lshr391 = lshr i64 %bf.load390, 10
  %bf.clear392 = and i64 %bf.lshr391, 1
  %bf.cast393 = trunc i64 %bf.clear392 to i32
  %tobool394 = icmp ne i32 %bf.cast393, 0
  br i1 %tobool394, label %if.end.466, label %land.lhs.true.395

land.lhs.true.395:                                ; preds = %land.lhs.true.387
  %220 = load i32, i32* @maximum_field_alignment, align 4
  %cmp396 = icmp eq i32 %220, 0
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.466

land.lhs.true.398:                                ; preds = %land.lhs.true.395
  %221 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl399 = bitcast %union.tree_node* %221 to %struct.tree_decl*
  %size400 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl399, i32 0, i32 4
  %222 = load %union.tree_node*, %union.tree_node** %size400, align 8
  %call401 = call i32 @integer_zerop(%union.tree_node* %222)
  %tobool402 = icmp ne i32 %call401, 0
  br i1 %tobool402, label %if.end.466, label %land.lhs.true.403

land.lhs.true.403:                                ; preds = %land.lhs.true.398
  %223 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl404 = bitcast %union.tree_node* %223 to %struct.tree_decl*
  %size405 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl404, i32 0, i32 4
  %224 = load %union.tree_node*, %union.tree_node** %size405, align 8
  %call406 = call i32 @host_integerp(%union.tree_node* %224, i32 1)
  %tobool407 = icmp ne i32 %call406, 0
  br i1 %tobool407, label %land.lhs.true.408, label %if.end.466

land.lhs.true.408:                                ; preds = %land.lhs.true.403
  %225 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset409 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %225, i32 0, i32 1
  %226 = load %union.tree_node*, %union.tree_node** %offset409, align 8
  %call410 = call i32 @host_integerp(%union.tree_node* %226, i32 1)
  %tobool411 = icmp ne i32 %call410, 0
  br i1 %tobool411, label %land.lhs.true.412, label %if.end.466

land.lhs.true.412:                                ; preds = %land.lhs.true.408
  %227 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type413 = bitcast %union.tree_node* %227 to %struct.tree_type*
  %size414 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type413, i32 0, i32 2
  %228 = load %union.tree_node*, %union.tree_node** %size414, align 8
  %call415 = call i32 @host_integerp(%union.tree_node* %228, i32 1)
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %if.then.417, label %if.end.466

if.then.417:                                      ; preds = %land.lhs.true.412
  %229 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type419 = bitcast %union.tree_node* %229 to %struct.tree_type*
  %align420 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type419, i32 0, i32 7
  %230 = load i32, i32* %align420, align 4
  store i32 %230, i32* %type_align418, align 4
  %231 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl421 = bitcast %union.tree_node* %231 to %struct.tree_decl*
  %size422 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl421, i32 0, i32 4
  %232 = load %union.tree_node*, %union.tree_node** %size422, align 8
  store %union.tree_node* %232, %union.tree_node** %dsize, align 8
  %233 = load %union.tree_node*, %union.tree_node** %dsize, align 8
  %call423 = call i64 @tree_low_cst(%union.tree_node* %233, i32 1)
  store i64 %call423, i64* %field_size, align 8
  %234 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset425 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %234, i32 0, i32 1
  %235 = load %union.tree_node*, %union.tree_node** %offset425, align 8
  %call426 = call i64 @tree_low_cst(%union.tree_node* %235, i32 0)
  store i64 %call426, i64* %offset424, align 8
  %236 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos427 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %236, i32 0, i32 3
  %237 = load %union.tree_node*, %union.tree_node** %bitpos427, align 8
  %call428 = call i64 @tree_low_cst(%union.tree_node* %237, i32 0)
  store i64 %call428, i64* %bit_offset, align 8
  %238 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type429 = bitcast %union.tree_node* %238 to %struct.tree_type*
  %user_align430 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type429, i32 0, i32 6
  %bf.load431 = load i32, i32* %user_align430, align 4
  %bf.lshr432 = lshr i32 %bf.load431, 31
  %tobool433 = icmp ne i32 %bf.lshr432, 0
  br i1 %tobool433, label %if.end.436, label %if.then.434

if.then.434:                                      ; preds = %if.then.417
  %239 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %240 = load i32, i32* %type_align418, align 4
  %call435 = call i32 @x86_field_alignment(%union.tree_node* %239, i32 %240)
  store i32 %call435, i32* %type_align418, align 4
  br label %if.end.436

if.end.436:                                       ; preds = %if.then.434, %if.then.417
  %241 = load i64, i64* %offset424, align 8
  %mul437 = mul nsw i64 %241, 8
  %242 = load i64, i64* %bit_offset, align 8
  %add = add nsw i64 %mul437, %242
  %243 = load i64, i64* %field_size, align 8
  %add438 = add nsw i64 %add, %243
  %244 = load i32, i32* %type_align418, align 4
  %conv439 = zext i32 %244 to i64
  %add440 = add nsw i64 %add438, %conv439
  %sub441 = sub nsw i64 %add440, 1
  %245 = load i32, i32* %type_align418, align 4
  %conv442 = zext i32 %245 to i64
  %div443 = sdiv i64 %sub441, %conv442
  %246 = load i64, i64* %offset424, align 8
  %mul444 = mul nsw i64 %246, 8
  %247 = load i64, i64* %bit_offset, align 8
  %add445 = add nsw i64 %mul444, %247
  %248 = load i32, i32* %type_align418, align 4
  %conv446 = zext i32 %248 to i64
  %div447 = sdiv i64 %add445, %conv446
  %sub448 = sub nsw i64 %div443, %div447
  %249 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type449 = bitcast %union.tree_node* %249 to %struct.tree_type*
  %size450 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type449, i32 0, i32 2
  %250 = load %union.tree_node*, %union.tree_node** %size450, align 8
  %call451 = call i64 @tree_low_cst(%union.tree_node* %250, i32 1)
  %251 = load i32, i32* %type_align418, align 4
  %conv452 = zext i32 %251 to i64
  %div453 = sdiv i64 %call451, %conv452
  %cmp454 = icmp sgt i64 %sub448, %div453
  br i1 %cmp454, label %if.then.456, label %if.end.460

if.then.456:                                      ; preds = %if.end.436
  %252 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos457 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %252, i32 0, i32 3
  %253 = load %union.tree_node*, %union.tree_node** %bitpos457, align 8
  %254 = load i32, i32* %type_align418, align 4
  %call458 = call %union.tree_node* @round_up(%union.tree_node* %253, i32 %254)
  %255 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos459 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %255, i32 0, i32 3
  store %union.tree_node* %call458, %union.tree_node** %bitpos459, align 8
  br label %if.end.460

if.end.460:                                       ; preds = %if.then.456, %if.end.436
  %256 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type461 = bitcast %union.tree_node* %256 to %struct.tree_type*
  %user_align462 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type461, i32 0, i32 6
  %bf.load463 = load i32, i32* %user_align462, align 4
  %bf.lshr464 = lshr i32 %bf.load463, 31
  %257 = load i32, i32* %user_align, align 4
  %or465 = or i32 %257, %bf.lshr464
  store i32 %or465, i32* %user_align, align 4
  br label %if.end.466

if.end.466:                                       ; preds = %if.end.460, %land.lhs.true.412, %land.lhs.true.408, %land.lhs.true.403, %land.lhs.true.398, %land.lhs.true.395, %land.lhs.true.387, %land.lhs.true.380, %land.lhs.true.377, %land.lhs.true.370, %if.end.367
  %258 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 9), align 8
  %259 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t467 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %259, i32 0, i32 0
  %260 = load %union.tree_node*, %union.tree_node** %t467, align 8
  %call468 = call zeroext i1 %258(%union.tree_node* %260)
  br i1 %call468, label %land.lhs.true.470, label %if.end.617

land.lhs.true.470:                                ; preds = %if.end.466
  %261 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common471 = bitcast %union.tree_node* %261 to %struct.tree_common*
  %code472 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common471, i32 0, i32 2
  %bf.load473 = load i32, i32* %code472, align 8
  %bf.clear474 = and i32 %bf.load473, 255
  %cmp475 = icmp eq i32 %bf.clear474, 37
  br i1 %cmp475, label %land.lhs.true.477, label %if.end.617

land.lhs.true.477:                                ; preds = %land.lhs.true.470
  %262 = load %union.tree_node*, %union.tree_node** %type, align 8
  %263 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp478 = icmp ne %union.tree_node* %262, %263
  br i1 %cmp478, label %land.lhs.true.480, label %if.end.617

land.lhs.true.480:                                ; preds = %land.lhs.true.477
  %264 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl481 = bitcast %union.tree_node* %264 to %struct.tree_decl*
  %regdecl_flag482 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl481, i32 0, i32 5
  %265 = bitcast i48* %regdecl_flag482 to i64*
  %bf.load483 = load i64, i64* %265, align 8
  %bf.lshr484 = lshr i64 %bf.load483, 10
  %bf.clear485 = and i64 %bf.lshr484, 1
  %bf.cast486 = trunc i64 %bf.clear485 to i32
  %tobool487 = icmp ne i32 %bf.cast486, 0
  br i1 %tobool487, label %if.end.617, label %land.lhs.true.488

land.lhs.true.488:                                ; preds = %land.lhs.true.480
  %266 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field489 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %266, i32 0, i32 7
  %267 = load %union.tree_node*, %union.tree_node** %prev_field489, align 8
  %tobool490 = icmp ne %union.tree_node* %267, null
  br i1 %tobool490, label %land.lhs.true.491, label %if.end.617

land.lhs.true.491:                                ; preds = %land.lhs.true.488
  %268 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl492 = bitcast %union.tree_node* %268 to %struct.tree_decl*
  %size493 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl492, i32 0, i32 4
  %269 = load %union.tree_node*, %union.tree_node** %size493, align 8
  %tobool494 = icmp ne %union.tree_node* %269, null
  br i1 %tobool494, label %land.lhs.true.495, label %if.end.617

land.lhs.true.495:                                ; preds = %land.lhs.true.491
  %270 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl496 = bitcast %union.tree_node* %270 to %struct.tree_decl*
  %size497 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl496, i32 0, i32 4
  %271 = load %union.tree_node*, %union.tree_node** %size497, align 8
  %call498 = call i32 @host_integerp(%union.tree_node* %271, i32 1)
  %tobool499 = icmp ne i32 %call498, 0
  br i1 %tobool499, label %land.lhs.true.500, label %if.end.617

land.lhs.true.500:                                ; preds = %land.lhs.true.495
  %272 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field501 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %272, i32 0, i32 7
  %273 = load %union.tree_node*, %union.tree_node** %prev_field501, align 8
  %decl502 = bitcast %union.tree_node* %273 to %struct.tree_decl*
  %size503 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl502, i32 0, i32 4
  %274 = load %union.tree_node*, %union.tree_node** %size503, align 8
  %tobool504 = icmp ne %union.tree_node* %274, null
  br i1 %tobool504, label %land.lhs.true.505, label %if.end.617

land.lhs.true.505:                                ; preds = %land.lhs.true.500
  %275 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field506 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %275, i32 0, i32 7
  %276 = load %union.tree_node*, %union.tree_node** %prev_field506, align 8
  %decl507 = bitcast %union.tree_node* %276 to %struct.tree_decl*
  %size508 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl507, i32 0, i32 4
  %277 = load %union.tree_node*, %union.tree_node** %size508, align 8
  %call509 = call i32 @host_integerp(%union.tree_node* %277, i32 1)
  %tobool510 = icmp ne i32 %call509, 0
  br i1 %tobool510, label %land.lhs.true.511, label %if.end.617

land.lhs.true.511:                                ; preds = %land.lhs.true.505
  %278 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset512 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %278, i32 0, i32 1
  %279 = load %union.tree_node*, %union.tree_node** %offset512, align 8
  %call513 = call i32 @host_integerp(%union.tree_node* %279, i32 1)
  %tobool514 = icmp ne i32 %call513, 0
  br i1 %tobool514, label %land.lhs.true.515, label %if.end.617

land.lhs.true.515:                                ; preds = %land.lhs.true.511
  %280 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type516 = bitcast %union.tree_node* %280 to %struct.tree_type*
  %size517 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type516, i32 0, i32 2
  %281 = load %union.tree_node*, %union.tree_node** %size517, align 8
  %call518 = call i32 @host_integerp(%union.tree_node* %281, i32 1)
  %tobool519 = icmp ne i32 %call518, 0
  br i1 %tobool519, label %land.lhs.true.520, label %if.end.617

land.lhs.true.520:                                ; preds = %land.lhs.true.515
  %282 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field521 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %282, i32 0, i32 7
  %283 = load %union.tree_node*, %union.tree_node** %prev_field521, align 8
  %common522 = bitcast %union.tree_node* %283 to %struct.tree_common*
  %type523 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common522, i32 0, i32 1
  %284 = load %union.tree_node*, %union.tree_node** %type523, align 8
  %type524 = bitcast %union.tree_node* %284 to %struct.tree_type*
  %size525 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type524, i32 0, i32 2
  %285 = load %union.tree_node*, %union.tree_node** %size525, align 8
  %call526 = call i32 @host_integerp(%union.tree_node* %285, i32 1)
  %tobool527 = icmp ne i32 %call526, 0
  br i1 %tobool527, label %land.lhs.true.528, label %if.end.617

land.lhs.true.528:                                ; preds = %land.lhs.true.520
  %286 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field529 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %286, i32 0, i32 7
  %287 = load %union.tree_node*, %union.tree_node** %prev_field529, align 8
  %decl530 = bitcast %union.tree_node* %287 to %struct.tree_decl*
  %result531 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl530, i32 0, i32 11
  %288 = load %union.tree_node*, %union.tree_node** %result531, align 8
  %tobool532 = icmp ne %union.tree_node* %288, null
  br i1 %tobool532, label %land.lhs.true.533, label %lor.lhs.false.539

land.lhs.true.533:                                ; preds = %land.lhs.true.528
  %289 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field534 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %289, i32 0, i32 7
  %290 = load %union.tree_node*, %union.tree_node** %prev_field534, align 8
  %decl535 = bitcast %union.tree_node* %290 to %struct.tree_decl*
  %size536 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl535, i32 0, i32 4
  %291 = load %union.tree_node*, %union.tree_node** %size536, align 8
  %call537 = call i32 @integer_zerop(%union.tree_node* %291)
  %tobool538 = icmp ne i32 %call537, 0
  br i1 %tobool538, label %lor.lhs.false.539, label %land.lhs.true.548

lor.lhs.false.539:                                ; preds = %land.lhs.true.533, %land.lhs.true.528
  %292 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl540 = bitcast %union.tree_node* %292 to %struct.tree_decl*
  %result541 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl540, i32 0, i32 11
  %293 = load %union.tree_node*, %union.tree_node** %result541, align 8
  %tobool542 = icmp ne %union.tree_node* %293, null
  br i1 %tobool542, label %land.lhs.true.543, label %if.end.617

land.lhs.true.543:                                ; preds = %lor.lhs.false.539
  %294 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl544 = bitcast %union.tree_node* %294 to %struct.tree_decl*
  %size545 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl544, i32 0, i32 4
  %295 = load %union.tree_node*, %union.tree_node** %size545, align 8
  %call546 = call i32 @integer_zerop(%union.tree_node* %295)
  %tobool547 = icmp ne i32 %call546, 0
  br i1 %tobool547, label %if.end.617, label %land.lhs.true.548

land.lhs.true.548:                                ; preds = %land.lhs.true.543, %land.lhs.true.533
  %296 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type549 = bitcast %union.tree_node* %296 to %struct.tree_type*
  %size550 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type549, i32 0, i32 2
  %297 = load %union.tree_node*, %union.tree_node** %size550, align 8
  %298 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field551 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %298, i32 0, i32 7
  %299 = load %union.tree_node*, %union.tree_node** %prev_field551, align 8
  %common552 = bitcast %union.tree_node* %299 to %struct.tree_common*
  %type553 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common552, i32 0, i32 1
  %300 = load %union.tree_node*, %union.tree_node** %type553, align 8
  %type554 = bitcast %union.tree_node* %300 to %struct.tree_type*
  %size555 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type554, i32 0, i32 2
  %301 = load %union.tree_node*, %union.tree_node** %size555, align 8
  %call556 = call i32 @simple_cst_equal(%union.tree_node* %297, %union.tree_node* %301)
  %tobool557 = icmp ne i32 %call556, 0
  br i1 %tobool557, label %lor.lhs.false.558, label %if.then.569

lor.lhs.false.558:                                ; preds = %land.lhs.true.548
  %302 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field559 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %302, i32 0, i32 7
  %303 = load %union.tree_node*, %union.tree_node** %prev_field559, align 8
  %decl560 = bitcast %union.tree_node* %303 to %struct.tree_decl*
  %result561 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl560, i32 0, i32 11
  %304 = load %union.tree_node*, %union.tree_node** %result561, align 8
  %tobool562 = icmp ne %union.tree_node* %304, null
  br i1 %tobool562, label %land.lhs.true.563, label %if.end.617

land.lhs.true.563:                                ; preds = %lor.lhs.false.558
  %305 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field564 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %305, i32 0, i32 7
  %306 = load %union.tree_node*, %union.tree_node** %prev_field564, align 8
  %decl565 = bitcast %union.tree_node* %306 to %struct.tree_decl*
  %size566 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl565, i32 0, i32 4
  %307 = load %union.tree_node*, %union.tree_node** %size566, align 8
  %call567 = call i32 @integer_zerop(%union.tree_node* %307)
  %tobool568 = icmp ne i32 %call567, 0
  br i1 %tobool568, label %if.then.569, label %if.end.617

if.then.569:                                      ; preds = %land.lhs.true.563, %land.lhs.true.548
  %308 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type571 = bitcast %union.tree_node* %308 to %struct.tree_type*
  %align572 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type571, i32 0, i32 7
  %309 = load i32, i32* %align572, align 4
  store i32 %309, i32* %type_align570, align 4
  %310 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field573 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %310, i32 0, i32 7
  %311 = load %union.tree_node*, %union.tree_node** %prev_field573, align 8
  %tobool574 = icmp ne %union.tree_node* %311, null
  br i1 %tobool574, label %land.lhs.true.575, label %if.end.603

land.lhs.true.575:                                ; preds = %if.then.569
  %312 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field576 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %312, i32 0, i32 7
  %313 = load %union.tree_node*, %union.tree_node** %prev_field576, align 8
  %decl577 = bitcast %union.tree_node* %313 to %struct.tree_decl*
  %result578 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl577, i32 0, i32 11
  %314 = load %union.tree_node*, %union.tree_node** %result578, align 8
  %tobool579 = icmp ne %union.tree_node* %314, null
  br i1 %tobool579, label %land.lhs.true.580, label %if.end.603

land.lhs.true.580:                                ; preds = %land.lhs.true.575
  %315 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field581 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %315, i32 0, i32 7
  %316 = load %union.tree_node*, %union.tree_node** %prev_field581, align 8
  %decl582 = bitcast %union.tree_node* %316 to %struct.tree_decl*
  %size583 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl582, i32 0, i32 4
  %317 = load %union.tree_node*, %union.tree_node** %size583, align 8
  %call584 = call i32 @integer_zerop(%union.tree_node* %317)
  %tobool585 = icmp ne i32 %call584, 0
  br i1 %tobool585, label %if.end.603, label %if.then.586

if.then.586:                                      ; preds = %land.lhs.true.580
  %318 = load i32, i32* %type_align570, align 4
  %319 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field587 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %319, i32 0, i32 7
  %320 = load %union.tree_node*, %union.tree_node** %prev_field587, align 8
  %common588 = bitcast %union.tree_node* %320 to %struct.tree_common*
  %type589 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common588, i32 0, i32 1
  %321 = load %union.tree_node*, %union.tree_node** %type589, align 8
  %type590 = bitcast %union.tree_node* %321 to %struct.tree_type*
  %align591 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type590, i32 0, i32 7
  %322 = load i32, i32* %align591, align 4
  %cmp592 = icmp ugt i32 %318, %322
  br i1 %cmp592, label %cond.true.594, label %cond.false.595

cond.true.594:                                    ; preds = %if.then.586
  %323 = load i32, i32* %type_align570, align 4
  br label %cond.end.601

cond.false.595:                                   ; preds = %if.then.586
  %324 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field596 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %324, i32 0, i32 7
  %325 = load %union.tree_node*, %union.tree_node** %prev_field596, align 8
  %common597 = bitcast %union.tree_node* %325 to %struct.tree_common*
  %type598 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common597, i32 0, i32 1
  %326 = load %union.tree_node*, %union.tree_node** %type598, align 8
  %type599 = bitcast %union.tree_node* %326 to %struct.tree_type*
  %align600 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type599, i32 0, i32 7
  %327 = load i32, i32* %align600, align 4
  br label %cond.end.601

cond.end.601:                                     ; preds = %cond.false.595, %cond.true.594
  %cond602 = phi i32 [ %323, %cond.true.594 ], [ %327, %cond.false.595 ]
  store i32 %cond602, i32* %type_align570, align 4
  br label %if.end.603

if.end.603:                                       ; preds = %cond.end.601, %land.lhs.true.580, %land.lhs.true.575, %if.then.569
  %328 = load i32, i32* @maximum_field_alignment, align 4
  %cmp604 = icmp ne i32 %328, 0
  br i1 %cmp604, label %if.then.606, label %if.end.613

if.then.606:                                      ; preds = %if.end.603
  %329 = load i32, i32* %type_align570, align 4
  %330 = load i32, i32* @maximum_field_alignment, align 4
  %cmp607 = icmp ult i32 %329, %330
  br i1 %cmp607, label %cond.true.609, label %cond.false.610

cond.true.609:                                    ; preds = %if.then.606
  %331 = load i32, i32* %type_align570, align 4
  br label %cond.end.611

cond.false.610:                                   ; preds = %if.then.606
  %332 = load i32, i32* @maximum_field_alignment, align 4
  br label %cond.end.611

cond.end.611:                                     ; preds = %cond.false.610, %cond.true.609
  %cond612 = phi i32 [ %331, %cond.true.609 ], [ %332, %cond.false.610 ]
  store i32 %cond612, i32* %type_align570, align 4
  br label %if.end.613

if.end.613:                                       ; preds = %cond.end.611, %if.end.603
  %333 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos614 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %333, i32 0, i32 3
  %334 = load %union.tree_node*, %union.tree_node** %bitpos614, align 8
  %335 = load i32, i32* %type_align570, align 4
  %call615 = call %union.tree_node* @round_up(%union.tree_node* %334, i32 %335)
  %336 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos616 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %336, i32 0, i32 3
  store %union.tree_node* %call615, %union.tree_node** %bitpos616, align 8
  br label %if.end.617

if.end.617:                                       ; preds = %if.end.613, %land.lhs.true.563, %lor.lhs.false.558, %land.lhs.true.543, %lor.lhs.false.539, %land.lhs.true.520, %land.lhs.true.515, %land.lhs.true.511, %land.lhs.true.505, %land.lhs.true.500, %land.lhs.true.495, %land.lhs.true.491, %land.lhs.true.488, %land.lhs.true.480, %land.lhs.true.477, %land.lhs.true.470, %if.end.466
  %337 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %337)
  %338 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset618 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %338, i32 0, i32 1
  %339 = load %union.tree_node*, %union.tree_node** %offset618, align 8
  %340 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl619 = bitcast %union.tree_node* %340 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl619, i32 0, i32 10
  store %union.tree_node* %339, %union.tree_node** %arguments, align 8
  %341 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos620 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %341, i32 0, i32 3
  %342 = load %union.tree_node*, %union.tree_node** %bitpos620, align 8
  %343 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl621 = bitcast %union.tree_node* %343 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl621, i32 0, i32 19
  %t622 = bitcast %union.anon.1* %u2 to %union.tree_node**
  store %union.tree_node* %342, %union.tree_node** %t622, align 8
  %344 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align623 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %344, i32 0, i32 2
  %345 = load i32, i32* %offset_align623, align 4
  %346 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align624 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %346, i32 0, i32 2
  %347 = load i32, i32* %offset_align624, align 4
  %sub625 = sub i32 0, %347
  %and626 = and i32 %345, %sub625
  %conv627 = zext i32 %and626 to i64
  %call628 = call i32 @exact_log2_wide(i64 %conv627)
  %348 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl629 = bitcast %union.tree_node* %348 to %struct.tree_decl*
  %u1630 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl629, i32 0, i32 6
  %a631 = bitcast %union.anon* %u1630 to %struct.anon.0*
  %349 = bitcast %struct.anon.0* %a631 to i32*
  %bf.load632 = load i32, i32* %349, align 4
  %bf.value = and i32 %call628, 255
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear633 = and i32 %bf.load632, 16777215
  %bf.set = or i32 %bf.clear633, %bf.shl
  store i32 %bf.set, i32* %349, align 4
  %350 = load i32, i32* %user_align, align 4
  %351 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t634 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %351, i32 0, i32 0
  %352 = load %union.tree_node*, %union.tree_node** %t634, align 8
  %type635 = bitcast %union.tree_node* %352 to %struct.tree_type*
  %user_align636 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type635, i32 0, i32 6
  %bf.load637 = load i32, i32* %user_align636, align 4
  %bf.lshr638 = lshr i32 %bf.load637, 31
  %or639 = or i32 %bf.lshr638, %350
  %bf.load640 = load i32, i32* %user_align636, align 4
  %bf.value641 = and i32 %or639, 1
  %bf.shl642 = shl i32 %bf.value641, 31
  %bf.clear643 = and i32 %bf.load640, 2147483647
  %bf.set644 = or i32 %bf.clear643, %bf.shl642
  store i32 %bf.set644, i32* %user_align636, align 4
  %353 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl645 = bitcast %union.tree_node* %353 to %struct.tree_decl*
  %u2646 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl645, i32 0, i32 19
  %t647 = bitcast %union.anon.1* %u2646 to %union.tree_node**
  %354 = load %union.tree_node*, %union.tree_node** %t647, align 8
  %call648 = call i32 @integer_zerop(%union.tree_node* %354)
  %tobool649 = icmp ne i32 %call648, 0
  br i1 %tobool649, label %if.else.662, label %if.then.650

if.then.650:                                      ; preds = %if.end.617
  %355 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl651 = bitcast %union.tree_node* %355 to %struct.tree_decl*
  %u2652 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl651, i32 0, i32 19
  %t653 = bitcast %union.anon.1* %u2652 to %union.tree_node**
  %356 = load %union.tree_node*, %union.tree_node** %t653, align 8
  %call654 = call i64 @tree_low_cst(%union.tree_node* %356, i32 1)
  %357 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl655 = bitcast %union.tree_node* %357 to %struct.tree_decl*
  %u2656 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl655, i32 0, i32 19
  %t657 = bitcast %union.anon.1* %u2656 to %union.tree_node**
  %358 = load %union.tree_node*, %union.tree_node** %t657, align 8
  %call658 = call i64 @tree_low_cst(%union.tree_node* %358, i32 1)
  %sub659 = sub nsw i64 0, %call658
  %and660 = and i64 %call654, %sub659
  %conv661 = trunc i64 %and660 to i32
  store i32 %conv661, i32* %actual_align, align 4
  br label %if.end.693

if.else.662:                                      ; preds = %if.end.617
  %359 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl663 = bitcast %union.tree_node* %359 to %struct.tree_decl*
  %arguments664 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl663, i32 0, i32 10
  %360 = load %union.tree_node*, %union.tree_node** %arguments664, align 8
  %call665 = call i32 @integer_zerop(%union.tree_node* %360)
  %tobool666 = icmp ne i32 %call665, 0
  br i1 %tobool666, label %if.then.667, label %if.else.668

if.then.667:                                      ; preds = %if.else.662
  store i32 128, i32* %actual_align, align 4
  br label %if.end.692

if.else.668:                                      ; preds = %if.else.662
  %361 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl669 = bitcast %union.tree_node* %361 to %struct.tree_decl*
  %arguments670 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl669, i32 0, i32 10
  %362 = load %union.tree_node*, %union.tree_node** %arguments670, align 8
  %call671 = call i32 @host_integerp(%union.tree_node* %362, i32 1)
  %tobool672 = icmp ne i32 %call671, 0
  br i1 %tobool672, label %if.then.673, label %if.else.684

if.then.673:                                      ; preds = %if.else.668
  %363 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl674 = bitcast %union.tree_node* %363 to %struct.tree_decl*
  %arguments675 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl674, i32 0, i32 10
  %364 = load %union.tree_node*, %union.tree_node** %arguments675, align 8
  %call676 = call i64 @tree_low_cst(%union.tree_node* %364, i32 1)
  %365 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl677 = bitcast %union.tree_node* %365 to %struct.tree_decl*
  %arguments678 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl677, i32 0, i32 10
  %366 = load %union.tree_node*, %union.tree_node** %arguments678, align 8
  %call679 = call i64 @tree_low_cst(%union.tree_node* %366, i32 1)
  %sub680 = sub nsw i64 0, %call679
  %and681 = and i64 %call676, %sub680
  %mul682 = mul nsw i64 8, %and681
  %conv683 = trunc i64 %mul682 to i32
  store i32 %conv683, i32* %actual_align, align 4
  br label %if.end.691

if.else.684:                                      ; preds = %if.else.668
  %367 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl685 = bitcast %union.tree_node* %367 to %struct.tree_decl*
  %u1686 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl685, i32 0, i32 6
  %a687 = bitcast %union.anon* %u1686 to %struct.anon.0*
  %368 = bitcast %struct.anon.0* %a687 to i32*
  %bf.load688 = load i32, i32* %368, align 4
  %bf.lshr689 = lshr i32 %bf.load688, 24
  %sh_prom = zext i32 %bf.lshr689 to i64
  %shl = shl i64 1, %sh_prom
  %conv690 = trunc i64 %shl to i32
  store i32 %conv690, i32* %actual_align, align 4
  br label %if.end.691

if.end.691:                                       ; preds = %if.else.684, %if.then.673
  br label %if.end.692

if.end.692:                                       ; preds = %if.end.691, %if.then.667
  br label %if.end.693

if.end.693:                                       ; preds = %if.end.692, %if.then.650
  %369 = load i32, i32* %known_align, align 4
  %370 = load i32, i32* %actual_align, align 4
  %cmp694 = icmp ne i32 %369, %370
  br i1 %cmp694, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %if.end.693
  %371 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %372 = load i32, i32* %actual_align, align 4
  call void @layout_decl(%union.tree_node* %371, i32 %372)
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.696, %if.end.693
  %373 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %374 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %prev_field698 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %374, i32 0, i32 7
  store %union.tree_node* %373, %union.tree_node** %prev_field698, align 8
  %375 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl699 = bitcast %union.tree_node* %375 to %struct.tree_decl*
  %size700 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl699, i32 0, i32 4
  %376 = load %union.tree_node*, %union.tree_node** %size700, align 8
  %cmp701 = icmp eq %union.tree_node* %376, null
  br i1 %cmp701, label %if.then.703, label %if.else.704

if.then.703:                                      ; preds = %if.end.697
  br label %if.end.759

if.else.704:                                      ; preds = %if.end.697
  %377 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl705 = bitcast %union.tree_node* %377 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl705, i32 0, i32 7
  %378 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %common706 = bitcast %union.tree_node* %378 to %struct.tree_common*
  %code707 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common706, i32 0, i32 2
  %bf.load708 = load i32, i32* %code707, align 8
  %bf.clear709 = and i32 %bf.load708, 255
  %cmp710 = icmp ne i32 %bf.clear709, 25
  br i1 %cmp710, label %if.then.720, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %if.else.704
  %379 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl713 = bitcast %union.tree_node* %379 to %struct.tree_decl*
  %size_unit714 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl713, i32 0, i32 7
  %380 = load %union.tree_node*, %union.tree_node** %size_unit714, align 8
  %common715 = bitcast %union.tree_node* %380 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common715, i32 0, i32 2
  %bf.load716 = load i32, i32* %static_flag, align 8
  %bf.lshr717 = lshr i32 %bf.load716, 18
  %bf.clear718 = and i32 %bf.lshr717, 1
  %tobool719 = icmp ne i32 %bf.clear718, 0
  br i1 %tobool719, label %if.then.720, label %if.else.752

if.then.720:                                      ; preds = %lor.lhs.false.712, %if.else.704
  %381 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset721 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %381, i32 0, i32 1
  %382 = load %union.tree_node*, %union.tree_node** %offset721, align 8
  %383 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %384 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos722 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %384, i32 0, i32 3
  %385 = load %union.tree_node*, %union.tree_node** %bitpos722, align 8
  %386 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call723 = call %union.tree_node* @size_binop(i32 63, %union.tree_node* %385, %union.tree_node* %386)
  %call724 = call %union.tree_node* @convert(%union.tree_node* %383, %union.tree_node* %call723)
  %call725 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %382, %union.tree_node* %call724)
  %387 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset726 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %387, i32 0, i32 1
  store %union.tree_node* %call725, %union.tree_node** %offset726, align 8
  %388 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset727 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %388, i32 0, i32 1
  %389 = load %union.tree_node*, %union.tree_node** %offset727, align 8
  %390 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl728 = bitcast %union.tree_node* %390 to %struct.tree_decl*
  %size_unit729 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl728, i32 0, i32 7
  %391 = load %union.tree_node*, %union.tree_node** %size_unit729, align 8
  %call730 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %389, %union.tree_node* %391)
  %392 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset731 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %392, i32 0, i32 1
  store %union.tree_node* %call730, %union.tree_node** %offset731, align 8
  %393 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 17), align 8
  %394 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos732 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %394, i32 0, i32 3
  store %union.tree_node* %393, %union.tree_node** %bitpos732, align 8
  %395 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align733 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %395, i32 0, i32 2
  %396 = load i32, i32* %offset_align733, align 4
  %397 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl734 = bitcast %union.tree_node* %397 to %struct.tree_decl*
  %u1735 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl734, i32 0, i32 6
  %a736 = bitcast %union.anon* %u1735 to %struct.anon.0*
  %398 = bitcast %struct.anon.0* %a736 to i32*
  %bf.load737 = load i32, i32* %398, align 4
  %bf.clear738 = and i32 %bf.load737, 16777215
  %cmp739 = icmp ult i32 %396, %bf.clear738
  br i1 %cmp739, label %cond.true.741, label %cond.false.743

cond.true.741:                                    ; preds = %if.then.720
  %399 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align742 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %399, i32 0, i32 2
  %400 = load i32, i32* %offset_align742, align 4
  br label %cond.end.749

cond.false.743:                                   ; preds = %if.then.720
  %401 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl744 = bitcast %union.tree_node* %401 to %struct.tree_decl*
  %u1745 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl744, i32 0, i32 6
  %a746 = bitcast %union.anon* %u1745 to %struct.anon.0*
  %402 = bitcast %struct.anon.0* %a746 to i32*
  %bf.load747 = load i32, i32* %402, align 4
  %bf.clear748 = and i32 %bf.load747, 16777215
  br label %cond.end.749

cond.end.749:                                     ; preds = %cond.false.743, %cond.true.741
  %cond750 = phi i32 [ %400, %cond.true.741 ], [ %bf.clear748, %cond.false.743 ]
  %403 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align751 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %403, i32 0, i32 2
  store i32 %cond750, i32* %offset_align751, align 4
  br label %if.end.758

if.else.752:                                      ; preds = %lor.lhs.false.712
  %404 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos753 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %404, i32 0, i32 3
  %405 = load %union.tree_node*, %union.tree_node** %bitpos753, align 8
  %406 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl754 = bitcast %union.tree_node* %406 to %struct.tree_decl*
  %size755 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl754, i32 0, i32 4
  %407 = load %union.tree_node*, %union.tree_node** %size755, align 8
  %call756 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %405, %union.tree_node* %407)
  %408 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos757 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %408, i32 0, i32 3
  store %union.tree_node* %call756, %union.tree_node** %bitpos757, align 8
  %409 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %409)
  br label %if.end.758

if.end.758:                                       ; preds = %if.else.752, %cond.end.749
  br label %if.end.759

if.end.759:                                       ; preds = %if.then, %if.then.13, %if.then.20, %if.then.27, %if.end.758, %if.then.703
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @place_union_field(%struct.record_layout_info_s* %rli, %union.tree_node* %field) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  %field.addr = alloca %union.tree_node*, align 8
  %desired_align = alloca i32, align 4
  %type_align = alloca i32, align 4
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  store %union.tree_node* %field, %union.tree_node** %field.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  call void @layout_decl(%union.tree_node* %0, i32 0)
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  %2 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  store %union.tree_node* %1, %union.tree_node** %arguments, align 8
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 17), align 8
  %4 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl1 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 19
  %t = bitcast %union.anon.1* %u2 to %union.tree_node**
  store %union.tree_node* %3, %union.tree_node** %t, align 8
  %call = call i32 @exact_log2_wide(i64 128)
  %5 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl2 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %6 = bitcast %struct.anon.0* %a to i32*
  %bf.load = load i32, i32* %6, align 4
  %bf.value = and i32 %call, 255
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear = and i32 %bf.load, 16777215
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %6, align 4
  %7 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl3 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %u14 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 6
  %a5 = bitcast %union.anon* %u14 to %struct.anon.0*
  %8 = bitcast %struct.anon.0* %a5 to i32*
  %bf.load6 = load i32, i32* %8, align 4
  %bf.clear7 = and i32 %bf.load6, 16777215
  store i32 %bf.clear7, i32* %desired_align, align 4
  %9 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl8 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %user_align = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %10 = bitcast i48* %user_align to i64*
  %bf.load9 = load i64, i64* %10, align 8
  %bf.lshr = lshr i64 %bf.load9, 35
  %bf.clear10 = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear10 to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %11 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %12 = load i32, i32* %desired_align, align 4
  %call11 = call i32 @x86_field_alignment(%union.tree_node* %11, i32 %12)
  store i32 %call11, i32* %desired_align, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl12 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %user_align13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 5
  %14 = bitcast i48* %user_align13 to i64*
  %bf.load14 = load i64, i64* %14, align 8
  %bf.lshr15 = lshr i64 %bf.load14, 35
  %bf.clear16 = and i64 %bf.lshr15, 1
  %bf.cast17 = trunc i64 %bf.clear16 to i32
  %15 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t18 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %15, i32 0, i32 0
  %16 = load %union.tree_node*, %union.tree_node** %t18, align 8
  %type = bitcast %union.tree_node* %16 to %struct.tree_type*
  %user_align19 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load20 = load i32, i32* %user_align19, align 4
  %bf.lshr21 = lshr i32 %bf.load20, 31
  %or = or i32 %bf.lshr21, %bf.cast17
  %bf.load22 = load i32, i32* %user_align19, align 4
  %bf.value23 = and i32 %or, 1
  %bf.shl24 = shl i32 %bf.value23, 31
  %bf.clear25 = and i32 %bf.load22, 2147483647
  %bf.set26 = or i32 %bf.clear25, %bf.shl24
  store i32 %bf.set26, i32* %user_align19, align 4
  %17 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %17, i32 0, i32 4
  %18 = load i32, i32* %record_align, align 4
  %19 = load i32, i32* %desired_align, align 4
  %cmp = icmp ugt i32 %18, %19
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %20 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align27 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %20, i32 0, i32 4
  %21 = load i32, i32* %record_align27, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %22 = load i32, i32* %desired_align, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ %22, %cond.false ]
  %23 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align28 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %23, i32 0, i32 4
  store i32 %cond, i32* %record_align28, align 4
  %24 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %24, i32 0, i32 6
  %25 = load i32, i32* %unpadded_align, align 4
  %26 = load i32, i32* %desired_align, align 4
  %cmp29 = icmp ugt i32 %25, %26
  br i1 %cmp29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %cond.end
  %27 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align31 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %27, i32 0, i32 6
  %28 = load i32, i32* %unpadded_align31, align 4
  br label %cond.end.33

cond.false.32:                                    ; preds = %cond.end
  %29 = load i32, i32* %desired_align, align 4
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.30
  %cond34 = phi i32 [ %28, %cond.true.30 ], [ %29, %cond.false.32 ]
  %30 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align35 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %30, i32 0, i32 6
  store i32 %cond34, i32* %unpadded_align35, align 4
  %31 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl36 = bitcast %union.tree_node* %31 to %struct.tree_decl*
  %result = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl36, i32 0, i32 11
  %32 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool37 = icmp ne %union.tree_node* %32, null
  br i1 %tobool37, label %if.then.38, label %if.end.84

if.then.38:                                       ; preds = %cond.end.33
  %33 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common = bitcast %union.tree_node* %33 to %struct.tree_common*
  %type39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %34 = load %union.tree_node*, %union.tree_node** %type39, align 8
  %type40 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 7
  %35 = load i32, i32* %align, align 4
  store i32 %35, i32* %type_align, align 4
  %36 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common41 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type42 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common41, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type42, align 8
  %type43 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %user_align44 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type43, i32 0, i32 6
  %bf.load45 = load i32, i32* %user_align44, align 4
  %bf.lshr46 = lshr i32 %bf.load45, 31
  %tobool47 = icmp ne i32 %bf.lshr46, 0
  br i1 %tobool47, label %if.end.50, label %if.then.48

if.then.48:                                       ; preds = %if.then.38
  %38 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %39 = load i32, i32* %type_align, align 4
  %call49 = call i32 @x86_field_alignment(%union.tree_node* %38, i32 %39)
  store i32 %call49, i32* %type_align, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.then.38
  %40 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align51 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %40, i32 0, i32 4
  %41 = load i32, i32* %record_align51, align 4
  %42 = load i32, i32* %type_align, align 4
  %cmp52 = icmp ugt i32 %41, %42
  br i1 %cmp52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %if.end.50
  %43 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align54 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %43, i32 0, i32 4
  %44 = load i32, i32* %record_align54, align 4
  br label %cond.end.56

cond.false.55:                                    ; preds = %if.end.50
  %45 = load i32, i32* %type_align, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.53
  %cond57 = phi i32 [ %44, %cond.true.53 ], [ %45, %cond.false.55 ]
  %46 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align58 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %46, i32 0, i32 4
  store i32 %cond57, i32* %record_align58, align 4
  %47 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align59 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %47, i32 0, i32 6
  %48 = load i32, i32* %unpadded_align59, align 4
  %49 = load i32, i32* %type_align, align 4
  %cmp60 = icmp ugt i32 %48, %49
  br i1 %cmp60, label %cond.true.61, label %cond.false.63

cond.true.61:                                     ; preds = %cond.end.56
  %50 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align62 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %50, i32 0, i32 6
  %51 = load i32, i32* %unpadded_align62, align 4
  br label %cond.end.64

cond.false.63:                                    ; preds = %cond.end.56
  %52 = load i32, i32* %type_align, align 4
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.63, %cond.true.61
  %cond65 = phi i32 [ %51, %cond.true.61 ], [ %52, %cond.false.63 ]
  %53 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpadded_align66 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %53, i32 0, i32 6
  store i32 %cond65, i32* %unpadded_align66, align 4
  %54 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %common67 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %type68 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common67, i32 0, i32 1
  %55 = load %union.tree_node*, %union.tree_node** %type68, align 8
  %type69 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %user_align70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 6
  %bf.load71 = load i32, i32* %user_align70, align 4
  %bf.lshr72 = lshr i32 %bf.load71, 31
  %56 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t73 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %56, i32 0, i32 0
  %57 = load %union.tree_node*, %union.tree_node** %t73, align 8
  %type74 = bitcast %union.tree_node* %57 to %struct.tree_type*
  %user_align75 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type74, i32 0, i32 6
  %bf.load76 = load i32, i32* %user_align75, align 4
  %bf.lshr77 = lshr i32 %bf.load76, 31
  %or78 = or i32 %bf.lshr77, %bf.lshr72
  %bf.load79 = load i32, i32* %user_align75, align 4
  %bf.value80 = and i32 %or78, 1
  %bf.shl81 = shl i32 %bf.value80, 31
  %bf.clear82 = and i32 %bf.load79, 2147483647
  %bf.set83 = or i32 %bf.clear82, %bf.shl81
  store i32 %bf.set83, i32* %user_align75, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.64, %cond.end.33
  %58 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t85 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %58, i32 0, i32 0
  %59 = load %union.tree_node*, %union.tree_node** %t85, align 8
  %common86 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common86, i32 0, i32 2
  %bf.load87 = load i32, i32* %code, align 8
  %bf.clear88 = and i32 %bf.load87, 255
  %cmp89 = icmp eq i32 %bf.clear88, 21
  br i1 %cmp89, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.end.84
  %60 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %60, i32 0, i32 1
  %61 = load %union.tree_node*, %union.tree_node** %offset, align 8
  %62 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl91 = bitcast %union.tree_node* %62 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl91, i32 0, i32 7
  %63 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %call92 = call %union.tree_node* @size_binop(i32 79, %union.tree_node* %61, %union.tree_node* %63)
  %64 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset93 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %64, i32 0, i32 1
  store %union.tree_node* %call92, %union.tree_node** %offset93, align 8
  br label %if.end.109

if.else:                                          ; preds = %if.end.84
  %65 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t94 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %65, i32 0, i32 0
  %66 = load %union.tree_node*, %union.tree_node** %t94, align 8
  %common95 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code96 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common95, i32 0, i32 2
  %bf.load97 = load i32, i32* %code96, align 8
  %bf.clear98 = and i32 %bf.load97, 255
  %cmp99 = icmp eq i32 %bf.clear98, 22
  br i1 %cmp99, label %if.then.100, label %if.end.108

if.then.100:                                      ; preds = %if.else
  %67 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %68 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl101 = bitcast %union.tree_node* %68 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl101, i32 0, i32 12
  %69 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %70 = load %union.tree_node*, %union.tree_node** %field.addr, align 8
  %decl102 = bitcast %union.tree_node* %70 to %struct.tree_decl*
  %size_unit103 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl102, i32 0, i32 7
  %71 = load %union.tree_node*, %union.tree_node** %size_unit103, align 8
  %72 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset104 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %72, i32 0, i32 1
  %73 = load %union.tree_node*, %union.tree_node** %offset104, align 8
  %call105 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 51, %union.tree_node* %67, %union.tree_node* %69, %union.tree_node* %71, %union.tree_node* %73)
  %call106 = call %union.tree_node* @fold(%union.tree_node* %call105)
  %74 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset107 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %74, i32 0, i32 1
  store %union.tree_node* %call106, %union.tree_node** %offset107, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.100, %if.else
  br label %if.end.109

if.end.109:                                       ; preds = %if.end.108, %if.then.90
  ret void
}

declare i32 @integer_zerop(%union.tree_node*) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i32 @x86_field_alignment(%union.tree_node*, i32) #1

declare i32 @simple_cst_equal(%union.tree_node*, %union.tree_node*) #1

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: nounwind uwtable
define void @compute_record_mode(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %field = alloca %union.tree_node*, align 8
  %mode = alloca i32, align 4
  %bitpos = alloca i64, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store i32 0, i32* %mode, align 4
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %mode2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %mode2, align 4
  %bf.clear = and i32 %bf.load, -65025
  %bf.set = or i32 %bf.clear, 26112
  store i32 %bf.set, i32* %mode2, align 4
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type3 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %size, align 8
  %call = call i32 @host_integerp(%union.tree_node* %2, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.142

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type4 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type4, i32 0, i32 1
  %4 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %4, %union.tree_node** %field, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %union.tree_node*, %union.tree_node** %field, align 8
  %tobool5 = icmp ne %union.tree_node* %5, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load6 = load i32, i32* %code, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp = icmp ne i32 %bf.clear7, 37
  br i1 %cmp, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end.9:                                         ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common10 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %8 = load %union.tree_node*, %union.tree_node** %type11, align 8
  %common12 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 0
  br i1 %cmp16, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %9 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common17 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type18, align 8
  %type19 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %mode20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load21 = load i32, i32* %mode20, align 4
  %bf.lshr = lshr i32 %bf.load21, 9
  %bf.clear22 = and i32 %bf.lshr, 127
  %cmp23 = icmp eq i32 %bf.clear22, 51
  br i1 %cmp23, label %land.lhs.true, label %lor.lhs.false.31

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common24 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 1
  %12 = load %union.tree_node*, %union.tree_node** %type25, align 8
  %type26 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 6
  %bf.load27 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr28 = lshr i32 %bf.load27, 17
  %bf.clear29 = and i32 %bf.lshr28, 1
  %tobool30 = icmp ne i32 %bf.clear29, 0
  br i1 %tobool30, label %lor.lhs.false.31, label %if.then.43

lor.lhs.false.31:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %13 = load %union.tree_node*, %union.tree_node** %field, align 8
  %call32 = call %union.tree_node* @bit_position(%union.tree_node* %13)
  %call33 = call i32 @host_integerp(%union.tree_node* %call32, i32 1)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %lor.lhs.false.35, label %if.then.43

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.31
  %14 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %size36 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 4
  %15 = load %union.tree_node*, %union.tree_node** %size36, align 8
  %cmp37 = icmp eq %union.tree_node* %15, null
  br i1 %cmp37, label %if.then.43, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.35
  %16 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl39 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %size40 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 4
  %17 = load %union.tree_node*, %union.tree_node** %size40, align 8
  %call41 = call i32 @host_integerp(%union.tree_node* %17, i32 1)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.35, %lor.lhs.false.31, %land.lhs.true, %if.end.9
  br label %if.end.142

if.end.44:                                        ; preds = %lor.lhs.false.38
  %18 = load %union.tree_node*, %union.tree_node** %field, align 8
  %call45 = call i64 @int_bit_position(%union.tree_node* %18)
  store i64 %call45, i64* %bitpos, align 8
  %19 = load i64, i64* %bitpos, align 8
  %20 = load i32, i32* @target_flags, align 4
  %and = and i32 %20, 33554432
  %tobool46 = icmp ne i32 %and, 0
  %cond = select i1 %tobool46, i32 64, i32 32
  %conv = sext i32 %cond to i64
  %div = udiv i64 %19, %conv
  %21 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl47 = bitcast %union.tree_node* %21 to %struct.tree_decl*
  %size48 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 4
  %22 = load %union.tree_node*, %union.tree_node** %size48, align 8
  %call49 = call i64 @tree_low_cst(%union.tree_node* %22, i32 1)
  %23 = load i64, i64* %bitpos, align 8
  %add = add i64 %call49, %23
  %sub = sub i64 %add, 1
  %24 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %24, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 64, i32 32
  %conv53 = sext i32 %cond52 to i64
  %div54 = udiv i64 %sub, %conv53
  %cmp55 = icmp ne i64 %div, %div54
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.68

land.lhs.true.57:                                 ; preds = %if.end.44
  %25 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl58 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %size59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 4
  %26 = load %union.tree_node*, %union.tree_node** %size59, align 8
  %call60 = call i64 @tree_low_cst(%union.tree_node* %26, i32 1)
  %27 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %27, 33554432
  %tobool62 = icmp ne i32 %and61, 0
  %cond63 = select i1 %tobool62, i32 64, i32 32
  %conv64 = sext i32 %cond63 to i64
  %rem = srem i64 %call60, %conv64
  %cmp65 = icmp ne i64 %rem, 0
  br i1 %cmp65, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %land.lhs.true.57
  br label %if.end.142

if.end.68:                                        ; preds = %land.lhs.true.57, %if.end.44
  %28 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type69 = bitcast %union.tree_node* %28 to %struct.tree_type*
  %size70 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 2
  %29 = load %union.tree_node*, %union.tree_node** %size70, align 8
  %30 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl71 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %size72 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 4
  %31 = load %union.tree_node*, %union.tree_node** %size72, align 8
  %call73 = call i32 @simple_cst_equal(%union.tree_node* %29, %union.tree_node* %31)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.80

if.then.75:                                       ; preds = %if.end.68
  %32 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl76 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %mode77 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl76, i32 0, i32 5
  %33 = bitcast i48* %mode77 to i64*
  %bf.load78 = load i64, i64* %33, align 8
  %bf.clear79 = and i64 %bf.load78, 255
  %bf.cast = trunc i64 %bf.clear79 to i32
  store i32 %bf.cast, i32* %mode, align 4
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.75, %if.end.68
  br label %for.inc

for.inc:                                          ; preds = %if.end.80, %if.then.8
  %34 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common81 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common81, i32 0, i32 0
  %35 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %35, %union.tree_node** %field, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common82 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code83 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common82, i32 0, i32 2
  %bf.load84 = load i32, i32* %code83, align 8
  %bf.clear85 = and i32 %bf.load84, 255
  %cmp86 = icmp eq i32 %bf.clear85, 20
  br i1 %cmp86, label %land.lhs.true.88, label %if.else

land.lhs.true.88:                                 ; preds = %for.end
  %37 = load i32, i32* %mode, align 4
  %cmp89 = icmp ne i32 %37, 0
  br i1 %cmp89, label %if.then.91, label %if.else

if.then.91:                                       ; preds = %land.lhs.true.88
  %38 = load i32, i32* %mode, align 4
  %39 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type92 = bitcast %union.tree_node* %39 to %struct.tree_type*
  %mode93 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type92, i32 0, i32 6
  %bf.load94 = load i32, i32* %mode93, align 4
  %bf.value = and i32 %38, 127
  %bf.shl = shl i32 %bf.value, 9
  %bf.clear95 = and i32 %bf.load94, -65025
  %bf.set96 = or i32 %bf.clear95, %bf.shl
  store i32 %bf.set96, i32* %mode93, align 4
  br label %if.end.107

if.else:                                          ; preds = %land.lhs.true.88, %for.end
  %40 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type97 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %size98 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type97, i32 0, i32 2
  %41 = load %union.tree_node*, %union.tree_node** %size98, align 8
  %call99 = call i32 @mode_for_size_tree(%union.tree_node* %41, i32 1, i32 1)
  %42 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type100 = bitcast %union.tree_node* %42 to %struct.tree_type*
  %mode101 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type100, i32 0, i32 6
  %bf.load102 = load i32, i32* %mode101, align 4
  %bf.value103 = and i32 %call99, 127
  %bf.shl104 = shl i32 %bf.value103, 9
  %bf.clear105 = and i32 %bf.load102, -65025
  %bf.set106 = or i32 %bf.clear105, %bf.shl104
  store i32 %bf.set106, i32* %mode101, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.91
  %43 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type108 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %mode109 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type108, i32 0, i32 6
  %bf.load110 = load i32, i32* %mode109, align 4
  %bf.lshr111 = lshr i32 %bf.load110, 9
  %bf.clear112 = and i32 %bf.lshr111, 127
  %cmp113 = icmp ne i32 %bf.clear112, 51
  br i1 %cmp113, label %land.lhs.true.115, label %if.end.142

land.lhs.true.115:                                ; preds = %if.end.107
  br i1 false, label %land.lhs.true.116, label %if.end.142

land.lhs.true.116:                                ; preds = %land.lhs.true.115
  %44 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type117 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type117, i32 0, i32 7
  %45 = load i32, i32* %align, align 4
  %cmp118 = icmp uge i32 %45, 128
  br i1 %cmp118, label %if.end.142, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.116
  %46 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type121 = bitcast %union.tree_node* %46 to %struct.tree_type*
  %align122 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type121, i32 0, i32 7
  %47 = load i32, i32* %align122, align 4
  %48 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type123 = bitcast %union.tree_node* %48 to %struct.tree_type*
  %mode124 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type123, i32 0, i32 6
  %bf.load125 = load i32, i32* %mode124, align 4
  %bf.lshr126 = lshr i32 %bf.load125, 9
  %bf.clear127 = and i32 %bf.lshr126, 127
  %call128 = call i32 @get_mode_alignment(i32 %bf.clear127)
  %cmp129 = icmp uge i32 %47, %call128
  br i1 %cmp129, label %if.end.142, label %if.then.131

if.then.131:                                      ; preds = %lor.lhs.false.120
  %49 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type132 = bitcast %union.tree_node* %49 to %struct.tree_type*
  %no_force_blk_flag133 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type132, i32 0, i32 6
  %bf.load134 = load i32, i32* %no_force_blk_flag133, align 4
  %bf.clear135 = and i32 %bf.load134, -131073
  %bf.set136 = or i32 %bf.clear135, 131072
  store i32 %bf.set136, i32* %no_force_blk_flag133, align 4
  %50 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type137 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %mode138 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type137, i32 0, i32 6
  %bf.load139 = load i32, i32* %mode138, align 4
  %bf.clear140 = and i32 %bf.load139, -65025
  %bf.set141 = or i32 %bf.clear140, 26112
  store i32 %bf.set141, i32* %mode138, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then, %if.then.43, %if.then.67, %if.then.131, %lor.lhs.false.120, %land.lhs.true.116, %land.lhs.true.115, %if.end.107
  ret void
}

declare %union.tree_node* @bit_position(%union.tree_node*) #1

declare i64 @int_bit_position(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @finish_record_layout(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  call void @finalize_record_size(%struct.record_layout_info_s* %0)
  %1 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %1, i32 0, i32 0
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @compute_record_mode(%union.tree_node* %2)
  %3 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t1 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %3, i32 0, i32 0
  %4 = load %union.tree_node*, %union.tree_node** %t1, align 8
  call void @finalize_type_size(%union.tree_node* %4)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %5 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %5, i32 0, i32 8
  %6 = load %union.tree_node*, %union.tree_node** %pending_statics, align 8
  %tobool = icmp ne %union.tree_node* %6, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics2 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 8
  %8 = load %union.tree_node*, %union.tree_node** %pending_statics2, align 8
  %list = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value, align 8
  call void @layout_decl(%union.tree_node* %9, i32 0)
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics3 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 8
  %11 = load %union.tree_node*, %union.tree_node** %pending_statics3, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %13 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %pending_statics4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %13, i32 0, i32 8
  store %union.tree_node* %12, %union.tree_node** %pending_statics4, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %15 = bitcast %struct.record_layout_info_s* %14 to i8*
  call void @free(i8* %15) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalize_record_size(%struct.record_layout_info_s* %rli) #0 {
entry:
  %rli.addr = alloca %struct.record_layout_info_s*, align 8
  %unpadded_size = alloca %union.tree_node*, align 8
  %unpadded_size_unit = alloca %union.tree_node*, align 8
  %unpacked_size = alloca %union.tree_node*, align 8
  %name110 = alloca i8*, align 8
  store %struct.record_layout_info_s* %rli, %struct.record_layout_info_s** %rli.addr, align 8
  %0 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %offset_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %0, i32 0, i32 2
  store i32 8, i32* %offset_align, align 4
  %1 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  call void @normalize_rli(%struct.record_layout_info_s* %1)
  %2 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %2, i32 0, i32 0
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type = bitcast %union.tree_node* %3 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 7
  %4 = load i32, i32* %align, align 4
  %5 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %5, i32 0, i32 4
  %6 = load i32, i32* %record_align, align 4
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t1 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %7, i32 0, i32 0
  %8 = load %union.tree_node*, %union.tree_node** %t1, align 8
  %type2 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %align3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 7
  %9 = load i32, i32* %align3, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %10 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %record_align4 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %10, i32 0, i32 4
  %11 = load i32, i32* %record_align4, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ]
  %12 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t5 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %12, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %t5, align 8
  %type6 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %align7 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 7
  store i32 %cond, i32* %align7, align 4
  %14 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %call = call %union.tree_node* @rli_size_so_far(%struct.record_layout_info_s* %14)
  store %union.tree_node* %call, %union.tree_node** %unpadded_size, align 8
  %15 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %call8 = call %union.tree_node* @rli_size_unit_so_far(%struct.record_layout_info_s* %15)
  store %union.tree_node* %call8, %union.tree_node** %unpadded_size_unit, align 8
  %16 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %bitpos = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %16, i32 0, i32 3
  %17 = load %union.tree_node*, %union.tree_node** %bitpos, align 8
  %call9 = call i32 @integer_zerop(%union.tree_node* %17)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  %18 = load %union.tree_node*, %union.tree_node** %unpadded_size_unit, align 8
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 16), align 8
  %call10 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %18, %union.tree_node* %19)
  store %union.tree_node* %call10, %union.tree_node** %unpadded_size_unit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %20 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t11 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %20, i32 0, i32 0
  %21 = load %union.tree_node*, %union.tree_node** %t11, align 8
  %type12 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %binfo = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 16
  %22 = load %union.tree_node*, %union.tree_node** %binfo, align 8
  %tobool13 = icmp ne %union.tree_node* %22, null
  br i1 %tobool13, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end
  %23 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t14 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %23, i32 0, i32 0
  %24 = load %union.tree_node*, %union.tree_node** %t14, align 8
  %type15 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %binfo16 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 16
  %25 = load %union.tree_node*, %union.tree_node** %binfo16, align 8
  %vec = bitcast %union.tree_node* %25 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %26 = load i32, i32* %length, align 4
  %cmp17 = icmp sgt i32 %26, 6
  br i1 %cmp17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %land.lhs.true
  %27 = load %union.tree_node*, %union.tree_node** %unpadded_size, align 8
  %28 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t19 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %28, i32 0, i32 0
  %29 = load %union.tree_node*, %union.tree_node** %t19, align 8
  %type20 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %binfo21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 16
  %30 = load %union.tree_node*, %union.tree_node** %binfo21, align 8
  %vec22 = bitcast %union.tree_node* %30 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec22, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 6
  store %union.tree_node* %27, %union.tree_node** %arrayidx, align 8
  %31 = load %union.tree_node*, %union.tree_node** %unpadded_size_unit, align 8
  %32 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t23 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %32, i32 0, i32 0
  %33 = load %union.tree_node*, %union.tree_node** %t23, align 8
  %type24 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %binfo25 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type24, i32 0, i32 16
  %34 = load %union.tree_node*, %union.tree_node** %binfo25, align 8
  %vec26 = bitcast %union.tree_node* %34 to %struct.tree_vec*
  %a27 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec26, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a27, i32 0, i64 7
  store %union.tree_node* %31, %union.tree_node** %arrayidx28, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.18, %land.lhs.true, %if.end
  %35 = load %union.tree_node*, %union.tree_node** %unpadded_size, align 8
  %36 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t30 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %36, i32 0, i32 0
  %37 = load %union.tree_node*, %union.tree_node** %t30, align 8
  %type31 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %align32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 7
  %38 = load i32, i32* %align32, align 4
  %call33 = call %union.tree_node* @round_up(%union.tree_node* %35, i32 %38)
  %39 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t34 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %39, i32 0, i32 0
  %40 = load %union.tree_node*, %union.tree_node** %t34, align 8
  %type35 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i32 0, i32 2
  store %union.tree_node* %call33, %union.tree_node** %size, align 8
  %41 = load %union.tree_node*, %union.tree_node** %unpadded_size_unit, align 8
  %42 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t36 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %42, i32 0, i32 0
  %43 = load %union.tree_node*, %union.tree_node** %t36, align 8
  %type37 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %align38 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type37, i32 0, i32 7
  %44 = load i32, i32* %align38, align 4
  %div = udiv i32 %44, 8
  %call39 = call %union.tree_node* @round_up(%union.tree_node* %41, i32 %div)
  %45 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t40 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %45, i32 0, i32 0
  %46 = load %union.tree_node*, %union.tree_node** %t40, align 8
  %type41 = bitcast %union.tree_node* %46 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type41, i32 0, i32 3
  store %union.tree_node* %call39, %union.tree_node** %size_unit, align 8
  %47 = load i32, i32* @warn_padded, align 4
  %tobool42 = icmp ne i32 %47, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.52

land.lhs.true.43:                                 ; preds = %if.end.29
  %48 = load %union.tree_node*, %union.tree_node** %unpadded_size, align 8
  %common = bitcast %union.tree_node* %48 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 1
  %tobool44 = icmp ne i32 %bf.clear, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %land.lhs.true.43
  %49 = load %union.tree_node*, %union.tree_node** %unpadded_size, align 8
  %50 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t46 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %50, i32 0, i32 0
  %51 = load %union.tree_node*, %union.tree_node** %t46, align 8
  %type47 = bitcast %union.tree_node* %51 to %struct.tree_type*
  %size48 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type47, i32 0, i32 2
  %52 = load %union.tree_node*, %union.tree_node** %size48, align 8
  %call49 = call i32 @simple_cst_equal(%union.tree_node* %49, %union.tree_node* %52)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.45
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i32 0, i32 0))
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.45, %land.lhs.true.43, %if.end.29
  %53 = load i32, i32* @warn_packed, align 4
  %tobool53 = icmp ne i32 %53, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.134

land.lhs.true.54:                                 ; preds = %if.end.52
  %54 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t55 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %54, i32 0, i32 0
  %55 = load %union.tree_node*, %union.tree_node** %t55, align 8
  %common56 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 2
  %bf.load57 = load i32, i32* %code, align 8
  %bf.clear58 = and i32 %bf.load57, 255
  %cmp59 = icmp eq i32 %bf.clear58, 20
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.134

land.lhs.true.60:                                 ; preds = %land.lhs.true.54
  %56 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t61 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %56, i32 0, i32 0
  %57 = load %union.tree_node*, %union.tree_node** %t61, align 8
  %type62 = bitcast %union.tree_node* %57 to %struct.tree_type*
  %packed_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type62, i32 0, i32 6
  %bf.load63 = load i32, i32* %packed_flag, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 20
  %bf.clear65 = and i32 %bf.lshr64, 1
  %tobool66 = icmp ne i32 %bf.clear65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.134

land.lhs.true.67:                                 ; preds = %land.lhs.true.60
  %58 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %packed_maybe_necessary = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %58, i32 0, i32 9
  %59 = load i32, i32* %packed_maybe_necessary, align 4
  %tobool68 = icmp ne i32 %59, 0
  br i1 %tobool68, label %if.end.134, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %land.lhs.true.67
  %60 = load %union.tree_node*, %union.tree_node** %unpadded_size, align 8
  %common70 = bitcast %union.tree_node* %60 to %struct.tree_common*
  %constant_flag71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 2
  %bf.load72 = load i32, i32* %constant_flag71, align 8
  %bf.lshr73 = lshr i32 %bf.load72, 9
  %bf.clear74 = and i32 %bf.lshr73, 1
  %tobool75 = icmp ne i32 %bf.clear74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.134

if.then.76:                                       ; preds = %land.lhs.true.69
  %61 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t77 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %61, i32 0, i32 0
  %62 = load %union.tree_node*, %union.tree_node** %t77, align 8
  %type78 = bitcast %union.tree_node* %62 to %struct.tree_type*
  %align79 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type78, i32 0, i32 7
  %63 = load i32, i32* %align79, align 4
  %64 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %64, i32 0, i32 5
  %65 = load i32, i32* %unpacked_align, align 4
  %cmp80 = icmp ugt i32 %63, %65
  br i1 %cmp80, label %cond.true.81, label %cond.false.85

cond.true.81:                                     ; preds = %if.then.76
  %66 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t82 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %66, i32 0, i32 0
  %67 = load %union.tree_node*, %union.tree_node** %t82, align 8
  %type83 = bitcast %union.tree_node* %67 to %struct.tree_type*
  %align84 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type83, i32 0, i32 7
  %68 = load i32, i32* %align84, align 4
  br label %cond.end.87

cond.false.85:                                    ; preds = %if.then.76
  %69 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align86 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %69, i32 0, i32 5
  %70 = load i32, i32* %unpacked_align86, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.85, %cond.true.81
  %cond88 = phi i32 [ %68, %cond.true.81 ], [ %70, %cond.false.85 ]
  %71 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align89 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %71, i32 0, i32 5
  store i32 %cond88, i32* %unpacked_align89, align 4
  %72 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t90 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %72, i32 0, i32 0
  %73 = load %union.tree_node*, %union.tree_node** %t90, align 8
  %type91 = bitcast %union.tree_node* %73 to %struct.tree_type*
  %size92 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type91, i32 0, i32 2
  %74 = load %union.tree_node*, %union.tree_node** %size92, align 8
  %75 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %unpacked_align93 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %75, i32 0, i32 5
  %76 = load i32, i32* %unpacked_align93, align 4
  %call94 = call %union.tree_node* @round_up(%union.tree_node* %74, i32 %76)
  store %union.tree_node* %call94, %union.tree_node** %unpacked_size, align 8
  %77 = load %union.tree_node*, %union.tree_node** %unpacked_size, align 8
  %78 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t95 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %78, i32 0, i32 0
  %79 = load %union.tree_node*, %union.tree_node** %t95, align 8
  %type96 = bitcast %union.tree_node* %79 to %struct.tree_type*
  %size97 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type96, i32 0, i32 2
  %80 = load %union.tree_node*, %union.tree_node** %size97, align 8
  %call98 = call i32 @simple_cst_equal(%union.tree_node* %77, %union.tree_node* %80)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.133

if.then.100:                                      ; preds = %cond.end.87
  %81 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t101 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %81, i32 0, i32 0
  %82 = load %union.tree_node*, %union.tree_node** %t101, align 8
  %type102 = bitcast %union.tree_node* %82 to %struct.tree_type*
  %packed_flag103 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type102, i32 0, i32 6
  %bf.load104 = load i32, i32* %packed_flag103, align 4
  %bf.clear105 = and i32 %bf.load104, -1048577
  store i32 %bf.clear105, i32* %packed_flag103, align 4
  %83 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t106 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %83, i32 0, i32 0
  %84 = load %union.tree_node*, %union.tree_node** %t106, align 8
  %type107 = bitcast %union.tree_node* %84 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type107, i32 0, i32 11
  %85 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool108 = icmp ne %union.tree_node* %85, null
  br i1 %tobool108, label %if.then.109, label %if.else.131

if.then.109:                                      ; preds = %if.then.100
  %86 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t111 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %86, i32 0, i32 0
  %87 = load %union.tree_node*, %union.tree_node** %t111, align 8
  %type112 = bitcast %union.tree_node* %87 to %struct.tree_type*
  %name113 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type112, i32 0, i32 11
  %88 = load %union.tree_node*, %union.tree_node** %name113, align 8
  %common114 = bitcast %union.tree_node* %88 to %struct.tree_common*
  %code115 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common114, i32 0, i32 2
  %bf.load116 = load i32, i32* %code115, align 8
  %bf.clear117 = and i32 %bf.load116, 255
  %cmp118 = icmp eq i32 %bf.clear117, 1
  br i1 %cmp118, label %if.then.119, label %if.else

if.then.119:                                      ; preds = %if.then.109
  %89 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t120 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %89, i32 0, i32 0
  %90 = load %union.tree_node*, %union.tree_node** %t120, align 8
  %type121 = bitcast %union.tree_node* %90 to %struct.tree_type*
  %name122 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type121, i32 0, i32 11
  %91 = load %union.tree_node*, %union.tree_node** %name122, align 8
  %identifier = bitcast %union.tree_node* %91 to %struct.tree_identifier*
  %id = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier, i32 0, i32 1
  %str = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id, i32 0, i32 1
  %92 = load i8*, i8** %str, align 8
  store i8* %92, i8** %name110, align 8
  br label %if.end.130

if.else:                                          ; preds = %if.then.109
  %93 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli.addr, align 8
  %t123 = getelementptr inbounds %struct.record_layout_info_s, %struct.record_layout_info_s* %93, i32 0, i32 0
  %94 = load %union.tree_node*, %union.tree_node** %t123, align 8
  %type124 = bitcast %union.tree_node* %94 to %struct.tree_type*
  %name125 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type124, i32 0, i32 11
  %95 = load %union.tree_node*, %union.tree_node** %name125, align 8
  %decl = bitcast %union.tree_node* %95 to %struct.tree_decl*
  %name126 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %96 = load %union.tree_node*, %union.tree_node** %name126, align 8
  %identifier127 = bitcast %union.tree_node* %96 to %struct.tree_identifier*
  %id128 = getelementptr inbounds %struct.tree_identifier, %struct.tree_identifier* %identifier127, i32 0, i32 1
  %str129 = getelementptr inbounds %struct.ht_identifier, %struct.ht_identifier* %id128, i32 0, i32 1
  %97 = load i8*, i8** %str129, align 8
  store i8* %97, i8** %name110, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.else, %if.then.119
  %98 = load i8*, i8** %name110, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i8* %98)
  br label %if.end.132

if.else.131:                                      ; preds = %if.then.100
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0))
  br label %if.end.132

if.end.132:                                       ; preds = %if.else.131, %if.end.130
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %cond.end.87
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %land.lhs.true.69, %land.lhs.true.67, %land.lhs.true.60, %land.lhs.true.54, %if.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finalize_type_size(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %variant = alloca %union.tree_node*, align 8
  %size111 = alloca %union.tree_node*, align 8
  %size_unit114 = alloca %union.tree_node*, align 8
  %align117 = alloca i32, align 4
  %user_align120 = alloca i32, align 4
  %mode125 = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 127
  %cmp = icmp ne i32 %bf.clear, 51
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type2 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %mode3 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 6
  %bf.load4 = load i32, i32* %mode3, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 9
  %bf.clear6 = and i32 %bf.lshr5, 127
  %cmp7 = icmp ne i32 %bf.clear6, 0
  br i1 %cmp7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load9 = load i32, i32* %code, align 8
  %bf.clear10 = and i32 %bf.load9, 255
  %cmp11 = icmp ne i32 %bf.clear10, 20
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.8
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common13 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load15 = load i32, i32* %code14, align 8
  %bf.clear16 = and i32 %bf.load15, 255
  %cmp17 = icmp ne i32 %bf.clear16, 21
  br i1 %cmp17, label %land.lhs.true.18, label %if.end

land.lhs.true.18:                                 ; preds = %land.lhs.true.12
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common19 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 2
  %bf.load21 = load i32, i32* %code20, align 8
  %bf.clear22 = and i32 %bf.load21, 255
  %cmp23 = icmp ne i32 %bf.clear22, 22
  br i1 %cmp23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common25 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 2
  %bf.load27 = load i32, i32* %code26, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %cmp29 = icmp ne i32 %bf.clear28, 18
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.24
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type30 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %mode31 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type30, i32 0, i32 6
  %bf.load32 = load i32, i32* %mode31, align 4
  %bf.lshr33 = lshr i32 %bf.load32, 9
  %bf.clear34 = and i32 %bf.lshr33, 127
  %call = call i32 @get_mode_alignment(i32 %bf.clear34)
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type35 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type35, i32 0, i32 7
  store i32 %call, i32* %align, align 4
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type36 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i32 0, i32 6
  %bf.load37 = load i32, i32* %user_align, align 4
  %bf.clear38 = and i32 %bf.load37, 2147483647
  store i32 %bf.clear38, i32* %user_align, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.24, %land.lhs.true.18, %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true, %entry
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type39 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type39, i32 0, i32 3
  %10 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %cmp40 = icmp eq %union.tree_node* %10, null
  br i1 %cmp40, label %land.lhs.true.41, label %if.end.51

land.lhs.true.41:                                 ; preds = %if.end
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type42 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type42, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %size, align 8
  %cmp43 = icmp ne %union.tree_node* %12, null
  br i1 %cmp43, label %if.then.44, label %if.end.51

if.then.44:                                       ; preds = %land.lhs.true.41
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type45 = bitcast %union.tree_node* %14 to %struct.tree_type*
  %size46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %size46, align 8
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 19), align 8
  %call47 = call %union.tree_node* @size_binop(i32 64, %union.tree_node* %15, %union.tree_node* %16)
  %call48 = call %union.tree_node* @convert(%union.tree_node* %13, %union.tree_node* %call47)
  %17 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type49 = bitcast %union.tree_node* %17 to %struct.tree_type*
  %size_unit50 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type49, i32 0, i32 3
  store %union.tree_node* %call48, %union.tree_node** %size_unit50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.44, %land.lhs.true.41, %if.end
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type52 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %size53 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type52, i32 0, i32 2
  %19 = load %union.tree_node*, %union.tree_node** %size53, align 8
  %cmp54 = icmp ne %union.tree_node* %19, null
  br i1 %cmp54, label %if.then.55, label %if.end.70

if.then.55:                                       ; preds = %if.end.51
  %20 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type56 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %size57 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type56, i32 0, i32 2
  %21 = load %union.tree_node*, %union.tree_node** %size57, align 8
  %22 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type58 = bitcast %union.tree_node* %22 to %struct.tree_type*
  %align59 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type58, i32 0, i32 7
  %23 = load i32, i32* %align59, align 4
  %call60 = call %union.tree_node* @round_up(%union.tree_node* %21, i32 %23)
  %24 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type61 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %size62 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type61, i32 0, i32 2
  store %union.tree_node* %call60, %union.tree_node** %size62, align 8
  %25 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type63 = bitcast %union.tree_node* %25 to %struct.tree_type*
  %size_unit64 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type63, i32 0, i32 3
  %26 = load %union.tree_node*, %union.tree_node** %size_unit64, align 8
  %27 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type65 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %align66 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type65, i32 0, i32 7
  %28 = load i32, i32* %align66, align 4
  %div = udiv i32 %28, 8
  %call67 = call %union.tree_node* @round_up(%union.tree_node* %26, i32 %div)
  %29 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type68 = bitcast %union.tree_node* %29 to %struct.tree_type*
  %size_unit69 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type68, i32 0, i32 3
  store %union.tree_node* %call67, %union.tree_node** %size_unit69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.55, %if.end.51
  %30 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type71 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %size72 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type71, i32 0, i32 2
  %31 = load %union.tree_node*, %union.tree_node** %size72, align 8
  %cmp73 = icmp ne %union.tree_node* %31, null
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.88

land.lhs.true.74:                                 ; preds = %if.end.70
  %32 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type75 = bitcast %union.tree_node* %32 to %struct.tree_type*
  %size76 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type75, i32 0, i32 2
  %33 = load %union.tree_node*, %union.tree_node** %size76, align 8
  %common77 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %code78 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common77, i32 0, i32 2
  %bf.load79 = load i32, i32* %code78, align 8
  %bf.clear80 = and i32 %bf.load79, 255
  %cmp81 = icmp ne i32 %bf.clear80, 25
  br i1 %cmp81, label %if.then.82, label %if.end.88

if.then.82:                                       ; preds = %land.lhs.true.74
  %34 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type83 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %size84 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type83, i32 0, i32 2
  %35 = load %union.tree_node*, %union.tree_node** %size84, align 8
  %call85 = call %union.tree_node* @variable_size(%union.tree_node* %35)
  %36 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type86 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %size87 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type86, i32 0, i32 2
  store %union.tree_node* %call85, %union.tree_node** %size87, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.82, %land.lhs.true.74, %if.end.70
  %37 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type89 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %size_unit90 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type89, i32 0, i32 3
  %38 = load %union.tree_node*, %union.tree_node** %size_unit90, align 8
  %cmp91 = icmp ne %union.tree_node* %38, null
  br i1 %cmp91, label %land.lhs.true.92, label %if.end.106

land.lhs.true.92:                                 ; preds = %if.end.88
  %39 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type93 = bitcast %union.tree_node* %39 to %struct.tree_type*
  %size_unit94 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type93, i32 0, i32 3
  %40 = load %union.tree_node*, %union.tree_node** %size_unit94, align 8
  %common95 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code96 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common95, i32 0, i32 2
  %bf.load97 = load i32, i32* %code96, align 8
  %bf.clear98 = and i32 %bf.load97, 255
  %cmp99 = icmp ne i32 %bf.clear98, 25
  br i1 %cmp99, label %if.then.100, label %if.end.106

if.then.100:                                      ; preds = %land.lhs.true.92
  %41 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type101 = bitcast %union.tree_node* %41 to %struct.tree_type*
  %size_unit102 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type101, i32 0, i32 3
  %42 = load %union.tree_node*, %union.tree_node** %size_unit102, align 8
  %call103 = call %union.tree_node* @variable_size(%union.tree_node* %42)
  %43 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type104 = bitcast %union.tree_node* %43 to %struct.tree_type*
  %size_unit105 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type104, i32 0, i32 3
  store %union.tree_node* %call103, %union.tree_node** %size_unit105, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.100, %land.lhs.true.92, %if.end.88
  %44 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type107 = bitcast %union.tree_node* %44 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type107, i32 0, i32 14
  %45 = load %union.tree_node*, %union.tree_node** %next_variant, align 8
  %tobool = icmp ne %union.tree_node* %45, null
  br i1 %tobool, label %if.then.110, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.106
  %46 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %47 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type108 = bitcast %union.tree_node* %47 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type108, i32 0, i32 15
  %48 = load %union.tree_node*, %union.tree_node** %main_variant, align 8
  %cmp109 = icmp ne %union.tree_node* %46, %48
  br i1 %cmp109, label %if.then.110, label %if.end.153

if.then.110:                                      ; preds = %lor.lhs.false, %if.end.106
  %49 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type112 = bitcast %union.tree_node* %49 to %struct.tree_type*
  %size113 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type112, i32 0, i32 2
  %50 = load %union.tree_node*, %union.tree_node** %size113, align 8
  store %union.tree_node* %50, %union.tree_node** %size111, align 8
  %51 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type115 = bitcast %union.tree_node* %51 to %struct.tree_type*
  %size_unit116 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type115, i32 0, i32 3
  %52 = load %union.tree_node*, %union.tree_node** %size_unit116, align 8
  store %union.tree_node* %52, %union.tree_node** %size_unit114, align 8
  %53 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type118 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %align119 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type118, i32 0, i32 7
  %54 = load i32, i32* %align119, align 4
  store i32 %54, i32* %align117, align 4
  %55 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type121 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %user_align122 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type121, i32 0, i32 6
  %bf.load123 = load i32, i32* %user_align122, align 4
  %bf.lshr124 = lshr i32 %bf.load123, 31
  store i32 %bf.lshr124, i32* %user_align120, align 4
  %56 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type126 = bitcast %union.tree_node* %56 to %struct.tree_type*
  %mode127 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type126, i32 0, i32 6
  %bf.load128 = load i32, i32* %mode127, align 4
  %bf.lshr129 = lshr i32 %bf.load128, 9
  %bf.clear130 = and i32 %bf.lshr129, 127
  store i32 %bf.clear130, i32* %mode125, align 4
  %57 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type131 = bitcast %union.tree_node* %57 to %struct.tree_type*
  %main_variant132 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type131, i32 0, i32 15
  %58 = load %union.tree_node*, %union.tree_node** %main_variant132, align 8
  store %union.tree_node* %58, %union.tree_node** %variant, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.110
  %59 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %cmp133 = icmp ne %union.tree_node* %59, null
  br i1 %cmp133, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %60 = load %union.tree_node*, %union.tree_node** %size111, align 8
  %61 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type134 = bitcast %union.tree_node* %61 to %struct.tree_type*
  %size135 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type134, i32 0, i32 2
  store %union.tree_node* %60, %union.tree_node** %size135, align 8
  %62 = load %union.tree_node*, %union.tree_node** %size_unit114, align 8
  %63 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type136 = bitcast %union.tree_node* %63 to %struct.tree_type*
  %size_unit137 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type136, i32 0, i32 3
  store %union.tree_node* %62, %union.tree_node** %size_unit137, align 8
  %64 = load i32, i32* %align117, align 4
  %65 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type138 = bitcast %union.tree_node* %65 to %struct.tree_type*
  %align139 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type138, i32 0, i32 7
  store i32 %64, i32* %align139, align 4
  %66 = load i32, i32* %user_align120, align 4
  %67 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type140 = bitcast %union.tree_node* %67 to %struct.tree_type*
  %user_align141 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type140, i32 0, i32 6
  %bf.load142 = load i32, i32* %user_align141, align 4
  %bf.value = and i32 %66, 1
  %bf.shl = shl i32 %bf.value, 31
  %bf.clear143 = and i32 %bf.load142, 2147483647
  %bf.set = or i32 %bf.clear143, %bf.shl
  store i32 %bf.set, i32* %user_align141, align 4
  %68 = load i32, i32* %mode125, align 4
  %69 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type144 = bitcast %union.tree_node* %69 to %struct.tree_type*
  %mode145 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type144, i32 0, i32 6
  %bf.load146 = load i32, i32* %mode145, align 4
  %bf.value147 = and i32 %68, 127
  %bf.shl148 = shl i32 %bf.value147, 9
  %bf.clear149 = and i32 %bf.load146, -65025
  %bf.set150 = or i32 %bf.clear149, %bf.shl148
  store i32 %bf.set150, i32* %mode145, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load %union.tree_node*, %union.tree_node** %variant, align 8
  %type151 = bitcast %union.tree_node* %70 to %struct.tree_type*
  %next_variant152 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type151, i32 0, i32 14
  %71 = load %union.tree_node*, %union.tree_node** %next_variant152, align 8
  store %union.tree_node* %71, %union.tree_node** %variant, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.153

if.end.153:                                       ; preds = %for.end, %lor.lhs.false
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @layout_type(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %subtype = alloca %union.tree_node*, align 8
  %nbits = alloca i32, align 4
  %index = alloca %union.tree_node*, align 8
  %element = alloca %union.tree_node*, align 8
  %ub = alloca %union.tree_node*, align 8
  %lb = alloca %union.tree_node*, align 8
  %length = alloca %union.tree_node*, align 8
  %element_size = alloca %union.tree_node*, align 8
  %maxvalue = alloca i64, align 8
  %minvalue = alloca i64, align 8
  %field = alloca %union.tree_node*, align 8
  %rli = alloca %struct.record_layout_info_s*, align 8
  %alignment = alloca i32, align 4
  %size_in_bits = alloca i32, align 4
  %rounded_size = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %cmp = icmp eq %union.tree_node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1422, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 2
  %2 = load %union.tree_node*, %union.tree_node** %size, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.758

if.end.3:                                         ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default [
    i32 24, label %sw.bb
    i32 11, label %sw.bb.4
    i32 6, label %sw.bb.15
    i32 10, label %sw.bb.15
    i32 12, label %sw.bb.15
    i32 7, label %sw.bb.57
    i32 8, label %sw.bb.92
    i32 9, label %sw.bb.151
    i32 5, label %sw.bb.188
    i32 14, label %sw.bb.197
    i32 23, label %sw.bb.222
    i32 16, label %sw.bb.222
    i32 13, label %sw.bb.252
    i32 15, label %sw.bb.252
    i32 18, label %sw.bb.310
    i32 20, label %sw.bb.554
    i32 21, label %sw.bb.554
    i32 22, label %sw.bb.554
    i32 19, label %sw.bb.589
    i32 17, label %sw.bb.679
  ]

sw.bb:                                            ; preds = %if.end.3
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1433, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

sw.bb.4:                                          ; preds = %if.end.3
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type5 = bitcast %union.tree_node* %4 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type5, i32 0, i32 6
  %bf.load6 = load i32, i32* %precision, align 4
  %bf.clear7 = and i32 %bf.load6, 511
  %cmp8 = icmp eq i32 %bf.clear7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %sw.bb.4
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type10 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %precision11 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 6
  %bf.load12 = load i32, i32* %precision11, align 4
  %bf.clear13 = and i32 %bf.load12, -512
  %bf.set = or i32 %bf.clear13, 1
  store i32 %bf.set, i32* %precision11, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.9, %sw.bb.4
  br label %sw.bb.15

sw.bb.15:                                         ; preds = %if.end.3, %if.end.3, %if.end.3, %if.end.14
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type16 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 12
  %7 = load %union.tree_node*, %union.tree_node** %minval, align 8
  %common17 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code18 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load19 = load i32, i32* %code18, align 8
  %bf.clear20 = and i32 %bf.load19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 25
  br i1 %cmp21, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %sw.bb.15
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type22 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %minval23 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type22, i32 0, i32 12
  %9 = load %union.tree_node*, %union.tree_node** %minval23, align 8
  %call = call i32 @tree_int_cst_sgn(%union.tree_node* %9)
  %cmp24 = icmp sge i32 %call, 0
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %land.lhs.true
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common26 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %unsigned_flag, align 8
  %bf.clear28 = and i32 %bf.load27, -8193
  %bf.set29 = or i32 %bf.clear28, 8192
  store i32 %bf.set29, i32* %unsigned_flag, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.25, %land.lhs.true, %sw.bb.15
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type31 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %precision32 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type31, i32 0, i32 6
  %bf.load33 = load i32, i32* %precision32, align 4
  %bf.clear34 = and i32 %bf.load33, 511
  %call35 = call i32 @smallest_mode_for_size(i32 %bf.clear34, i32 1)
  %12 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type36 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i32 0, i32 6
  %bf.load37 = load i32, i32* %mode, align 4
  %bf.value = and i32 %call35, 127
  %bf.shl = shl i32 %bf.value, 9
  %bf.clear38 = and i32 %bf.load37, -65025
  %bf.set39 = or i32 %bf.clear38, %bf.shl
  store i32 %bf.set39, i32* %mode, align 4
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type40 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %mode41 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 6
  %bf.load42 = load i32, i32* %mode41, align 4
  %bf.lshr = lshr i32 %bf.load42, 9
  %bf.clear43 = and i32 %bf.lshr, 127
  %idxprom = sext i32 %bf.clear43 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %14 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %14 to i64
  %call44 = call %union.tree_node* @size_int_wide(i64 %conv, i32 3)
  %15 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type45 = bitcast %union.tree_node* %15 to %struct.tree_type*
  %size46 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type45, i32 0, i32 2
  store %union.tree_node* %call44, %union.tree_node** %size46, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type47 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %mode48 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type47, i32 0, i32 6
  %bf.load49 = load i32, i32* %mode48, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 9
  %bf.clear51 = and i32 %bf.lshr50, 127
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom52
  %17 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %17 to i64
  %call55 = call %union.tree_node* @size_int_wide(i64 %conv54, i32 0)
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type56 = bitcast %union.tree_node* %18 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type56, i32 0, i32 3
  store %union.tree_node* %call55, %union.tree_node** %size_unit, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.3
  %19 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type58 = bitcast %union.tree_node* %19 to %struct.tree_type*
  %precision59 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type58, i32 0, i32 6
  %bf.load60 = load i32, i32* %precision59, align 4
  %bf.clear61 = and i32 %bf.load60, 511
  %call62 = call i32 @mode_for_size(i32 %bf.clear61, i32 2, i32 0)
  %20 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type63 = bitcast %union.tree_node* %20 to %struct.tree_type*
  %mode64 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type63, i32 0, i32 6
  %bf.load65 = load i32, i32* %mode64, align 4
  %bf.value66 = and i32 %call62, 127
  %bf.shl67 = shl i32 %bf.value66, 9
  %bf.clear68 = and i32 %bf.load65, -65025
  %bf.set69 = or i32 %bf.clear68, %bf.shl67
  store i32 %bf.set69, i32* %mode64, align 4
  %21 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type70 = bitcast %union.tree_node* %21 to %struct.tree_type*
  %mode71 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type70, i32 0, i32 6
  %bf.load72 = load i32, i32* %mode71, align 4
  %bf.lshr73 = lshr i32 %bf.load72, 9
  %bf.clear74 = and i32 %bf.lshr73, 127
  %idxprom75 = sext i32 %bf.clear74 to i64
  %arrayidx76 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom75
  %22 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %22 to i64
  %call78 = call %union.tree_node* @size_int_wide(i64 %conv77, i32 3)
  %23 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type79 = bitcast %union.tree_node* %23 to %struct.tree_type*
  %size80 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type79, i32 0, i32 2
  store %union.tree_node* %call78, %union.tree_node** %size80, align 8
  %24 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type81 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %mode82 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type81, i32 0, i32 6
  %bf.load83 = load i32, i32* %mode82, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 9
  %bf.clear85 = and i32 %bf.lshr84, 127
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom86
  %25 = load i8, i8* %arrayidx87, align 1
  %conv88 = zext i8 %25 to i64
  %call89 = call %union.tree_node* @size_int_wide(i64 %conv88, i32 0)
  %26 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type90 = bitcast %union.tree_node* %26 to %struct.tree_type*
  %size_unit91 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type90, i32 0, i32 3
  store %union.tree_node* %call89, %union.tree_node** %size_unit91, align 8
  br label %sw.epilog

sw.bb.92:                                         ; preds = %if.end.3
  %27 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common93 = bitcast %union.tree_node* %27 to %struct.tree_common*
  %type94 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common93, i32 0, i32 1
  %28 = load %union.tree_node*, %union.tree_node** %type94, align 8
  %common95 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %unsigned_flag96 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common95, i32 0, i32 2
  %bf.load97 = load i32, i32* %unsigned_flag96, align 8
  %bf.lshr98 = lshr i32 %bf.load97, 13
  %bf.clear99 = and i32 %bf.lshr98, 1
  %29 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common100 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %unsigned_flag101 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common100, i32 0, i32 2
  %bf.load102 = load i32, i32* %unsigned_flag101, align 8
  %bf.value103 = and i32 %bf.clear99, 1
  %bf.shl104 = shl i32 %bf.value103, 13
  %bf.clear105 = and i32 %bf.load102, -8193
  %bf.set106 = or i32 %bf.clear105, %bf.shl104
  store i32 %bf.set106, i32* %unsigned_flag101, align 8
  %30 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common107 = bitcast %union.tree_node* %30 to %struct.tree_common*
  %type108 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common107, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %type108, align 8
  %type109 = bitcast %union.tree_node* %31 to %struct.tree_type*
  %precision110 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type109, i32 0, i32 6
  %bf.load111 = load i32, i32* %precision110, align 4
  %bf.clear112 = and i32 %bf.load111, 511
  %mul = mul nsw i32 2, %bf.clear112
  %32 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common113 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %type114 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common113, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %type114, align 8
  %common115 = bitcast %union.tree_node* %33 to %struct.tree_common*
  %code116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %code116, align 8
  %bf.clear118 = and i32 %bf.load117, 255
  %cmp119 = icmp eq i32 %bf.clear118, 6
  %cond = select i1 %cmp119, i32 5, i32 6
  %call121 = call i32 @mode_for_size(i32 %mul, i32 %cond, i32 0)
  %34 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type122 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %mode123 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type122, i32 0, i32 6
  %bf.load124 = load i32, i32* %mode123, align 4
  %bf.value125 = and i32 %call121, 127
  %bf.shl126 = shl i32 %bf.value125, 9
  %bf.clear127 = and i32 %bf.load124, -65025
  %bf.set128 = or i32 %bf.clear127, %bf.shl126
  store i32 %bf.set128, i32* %mode123, align 4
  %35 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type129 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %mode130 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type129, i32 0, i32 6
  %bf.load131 = load i32, i32* %mode130, align 4
  %bf.lshr132 = lshr i32 %bf.load131, 9
  %bf.clear133 = and i32 %bf.lshr132, 127
  %idxprom134 = sext i32 %bf.clear133 to i64
  %arrayidx135 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom134
  %36 = load i16, i16* %arrayidx135, align 2
  %conv136 = zext i16 %36 to i64
  %call137 = call %union.tree_node* @size_int_wide(i64 %conv136, i32 3)
  %37 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type138 = bitcast %union.tree_node* %37 to %struct.tree_type*
  %size139 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type138, i32 0, i32 2
  store %union.tree_node* %call137, %union.tree_node** %size139, align 8
  %38 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type140 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %mode141 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type140, i32 0, i32 6
  %bf.load142 = load i32, i32* %mode141, align 4
  %bf.lshr143 = lshr i32 %bf.load142, 9
  %bf.clear144 = and i32 %bf.lshr143, 127
  %idxprom145 = sext i32 %bf.clear144 to i64
  %arrayidx146 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom145
  %39 = load i8, i8* %arrayidx146, align 1
  %conv147 = zext i8 %39 to i64
  %call148 = call %union.tree_node* @size_int_wide(i64 %conv147, i32 0)
  %40 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type149 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %size_unit150 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type149, i32 0, i32 3
  store %union.tree_node* %call148, %union.tree_node** %size_unit150, align 8
  br label %sw.epilog

sw.bb.151:                                        ; preds = %if.end.3
  %41 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common152 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type153 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common152, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type153, align 8
  store %union.tree_node* %42, %union.tree_node** %subtype, align 8
  %43 = load %union.tree_node*, %union.tree_node** %subtype, align 8
  %common154 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %unsigned_flag155 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common154, i32 0, i32 2
  %bf.load156 = load i32, i32* %unsigned_flag155, align 8
  %bf.lshr157 = lshr i32 %bf.load156, 13
  %bf.clear158 = and i32 %bf.lshr157, 1
  %44 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common159 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %unsigned_flag160 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common159, i32 0, i32 2
  %bf.load161 = load i32, i32* %unsigned_flag160, align 8
  %bf.value162 = and i32 %bf.clear158, 1
  %bf.shl163 = shl i32 %bf.value162, 13
  %bf.clear164 = and i32 %bf.load161, -8193
  %bf.set165 = or i32 %bf.clear164, %bf.shl163
  store i32 %bf.set165, i32* %unsigned_flag160, align 8
  %45 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type166 = bitcast %union.tree_node* %45 to %struct.tree_type*
  %mode167 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type166, i32 0, i32 6
  %bf.load168 = load i32, i32* %mode167, align 4
  %bf.lshr169 = lshr i32 %bf.load168, 9
  %bf.clear170 = and i32 %bf.lshr169, 127
  %idxprom171 = sext i32 %bf.clear170 to i64
  %arrayidx172 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom171
  %46 = load i16, i16* %arrayidx172, align 2
  %conv173 = zext i16 %46 to i64
  %call174 = call %union.tree_node* @size_int_wide(i64 %conv173, i32 3)
  %47 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type175 = bitcast %union.tree_node* %47 to %struct.tree_type*
  %size176 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type175, i32 0, i32 2
  store %union.tree_node* %call174, %union.tree_node** %size176, align 8
  %48 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type177 = bitcast %union.tree_node* %48 to %struct.tree_type*
  %mode178 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type177, i32 0, i32 6
  %bf.load179 = load i32, i32* %mode178, align 4
  %bf.lshr180 = lshr i32 %bf.load179, 9
  %bf.clear181 = and i32 %bf.lshr180, 127
  %idxprom182 = sext i32 %bf.clear181 to i64
  %arrayidx183 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom182
  %49 = load i8, i8* %arrayidx183, align 1
  %conv184 = zext i8 %49 to i64
  %call185 = call %union.tree_node* @size_int_wide(i64 %conv184, i32 0)
  %50 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type186 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %size_unit187 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type186, i32 0, i32 3
  store %union.tree_node* %call185, %union.tree_node** %size_unit187, align 8
  br label %sw.epilog

sw.bb.188:                                        ; preds = %if.end.3
  %51 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type189 = bitcast %union.tree_node* %51 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type189, i32 0, i32 7
  store i32 1, i32* %align, align 4
  %52 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type190 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type190, i32 0, i32 6
  %bf.load191 = load i32, i32* %user_align, align 4
  %bf.clear192 = and i32 %bf.load191, 2147483647
  store i32 %bf.clear192, i32* %user_align, align 4
  %53 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type193 = bitcast %union.tree_node* %53 to %struct.tree_type*
  %mode194 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type193, i32 0, i32 6
  %bf.load195 = load i32, i32* %mode194, align 4
  %bf.clear196 = and i32 %bf.load195, -65025
  store i32 %bf.clear196, i32* %mode194, align 4
  br label %sw.epilog

sw.bb.197:                                        ; preds = %if.end.3
  %54 = load i32, i32* @target_flags, align 4
  %and = and i32 %54, 33554432
  %tobool198 = icmp ne i32 %and, 0
  %cond199 = select i1 %tobool198, i32 64, i32 32
  %conv200 = sext i32 %cond199 to i64
  %call201 = call %union.tree_node* @size_int_wide(i64 %conv200, i32 3)
  %55 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type202 = bitcast %union.tree_node* %55 to %struct.tree_type*
  %size203 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type202, i32 0, i32 2
  store %union.tree_node* %call201, %union.tree_node** %size203, align 8
  %56 = load i32, i32* @target_flags, align 4
  %and204 = and i32 %56, 33554432
  %tobool205 = icmp ne i32 %and204, 0
  %cond206 = select i1 %tobool205, i32 64, i32 32
  %div = sdiv i32 %cond206, 8
  %conv207 = sext i32 %div to i64
  %call208 = call %union.tree_node* @size_int_wide(i64 %conv207, i32 0)
  %57 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type209 = bitcast %union.tree_node* %57 to %struct.tree_type*
  %size_unit210 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type209, i32 0, i32 3
  store %union.tree_node* %call208, %union.tree_node** %size_unit210, align 8
  %58 = load i32, i32* @target_flags, align 4
  %and211 = and i32 %58, 33554432
  %tobool212 = icmp ne i32 %and211, 0
  %cond213 = select i1 %tobool212, i32 64, i32 32
  %call214 = call i32 @mode_for_size(i32 %cond213, i32 1, i32 0)
  %59 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type215 = bitcast %union.tree_node* %59 to %struct.tree_type*
  %mode216 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type215, i32 0, i32 6
  %bf.load217 = load i32, i32* %mode216, align 4
  %bf.value218 = and i32 %call214, 127
  %bf.shl219 = shl i32 %bf.value218, 9
  %bf.clear220 = and i32 %bf.load217, -65025
  %bf.set221 = or i32 %bf.clear220, %bf.shl219
  store i32 %bf.set221, i32* %mode216, align 4
  br label %sw.epilog

sw.bb.222:                                        ; preds = %if.end.3, %if.end.3
  %60 = load i32, i32* @target_flags, align 4
  %and223 = and i32 %60, 33554432
  %tobool224 = icmp ne i32 %and223, 0
  %cond225 = select i1 %tobool224, i32 64, i32 32
  %mul226 = mul nsw i32 2, %cond225
  %call227 = call i32 @mode_for_size(i32 %mul226, i32 1, i32 0)
  %61 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type228 = bitcast %union.tree_node* %61 to %struct.tree_type*
  %mode229 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type228, i32 0, i32 6
  %bf.load230 = load i32, i32* %mode229, align 4
  %bf.value231 = and i32 %call227, 127
  %bf.shl232 = shl i32 %bf.value231, 9
  %bf.clear233 = and i32 %bf.load230, -65025
  %bf.set234 = or i32 %bf.clear233, %bf.shl232
  store i32 %bf.set234, i32* %mode229, align 4
  %62 = load i32, i32* @target_flags, align 4
  %and235 = and i32 %62, 33554432
  %tobool236 = icmp ne i32 %and235, 0
  %cond237 = select i1 %tobool236, i32 64, i32 32
  %mul238 = mul nsw i32 2, %cond237
  %conv239 = sext i32 %mul238 to i64
  %call240 = call %union.tree_node* @size_int_wide(i64 %conv239, i32 3)
  %63 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type241 = bitcast %union.tree_node* %63 to %struct.tree_type*
  %size242 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type241, i32 0, i32 2
  store %union.tree_node* %call240, %union.tree_node** %size242, align 8
  %64 = load i32, i32* @target_flags, align 4
  %and243 = and i32 %64, 33554432
  %tobool244 = icmp ne i32 %and243, 0
  %cond245 = select i1 %tobool244, i32 64, i32 32
  %mul246 = mul nsw i32 2, %cond245
  %div247 = sdiv i32 %mul246, 8
  %conv248 = sext i32 %div247 to i64
  %call249 = call %union.tree_node* @size_int_wide(i64 %conv248, i32 0)
  %65 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type250 = bitcast %union.tree_node* %65 to %struct.tree_type*
  %size_unit251 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type250, i32 0, i32 3
  store %union.tree_node* %call249, %union.tree_node** %size_unit251, align 8
  br label %sw.epilog

sw.bb.252:                                        ; preds = %if.end.3, %if.end.3
  %66 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common253 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %code254 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common253, i32 0, i32 2
  %bf.load255 = load i32, i32* %code254, align 8
  %bf.clear256 = and i32 %bf.load255, 255
  %cmp257 = icmp eq i32 %bf.clear256, 15
  br i1 %cmp257, label %land.lhs.true.259, label %cond.false

land.lhs.true.259:                                ; preds = %sw.bb.252
  %67 = load i32, i32* @reference_types_internal, align 4
  %tobool260 = icmp ne i32 %67, 0
  br i1 %tobool260, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.259
  %68 = load i32, i32* @target_flags, align 4
  %and261 = and i32 %68, 33554432
  %tobool262 = icmp ne i32 %and261, 0
  %cond263 = select i1 %tobool262, i32 5, i32 4
  %idxprom264 = sext i32 %cond263 to i64
  %arrayidx265 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom264
  %69 = load i16, i16* %arrayidx265, align 2
  %conv266 = zext i16 %69 to i32
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.259, %sw.bb.252
  %70 = load i32, i32* @target_flags, align 4
  %and267 = and i32 %70, 33554432
  %tobool268 = icmp ne i32 %and267, 0
  %cond269 = select i1 %tobool268, i32 64, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond270 = phi i32 [ %conv266, %cond.true ], [ %cond269, %cond.false ]
  store i32 %cond270, i32* %nbits, align 4
  %71 = load i32, i32* %nbits, align 4
  %72 = load i32, i32* @target_flags, align 4
  %and271 = and i32 %72, 33554432
  %tobool272 = icmp ne i32 %and271, 0
  %cond273 = select i1 %tobool272, i32 64, i32 32
  %cmp274 = icmp eq i32 %71, %cond273
  br i1 %cmp274, label %cond.true.276, label %cond.false.277

cond.true.276:                                    ; preds = %cond.end
  %73 = load i32, i32* @ptr_mode, align 4
  br label %cond.end.281

cond.false.277:                                   ; preds = %cond.end
  %74 = load i32, i32* @target_flags, align 4
  %and278 = and i32 %74, 33554432
  %tobool279 = icmp ne i32 %and278, 0
  %cond280 = select i1 %tobool279, i32 5, i32 4
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.false.277, %cond.true.276
  %cond282 = phi i32 [ %73, %cond.true.276 ], [ %cond280, %cond.false.277 ]
  %75 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type283 = bitcast %union.tree_node* %75 to %struct.tree_type*
  %mode284 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type283, i32 0, i32 6
  %bf.load285 = load i32, i32* %mode284, align 4
  %bf.value286 = and i32 %cond282, 127
  %bf.shl287 = shl i32 %bf.value286, 9
  %bf.clear288 = and i32 %bf.load285, -65025
  %bf.set289 = or i32 %bf.clear288, %bf.shl287
  store i32 %bf.set289, i32* %mode284, align 4
  %76 = load i32, i32* %nbits, align 4
  %conv290 = sext i32 %76 to i64
  %call291 = call %union.tree_node* @size_int_wide(i64 %conv290, i32 3)
  %77 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type292 = bitcast %union.tree_node* %77 to %struct.tree_type*
  %size293 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type292, i32 0, i32 2
  store %union.tree_node* %call291, %union.tree_node** %size293, align 8
  %78 = load i32, i32* %nbits, align 4
  %div294 = sdiv i32 %78, 8
  %conv295 = sext i32 %div294 to i64
  %call296 = call %union.tree_node* @size_int_wide(i64 %conv295, i32 0)
  %79 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type297 = bitcast %union.tree_node* %79 to %struct.tree_type*
  %size_unit298 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type297, i32 0, i32 3
  store %union.tree_node* %call296, %union.tree_node** %size_unit298, align 8
  %80 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common299 = bitcast %union.tree_node* %80 to %struct.tree_common*
  %unsigned_flag300 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common299, i32 0, i32 2
  %bf.load301 = load i32, i32* %unsigned_flag300, align 8
  %bf.clear302 = and i32 %bf.load301, -8193
  %bf.set303 = or i32 %bf.clear302, 8192
  store i32 %bf.set303, i32* %unsigned_flag300, align 8
  %81 = load i32, i32* %nbits, align 4
  %82 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type304 = bitcast %union.tree_node* %82 to %struct.tree_type*
  %precision305 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type304, i32 0, i32 6
  %bf.load306 = load i32, i32* %precision305, align 4
  %bf.value307 = and i32 %81, 511
  %bf.clear308 = and i32 %bf.load306, -512
  %bf.set309 = or i32 %bf.clear308, %bf.value307
  store i32 %bf.set309, i32* %precision305, align 4
  br label %sw.epilog

sw.bb.310:                                        ; preds = %if.end.3
  %83 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type311 = bitcast %union.tree_node* %83 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type311, i32 0, i32 1
  %84 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %84, %union.tree_node** %index, align 8
  %85 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common312 = bitcast %union.tree_node* %85 to %struct.tree_common*
  %type313 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common312, i32 0, i32 1
  %86 = load %union.tree_node*, %union.tree_node** %type313, align 8
  store %union.tree_node* %86, %union.tree_node** %element, align 8
  %87 = load %union.tree_node*, %union.tree_node** %element, align 8
  %call314 = call %union.tree_node* @build_pointer_type(%union.tree_node* %87)
  %88 = load %union.tree_node*, %union.tree_node** %index, align 8
  %tobool315 = icmp ne %union.tree_node* %88, null
  br i1 %tobool315, label %land.lhs.true.316, label %if.end.423

land.lhs.true.316:                                ; preds = %sw.bb.310
  %89 = load %union.tree_node*, %union.tree_node** %index, align 8
  %type317 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type317, i32 0, i32 13
  %90 = load %union.tree_node*, %union.tree_node** %maxval, align 8
  %tobool318 = icmp ne %union.tree_node* %90, null
  br i1 %tobool318, label %land.lhs.true.319, label %if.end.423

land.lhs.true.319:                                ; preds = %land.lhs.true.316
  %91 = load %union.tree_node*, %union.tree_node** %index, align 8
  %type320 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %minval321 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type320, i32 0, i32 12
  %92 = load %union.tree_node*, %union.tree_node** %minval321, align 8
  %tobool322 = icmp ne %union.tree_node* %92, null
  br i1 %tobool322, label %land.lhs.true.323, label %if.end.423

land.lhs.true.323:                                ; preds = %land.lhs.true.319
  %93 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type324 = bitcast %union.tree_node* %93 to %struct.tree_type*
  %size325 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type324, i32 0, i32 2
  %94 = load %union.tree_node*, %union.tree_node** %size325, align 8
  %tobool326 = icmp ne %union.tree_node* %94, null
  br i1 %tobool326, label %if.then.327, label %if.end.423

if.then.327:                                      ; preds = %land.lhs.true.323
  %95 = load %union.tree_node*, %union.tree_node** %index, align 8
  %type328 = bitcast %union.tree_node* %95 to %struct.tree_type*
  %maxval329 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type328, i32 0, i32 13
  %96 = load %union.tree_node*, %union.tree_node** %maxval329, align 8
  store %union.tree_node* %96, %union.tree_node** %ub, align 8
  %97 = load %union.tree_node*, %union.tree_node** %index, align 8
  %type330 = bitcast %union.tree_node* %97 to %struct.tree_type*
  %minval331 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type330, i32 0, i32 12
  %98 = load %union.tree_node*, %union.tree_node** %minval331, align 8
  store %union.tree_node* %98, %union.tree_node** %lb, align 8
  %99 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 16), align 8
  %100 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %101 = load %union.tree_node*, %union.tree_node** %lb, align 8
  %common332 = bitcast %union.tree_node* %101 to %struct.tree_common*
  %type333 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common332, i32 0, i32 1
  %102 = load %union.tree_node*, %union.tree_node** %type333, align 8
  %103 = load %union.tree_node*, %union.tree_node** %ub, align 8
  %104 = load %union.tree_node*, %union.tree_node** %lb, align 8
  %call334 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %102, %union.tree_node* %103, %union.tree_node* %104)
  %call335 = call %union.tree_node* @fold(%union.tree_node* %call334)
  %call336 = call %union.tree_node* @convert(%union.tree_node* %100, %union.tree_node* %call335)
  %call337 = call %union.tree_node* @size_binop(i32 59, %union.tree_node* %99, %union.tree_node* %call336)
  store %union.tree_node* %call337, %union.tree_node** %length, align 8
  %105 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type338 = bitcast %union.tree_node* %105 to %struct.tree_type*
  %size339 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type338, i32 0, i32 2
  %106 = load %union.tree_node*, %union.tree_node** %size339, align 8
  store %union.tree_node* %106, %union.tree_node** %element_size, align 8
  %107 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type340 = bitcast %union.tree_node* %107 to %struct.tree_type*
  %packed_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type340, i32 0, i32 6
  %bf.load341 = load i32, i32* %packed_flag, align 4
  %bf.lshr342 = lshr i32 %bf.load341, 20
  %bf.clear343 = and i32 %bf.lshr342, 1
  %tobool344 = icmp ne i32 %bf.clear343, 0
  br i1 %tobool344, label %land.lhs.true.345, label %if.end.404

land.lhs.true.345:                                ; preds = %if.then.327
  %108 = load %union.tree_node*, %union.tree_node** %element, align 8
  %common346 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %code347 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common346, i32 0, i32 2
  %bf.load348 = load i32, i32* %code347, align 8
  %bf.clear349 = and i32 %bf.load348, 255
  %cmp350 = icmp eq i32 %bf.clear349, 6
  br i1 %cmp350, label %land.lhs.true.372, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.345
  %109 = load %union.tree_node*, %union.tree_node** %element, align 8
  %common352 = bitcast %union.tree_node* %109 to %struct.tree_common*
  %code353 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common352, i32 0, i32 2
  %bf.load354 = load i32, i32* %code353, align 8
  %bf.clear355 = and i32 %bf.load354, 255
  %cmp356 = icmp eq i32 %bf.clear355, 10
  br i1 %cmp356, label %land.lhs.true.372, label %lor.lhs.false.358

lor.lhs.false.358:                                ; preds = %lor.lhs.false
  %110 = load %union.tree_node*, %union.tree_node** %element, align 8
  %common359 = bitcast %union.tree_node* %110 to %struct.tree_common*
  %code360 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common359, i32 0, i32 2
  %bf.load361 = load i32, i32* %code360, align 8
  %bf.clear362 = and i32 %bf.load361, 255
  %cmp363 = icmp eq i32 %bf.clear362, 11
  br i1 %cmp363, label %land.lhs.true.372, label %lor.lhs.false.365

lor.lhs.false.365:                                ; preds = %lor.lhs.false.358
  %111 = load %union.tree_node*, %union.tree_node** %element, align 8
  %common366 = bitcast %union.tree_node* %111 to %struct.tree_common*
  %code367 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common366, i32 0, i32 2
  %bf.load368 = load i32, i32* %code367, align 8
  %bf.clear369 = and i32 %bf.load368, 255
  %cmp370 = icmp eq i32 %bf.clear369, 12
  br i1 %cmp370, label %land.lhs.true.372, label %if.end.404

land.lhs.true.372:                                ; preds = %lor.lhs.false.365, %lor.lhs.false.358, %lor.lhs.false, %land.lhs.true.345
  %112 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type373 = bitcast %union.tree_node* %112 to %struct.tree_type*
  %maxval374 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type373, i32 0, i32 13
  %113 = load %union.tree_node*, %union.tree_node** %maxval374, align 8
  %call375 = call i32 @integer_zerop(%union.tree_node* %113)
  %tobool376 = icmp ne i32 %call375, 0
  br i1 %tobool376, label %land.lhs.true.382, label %lor.lhs.false.377

lor.lhs.false.377:                                ; preds = %land.lhs.true.372
  %114 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type378 = bitcast %union.tree_node* %114 to %struct.tree_type*
  %maxval379 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type378, i32 0, i32 13
  %115 = load %union.tree_node*, %union.tree_node** %maxval379, align 8
  %call380 = call i32 @integer_onep(%union.tree_node* %115)
  %tobool381 = icmp ne i32 %call380, 0
  br i1 %tobool381, label %land.lhs.true.382, label %if.end.404

land.lhs.true.382:                                ; preds = %lor.lhs.false.377, %land.lhs.true.372
  %116 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type383 = bitcast %union.tree_node* %116 to %struct.tree_type*
  %minval384 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type383, i32 0, i32 12
  %117 = load %union.tree_node*, %union.tree_node** %minval384, align 8
  %call385 = call i32 @host_integerp(%union.tree_node* %117, i32 1)
  %tobool386 = icmp ne i32 %call385, 0
  br i1 %tobool386, label %if.then.387, label %if.end.404

if.then.387:                                      ; preds = %land.lhs.true.382
  %118 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type388 = bitcast %union.tree_node* %118 to %struct.tree_type*
  %maxval389 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type388, i32 0, i32 13
  %119 = load %union.tree_node*, %union.tree_node** %maxval389, align 8
  %call390 = call i64 @tree_low_cst(%union.tree_node* %119, i32 1)
  store i64 %call390, i64* %maxvalue, align 8
  %120 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type391 = bitcast %union.tree_node* %120 to %struct.tree_type*
  %minval392 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type391, i32 0, i32 12
  %121 = load %union.tree_node*, %union.tree_node** %minval392, align 8
  %call393 = call i64 @tree_low_cst(%union.tree_node* %121, i32 1)
  store i64 %call393, i64* %minvalue, align 8
  %122 = load i64, i64* %maxvalue, align 8
  %123 = load i64, i64* %minvalue, align 8
  %sub = sub nsw i64 %122, %123
  %cmp394 = icmp eq i64 %sub, 1
  br i1 %cmp394, label %land.lhs.true.396, label %if.end.403

land.lhs.true.396:                                ; preds = %if.then.387
  %124 = load i64, i64* %maxvalue, align 8
  %cmp397 = icmp eq i64 %124, 1
  br i1 %cmp397, label %if.then.402, label %lor.lhs.false.399

lor.lhs.false.399:                                ; preds = %land.lhs.true.396
  %125 = load i64, i64* %maxvalue, align 8
  %cmp400 = icmp eq i64 %125, 0
  br i1 %cmp400, label %if.then.402, label %if.end.403

if.then.402:                                      ; preds = %lor.lhs.false.399, %land.lhs.true.396
  %126 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  store %union.tree_node* %126, %union.tree_node** %element_size, align 8
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.402, %lor.lhs.false.399, %if.then.387
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.403, %land.lhs.true.382, %lor.lhs.false.377, %lor.lhs.false.365, %if.then.327
  %127 = load %union.tree_node*, %union.tree_node** %element_size, align 8
  %128 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %129 = load %union.tree_node*, %union.tree_node** %length, align 8
  %call405 = call %union.tree_node* @convert(%union.tree_node* %128, %union.tree_node* %129)
  %call406 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %127, %union.tree_node* %call405)
  %130 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type407 = bitcast %union.tree_node* %130 to %struct.tree_type*
  %size408 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type407, i32 0, i32 2
  store %union.tree_node* %call406, %union.tree_node** %size408, align 8
  %131 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type409 = bitcast %union.tree_node* %131 to %struct.tree_type*
  %size_unit410 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type409, i32 0, i32 3
  %132 = load %union.tree_node*, %union.tree_node** %size_unit410, align 8
  %cmp411 = icmp ne %union.tree_node* %132, null
  br i1 %cmp411, label %land.lhs.true.413, label %if.end.422

land.lhs.true.413:                                ; preds = %if.end.404
  %133 = load %union.tree_node*, %union.tree_node** %element_size, align 8
  %call414 = call i32 @integer_onep(%union.tree_node* %133)
  %tobool415 = icmp ne i32 %call414, 0
  br i1 %tobool415, label %if.end.422, label %if.then.416

if.then.416:                                      ; preds = %land.lhs.true.413
  %134 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type417 = bitcast %union.tree_node* %134 to %struct.tree_type*
  %size_unit418 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type417, i32 0, i32 3
  %135 = load %union.tree_node*, %union.tree_node** %size_unit418, align 8
  %136 = load %union.tree_node*, %union.tree_node** %length, align 8
  %call419 = call %union.tree_node* @size_binop(i32 61, %union.tree_node* %135, %union.tree_node* %136)
  %137 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type420 = bitcast %union.tree_node* %137 to %struct.tree_type*
  %size_unit421 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type420, i32 0, i32 3
  store %union.tree_node* %call419, %union.tree_node** %size_unit421, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.416, %land.lhs.true.413, %if.end.404
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.422, %land.lhs.true.323, %land.lhs.true.319, %land.lhs.true.316, %sw.bb.310
  %138 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type424 = bitcast %union.tree_node* %138 to %struct.tree_type*
  %align425 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type424, i32 0, i32 7
  %139 = load i32, i32* %align425, align 4
  %cmp426 = icmp ugt i32 %139, 8
  br i1 %cmp426, label %cond.true.428, label %cond.false.431

cond.true.428:                                    ; preds = %if.end.423
  %140 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type429 = bitcast %union.tree_node* %140 to %struct.tree_type*
  %align430 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type429, i32 0, i32 7
  %141 = load i32, i32* %align430, align 4
  br label %cond.end.432

cond.false.431:                                   ; preds = %if.end.423
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.431, %cond.true.428
  %cond433 = phi i32 [ %141, %cond.true.428 ], [ 8, %cond.false.431 ]
  %142 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type434 = bitcast %union.tree_node* %142 to %struct.tree_type*
  %align435 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type434, i32 0, i32 7
  store i32 %cond433, i32* %align435, align 4
  %143 = load %union.tree_node*, %union.tree_node** %element, align 8
  %type436 = bitcast %union.tree_node* %143 to %struct.tree_type*
  %user_align437 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type436, i32 0, i32 6
  %bf.load438 = load i32, i32* %user_align437, align 4
  %bf.lshr439 = lshr i32 %bf.load438, 31
  %144 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type440 = bitcast %union.tree_node* %144 to %struct.tree_type*
  %user_align441 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type440, i32 0, i32 6
  %bf.load442 = load i32, i32* %user_align441, align 4
  %bf.value443 = and i32 %bf.lshr439, 1
  %bf.shl444 = shl i32 %bf.value443, 31
  %bf.clear445 = and i32 %bf.load442, 2147483647
  %bf.set446 = or i32 %bf.clear445, %bf.shl444
  store i32 %bf.set446, i32* %user_align441, align 4
  %145 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type447 = bitcast %union.tree_node* %145 to %struct.tree_type*
  %mode448 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type447, i32 0, i32 6
  %bf.load449 = load i32, i32* %mode448, align 4
  %bf.clear450 = and i32 %bf.load449, -65025
  %bf.set451 = or i32 %bf.clear450, 26112
  store i32 %bf.set451, i32* %mode448, align 4
  %146 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type452 = bitcast %union.tree_node* %146 to %struct.tree_type*
  %size453 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type452, i32 0, i32 2
  %147 = load %union.tree_node*, %union.tree_node** %size453, align 8
  %cmp454 = icmp ne %union.tree_node* %147, null
  br i1 %cmp454, label %land.lhs.true.456, label %if.end.553

land.lhs.true.456:                                ; preds = %cond.end.432
  %148 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common457 = bitcast %union.tree_node* %148 to %struct.tree_common*
  %type458 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common457, i32 0, i32 1
  %149 = load %union.tree_node*, %union.tree_node** %type458, align 8
  %type459 = bitcast %union.tree_node* %149 to %struct.tree_type*
  %mode460 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type459, i32 0, i32 6
  %bf.load461 = load i32, i32* %mode460, align 4
  %bf.lshr462 = lshr i32 %bf.load461, 9
  %bf.clear463 = and i32 %bf.lshr462, 127
  %cmp464 = icmp ne i32 %bf.clear463, 51
  br i1 %cmp464, label %if.then.474, label %lor.lhs.false.466

lor.lhs.false.466:                                ; preds = %land.lhs.true.456
  %150 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common467 = bitcast %union.tree_node* %150 to %struct.tree_common*
  %type468 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common467, i32 0, i32 1
  %151 = load %union.tree_node*, %union.tree_node** %type468, align 8
  %type469 = bitcast %union.tree_node* %151 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type469, i32 0, i32 6
  %bf.load470 = load i32, i32* %no_force_blk_flag, align 4
  %bf.lshr471 = lshr i32 %bf.load470, 17
  %bf.clear472 = and i32 %bf.lshr471, 1
  %tobool473 = icmp ne i32 %bf.clear472, 0
  br i1 %tobool473, label %if.then.474, label %if.end.553

if.then.474:                                      ; preds = %lor.lhs.false.466, %land.lhs.true.456
  %152 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type475 = bitcast %union.tree_node* %152 to %struct.tree_type*
  %size476 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type475, i32 0, i32 2
  %153 = load %union.tree_node*, %union.tree_node** %size476, align 8
  %154 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common477 = bitcast %union.tree_node* %154 to %struct.tree_common*
  %type478 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common477, i32 0, i32 1
  %155 = load %union.tree_node*, %union.tree_node** %type478, align 8
  %type479 = bitcast %union.tree_node* %155 to %struct.tree_type*
  %size480 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type479, i32 0, i32 2
  %156 = load %union.tree_node*, %union.tree_node** %size480, align 8
  %call481 = call i32 @simple_cst_equal(%union.tree_node* %153, %union.tree_node* %156)
  %tobool482 = icmp ne i32 %call481, 0
  br i1 %tobool482, label %if.then.483, label %if.else

if.then.483:                                      ; preds = %if.then.474
  %157 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common484 = bitcast %union.tree_node* %157 to %struct.tree_common*
  %type485 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common484, i32 0, i32 1
  %158 = load %union.tree_node*, %union.tree_node** %type485, align 8
  %type486 = bitcast %union.tree_node* %158 to %struct.tree_type*
  %mode487 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type486, i32 0, i32 6
  %bf.load488 = load i32, i32* %mode487, align 4
  %bf.lshr489 = lshr i32 %bf.load488, 9
  %bf.clear490 = and i32 %bf.lshr489, 127
  %159 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type491 = bitcast %union.tree_node* %159 to %struct.tree_type*
  %mode492 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type491, i32 0, i32 6
  %bf.load493 = load i32, i32* %mode492, align 4
  %bf.value494 = and i32 %bf.clear490, 127
  %bf.shl495 = shl i32 %bf.value494, 9
  %bf.clear496 = and i32 %bf.load493, -65025
  %bf.set497 = or i32 %bf.clear496, %bf.shl495
  store i32 %bf.set497, i32* %mode492, align 4
  br label %if.end.508

if.else:                                          ; preds = %if.then.474
  %160 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type498 = bitcast %union.tree_node* %160 to %struct.tree_type*
  %size499 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type498, i32 0, i32 2
  %161 = load %union.tree_node*, %union.tree_node** %size499, align 8
  %call500 = call i32 @mode_for_size_tree(%union.tree_node* %161, i32 1, i32 1)
  %162 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type501 = bitcast %union.tree_node* %162 to %struct.tree_type*
  %mode502 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type501, i32 0, i32 6
  %bf.load503 = load i32, i32* %mode502, align 4
  %bf.value504 = and i32 %call500, 127
  %bf.shl505 = shl i32 %bf.value504, 9
  %bf.clear506 = and i32 %bf.load503, -65025
  %bf.set507 = or i32 %bf.clear506, %bf.shl505
  store i32 %bf.set507, i32* %mode502, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.else, %if.then.483
  %163 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type509 = bitcast %union.tree_node* %163 to %struct.tree_type*
  %mode510 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type509, i32 0, i32 6
  %bf.load511 = load i32, i32* %mode510, align 4
  %bf.lshr512 = lshr i32 %bf.load511, 9
  %bf.clear513 = and i32 %bf.lshr512, 127
  %cmp514 = icmp ne i32 %bf.clear513, 51
  br i1 %cmp514, label %land.lhs.true.516, label %if.end.552

land.lhs.true.516:                                ; preds = %if.end.508
  br i1 false, label %land.lhs.true.517, label %if.end.552

land.lhs.true.517:                                ; preds = %land.lhs.true.516
  %164 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type518 = bitcast %union.tree_node* %164 to %struct.tree_type*
  %align519 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type518, i32 0, i32 7
  %165 = load i32, i32* %align519, align 4
  %cmp520 = icmp ult i32 %165, 128
  br i1 %cmp520, label %land.lhs.true.522, label %if.end.552

land.lhs.true.522:                                ; preds = %land.lhs.true.517
  %166 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type523 = bitcast %union.tree_node* %166 to %struct.tree_type*
  %align524 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type523, i32 0, i32 7
  %167 = load i32, i32* %align524, align 4
  %168 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type525 = bitcast %union.tree_node* %168 to %struct.tree_type*
  %mode526 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type525, i32 0, i32 6
  %bf.load527 = load i32, i32* %mode526, align 4
  %bf.lshr528 = lshr i32 %bf.load527, 9
  %bf.clear529 = and i32 %bf.lshr528, 127
  %call530 = call i32 @get_mode_alignment(i32 %bf.clear529)
  %cmp531 = icmp ult i32 %167, %call530
  br i1 %cmp531, label %land.lhs.true.533, label %if.end.552

land.lhs.true.533:                                ; preds = %land.lhs.true.522
  %169 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type534 = bitcast %union.tree_node* %169 to %struct.tree_type*
  %mode535 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type534, i32 0, i32 6
  %bf.load536 = load i32, i32* %mode535, align 4
  %bf.lshr537 = lshr i32 %bf.load536, 9
  %bf.clear538 = and i32 %bf.lshr537, 127
  %cmp539 = icmp ne i32 %bf.clear538, 51
  br i1 %cmp539, label %if.then.541, label %if.end.552

if.then.541:                                      ; preds = %land.lhs.true.533
  %170 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type542 = bitcast %union.tree_node* %170 to %struct.tree_type*
  %no_force_blk_flag543 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type542, i32 0, i32 6
  %bf.load544 = load i32, i32* %no_force_blk_flag543, align 4
  %bf.clear545 = and i32 %bf.load544, -131073
  %bf.set546 = or i32 %bf.clear545, 131072
  store i32 %bf.set546, i32* %no_force_blk_flag543, align 4
  %171 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type547 = bitcast %union.tree_node* %171 to %struct.tree_type*
  %mode548 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type547, i32 0, i32 6
  %bf.load549 = load i32, i32* %mode548, align 4
  %bf.clear550 = and i32 %bf.load549, -65025
  %bf.set551 = or i32 %bf.clear550, 26112
  store i32 %bf.set551, i32* %mode548, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.541, %land.lhs.true.533, %land.lhs.true.522, %land.lhs.true.517, %land.lhs.true.516, %if.end.508
  br label %if.end.553

if.end.553:                                       ; preds = %if.end.552, %lor.lhs.false.466, %cond.end.432
  br label %sw.epilog

sw.bb.554:                                        ; preds = %if.end.3, %if.end.3, %if.end.3
  %172 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call555 = call %struct.record_layout_info_s* @start_record_layout(%union.tree_node* %172)
  store %struct.record_layout_info_s* %call555, %struct.record_layout_info_s** %rli, align 8
  %173 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common556 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %code557 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common556, i32 0, i32 2
  %bf.load558 = load i32, i32* %code557, align 8
  %bf.clear559 = and i32 %bf.load558, 255
  %cmp560 = icmp eq i32 %bf.clear559, 22
  br i1 %cmp560, label %if.then.562, label %if.end.568

if.then.562:                                      ; preds = %sw.bb.554
  %174 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type563 = bitcast %union.tree_node* %174 to %struct.tree_type*
  %values564 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type563, i32 0, i32 1
  %175 = load %union.tree_node*, %union.tree_node** %values564, align 8
  %call565 = call %union.tree_node* @nreverse(%union.tree_node* %175)
  %176 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type566 = bitcast %union.tree_node* %176 to %struct.tree_type*
  %values567 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type566, i32 0, i32 1
  store %union.tree_node* %call565, %union.tree_node** %values567, align 8
  br label %if.end.568

if.end.568:                                       ; preds = %if.then.562, %sw.bb.554
  %177 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type569 = bitcast %union.tree_node* %177 to %struct.tree_type*
  %values570 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type569, i32 0, i32 1
  %178 = load %union.tree_node*, %union.tree_node** %values570, align 8
  store %union.tree_node* %178, %union.tree_node** %field, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.568
  %179 = load %union.tree_node*, %union.tree_node** %field, align 8
  %tobool571 = icmp ne %union.tree_node* %179, null
  br i1 %tobool571, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %180 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  %181 = load %union.tree_node*, %union.tree_node** %field, align 8
  call void @place_field(%struct.record_layout_info_s* %180, %union.tree_node* %181)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %182 = load %union.tree_node*, %union.tree_node** %field, align 8
  %common572 = bitcast %union.tree_node* %182 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common572, i32 0, i32 0
  %183 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %183, %union.tree_node** %field, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %184 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common573 = bitcast %union.tree_node* %184 to %struct.tree_common*
  %code574 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common573, i32 0, i32 2
  %bf.load575 = load i32, i32* %code574, align 8
  %bf.clear576 = and i32 %bf.load575, 255
  %cmp577 = icmp eq i32 %bf.clear576, 22
  br i1 %cmp577, label %if.then.579, label %if.end.585

if.then.579:                                      ; preds = %for.end
  %185 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type580 = bitcast %union.tree_node* %185 to %struct.tree_type*
  %values581 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type580, i32 0, i32 1
  %186 = load %union.tree_node*, %union.tree_node** %values581, align 8
  %call582 = call %union.tree_node* @nreverse(%union.tree_node* %186)
  %187 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type583 = bitcast %union.tree_node* %187 to %struct.tree_type*
  %values584 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type583, i32 0, i32 1
  store %union.tree_node* %call582, %union.tree_node** %values584, align 8
  br label %if.end.585

if.end.585:                                       ; preds = %if.then.579, %for.end
  %188 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  %tobool586 = icmp ne void (%struct.record_layout_info_s*)* %188, null
  br i1 %tobool586, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %if.end.585
  %189 = load void (%struct.record_layout_info_s*)*, void (%struct.record_layout_info_s*)** @lang_adjust_rli, align 8
  %190 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  call void %189(%struct.record_layout_info_s* %190)
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %if.end.585
  %191 = load %struct.record_layout_info_s*, %struct.record_layout_info_s** %rli, align 8
  call void @finish_record_layout(%struct.record_layout_info_s* %191)
  br label %sw.epilog

sw.bb.589:                                        ; preds = %if.end.3
  %192 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type590 = bitcast %union.tree_node* %192 to %struct.tree_type*
  %values591 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type590, i32 0, i32 1
  %193 = load %union.tree_node*, %union.tree_node** %values591, align 8
  %type592 = bitcast %union.tree_node* %193 to %struct.tree_type*
  %maxval593 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type592, i32 0, i32 13
  %194 = load %union.tree_node*, %union.tree_node** %maxval593, align 8
  %common594 = bitcast %union.tree_node* %194 to %struct.tree_common*
  %code595 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common594, i32 0, i32 2
  %bf.load596 = load i32, i32* %code595, align 8
  %bf.clear597 = and i32 %bf.load596, 255
  %cmp598 = icmp ne i32 %bf.clear597, 25
  br i1 %cmp598, label %if.then.611, label %lor.lhs.false.600

lor.lhs.false.600:                                ; preds = %sw.bb.589
  %195 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type601 = bitcast %union.tree_node* %195 to %struct.tree_type*
  %values602 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type601, i32 0, i32 1
  %196 = load %union.tree_node*, %union.tree_node** %values602, align 8
  %type603 = bitcast %union.tree_node* %196 to %struct.tree_type*
  %minval604 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type603, i32 0, i32 12
  %197 = load %union.tree_node*, %union.tree_node** %minval604, align 8
  %common605 = bitcast %union.tree_node* %197 to %struct.tree_common*
  %code606 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common605, i32 0, i32 2
  %bf.load607 = load i32, i32* %code606, align 8
  %bf.clear608 = and i32 %bf.load607, 255
  %cmp609 = icmp ne i32 %bf.clear608, 25
  br i1 %cmp609, label %if.then.611, label %if.else.612

if.then.611:                                      ; preds = %lor.lhs.false.600, %sw.bb.589
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1666, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

if.else.612:                                      ; preds = %lor.lhs.false.600
  %198 = load i32, i32* @set_alignment, align 4
  %tobool613 = icmp ne i32 %198, 0
  br i1 %tobool613, label %cond.true.614, label %cond.false.615

cond.true.614:                                    ; preds = %if.else.612
  %199 = load i32, i32* @set_alignment, align 4
  br label %cond.end.619

cond.false.615:                                   ; preds = %if.else.612
  %200 = load i32, i32* @target_flags, align 4
  %and616 = and i32 %200, 33554432
  %tobool617 = icmp ne i32 %and616, 0
  %cond618 = select i1 %tobool617, i32 64, i32 32
  br label %cond.end.619

cond.end.619:                                     ; preds = %cond.false.615, %cond.true.614
  %cond620 = phi i32 [ %199, %cond.true.614 ], [ %cond618, %cond.false.615 ]
  store i32 %cond620, i32* %alignment, align 4
  %201 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type621 = bitcast %union.tree_node* %201 to %struct.tree_type*
  %values622 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type621, i32 0, i32 1
  %202 = load %union.tree_node*, %union.tree_node** %values622, align 8
  %type623 = bitcast %union.tree_node* %202 to %struct.tree_type*
  %maxval624 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type623, i32 0, i32 13
  %203 = load %union.tree_node*, %union.tree_node** %maxval624, align 8
  %int_cst = bitcast %union.tree_node* %203 to %struct.tree_int_cst*
  %int_cst625 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst, i32 0, i32 2
  %low = getelementptr inbounds %struct.anon, %struct.anon* %int_cst625, i32 0, i32 0
  %204 = load i64, i64* %low, align 8
  %205 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type626 = bitcast %union.tree_node* %205 to %struct.tree_type*
  %values627 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type626, i32 0, i32 1
  %206 = load %union.tree_node*, %union.tree_node** %values627, align 8
  %type628 = bitcast %union.tree_node* %206 to %struct.tree_type*
  %minval629 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type628, i32 0, i32 12
  %207 = load %union.tree_node*, %union.tree_node** %minval629, align 8
  %int_cst630 = bitcast %union.tree_node* %207 to %struct.tree_int_cst*
  %int_cst631 = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %int_cst630, i32 0, i32 2
  %low632 = getelementptr inbounds %struct.anon, %struct.anon* %int_cst631, i32 0, i32 0
  %208 = load i64, i64* %low632, align 8
  %sub633 = sub i64 %204, %208
  %add = add i64 %sub633, 1
  %conv634 = trunc i64 %add to i32
  store i32 %conv634, i32* %size_in_bits, align 4
  %209 = load i32, i32* %size_in_bits, align 4
  %210 = load i32, i32* %alignment, align 4
  %add635 = add i32 %209, %210
  %sub636 = sub i32 %add635, 1
  %211 = load i32, i32* %alignment, align 4
  %div637 = udiv i32 %sub636, %211
  %212 = load i32, i32* %alignment, align 4
  %mul638 = mul i32 %div637, %212
  store i32 %mul638, i32* %rounded_size, align 4
  %213 = load i32, i32* %rounded_size, align 4
  %214 = load i32, i32* %alignment, align 4
  %cmp639 = icmp sgt i32 %213, %214
  br i1 %cmp639, label %if.then.641, label %if.else.647

if.then.641:                                      ; preds = %cond.end.619
  %215 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type642 = bitcast %union.tree_node* %215 to %struct.tree_type*
  %mode643 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type642, i32 0, i32 6
  %bf.load644 = load i32, i32* %mode643, align 4
  %bf.clear645 = and i32 %bf.load644, -65025
  %bf.set646 = or i32 %bf.clear645, 26112
  store i32 %bf.set646, i32* %mode643, align 4
  br label %if.end.656

if.else.647:                                      ; preds = %cond.end.619
  %216 = load i32, i32* %alignment, align 4
  %call648 = call i32 @mode_for_size(i32 %216, i32 1, i32 1)
  %217 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type649 = bitcast %union.tree_node* %217 to %struct.tree_type*
  %mode650 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type649, i32 0, i32 6
  %bf.load651 = load i32, i32* %mode650, align 4
  %bf.value652 = and i32 %call648, 127
  %bf.shl653 = shl i32 %bf.value652, 9
  %bf.clear654 = and i32 %bf.load651, -65025
  %bf.set655 = or i32 %bf.clear654, %bf.shl653
  store i32 %bf.set655, i32* %mode650, align 4
  br label %if.end.656

if.end.656:                                       ; preds = %if.else.647, %if.then.641
  %218 = load i32, i32* %rounded_size, align 4
  %conv657 = sext i32 %218 to i64
  %call658 = call %union.tree_node* @size_int_wide(i64 %conv657, i32 3)
  %219 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type659 = bitcast %union.tree_node* %219 to %struct.tree_type*
  %size660 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type659, i32 0, i32 2
  store %union.tree_node* %call658, %union.tree_node** %size660, align 8
  %220 = load i32, i32* %rounded_size, align 4
  %div661 = sdiv i32 %220, 8
  %conv662 = sext i32 %div661 to i64
  %call663 = call %union.tree_node* @size_int_wide(i64 %conv662, i32 0)
  %221 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type664 = bitcast %union.tree_node* %221 to %struct.tree_type*
  %size_unit665 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type664, i32 0, i32 3
  store %union.tree_node* %call663, %union.tree_node** %size_unit665, align 8
  %222 = load i32, i32* %alignment, align 4
  %223 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type666 = bitcast %union.tree_node* %223 to %struct.tree_type*
  %align667 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type666, i32 0, i32 7
  store i32 %222, i32* %align667, align 4
  %224 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type668 = bitcast %union.tree_node* %224 to %struct.tree_type*
  %user_align669 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type668, i32 0, i32 6
  %bf.load670 = load i32, i32* %user_align669, align 4
  %bf.clear671 = and i32 %bf.load670, 2147483647
  store i32 %bf.clear671, i32* %user_align669, align 4
  %225 = load i32, i32* %size_in_bits, align 4
  %226 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type672 = bitcast %union.tree_node* %226 to %struct.tree_type*
  %precision673 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type672, i32 0, i32 6
  %bf.load674 = load i32, i32* %precision673, align 4
  %bf.value675 = and i32 %225, 511
  %bf.clear676 = and i32 %bf.load674, -512
  %bf.set677 = or i32 %bf.clear676, %bf.value675
  store i32 %bf.set677, i32* %precision673, align 4
  br label %if.end.678

if.end.678:                                       ; preds = %if.end.656
  br label %sw.epilog

sw.bb.679:                                        ; preds = %if.end.3
  %227 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type680 = bitcast %union.tree_node* %227 to %struct.tree_type*
  %align681 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type680, i32 0, i32 7
  store i32 128, i32* %align681, align 4
  %228 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type682 = bitcast %union.tree_node* %228 to %struct.tree_type*
  %user_align683 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type682, i32 0, i32 6
  %bf.load684 = load i32, i32* %user_align683, align 4
  %bf.clear685 = and i32 %bf.load684, 2147483647
  store i32 %bf.clear685, i32* %user_align683, align 4
  %229 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type686 = bitcast %union.tree_node* %229 to %struct.tree_type*
  %mode687 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type686, i32 0, i32 6
  %bf.load688 = load i32, i32* %mode687, align 4
  %bf.clear689 = and i32 %bf.load688, -65025
  %bf.set690 = or i32 %bf.clear689, 26112
  store i32 %bf.set690, i32* %mode687, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.3
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1702, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.layout_type, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.679, %if.end.678, %if.end.588, %if.end.553, %cond.end.281, %sw.bb.222, %sw.bb.197, %sw.bb.188, %sw.bb.151, %sw.bb.92, %sw.bb.57, %if.end.30
  %230 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common691 = bitcast %union.tree_node* %230 to %struct.tree_common*
  %code692 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common691, i32 0, i32 2
  %bf.load693 = load i32, i32* %code692, align 8
  %bf.clear694 = and i32 %bf.load693, 255
  %cmp695 = icmp ne i32 %bf.clear694, 20
  br i1 %cmp695, label %land.lhs.true.697, label %if.end.712

land.lhs.true.697:                                ; preds = %sw.epilog
  %231 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common698 = bitcast %union.tree_node* %231 to %struct.tree_common*
  %code699 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common698, i32 0, i32 2
  %bf.load700 = load i32, i32* %code699, align 8
  %bf.clear701 = and i32 %bf.load700, 255
  %cmp702 = icmp ne i32 %bf.clear701, 21
  br i1 %cmp702, label %land.lhs.true.704, label %if.end.712

land.lhs.true.704:                                ; preds = %land.lhs.true.697
  %232 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common705 = bitcast %union.tree_node* %232 to %struct.tree_common*
  %code706 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common705, i32 0, i32 2
  %bf.load707 = load i32, i32* %code706, align 8
  %bf.clear708 = and i32 %bf.load707, 255
  %cmp709 = icmp ne i32 %bf.clear708, 22
  br i1 %cmp709, label %if.then.711, label %if.end.712

if.then.711:                                      ; preds = %land.lhs.true.704
  %233 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @finalize_type_size(%union.tree_node* %233)
  br label %if.end.712

if.end.712:                                       ; preds = %if.then.711, %land.lhs.true.704, %land.lhs.true.697, %sw.epilog
  %234 = load i32, i32* @sizetype_set, align 4
  %tobool713 = icmp ne i32 %234, 0
  br i1 %tobool713, label %if.end.716, label %if.then.714

if.then.714:                                      ; preds = %if.end.712
  %235 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %236 = load %union.tree_node*, %union.tree_node** @early_type_list, align 8
  %call715 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %235, %union.tree_node* %236)
  store %union.tree_node* %call715, %union.tree_node** @early_type_list, align 8
  br label %if.end.716

if.end.716:                                       ; preds = %if.then.714, %if.end.712
  %237 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common717 = bitcast %union.tree_node* %237 to %struct.tree_common*
  %code718 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common717, i32 0, i32 2
  %bf.load719 = load i32, i32* %code718, align 8
  %bf.clear720 = and i32 %bf.load719, 255
  %cmp721 = icmp eq i32 %bf.clear720, 18
  br i1 %cmp721, label %land.lhs.true.751, label %lor.lhs.false.723

lor.lhs.false.723:                                ; preds = %if.end.716
  %238 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common724 = bitcast %union.tree_node* %238 to %struct.tree_common*
  %code725 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common724, i32 0, i32 2
  %bf.load726 = load i32, i32* %code725, align 8
  %bf.clear727 = and i32 %bf.load726, 255
  %cmp728 = icmp eq i32 %bf.clear727, 20
  br i1 %cmp728, label %land.lhs.true.751, label %lor.lhs.false.730

lor.lhs.false.730:                                ; preds = %lor.lhs.false.723
  %239 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common731 = bitcast %union.tree_node* %239 to %struct.tree_common*
  %code732 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common731, i32 0, i32 2
  %bf.load733 = load i32, i32* %code732, align 8
  %bf.clear734 = and i32 %bf.load733, 255
  %cmp735 = icmp eq i32 %bf.clear734, 21
  br i1 %cmp735, label %land.lhs.true.751, label %lor.lhs.false.737

lor.lhs.false.737:                                ; preds = %lor.lhs.false.730
  %240 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common738 = bitcast %union.tree_node* %240 to %struct.tree_common*
  %code739 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common738, i32 0, i32 2
  %bf.load740 = load i32, i32* %code739, align 8
  %bf.clear741 = and i32 %bf.load740, 255
  %cmp742 = icmp eq i32 %bf.clear741, 22
  br i1 %cmp742, label %land.lhs.true.751, label %lor.lhs.false.744

lor.lhs.false.744:                                ; preds = %lor.lhs.false.737
  %241 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common745 = bitcast %union.tree_node* %241 to %struct.tree_common*
  %code746 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common745, i32 0, i32 2
  %bf.load747 = load i32, i32* %code746, align 8
  %bf.clear748 = and i32 %bf.load747, 255
  %cmp749 = icmp eq i32 %bf.clear748, 19
  br i1 %cmp749, label %land.lhs.true.751, label %if.end.758

land.lhs.true.751:                                ; preds = %lor.lhs.false.744, %lor.lhs.false.737, %lor.lhs.false.730, %lor.lhs.false.723, %if.end.716
  %242 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type752 = bitcast %union.tree_node* %242 to %struct.tree_type*
  %alias_set = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type752, i32 0, i32 18
  %243 = load i64, i64* %alias_set, align 8
  %cmp753 = icmp ne i64 %243, -1
  br i1 %cmp753, label %if.then.755, label %if.end.758

if.then.755:                                      ; preds = %land.lhs.true.751
  %244 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type756 = bitcast %union.tree_node* %244 to %struct.tree_type*
  %alias_set757 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type756, i32 0, i32 18
  store i64 0, i64* %alias_set757, align 8
  br label %if.end.758

if.end.758:                                       ; preds = %if.then.2, %if.then.755, %land.lhs.true.751, %lor.lhs.false.744
  ret void
}

declare i32 @tree_int_cst_sgn(%union.tree_node*) #1

declare %union.tree_node* @build_pointer_type(%union.tree_node*) #1

declare %union.tree_node* @fold(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare i32 @integer_onep(%union.tree_node*) #1

declare %union.tree_node* @nreverse(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_signed_type(i32 %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  store i32 %precision, i32* %precision.addr, align 4
  %call = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call, %union.tree_node** %type, align 8
  %0 = load i32, i32* %precision.addr, align 4
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision2, align 4
  %bf.value = and i32 %0, 511
  %bf.clear = and i32 %bf.load, -512
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %precision2, align 4
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @fixup_signed_type(%union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  ret %union.tree_node* %3
}

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: nounwind uwtable
define void @fixup_signed_type(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %precision = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision2, align 4
  %bf.clear = and i32 %bf.load, 511
  store i32 %bf.clear, i32* %precision, align 4
  %1 = load i32, i32* %precision, align 4
  %cmp = icmp sgt i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 128, i32* %precision, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %precision, align 4
  %sub = sub nsw i32 %2, 64
  %cmp3 = icmp sgt i32 %sub, 0
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %3 = load i32, i32* %precision, align 4
  %sub4 = sub nsw i32 %3, 1
  %sh_prom = zext i32 %sub4 to i64
  %shl = shl i64 -1, %sh_prom
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %shl, %cond.false ]
  %4 = load i32, i32* %precision, align 4
  %sub5 = sub nsw i32 %4, 64
  %sub6 = sub nsw i32 %sub5, 1
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.11

cond.true.8:                                      ; preds = %cond.end
  %5 = load i32, i32* %precision, align 4
  %sub9 = sub nsw i32 %5, 64
  %sub10 = sub nsw i32 %sub9, 1
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.end
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.8
  %cond13 = phi i32 [ %sub10, %cond.true.8 ], [ 0, %cond.false.11 ]
  %sh_prom14 = zext i32 %cond13 to i64
  %shl15 = shl i64 -1, %sh_prom14
  %call = call %union.tree_node* @build_int_2_wide(i64 %cond, i64 %shl15)
  %6 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type16 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 12
  store %union.tree_node* %call, %union.tree_node** %minval, align 8
  %7 = load i32, i32* %precision, align 4
  %sub17 = sub nsw i32 %7, 64
  %cmp18 = icmp sgt i32 %sub17, 0
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.12
  br label %cond.end.25

cond.false.20:                                    ; preds = %cond.end.12
  %8 = load i32, i32* %precision, align 4
  %sub21 = sub nsw i32 %8, 1
  %sh_prom22 = zext i32 %sub21 to i64
  %shl23 = shl i64 1, %sh_prom22
  %sub24 = sub nsw i64 %shl23, 1
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.20, %cond.true.19
  %cond26 = phi i64 [ -1, %cond.true.19 ], [ %sub24, %cond.false.20 ]
  %9 = load i32, i32* %precision, align 4
  %sub27 = sub nsw i32 %9, 64
  %sub28 = sub nsw i32 %sub27, 1
  %cmp29 = icmp sgt i32 %sub28, 0
  br i1 %cmp29, label %cond.true.30, label %cond.false.36

cond.true.30:                                     ; preds = %cond.end.25
  %10 = load i32, i32* %precision, align 4
  %sub31 = sub nsw i32 %10, 64
  %sub32 = sub nsw i32 %sub31, 1
  %sh_prom33 = zext i32 %sub32 to i64
  %shl34 = shl i64 1, %sh_prom33
  %sub35 = sub nsw i64 %shl34, 1
  br label %cond.end.37

cond.false.36:                                    ; preds = %cond.end.25
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.30
  %cond38 = phi i64 [ %sub35, %cond.true.30 ], [ 0, %cond.false.36 ]
  %call39 = call %union.tree_node* @build_int_2_wide(i64 %cond26, i64 %cond38)
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type40 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type40, i32 0, i32 13
  store %union.tree_node* %call39, %union.tree_node** %maxval, align 8
  %12 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type41 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %minval42 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type41, i32 0, i32 12
  %14 = load %union.tree_node*, %union.tree_node** %minval42, align 8
  %common = bitcast %union.tree_node* %14 to %struct.tree_common*
  %type43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %12, %union.tree_node** %type43, align 8
  %15 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %16 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type44 = bitcast %union.tree_node* %16 to %struct.tree_type*
  %maxval45 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type44, i32 0, i32 13
  %17 = load %union.tree_node*, %union.tree_node** %maxval45, align 8
  %common46 = bitcast %union.tree_node* %17 to %struct.tree_common*
  %type47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common46, i32 0, i32 1
  store %union.tree_node* %15, %union.tree_node** %type47, align 8
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @layout_type(%union.tree_node* %18)
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_unsigned_type(i32 %precision) #0 {
entry:
  %precision.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  store i32 %precision, i32* %precision.addr, align 4
  %call = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call, %union.tree_node** %type, align 8
  %0 = load i32, i32* %precision.addr, align 4
  %1 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type1 = bitcast %union.tree_node* %1 to %struct.tree_type*
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision2, align 4
  %bf.value = and i32 %0, 511
  %bf.clear = and i32 %bf.load, -512
  %bf.set = or i32 %bf.clear, %bf.value
  store i32 %bf.set, i32* %precision2, align 4
  %2 = load %union.tree_node*, %union.tree_node** %type, align 8
  call void @fixup_unsigned_type(%union.tree_node* %2)
  %3 = load %union.tree_node*, %union.tree_node** %type, align 8
  ret %union.tree_node* %3
}

; Function Attrs: nounwind uwtable
define void @fixup_unsigned_type(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %precision = alloca i32, align 4
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %precision2 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision2, align 4
  %bf.clear = and i32 %bf.load, 511
  store i32 %bf.clear, i32* %precision, align 4
  %1 = load i32, i32* %precision, align 4
  %cmp = icmp sgt i32 %1, 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 128, i32* %precision, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  %2 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type3 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 12
  store %union.tree_node* %call, %union.tree_node** %minval, align 8
  %3 = load i32, i32* %precision, align 4
  %sub = sub nsw i32 %3, 64
  %cmp4 = icmp sge i32 %sub, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load i32, i32* %precision, align 4
  %sh_prom = zext i32 %4 to i64
  %shl = shl i64 1, %sh_prom
  %sub5 = sub nsw i64 %shl, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub5, %cond.false ]
  %5 = load i32, i32* %precision, align 4
  %sub6 = sub nsw i32 %5, 64
  %cmp7 = icmp sgt i32 %sub6, 0
  br i1 %cmp7, label %cond.true.8, label %cond.false.12

cond.true.8:                                      ; preds = %cond.end
  %6 = load i32, i32* %precision, align 4
  %sub9 = sub nsw i32 %6, 64
  %sub10 = sub nsw i32 64, %sub9
  %sh_prom11 = zext i32 %sub10 to i64
  %shr = lshr i64 -1, %sh_prom11
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.8
  %cond14 = phi i64 [ %shr, %cond.true.8 ], [ 0, %cond.false.12 ]
  %call15 = call %union.tree_node* @build_int_2_wide(i64 %cond, i64 %cond14)
  %7 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type16 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type16, i32 0, i32 13
  store %union.tree_node* %call15, %union.tree_node** %maxval, align 8
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type17 = bitcast %union.tree_node* %9 to %struct.tree_type*
  %minval18 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type17, i32 0, i32 12
  %10 = load %union.tree_node*, %union.tree_node** %minval18, align 8
  %common = bitcast %union.tree_node* %10 to %struct.tree_common*
  %type19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  store %union.tree_node* %8, %union.tree_node** %type19, align 8
  %11 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %12 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type20 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %maxval21 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 13
  %13 = load %union.tree_node*, %union.tree_node** %maxval21, align 8
  %common22 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %type23 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common22, i32 0, i32 1
  store %union.tree_node* %11, %union.tree_node** %type23, align 8
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  call void @layout_type(%union.tree_node* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @initialize_sizetypes() #0 {
entry:
  %t = alloca %union.tree_node*, align 8
  %call = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %0, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %1 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type = bitcast %union.tree_node* %1 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load = load i32, i32* %mode, align 4
  %bf.clear = and i32 %bf.load, -65025
  %bf.set = or i32 %bf.clear, 2048
  store i32 %bf.set, i32* %mode, align 4
  %call1 = call i32 @get_mode_alignment(i32 4)
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type2 = bitcast %union.tree_node* %2 to %struct.tree_type*
  %align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type2, i32 0, i32 7
  store i32 %call1, i32* %align, align 4
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type3 = bitcast %union.tree_node* %3 to %struct.tree_type*
  %user_align = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 6
  %bf.load4 = load i32, i32* %user_align, align 4
  %bf.clear5 = and i32 %bf.load4, 2147483647
  store i32 %bf.clear5, i32* %user_align, align 4
  %4 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 4), align 2
  %conv = zext i16 %4 to i64
  %call6 = call %union.tree_node* @build_int_2_wide(i64 %conv, i64 0)
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type7 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 2
  store %union.tree_node* %call6, %union.tree_node** %size, align 8
  %6 = load i8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @mode_size, i32 0, i64 4), align 1
  %conv8 = zext i8 %6 to i64
  %call9 = call %union.tree_node* @build_int_2_wide(i64 %conv8, i64 0)
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type10 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type10, i32 0, i32 3
  store %union.tree_node* %call9, %union.tree_node** %size_unit, align 8
  %8 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %8 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load11 = load i32, i32* %unsigned_flag, align 8
  %bf.clear12 = and i32 %bf.load11, -8193
  %bf.set13 = or i32 %bf.clear12, 8192
  store i32 %bf.set13, i32* %unsigned_flag, align 8
  %9 = load i16, i16* getelementptr inbounds ([59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 4), align 2
  %conv14 = zext i16 %9 to i32
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type15 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type15, i32 0, i32 6
  %bf.load16 = load i32, i32* %precision, align 4
  %bf.value = and i32 %conv14, 511
  %bf.clear17 = and i32 %bf.load16, -512
  %bf.set18 = or i32 %bf.clear17, %bf.value
  store i32 %bf.set18, i32* %precision, align 4
  %call19 = call %union.tree_node* @build_int_2_wide(i64 0, i64 0)
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type20 = bitcast %union.tree_node* %11 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type20, i32 0, i32 12
  store %union.tree_node* %call19, %union.tree_node** %minval, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type21 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type21, i32 0, i32 6
  %bf.load22 = load i32, i32* %no_force_blk_flag, align 4
  %bf.clear23 = and i32 %bf.load22, -131073
  %bf.set24 = or i32 %bf.clear23, 131072
  store i32 %bf.set24, i32* %no_force_blk_flag, align 4
  %call25 = call %union.tree_node* @build_int_2_wide(i64 1000, i64 0)
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %type26 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type26, i32 0, i32 13
  store %union.tree_node* %call25, %union.tree_node** %maxval, align 8
  %14 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %14, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call27 = call %union.tree_node* @copy_node(%union.tree_node* %15)
  store %union.tree_node* %call27, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  store %union.tree_node* null, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  ret void
}

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare %union.tree_node* @copy_node(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define void @set_sizetype(%union.tree_node* %type) #0 {
entry:
  %type.addr = alloca %union.tree_node*, align 8
  %oprecision = alloca i32, align 4
  %precision2 = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type1 = bitcast %union.tree_node* %0 to %struct.tree_type*
  %precision = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type1, i32 0, i32 6
  %bf.load = load i32, i32* %precision, align 4
  %bf.clear = and i32 %bf.load, 511
  store i32 %bf.clear, i32* %oprecision, align 4
  %1 = load i32, i32* %oprecision, align 4
  %add = add nsw i32 %1, 3
  %add3 = add nsw i32 %add, 1
  %cmp = icmp slt i32 %add3, 128
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %oprecision, align 4
  %add4 = add nsw i32 %2, 3
  %add5 = add nsw i32 %add4, 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add5, %cond.true ], [ 128, %cond.false ]
  store i32 %cond, i32* %precision2, align 4
  %3 = load i32, i32* @sizetype_set, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1806, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.set_sizetype, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %cond.end
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call = call %union.tree_node* @copy_node(%union.tree_node* %4)
  store %union.tree_node* %call, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %6 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type6 = bitcast %union.tree_node* %6 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type6, i32 0, i32 1
  store %union.tree_node* %5, %union.tree_node** %values, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %type7 = bitcast %union.tree_node* %7 to %struct.tree_type*
  %no_force_blk_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type7, i32 0, i32 6
  %bf.load8 = load i32, i32* %no_force_blk_flag, align 4
  %bf.clear9 = and i32 %bf.load8, -131073
  %bf.set = or i32 %bf.clear9, 131072
  store i32 %bf.set, i32* %no_force_blk_flag, align 4
  %call10 = call %union.tree_node* @make_node(i32 6)
  store %union.tree_node* %call10, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %8 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type11 = bitcast %union.tree_node* %8 to %struct.tree_type*
  %name = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type11, i32 0, i32 11
  %9 = load %union.tree_node*, %union.tree_node** %name, align 8
  %10 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %type12 = bitcast %union.tree_node* %10 to %struct.tree_type*
  %name13 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type12, i32 0, i32 11
  store %union.tree_node* %9, %union.tree_node** %name13, align 8
  %11 = load i32, i32* %precision2, align 4
  %12 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %type14 = bitcast %union.tree_node* %12 to %struct.tree_type*
  %precision15 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type14, i32 0, i32 6
  %bf.load16 = load i32, i32* %precision15, align 4
  %bf.value = and i32 %11, 511
  %bf.clear17 = and i32 %bf.load16, -512
  %bf.set18 = or i32 %bf.clear17, %bf.value
  store i32 %bf.set18, i32* %precision15, align 4
  %13 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %type19 = bitcast %union.tree_node* %13 to %struct.tree_type*
  %no_force_blk_flag20 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type19, i32 0, i32 6
  %bf.load21 = load i32, i32* %no_force_blk_flag20, align 4
  %bf.clear22 = and i32 %bf.load21, -131073
  %bf.set23 = or i32 %bf.clear22, 131072
  store i32 %bf.set23, i32* %no_force_blk_flag20, align 4
  %14 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %14 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load24 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load24, 13
  %bf.clear25 = and i32 %bf.lshr, 1
  %tobool26 = icmp ne i32 %bf.clear25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %15 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  call void @fixup_unsigned_type(%union.tree_node* %15)
  br label %if.end.28

if.else:                                          ; preds = %if.end
  %16 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  call void @fixup_signed_type(%union.tree_node* %16)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.then.27
  %17 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  call void @layout_type(%union.tree_node* %17)
  %18 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common29 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %unsigned_flag30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %unsigned_flag30, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 13
  %bf.clear33 = and i32 %bf.lshr32, 1
  %tobool34 = icmp ne i32 %bf.clear33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.40

if.then.35:                                       ; preds = %if.end.28
  %19 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  store %union.tree_node* %19, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 2), align 8
  %20 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  store %union.tree_node* %20, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 5), align 8
  %21 = load i32, i32* %oprecision, align 4
  %call36 = call %union.tree_node* @make_signed_type(i32 %21)
  %call37 = call %union.tree_node* @copy_node(%union.tree_node* %call36)
  store %union.tree_node* %call37, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %22 = load i32, i32* %precision2, align 4
  %call38 = call %union.tree_node* @make_signed_type(i32 %22)
  %call39 = call %union.tree_node* @copy_node(%union.tree_node* %call38)
  store %union.tree_node* %call39, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 4), align 8
  br label %if.end.45

if.else.40:                                       ; preds = %if.end.28
  %23 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  store %union.tree_node* %23, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 1), align 8
  %24 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  store %union.tree_node* %24, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 4), align 8
  %25 = load i32, i32* %oprecision, align 4
  %call41 = call %union.tree_node* @make_unsigned_type(i32 %25)
  %call42 = call %union.tree_node* @copy_node(%union.tree_node* %call41)
  store %union.tree_node* %call42, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 2), align 8
  %26 = load i32, i32* %precision2, align 4
  %call43 = call %union.tree_node* @make_unsigned_type(i32 %26)
  %call44 = call %union.tree_node* @copy_node(%union.tree_node* %call43)
  store %union.tree_node* %call44, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 5), align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.40, %if.then.35
  %call46 = call %union.tree_node* @get_identifier(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0))
  %27 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %type47 = bitcast %union.tree_node* %27 to %struct.tree_type*
  %name48 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type47, i32 0, i32 11
  store %union.tree_node* %call46, %union.tree_node** %name48, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.45
  %28 = load i32, i32* %i, align 4
  %conv = zext i32 %28 to i64
  %cmp49 = icmp ult i64 %conv, 6
  br i1 %cmp49, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %i, align 4
  %idxprom = zext i32 %29 to i64
  %arrayidx = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom
  %30 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %type51 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %no_force_blk_flag52 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type51, i32 0, i32 6
  %bf.load53 = load i32, i32* %no_force_blk_flag52, align 4
  %bf.clear54 = and i32 %bf.load53, -131073
  %bf.set55 = or i32 %bf.clear54, 131072
  store i32 %bf.set55, i32* %no_force_blk_flag52, align 4
  %31 = load i32, i32* %i, align 4
  %idxprom56 = zext i32 %31 to i64
  %arrayidx57 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom56
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx57, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom58 = zext i32 %33 to i64
  %arrayidx59 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom58
  %34 = load %union.tree_node*, %union.tree_node** %arrayidx59, align 8
  %type60 = bitcast %union.tree_node* %34 to %struct.tree_type*
  %main_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type60, i32 0, i32 15
  store %union.tree_node* %32, %union.tree_node** %main_variant, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom61 = zext i32 %35 to i64
  %arrayidx62 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom61
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx62, align 8
  %type63 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %next_variant = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type63, i32 0, i32 14
  store %union.tree_node* null, %union.tree_node** %next_variant, align 8
  %37 = load i32, i32* %i, align 4
  %idxprom64 = zext i32 %37 to i64
  %arrayidx65 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom64
  %38 = load %union.tree_node*, %union.tree_node** %arrayidx65, align 8
  %type66 = bitcast %union.tree_node* %38 to %struct.tree_type*
  %pointer_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type66, i32 0, i32 8
  store %union.tree_node* null, %union.tree_node** %pointer_to, align 8
  %39 = load i32, i32* %i, align 4
  %idxprom67 = zext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 %idxprom67
  %40 = load %union.tree_node*, %union.tree_node** %arrayidx68, align 8
  %type69 = bitcast %union.tree_node* %40 to %struct.tree_type*
  %reference_to = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type69, i32 0, i32 9
  store %union.tree_node* null, %union.tree_node** %reference_to, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %i, align 4
  %inc = add i32 %41, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @ggc_add_tree_root(%union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i32 0), i32 6)
  %42 = load %union.tree_node*, %union.tree_node** @early_type_list, align 8
  store %union.tree_node* %42, %union.tree_node** %t, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.91, %for.end
  %43 = load %union.tree_node*, %union.tree_node** %t, align 8
  %cmp71 = icmp ne %union.tree_node* %43, null
  br i1 %cmp71, label %for.body.73, label %for.end.93

for.body.73:                                      ; preds = %for.cond.70
  %44 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list = bitcast %union.tree_node* %44 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %45 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common74 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 2
  %bf.load75 = load i32, i32* %code, align 8
  %bf.clear76 = and i32 %bf.load75, 255
  %cmp77 = icmp ne i32 %bf.clear76, 6
  br i1 %cmp77, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.73
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 1859, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.set_sizetype, i32 0, i32 0)) #4
  unreachable

if.end.80:                                        ; preds = %for.body.73
  %46 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 3), align 8
  %47 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list81 = bitcast %union.tree_node* %47 to %struct.tree_list*
  %value82 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list81, i32 0, i32 2
  %48 = load %union.tree_node*, %union.tree_node** %value82, align 8
  %type83 = bitcast %union.tree_node* %48 to %struct.tree_type*
  %size = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type83, i32 0, i32 2
  %49 = load %union.tree_node*, %union.tree_node** %size, align 8
  %common84 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type85 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common84, i32 0, i32 1
  store %union.tree_node* %46, %union.tree_node** %type85, align 8
  %50 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %51 = load %union.tree_node*, %union.tree_node** %t, align 8
  %list86 = bitcast %union.tree_node* %51 to %struct.tree_list*
  %value87 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list86, i32 0, i32 2
  %52 = load %union.tree_node*, %union.tree_node** %value87, align 8
  %type88 = bitcast %union.tree_node* %52 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type88, i32 0, i32 3
  %53 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %common89 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %type90 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common89, i32 0, i32 1
  store %union.tree_node* %50, %union.tree_node** %type90, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %if.end.80
  %54 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common92 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common92, i32 0, i32 0
  %55 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %55, %union.tree_node** %t, align 8
  br label %for.cond.70

for.end.93:                                       ; preds = %for.cond.70
  store %union.tree_node* null, %union.tree_node** @early_type_list, align 8
  store i32 1, i32* @sizetype_set, align 4
  ret void
}

declare %union.tree_node* @get_identifier(i8*) #1

declare void @ggc_add_tree_root(%union.tree_node**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @get_best_mode(i32 %bitsize, i32 %bitpos, i32 %align, i32 %largest_mode, i32 %volatilep) #0 {
entry:
  %retval = alloca i32, align 4
  %bitsize.addr = alloca i32, align 4
  %bitpos.addr = alloca i32, align 4
  %align.addr = alloca i32, align 4
  %largest_mode.addr = alloca i32, align 4
  %volatilep.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %unit = alloca i32, align 4
  store i32 %bitsize, i32* %bitsize.addr, align 4
  store i32 %bitpos, i32* %bitpos.addr, align 4
  store i32 %align, i32* %align.addr, align 4
  store i32 %largest_mode, i32* %largest_mode.addr, align 4
  store i32 %volatilep, i32* %volatilep.addr, align 4
  store i32 0, i32* %unit, align 4
  %0 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %0, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  store i32 %conv, i32* %unit, align 4
  %4 = load i32, i32* %bitpos.addr, align 4
  %5 = load i32, i32* %unit, align 4
  %rem = urem i32 %4, %5
  %6 = load i32, i32* %bitsize.addr, align 4
  %add = add i32 %rem, %6
  %7 = load i32, i32* %unit, align 4
  %cmp1 = icmp ule i32 %add, %7
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %mode, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom3
  %9 = load i8, i8* %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  store i32 %conv5, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %10 = load i32, i32* %mode, align 4
  %cmp6 = icmp eq i32 %10, 0
  br i1 %cmp6, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %11 = load i32, i32* %unit, align 4
  %cmp8 = icmp ult i32 %11, 128
  br i1 %cmp8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  %12 = load i32, i32* %unit, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 128, %cond.false ]
  %13 = load i32, i32* %align.addr, align 4
  %cmp10 = icmp ugt i32 %cond, %13
  br i1 %cmp10, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %cond.end
  %14 = load i32, i32* %largest_mode.addr, align 4
  %cmp13 = icmp ne i32 %14, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %lor.lhs.false.12
  %15 = load i32, i32* %unit, align 4
  %16 = load i32, i32* %largest_mode.addr, align 4
  %idxprom15 = sext i32 %16 to i64
  %arrayidx16 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom15
  %17 = load i16, i16* %arrayidx16, align 2
  %conv17 = zext i16 %17 to i32
  %cmp18 = icmp ugt i32 %15, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true, %cond.end, %for.end
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %lor.lhs.false.12
  %18 = load i32, i32* %mode, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @init_stor_layout_once() #0 {
entry:
  call void @ggc_add_tree_root(%union.tree_node** @pending_sizes, i32 1)
  ret void
}

declare void @warning(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
