; ModuleID = 'tree-inline.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.param_info = type { i8*, i32, i8* }
%struct.inline_data = type { %struct.varray_head_tag*, i32, %union.tree_node*, %struct.splay_tree_s*, i32, %struct.varray_head_tag*, %struct.varray_head_tag*, i32, i8, %struct.htab* }
%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.tree_list = type { %struct.tree_common, %union.tree_node*, %union.tree_node* }
%struct.tree_complex = type { %struct.tree_common, %struct.rtx_def*, %union.tree_node*, %union.tree_node* }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }

@flag_inline_trees = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fns\00", align 1
@current_function_decl = external global %union.tree_node*, align 8
@lang_hooks = external constant %struct.lang_hooks, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"target_exprs\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"inlined_fns\00", align 1
@htab_hash_pointer = external global i32 (i8*)*, align 8
@htab_eq_pointer = external global i32 (i8*, i8*)*, align 8
@tree_code_type = external global [256 x i8], align 16
@lineno = external global i32, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"tree-inline.c\00", align 1
@__FUNCTION__.walk_tree = private unnamed_addr constant [10 x i8] c"walk_tree\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@compiler_params = external global %struct.param_info*, align 8
@__FUNCTION__.expand_call_inline = private unnamed_addr constant [19 x i8] c"expand_call_inline\00", align 1
@__FUNCTION__.remap_block = private unnamed_addr constant [12 x i8] c"remap_block\00", align 1
@__FUNCTION__.remap_decl = private unnamed_addr constant [11 x i8] c"remap_decl\00", align 1
@__FUNCTION__.copy_body_r = private unnamed_addr constant [12 x i8] c"copy_body_r\00", align 1

; Function Attrs: nounwind uwtable
define i32 @tree_inlinable_function_p(%union.tree_node* %fn) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %call = call i32 @inlinable_function_p(%union.tree_node* %0, %struct.inline_data* null)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @inlinable_function_p(%union.tree_node* %fn, %struct.inline_data* %id) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca %union.tree_node*, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  %inlinable = alloca i32, align 4
  %i73 = alloca i64, align 8
  %j = alloca i32, align 4
  %inlined_fns85 = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %uninlinable = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 5
  %1 = bitcast i48* %uninlinable to i64*
  %bf.load = load i64, i64* %1, align 8
  %bf.lshr = lshr i64 %bf.load, 36
  %bf.clear = and i64 %bf.lshr, 1
  %bf.cast = trunc i64 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %inlinable, align 4
  %2 = load i32, i32* @flag_inline_trees, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %3 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl3 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %inline_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 5
  %4 = bitcast i48* %inline_flag to i64*
  %bf.load4 = load i64, i64* %4, align 8
  %bf.lshr5 = lshr i64 %bf.load4, 11
  %bf.clear6 = and i64 %bf.lshr5, 1
  %bf.cast7 = trunc i64 %bf.clear6 to i32
  %tobool8 = icmp ne i32 %bf.cast7, 0
  br i1 %tobool8, label %if.else.10, label %if.then.9

if.then.9:                                        ; preds = %if.else
  br label %if.end.17

if.else.10:                                       ; preds = %if.else
  %5 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 2), align 8
  %6 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %call = call i32 %5(%union.tree_node* %6)
  %tobool11 = icmp ne i32 %call, 0
  br i1 %tobool11, label %if.else.15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.10
  %7 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl12 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 6
  %i = bitcast %union.anon* %u1 to i64*
  %8 = load i64, i64* %i, align 8
  %mul = mul nsw i64 %8, 10
  %9 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx = getelementptr inbounds %struct.param_info, %struct.param_info* %9, i64 0
  %value = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx, i32 0, i32 1
  %10 = load i32, i32* %value, align 4
  %div = sdiv i32 %10, 2
  %conv = sext i32 %div to i64
  %cmp = icmp sgt i64 %mul, %conv
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true, %if.else.10
  store i32 1, i32* %inlinable, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  %11 = load i32, i32* %inlinable, align 4
  %tobool19 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool19, true
  %lnot.ext = zext i1 %lnot to i32
  %12 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl20 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %uninlinable21 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl20, i32 0, i32 5
  %13 = bitcast i48* %uninlinable21 to i64*
  %14 = zext i32 %lnot.ext to i64
  %bf.load22 = load i64, i64* %13, align 8
  %bf.value = and i64 %14, 1
  %bf.shl = shl i64 %bf.value, 36
  %bf.clear23 = and i64 %bf.load22, -68719476737
  %bf.set = or i64 %bf.clear23, %bf.shl
  store i64 %bf.set, i64* %13, align 8
  %bf.result.cast = trunc i64 %bf.value to i32
  %15 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 2), align 8
  %16 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %call24 = call i32 %15(%union.tree_node* %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.50, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.end.18
  %17 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl27 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %u128 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl27, i32 0, i32 6
  %i29 = bitcast %union.anon* %u128 to i64*
  %18 = load i64, i64* %i29, align 8
  %19 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %tobool30 = icmp ne %struct.inline_data* %19, null
  br i1 %tobool30, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.26
  %20 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %inlined_stmts = getelementptr inbounds %struct.inline_data, %struct.inline_data* %20, i32 0, i32 7
  %21 = load i32, i32* %inlined_stmts, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.26
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %21, %cond.true ], [ 0, %cond.false ]
  %conv31 = sext i32 %cond to i64
  %add = add nsw i64 %18, %conv31
  %mul32 = mul nsw i64 %add, 10
  %22 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx33 = getelementptr inbounds %struct.param_info, %struct.param_info* %22, i64 0
  %value34 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx33, i32 0, i32 1
  %23 = load i32, i32* %value34, align 4
  %conv35 = sext i32 %23 to i64
  %cmp36 = icmp sgt i64 %mul32, %conv35
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.50

land.lhs.true.38:                                 ; preds = %cond.end
  %24 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl39 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %u140 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl39, i32 0, i32 6
  %i41 = bitcast %union.anon* %u140 to i64*
  %25 = load i64, i64* %i41, align 8
  %mul42 = mul nsw i64 %25, 10
  %26 = load %struct.param_info*, %struct.param_info** @compiler_params, align 8
  %arrayidx43 = getelementptr inbounds %struct.param_info, %struct.param_info* %26, i64 0
  %value44 = getelementptr inbounds %struct.param_info, %struct.param_info* %arrayidx43, i32 0, i32 1
  %27 = load i32, i32* %value44, align 4
  %div45 = sdiv i32 %27, 4
  %conv46 = sext i32 %div45 to i64
  %cmp47 = icmp sgt i64 %mul42, %conv46
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %land.lhs.true.38
  store i32 0, i32* %inlinable, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %land.lhs.true.38, %cond.end, %if.end.18
  %28 = load i32, i32* %inlinable, align 4
  %tobool51 = icmp ne i32 %28, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.56

land.lhs.true.52:                                 ; preds = %if.end.50
  %29 = load i32 (%union.tree_node**)*, i32 (%union.tree_node**)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 1), align 8
  %call53 = call i32 %29(%union.tree_node** %fn.addr)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %land.lhs.true.52
  store i32 0, i32* %inlinable, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %land.lhs.true.52, %if.end.50
  %30 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl57 = bitcast %union.tree_node* %30 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl57, i32 0, i32 20
  %31 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  %tobool58 = icmp ne %union.tree_node* %31, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.end.56
  store i32 0, i32* %inlinable, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.56
  %32 = load i32, i32* %inlinable, align 4
  %tobool61 = icmp ne i32 %32, 0
  br i1 %tobool61, label %lor.lhs.false, label %if.then.69

lor.lhs.false:                                    ; preds = %if.end.60
  %33 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl62 = bitcast %union.tree_node* %33 to %struct.tree_decl*
  %uninlinable63 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl62, i32 0, i32 5
  %34 = bitcast i48* %uninlinable63 to i64*
  %bf.load64 = load i64, i64* %34, align 8
  %bf.lshr65 = lshr i64 %bf.load64, 36
  %bf.clear66 = and i64 %bf.lshr65, 1
  %bf.cast67 = trunc i64 %bf.clear66 to i32
  %tobool68 = icmp ne i32 %bf.cast67, 0
  br i1 %tobool68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %lor.lhs.false, %if.end.60
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %lor.lhs.false
  %35 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %tobool71 = icmp ne %struct.inline_data* %35, null
  br i1 %tobool71, label %if.then.72, label %if.end.106

if.then.72:                                       ; preds = %if.end.70
  store i64 0, i64* %i73, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %36 = load i64, i64* %i73, align 8
  %37 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %37, i32 0, i32 0
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %38, i32 0, i32 1
  %39 = load i64, i64* %elements_used, align 8
  %cmp74 = icmp ult i64 %36, %39
  br i1 %cmp74, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load i64, i64* %i73, align 8
  %41 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns76 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %41, i32 0, i32 0
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns76, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx77 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %40
  %43 = load %union.tree_node*, %union.tree_node** %arrayidx77, align 8
  %44 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %cmp78 = icmp eq %union.tree_node* %43, %44
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.81
  %45 = load i64, i64* %i73, align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* %i73, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl82 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %inlined_fns = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl82, i32 0, i32 21
  %47 = load %union.tree_node*, %union.tree_node** %inlined_fns, align 8
  %tobool83 = icmp ne %union.tree_node* %47, null
  br i1 %tobool83, label %if.then.84, label %if.end.105

if.then.84:                                       ; preds = %for.end
  %48 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl86 = bitcast %union.tree_node* %48 to %struct.tree_decl*
  %inlined_fns87 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl86, i32 0, i32 21
  %49 = load %union.tree_node*, %union.tree_node** %inlined_fns87, align 8
  store %union.tree_node* %49, %union.tree_node** %inlined_fns85, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.102, %if.then.84
  %50 = load i32, i32* %j, align 4
  %51 = load %union.tree_node*, %union.tree_node** %inlined_fns85, align 8
  %vec = bitcast %union.tree_node* %51 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %52 = load i32, i32* %length, align 4
  %cmp89 = icmp slt i32 %50, %52
  br i1 %cmp89, label %for.body.91, label %for.end.104

for.body.91:                                      ; preds = %for.cond.88
  %53 = load i32, i32* %j, align 4
  %idxprom = sext i32 %53 to i64
  %54 = load %union.tree_node*, %union.tree_node** %inlined_fns85, align 8
  %vec92 = bitcast %union.tree_node* %54 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec92, i32 0, i32 2
  %arrayidx93 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 %idxprom
  %55 = load %union.tree_node*, %union.tree_node** %arrayidx93, align 8
  %56 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns94 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %56, i32 0, i32 0
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns94, align 8
  %data95 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %57, i32 0, i32 4
  %tree96 = bitcast %union.varray_data_tag* %data95 to [1 x %union.tree_node*]*
  %arrayidx97 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree96, i32 0, i64 0
  %58 = load %union.tree_node*, %union.tree_node** %arrayidx97, align 8
  %cmp98 = icmp eq %union.tree_node* %55, %58
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %for.body.91
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %for.body.91
  br label %for.inc.102

for.inc.102:                                      ; preds = %if.end.101
  %59 = load i32, i32* %j, align 4
  %inc103 = add nsw i32 %59, 1
  store i32 %inc103, i32* %j, align 4
  br label %for.cond.88

for.end.104:                                      ; preds = %for.cond.88
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %for.end
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.70
  %60 = load i32, i32* %inlinable, align 4
  store i32 %60, i32* %retval
  br label %return

return:                                           ; preds = %if.end.106, %if.then.100, %if.then.80, %if.then.69, %if.then
  %61 = load i32, i32* %retval
  ret i32 %61
}

; Function Attrs: nounwind uwtable
define void @optimize_inline_calls(%union.tree_node* %fn) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  %id = alloca %struct.inline_data, align 8
  %prev_fn = alloca %union.tree_node*, align 8
  %ifn = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = bitcast %struct.inline_data* %id to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 72, i32 8, i1 false)
  %call = call %struct.varray_head_tag* @varray_init(i64 32, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %fns, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %fns2 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns2, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 0
  %4 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %fns3 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns3, align 8
  %fns4 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns4, align 8
  %num_elements5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements5, align 8
  %mul = mul i64 2, %7
  %call6 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %5, i64 %mul)
  %fns7 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call6, %struct.varray_head_tag** %fns7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %8 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %fns8 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns8, align 8
  %elements_used9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %elements_used9, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %elements_used9, align 8
  %fns10 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns10, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %10
  store %union.tree_node* %8, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store %union.tree_node* null, %union.tree_node** %prev_fn, align 8
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %tobool = icmp ne %union.tree_node* %12, null
  br i1 %tobool, label %if.then.11, label %if.end.34

if.then.11:                                       ; preds = %do.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %fns13 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns13, align 8
  %elements_used14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %13, i32 0, i32 1
  %14 = load i64, i64* %elements_used14, align 8
  %fns15 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns15, align 8
  %num_elements16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 0
  %16 = load i64, i64* %num_elements16, align 8
  %cmp17 = icmp uge i64 %14, %16
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.12
  %fns19 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns19, align 8
  %fns20 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %18 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns20, align 8
  %num_elements21 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %18, i32 0, i32 0
  %19 = load i64, i64* %num_elements21, align 8
  %mul22 = mul i64 2, %19
  %call23 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %17, i64 %mul22)
  %fns24 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call23, %struct.varray_head_tag** %fns24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.18, %do.body.12
  %20 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %fns26 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns26, align 8
  %elements_used27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 1
  %22 = load i64, i64* %elements_used27, align 8
  %inc28 = add i64 %22, 1
  store i64 %inc28, i64* %elements_used27, align 8
  %fns29 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns29, align 8
  %data30 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %23, i32 0, i32 4
  %tree31 = bitcast %union.varray_data_tag* %data30 to [1 x %union.tree_node*]*
  %arrayidx32 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree31, i32 0, i64 %22
  store %union.tree_node* %20, %union.tree_node** %arrayidx32, align 8
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.25
  %24 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  store %union.tree_node* %24, %union.tree_node** %prev_fn, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %do.end
  %25 = load %union.tree_node* (i8*, %union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 3), align 8
  %fns35 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %26 = bitcast %struct.varray_head_tag** %fns35 to i8*
  %27 = load %union.tree_node*, %union.tree_node** %prev_fn, align 8
  %call36 = call %union.tree_node* %25(i8* %26, %union.tree_node* %27)
  store %union.tree_node* %call36, %union.tree_node** %prev_fn, align 8
  %call37 = call %struct.varray_head_tag* @varray_init(i64 32, i64 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  %target_exprs = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 5
  store %struct.varray_head_tag* %call37, %struct.varray_head_tag** %target_exprs, align 8
  %call38 = call %struct.varray_head_tag* @varray_init(i64 32, i64 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %inlined_fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  store %struct.varray_head_tag* %call38, %struct.varray_head_tag** %inlined_fns, align 8
  %fns39 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns39, align 8
  %elements_used40 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %28, i32 0, i32 1
  %29 = load i64, i64* %elements_used40, align 8
  %conv = trunc i64 %29 to i32
  %first_inlined_fn = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 1
  store i32 %conv, i32* %first_inlined_fn, align 4
  %30 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8
  %31 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** @htab_eq_pointer, align 8
  %call41 = call %struct.htab* @htab_create(i64 37, i32 (i8*)* %30, i32 (i8*, i8*)* %31, void (i8*)* null)
  %tree_pruner = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 9
  store %struct.htab* %call41, %struct.htab** %tree_pruner, align 8
  %32 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl = bitcast %union.tree_node* %32 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 20
  call void @expand_calls_inline(%union.tree_node** %saved_tree, %struct.inline_data* %id)
  %tree_pruner42 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 9
  %33 = load %struct.htab*, %struct.htab** %tree_pruner42, align 8
  call void @htab_delete(%struct.htab* %33)
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.34
  %fns44 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %34 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns44, align 8
  %tobool45 = icmp ne %struct.varray_head_tag* %34, null
  br i1 %tobool45, label %if.then.46, label %if.end.49

if.then.46:                                       ; preds = %do.body.43
  %fns47 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %35 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns47, align 8
  %36 = bitcast %struct.varray_head_tag* %35 to i8*
  call void @free(i8* %36) #1
  %fns48 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %fns48, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %do.body.43
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %do.body.51

do.body.51:                                       ; preds = %do.end.50
  %target_exprs52 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 5
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs52, align 8
  %tobool53 = icmp ne %struct.varray_head_tag* %37, null
  br i1 %tobool53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %do.body.51
  %target_exprs55 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 5
  %38 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs55, align 8
  %39 = bitcast %struct.varray_head_tag* %38 to i8*
  call void @free(i8* %39) #1
  %target_exprs56 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 5
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %target_exprs56, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %do.body.51
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %40 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl59 = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %lang_specific = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 24
  %41 = load %struct.lang_decl*, %struct.lang_decl** %lang_specific, align 8
  %tobool60 = icmp ne %struct.lang_decl* %41, null
  br i1 %tobool60, label %if.then.61, label %if.end.76

if.then.61:                                       ; preds = %do.end.58
  %inlined_fns62 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns62, align 8
  %elements_used63 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 1
  %43 = load i64, i64* %elements_used63, align 8
  %conv64 = trunc i64 %43 to i32
  %call65 = call %union.tree_node* @make_tree_vec(i32 %conv64)
  store %union.tree_node* %call65, %union.tree_node** %ifn, align 8
  %44 = load %union.tree_node*, %union.tree_node** %ifn, align 8
  %vec = bitcast %union.tree_node* %44 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 2
  %arrayidx66 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 0
  %45 = bitcast %union.tree_node** %arrayidx66 to i8*
  %inlined_fns67 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  %46 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns67, align 8
  %data68 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %46, i32 0, i32 4
  %tree69 = bitcast %union.varray_data_tag* %data68 to [1 x %union.tree_node*]*
  %arrayidx70 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree69, i32 0, i64 0
  %47 = bitcast %union.tree_node** %arrayidx70 to i8*
  %inlined_fns71 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns71, align 8
  %elements_used72 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 1
  %49 = load i64, i64* %elements_used72, align 8
  %mul73 = mul i64 %49, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 %mul73, i32 8, i1 false)
  %50 = load %union.tree_node*, %union.tree_node** %ifn, align 8
  %51 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl74 = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %inlined_fns75 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl74, i32 0, i32 21
  store %union.tree_node* %50, %union.tree_node** %inlined_fns75, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.61, %do.end.58
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.76
  %inlined_fns78 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns78, align 8
  %tobool79 = icmp ne %struct.varray_head_tag* %52, null
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %do.body.77
  %inlined_fns81 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  %53 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns81, align 8
  %54 = bitcast %struct.varray_head_tag* %53 to i8*
  call void @free(i8* %54) #1
  %inlined_fns82 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 6
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %inlined_fns82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %do.body.77
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #2

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #2

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @expand_calls_inline(%union.tree_node** %tp, %struct.inline_data* %id) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %1 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %2 = bitcast %struct.inline_data* %1 to i8*
  %3 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %tree_pruner = getelementptr inbounds %struct.inline_data, %struct.inline_data* %3, i32 0, i32 9
  %4 = load %struct.htab*, %struct.htab** %tree_pruner, align 8
  %5 = bitcast %struct.htab* %4 to i8*
  %call = call %union.tree_node* @walk_tree(%union.tree_node** %0, %union.tree_node* (%union.tree_node**, i32*, i8*)* @expand_call_inline, i8* %2, i8* %5)
  ret void
}

