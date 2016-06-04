; ModuleID = 'c-objc-common.c'
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
%struct.language_function = type { %struct.stmt_tree_s, %union.tree_node* }
%struct.stmt_tree_s = type { %union.tree_node*, %union.tree_node*, i8*, i32 }
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct.diagnostic_context = type { %struct.output_buffer, i8*, [1 x %struct.__va_list_tag]*, i8*, i32, i32, void (%struct.output_buffer*, %struct.diagnostic_context*)*, void (%struct.output_buffer*, %struct.diagnostic_context*)*, i8* }
%struct.output_buffer = type { %struct.output_state, %struct._IO_FILE*, %struct.obstack, i32, [128 x i8], {}* }
%struct.output_state = type { i8*, i32, i32, i32, i8, i8, i32, i8*, [1 x %struct.__va_list_tag]*, [7 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }

@flag_hosted = external global i32, align 4
@lang_set_decl_assembler_name = external global void (%union.tree_node*)*, align 8
@global_trees = external global [51 x %union.tree_node*], align 16
@.str = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@flag_really_no_inline = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@save_lang_status = external global void (%struct.function*)*, align 8
@restore_lang_status = external global void (%struct.function*)*, align 8
@mark_lang_status = external global void (%struct.function*)*, align 8
@lang_expand_expr = external global %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)*, align 8
@lang_expand_decl_stmt = external global void (%union.tree_node*)*, align 8
@global_dc = external global %struct.diagnostic_context*, align 8
@lang_missing_noreturn_ok_p = external global i32 (%union.tree_node*)*, align 8
@mesg_implicit_function_declaration = external global i32, align 4
@flag_isoc99 = external global i32, align 4
@flag_pedantic_errors = external global i32, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"deferred_fns\00", align 1
@deferred_fns = internal global %struct.varray_head_tag* null, align 8
@static_ctors = external global %union.tree_node*, align 8
@static_dtors = external global %union.tree_node*, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"static constructors and destructors cannot be inlined\00", align 1
@cfun = external global %struct.function*, align 8
@decl_printable_name = external global i8* (%union.tree_node*, i32)*, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"({anonymous})\00", align 1

