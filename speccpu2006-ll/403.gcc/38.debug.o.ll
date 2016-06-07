; ModuleID = 'debug.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%union.tree_node = type opaque
%struct.rtx_def = type opaque

@do_nothing_debug_hooks = global %struct.gcc_debug_hooks { void (i8*)* @debug_nothing_charstar, void (i8*)* @debug_nothing_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32)* @debug_nothing_int, void (i32, i32)* @debug_nothing_int_int, void (i32, i32)* @debug_nothing_int_int, i1 (%union.tree_node*)* @debug_true_tree, void (i32, i8*)* @debug_nothing_int_charstar, void (i32, i8*)* @debug_nothing_int_charstar, void (i32)* @debug_nothing_int, void ()* @debug_nothing_void, void (%union.tree_node*)* @debug_nothing_tree, void (i32)* @debug_nothing_int, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%union.tree_node*)* @debug_nothing_tree, void (%struct.rtx_def*)* @debug_nothing_rtx }, align 8

; Function Attrs: nounwind uwtable
define void @debug_nothing_charstar(i8* %main_filename) #0 {
entry:
  %main_filename.addr = alloca i8*, align 8
  store i8* %main_filename, i8** %main_filename.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_int_charstar(i32 %line, i8* %text) #0 {
entry:
  %line.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  store i32 %line, i32* %line.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_int(i32 %line) #0 {
entry:
  %line.addr = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_int_int(i32 %line, i32 %n) #0 {
entry:
  %line.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  store i32 %line, i32* %line.addr, align 4
  store i32 %n, i32* %n.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @debug_true_tree(%union.tree_node* %block) #0 {
entry:
  %block.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %block, %union.tree_node** %block.addr, align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_void() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_tree(%union.tree_node* %decl) #0 {
entry:
  %decl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %decl, %union.tree_node** %decl.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @debug_nothing_rtx(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