declare void @htab_delete(%struct.htab*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare %union.tree_node* @make_tree_vec(i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @clone_body(%union.tree_node* %clone, %union.tree_node* %fn, i8* %arg_map) #0 {
entry:
  %clone.addr = alloca %union.tree_node*, align 8
  %fn.addr = alloca %union.tree_node*, align 8
  %arg_map.addr = alloca i8*, align 8
  %id = alloca %struct.inline_data, align 8
  store %union.tree_node* %clone, %union.tree_node** %clone.addr, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  store i8* %arg_map, i8** %arg_map.addr, align 8
  %0 = bitcast %struct.inline_data* %id to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 72, i32 8, i1 false)
  %call = call %struct.varray_head_tag* @varray_init(i64 2, i64 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** %fns, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %fns2 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns2, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 0
  %4 = load i64, i64* %num_elements, align 8
  %cmp = icmp uge i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %fns3 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns3, align 8
  %fns4 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns4, align 8
  %num_elements5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements5, align 8
  %mul = mul i64 2, %7
  %call6 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %5, i64 %mul)
  %fns7 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call6, %struct.varray_head_tag** %fns7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %8 = load %union.tree_node*, %union.tree_node** %clone.addr, align 8
  %fns8 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns8, align 8
  %elements_used9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %elements_used9, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %elements_used9, align 8
  %fns10 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns10, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %10
  store %union.tree_node* %8, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %fns12 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns12, align 8
  %elements_used13 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 1
  %13 = load i64, i64* %elements_used13, align 8
  %fns14 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns14, align 8
  %num_elements15 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 0
  %15 = load i64, i64* %num_elements15, align 8
  %cmp16 = icmp uge i64 %13, %15
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %do.body.11
  %fns18 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns18, align 8
  %fns19 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns19, align 8
  %num_elements20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 0
  %18 = load i64, i64* %num_elements20, align 8
  %mul21 = mul i64 2, %18
  %call22 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %16, i64 %mul21)
  %fns23 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* %call22, %struct.varray_head_tag** %fns23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.17, %do.body.11
  %19 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %fns25 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns25, align 8
  %elements_used26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 1
  %21 = load i64, i64* %elements_used26, align 8
  %inc27 = add i64 %21, 1
  store i64 %inc27, i64* %elements_used26, align 8
  %fns28 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns28, align 8
  %data29 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %tree30 = bitcast %union.varray_data_tag* %data29 to [1 x %union.tree_node*]*
  %arrayidx31 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree30, i32 0, i64 %21
  store %union.tree_node* %19, %union.tree_node** %arrayidx31, align 8
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.24
  %23 = load i8*, i8** %arg_map.addr, align 8
  %24 = bitcast i8* %23 to %struct.splay_tree_s*
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 3
  store %struct.splay_tree_s* %24, %struct.splay_tree_s** %decl_map, align 8
  %cloning_p = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 8
  store i8 1, i8* %cloning_p, align 1
  %call33 = call %union.tree_node* @copy_body(%struct.inline_data* %id)
  %25 = load %union.tree_node*, %union.tree_node** %clone.addr, align 8
  %decl = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 20
  %26 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  %common = bitcast %union.tree_node* %26 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  store %union.tree_node* %call33, %union.tree_node** %chain, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %do.end.32
  %fns35 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns35, align 8
  %tobool = icmp ne %struct.varray_head_tag* %27, null
  br i1 %tobool, label %if.then.36, label %if.end.39

if.then.36:                                       ; preds = %do.body.34
  %fns37 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  %28 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns37, align 8
  %29 = bitcast %struct.varray_head_tag* %28 to i8*
  call void @free(i8* %29) #1
  %fns38 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %id, i32 0, i32 0
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %fns38, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.36, %do.body.34
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @copy_body(%struct.inline_data* %id) #0 {
entry:
  %id.addr = alloca %struct.inline_data*, align 8
  %body = alloca %union.tree_node*, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %0, i32 0, i32 0
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %3, i32 0, i32 0
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %sub
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  %decl = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 20
  %6 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  store %union.tree_node* %6, %union.tree_node** %body, align 8
  %7 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %8 = bitcast %struct.inline_data* %7 to i8*
  %call = call %union.tree_node* @walk_tree(%union.tree_node** %body, %union.tree_node* (%union.tree_node**, i32*, i8*)* @copy_body_r, i8* %8, i8* null)
  %9 = load %union.tree_node*, %union.tree_node** %body, align 8
  ret %union.tree_node* %9
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @walk_tree(%union.tree_node** %tp, %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, i8* %data, i8* %htab_) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %tp.addr = alloca %union.tree_node**, align 8
  %func.addr = alloca %union.tree_node* (%union.tree_node**, i32*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %htab_.addr = alloca i8*, align 8
  %htab = alloca %struct.htab*, align 8
  %code = alloca i32, align 4
  %walk_subtrees = alloca i32, align 4
  %result = alloca %union.tree_node*, align 8
  %slot = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %len184 = alloca i32, align 4
  %arg = alloca %union.tree_node*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %htab_, i8** %htab_.addr, align 8
  %0 = load i8*, i8** %htab_.addr, align 8
  %1 = bitcast i8* %0 to %struct.htab*
  store %struct.htab* %1, %struct.htab** %htab, align 8
  br label %tail_recurse

tail_recurse:                                     ; preds = %do.body.288, %do.body.275, %do.body.263, %do.body.216, %do.body.212, %do.body.200, %do.body.179, %do.body.168, %do.body.156, %do.body.144, %do.body, %entry
  %2 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %tail_recurse
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %tail_recurse
  %4 = load %struct.htab*, %struct.htab** %htab, align 8
  %tobool1 = icmp ne %struct.htab* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.htab*, %struct.htab** %htab, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %8 = bitcast %union.tree_node* %7 to i8*
  %call = call i8* @htab_find(%struct.htab* %5, i8* %8)
  %tobool3 = icmp ne i8* %call, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.2
  %9 = load %struct.htab*, %struct.htab** %htab, align 8
  %10 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %10, align 8
  %12 = bitcast %union.tree_node* %11 to i8*
  %call6 = call i8** @htab_find_slot(%struct.htab* %9, i8* %12, i32 1)
  store i8** %call6, i8*** %slot, align 8
  %13 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %14 = load %union.tree_node*, %union.tree_node** %13, align 8
  %15 = bitcast %union.tree_node* %14 to i8*
  %16 = load i8**, i8*** %slot, align 8
  store i8* %15, i8** %16, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.5, %if.end
  store i32 1, i32* %walk_subtrees, align 4
  %17 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %18 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %19 = load i8*, i8** %data.addr, align 8
  %call8 = call %union.tree_node* %17(%union.tree_node** %18, i32* %walk_subtrees, i8* %19)
  store %union.tree_node* %call8, %union.tree_node** %result, align 8
  %20 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool9 = icmp ne %union.tree_node* %20, null
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %21 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %21, %union.tree_node** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %22 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8
  %common = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code12, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %24 = load i32, i32* %walk_subtrees, align 4
  %tobool13 = icmp ne i32 %24, 0
  br i1 %tobool13, label %if.end.23, label %if.then.14

if.then.14:                                       ; preds = %if.end.11
  %25 = load i32, i32* %code, align 4
  %call15 = call i32 @statement_code_p(i32 %25)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.14
  %26 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %26, 2
  br i1 %cmp, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false
  %27 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 4), align 8
  %28 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %29 = load %union.tree_node*, %union.tree_node** %28, align 8
  %call18 = call i32 %27(%union.tree_node* %29)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false, %if.then.14
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %30 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8
  %common21 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 0
  store %union.tree_node** %chain, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end:                                           ; No predecessors!
  br label %if.end.22

if.else:                                          ; preds = %lor.lhs.false.17
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end.11
  %32 = load i32, i32* %code, align 4
  %idxprom = sext i32 %32 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %33 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %33 to i32
  %cmp24 = icmp eq i32 %conv, 60
  br i1 %cmp24, label %if.then.56, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.end.23
  %34 = load i32, i32* %code, align 4
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom27
  %35 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %35 to i32
  %cmp30 = icmp eq i32 %conv29, 49
  br i1 %cmp30, label %if.then.56, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.26
  %36 = load i32, i32* %code, align 4
  %idxprom33 = sext i32 %36 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom33
  %37 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %37 to i32
  %cmp36 = icmp eq i32 %conv35, 50
  br i1 %cmp36, label %if.then.56, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.32
  %38 = load i32, i32* %code, align 4
  %idxprom39 = sext i32 %38 to i64
  %arrayidx40 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom39
  %39 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %39 to i32
  %cmp42 = icmp eq i32 %conv41, 101
  br i1 %cmp42, label %if.then.56, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.38
  %40 = load i32, i32* %code, align 4
  %idxprom45 = sext i32 %40 to i64
  %arrayidx46 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom45
  %41 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %41 to i32
  %cmp48 = icmp eq i32 %conv47, 114
  br i1 %cmp48, label %if.then.56, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.44
  %42 = load i32, i32* %code, align 4
  %idxprom51 = sext i32 %42 to i64
  %arrayidx52 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom51
  %43 = load i8, i8* %arrayidx52, align 1
  %conv53 = sext i8 %43 to i32
  %cmp54 = icmp eq i32 %conv53, 115
  br i1 %cmp54, label %if.then.56, label %if.else.149

if.then.56:                                       ; preds = %lor.lhs.false.50, %lor.lhs.false.44, %lor.lhs.false.38, %lor.lhs.false.32, %lor.lhs.false.26, %if.end.23
  %44 = load i32, i32* %code, align 4
  %call57 = call i32 @statement_code_p(i32 %44)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.lhs.true, label %if.end.64

land.lhs.true:                                    ; preds = %if.then.56
  %45 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  %common59 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %lang_flag_2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 2
  %bf.load60 = load i32, i32* %lang_flag_2, align 8
  %bf.lshr = lshr i32 %bf.load60, 26
  %bf.clear61 = and i32 %bf.lshr, 1
  %tobool62 = icmp ne i32 %bf.clear61, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true
  %47 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %48 = load %union.tree_node*, %union.tree_node** %47, align 8
  %exp = bitcast %union.tree_node* %48 to %struct.tree_exp*
  %complexity = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 1
  %49 = load i32, i32* %complexity, align 4
  store i32 %49, i32* @lineno, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.63, %land.lhs.true, %if.then.56
  %50 = load i32, i32* %code, align 4
  %call65 = call i32 @first_rtl_op(i32 %50)
  store i32 %call65, i32* %len, align 4
  %51 = load i32, i32* %code, align 4
  %cmp66 = icmp eq i32 %51, 50
  br i1 %cmp66, label %land.lhs.true.68, label %if.end.77

land.lhs.true.68:                                 ; preds = %if.end.64
  %52 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %53 = load %union.tree_node*, %union.tree_node** %52, align 8
  %exp69 = bitcast %union.tree_node* %53 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp69, i32 0, i32 2
  %arrayidx70 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 3
  %54 = load %union.tree_node*, %union.tree_node** %arrayidx70, align 8
  %55 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %56 = load %union.tree_node*, %union.tree_node** %55, align 8
  %exp71 = bitcast %union.tree_node* %56 to %struct.tree_exp*
  %operands72 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp71, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands72, i32 0, i64 1
  %57 = load %union.tree_node*, %union.tree_node** %arrayidx73, align 8
  %cmp74 = icmp eq %union.tree_node* %54, %57
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %land.lhs.true.68
  %58 = load i32, i32* %len, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %len, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %land.lhs.true.68, %if.end.64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.77
  %59 = load i32, i32* %i, align 4
  %60 = load i32, i32* %len, align 4
  %cmp78 = icmp slt i32 %59, %60
  br i1 %cmp78, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.80

do.body.80:                                       ; preds = %for.body
  %61 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %61 to i64
  %62 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %63 = load %union.tree_node*, %union.tree_node** %62, align 8
  %exp82 = bitcast %union.tree_node* %63 to %struct.tree_exp*
  %operands83 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp82, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands83, i32 0, i64 %idxprom81
  %64 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %65 = load i8*, i8** %data.addr, align 8
  %66 = load %struct.htab*, %struct.htab** %htab, align 8
  %67 = bitcast %struct.htab* %66 to i8*
  %call85 = call %union.tree_node* @walk_tree(%union.tree_node** %arrayidx84, %union.tree_node* (%union.tree_node**, i32*, i8*)* %64, i8* %65, i8* %67)
  store %union.tree_node* %call85, %union.tree_node** %result, align 8
  %68 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool86 = icmp ne %union.tree_node* %68, null
  br i1 %tobool86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.body.80
  %69 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %69, %union.tree_node** %retval
  br label %return

if.end.88:                                        ; preds = %do.body.80
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %for.inc

for.inc:                                          ; preds = %do.end.89
  %70 = load i32, i32* %i, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %71 = load i32, i32* %code, align 4
  %call90 = call i32 @statement_code_p(i32 %71)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %if.then.92, label %if.end.148

if.then.92:                                       ; preds = %for.end
  %72 = load i32, i32* %code, align 4
  %cmp93 = icmp eq i32 %72, 154
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.143

land.lhs.true.95:                                 ; preds = %if.then.92
  %73 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %74 = load %union.tree_node*, %union.tree_node** %73, align 8
  %exp96 = bitcast %union.tree_node* %74 to %struct.tree_exp*
  %operands97 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp96, i32 0, i32 2
  %arrayidx98 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands97, i32 0, i64 0
  %75 = load %union.tree_node*, %union.tree_node** %arrayidx98, align 8
  %tobool99 = icmp ne %union.tree_node* %75, null
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.143

land.lhs.true.100:                                ; preds = %land.lhs.true.95
  %76 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %77 = load %union.tree_node*, %union.tree_node** %76, align 8
  %exp101 = bitcast %union.tree_node* %77 to %struct.tree_exp*
  %operands102 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp101, i32 0, i32 2
  %arrayidx103 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands102, i32 0, i64 0
  %78 = load %union.tree_node*, %union.tree_node** %arrayidx103, align 8
  %common104 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %code105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 2
  %bf.load106 = load i32, i32* %code105, align 8
  %bf.clear107 = and i32 %bf.load106, 255
  %idxprom108 = sext i32 %bf.clear107 to i64
  %arrayidx109 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom108
  %79 = load i8, i8* %arrayidx109, align 1
  %conv110 = sext i8 %79 to i32
  %cmp111 = icmp eq i32 %conv110, 100
  br i1 %cmp111, label %if.then.113, label %if.end.143

if.then.113:                                      ; preds = %land.lhs.true.100
  br label %do.body.114

do.body.114:                                      ; preds = %if.then.113
  %80 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %81 = load %union.tree_node*, %union.tree_node** %80, align 8
  %exp115 = bitcast %union.tree_node* %81 to %struct.tree_exp*
  %operands116 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp115, i32 0, i32 2
  %arrayidx117 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands116, i32 0, i64 0
  %82 = load %union.tree_node*, %union.tree_node** %arrayidx117, align 8
  %decl = bitcast %union.tree_node* %82 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %83 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %84 = load i8*, i8** %data.addr, align 8
  %85 = load %struct.htab*, %struct.htab** %htab, align 8
  %86 = bitcast %struct.htab* %85 to i8*
  %call118 = call %union.tree_node* @walk_tree(%union.tree_node** %initial, %union.tree_node* (%union.tree_node**, i32*, i8*)* %83, i8* %84, i8* %86)
  store %union.tree_node* %call118, %union.tree_node** %result, align 8
  %87 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool119 = icmp ne %union.tree_node* %87, null
  br i1 %tobool119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.body.114
  %88 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %88, %union.tree_node** %retval
  br label %return

if.end.121:                                       ; preds = %do.body.114
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %do.body.123

do.body.123:                                      ; preds = %do.end.122
  %89 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %90 = load %union.tree_node*, %union.tree_node** %89, align 8
  %exp124 = bitcast %union.tree_node* %90 to %struct.tree_exp*
  %operands125 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp124, i32 0, i32 2
  %arrayidx126 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands125, i32 0, i64 0
  %91 = load %union.tree_node*, %union.tree_node** %arrayidx126, align 8
  %decl127 = bitcast %union.tree_node* %91 to %struct.tree_decl*
  %size = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl127, i32 0, i32 4
  %92 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %93 = load i8*, i8** %data.addr, align 8
  %94 = load %struct.htab*, %struct.htab** %htab, align 8
  %95 = bitcast %struct.htab* %94 to i8*
  %call128 = call %union.tree_node* @walk_tree(%union.tree_node** %size, %union.tree_node* (%union.tree_node**, i32*, i8*)* %92, i8* %93, i8* %95)
  store %union.tree_node* %call128, %union.tree_node** %result, align 8
  %96 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool129 = icmp ne %union.tree_node* %96, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %do.body.123
  %97 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %97, %union.tree_node** %retval
  br label %return

if.end.131:                                       ; preds = %do.body.123
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  br label %do.body.133

do.body.133:                                      ; preds = %do.end.132
  %98 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %99 = load %union.tree_node*, %union.tree_node** %98, align 8
  %exp134 = bitcast %union.tree_node* %99 to %struct.tree_exp*
  %operands135 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp134, i32 0, i32 2
  %arrayidx136 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands135, i32 0, i64 0
  %100 = load %union.tree_node*, %union.tree_node** %arrayidx136, align 8
  %decl137 = bitcast %union.tree_node* %100 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl137, i32 0, i32 7
  %101 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %102 = load i8*, i8** %data.addr, align 8
  %103 = load %struct.htab*, %struct.htab** %htab, align 8
  %104 = bitcast %struct.htab* %103 to i8*
  %call138 = call %union.tree_node* @walk_tree(%union.tree_node** %size_unit, %union.tree_node* (%union.tree_node**, i32*, i8*)* %101, i8* %102, i8* %104)
  store %union.tree_node* %call138, %union.tree_node** %result, align 8
  %105 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool139 = icmp ne %union.tree_node* %105, null
  br i1 %tobool139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %do.body.133
  %106 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %106, %union.tree_node** %retval
  br label %return

if.end.141:                                       ; preds = %do.body.133
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %land.lhs.true.100, %land.lhs.true.95, %if.then.92
  br label %do.body.144

do.body.144:                                      ; preds = %if.end.143
  %107 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %108 = load %union.tree_node*, %union.tree_node** %107, align 8
  %common145 = bitcast %union.tree_node* %108 to %struct.tree_common*
  %chain146 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common145, i32 0, i32 0
  store %union.tree_node** %chain146, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.147:                                       ; No predecessors!
  br label %if.end.148

if.end.148:                                       ; preds = %do.end.147, %for.end
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.else.149:                                      ; preds = %lor.lhs.false.50
  %109 = load i32, i32* %code, align 4
  %idxprom150 = sext i32 %109 to i64
  %arrayidx151 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom150
  %110 = load i8, i8* %arrayidx151, align 1
  %conv152 = sext i8 %110 to i32
  %cmp153 = icmp eq i32 %conv152, 100
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.else.149
  br label %do.body.156

do.body.156:                                      ; preds = %if.then.155
  %111 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %112 = load %union.tree_node*, %union.tree_node** %111, align 8
  %common157 = bitcast %union.tree_node* %112 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common157, i32 0, i32 1
  store %union.tree_node** %type, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.158:                                       ; No predecessors!
  br label %if.end.159

if.end.159:                                       ; preds = %do.end.158, %if.else.149
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159
  %113 = load %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 0), align 8
  %114 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %115 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %116 = load i8*, i8** %data.addr, align 8
  %117 = load %struct.htab*, %struct.htab** %htab, align 8
  %118 = bitcast %struct.htab* %117 to i8*
  %call161 = call %union.tree_node* %113(%union.tree_node** %114, i32* %walk_subtrees, %union.tree_node* (%union.tree_node**, i32*, i8*)* %115, i8* %116, i8* %118)
  store %union.tree_node* %call161, %union.tree_node** %result, align 8
  %119 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool162 = icmp ne %union.tree_node* %119, null
  br i1 %tobool162, label %if.then.165, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %if.end.160
  %120 = load i32, i32* %walk_subtrees, align 4
  %tobool164 = icmp ne i32 %120, 0
  br i1 %tobool164, label %if.end.166, label %if.then.165

if.then.165:                                      ; preds = %lor.lhs.false.163, %if.end.160
  %121 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %121, %union.tree_node** %retval
  br label %return

if.end.166:                                       ; preds = %lor.lhs.false.163
  %122 = load i32, i32* %code, align 4
  switch i32 %122, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 25, label %sw.bb
    i32 26, label %sw.bb
    i32 28, label %sw.bb
    i32 29, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 9, label %sw.bb
    i32 5, label %sw.bb
    i32 11, label %sw.bb
    i32 21, label %sw.bb
    i32 10, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 13, label %sw.bb.167
    i32 15, label %sw.bb.167
    i32 2, label %sw.bb.172
    i32 3, label %sw.bb.183
    i32 27, label %sw.bb.205
    i32 46, label %sw.bb.215
    i32 16, label %sw.bb.221
    i32 23, label %sw.bb.229
    i32 18, label %sw.bb.254
    i32 6, label %sw.bb.267
    i32 14, label %sw.bb.279
  ]

sw.bb:                                            ; preds = %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166, %if.end.166
  br label %sw.epilog

sw.bb.167:                                        ; preds = %if.end.166, %if.end.166
  br label %do.body.168