; Function Attrs: nounwind uwtable
define i32 @c_missing_noreturn_ok_p(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  %0 = load i32, i32* @flag_hosted, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl1 = bitcast %union.tree_node* %1 to %struct.tree_decl*
  %assembler_name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 14
  %2 = load %union.tree_node*, %union.tree_node** %assembler_name, align 8
  %cmp = icmp ne %union.tree_node* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.rhs
  br label %cond.end

cond.false:                                       ; preds = %land.rhs
  %3 = load void (%union.tree_node*)*, void (%union.tree_node*)** @lang_set_decl_assembler_name, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  call void %3(%union.tree_node* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %5 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %decl2 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %assembler_name3 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 14
  %6 = load %union.tree_node*, %union.tree_node** %assembler_name3, align 8
  %7 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 50), align 8
  %cmp4 = icmp eq %union.tree_node* %6, %7
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp4, %cond.end ]
  %land.ext = zext i1 %8 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define i32 @c_disregard_inline_limits(%union.tree_node* %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %union.tree_node* %1)
  %cmp = icmp ne %union.tree_node* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl1 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %lang_specific = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 24
  %3 = load %struct.lang_decl*, %struct.lang_decl** %lang_specific, align 8
  %base = getelementptr inbounds %struct.lang_decl, %struct.lang_decl* %3, i32 0, i32 0
  %4 = bitcast %struct.c_lang_decl* %base to i8*
  %bf.load = load i8, i8* %4, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %5 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl2 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 5
  %6 = bitcast i48* %external_flag to i64*
  %bf.load3 = load i64, i64* %6, align 8
  %bf.lshr = lshr i64 %bf.load3, 8
  %bf.clear4 = and i64 %bf.lshr, 1
  %bf.cast5 = trunc i64 %bf.clear4 to i32
  %tobool6 = icmp ne i32 %bf.cast5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %7 = phi i1 [ false, %if.end ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define i32 @c_cannot_inline_tree_fn(%union.tree_node** %fnp) #0 {
entry:
  %retval = alloca i32, align 4
  %fnp.addr = alloca %union.tree_node**, align 8
  %fn = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node** %fnp, %union.tree_node*** %fnp.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %fnp.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %fn, align 8
  %2 = load i32, i32* @flag_really_no_inline, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %4 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %union.tree_node* %4)
  %cmp = icmp eq %union.tree_node* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call1 = call zeroext i1 @function_attribute_inlinable_p(%union.tree_node* %5)
  br i1 %call1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl3 = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %uninlinable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 5
  %7 = bitcast i48* %uninlinable to i64*
  %bf.load = load i64, i64* %7, align 8
  %bf.clear = and i64 %bf.load, -68719476737
  %bf.set = or i64 %bf.clear, 68719476736
  store i64 %bf.set, i64* %7, align 8
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %9 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %cmp5 = icmp eq %union.tree_node* %8, %9
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end.4
  %call7 = call %union.tree_node* @get_pending_sizes()
  store %union.tree_node* %call7, %union.tree_node** %t, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @put_pending_sizes(%union.tree_node* %10)
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool8 = icmp ne %union.tree_node* %11, null
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.then.6
  %12 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl10 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %uninlinable11 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 5
  %13 = bitcast i48* %uninlinable11 to i64*
  %bf.load12 = load i64, i64* %13, align 8
  %bf.clear13 = and i64 %bf.load12, -68719476737
  %bf.set14 = or i64 %bf.clear13, 68719476736
  store i64 %bf.set14, i64* %13, align 8
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.6
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.4
  %14 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl17 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl17, i32 0, i32 9
  %15 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool18 = icmp ne %union.tree_node* %15, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.end.16
  %16 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl20 = bitcast %union.tree_node* %16 to %struct.tree_decl*
  %lang_specific = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 24
  %17 = load %struct.lang_decl*, %struct.lang_decl** %lang_specific, align 8
  %pending_sizes = getelementptr inbounds %struct.lang_decl, %struct.lang_decl* %17, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %pending_sizes, align 8
  %tobool21 = icmp ne %union.tree_node* %18, null
  br i1 %tobool21, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.then.19
  %19 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl23 = bitcast %union.tree_node* %19 to %struct.tree_decl*
  %uninlinable24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 5
  %20 = bitcast i48* %uninlinable24 to i64*
  %bf.load25 = load i64, i64* %20, align 8
  %bf.clear26 = and i64 %bf.load25, -68719476737
  %bf.set27 = or i64 %bf.clear26, 68719476736
  store i64 %bf.set27, i64* %20, align 8
  store i32 1, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.19
  br label %if.end.36

if.else:                                          ; preds = %if.end.16
  %21 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  store %union.tree_node* %21, %union.tree_node** %t, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %22 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool29 = icmp ne %union.tree_node* %22, null
  br i1 %tobool29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %24 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %cmp30 = icmp ne %union.tree_node* %23, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %25 = phi i1 [ false, %while.cond ], [ %cmp30, %land.rhs ]
  br i1 %25, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl31 = bitcast %union.tree_node* %26 to %struct.tree_decl*
  %context32 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl31, i32 0, i32 9
  %27 = load %union.tree_node*, %union.tree_node** %context32, align 8
  store %union.tree_node* %27, %union.tree_node** %t, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool33 = icmp ne %union.tree_node* %28, null
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %while.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end.28
  %29 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl37 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl37, i32 0, i32 20
  %30 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %31 = bitcast %union.tree_node* %30 to i8*
  %call38 = call %union.tree_node* @walk_tree(%union.tree_node** %saved_tree, %union.tree_node* (%union.tree_node**, i32*, i8*)* @inline_forbidden_p, i8* %31, i8* null)
  %tobool39 = icmp ne %union.tree_node* %call38, null
  br i1 %tobool39, label %if.then.40, label %if.end.46

if.then.40:                                       ; preds = %if.end.36
  %32 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl41 = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %uninlinable42 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 5
  %33 = bitcast i48* %uninlinable42 to i64*
  %bf.load43 = load i64, i64* %33, align 8
  %bf.clear44 = and i64 %bf.load43, -68719476737
  %bf.set45 = or i64 %bf.clear44, 68719476736
  store i64 %bf.set45, i64* %33, align 8
  store i32 1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.36
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.40, %if.then.34, %if.then.22, %if.then.9, %if.then.2, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

