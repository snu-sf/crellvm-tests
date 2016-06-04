; ModuleID = 'langhooks.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type { %struct.c_lang_decl, %union.tree_node* }
%struct.c_lang_decl = type { i8, [3 x i8] }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type { i32, [1 x %union.tree_node*] }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [51 x i8] c"warning: no yacc/bison-generated output to debug!\0A\00", align 1
@flag_really_no_inline = external global i32, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@tree_code_type = external global [256 x i8], align 16

; Function Attrs: nounwind uwtable
define void @lhd_do_nothing() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lhd_return_tree(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  ret %union.tree_node* %0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_decode_option(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @lhd_print_tree_nothing(%struct._IO_FILE* %file, %union.tree_node* %node, i32 %indent) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node.addr = alloca %union.tree_node*, align 8
  %indent.addr = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %union.tree_node* %node, %union.tree_node** %node.addr, align 8
  store i32 %indent, i32* %indent.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @lhd_safe_from_p(%struct.rtx_def* %x, %union.tree_node* %exp) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %exp.addr = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @lhd_staticp(%union.tree_node* %exp) #0 {
entry:
  %exp.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %exp, %union.tree_node** %exp.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @lhd_set_yydebug(i32 %value) #0 {
entry:
  %value.addr = alloca i32, align 4
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @lhd_clear_binding_stack() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call i32 @global_bindings_p()
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call1 = call %union.tree_node* @poplevel(i32 0, i32 0, i32 0)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i32 @global_bindings_p() #1

declare %union.tree_node* @poplevel(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define i64 @lhd_get_alias_set(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  ret i64 -1
}

; Function Attrs: nounwind uwtable
define i64 @hook_get_alias_set_0(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  ret i64 0
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lhd_tree_inlining_walk_subtrees(%union.tree_node** %tp, i32* %subtrees, %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, i8* %data, i8* %htab) #0 {
entry:
  %tp.addr = alloca %union.tree_node**, align 8
  %subtrees.addr = alloca i32*, align 8
  %func.addr = alloca %union.tree_node* (%union.tree_node**, i32*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %htab.addr = alloca i8*, align 8
  store %union.tree_node** %tp, %union.tree_node*** %tp.addr, align 8
  store i32* %subtrees, i32** %subtrees.addr, align 8
  store %union.tree_node* (%union.tree_node**, i32*, i8*)* %func, %union.tree_node* (%union.tree_node**, i32*, i8*)** %func.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %htab, i8** %htab.addr, align 8
  ret %union.tree_node* null
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_cannot_inline_tree_fn(%union.tree_node** %fnp) #0 {
entry:
  %retval = alloca i32, align 4
  %fnp.addr = alloca %union.tree_node**, align 8
  store %union.tree_node** %fnp, %union.tree_node*** %fnp.addr, align 8
  %0 = load i32, i32* @flag_really_no_inline, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node**, %union.tree_node*** %fnp.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %1, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %3 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %union.tree_node* %3)
  %cmp = icmp eq %union.tree_node* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

declare %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_disregard_inline_limits(%union.tree_node* %fn) #0 {
entry:
  %retval = alloca i32, align 4
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %decl = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %attributes = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 16
  %1 = load %union.tree_node*, %union.tree_node** %attributes, align 8
  %call = call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), %union.tree_node* %1)
  %cmp = icmp ne %union.tree_node* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lhd_tree_inlining_add_pending_fn_decls(i8* %vafnp, %union.tree_node* %pfn) #0 {
entry:
  %vafnp.addr = alloca i8*, align 8
  %pfn.addr = alloca %union.tree_node*, align 8
  store i8* %vafnp, i8** %vafnp.addr, align 8
  store %union.tree_node* %pfn, %union.tree_node** %pfn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %pfn.addr, align 8
  ret %union.tree_node* %0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_tree_chain_matters_p(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_auto_var_in_fn_p(%union.tree_node* %var, %union.tree_node* %fn) #0 {
entry:
  %var.addr = alloca %union.tree_node*, align 8
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %var, %union.tree_node** %var.addr, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 100
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %decl = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %context = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 9
  %3 = load %union.tree_node*, %union.tree_node** %context, align 8
  %4 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %cmp2 = icmp eq %union.tree_node* %3, %4
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common4 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common4, i32 0, i32 2
  %bf.load6 = load i32, i32* %code5, align 8
  %bf.clear7 = and i32 %bf.load6, 255
  %cmp8 = icmp eq i32 %bf.clear7, 34
  br i1 %cmp8, label %land.lhs.true.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.rhs
  %6 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common10 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code11 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common10, i32 0, i32 2
  %bf.load12 = load i32, i32* %code11, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp14 = icmp eq i32 %bf.clear13, 35
  br i1 %cmp14, label %land.lhs.true.16, label %lor.lhs.false.20

land.lhs.true.16:                                 ; preds = %lor.lhs.false, %land.rhs
  %7 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common17 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %static_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common17, i32 0, i32 2
  %bf.load18 = load i32, i32* %static_flag, align 8
  %bf.lshr = lshr i32 %bf.load18, 18
  %bf.clear19 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear19, 0
  br i1 %tobool, label %lor.lhs.false.20, label %lor.end

lor.lhs.false.20:                                 ; preds = %land.lhs.true.16, %lor.lhs.false
  %8 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common21 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code22 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common21, i32 0, i32 2
  %bf.load23 = load i32, i32* %code22, align 8
  %bf.clear24 = and i32 %bf.load23, 255
  %cmp25 = icmp eq i32 %bf.clear24, 31
  br i1 %cmp25, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.20
  %9 = load %union.tree_node*, %union.tree_node** %var.addr, align 8
  %common27 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code28 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common27, i32 0, i32 2
  %bf.load29 = load i32, i32* %code28, align 8
  %bf.clear30 = and i32 %bf.load29, 255
  %cmp31 = icmp eq i32 %bf.clear30, 36
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.20, %land.lhs.true.16
  %10 = phi i1 [ true, %lor.lhs.false.20 ], [ true, %land.lhs.true.16 ], [ %cmp31, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %entry
  %11 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %10, %lor.end ]
  %land.ext = zext i1 %11 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lhd_tree_inlining_copy_res_decl_for_inlining(%union.tree_node* %res, %union.tree_node* %fn, %union.tree_node* %caller, i8* %dm, i32* %ndp, i8* %texps) #0 {
entry:
  %res.addr = alloca %union.tree_node*, align 8
  %fn.addr = alloca %union.tree_node*, align 8
  %caller.addr = alloca %union.tree_node*, align 8
  %dm.addr = alloca i8*, align 8
  %ndp.addr = alloca i32*, align 8
  %texps.addr = alloca i8*, align 8
  store %union.tree_node* %res, %union.tree_node** %res.addr, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  store %union.tree_node* %caller, %union.tree_node** %caller.addr, align 8
  store i8* %dm, i8** %dm.addr, align 8
  store i32* %ndp, i32** %ndp.addr, align 8
  store i8* %texps, i8** %texps.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %res.addr, align 8
  %1 = load %union.tree_node*, %union.tree_node** %fn.addr, align 8
  %2 = load %union.tree_node*, %union.tree_node** %caller.addr, align 8
  %call = call %union.tree_node* @copy_decl_for_inlining(%union.tree_node* %0, %union.tree_node* %1, %union.tree_node* %2)
  ret %union.tree_node* %call
}

declare %union.tree_node* @copy_decl_for_inlining(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_anon_aggr_type_p(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_inlining_start_inlining(%union.tree_node* %fn) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @lhd_tree_inlining_end_inlining(%union.tree_node* %fn) #0 {
entry:
  %fn.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %fn, %union.tree_node** %fn.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %union.tree_node* @lhd_tree_inlining_convert_parm_for_inlining(%union.tree_node* %parm, %union.tree_node* %value, %union.tree_node* %fndecl) #0 {
entry:
  %parm.addr = alloca %union.tree_node*, align 8
  %value.addr = alloca %union.tree_node*, align 8
  %fndecl.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %parm, %union.tree_node** %parm.addr, align 8
  store %union.tree_node* %value, %union.tree_node** %value.addr, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %value.addr, align 8
  ret %union.tree_node* %0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_dump_dump_tree(i8* %di, %union.tree_node* %t) #0 {
entry:
  %di.addr = alloca i8*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  store i8* %di, i8** %di.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @lhd_tree_dump_type_quals(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %0 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %readonly_flag, align 8
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 1
  %mul = mul nsw i32 %bf.clear, 1
  %1 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common1 = bitcast %union.tree_node* %1 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load2 = load i32, i32* %volatile_flag, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 11
  %bf.clear4 = and i32 %bf.lshr3, 1
  %mul5 = mul nsw i32 %bf.clear4, 2
  %or = or i32 %mul, %mul5
  %2 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %type = bitcast %union.tree_node* %2 to %struct.tree_type*
  %restrict_flag = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type, i32 0, i32 6
  %bf.load6 = load i32, i32* %restrict_flag, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 21
  %bf.clear8 = and i32 %bf.lshr7, 1
  %mul9 = mul nsw i32 %bf.clear8, 4
  %or10 = or i32 %or, %mul9
  %3 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common11 = bitcast %union.tree_node* %3 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common11, i32 0, i32 2
  %bf.load12 = load i32, i32* %code, align 8
  %bf.clear13 = and i32 %bf.load12, 255
  %cmp = icmp eq i32 %bf.clear13, 20
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common14 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %type15 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common14, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %type15, align 8
  %tobool = icmp ne %union.tree_node* %5, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  %mul16 = mul nsw i32 %land.ext, 8
  %or17 = or i32 %or10, %mul16
  ret i32 %or17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