do.body.168:                                      ; preds = %sw.bb.167
  %123 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %124 = load %union.tree_node*, %union.tree_node** %123, align 8
  %common169 = bitcast %union.tree_node* %124 to %struct.tree_common*
  %type170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common169, i32 0, i32 1
  store %union.tree_node** %type170, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.171:                                       ; No predecessors!
  br label %sw.epilog

sw.bb.172:                                        ; preds = %if.end.166
  br label %do.body.173

do.body.173:                                      ; preds = %sw.bb.172
  %125 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %126 = load %union.tree_node*, %union.tree_node** %125, align 8
  %list = bitcast %union.tree_node* %126 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %127 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %128 = load i8*, i8** %data.addr, align 8
  %129 = load %struct.htab*, %struct.htab** %htab, align 8
  %130 = bitcast %struct.htab* %129 to i8*
  %call174 = call %union.tree_node* @walk_tree(%union.tree_node** %value, %union.tree_node* (%union.tree_node**, i32*, i8*)* %127, i8* %128, i8* %130)
  store %union.tree_node* %call174, %union.tree_node** %result, align 8
  %131 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool175 = icmp ne %union.tree_node* %131, null
  br i1 %tobool175, label %if.then.176, label %if.end.177

if.then.176:                                      ; preds = %do.body.173
  %132 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %132, %union.tree_node** %retval
  br label %return

if.end.177:                                       ; preds = %do.body.173
  br label %do.end.178

do.end.178:                                       ; preds = %if.end.177
  br label %do.body.179

do.body.179:                                      ; preds = %do.end.178
  %133 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %134 = load %union.tree_node*, %union.tree_node** %133, align 8
  %common180 = bitcast %union.tree_node* %134 to %struct.tree_common*
  %chain181 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common180, i32 0, i32 0
  store %union.tree_node** %chain181, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.182:                                       ; No predecessors!
  br label %sw.epilog

sw.bb.183:                                        ; preds = %if.end.166
  %135 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %136 = load %union.tree_node*, %union.tree_node** %135, align 8
  %vec = bitcast %union.tree_node* %136 to %struct.tree_vec*
  %length = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec, i32 0, i32 1
  %137 = load i32, i32* %length, align 4
  store i32 %137, i32* %len184, align 4
  %138 = load i32, i32* %len184, align 4
  %cmp185 = icmp eq i32 %138, 0
  br i1 %cmp185, label %if.then.187, label %if.end.188

if.then.187:                                      ; preds = %sw.bb.183
  br label %sw.epilog

if.end.188:                                       ; preds = %sw.bb.183
  br label %while.cond

while.cond:                                       ; preds = %do.end.199, %if.end.188
  %139 = load i32, i32* %len184, align 4
  %dec189 = add nsw i32 %139, -1
  store i32 %dec189, i32* %len184, align 4
  %tobool190 = icmp ne i32 %dec189, 0
  br i1 %tobool190, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body.191

do.body.191:                                      ; preds = %while.body
  %140 = load i32, i32* %len184, align 4
  %idxprom192 = sext i32 %140 to i64
  %141 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %142 = load %union.tree_node*, %union.tree_node** %141, align 8
  %vec193 = bitcast %union.tree_node* %142 to %struct.tree_vec*
  %a = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec193, i32 0, i32 2
  %arrayidx194 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a, i32 0, i64 %idxprom192
  %143 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %144 = load i8*, i8** %data.addr, align 8
  %145 = load %struct.htab*, %struct.htab** %htab, align 8
  %146 = bitcast %struct.htab* %145 to i8*
  %call195 = call %union.tree_node* @walk_tree(%union.tree_node** %arrayidx194, %union.tree_node* (%union.tree_node**, i32*, i8*)* %143, i8* %144, i8* %146)
  store %union.tree_node* %call195, %union.tree_node** %result, align 8
  %147 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool196 = icmp ne %union.tree_node* %147, null
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %do.body.191
  %148 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %148, %union.tree_node** %retval
  br label %return

if.end.198:                                       ; preds = %do.body.191
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.body.200

do.body.200:                                      ; preds = %while.end
  %149 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %150 = load %union.tree_node*, %union.tree_node** %149, align 8
  %vec201 = bitcast %union.tree_node* %150 to %struct.tree_vec*
  %a202 = getelementptr inbounds %struct.tree_vec, %struct.tree_vec* %vec201, i32 0, i32 2
  %arrayidx203 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %a202, i32 0, i64 0
  store %union.tree_node** %arrayidx203, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.204:                                       ; No predecessors!
  br label %sw.bb.205

sw.bb.205:                                        ; preds = %if.end.166, %do.end.204
  br label %do.body.206

do.body.206:                                      ; preds = %sw.bb.205
  %151 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %152 = load %union.tree_node*, %union.tree_node** %151, align 8
  %complex = bitcast %union.tree_node* %152 to %struct.tree_complex*
  %real = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex, i32 0, i32 2
  %153 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %154 = load i8*, i8** %data.addr, align 8
  %155 = load %struct.htab*, %struct.htab** %htab, align 8
  %156 = bitcast %struct.htab* %155 to i8*
  %call207 = call %union.tree_node* @walk_tree(%union.tree_node** %real, %union.tree_node* (%union.tree_node**, i32*, i8*)* %153, i8* %154, i8* %156)
  store %union.tree_node* %call207, %union.tree_node** %result, align 8
  %157 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool208 = icmp ne %union.tree_node* %157, null
  br i1 %tobool208, label %if.then.209, label %if.end.210

if.then.209:                                      ; preds = %do.body.206
  %158 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %158, %union.tree_node** %retval
  br label %return

if.end.210:                                       ; preds = %do.body.206
  br label %do.end.211

do.end.211:                                       ; preds = %if.end.210
  br label %do.body.212

do.body.212:                                      ; preds = %do.end.211
  %159 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %160 = load %union.tree_node*, %union.tree_node** %159, align 8
  %complex213 = bitcast %union.tree_node* %160 to %struct.tree_complex*
  %imag = getelementptr inbounds %struct.tree_complex, %struct.tree_complex* %complex213, i32 0, i32 3
  store %union.tree_node** %imag, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.214:                                       ; No predecessors!
  br label %sw.bb.215

sw.bb.215:                                        ; preds = %if.end.166, %do.end.214
  br label %do.body.216

do.body.216:                                      ; preds = %sw.bb.215
  %161 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %162 = load %union.tree_node*, %union.tree_node** %161, align 8
  %exp217 = bitcast %union.tree_node* %162 to %struct.tree_exp*
  %operands218 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp217, i32 0, i32 2
  %arrayidx219 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands218, i32 0, i64 1
  store %union.tree_node** %arrayidx219, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.220:                                       ; No predecessors!
  br label %sw.bb.221

sw.bb.221:                                        ; preds = %if.end.166, %do.end.220
  br label %do.body.222

do.body.222:                                      ; preds = %sw.bb.221
  %163 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %164 = load %union.tree_node*, %union.tree_node** %163, align 8
  %type223 = bitcast %union.tree_node* %164 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type223, i32 0, i32 13
  %165 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %166 = load i8*, i8** %data.addr, align 8
  %167 = load %struct.htab*, %struct.htab** %htab, align 8
  %168 = bitcast %struct.htab* %167 to i8*
  %call224 = call %union.tree_node* @walk_tree(%union.tree_node** %maxval, %union.tree_node* (%union.tree_node**, i32*, i8*)* %165, i8* %166, i8* %168)
  store %union.tree_node* %call224, %union.tree_node** %result, align 8
  %169 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool225 = icmp ne %union.tree_node* %169, null
  br i1 %tobool225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %do.body.222
  %170 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %170, %union.tree_node** %retval
  br label %return

if.end.227:                                       ; preds = %do.body.222
  br label %do.end.228

do.end.228:                                       ; preds = %if.end.227
  br label %sw.bb.229

sw.bb.229:                                        ; preds = %if.end.166, %do.end.228
  br label %do.body.230

do.body.230:                                      ; preds = %sw.bb.229
  %171 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %172 = load %union.tree_node*, %union.tree_node** %171, align 8
  %common231 = bitcast %union.tree_node* %172 to %struct.tree_common*
  %type232 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common231, i32 0, i32 1
  %173 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %174 = load i8*, i8** %data.addr, align 8
  %175 = load %struct.htab*, %struct.htab** %htab, align 8
  %176 = bitcast %struct.htab* %175 to i8*
  %call233 = call %union.tree_node* @walk_tree(%union.tree_node** %type232, %union.tree_node* (%union.tree_node**, i32*, i8*)* %173, i8* %174, i8* %176)
  store %union.tree_node* %call233, %union.tree_node** %result, align 8
  %177 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool234 = icmp ne %union.tree_node* %177, null
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %do.body.230
  %178 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %178, %union.tree_node** %retval
  br label %return

if.end.236:                                       ; preds = %do.body.230
  br label %do.end.237

do.end.237:                                       ; preds = %if.end.236
  %179 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %180 = load %union.tree_node*, %union.tree_node** %179, align 8
  %type238 = bitcast %union.tree_node* %180 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type238, i32 0, i32 1
  %181 = load %union.tree_node*, %union.tree_node** %values, align 8
  store %union.tree_node* %181, %union.tree_node** %arg, align 8
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.250, %do.end.237
  %182 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %tobool240 = icmp ne %union.tree_node* %182, null
  br i1 %tobool240, label %for.body.241, label %for.end.253

for.body.241:                                     ; preds = %for.cond.239
  br label %do.body.242

do.body.242:                                      ; preds = %for.body.241
  %183 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %list243 = bitcast %union.tree_node* %183 to %struct.tree_list*
  %value244 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list243, i32 0, i32 2
  %184 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %185 = load i8*, i8** %data.addr, align 8
  %186 = load %struct.htab*, %struct.htab** %htab, align 8
  %187 = bitcast %struct.htab* %186 to i8*
  %call245 = call %union.tree_node* @walk_tree(%union.tree_node** %value244, %union.tree_node* (%union.tree_node**, i32*, i8*)* %184, i8* %185, i8* %187)
  store %union.tree_node* %call245, %union.tree_node** %result, align 8
  %188 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool246 = icmp ne %union.tree_node* %188, null
  br i1 %tobool246, label %if.then.247, label %if.end.248

if.then.247:                                      ; preds = %do.body.242
  %189 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %189, %union.tree_node** %retval
  br label %return

if.end.248:                                       ; preds = %do.body.242
  br label %do.end.249

do.end.249:                                       ; preds = %if.end.248
  br label %for.inc.250

for.inc.250:                                      ; preds = %do.end.249
  %190 = load %union.tree_node*, %union.tree_node** %arg, align 8
  %common251 = bitcast %union.tree_node* %190 to %struct.tree_common*
  %chain252 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common251, i32 0, i32 0
  %191 = load %union.tree_node*, %union.tree_node** %chain252, align 8
  store %union.tree_node* %191, %union.tree_node** %arg, align 8
  br label %for.cond.239

for.end.253:                                      ; preds = %for.cond.239
  br label %sw.epilog

sw.bb.254:                                        ; preds = %if.end.166
  br label %do.body.255

do.body.255:                                      ; preds = %sw.bb.254
  %192 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %193 = load %union.tree_node*, %union.tree_node** %192, align 8
  %common256 = bitcast %union.tree_node* %193 to %struct.tree_common*
  %type257 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common256, i32 0, i32 1
  %194 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %195 = load i8*, i8** %data.addr, align 8
  %196 = load %struct.htab*, %struct.htab** %htab, align 8
  %197 = bitcast %struct.htab* %196 to i8*
  %call258 = call %union.tree_node* @walk_tree(%union.tree_node** %type257, %union.tree_node* (%union.tree_node**, i32*, i8*)* %194, i8* %195, i8* %197)
  store %union.tree_node* %call258, %union.tree_node** %result, align 8
  %198 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool259 = icmp ne %union.tree_node* %198, null
  br i1 %tobool259, label %if.then.260, label %if.end.261

if.then.260:                                      ; preds = %do.body.255
  %199 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %199, %union.tree_node** %retval
  br label %return

if.end.261:                                       ; preds = %do.body.255
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  br label %do.body.263

do.body.263:                                      ; preds = %do.end.262
  %200 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %201 = load %union.tree_node*, %union.tree_node** %200, align 8
  %type264 = bitcast %union.tree_node* %201 to %struct.tree_type*
  %values265 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type264, i32 0, i32 1
  store %union.tree_node** %values265, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.266:                                       ; No predecessors!
  br label %sw.bb.267

sw.bb.267:                                        ; preds = %if.end.166, %do.end.266
  br label %do.body.268

do.body.268:                                      ; preds = %sw.bb.267
  %202 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %203 = load %union.tree_node*, %union.tree_node** %202, align 8
  %type269 = bitcast %union.tree_node* %203 to %struct.tree_type*
  %minval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type269, i32 0, i32 12
  %204 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %205 = load i8*, i8** %data.addr, align 8
  %206 = load %struct.htab*, %struct.htab** %htab, align 8
  %207 = bitcast %struct.htab* %206 to i8*
  %call270 = call %union.tree_node* @walk_tree(%union.tree_node** %minval, %union.tree_node* (%union.tree_node**, i32*, i8*)* %204, i8* %205, i8* %207)
  store %union.tree_node* %call270, %union.tree_node** %result, align 8
  %208 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool271 = icmp ne %union.tree_node* %208, null
  br i1 %tobool271, label %if.then.272, label %if.end.273

if.then.272:                                      ; preds = %do.body.268
  %209 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %209, %union.tree_node** %retval
  br label %return

if.end.273:                                       ; preds = %do.body.268
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %do.body.275

do.body.275:                                      ; preds = %do.end.274
  %210 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %211 = load %union.tree_node*, %union.tree_node** %210, align 8
  %type276 = bitcast %union.tree_node* %211 to %struct.tree_type*
  %maxval277 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type276, i32 0, i32 13
  store %union.tree_node** %maxval277, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.278:                                       ; No predecessors!
  br label %sw.bb.279

sw.bb.279:                                        ; preds = %if.end.166, %do.end.278
  br label %do.body.280

do.body.280:                                      ; preds = %sw.bb.279
  %212 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %213 = load %union.tree_node*, %union.tree_node** %212, align 8
  %common281 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %type282 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common281, i32 0, i32 1
  %214 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %215 = load i8*, i8** %data.addr, align 8
  %216 = load %struct.htab*, %struct.htab** %htab, align 8
  %217 = bitcast %struct.htab* %216 to i8*
  %call283 = call %union.tree_node* @walk_tree(%union.tree_node** %type282, %union.tree_node* (%union.tree_node**, i32*, i8*)* %214, i8* %215, i8* %217)
  store %union.tree_node* %call283, %union.tree_node** %result, align 8
  %218 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool284 = icmp ne %union.tree_node* %218, null
  br i1 %tobool284, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %do.body.280
  %219 = load %union.tree_node*, %union.tree_node** %result, align 8
  store %union.tree_node* %219, %union.tree_node** %retval
  br label %return

if.end.286:                                       ; preds = %do.body.280
  br label %do.end.287

do.end.287:                                       ; preds = %if.end.286
  br label %do.body.288

do.body.288:                                      ; preds = %do.end.287
  %220 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %221 = load %union.tree_node*, %union.tree_node** %220, align 8
  %type289 = bitcast %union.tree_node* %221 to %struct.tree_type*
  %maxval290 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type289, i32 0, i32 13
  store %union.tree_node** %maxval290, %union.tree_node*** %tp.addr, align 8
  br label %tail_recurse

do.end.291:                                       ; No predecessors!
  br label %sw.default

sw.default:                                       ; preds = %if.end.166, %do.end.291
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 1315, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.walk_tree, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %for.end.253, %if.then.187, %do.end.182, %do.end.171, %sw.bb
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.285, %if.then.272, %if.then.260, %if.then.247, %if.then.235, %if.then.226, %if.then.209, %if.then.197, %if.then.176, %if.then.165, %if.end.148, %if.then.140, %if.then.130, %if.then.120, %if.then.87, %if.else, %if.then.10, %if.then.4, %if.then
  %222 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %222
}

declare i8* @htab_find(%struct.htab*, i8*) #2

declare i8** @htab_find_slot(%struct.htab*, i8*, i32) #2

declare i32 @statement_code_p(i32) #2

declare i32 @first_rtl_op(i32) #2

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define %union.tree_node* @walk_tree_without_duplicates(%union.tree_node** %tp, %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, i8* %data) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %func.addr = alloca %union.tree_node* (%union.tree_node**, i32*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %result = alloca %union.tree_node*, align 8
  %htab = alloca %struct.htab*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32 (i8*)*, i32 (i8*)** @htab_hash_pointer, align 8
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** @htab_eq_pointer, align 8
  %call = call %struct.htab* @htab_create(i64 37, i32 (i8*)* %0, i32 (i8*, i8*)* %1, void (i8*)* null)
  store %struct.htab* %call, %struct.htab** %htab, align 8
  %2 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %3 = load %union.tree_node* (%union.tree_node**, i32*, i8*)*, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load %struct.htab*, %struct.htab** %htab, align 8
  %6 = bitcast %struct.htab* %5 to i8*
  %call1 = call %union.tree_node* @walk_tree(%union.tree_node** %2, %union.tree_node* (%union.tree_node**, i32*, i8*)* %3, i8* %4, i8* %6)
  store %union.tree_node* %call1, %union.tree_node** %result, align 8
  %7 = load %struct.htab*, %struct.htab** %htab, align 8
  call void @htab_delete(%struct.htab* %7)
  %8 = load %union.tree_node*, %union.tree_node** %result, align 8
  ret %union.tree_node* %8
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @copy_tree_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %code = alloca i32, align 4
  %chain = alloca %union.tree_node*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %common = bitcast %union.tree_node* %1 to %struct.tree_common*
  %code1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code1, align 8
  %bf.clear = and i32 %bf.load, 255
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 60
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, i32* %code, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom3
  %5 = load i8, i8* %arrayidx4, align 1
  %conv5 = sext i8 %5 to i32
  %cmp6 = icmp eq i32 %conv5, 49
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %6 = load i32, i32* %code, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom9
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %7 to i32
  %cmp12 = icmp eq i32 %conv11, 50
  br i1 %cmp12, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.8
  %8 = load i32, i32* %code, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom15
  %9 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %9 to i32
  %cmp18 = icmp eq i32 %conv17, 101
  br i1 %cmp18, label %if.then, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.14
  %10 = load i32, i32* %code, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom21
  %11 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %11 to i32
  %cmp24 = icmp eq i32 %conv23, 114
  br i1 %cmp24, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.20
  %12 = load i32, i32* %code, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom27
  %13 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %13 to i32
  %cmp30 = icmp eq i32 %conv29, 99
  br i1 %cmp30, label %if.then, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false.26
  %14 = load i32, i32* %code, align 4
  %idxprom33 = sext i32 %14 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom33
  %15 = load i8, i8* %arrayidx34, align 1
  %conv35 = sext i8 %15 to i32
  %cmp36 = icmp eq i32 %conv35, 115
  br i1 %cmp36, label %if.then, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.32
  %16 = load i32, i32* %code, align 4
  %cmp39 = icmp eq i32 %16, 2
  br i1 %cmp39, label %if.then, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.38
  %17 = load i32, i32* %code, align 4
  %cmp42 = icmp eq i32 %17, 3
  br i1 %cmp42, label %if.then, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %lor.lhs.false.41
  %18 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 4), align 8
  %19 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  %call = call i32 %18(%union.tree_node* %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false.44, %lor.lhs.false.41, %lor.lhs.false.38, %lor.lhs.false.32, %lor.lhs.false.26, %lor.lhs.false.20, %lor.lhs.false.14, %lor.lhs.false.8, %lor.lhs.false, %entry
  %21 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %22 = load %union.tree_node*, %union.tree_node** %21, align 8
  %common45 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %chain46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 0
  %23 = load %union.tree_node*, %union.tree_node** %chain46, align 8
  store %union.tree_node* %23, %union.tree_node** %chain, align 8
  %24 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %25 = load %union.tree_node*, %union.tree_node** %24, align 8
  %call47 = call %union.tree_node* @copy_node(%union.tree_node* %25)
  %26 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %call47, %union.tree_node** %26, align 8
  %27 = load i32, i32* %code, align 4
  %cmp48 = icmp eq i32 %27, 35
  br i1 %cmp48, label %if.then.59, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.then
  %28 = load i32, i32* %code, align 4
  %cmp51 = icmp eq i32 %28, 2
  br i1 %cmp51, label %if.then.59, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %29 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 4), align 8
  %30 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %31 = load %union.tree_node*, %union.tree_node** %30, align 8
  %call54 = call i32 %29(%union.tree_node* %31)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.53
  %32 = load i32, i32* %code, align 4
  %call57 = call i32 @statement_code_p(i32 %32)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end