declare zeroext i1 @function_attribute_inlinable_p(%union.tree_node*) #1

declare %union.tree_node* @get_pending_sizes() #1

declare void @put_pending_sizes(%union.tree_node*) #1

declare %union.tree_node* @walk_tree(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @inline_forbidden_p(%union.tree_node** %nodep, i32* %walk_subtrees, i8* %fn) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %nodep.addr = alloca %union.tree_node**, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %fn.addr = alloca i8*, align 8
  %node = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node** %nodep, %union.tree_node*** %nodep.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  store i8* %fn, i8** %fn.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %nodep.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  store %union.tree_node* %1, %union.tree_node** %node, align 8
  %2 = load %union.tree_node*, %union.tree_node** %node, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  switch i32 %bf.clear, label %sw.default.49 [
    i32 53, label %sw.bb
    i32 154, label %sw.bb.11
    i32 163, label %sw.bb.24
    i32 138, label %sw.bb.24
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %node, align 8
  %call = call %union.tree_node* @get_callee_fndecl(%union.tree_node* %3)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %4 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog.50

if.end:                                           ; preds = %sw.bb
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call1 = call i32 @setjmp_call_p(%union.tree_node* %5)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %6 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %6, %union.tree_node** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %built_in_class = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %8 = bitcast i48* %built_in_class to i64*
  %bf.load5 = load i64, i64* %8, align 8
  %bf.lshr = lshr i64 %bf.load5, 29
  %bf.clear6 = and i64 %bf.lshr, 3
  %bf.cast = trunc i64 %bf.clear6 to i32
  %cmp = icmp eq i32 %bf.cast, 3
  br i1 %cmp, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.4
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl8 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 6
  %f = bitcast %union.anon* %u1 to i32*
  %10 = load i32, i32* %f, align 4
  switch i32 %10, label %sw.default [
    i32 90, label %sw.bb.9
    i32 91, label %sw.bb.9
  ]

sw.bb.9:                                          ; preds = %if.then.7, %if.then.7
  %11 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %11, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %if.then.7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  br label %if.end.10

if.end.10:                                        ; preds = %sw.epilog, %if.end.4
  br label %sw.epilog.50

sw.bb.11:                                         ; preds = %entry
  %12 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp = bitcast %union.tree_node* %12 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %13 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %common12 = bitcast %union.tree_node* %13 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 30
  br i1 %cmp16, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %sw.bb.11
  %14 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp17 = bitcast %union.tree_node* %14 to %struct.tree_exp*
  %operands18 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp17, i32 0, i32 2
  %arrayidx19 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands18, i32 0, i64 0
  %15 = load %union.tree_node*, %union.tree_node** %arrayidx19, align 8
  %decl20 = bitcast %union.tree_node* %15 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 12
  %16 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool21 = icmp ne %union.tree_node* %16, null
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  %17 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %17, %union.tree_node** %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %sw.bb.11
  br label %sw.epilog.50

sw.bb.24:                                         ; preds = %entry, %entry
  %18 = load %union.tree_node*, %union.tree_node** %node, align 8
  %exp25 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands26 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp25, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands26, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx27, align 8
  store %union.tree_node* %19, %union.tree_node** %t, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common28 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %code29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %code29, align 8
  %bf.clear31 = and i32 %bf.load30, 255
  %cmp32 = icmp ne i32 %bf.clear31, 31
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %sw.bb.24
  %21 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %21, %union.tree_node** %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.24
  %22 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common35 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code36 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common35, i32 0, i32 2
  %bf.load37 = load i32, i32* %code36, align 8
  %bf.clear38 = and i32 %bf.load37, 255
  %cmp39 = icmp eq i32 %bf.clear38, 31
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.48

land.lhs.true.40:                                 ; preds = %if.end.34
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl41 = bitcast %union.tree_node* %23 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 9
  %24 = load %union.tree_node*, %union.tree_node** %context, align 8
  %tobool42 = icmp ne %union.tree_node* %24, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.48

land.lhs.true.43:                                 ; preds = %land.lhs.true.40
  %25 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl44 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %context45 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl44, i32 0, i32 9
  %26 = load %union.tree_node*, %union.tree_node** %context45, align 8
  %27 = load i8*, i8** %fn.addr, align 8
  %28 = bitcast i8* %27 to %union.tree_node*
  %cmp46 = icmp ne %union.tree_node* %26, %28
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %land.lhs.true.43
  %29 = load %union.tree_node*, %union.tree_node** %node, align 8
  store %union.tree_node* %29, %union.tree_node** %retval
  br label %return

if.end.48:                                        ; preds = %land.lhs.true.43, %land.lhs.true.40, %if.end.34
  br label %sw.epilog.50

sw.default.49:                                    ; preds = %entry
  br label %sw.epilog.50

sw.epilog.50:                                     ; preds = %sw.default.49, %if.end.48, %if.end.23, %if.end.10, %if.then
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog.50, %if.then.47, %if.then.33, %if.then.22, %sw.bb.9, %if.then.3
  %30 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %30
}

; Function Attrs: nounwind uwtable
define i8* @c_objc_common_init(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  call void @c_init_decl_processing()
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @c_common_init(i8* %0)
  store i8* %call, i8** %filename.addr, align 8
  call void @add_c_tree_codes()
  store void (%struct.function*)* @push_c_function_context, void (%struct.function*)** @save_lang_status, align 8
  store void (%struct.function*)* @pop_c_function_context, void (%struct.function*)** @restore_lang_status, align 8
  store void (%struct.function*)* @mark_c_function_context, void (%struct.function*)** @mark_lang_status, align 8
  store %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)* @c_expand_expr, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, i32, i32)** @lang_expand_expr, align 8
  store void (%union.tree_node*)* @c_expand_decl_stmt, void (%union.tree_node*)** @lang_expand_decl_stmt, align 8
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8
  %2 = bitcast %struct.diagnostic_context* %1 to %struct.output_buffer*
  %format_decoder = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i32 0, i32 5
  %format_decoder1 = bitcast {}** %format_decoder to i32 (%struct.output_buffer*)**
  store i32 (%struct.output_buffer*)* @c_tree_printer, i32 (%struct.output_buffer*)** %format_decoder1, align 8
  store i32 (%union.tree_node*)* @c_missing_noreturn_ok_p, i32 (%union.tree_node*)** @lang_missing_noreturn_ok_p, align 8
  %3 = load i32, i32* @mesg_implicit_function_declaration, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @flag_isoc99, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %5 = load i32, i32* @flag_pedantic_errors, align 4
  %tobool3 = icmp ne i32 %5, 0
  %cond = select i1 %tobool3, i32 2, i32 1
  store i32 %cond, i32* @mesg_implicit_function_declaration, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 0, i32* @mesg_implicit_function_declaration, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %call5 = call %struct.varray_head_tag* @varray_init(i64 32, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  store %struct.varray_head_tag* %call5, %struct.varray_head_tag** @deferred_fns, align 8
  call void @ggc_add_tree_varray_root(%struct.varray_head_tag** @deferred_fns, i32 1)
  %6 = load i8*, i8** %filename.addr, align 8
  ret i8* %6
}

