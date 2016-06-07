; ModuleID = 'c-lang.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type opaque
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }

@.str = private unnamed_addr constant [6 x i8] c"GNU C\00", align 1
@lang_hooks = constant %struct.lang_hooks { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 104, void ()* @c_init_options, i32 (i32, i8**)* @c_decode_option, void ()* @c_common_post_options, i8* (i8*)* @c_init, void ()* @c_common_finish, void ()* @lhd_clear_binding_stack, i64 (%union.tree_node*)* @c_common_get_alias_set, %union.tree_node* (%union.tree_node*)* @lhd_return_tree, i32 (%struct.rtx_def*, %union.tree_node*)* @c_safe_from_p, i32 (%union.tree_node*)* @c_staticp, i8 0, void ()* @lhd_do_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @lhd_print_tree_nothing, void (%struct._IO_FILE*, %union.tree_node*, i32)* @c_print_identifier, void (i32)* @c_set_yydebug, %struct.lang_hooks_for_tree_inlining { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)* @lhd_tree_inlining_walk_subtrees, i32 (%union.tree_node**)* @c_cannot_inline_tree_fn, i32 (%union.tree_node*)* @c_disregard_inline_limits, %union.tree_node* (i8*, %union.tree_node*)* @lhd_tree_inlining_add_pending_fn_decls, i32 (%union.tree_node*)* @lhd_tree_inlining_tree_chain_matters_p, i32 (%union.tree_node*, %union.tree_node*)* @lhd_tree_inlining_auto_var_in_fn_p, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)* @lhd_tree_inlining_copy_res_decl_for_inlining, i32 (%union.tree_node*)* @anon_aggr_type_p, i32 (%union.tree_node*)* @lhd_tree_inlining_start_inlining, void (%union.tree_node*)* @lhd_tree_inlining_end_inlining, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* @c_convert_parm_for_inlining }, %struct.lang_hooks_for_tree_dump { i32 (i8*, %union.tree_node*)* @lhd_tree_dump_dump_tree, i32 (%union.tree_node*)* @lhd_tree_dump_type_quals } }, align 8

; Function Attrs: nounwind uwtable
define internal void @c_init_options() #0 {
entry:
  call void @c_common_init_options(i32 0)
  ret void
}

declare i32 @c_decode_option(i32, i8**) #1

declare void @c_common_post_options() #1

; Function Attrs: nounwind uwtable
define internal i8* @c_init(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i8* @c_objc_common_init(i8* %0)
  ret i8* %call
}

declare void @c_common_finish() #1

declare void @lhd_clear_binding_stack() #1

declare i64 @c_common_get_alias_set(%union.tree_node*) #1

declare %union.tree_node* @lhd_return_tree(%union.tree_node*) #1

declare i32 @c_safe_from_p(%struct.rtx_def*, %union.tree_node*) #1

declare i32 @c_staticp(%union.tree_node*) #1

declare void @lhd_do_nothing() #1

declare void @lhd_print_tree_nothing(%struct._IO_FILE*, %union.tree_node*, i32) #1

declare void @c_print_identifier(%struct._IO_FILE*, %union.tree_node*, i32) #1

declare void @c_set_yydebug(i32) #1

declare %union.tree_node* @lhd_tree_inlining_walk_subtrees(%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*) #1

declare i32 @c_cannot_inline_tree_fn(%union.tree_node**) #1

declare i32 @c_disregard_inline_limits(%union.tree_node*) #1

declare %union.tree_node* @lhd_tree_inlining_add_pending_fn_decls(i8*, %union.tree_node*) #1

declare i32 @lhd_tree_inlining_tree_chain_matters_p(%union.tree_node*) #1

declare i32 @lhd_tree_inlining_auto_var_in_fn_p(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @lhd_tree_inlining_copy_res_decl_for_inlining(%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*) #1

declare i32 @anon_aggr_type_p(%union.tree_node*) #1

declare i32 @lhd_tree_inlining_start_inlining(%union.tree_node*) #1

declare void @lhd_tree_inlining_end_inlining(%union.tree_node*) #1

declare %union.tree_node* @c_convert_parm_for_inlining(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare i32 @lhd_tree_dump_dump_tree(i8*, %union.tree_node*) #1

declare i32 @lhd_tree_dump_type_quals(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @lookup_interface(%union.tree_node* %arg) #0 {
entry:
  %arg.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arg, %union.tree_node** %arg.addr, align 8
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @is_class_name(%union.tree_node* %arg) #0 {
entry:
  %arg.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %arg, %union.tree_node** %arg.addr, align 8
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define void @maybe_objc_check_decl(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @maybe_objc_comptypes(%union.tree_node* %lhs, %union.tree_node* %rhs, i32 %reflexive) #0 {
entry:
  %lhs.addr = alloca %union.tree_node*, align 8
  %rhs.addr = alloca %union.tree_node*, align 8
  %reflexive.addr = alloca i32, align 4
  store %union.tree_node* %lhs, %union.tree_node** %lhs.addr, align 8
  store %union.tree_node* %rhs, %union.tree_node** %rhs.addr, align 8
  store i32 %reflexive, i32* %reflexive.addr, align 4
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @maybe_building_objc_message_expr() #0 {
entry:
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define i32 @recognize_objc_keyword() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lookup_objc_ivar(%union.tree_node* %id) #0 {
entry:
  %id.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %id, %union.tree_node** %id.addr, align 8
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define void @finish_file() #0 {
entry:
  call void @c_objc_common_finish_file()
  ret void
}

declare void @c_objc_common_finish_file() #1

declare void @c_common_init_options(i32) #1

declare i8* @c_objc_common_init(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