if.then.59:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false.53, %lor.lhs.false.50, %if.then
  %33 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %34 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %35 = load %union.tree_node*, %union.tree_node** %34, align 8
  %common60 = bitcast %union.tree_node* %35 to %struct.tree_common*
  %chain61 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common60, i32 0, i32 0
  store %union.tree_node* %33, %union.tree_node** %chain61, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.59, %lor.lhs.false.56
  %36 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8
  %common62 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %code63 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 2
  %bf.load64 = load i32, i32* %code63, align 8
  %bf.clear65 = and i32 %bf.load64, 255
  %cmp66 = icmp eq i32 %bf.clear65, 166
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end
  %38 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %39 = load %union.tree_node*, %union.tree_node** %38, align 8
  %exp = bitcast %union.tree_node* %39 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx69 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* null, %union.tree_node** %arrayidx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end
  br label %if.end.78

if.else:                                          ; preds = %lor.lhs.false.44
  %40 = load i32, i32* %code, align 4
  %idxprom71 = sext i32 %40 to i64
  %arrayidx72 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom71
  %41 = load i8, i8* %arrayidx72, align 1
  %conv73 = sext i8 %41 to i32
  %cmp74 = icmp eq i32 %conv73, 116
  br i1 %cmp74, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.else
  %42 = load i32*, i32** %walk_subtrees.addr, align 8
  store i32 0, i32* %42, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.else
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.end.70
  ret %union.tree_node* null
}

declare %union.tree_node* @copy_node(%union.tree_node*) #2

; Function Attrs: nounwind uwtable
define void @remap_save_expr(%union.tree_node** %tp, i8* %st_, %union.tree_node* %fn, i32* %walk_subtrees) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %st_.addr = alloca i8*, align 8
  %fn.addr = alloca %union.tree_node*, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %st = alloca %struct.splay_tree_s*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i8* %st_, i8** %st_.addr, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  %0 = load i8*, i8** %st_.addr, align 8
  %1 = bitcast i8* %0 to %struct.splay_tree_s*
  store %struct.splay_tree_s* %1, %struct.splay_tree_s** %st, align 8
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %st, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8
  %5 = ptrtoint %union.tree_node* %4 to i64
  %call = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %2, i64 %5)
  store %struct.splay_tree_node_s* %call, %struct.splay_tree_node_s** %n, align 8
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %6, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8
  %call1 = call %union.tree_node* @copy_node(%union.tree_node* %8)
  store %union.tree_node* %call1, %union.tree_node** %t, align 8
  %9 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %10 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  store %union.tree_node* %9, %union.tree_node** %arrayidx, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp2 = bitcast %union.tree_node* %11 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 2
  %12 = bitcast %union.tree_node** %arrayidx4 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %12, align 8
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %st, align 8
  %14 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  %16 = ptrtoint %union.tree_node* %15 to i64
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  %18 = ptrtoint %union.tree_node* %17 to i64
  %call5 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %13, i64 %16, i64 %18)
  store %struct.splay_tree_node_s* %call5, %struct.splay_tree_node_s** %n, align 8
  %19 = load %struct.splay_tree_s*, %struct.splay_tree_s** %st, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %21 = ptrtoint %union.tree_node* %20 to i64
  %22 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %23 = ptrtoint %union.tree_node* %22 to i64
  %call6 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %19, i64 %21, i64 %23)
  br label %if.end

if.else:                                          ; preds = %entry
  %24 = load i32*, i32** %walk_subtrees.addr, align 8
  store i32 0, i32* %24, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %25, i32 0, i32 1
  %26 = load i64, i64* %value, align 8
  %27 = inttoptr i64 %26 to %union.tree_node*
  %28 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %27, %union.tree_node** %28, align 8
  ret void
}

declare %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s*, i64) #2

declare %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @expand_call_inline(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %tp.addr = alloca %union.tree_node**, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %id = alloca %struct.inline_data*, align 8
  %t = alloca %union.tree_node*, align 8
  %expr = alloca %union.tree_node*, align 8
  %chain = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %scope_stmt = alloca %union.tree_node*, align 8
  %use_stmt = alloca %union.tree_node*, align 8
  %arg_inits = alloca %union.tree_node*, align 8
  %inlined_body = alloca %union.tree_node**, align 8
  %st = alloca %struct.splay_tree_s*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %i117 = alloca i32, align 4
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.inline_data*
  store %struct.inline_data* %1, %struct.inline_data** %id, align 8
  %2 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %3 = load %union.tree_node*, %union.tree_node** %2, align 8
  store %union.tree_node* %3, %union.tree_node** %t, align 8
  %4 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %5 = load %union.tree_node*, %union.tree_node** %4, align 8
  %common = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 50
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %call = call i32 @first_rtl_op(i32 50)
  store i32 %call, i32* %len, align 4
  %6 = load i32*, i32** %walk_subtrees.addr, align 8
  store i32 0, i32* %6, align 4
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs = getelementptr inbounds %struct.inline_data, %struct.inline_data* %7, i32 0, i32 5
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 1
  %9 = load i64, i64* %elements_used, align 8
  %10 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %10, i32 0, i32 5
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs1, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements, align 8
  %cmp2 = icmp uge i64 %9, %12
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %do.body
  %13 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs4 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %13, i32 0, i32 5
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs4, align 8
  %15 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs5 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %15, i32 0, i32 5
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs5, align 8
  %num_elements6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 0
  %17 = load i64, i64* %num_elements6, align 8
  %mul = mul i64 2, %17
  %call7 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %14, i64 %mul)
  %18 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs8 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %18, i32 0, i32 5
  store %struct.varray_head_tag* %call7, %struct.varray_head_tag** %target_exprs8, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.3, %do.body
  %19 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %19, align 8
  %21 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs9 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %21, i32 0, i32 5
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs9, align 8
  %elements_used10 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 1
  %23 = load i64, i64* %elements_used10, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %elements_used10, align 8
  %24 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs11 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %24, i32 0, i32 5
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs11, align 8
  %data12 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data12 to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %23
  store %union.tree_node* %20, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %len, align 4
  %cmp13 = icmp slt i32 %26, %27
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %cmp14 = icmp eq i32 %28, 2
  br i1 %cmp14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %for.body
  %29 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %in_target_cleanup_p = getelementptr inbounds %struct.inline_data, %struct.inline_data* %29, i32 0, i32 4
  %30 = load i32, i32* %in_target_cleanup_p, align 4
  %inc16 = add nsw i32 %30, 1
  store i32 %inc16, i32* %in_target_cleanup_p, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.body
  %31 = load i32, i32* %i, align 4
  %idxprom = sext i32 %31 to i64
  %32 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %33 = load %union.tree_node*, %union.tree_node** %32, align 8
  %exp = bitcast %union.tree_node* %33 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 %idxprom
  %34 = load i8*, i8** %data.addr, align 8
  %35 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %tree_pruner = getelementptr inbounds %struct.inline_data, %struct.inline_data* %35, i32 0, i32 9
  %36 = load %struct.htab*, %struct.htab** %tree_pruner, align 8
  %37 = bitcast %struct.htab* %36 to i8*
  %call19 = call %union.tree_node* @walk_tree(%union.tree_node** %arrayidx18, %union.tree_node* (%union.tree_node**, i32*, i8*)* @expand_call_inline, i8* %34, i8* %37)
  %38 = load i32, i32* %i, align 4
  %cmp20 = icmp eq i32 %38, 2
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.17
  %39 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %in_target_cleanup_p22 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %39, i32 0, i32 4
  %40 = load i32, i32* %in_target_cleanup_p22, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %in_target_cleanup_p22, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %41 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %41, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %target_exprs25 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %42, i32 0, i32 5
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** %target_exprs25, align 8
  %elements_used26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 1
  %44 = load i64, i64* %elements_used26, align 8
  %dec27 = add i64 %44, -1
  store i64 %dec27, i64* %elements_used26, align 8
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.28:                                        ; preds = %entry
  %45 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common29 = bitcast %union.tree_node* %45 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %idxprom33 = sext i32 %bf.clear32 to i64
  %arrayidx34 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom33
  %46 = load i8, i8* %arrayidx34, align 1
  %conv = sext i8 %46 to i32
  %cmp35 = icmp eq i32 %conv, 116
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.28
  %47 = load i32*, i32** %walk_subtrees.addr, align 8
  store i32 0, i32* %47, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end.28
  %48 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common39 = bitcast %union.tree_node* %48 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %cmp43 = icmp ne i32 %bf.clear42, 53
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.38
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.38
  %49 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call47 = call %union.tree_node* @get_callee_fndecl(%union.tree_node* %49)
  store %union.tree_node* %call47, %union.tree_node** %fn, align 8
  %50 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %tobool = icmp ne %union.tree_node* %50, null
  br i1 %tobool, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.46
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.49:                                        ; preds = %if.end.46
  %51 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl = bitcast %union.tree_node* %51 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %52 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool50 = icmp ne %union.tree_node* %52, null
  br i1 %tobool50, label %if.end.61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.49
  %53 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl51 = bitcast %union.tree_node* %53 to %struct.tree_decl*
  %abstract_origin = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl51, i32 0, i32 13
  %54 = load %union.tree_node*, %union.tree_node** %abstract_origin, align 8
  %tobool52 = icmp ne %union.tree_node* %54, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.61

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %55 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl54 = bitcast %union.tree_node* %55 to %struct.tree_decl*
  %abstract_origin55 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl54, i32 0, i32 13
  %56 = load %union.tree_node*, %union.tree_node** %abstract_origin55, align 8
  %decl56 = bitcast %union.tree_node* %56 to %struct.tree_decl*
  %saved_tree = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl56, i32 0, i32 20
  %57 = load %union.tree_node*, %union.tree_node** %saved_tree, align 8
  %tobool57 = icmp ne %union.tree_node* %57, null
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %land.lhs.true.53
  %58 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl59 = bitcast %union.tree_node* %58 to %struct.tree_decl*
  %abstract_origin60 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl59, i32 0, i32 13
  %59 = load %union.tree_node*, %union.tree_node** %abstract_origin60, align 8
  store %union.tree_node* %59, %union.tree_node** %fn, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %land.lhs.true.53, %land.lhs.true, %if.end.49
  %60 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %61 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %call62 = call i32 @inlinable_function_p(%union.tree_node* %60, %struct.inline_data* %61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.61
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.65:                                        ; preds = %if.end.61
  %62 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 8), align 8
  %63 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call66 = call i32 %62(%union.tree_node* %63)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  %64 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl70 = bitcast %union.tree_node* %64 to %struct.tree_decl*
  %filename = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl70, i32 0, i32 1
  %65 = load i8*, i8** %filename, align 8
  %66 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl71 = bitcast %union.tree_node* %66 to %struct.tree_decl*
  %linenum = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl71, i32 0, i32 2
  %67 = load i32, i32* %linenum, align 4
  call void @push_srcloc(i8* %65, i32 %67)
  %68 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common72 = bitcast %union.tree_node* %68 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common72, i32 0, i32 1
  %69 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common73 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %type74 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common73, i32 0, i32 1
  %70 = load %union.tree_node*, %union.tree_node** %type74, align 8
  %call75 = call %union.tree_node* @build1(i32 169, %union.tree_node* %70, %union.tree_node* null)
  store %union.tree_node* %call75, %union.tree_node** %expr, align 8
  %71 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %common76 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common76, i32 0, i32 2
  %bf.load77 = load i32, i32* %lang_flag_0, align 8
  %bf.clear78 = and i32 %bf.load77, -16777217
  %bf.set = or i32 %bf.clear78, 16777216
  store i32 %bf.set, i32* %lang_flag_0, align 8
  %72 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %72, i32 0, i32 3
  %73 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  store %struct.splay_tree_s* %73, %struct.splay_tree_s** %st, align 8
  %call79 = call %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* @splay_tree_compare_pointers, void (i64)* null, void (i64)* null)
  %74 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map80 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %74, i32 0, i32 3
  store %struct.splay_tree_s* %call79, %struct.splay_tree_s** %decl_map80, align 8
  %75 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %76 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp81 = bitcast %union.tree_node* %76 to %struct.tree_exp*
  %operands82 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp81, i32 0, i32 2
  %arrayidx83 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands82, i32 0, i64 1
  %77 = load %union.tree_node*, %union.tree_node** %arrayidx83, align 8
  %78 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call84 = call %union.tree_node* @initialize_inlined_parameters(%struct.inline_data* %75, %union.tree_node* %77, %union.tree_node* %78)
  store %union.tree_node* %call84, %union.tree_node** %arg_inits, align 8
  %79 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  call void @expand_calls_inline(%union.tree_node** %arg_inits, %struct.inline_data* %79)
  %80 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp85 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %operands86 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp85, i32 0, i32 2
  %arrayidx87 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands86, i32 0, i64 0
  %81 = load %union.tree_node*, %union.tree_node** %arrayidx87, align 8
  %82 = load %union.tree_node*, %union.tree_node** %arg_inits, align 8
  %call88 = call %union.tree_node* @chainon(%union.tree_node* %81, %union.tree_node* %82)
  %83 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp89 = bitcast %union.tree_node* %83 to %struct.tree_exp*
  %operands90 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp89, i32 0, i32 2
  %arrayidx91 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands90, i32 0, i64 0
  store %union.tree_node* %call88, %union.tree_node** %arrayidx91, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.69
  %84 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %84, i32 0, i32 0
  %85 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used93 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %85, i32 0, i32 1
  %86 = load i64, i64* %elements_used93, align 8
  %87 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns94 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %87, i32 0, i32 0
  %88 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns94, align 8
  %num_elements95 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %88, i32 0, i32 0
  %89 = load i64, i64* %num_elements95, align 8
  %cmp96 = icmp uge i64 %86, %89
  br i1 %cmp96, label %if.then.98, label %if.end.105

if.then.98:                                       ; preds = %do.body.92
  %90 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns99 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %90, i32 0, i32 0
  %91 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns99, align 8
  %92 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns100 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %92, i32 0, i32 0
  %93 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns100, align 8
  %num_elements101 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %93, i32 0, i32 0
  %94 = load i64, i64* %num_elements101, align 8
  %mul102 = mul i64 2, %94
  %call103 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %91, i64 %mul102)
  %95 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns104 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %95, i32 0, i32 0
  store %struct.varray_head_tag* %call103, %struct.varray_head_tag** %fns104, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.98, %do.body.92
  %96 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %97 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns106 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %97, i32 0, i32 0
  %98 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns106, align 8
  %elements_used107 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %98, i32 0, i32 1
  %99 = load i64, i64* %elements_used107, align 8
  %inc108 = add i64 %99, 1
  store i64 %inc108, i64* %elements_used107, align 8
  %100 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns109 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %100, i32 0, i32 0
  %101 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns109, align 8
  %data110 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %101, i32 0, i32 4
  %tree111 = bitcast %union.varray_data_tag* %data110 to [1 x %union.tree_node*]*
  %arrayidx112 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree111, i32 0, i64 %99
  store %union.tree_node* %96, %union.tree_node** %arrayidx112, align 8
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.105
  %102 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl114 = bitcast %union.tree_node* %102 to %struct.tree_decl*
  %inlined_fns = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl114, i32 0, i32 21
  %103 = load %union.tree_node*, %union.tree_node** %inlined_fns, align 8
  %tobool115 = icmp ne %union.tree_node* %103, null
  br i1 %tobool115, label %if.end.164, label %if.then.116

if.then.116:                                      ; preds = %do.end.113
  %104 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns118 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %104, i32 0, i32 6
  %105 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns118, align 8
  %elements_used119 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %105, i32 0, i32 1
  %106 = load i64, i64* %elements_used119, align 8
  %sub = sub i64 %106, 1
  %conv120 = trunc i64 %sub to i32
  store i32 %conv120, i32* %i117, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.134, %if.then.116
  %107 = load i32, i32* %i117, align 4
  %cmp122 = icmp sge i32 %107, 0
  br i1 %cmp122, label %for.body.124, label %for.end.136

for.body.124:                                     ; preds = %for.cond.121
  %108 = load i32, i32* %i117, align 4
  %idxprom125 = sext i32 %108 to i64
  %109 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns126 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %109, i32 0, i32 6
  %110 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns126, align 8
  %data127 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %110, i32 0, i32 4
  %tree128 = bitcast %union.varray_data_tag* %data127 to [1 x %union.tree_node*]*
  %arrayidx129 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree128, i32 0, i64 %idxprom125
  %111 = load %union.tree_node*, %union.tree_node** %arrayidx129, align 8
  %112 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %cmp130 = icmp eq %union.tree_node* %111, %112
  br i1 %cmp130, label %if.then.132, label %if.end.133

if.then.132:                                      ; preds = %for.body.124
  br label %for.end.136

if.end.133:                                       ; preds = %for.body.124
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %113 = load i32, i32* %i117, align 4
  %dec135 = add nsw i32 %113, -1
  store i32 %dec135, i32* %i117, align 4
  br label %for.cond.121

for.end.136:                                      ; preds = %if.then.132, %for.cond.121
  %114 = load i32, i32* %i117, align 4
  %cmp137 = icmp slt i32 %114, 0
  br i1 %cmp137, label %if.then.139, label %if.end.163

if.then.139:                                      ; preds = %for.end.136
  br label %do.body.140

do.body.140:                                      ; preds = %if.then.139
  %115 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns141 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %115, i32 0, i32 6
  %116 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns141, align 8
  %elements_used142 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %116, i32 0, i32 1
  %117 = load i64, i64* %elements_used142, align 8
  %118 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns143 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %118, i32 0, i32 6
  %119 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns143, align 8
  %num_elements144 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %119, i32 0, i32 0
  %120 = load i64, i64* %num_elements144, align 8
  %cmp145 = icmp uge i64 %117, %120
  br i1 %cmp145, label %if.then.147, label %if.end.154

if.then.147:                                      ; preds = %do.body.140
  %121 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns148 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %121, i32 0, i32 6
  %122 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns148, align 8
  %123 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns149 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %123, i32 0, i32 6
  %124 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns149, align 8
  %num_elements150 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %124, i32 0, i32 0
  %125 = load i64, i64* %num_elements150, align 8
  %mul151 = mul i64 2, %125
  %call152 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %122, i64 %mul151)
  %126 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns153 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %126, i32 0, i32 6
  store %struct.varray_head_tag* %call152, %struct.varray_head_tag** %inlined_fns153, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.147, %do.body.140
  %127 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %128 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns155 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %128, i32 0, i32 6
  %129 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns155, align 8
  %elements_used156 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %129, i32 0, i32 1
  %130 = load i64, i64* %elements_used156, align 8
  %inc157 = add i64 %130, 1
  store i64 %inc157, i64* %elements_used156, align 8
  %131 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_fns158 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %131, i32 0, i32 6
  %132 = load %struct.varray_head_tag*, %struct.varray_head_tag** %inlined_fns158, align 8
  %data159 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %132, i32 0, i32 4
  %tree160 = bitcast %union.varray_data_tag* %data159 to [1 x %union.tree_node*]*
  %arrayidx161 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree160, i32 0, i64 %130
  store %union.tree_node* %127, %union.tree_node** %arrayidx161, align 8
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.154
  br label %if.end.163

if.end.163:                                       ; preds = %do.end.162, %for.end.136
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %do.end.113
  %call165 = call %union.tree_node* @build_decl(i32 31, %union.tree_node* null, %union.tree_node* null)
  %133 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %ret_label = getelementptr inbounds %struct.inline_data, %struct.inline_data* %133, i32 0, i32 2
  store %union.tree_node* %call165, %union.tree_node** %ret_label, align 8
  %134 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns166 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %134, i32 0, i32 0
  %135 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns166, align 8
  %data167 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %135, i32 0, i32 4
  %tree168 = bitcast %union.varray_data_tag* %data167 to [1 x %union.tree_node*]*
  %arrayidx169 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree168, i32 0, i64 0
  %136 = load %union.tree_node*, %union.tree_node** %arrayidx169, align 8
  %137 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %ret_label170 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %137, i32 0, i32 2
  %138 = load %union.tree_node*, %union.tree_node** %ret_label170, align 8
  %decl171 = bitcast %union.tree_node* %138 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl171, i32 0, i32 9
  store %union.tree_node* %136, %union.tree_node** %context, align 8
  %139 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl172 = bitcast %union.tree_node* %139 to %struct.tree_decl*
  %initial173 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl172, i32 0, i32 12
  %140 = load %union.tree_node*, %union.tree_node** %initial173, align 8
  %tobool174 = icmp ne %union.tree_node* %140, null
  br i1 %tobool174, label %lor.lhs.false, label %if.then.183