declare void @c_init_decl_processing() #1

declare i8* @c_common_init(i8*) #1

declare void @add_c_tree_codes() #1

declare void @push_c_function_context(%struct.function*) #1

declare void @pop_c_function_context(%struct.function*) #1

declare void @mark_c_function_context(%struct.function*) #1

declare %struct.rtx_def* @c_expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

declare void @c_expand_decl_stmt(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal i32 @c_tree_printer(%struct.output_buffer* %buffer) #0 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca %struct.output_buffer*, align 8
  %t = alloca %union.tree_node*, align 8
  %n = alloca i8*, align 8
  store %struct.output_buffer* %buffer, %struct.output_buffer** %buffer.addr, align 8
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %1 = bitcast %struct.output_buffer* %0 to %struct.output_state*
  %format_args = getelementptr inbounds %struct.output_state, %struct.output_state* %1, i32 0, i32 8
  %2 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %format_args, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %entry
  %3 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 3
  %reg_save_area = load i8*, i8** %3
  %4 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %5 = bitcast i8* %4 to %union.tree_node**
  %6 = add i32 %gp_offset, 8
  store i32 %6, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %7 = bitcast i8* %overflow_arg_area to %union.tree_node**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %union.tree_node** [ %5, %vaarg.in_reg ], [ %7, %vaarg.in_mem ]
  %8 = load %union.tree_node*, %union.tree_node** %vaarg.addr
  store %union.tree_node* %8, %union.tree_node** %t, align 8
  %9 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %state = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i32 0, i32 0
  %cursor = getelementptr inbounds %struct.output_state, %struct.output_state* %state, i32 0, i32 7
  %10 = load i8*, i8** %cursor, align 8
  %11 = load i8, i8* %10, align 1
  %conv = sext i8 %11 to i32
  switch i32 %conv, label %sw.default [
    i32 68, label %sw.bb
    i32 70, label %sw.bb
    i32 84, label %sw.bb
  ]

sw.bb:                                            ; preds = %vaarg.end, %vaarg.end, %vaarg.end
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 8
  %13 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool = icmp ne %union.tree_node* %13, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %14 = load i8* (%union.tree_node*, i32)*, i8* (%union.tree_node*, i32)** @decl_printable_name, align 8
  %15 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call = call i8* %14(%union.tree_node* %15, i32 2)
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %n, align 8
  %16 = load %struct.output_buffer*, %struct.output_buffer** %buffer.addr, align 8
  %17 = load i8*, i8** %n, align 8
  call void @output_add_string(%struct.output_buffer* %16, i8* %17)
  store i32 1, i32* %retval
  br label %return

sw.default:                                       ; preds = %vaarg.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %cond.end
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

declare void @ggc_add_tree_varray_root(%struct.varray_head_tag**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @defer_fn(%union.tree_node* %fn) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 1
  %1 = load i64, i64* %elements_used, align 8
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %2, i32 0, i32 0
  %3 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %num_elements1 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 0
  %6 = load i64, i64* %num_elements1, align 8
  %mul = mul i64 2, %6
  %call = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %4, i64 %mul)
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @deferred_fns, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %7 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %elements_used2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 1
  %9 = load i64, i64* %elements_used2, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %elements_used2, align 8
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %9
  store %union.tree_node* %7, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  ret i32 1
}

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define void @c_objc_common_finish_file() #0 {
entry:
  %body = alloca %union.tree_node*, align 8
  %body6 = alloca %union.tree_node*, align 8
  %flags = alloca i32, align 4
  %stream = alloca %struct._IO_FILE*, align 8
  call void @expand_deferred_fns()
  %0 = load %union.tree_node*, %union.tree_node** @static_ctors, align 8
  %tobool = icmp ne %union.tree_node* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %union.tree_node* @start_cdtor(i32 73)
  store %union.tree_node* %call, %union.tree_node** %body, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load %union.tree_node*, %union.tree_node** @static_ctors, align 8
  %tobool1 = icmp ne %union.tree_node* %1, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %union.tree_node*, %union.tree_node** @static_ctors, align 8
  %list = bitcast %union.tree_node* %2 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call2 = call %union.tree_node* @build_function_call(%union.tree_node* %3, %union.tree_node* null)
  %call3 = call %union.tree_node* @c_expand_expr_stmt(%union.tree_node* %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %union.tree_node*, %union.tree_node** @static_ctors, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %5 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %5, %union.tree_node** @static_ctors, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %union.tree_node*, %union.tree_node** %body, align 8
  call void @finish_cdtor(%union.tree_node* %6)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %7 = load %union.tree_node*, %union.tree_node** @static_dtors, align 8
  %tobool4 = icmp ne %union.tree_node* %7, null
  br i1 %tobool4, label %if.then.5, label %if.end.19

if.then.5:                                        ; preds = %if.end
  %call7 = call %union.tree_node* @start_cdtor(i32 68)
  store %union.tree_node* %call7, %union.tree_node** %body6, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.15, %if.then.5
  %8 = load %union.tree_node*, %union.tree_node** @static_dtors, align 8
  %tobool9 = icmp ne %union.tree_node* %8, null
  br i1 %tobool9, label %for.body.10, label %for.end.18

for.body.10:                                      ; preds = %for.cond.8
  %9 = load %union.tree_node*, %union.tree_node** @static_dtors, align 8
  %list11 = bitcast %union.tree_node* %9 to %struct.tree_list*
  %value12 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list11, i32 0, i32 2
  %10 = load %union.tree_node*, %union.tree_node** %value12, align 8
  %call13 = call %union.tree_node* @build_function_call(%union.tree_node* %10, %union.tree_node* null)
  %call14 = call %union.tree_node* @c_expand_expr_stmt(%union.tree_node* %call13)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.10
  %11 = load %union.tree_node*, %union.tree_node** @static_dtors, align 8
  %common16 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain17 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common16, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain17, align 8
  store %union.tree_node* %12, %union.tree_node** @static_dtors, align 8
  br label %for.cond.8

for.end.18:                                       ; preds = %for.cond.8
  %13 = load %union.tree_node*, %union.tree_node** %body6, align 8
  call void @finish_cdtor(%union.tree_node* %13)
  br label %if.end.19

if.end.19:                                        ; preds = %for.end.18, %if.end
  %call20 = call %struct._IO_FILE* @dump_begin(i32 0, i32* %flags)
  store %struct._IO_FILE* %call20, %struct._IO_FILE** %stream, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %tobool21 = icmp ne %struct._IO_FILE* %14, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.19
  %call23 = call %union.tree_node* @getdecls()
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, -3
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void @dump_node(%union.tree_node* %call23, i32 %and, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void @dump_end(i32 0, %struct._IO_FILE* %17)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.19
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @expand_deferred_fns() #0 {
entry:
  %i = alloca i32, align 4
  %decl = alloca %union.tree_node*, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %idxprom
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %decl, align 8
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %asm_written_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common2 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common2, i32 0, i32 2
  %bf.load3 = load i32, i32* %public_flag, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 19
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tobool6 = icmp ne i32 %bf.clear5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl8 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %defer_output = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 5
  %9 = bitcast i48* %defer_output to i64*
  %bf.load9 = load i64, i64* %9, align 8
  %bf.clear10 = and i64 %bf.load9, -262145
  %bf.set = or i64 %bf.clear10, 262144
  store i64 %bf.set, i64* %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @c_expand_deferred_function(%union.tree_node* %10)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %tobool12 = icmp ne %struct.varray_head_tag* %12, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @deferred_fns, align 8
  %14 = bitcast %struct.varray_head_tag* %13 to i8*
  call void @free(i8* %14) #3
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @deferred_fns, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @start_cdtor(i32 %method_type) #0 {
entry:
  %method_type.addr = alloca i32, align 4
  %fnname = alloca %union.tree_node*, align 8
  %void_list_node_1 = alloca %union.tree_node*, align 8
  %body = alloca %union.tree_node*, align 8
  store i32 %method_type, i32* %method_type.addr, align 4
  %0 = load i32, i32* %method_type.addr, align 4
  %call = call %union.tree_node* @get_file_function_name(i32 %0)
  store %union.tree_node* %call, %union.tree_node** %fnname, align 8
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 27), align 8
  %call1 = call %union.tree_node* @build_tree_list(%union.tree_node* null, %union.tree_node* %1)
  store %union.tree_node* %call1, %union.tree_node** %void_list_node_1, align 8
  %2 = load %union.tree_node*, %union.tree_node** %void_list_node_1, align 8
  %3 = load %union.tree_node*, %union.tree_node** %fnname, align 8
  %4 = load %union.tree_node*, %union.tree_node** %void_list_node_1, align 8
  %call2 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* null, %union.tree_node* %4)
  %call3 = call %union.tree_node* (i32, ...) @build_nt(i32 53, %union.tree_node* %3, %union.tree_node* %call2, %union.tree_node* null)
  %call4 = call i32 @start_function(%union.tree_node* %2, %union.tree_node* %call3, %union.tree_node* null)
  call void @store_parm_decls()
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %cannot_inline = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 16
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8** %cannot_inline, align 8
  %call5 = call %union.tree_node* @c_begin_compound_stmt()
  store %union.tree_node* %call5, %union.tree_node** %body, align 8
  call void @pushlevel(i32 0)
  call void @clear_last_expr()
  %call6 = call %union.tree_node* @add_scope_stmt(i32 1, i32 0)
  %6 = load %union.tree_node*, %union.tree_node** %body, align 8
  ret %union.tree_node* %6
}