lor.lhs.false:                                    ; preds = %if.end.164
  %141 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl175 = bitcast %union.tree_node* %141 to %struct.tree_decl*
  %initial176 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl175, i32 0, i32 12
  %142 = load %union.tree_node*, %union.tree_node** %initial176, align 8
  %common177 = bitcast %union.tree_node* %142 to %struct.tree_common*
  %code178 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common177, i32 0, i32 2
  %bf.load179 = load i32, i32* %code178, align 8
  %bf.clear180 = and i32 %bf.load179, 255
  %cmp181 = icmp ne i32 %bf.clear180, 4
  br i1 %cmp181, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %lor.lhs.false, %if.end.164
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 900, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.expand_call_inline, i32 0, i32 0)) #5
  unreachable

if.end.184:                                       ; preds = %lor.lhs.false
  %143 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl185 = bitcast %union.tree_node* %143 to %struct.tree_decl*
  %initial186 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl185, i32 0, i32 12
  %144 = load %union.tree_node*, %union.tree_node** %initial186, align 8
  %call187 = call %union.tree_node* (i32, ...) @build_stmt(i32 166, %union.tree_node* %144)
  store %union.tree_node* %call187, %union.tree_node** %scope_stmt, align 8
  %145 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %common188 = bitcast %union.tree_node* %145 to %struct.tree_common*
  %lang_flag_0189 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common188, i32 0, i32 2
  %bf.load190 = load i32, i32* %lang_flag_0189, align 8
  %bf.clear191 = and i32 %bf.load190, -16777217
  %bf.set192 = or i32 %bf.clear191, 16777216
  store i32 %bf.set192, i32* %lang_flag_0189, align 8
  %146 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %common193 = bitcast %union.tree_node* %146 to %struct.tree_common*
  %lang_flag_3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common193, i32 0, i32 2
  %bf.load194 = load i32, i32* %lang_flag_3, align 8
  %bf.clear195 = and i32 %bf.load194, -134217729
  %bf.set196 = or i32 %bf.clear195, 134217728
  store i32 %bf.set196, i32* %lang_flag_3, align 8
  %147 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %148 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl197 = bitcast %union.tree_node* %148 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl197, i32 0, i32 10
  %149 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %150 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  call void @remap_block(%union.tree_node* %147, %union.tree_node* %149, %struct.inline_data* %150)
  %151 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp198 = bitcast %union.tree_node* %151 to %struct.tree_exp*
  %operands199 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp198, i32 0, i32 2
  %arrayidx200 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands199, i32 0, i64 0
  %152 = load %union.tree_node*, %union.tree_node** %arrayidx200, align 8
  %153 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %common201 = bitcast %union.tree_node* %153 to %struct.tree_common*
  %chain202 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common201, i32 0, i32 0
  store %union.tree_node* %152, %union.tree_node** %chain202, align 8
  %154 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %155 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp203 = bitcast %union.tree_node* %155 to %struct.tree_exp*
  %operands204 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp203, i32 0, i32 2
  %arrayidx205 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands204, i32 0, i64 0
  store %union.tree_node* %154, %union.tree_node** %arrayidx205, align 8
  %156 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %exp206 = bitcast %union.tree_node* %156 to %struct.tree_exp*
  %operands207 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp206, i32 0, i32 2
  %arrayidx208 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands207, i32 0, i64 0
  %157 = load %union.tree_node*, %union.tree_node** %arrayidx208, align 8
  %tobool209 = icmp ne %union.tree_node* %157, null
  br i1 %tobool209, label %if.then.210, label %if.end.220

if.then.210:                                      ; preds = %if.end.184
  %158 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl211 = bitcast %union.tree_node* %158 to %struct.tree_decl*
  %abstract_origin212 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl211, i32 0, i32 13
  %159 = load %union.tree_node*, %union.tree_node** %abstract_origin212, align 8
  %tobool213 = icmp ne %union.tree_node* %159, null
  br i1 %tobool213, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.210
  %160 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl214 = bitcast %union.tree_node* %160 to %struct.tree_decl*
  %abstract_origin215 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl214, i32 0, i32 13
  %161 = load %union.tree_node*, %union.tree_node** %abstract_origin215, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.210
  %162 = load %union.tree_node*, %union.tree_node** %fn, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %161, %cond.true ], [ %162, %cond.false ]
  %163 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %exp216 = bitcast %union.tree_node* %163 to %struct.tree_exp*
  %operands217 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp216, i32 0, i32 2
  %arrayidx218 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands217, i32 0, i64 0
  %164 = load %union.tree_node*, %union.tree_node** %arrayidx218, align 8
  %block = bitcast %union.tree_node* %164 to %struct.tree_block*
  %abstract_origin219 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 5
  store %union.tree_node* %cond, %union.tree_node** %abstract_origin219, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %cond.end, %if.end.184
  %165 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp221 = bitcast %union.tree_node* %165 to %struct.tree_exp*
  %operands222 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp221, i32 0, i32 2
  %arrayidx223 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands222, i32 0, i64 0
  %166 = load %union.tree_node*, %union.tree_node** %arrayidx223, align 8
  %167 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %call224 = call %union.tree_node* @declare_return_variable(%struct.inline_data* %167, %union.tree_node** %use_stmt)
  %call225 = call %union.tree_node* @chainon(%union.tree_node* %166, %union.tree_node* %call224)
  %168 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp226 = bitcast %union.tree_node* %168 to %struct.tree_exp*
  %operands227 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp226, i32 0, i32 2
  %arrayidx228 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands227, i32 0, i64 0
  store %union.tree_node* %call225, %union.tree_node** %arrayidx228, align 8
  %169 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp229 = bitcast %union.tree_node* %169 to %struct.tree_exp*
  %operands230 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp229, i32 0, i32 2
  %arrayidx231 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands230, i32 0, i64 0
  store %union.tree_node** %arrayidx231, %union.tree_node*** %inlined_body, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.220
  %170 = load %union.tree_node**, %union.tree_node*** %inlined_body, align 8
  %171 = load %union.tree_node*, %union.tree_node** %170, align 8
  %tobool232 = icmp ne %union.tree_node* %171, null
  br i1 %tobool232, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %172 = load %union.tree_node**, %union.tree_node*** %inlined_body, align 8
  %173 = load %union.tree_node*, %union.tree_node** %172, align 8
  %common233 = bitcast %union.tree_node* %173 to %struct.tree_common*
  %chain234 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common233, i32 0, i32 0
  store %union.tree_node** %chain234, %union.tree_node*** %inlined_body, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %174 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %call235 = call %union.tree_node* @copy_body(%struct.inline_data* %174)
  %175 = load %union.tree_node**, %union.tree_node*** %inlined_body, align 8
  store %union.tree_node* %call235, %union.tree_node** %175, align 8
  %176 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl236 = bitcast %union.tree_node* %176 to %struct.tree_decl*
  %initial237 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl236, i32 0, i32 12
  %177 = load %union.tree_node*, %union.tree_node** %initial237, align 8
  %call238 = call %union.tree_node* (i32, ...) @build_stmt(i32 166, %union.tree_node* %177)
  store %union.tree_node* %call238, %union.tree_node** %scope_stmt, align 8
  %178 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %common239 = bitcast %union.tree_node* %178 to %struct.tree_common*
  %lang_flag_3240 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common239, i32 0, i32 2
  %bf.load241 = load i32, i32* %lang_flag_3240, align 8
  %bf.clear242 = and i32 %bf.load241, -134217729
  %bf.set243 = or i32 %bf.clear242, 134217728
  store i32 %bf.set243, i32* %lang_flag_3240, align 8
  %179 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %180 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  call void @remap_block(%union.tree_node* %179, %union.tree_node* null, %struct.inline_data* %180)
  %181 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp244 = bitcast %union.tree_node* %181 to %struct.tree_exp*
  %operands245 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp244, i32 0, i32 2
  %arrayidx246 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands245, i32 0, i64 0
  %182 = load %union.tree_node*, %union.tree_node** %arrayidx246, align 8
  %183 = load %union.tree_node*, %union.tree_node** %scope_stmt, align 8
  %call247 = call %union.tree_node* @chainon(%union.tree_node* %182, %union.tree_node* %183)
  %184 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp248 = bitcast %union.tree_node* %184 to %struct.tree_exp*
  %operands249 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp248, i32 0, i32 2
  %arrayidx250 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands249, i32 0, i64 0
  store %union.tree_node* %call247, %union.tree_node** %arrayidx250, align 8
  %185 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp251 = bitcast %union.tree_node* %185 to %struct.tree_exp*
  %operands252 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp251, i32 0, i32 2
  %arrayidx253 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands252, i32 0, i64 0
  %186 = load %union.tree_node*, %union.tree_node** %arrayidx253, align 8
  %187 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %ret_label254 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %187, i32 0, i32 2
  %188 = load %union.tree_node*, %union.tree_node** %ret_label254, align 8
  %call255 = call %union.tree_node* (i32, ...) @build_stmt(i32 164, %union.tree_node* %188)
  %call256 = call %union.tree_node* @chainon(%union.tree_node* %186, %union.tree_node* %call255)
  %189 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp257 = bitcast %union.tree_node* %189 to %struct.tree_exp*
  %operands258 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp257, i32 0, i32 2
  %arrayidx259 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands258, i32 0, i64 0
  store %union.tree_node* %call256, %union.tree_node** %arrayidx259, align 8
  %190 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp260 = bitcast %union.tree_node* %190 to %struct.tree_exp*
  %operands261 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp260, i32 0, i32 2
  %arrayidx262 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands261, i32 0, i64 0
  %191 = load %union.tree_node*, %union.tree_node** %arrayidx262, align 8
  %192 = load %union.tree_node*, %union.tree_node** %use_stmt, align 8
  %call263 = call %union.tree_node* @chainon(%union.tree_node* %191, %union.tree_node* %192)
  %193 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp264 = bitcast %union.tree_node* %193 to %struct.tree_exp*
  %operands265 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp264, i32 0, i32 2
  %arrayidx266 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands265, i32 0, i64 0
  store %union.tree_node* %call263, %union.tree_node** %arrayidx266, align 8
  %194 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map267 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %194, i32 0, i32 3
  %195 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map267, align 8
  call void @splay_tree_delete(%struct.splay_tree_s* %195)
  %196 = load %struct.splay_tree_s*, %struct.splay_tree_s** %st, align 8
  %197 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map268 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %197, i32 0, i32 3
  store %struct.splay_tree_s* %196, %struct.splay_tree_s** %decl_map268, align 8
  %198 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common269 = bitcast %union.tree_node* %198 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common269, i32 0, i32 2
  %bf.load270 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr = lshr i32 %bf.load270, 8
  %bf.clear271 = and i32 %bf.lshr, 1
  %199 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %common272 = bitcast %union.tree_node* %199 to %struct.tree_common*
  %side_effects_flag273 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common272, i32 0, i32 2
  %bf.load274 = load i32, i32* %side_effects_flag273, align 8
  %bf.value = and i32 %bf.clear271, 1
  %bf.shl = shl i32 %bf.value, 8
  %bf.clear275 = and i32 %bf.load274, -257
  %bf.set276 = or i32 %bf.clear275, %bf.shl
  store i32 %bf.set276, i32* %side_effects_flag273, align 8
  %200 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %201 = load %union.tree_node*, %union.tree_node** %200, align 8
  %common277 = bitcast %union.tree_node* %201 to %struct.tree_common*
  %chain278 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common277, i32 0, i32 0
  %202 = load %union.tree_node*, %union.tree_node** %chain278, align 8
  store %union.tree_node* %202, %union.tree_node** %chain, align 8
  %203 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %204 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl279 = bitcast %union.tree_node* %204 to %struct.tree_decl*
  %filename280 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl279, i32 0, i32 1
  %205 = load i8*, i8** %filename280, align 8
  %206 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl281 = bitcast %union.tree_node* %206 to %struct.tree_decl*
  %linenum282 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl281, i32 0, i32 2
  %207 = load i32, i32* %linenum282, align 4
  %call283 = call %union.tree_node* @build_expr_wfl(%union.tree_node* %203, i8* %205, i32 %207, i32 0)
  %208 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %call283, %union.tree_node** %208, align 8
  %209 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %210 = load %union.tree_node*, %union.tree_node** %209, align 8
  %common284 = bitcast %union.tree_node* %210 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common284, i32 0, i32 2
  %bf.load285 = load i32, i32* %public_flag, align 8
  %bf.clear286 = and i32 %bf.load285, -524289
  %bf.set287 = or i32 %bf.clear286, 524288
  store i32 %bf.set287, i32* %public_flag, align 8
  %211 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %212 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %213 = load %union.tree_node*, %union.tree_node** %212, align 8
  %common288 = bitcast %union.tree_node* %213 to %struct.tree_common*
  %chain289 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common288, i32 0, i32 0
  store %union.tree_node* %211, %union.tree_node** %chain289, align 8
  call void @pop_srcloc()
  %214 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %215 = load %union.tree_node*, %union.tree_node** %214, align 8
  %common290 = bitcast %union.tree_node* %215 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common290, i32 0, i32 2
  %bf.load291 = load i32, i32* %used_flag, align 8
  %bf.clear292 = and i32 %bf.load291, -65537
  %bf.set293 = or i32 %bf.clear292, 65536
  store i32 %bf.set293, i32* %used_flag, align 8
  %216 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl294 = bitcast %union.tree_node* %216 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl294, i32 0, i32 6
  %i295 = bitcast %union.anon* %u1 to i64*
  %217 = load i64, i64* %i295, align 8
  %218 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns296 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %218, i32 0, i32 0
  %219 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns296, align 8
  %data297 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %219, i32 0, i32 4
  %tree298 = bitcast %union.varray_data_tag* %data297 to [1 x %union.tree_node*]*
  %arrayidx299 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree298, i32 0, i64 0
  %220 = load %union.tree_node*, %union.tree_node** %arrayidx299, align 8
  %decl300 = bitcast %union.tree_node* %220 to %struct.tree_decl*
  %u1301 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl300, i32 0, i32 6
  %i302 = bitcast %union.anon* %u1301 to i64*
  %221 = load i64, i64* %i302, align 8
  %add = add nsw i64 %221, %217
  store i64 %add, i64* %i302, align 8
  %222 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl303 = bitcast %union.tree_node* %222 to %struct.tree_decl*
  %u1304 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl303, i32 0, i32 6
  %i305 = bitcast %union.anon* %u1304 to i64*
  %223 = load i64, i64* %i305, align 8
  %224 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_stmts = getelementptr inbounds %struct.inline_data, %struct.inline_data* %224, i32 0, i32 7
  %225 = load i32, i32* %inlined_stmts, align 4
  %conv306 = sext i32 %225 to i64
  %add307 = add nsw i64 %conv306, %223
  %conv308 = trunc i64 %add307 to i32
  store i32 %conv308, i32* %inlined_stmts, align 4
  %226 = load %union.tree_node**, %union.tree_node*** %inlined_body, align 8
  %227 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  call void @expand_calls_inline(%union.tree_node** %226, %struct.inline_data* %227)
  %228 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns309 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %228, i32 0, i32 0
  %229 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns309, align 8
  %elements_used310 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %229, i32 0, i32 1
  %230 = load i64, i64* %elements_used310, align 8
  %dec311 = add i64 %230, -1
  store i64 %dec311, i64* %elements_used310, align 8
  %231 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns312 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %231, i32 0, i32 0
  %232 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns312, align 8
  %elements_used313 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %232, i32 0, i32 1
  %233 = load i64, i64* %elements_used313, align 8
  %234 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %first_inlined_fn = getelementptr inbounds %struct.inline_data, %struct.inline_data* %234, i32 0, i32 1
  %235 = load i32, i32* %first_inlined_fn, align 4
  %conv314 = zext i32 %235 to i64
  %cmp315 = icmp eq i64 %233, %conv314
  br i1 %cmp315, label %if.then.317, label %if.end.319

if.then.317:                                      ; preds = %while.end
  %236 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %inlined_stmts318 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %236, i32 0, i32 7
  store i32 0, i32* %inlined_stmts318, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.317, %while.end
  %237 = load i32*, i32** %walk_subtrees.addr, align 8
  store i32 0, i32* %237, align 4
  %238 = load void (%union.tree_node*)*, void (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 9), align 8
  %239 = load %union.tree_node*, %union.tree_node** %fn, align 8
  call void %238(%union.tree_node* %239)
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.319, %if.then.68, %if.then.64, %if.then.48, %if.then.45, %for.end
  %240 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %240
}

declare %union.tree_node* @get_callee_fndecl(%union.tree_node*) #2

declare void @push_srcloc(i8*, i32) #2

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #2

declare %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)*, void (i64)*, void (i64)*) #2

declare i32 @splay_tree_compare_pointers(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @initialize_inlined_parameters(%struct.inline_data* %id, %union.tree_node* %args, %union.tree_node* %fn) #0 {
entry:
  %id.addr = alloca %struct.inline_data*, align 8
  %args.addr = alloca %union.tree_node*, align 8
  %fn.addr = alloca %union.tree_node*, align 8
  %init_stmts = alloca %union.tree_node*, align 8
  %parms = alloca %union.tree_node*, align 8
  %a = alloca %union.tree_node*, align 8
  %p = alloca %union.tree_node*, align 8
  %init_stmt = alloca %union.tree_node*, align 8
  %var = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  %cleanup = alloca %union.tree_node*, align 8
  %cleanup_stmt = alloca %union.tree_node*, align 8
  %init_stmt109 = alloca %union.tree_node*, align 8
  %value110 = alloca %union.tree_node*, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  store %union.tree_node* %args, %union.tree_node** %args.addr, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 10
  %1 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %1, %union.tree_node** %parms, align 8
  store %union.tree_node* null, %union.tree_node** %init_stmts, align 8
  %2 = load %union.tree_node*, %union.tree_node** %parms, align 8
  store %union.tree_node* %2, %union.tree_node** %p, align 8
  %3 = load %union.tree_node*, %union.tree_node** %args.addr, align 8
  store %union.tree_node* %3, %union.tree_node** %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end.102, %entry
  %4 = load %union.tree_node*, %union.tree_node** %p, align 8
  %tobool = icmp ne %union.tree_node* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 10), align 8
  %6 = load %union.tree_node*, %union.tree_node** %p, align 8
  %7 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool1 = icmp ne %union.tree_node* %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list = bitcast %union.tree_node* %8 to %struct.tree_list*
  %value2 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %9 = load %union.tree_node*, %union.tree_node** %value2, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %9, %cond.true ], [ null, %cond.false ]
  %10 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %call = call %union.tree_node* %5(%union.tree_node* %6, %union.tree_node* %cond, %union.tree_node* %10)
  store %union.tree_node* %call, %union.tree_node** %value, align 8
  %11 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %tobool3 = icmp ne i32 %bf.clear, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end.63

land.lhs.true:                                    ; preds = %cond.end
  %12 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common4 = bitcast %union.tree_node* %12 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load5 = load i32, i32* %addressable_flag, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 10
  %bf.clear7 = and i32 %bf.lshr6, 1
  %tobool8 = icmp ne i32 %bf.clear7, 0
  br i1 %tobool8, label %if.end.63, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %13 = load %union.tree_node*, %union.tree_node** %value, align 8
  %tobool10 = icmp ne %union.tree_node* %13, null
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.63

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %14 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common12 = bitcast %union.tree_node* %14 to %struct.tree_common*
  %side_effects_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load13 = load i32, i32* %side_effects_flag, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 8
  %bf.clear15 = and i32 %bf.lshr14, 1
  %tobool16 = icmp ne i32 %bf.clear15, 0
  br i1 %tobool16, label %if.end.63, label %if.then

if.then:                                          ; preds = %land.lhs.true.11
  %15 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common17 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %code, align 8
  %bf.clear19 = and i32 %bf.load18, 255
  %idxprom = sext i32 %bf.clear19 to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %cond.true.21, label %cond.false.23

cond.true.21:                                     ; preds = %if.then
  %17 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call22 = call %union.tree_node* @decl_constant_value(%union.tree_node* %17)
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then
  %18 = load %union.tree_node*, %union.tree_node** %value, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.21
  %cond25 = phi %union.tree_node* [ %call22, %cond.true.21 ], [ %18, %cond.false.23 ]
  %call26 = call %union.tree_node* @fold(%union.tree_node* %cond25)
  store %union.tree_node* %call26, %union.tree_node** %value, align 8
  %19 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common27 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load28 = load i32, i32* %constant_flag, align 8
  %bf.lshr29 = lshr i32 %bf.load28, 9
  %bf.clear30 = and i32 %bf.lshr29, 1
  %tobool31 = icmp ne i32 %bf.clear30, 0
  br i1 %tobool31, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.24
  %20 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common32 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %readonly_flag33 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common32, i32 0, i32 2
  %bf.load34 = load i32, i32* %readonly_flag33, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 12
  %bf.clear36 = and i32 %bf.lshr35, 1
  %tobool37 = icmp ne i32 %bf.clear36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.62

land.lhs.true.38:                                 ; preds = %lor.lhs.false
  %21 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common39 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %code40 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common39, i32 0, i32 2
  %bf.load41 = load i32, i32* %code40, align 8
  %bf.clear42 = and i32 %bf.load41, 255
  %idxprom43 = sext i32 %bf.clear42 to i64
  %arrayidx44 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom43
  %22 = load i8, i8* %arrayidx44, align 1
  %conv45 = sext i8 %22 to i32
  %cmp46 = icmp eq i32 %conv45, 100
  br i1 %cmp46, label %if.then.48, label %if.end.62

if.then.48:                                       ; preds = %land.lhs.true.38, %cond.end.24
  %23 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common49 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code50 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common49, i32 0, i32 2
  %bf.load51 = load i32, i32* %code50, align 8
  %bf.clear52 = and i32 %bf.load51, 255
  %idxprom53 = sext i32 %bf.clear52 to i64
  %arrayidx54 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom53
  %24 = load i8, i8* %arrayidx54, align 1
  %conv55 = sext i8 %24 to i32
  %cmp56 = icmp eq i32 %conv55, 100
  br i1 %cmp56, label %if.then.58, label %if.end

if.then.58:                                       ; preds = %if.then.48
  %25 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common59 = bitcast %union.tree_node* %25 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 1
  %26 = load %union.tree_node*, %union.tree_node** %type, align 8
  %27 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call60 = call %union.tree_node* @build1(i32 115, %union.tree_node* %26, %union.tree_node* %27)
  store %union.tree_node* %call60, %union.tree_node** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.58, %if.then.48
  %28 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %28, i32 0, i32 3
  %29 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  %30 = load %union.tree_node*, %union.tree_node** %p, align 8
  %31 = ptrtoint %union.tree_node* %30 to i64
  %32 = load %union.tree_node*, %union.tree_node** %value, align 8
  %33 = ptrtoint %union.tree_node* %32 to i64
  %call61 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %29, i64 %31, i64 %33)
  br label %for.inc

if.end.62:                                        ; preds = %land.lhs.true.38, %lor.lhs.false
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %cond.end
  %34 = load %union.tree_node*, %union.tree_node** %p, align 8
  %35 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %36 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %36, i32 0, i32 0
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx64 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 0
  %38 = load %union.tree_node*, %union.tree_node** %arrayidx64, align 8
  %call65 = call %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %34, %union.tree_node* %35, %union.tree_node* %38)
  store %union.tree_node* %call65, %union.tree_node** %var, align 8
  %39 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map66 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %39, i32 0, i32 3
  %40 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map66, align 8
  %41 = load %union.tree_node*, %union.tree_node** %p, align 8
  %42 = ptrtoint %union.tree_node* %41 to i64
  %43 = load %union.tree_node*, %union.tree_node** %var, align 8
  %44 = ptrtoint %union.tree_node* %43 to i64
  %call67 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %40, i64 %42, i64 %44)
  %45 = load %union.tree_node*, %union.tree_node** %var, align 8
  %call68 = call %union.tree_node* (i32, ...) @build_stmt(i32 154, %union.tree_node* %45)
  store %union.tree_node* %call68, %union.tree_node** %init_stmt, align 8
  %46 = load %union.tree_node*, %union.tree_node** %init_stmts, align 8
  %47 = load %union.tree_node*, %union.tree_node** %init_stmt, align 8
  %common69 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common69, i32 0, i32 0
  store %union.tree_node* %46, %union.tree_node** %chain, align 8
  %48 = load %union.tree_node*, %union.tree_node** %init_stmt, align 8
  store %union.tree_node* %48, %union.tree_node** %init_stmts, align 8
  %49 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common70 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common70, i32 0, i32 1
  %50 = load %union.tree_node*, %union.tree_node** %type71, align 8
  %type72 = bitcast %union.tree_node* %50 to %struct.tree_type*
  %needs_constructing_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type72, i32 0, i32 6
  %bf.load73 = load i32, i32* %needs_constructing_flag, align 4
  %bf.lshr74 = lshr i32 %bf.load73, 18
  %bf.clear75 = and i32 %bf.lshr74, 1
  %tobool76 = icmp ne i32 %bf.clear75, 0
  br i1 %tobool76, label %if.else, label %if.then.77

if.then.77:                                       ; preds = %if.end.63
  %51 = load %union.tree_node*, %union.tree_node** %value, align 8
  %52 = load %union.tree_node*, %union.tree_node** %var, align 8
  %decl78 = bitcast %union.tree_node* %52 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl78, i32 0, i32 12
  store %union.tree_node* %51, %union.tree_node** %initial, align 8
  br label %if.end.89

if.else:                                          ; preds = %if.end.63
  %53 = load %union.tree_node*, %union.tree_node** %var, align 8
  %common79 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %readonly_flag80 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common79, i32 0, i32 2
  %bf.load81 = load i32, i32* %readonly_flag80, align 8
  %bf.clear82 = and i32 %bf.load81, -4097
  store i32 %bf.clear82, i32* %readonly_flag80, align 8
  %54 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common83 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %type84 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common83, i32 0, i32 1
  %55 = load %union.tree_node*, %union.tree_node** %type84, align 8
  %56 = load %union.tree_node*, %union.tree_node** %var, align 8
  %57 = load %union.tree_node*, %union.tree_node** %value, align 8
  %call85 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 49, %union.tree_node* %55, %union.tree_node* %56, %union.tree_node* %57)
  %call86 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %call85)
  store %union.tree_node* %call86, %union.tree_node** %init_stmt, align 8
  %58 = load %union.tree_node*, %union.tree_node** %init_stmts, align 8
  %59 = load %union.tree_node*, %union.tree_node** %init_stmt, align 8
  %common87 = bitcast %union.tree_node* %59 to %struct.tree_common*
  %chain88 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common87, i32 0, i32 0
  store %union.tree_node* %58, %union.tree_node** %chain88, align 8
  %60 = load %union.tree_node*, %union.tree_node** %init_stmt, align 8
  store %union.tree_node* %60, %union.tree_node** %init_stmts, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.77
  %61 = load %union.tree_node*, %union.tree_node** %var, align 8
  %call90 = call %union.tree_node* @maybe_build_cleanup(%union.tree_node* %61)
  store %union.tree_node* %call90, %union.tree_node** %cleanup, align 8
  %62 = load %union.tree_node*, %union.tree_node** %cleanup, align 8
  %tobool91 = icmp ne %union.tree_node* %62, null
  br i1 %tobool91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %if.end.89
  %63 = load %union.tree_node*, %union.tree_node** %var, align 8
  %64 = load %union.tree_node*, %union.tree_node** %cleanup, align 8
  %call93 = call %union.tree_node* (i32, ...) @build_stmt(i32 171, %union.tree_node* %63, %union.tree_node* %64)
  store %union.tree_node* %call93, %union.tree_node** %cleanup_stmt, align 8
  %65 = load %union.tree_node*, %union.tree_node** %init_stmts, align 8
  %66 = load %union.tree_node*, %union.tree_node** %cleanup_stmt, align 8
  %common94 = bitcast %union.tree_node* %66 to %struct.tree_common*
  %chain95 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common94, i32 0, i32 0
  store %union.tree_node* %65, %union.tree_node** %chain95, align 8
  %67 = load %union.tree_node*, %union.tree_node** %cleanup_stmt, align 8
  store %union.tree_node* %67, %union.tree_node** %init_stmts, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.96, %if.end
  %68 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool97 = icmp ne %union.tree_node* %68, null
  br i1 %tobool97, label %cond.true.98, label %cond.false.101

cond.true.98:                                     ; preds = %for.inc
  %69 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common99 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %chain100 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common99, i32 0, i32 0
  %70 = load %union.tree_node*, %union.tree_node** %chain100, align 8
  br label %cond.end.102

cond.false.101:                                   ; preds = %for.inc
  %71 = load %union.tree_node*, %union.tree_node** %a, align 8
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.true.98
  %cond103 = phi %union.tree_node* [ %70, %cond.true.98 ], [ %71, %cond.false.101 ]
  store %union.tree_node* %cond103, %union.tree_node** %a, align 8
  %72 = load %union.tree_node*, %union.tree_node** %p, align 8
  %common104 = bitcast %union.tree_node* %72 to %struct.tree_common*
  %chain105 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common104, i32 0, i32 0
  %73 = load %union.tree_node*, %union.tree_node** %chain105, align 8
  store %union.tree_node* %73, %union.tree_node** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.106

for.cond.106:                                     ; preds = %for.inc.126, %for.end
  %74 = load %union.tree_node*, %union.tree_node** %a, align 8
  %tobool107 = icmp ne %union.tree_node* %74, null
  br i1 %tobool107, label %for.body.108, label %for.end.129

for.body.108:                                     ; preds = %for.cond.106
  %75 = load %union.tree_node*, %union.tree_node** %a, align 8
  %list111 = bitcast %union.tree_node* %75 to %struct.tree_list*
  %value112 = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list111, i32 0, i32 2
  %76 = load %union.tree_node*, %union.tree_node** %value112, align 8
  store %union.tree_node* %76, %union.tree_node** %value110, align 8
  %77 = load %union.tree_node*, %union.tree_node** %value110, align 8
  %tobool113 = icmp ne %union.tree_node* %77, null
  br i1 %tobool113, label %lor.lhs.false.114, label %if.then.121

lor.lhs.false.114:                                ; preds = %for.body.108
  %78 = load %union.tree_node*, %union.tree_node** %value110, align 8
  %common115 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %side_effects_flag116 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common115, i32 0, i32 2
  %bf.load117 = load i32, i32* %side_effects_flag116, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 8
  %bf.clear119 = and i32 %bf.lshr118, 1
  %tobool120 = icmp ne i32 %bf.clear119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %lor.lhs.false.114, %for.body.108
  br label %for.inc.126

if.end.122:                                       ; preds = %lor.lhs.false.114
  %79 = load %union.tree_node*, %union.tree_node** %value110, align 8
  %call123 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %79)
  store %union.tree_node* %call123, %union.tree_node** %init_stmt109, align 8
  %80 = load %union.tree_node*, %union.tree_node** %init_stmts, align 8
  %81 = load %union.tree_node*, %union.tree_node** %init_stmt109, align 8
  %common124 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %chain125 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common124, i32 0, i32 0
  store %union.tree_node* %80, %union.tree_node** %chain125, align 8
  %82 = load %union.tree_node*, %union.tree_node** %init_stmt109, align 8
  store %union.tree_node* %82, %union.tree_node** %init_stmts, align 8
  br label %for.inc.126

for.inc.126:                                      ; preds = %if.end.122, %if.then.121
  %83 = load %union.tree_node*, %union.tree_node** %a, align 8
  %common127 = bitcast %union.tree_node* %83 to %struct.tree_common*
  %chain128 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common127, i32 0, i32 0
  %84 = load %union.tree_node*, %union.tree_node** %chain128, align 8
  store %union.tree_node* %84, %union.tree_node** %a, align 8
  br label %for.cond.106

for.end.129:                                      ; preds = %for.cond.106
  %85 = load %union.tree_node*, %union.tree_node** %init_stmts, align 8
  %call130 = call %union.tree_node* @nreverse(%union.tree_node* %85)
  ret %union.tree_node* %call130
}

declare %union.tree_node* @chainon(%union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @build_stmt(i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @remap_block(%union.tree_node* %scope_stmt, %union.tree_node* %decls, %struct.inline_data* %id) #0 {
entry:
  %scope_stmt.addr = alloca %union.tree_node*, align 8
  %decls.addr = alloca %union.tree_node*, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  %old_block = alloca %union.tree_node*, align 8
  %new_block = alloca %union.tree_node*, align 8
  %old_var = alloca %union.tree_node*, align 8
  %fn = alloca %union.tree_node*, align 8
  %new_var = alloca %union.tree_node*, align 8
  %first_block = alloca %union.tree_node**, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  store %union.tree_node* %scope_stmt, %union.tree_node** %scope_stmt.addr, align 8
  store %union.tree_node* %decls, %union.tree_node** %decls.addr, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %in_target_cleanup_p = getelementptr inbounds %struct.inline_data, %struct.inline_data* %0, i32 0, i32 4
  %1 = load i32, i32* %in_target_cleanup_p, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp = bitcast %union.tree_node* %2 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  store %union.tree_node* null, %union.tree_node** %arrayidx, align 8
  br label %if.end.88

if.end:                                           ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %common = bitcast %union.tree_node* %3 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %lang_flag_0, align 8
  %bf.lshr = lshr i32 %bf.load, 24
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else.63

land.lhs.true:                                    ; preds = %if.end
  %4 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp2 = bitcast %union.tree_node* %4 to %struct.tree_exp*
  %operands3 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp2, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands3, i32 0, i64 0
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx4, align 8
  %tobool5 = icmp ne %union.tree_node* %5, null
  br i1 %tobool5, label %if.then.6, label %if.else.63

if.then.6:                                        ; preds = %land.lhs.true
  %6 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp7 = bitcast %union.tree_node* %6 to %struct.tree_exp*
  %operands8 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp7, i32 0, i32 2
  %arrayidx9 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands8, i32 0, i64 0
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx9, align 8
  store %union.tree_node* %7, %union.tree_node** %old_block, align 8
  %call = call %union.tree_node* @make_node(i32 4)
  store %union.tree_node* %call, %union.tree_node** %new_block, align 8
  %8 = load %union.tree_node*, %union.tree_node** %old_block, align 8
  %common10 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %used_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load11 = load i32, i32* %used_flag, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 16
  %bf.clear13 = and i32 %bf.lshr12, 1
  %9 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %common14 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %used_flag15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 2
  %bf.load16 = load i32, i32* %used_flag15, align 8
  %bf.value = and i32 %bf.clear13, 1
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear17 = and i32 %bf.load16, -65537
  %bf.set = or i32 %bf.clear17, %bf.shl
  store i32 %bf.set, i32* %used_flag15, align 8
  %10 = load %union.tree_node*, %union.tree_node** %old_block, align 8
  %11 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block = bitcast %union.tree_node* %11 to %struct.tree_block*
  %abstract_origin = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 5
  store %union.tree_node* %10, %union.tree_node** %abstract_origin, align 8
  %12 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %13 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp18 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands19 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp18, i32 0, i32 2
  %arrayidx20 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands19, i32 0, i64 0
  store %union.tree_node* %12, %union.tree_node** %arrayidx20, align 8
  %14 = load %union.tree_node*, %union.tree_node** %decls.addr, align 8
  %tobool21 = icmp ne %union.tree_node* %14, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %15 = load %union.tree_node*, %union.tree_node** %decls.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %16 = load %union.tree_node*, %union.tree_node** %old_block, align 8
  %block22 = bitcast %union.tree_node* %16 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block22, i32 0, i32 2
  %17 = load %union.tree_node*, %union.tree_node** %vars, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %15, %cond.true ], [ %17, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %old_var, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %18 = load %union.tree_node*, %union.tree_node** %old_var, align 8
  %tobool23 = icmp ne %union.tree_node* %18, null
  br i1 %tobool23, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %union.tree_node*, %union.tree_node** %old_var, align 8
  %20 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %call24 = call %union.tree_node* @remap_decl(%union.tree_node* %19, %struct.inline_data* %20)
  store %union.tree_node* %call24, %union.tree_node** %new_var, align 8
  %21 = load %union.tree_node*, %union.tree_node** %new_var, align 8
  %tobool25 = icmp ne %union.tree_node* %21, null
  br i1 %tobool25, label %lor.lhs.false, label %if.then.31

lor.lhs.false:                                    ; preds = %for.body
  %22 = load %union.tree_node*, %union.tree_node** %new_var, align 8
  %common26 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %code, align 8
  %bf.clear28 = and i32 %bf.load27, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %23 = load i8, i8* %arrayidx29, align 1
  %conv = sext i8 %23 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %if.else, label %if.then.31

if.then.31:                                       ; preds = %lor.lhs.false, %for.body
  br label %if.end.37

if.else:                                          ; preds = %lor.lhs.false
  %24 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block32 = bitcast %union.tree_node* %24 to %struct.tree_block*
  %vars33 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block32, i32 0, i32 2
  %25 = load %union.tree_node*, %union.tree_node** %vars33, align 8
  %26 = load %union.tree_node*, %union.tree_node** %new_var, align 8
  %common34 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 0
  store %union.tree_node* %25, %union.tree_node** %chain, align 8
  %27 = load %union.tree_node*, %union.tree_node** %new_var, align 8
  %28 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block35 = bitcast %union.tree_node* %28 to %struct.tree_block*
  %vars36 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block35, i32 0, i32 2
  store %union.tree_node* %27, %union.tree_node** %vars36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %29 = load %union.tree_node*, %union.tree_node** %old_var, align 8
  %common38 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %chain39 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common38, i32 0, i32 0
  %30 = load %union.tree_node*, %union.tree_node** %chain39, align 8
  store %union.tree_node* %30, %union.tree_node** %old_var, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block40 = bitcast %union.tree_node* %31 to %struct.tree_block*
  %vars41 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block40, i32 0, i32 2
  %32 = load %union.tree_node*, %union.tree_node** %vars41, align 8
  %call42 = call %union.tree_node* @nreverse(%union.tree_node* %32)
  %33 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %block43 = bitcast %union.tree_node* %33 to %struct.tree_block*
  %vars44 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block43, i32 0, i32 2
  store %union.tree_node* %call42, %union.tree_node** %vars44, align 8
  %34 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %34, i32 0, i32 0
  %35 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %35, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx45 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 0
  %36 = load %union.tree_node*, %union.tree_node** %arrayidx45, align 8
  store %union.tree_node* %36, %union.tree_node** %fn, align 8
  %37 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %cloning_p = getelementptr inbounds %struct.inline_data, %struct.inline_data* %37, i32 0, i32 8
  %38 = load i8, i8* %cloning_p, align 1
  %tobool46 = trunc i8 %38 to i1
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %for.end
  %39 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  call void @insert_block(%union.tree_node* %39)
  br label %if.end.61

if.else.48:                                       ; preds = %for.end
  %40 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl = bitcast %union.tree_node* %40 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %41 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %tobool49 = icmp ne %union.tree_node* %41, null
  br i1 %tobool49, label %if.then.50, label %if.else.55

if.then.50:                                       ; preds = %if.else.48
  %42 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl51 = bitcast %union.tree_node* %42 to %struct.tree_decl*
  %initial52 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl51, i32 0, i32 12
  %43 = load %union.tree_node*, %union.tree_node** %initial52, align 8
  %common53 = bitcast %union.tree_node* %43 to %struct.tree_common*
  %chain54 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common53, i32 0, i32 0
  store %union.tree_node** %chain54, %union.tree_node*** %first_block, align 8
  br label %if.end.58

if.else.55:                                       ; preds = %if.else.48
  %44 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl56 = bitcast %union.tree_node* %44 to %struct.tree_decl*
  %initial57 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl56, i32 0, i32 12
  store %union.tree_node** %initial57, %union.tree_node*** %first_block, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.50
  %45 = load %union.tree_node**, %union.tree_node*** %first_block, align 8
  %46 = load %union.tree_node*, %union.tree_node** %45, align 8
  %47 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %common59 = bitcast %union.tree_node* %47 to %struct.tree_common*
  %chain60 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common59, i32 0, i32 0
  store %union.tree_node* %46, %union.tree_node** %chain60, align 8
  %48 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %49 = load %union.tree_node**, %union.tree_node*** %first_block, align 8
  store %union.tree_node* %48, %union.tree_node** %49, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.58, %if.then.47
  %50 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %50, i32 0, i32 3
  %51 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  %52 = load %union.tree_node*, %union.tree_node** %old_block, align 8
  %53 = ptrtoint %union.tree_node* %52 to i64
  %54 = load %union.tree_node*, %union.tree_node** %new_block, align 8
  %55 = ptrtoint %union.tree_node* %54 to i64
  %call62 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %51, i64 %53, i64 %55)
  br label %if.end.88

if.else.63:                                       ; preds = %land.lhs.true, %if.end
  %56 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %common64 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %lang_flag_065 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common64, i32 0, i32 2
  %bf.load66 = load i32, i32* %lang_flag_065, align 8
  %bf.lshr67 = lshr i32 %bf.load66, 24
  %bf.clear68 = and i32 %bf.lshr67, 1
  %tobool69 = icmp ne i32 %bf.clear68, 0
  br i1 %tobool69, label %if.end.87, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %if.else.63
  %57 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp71 = bitcast %union.tree_node* %57 to %struct.tree_exp*
  %operands72 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp71, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands72, i32 0, i64 0
  %58 = load %union.tree_node*, %union.tree_node** %arrayidx73, align 8
  %tobool74 = icmp ne %union.tree_node* %58, null
  br i1 %tobool74, label %if.then.75, label %if.end.87

if.then.75:                                       ; preds = %land.lhs.true.70
  %59 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map76 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %59, i32 0, i32 3
  %60 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map76, align 8
  %61 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp77 = bitcast %union.tree_node* %61 to %struct.tree_exp*
  %operands78 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp77, i32 0, i32 2
  %arrayidx79 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands78, i32 0, i64 0
  %62 = load %union.tree_node*, %union.tree_node** %arrayidx79, align 8
  %63 = ptrtoint %union.tree_node* %62 to i64
  %call80 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %60, i64 %63)
  store %struct.splay_tree_node_s* %call80, %struct.splay_tree_node_s** %n, align 8
  %64 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool81 = icmp ne %struct.splay_tree_node_s* %64, null
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %if.then.75
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 289, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remap_block, i32 0, i32 0)) #5
  unreachable