declare %union.tree_node* @c_expand_expr_stmt(%union.tree_node*) #1

declare %union.tree_node* @build_function_call(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define internal void @finish_cdtor(%union.tree_node* %body) #0 {
entry:
  %body.addr = alloca %union.tree_node*, align 8
  %scope = alloca %union.tree_node*, align 8
  %block = alloca %union.tree_node*, align 8
  store %union.tree_node* %body, %union.tree_node** %body.addr, align 8
  %call = call %union.tree_node* @add_scope_stmt(i32 0, i32 0)
  store %union.tree_node* %call, %union.tree_node** %scope, align 8
  %call1 = call %union.tree_node* @poplevel(i32 0, i32 0, i32 0)
  store %union.tree_node* %call1, %union.tree_node** %block, align 8
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8
  %1 = load %union.tree_node*, %union.tree_node** %scope, align 8
  %list = bitcast %union.tree_node* %1 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 1
  %2 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* %0, %union.tree_node** %arrayidx, align 8
  %3 = load %union.tree_node*, %union.tree_node** %block, align 8
  %4 = load %union.tree_node*, %union.tree_node** %scope, align 8
  %list2 = bitcast %union.tree_node* %4 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list2, i32 0, i32 2
  %5 = load %union.tree_node*, %union.tree_node** %value, align 8
  %exp3 = bitcast %union.tree_node* %5 to %struct.tree_exp*
  %operands4 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp3, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands4, i32 0, i64 0
  store %union.tree_node* %3, %union.tree_node** %arrayidx5, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %6 = load %union.tree_node*, %union.tree_node** %body.addr, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %7 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %8 = load %union.tree_node*, %union.tree_node** %body.addr, align 8
  %exp6 = bitcast %union.tree_node* %8 to %struct.tree_exp*
  %operands7 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp6, i32 0, i32 2
  %arrayidx8 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands7, i32 0, i64 0
  store %union.tree_node* %7, %union.tree_node** %arrayidx8, align 8
  %9 = load %union.tree_node*, %union.tree_node** %body.addr, align 8
  %common9 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %chain10 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common9, i32 0, i32 0
  store %union.tree_node* null, %union.tree_node** %chain10, align 8
  %10 = load %union.tree_node*, %union.tree_node** %body.addr, align 8
  %call11 = call %struct.stmt_tree_s* @current_stmt_tree()
  %x_last_stmt = getelementptr inbounds %struct.stmt_tree_s, %struct.stmt_tree_s* %call11, i32 0, i32 0
  store %union.tree_node* %10, %union.tree_node** %x_last_stmt, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  call void @finish_function(i32 0, i32 0)
  ret void
}

declare %struct._IO_FILE* @dump_begin(i32, i32*) #1

declare void @dump_node(%union.tree_node*, i32, %struct._IO_FILE*) #1

declare %union.tree_node* @getdecls() #1

declare void @dump_end(i32, %struct._IO_FILE*) #1

declare %union.tree_node* @get_callee_fndecl(%union.tree_node*) #1

declare i32 @setjmp_call_p(%union.tree_node*) #1

declare void @c_expand_deferred_function(%union.tree_node*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare %union.tree_node* @get_file_function_name(i32) #1

declare %union.tree_node* @build_tree_list(%union.tree_node*, %union.tree_node*) #1

declare i32 @start_function(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_nt(i32, ...) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare void @store_parm_decls() #1

declare %union.tree_node* @c_begin_compound_stmt() #1

declare void @pushlevel(i32) #1

declare void @clear_last_expr() #1

declare %union.tree_node* @add_scope_stmt(i32, i32) #1

declare %union.tree_node* @poplevel(i32, i32, i32) #1

declare %struct.stmt_tree_s* @current_stmt_tree() #1

declare void @finish_function(i32, i32) #1

declare void @output_add_string(%struct.output_buffer*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