if.end.83:                                        ; preds = %if.then.75
  %65 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %65, i32 0, i32 1
  %66 = load i64, i64* %value, align 8
  %67 = inttoptr i64 %66 to %union.tree_node*
  %68 = load %union.tree_node*, %union.tree_node** %scope_stmt.addr, align 8
  %exp84 = bitcast %union.tree_node* %68 to %struct.tree_exp*
  %operands85 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp84, i32 0, i32 2
  %arrayidx86 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands85, i32 0, i64 0
  store %union.tree_node* %67, %union.tree_node** %arrayidx86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.83, %land.lhs.true.70, %if.else.63
  br label %if.end.88

if.end.88:                                        ; preds = %if.then, %if.end.87, %if.end.61
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @declare_return_variable(%struct.inline_data* %id, %union.tree_node** %use_stmt) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  %use_stmt.addr = alloca %union.tree_node**, align 8
  %fn = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  %var = alloca %union.tree_node*, align 8
  %need_return_decl = alloca i32, align 4
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  store %union.tree_node** %use_stmt, %union.tree_node*** %use_stmt.addr, align 8
  %0 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %0, i32 0, i32 0
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %3, i32 0, i32 0
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %sub
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %fn, align 8
  %6 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %decl = bitcast %union.tree_node* %6 to %struct.tree_decl*
  %result2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 11
  %7 = load %union.tree_node*, %union.tree_node** %result2, align 8
  store %union.tree_node* %7, %union.tree_node** %result, align 8
  store i32 1, i32* %need_return_decl, align 4
  %8 = load %union.tree_node*, %union.tree_node** %result, align 8
  %tobool = icmp ne %union.tree_node* %8, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %result, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common3 = bitcast %union.tree_node* %10 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common3, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %11 = load %union.tree_node**, %union.tree_node*** %use_stmt.addr, align 8
  store %union.tree_node* null, %union.tree_node** %11, align 8
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 6), align 8
  %13 = load %union.tree_node*, %union.tree_node** %result, align 8
  %14 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %15 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns4 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %15, i32 0, i32 0
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns4, align 8
  %data5 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %tree6 = bitcast %union.varray_data_tag* %data5 to [1 x %union.tree_node*]*
  %arrayidx7 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree6, i32 0, i64 0
  %17 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  %18 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %18, i32 0, i32 3
  %19 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  %20 = bitcast %struct.splay_tree_s* %19 to i8*
  %21 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %target_exprs = getelementptr inbounds %struct.inline_data, %struct.inline_data* %21, i32 0, i32 5
  %22 = bitcast %struct.varray_head_tag** %target_exprs to i8*
  %call = call %union.tree_node* %12(%union.tree_node* %13, %union.tree_node* %14, %union.tree_node* %17, i8* %20, i32* %need_return_decl, i8* %22)
  store %union.tree_node* %call, %union.tree_node** %var, align 8
  %23 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map8 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %23, i32 0, i32 3
  %24 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map8, align 8
  %25 = load %union.tree_node*, %union.tree_node** %result, align 8
  %26 = ptrtoint %union.tree_node* %25 to i64
  %27 = load %union.tree_node*, %union.tree_node** %var, align 8
  %28 = ptrtoint %union.tree_node* %27 to i64
  %call9 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %24, i64 %26, i64 %28)
  %29 = load %union.tree_node*, %union.tree_node** %var, align 8
  %common10 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type11, align 8
  %31 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common12 = bitcast %union.tree_node* %31 to %struct.tree_common*
  %type13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 1
  %32 = load %union.tree_node*, %union.tree_node** %type13, align 8
  %common14 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %type15, align 8
  %cmp16 = icmp eq %union.tree_node* %30, %33
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end
  %34 = load %union.tree_node*, %union.tree_node** %var, align 8
  %call18 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %34)
  %35 = load %union.tree_node**, %union.tree_node*** %use_stmt.addr, align 8
  store %union.tree_node* %call18, %union.tree_node** %35, align 8
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %36 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %common19 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %type20 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common19, i32 0, i32 1
  %37 = load %union.tree_node*, %union.tree_node** %type20, align 8
  %common21 = bitcast %union.tree_node* %37 to %struct.tree_common*
  %type22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 1
  %38 = load %union.tree_node*, %union.tree_node** %type22, align 8
  %39 = load %union.tree_node*, %union.tree_node** %var, align 8
  %call23 = call %union.tree_node* @build1(i32 115, %union.tree_node* %38, %union.tree_node* %39)
  %call24 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %call23)
  %40 = load %union.tree_node**, %union.tree_node*** %use_stmt.addr, align 8
  store %union.tree_node* %call24, %union.tree_node** %40, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %if.then.17
  %41 = load %union.tree_node**, %union.tree_node*** %use_stmt.addr, align 8
  %42 = load %union.tree_node*, %union.tree_node** %41, align 8
  %common26 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %addressable_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common26, i32 0, i32 2
  %bf.load27 = load i32, i32* %addressable_flag, align 8
  %bf.clear28 = and i32 %bf.load27, -1025
  %bf.set = or i32 %bf.clear28, 1024
  store i32 %bf.set, i32* %addressable_flag, align 8
  %43 = load i32, i32* %need_return_decl, align 4
  %tobool29 = icmp ne i32 %43, 0
  br i1 %tobool29, label %if.then.30, label %if.else.32

if.then.30:                                       ; preds = %if.end.25
  %44 = load %union.tree_node*, %union.tree_node** %var, align 8
  %call31 = call %union.tree_node* (i32, ...) @build_stmt(i32 154, %union.tree_node* %44)
  store %union.tree_node* %call31, %union.tree_node** %retval
  br label %return

if.else.32:                                       ; preds = %if.end.25
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else.32, %if.then.30, %if.then
  %45 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %45
}

declare void @splay_tree_delete(%struct.splay_tree_s*) #2

declare %union.tree_node* @build_expr_wfl(%union.tree_node*, i8*, i32, i32) #2

declare void @pop_srcloc() #2

declare %union.tree_node* @fold(%union.tree_node*) #2

declare %union.tree_node* @decl_constant_value(%union.tree_node*) #2

declare %union.tree_node* @copy_decl_for_inlining(%union.tree_node*, %union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #2

declare %union.tree_node* @maybe_build_cleanup(%union.tree_node*) #2

declare %union.tree_node* @nreverse(%union.tree_node*) #2

declare %union.tree_node* @make_node(i32) #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @remap_decl(%union.tree_node* %decl, %struct.inline_data* %id) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %decl.addr = alloca %union.tree_node*, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  %fn = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  %members = alloca %union.tree_node*, align 8
  %src = alloca %union.tree_node*, align 8
  %member = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %0, i32 0, i32 0
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 1
  %2 = load i64, i64* %elements_used, align 8
  %sub = sub i64 %2, 1
  %3 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %3, i32 0, i32 0
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %sub
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %5, %union.tree_node** %fn, align 8
  %6 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 5), align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %8 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call = call i32 %6(%union.tree_node* %7, %union.tree_node* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %9, i32 0, i32 3
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  %11 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %12 = ptrtoint %union.tree_node* %11 to i64
  %call2 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %10, i64 %12)
  store %struct.splay_tree_node_s* %call2, %struct.splay_tree_node_s** %n, align 8
  %13 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool3 = icmp ne %struct.splay_tree_node_s* %13, null
  br i1 %tobool3, label %if.end.68, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %14 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %15 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %16 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %fns5 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %16, i32 0, i32 0
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns5, align 8
  %data6 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 4
  %tree7 = bitcast %union.varray_data_tag* %data6 to [1 x %union.tree_node*]*
  %arrayidx8 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree7, i32 0, i64 0
  %18 = load %union.tree_node*, %union.tree_node** %arrayidx8, align 8
  %call9 = call %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %14, %union.tree_node* %15, %union.tree_node* %18)
  store %union.tree_node* %call9, %union.tree_node** %t, align 8
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %19 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %20 = load %union.tree_node*, %union.tree_node** %type, align 8
  %tobool10 = icmp ne %union.tree_node* %20, null
  br i1 %tobool10, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.then.4
  %21 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common11 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type12 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type12, align 8
  %common13 = bitcast %union.tree_node* %22 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 18
  br i1 %cmp, label %land.lhs.true.14, label %if.end.40

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %23 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common15 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  %24 = load %union.tree_node*, %union.tree_node** %type16, align 8
  %type17 = bitcast %union.tree_node* %24 to %struct.tree_type*
  %values = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type17, i32 0, i32 1
  %25 = load %union.tree_node*, %union.tree_node** %values, align 8
  %tobool18 = icmp ne %union.tree_node* %25, null
  br i1 %tobool18, label %if.then.19, label %if.end.40

if.then.19:                                       ; preds = %land.lhs.true.14
  %26 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common20 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %type21 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common20, i32 0, i32 1
  %27 = load %union.tree_node*, %union.tree_node** %type21, align 8
  %call22 = call %union.tree_node* @copy_node(%union.tree_node* %27)
  %28 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common23 = bitcast %union.tree_node* %28 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common23, i32 0, i32 1
  store %union.tree_node* %call22, %union.tree_node** %type24, align 8
  %29 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common25 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %type26 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common25, i32 0, i32 1
  %30 = load %union.tree_node*, %union.tree_node** %type26, align 8
  %type27 = bitcast %union.tree_node* %30 to %struct.tree_type*
  %values28 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type27, i32 0, i32 1
  %31 = load %union.tree_node*, %union.tree_node** %values28, align 8
  %call29 = call %union.tree_node* @copy_node(%union.tree_node* %31)
  %32 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common30 = bitcast %union.tree_node* %32 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %type31, align 8
  %type32 = bitcast %union.tree_node* %33 to %struct.tree_type*
  %values33 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type32, i32 0, i32 1
  store %union.tree_node* %call29, %union.tree_node** %values33, align 8
  %34 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common34 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type35, align 8
  %type36 = bitcast %union.tree_node* %35 to %struct.tree_type*
  %values37 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type36, i32 0, i32 1
  %36 = load %union.tree_node*, %union.tree_node** %values37, align 8
  %type38 = bitcast %union.tree_node* %36 to %struct.tree_type*
  %maxval = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type38, i32 0, i32 13
  %37 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %38 = bitcast %struct.inline_data* %37 to i8*
  %call39 = call %union.tree_node* @walk_tree(%union.tree_node** %maxval, %union.tree_node* (%union.tree_node**, i32*, i8*)* @copy_body_r, i8* %38, i8* null)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.19, %land.lhs.true.14, %land.lhs.true, %if.then.4
  %39 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl41 = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %name = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl41, i32 0, i32 8
  %40 = load %union.tree_node*, %union.tree_node** %name, align 8
  %tobool42 = icmp ne %union.tree_node* %40, null
  br i1 %tobool42, label %if.end.65, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %if.end.40
  %41 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common44 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %type45 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common44, i32 0, i32 1
  %42 = load %union.tree_node*, %union.tree_node** %type45, align 8
  %tobool46 = icmp ne %union.tree_node* %42, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.65

land.lhs.true.47:                                 ; preds = %land.lhs.true.43
  %43 = load i32 (%union.tree_node*)*, i32 (%union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 7), align 8
  %44 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common48 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %type49 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common48, i32 0, i32 1
  %45 = load %union.tree_node*, %union.tree_node** %type49, align 8
  %call50 = call i32 %43(%union.tree_node* %45)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.65

if.then.52:                                       ; preds = %land.lhs.true.47
  store %union.tree_node* null, %union.tree_node** %members, align 8
  %46 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl53 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl53, i32 0, i32 10
  %47 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %47, %union.tree_node** %src, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.52
  %48 = load %union.tree_node*, %union.tree_node** %src, align 8
  %tobool54 = icmp ne %union.tree_node* %48, null
  br i1 %tobool54, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %49 = load %union.tree_node*, %union.tree_node** %src, align 8
  %list = bitcast %union.tree_node* %49 to %struct.tree_list*
  %value = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list, i32 0, i32 2
  %50 = load %union.tree_node*, %union.tree_node** %value, align 8
  %51 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %call55 = call %union.tree_node* @remap_decl(%union.tree_node* %50, %struct.inline_data* %51)
  store %union.tree_node* %call55, %union.tree_node** %member, align 8
  %52 = load %union.tree_node*, %union.tree_node** %src, align 8
  %list56 = bitcast %union.tree_node* %52 to %struct.tree_list*
  %purpose = getelementptr inbounds %struct.tree_list, %struct.tree_list* %list56, i32 0, i32 1
  %53 = load %union.tree_node*, %union.tree_node** %purpose, align 8
  %tobool57 = icmp ne %union.tree_node* %53, null
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.remap_decl, i32 0, i32 0)) #5
  unreachable

if.end.59:                                        ; preds = %for.body
  %54 = load %union.tree_node*, %union.tree_node** %member, align 8
  %55 = load %union.tree_node*, %union.tree_node** %members, align 8
  %call60 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %54, %union.tree_node* %55)
  store %union.tree_node* %call60, %union.tree_node** %members, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.59
  %56 = load %union.tree_node*, %union.tree_node** %src, align 8
  %common61 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common61, i32 0, i32 0
  %57 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %57, %union.tree_node** %src, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load %union.tree_node*, %union.tree_node** %members, align 8
  %call62 = call %union.tree_node* @nreverse(%union.tree_node* %58)
  %59 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl63 = bitcast %union.tree_node* %59 to %struct.tree_decl*
  %arguments64 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl63, i32 0, i32 10
  store %union.tree_node* %call62, %union.tree_node** %arguments64, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %for.end, %land.lhs.true.47, %land.lhs.true.43, %if.end.40
  %60 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  %decl_map66 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %60, i32 0, i32 3
  %61 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map66, align 8
  %62 = load %union.tree_node*, %union.tree_node** %decl.addr, align 8
  %63 = ptrtoint %union.tree_node* %62 to i64
  %64 = load %union.tree_node*, %union.tree_node** %t, align 8
  %65 = ptrtoint %union.tree_node* %64 to i64
  %call67 = call %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %61, i64 %63, i64 %65)
  store %struct.splay_tree_node_s* %call67, %struct.splay_tree_node_s** %n, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.65, %if.end
  %66 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value69 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %66, i32 0, i32 1
  %67 = load i64, i64* %value69, align 8
  %68 = inttoptr i64 %67 to %union.tree_node*
  store %union.tree_node* %68, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.then
  %69 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %69
}

declare void @insert_block(%union.tree_node*) #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @copy_body_r(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %data.addr = alloca i8*, align 8
  %id = alloca %struct.inline_data*, align 8
  %fn = alloca %union.tree_node*, align 8
  %return_stmt = alloca %union.tree_node*, align 8
  %goto_stmt = alloca %union.tree_node*, align 8
  %new_decl = alloca %union.tree_node*, align 8
  %decl = alloca %union.tree_node*, align 8
  %value = alloca %union.tree_node*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.inline_data*
  store %struct.inline_data* %1, %struct.inline_data** %id, align 8
  %2 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns = getelementptr inbounds %struct.inline_data, %struct.inline_data* %2, i32 0, i32 0
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 1
  %4 = load i64, i64* %elements_used, align 8
  %sub = sub i64 %4, 1
  %5 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns1 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %5, i32 0, i32 0
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns1, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data2 to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %sub
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %7, %union.tree_node** %fn, align 8
  %8 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  %common = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 159
  br i1 %cmp, label %land.lhs.true, label %if.else.23

land.lhs.true:                                    ; preds = %entry
  %10 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %ret_label = getelementptr inbounds %struct.inline_data, %struct.inline_data* %10, i32 0, i32 2
  %11 = load %union.tree_node*, %union.tree_node** %ret_label, align 8
  %tobool = icmp ne %union.tree_node* %11, null
  br i1 %tobool, label %if.then, label %if.else.23

if.then:                                          ; preds = %land.lhs.true
  %12 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %13 = load %union.tree_node*, %union.tree_node** %12, align 8
  store %union.tree_node* %13, %union.tree_node** %return_stmt, align 8
  %14 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %ret_label3 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %14, i32 0, i32 2
  %15 = load %union.tree_node*, %union.tree_node** %ret_label3, align 8
  %call = call %union.tree_node* (i32, ...) @build_stmt(i32 163, %union.tree_node* %15)
  store %union.tree_node* %call, %union.tree_node** %goto_stmt, align 8
  %16 = load %union.tree_node*, %union.tree_node** %return_stmt, align 8
  %common4 = bitcast %union.tree_node* %16 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 0
  %17 = load %union.tree_node*, %union.tree_node** %chain, align 8
  %18 = load %union.tree_node*, %union.tree_node** %goto_stmt, align 8
  %common5 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain6 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common5, i32 0, i32 0
  store %union.tree_node* %17, %union.tree_node** %chain6, align 8
  %19 = load %union.tree_node*, %union.tree_node** %goto_stmt, align 8
  %common7 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %lang_flag_0 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common7, i32 0, i32 2
  %bf.load8 = load i32, i32* %lang_flag_0, align 8
  %bf.clear9 = and i32 %bf.load8, -16777217
  %bf.set = or i32 %bf.clear9, 16777216
  store i32 %bf.set, i32* %lang_flag_0, align 8
  %20 = load %union.tree_node*, %union.tree_node** %return_stmt, align 8
  %exp = bitcast %union.tree_node* %20 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx10 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %21 = load %union.tree_node*, %union.tree_node** %arrayidx10, align 8
  %tobool11 = icmp ne %union.tree_node* %21, null
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %22 = load %union.tree_node*, %union.tree_node** %return_stmt, align 8
  %exp13 = bitcast %union.tree_node* %22 to %struct.tree_exp*
  %operands14 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp13, i32 0, i32 2
  %arrayidx15 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands14, i32 0, i64 0
  %23 = load %union.tree_node*, %union.tree_node** %arrayidx15, align 8
  %call16 = call %union.tree_node* (i32, ...) @build_stmt(i32 152, %union.tree_node* %23)
  %24 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %call16, %union.tree_node** %24, align 8
  %25 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %26 = load %union.tree_node*, %union.tree_node** %25, align 8
  %common17 = bitcast %union.tree_node* %26 to %struct.tree_common*
  %lang_flag_1 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %lang_flag_1, align 8
  %bf.clear19 = and i32 %bf.load18, -33554433
  %bf.set20 = or i32 %bf.clear19, 33554432
  store i32 %bf.set20, i32* %lang_flag_1, align 8
  %27 = load %union.tree_node*, %union.tree_node** %goto_stmt, align 8
  %28 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %29 = load %union.tree_node*, %union.tree_node** %28, align 8
  %common21 = bitcast %union.tree_node* %29 to %struct.tree_common*
  %chain22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 0
  store %union.tree_node* %27, %union.tree_node** %chain22, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %30 = load %union.tree_node*, %union.tree_node** %goto_stmt, align 8
  %31 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %30, %union.tree_node** %31, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %if.end.205

if.else.23:                                       ; preds = %land.lhs.true, %entry
  %32 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 5), align 8
  %33 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %34 = load %union.tree_node*, %union.tree_node** %33, align 8
  %35 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call24 = call i32 %32(%union.tree_node* %34, %union.tree_node* %35)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.62

if.then.26:                                       ; preds = %if.else.23
  %36 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8
  %38 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %call27 = call %union.tree_node* @remap_decl(%union.tree_node* %37, %struct.inline_data* %38)
  store %union.tree_node* %call27, %union.tree_node** %new_decl, align 8
  %39 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %tobool28 = icmp ne %union.tree_node* %39, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 381, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.copy_body_r, i32 0, i32 0)) #5
  unreachable

if.end.30:                                        ; preds = %if.then.26
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.30
  %40 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %common31 = bitcast %union.tree_node* %40 to %struct.tree_common*
  %code32 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common31, i32 0, i32 2
  %bf.load33 = load i32, i32* %code32, align 8
  %bf.clear34 = and i32 %bf.load33, 255
  %cmp35 = icmp eq i32 %bf.clear34, 115
  br i1 %cmp35, label %land.lhs.true.47, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %41 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %common36 = bitcast %union.tree_node* %41 to %struct.tree_common*
  %code37 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common36, i32 0, i32 2
  %bf.load38 = load i32, i32* %code37, align 8
  %bf.clear39 = and i32 %bf.load38, 255
  %cmp40 = icmp eq i32 %bf.clear39, 114
  br i1 %cmp40, label %land.lhs.true.47, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false
  %42 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %common42 = bitcast %union.tree_node* %42 to %struct.tree_common*
  %code43 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common42, i32 0, i32 2
  %bf.load44 = load i32, i32* %code43, align 8
  %bf.clear45 = and i32 %bf.load44, 255
  %cmp46 = icmp eq i32 %bf.clear45, 116
  br i1 %cmp46, label %land.lhs.true.47, label %land.end

land.lhs.true.47:                                 ; preds = %lor.lhs.false.41, %lor.lhs.false, %while.cond
  %43 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %exp48 = bitcast %union.tree_node* %43 to %struct.tree_exp*
  %operands49 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp48, i32 0, i32 2
  %arrayidx50 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands49, i32 0, i64 0
  %44 = load %union.tree_node*, %union.tree_node** %arrayidx50, align 8
  %45 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp51 = icmp ne %union.tree_node* %44, %45
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.47
  %46 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %common52 = bitcast %union.tree_node* %46 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common52, i32 0, i32 1
  %47 = load %union.tree_node*, %union.tree_node** %type, align 8
  %48 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %exp53 = bitcast %union.tree_node* %48 to %struct.tree_exp*
  %operands54 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp53, i32 0, i32 2
  %arrayidx55 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands54, i32 0, i64 0
  %49 = load %union.tree_node*, %union.tree_node** %arrayidx55, align 8
  %common56 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %type57 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common56, i32 0, i32 1
  %50 = load %union.tree_node*, %union.tree_node** %type57, align 8
  %cmp58 = icmp eq %union.tree_node* %47, %50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.47, %lor.lhs.false.41
  %51 = phi i1 [ false, %land.lhs.true.47 ], [ false, %lor.lhs.false.41 ], [ %cmp58, %land.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %52 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %exp59 = bitcast %union.tree_node* %52 to %struct.tree_exp*
  %operands60 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp59, i32 0, i32 2
  %arrayidx61 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands60, i32 0, i64 0
  %53 = load %union.tree_node*, %union.tree_node** %arrayidx61, align 8
  store %union.tree_node* %53, %union.tree_node** %new_decl, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %54 = load %union.tree_node*, %union.tree_node** %new_decl, align 8
  %55 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %54, %union.tree_node** %55, align 8
  br label %if.end.204

if.else.62:                                       ; preds = %if.else.23
  %56 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %57 = load %union.tree_node*, %union.tree_node** %56, align 8
  %common63 = bitcast %union.tree_node* %57 to %struct.tree_common*
  %code64 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common63, i32 0, i32 2
  %bf.load65 = load i32, i32* %code64, align 8
  %bf.clear66 = and i32 %bf.load65, 255
  %cmp67 = icmp eq i32 %bf.clear66, 118
  br i1 %cmp67, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.else.62
  %58 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %59 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map = getelementptr inbounds %struct.inline_data, %struct.inline_data* %59, i32 0, i32 3
  %60 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map, align 8
  %61 = bitcast %struct.splay_tree_s* %60 to i8*
  %62 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %fns69 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %62, i32 0, i32 0
  %63 = load %struct.varray_head_tag*, %struct.varray_head_tag** %fns69, align 8
  %data70 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %63, i32 0, i32 4
  %tree71 = bitcast %union.varray_data_tag* %data70 to [1 x %union.tree_node*]*
  %arrayidx72 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree71, i32 0, i64 0
  %64 = load %union.tree_node*, %union.tree_node** %arrayidx72, align 8
  %65 = load i32*, i32** %walk_subtrees.addr, align 8
  call void @remap_save_expr(%union.tree_node** %58, i8* %61, %union.tree_node* %64, i32* %65)
  br label %if.end.203

if.else.73:                                       ; preds = %if.else.62
  %66 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %67 = load %union.tree_node*, %union.tree_node** %66, align 8
  %common74 = bitcast %union.tree_node* %67 to %struct.tree_common*
  %code75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 2
  %bf.load76 = load i32, i32* %code75, align 8
  %bf.clear77 = and i32 %bf.load76, 255
  %cmp78 = icmp eq i32 %bf.clear77, 119
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.73
  call void @fancy_abort(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), i32 396, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.copy_body_r, i32 0, i32 0)) #5
  unreachable

if.else.80:                                       ; preds = %if.else.73
  %68 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %69 = load %union.tree_node*, %union.tree_node** %68, align 8
  %common81 = bitcast %union.tree_node* %69 to %struct.tree_common*
  %code82 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common81, i32 0, i32 2
  %bf.load83 = load i32, i32* %code82, align 8
  %bf.clear84 = and i32 %bf.load83, 255
  %cmp85 = icmp eq i32 %bf.clear84, 166
  br i1 %cmp85, label %land.lhs.true.86, label %if.else.89

land.lhs.true.86:                                 ; preds = %if.else.80
  %70 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %in_target_cleanup_p = getelementptr inbounds %struct.inline_data, %struct.inline_data* %70, i32 0, i32 4
  %71 = load i32, i32* %in_target_cleanup_p, align 4
  %tobool87 = icmp ne i32 %71, 0
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.86
  %72 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %73 = load i32*, i32** %walk_subtrees.addr, align 8
  %74 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  call void @copy_scope_stmt(%union.tree_node** %72, i32* %73, %struct.inline_data* %74)
  br label %if.end.201

if.else.89:                                       ; preds = %land.lhs.true.86, %if.else.80
  %75 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %76 = load i32*, i32** %walk_subtrees.addr, align 8
  %call90 = call %union.tree_node* @copy_tree_r(%union.tree_node** %75, i32* %76, i8* null)
  %77 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %78 = load %union.tree_node*, %union.tree_node** %77, align 8
  %common91 = bitcast %union.tree_node* %78 to %struct.tree_common*
  %code92 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common91, i32 0, i32 2
  %bf.load93 = load i32, i32* %code92, align 8
  %bf.clear94 = and i32 %bf.load93, 255
  %cmp95 = icmp eq i32 %bf.clear94, 50
  br i1 %cmp95, label %land.lhs.true.96, label %if.else.111

land.lhs.true.96:                                 ; preds = %if.else.89
  %79 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %80 = load %union.tree_node*, %union.tree_node** %79, align 8
  %exp97 = bitcast %union.tree_node* %80 to %struct.tree_exp*
  %operands98 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp97, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands98, i32 0, i64 3
  %81 = load %union.tree_node*, %union.tree_node** %arrayidx99, align 8
  %tobool100 = icmp ne %union.tree_node* %81, null
  br i1 %tobool100, label %if.then.101, label %if.else.111

if.then.101:                                      ; preds = %land.lhs.true.96
  %82 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %83 = load %union.tree_node*, %union.tree_node** %82, align 8
  %exp102 = bitcast %union.tree_node* %83 to %struct.tree_exp*
  %operands103 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp102, i32 0, i32 2
  %arrayidx104 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands103, i32 0, i64 3
  %84 = load %union.tree_node*, %union.tree_node** %arrayidx104, align 8
  %85 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %86 = load %union.tree_node*, %union.tree_node** %85, align 8
  %exp105 = bitcast %union.tree_node* %86 to %struct.tree_exp*
  %operands106 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp105, i32 0, i32 2
  %arrayidx107 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands106, i32 0, i64 1
  store %union.tree_node* %84, %union.tree_node** %arrayidx107, align 8
  %87 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %88 = load %union.tree_node*, %union.tree_node** %87, align 8
  %exp108 = bitcast %union.tree_node* %88 to %struct.tree_exp*
  %operands109 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp108, i32 0, i32 2
  %arrayidx110 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands109, i32 0, i64 3
  store %union.tree_node* null, %union.tree_node** %arrayidx110, align 8
  br label %if.end.200

if.else.111:                                      ; preds = %land.lhs.true.96, %if.else.89
  %89 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %90 = load %union.tree_node*, %union.tree_node** %89, align 8
  %common112 = bitcast %union.tree_node* %90 to %struct.tree_common*
  %code113 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common112, i32 0, i32 2
  %bf.load114 = load i32, i32* %code113, align 8
  %bf.clear115 = and i32 %bf.load114, 255
  %cmp116 = icmp eq i32 %bf.clear115, 48
  br i1 %cmp116, label %land.lhs.true.117, label %if.end.199

land.lhs.true.117:                                ; preds = %if.else.111
  %91 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %92 = load %union.tree_node*, %union.tree_node** %91, align 8
  %exp118 = bitcast %union.tree_node* %92 to %struct.tree_exp*
  %operands119 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp118, i32 0, i32 2
  %arrayidx120 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands119, i32 0, i64 0
  %93 = load %union.tree_node*, %union.tree_node** %arrayidx120, align 8
  %94 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %95 = load %union.tree_node*, %union.tree_node** %94, align 8
  %exp121 = bitcast %union.tree_node* %95 to %struct.tree_exp*
  %operands122 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp121, i32 0, i32 2
  %arrayidx123 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands122, i32 0, i64 1
  %96 = load %union.tree_node*, %union.tree_node** %arrayidx123, align 8
  %cmp124 = icmp eq %union.tree_node* %93, %96
  br i1 %cmp124, label %land.lhs.true.125, label %if.end.199

land.lhs.true.125:                                ; preds = %land.lhs.true.117
  %97 = load i32 (%union.tree_node*, %union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)** getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 19, i32 5), align 8
  %98 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %99 = load %union.tree_node*, %union.tree_node** %98, align 8
  %exp126 = bitcast %union.tree_node* %99 to %struct.tree_exp*
  %operands127 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp126, i32 0, i32 2
  %arrayidx128 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands127, i32 0, i64 0
  %100 = load %union.tree_node*, %union.tree_node** %arrayidx128, align 8
  %101 = load %union.tree_node*, %union.tree_node** %fn, align 8
  %call129 = call i32 %97(%union.tree_node* %100, %union.tree_node* %101)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.199

if.then.131:                                      ; preds = %land.lhs.true.125
  %102 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %103 = load %union.tree_node*, %union.tree_node** %102, align 8
  %exp132 = bitcast %union.tree_node* %103 to %struct.tree_exp*
  %operands133 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp132, i32 0, i32 2
  %arrayidx134 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands133, i32 0, i64 0
  %104 = load %union.tree_node*, %union.tree_node** %arrayidx134, align 8
  store %union.tree_node* %104, %union.tree_node** %decl, align 8
  %105 = load %struct.inline_data*, %struct.inline_data** %id, align 8
  %decl_map135 = getelementptr inbounds %struct.inline_data, %struct.inline_data* %105, i32 0, i32 3
  %106 = load %struct.splay_tree_s*, %struct.splay_tree_s** %decl_map135, align 8
  %107 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %108 = ptrtoint %union.tree_node* %107 to i64
  %call136 = call %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %106, i64 %108)
  store %struct.splay_tree_node_s* %call136, %struct.splay_tree_node_s** %n, align 8
  %109 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool137 = icmp ne %struct.splay_tree_node_s* %109, null
  br i1 %tobool137, label %if.then.138, label %if.end.198

if.then.138:                                      ; preds = %if.then.131
  %110 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %value139 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %110, i32 0, i32 1
  %111 = load i64, i64* %value139, align 8
  %112 = inttoptr i64 %111 to %union.tree_node*
  store %union.tree_node* %112, %union.tree_node** %value, align 8
  br label %while.cond.140

while.cond.140:                                   ; preds = %while.body.173, %if.then.138
  %113 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common141 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %code142 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common141, i32 0, i32 2
  %bf.load143 = load i32, i32* %code142, align 8
  %bf.clear144 = and i32 %bf.load143, 255
  %cmp145 = icmp eq i32 %bf.clear144, 115
  br i1 %cmp145, label %land.lhs.true.158, label %lor.lhs.false.146

lor.lhs.false.146:                                ; preds = %while.cond.140
  %114 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common147 = bitcast %union.tree_node* %114 to %struct.tree_common*
  %code148 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common147, i32 0, i32 2
  %bf.load149 = load i32, i32* %code148, align 8
  %bf.clear150 = and i32 %bf.load149, 255
  %cmp151 = icmp eq i32 %bf.clear150, 114
  br i1 %cmp151, label %land.lhs.true.158, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.146
  %115 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common153 = bitcast %union.tree_node* %115 to %struct.tree_common*
  %code154 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common153, i32 0, i32 2
  %bf.load155 = load i32, i32* %code154, align 8
  %bf.clear156 = and i32 %bf.load155, 255
  %cmp157 = icmp eq i32 %bf.clear156, 116
  br i1 %cmp157, label %land.lhs.true.158, label %land.end.172

land.lhs.true.158:                                ; preds = %lor.lhs.false.152, %lor.lhs.false.146, %while.cond.140
  %116 = load %union.tree_node*, %union.tree_node** %value, align 8
  %exp159 = bitcast %union.tree_node* %116 to %struct.tree_exp*
  %operands160 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp159, i32 0, i32 2
  %arrayidx161 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands160, i32 0, i64 0
  %117 = load %union.tree_node*, %union.tree_node** %arrayidx161, align 8
  %118 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 0), align 8
  %cmp162 = icmp ne %union.tree_node* %117, %118
  br i1 %cmp162, label %land.rhs.163, label %land.end.172

land.rhs.163:                                     ; preds = %land.lhs.true.158
  %119 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common164 = bitcast %union.tree_node* %119 to %struct.tree_common*
  %type165 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common164, i32 0, i32 1
  %120 = load %union.tree_node*, %union.tree_node** %type165, align 8
  %121 = load %union.tree_node*, %union.tree_node** %value, align 8
  %exp166 = bitcast %union.tree_node* %121 to %struct.tree_exp*
  %operands167 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp166, i32 0, i32 2
  %arrayidx168 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands167, i32 0, i64 0
  %122 = load %union.tree_node*, %union.tree_node** %arrayidx168, align 8
  %common169 = bitcast %union.tree_node* %122 to %struct.tree_common*
  %type170 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common169, i32 0, i32 1
  %123 = load %union.tree_node*, %union.tree_node** %type170, align 8
  %cmp171 = icmp eq %union.tree_node* %120, %123
  br label %land.end.172

land.end.172:                                     ; preds = %land.rhs.163, %land.lhs.true.158, %lor.lhs.false.152
  %124 = phi i1 [ false, %land.lhs.true.158 ], [ false, %lor.lhs.false.152 ], [ %cmp171, %land.rhs.163 ]
  br i1 %124, label %while.body.173, label %while.end.177

while.body.173:                                   ; preds = %land.end.172
  %125 = load %union.tree_node*, %union.tree_node** %value, align 8
  %exp174 = bitcast %union.tree_node* %125 to %struct.tree_exp*
  %operands175 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp174, i32 0, i32 2
  %arrayidx176 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands175, i32 0, i64 0
  %126 = load %union.tree_node*, %union.tree_node** %arrayidx176, align 8
  store %union.tree_node* %126, %union.tree_node** %value, align 8
  br label %while.cond.140

while.end.177:                                    ; preds = %land.end.172
  %127 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common178 = bitcast %union.tree_node* %127 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common178, i32 0, i32 2
  %bf.load179 = load i32, i32* %constant_flag, align 8
  %bf.lshr = lshr i32 %bf.load179, 9
  %bf.clear180 = and i32 %bf.lshr, 1
  %tobool181 = icmp ne i32 %bf.clear180, 0
  br i1 %tobool181, label %if.then.196, label %lor.lhs.false.182

lor.lhs.false.182:                                ; preds = %while.end.177
  %128 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common183 = bitcast %union.tree_node* %128 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common183, i32 0, i32 2
  %bf.load184 = load i32, i32* %readonly_flag, align 8
  %bf.lshr185 = lshr i32 %bf.load184, 12
  %bf.clear186 = and i32 %bf.lshr185, 1
  %tobool187 = icmp ne i32 %bf.clear186, 0
  br i1 %tobool187, label %land.lhs.true.188, label %if.end.197

land.lhs.true.188:                                ; preds = %lor.lhs.false.182
  %129 = load %union.tree_node*, %union.tree_node** %value, align 8
  %common189 = bitcast %union.tree_node* %129 to %struct.tree_common*
  %code190 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common189, i32 0, i32 2
  %bf.load191 = load i32, i32* %code190, align 8
  %bf.clear192 = and i32 %bf.load191, 255
  %idxprom = sext i32 %bf.clear192 to i64
  %arrayidx193 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %130 = load i8, i8* %arrayidx193, align 1
  %conv = sext i8 %130 to i32
  %cmp194 = icmp eq i32 %conv, 100
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %land.lhs.true.188, %while.end.177
  %131 = load %union.tree_node*, %union.tree_node** %value, align 8
  %132 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  store %union.tree_node* %131, %union.tree_node** %132, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.196, %land.lhs.true.188, %lor.lhs.false.182
  br label %if.end.198

if.end.198:                                       ; preds = %if.end.197, %if.then.131
  br label %if.end.199

if.end.199:                                       ; preds = %if.end.198, %land.lhs.true.125, %land.lhs.true.117, %if.else.111
  br label %if.end.200

if.end.200:                                       ; preds = %if.end.199, %if.then.101
  br label %if.end.201

if.end.201:                                       ; preds = %if.end.200, %if.then.88
  br label %if.end.202

if.end.202:                                       ; preds = %if.end.201
  br label %if.end.203

if.end.203:                                       ; preds = %if.end.202, %if.then.68
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %while.end
  br label %if.end.205

if.end.205:                                       ; preds = %if.end.204, %if.end
  ret %union.tree_node* null
}

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #2

; Function Attrs: nounwind uwtable
define internal void @copy_scope_stmt(%union.tree_node** %tp, i32* %walk_subtrees, %struct.inline_data* %id) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %walk_subtrees.addr = alloca i32*, align 8
  %id.addr = alloca %struct.inline_data*, align 8
  %block = alloca %union.tree_node*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i32* %walk_subtrees, i32** %walk_subtrees.addr, align 8
  store %struct.inline_data* %id, %struct.inline_data** %id.addr, align 8
  %0 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8
  %exp = bitcast %union.tree_node* %1 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %2 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %2, %union.tree_node** %block, align 8
  %3 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %4 = load i32*, i32** %walk_subtrees.addr, align 8
  %call = call %union.tree_node* @copy_tree_r(%union.tree_node** %3, i32* %4, i8* null)
  %5 = load %union.tree_node*, %union.tree_node** %block, align 8
  %6 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %6, align 8
  %exp1 = bitcast %union.tree_node* %7 to %struct.tree_exp*
  %operands2 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp1, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands2, i32 0, i64 0
  store %union.tree_node* %5, %union.tree_node** %arrayidx3, align 8
  %8 = load %union.tree_node**, %union.tree_node*** %tp.addr, align 8
  %9 = load %union.tree_node*, %union.tree_node** %8, align 8
  %10 = load %struct.inline_data*, %struct.inline_data** %id.addr, align 8
  call void @remap_block(%union.tree_node* %9, %union.tree_node* null, %struct.inline_data* %10)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
